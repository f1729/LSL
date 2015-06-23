/* Slider para imagens e frases  */
list slides = ["slide1","slide2","slide3"];
list frases = ["frase 1","frase 2","frase 3"];
integer index;
integer indexfrases;


newSlide()
{
    string texture = llList2String(slides,index);
    string fraseatual = llList2String(frases,index);
    
    llSetTexture(texture,1);
    llSay(0, fraseatual);
    
    index++;
    if(index>=llGetListLength(slides) )
        index = 0;
}

default
{
    state_entry()
    {
		//Tempo do timer
        llSetTimerEvent(15);
        index = 0;
        newSlide();
    }
    
    touch_start(integer num)
    {
        index = 0;
        newSlide();
        llSay(0,"Starting slide show over");
    }

    timer()
    {
        newSlide();
    }
}
