function time(){
    d=new Date()
    ch="";
    ch+=d.getDate().toString()+"/"+(d.getMonth()+1).toString()+"/"+new Date.geFullYear().toString();
    document.getElementById("date").value=ch;
}
function ajouter(){
    list1=document.getElementById("list1").selectedIndex;
    list2=document.getElementById("list2").selectedIndex;
    if(list1==0||list2==0){
        alert ("le selection d'une piece et d'une salle est obligatoie");
        return false;
    }

}