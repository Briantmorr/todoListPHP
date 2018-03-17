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
    console.log(responseData);
}