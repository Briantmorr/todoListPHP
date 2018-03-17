$(document).ready(initializeApp);
function initializeApp(){
    readData();
    attachHandlers();
}
function attachHandlers(){

}
function readData(){
    var ajaxOptions = {
        url:'list.json',
        dataType: 'json',
        success: dataReceivedFromServer
    }
    $.ajax(ajaxOptions);
}
function dataReceivedFromServer( responseData){
    var allRows = [];
    if(responseData.success){
        console.log('success true')
        for(var i = 0; i < responseData.data.length; i++){
            allRows.push(renderOneItemOnPage(responseData.data[i]));
        }
    }
    else{
        console.log('successs false');
    }
}
function renderOneItemOnPage(todoItem){
    console.log(todoItem);
    var listItem = $('<li>');
    var title = $('<h2>',{
        text:  todoItem.title.toUpperCase()
    });
    var descriptionH = $('<h4>',{
        text: 'Description: '
    });
    var description = $('<p>',{
        text: todoItem.description
    });
    var dueH = $('<h4>',{
        text: 'Due: '
    });
    var dueDate= $('<p>',{
        text: todoItem.due
    });
    var delButton = $('<button>',{
        text:'delete'
    });
    listItem.append(title, descriptionH, description, dueH, dueDate, delButton)
    console.log('li is', listItem);
     $('ul').prepend(listItem);
   return listItem;
}