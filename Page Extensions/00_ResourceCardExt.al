pageextension 123456700 MyExtension extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }
            field("CSD Quantity Per Day"; "CSD Quantity Per Day")
            {

            }
        }

        addafter("Personal Data")
            {
                group("CSD Room")
                {
                    Visible =  ShowMaxField;
                    field("CSD Maximum Participants"; "CSD Maximum Participants")
                    {

                    }


                }
            }
    }

var
        [InDataSet]
        ShowMaxField: Boolean;

trigger OnAfterGetRecord(); 
begin 
    ShowMaxField := (Type = Type::Machine); CurrPage.Update(false); 
end;



   
}


