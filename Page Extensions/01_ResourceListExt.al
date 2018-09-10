pageextension 123456701 "CSD ResourceListExt" extends "Resource List"
{
    layout
    {
        modify(Type)
        {
            Visible= Showtype;
        }

        addafter(Type)

        {
            
            field("CSD Resource Type";"CSD Resource Type")
            {
                
            }
            field("CSD Maximum Participants";"CSD Maximum Participants")
            {
               Visible = ShowMaxField; 
            }
           
          
        }
    }

  
        
    trigger OnOpenPage(); 
        begin 
            FilterGroup(3); 
            ShowType := (GetFilter(Type)=''); 
            ShowMaxField := (GetFilter(Type)=format(Type::machine)); 
            FilterGroup(0); 
            
            end; 
        
    var 
        [InDataSet] 
        ShowType : Boolean; 
        [InDataSet] 
        ShowMaxField : Boolean; 
    
}