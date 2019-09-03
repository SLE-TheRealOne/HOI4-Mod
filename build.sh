#!/bin/sh
rm -f interface/countrytechtreeview.gui
touch interface/folders.fragment


for fragment in $(ls interface/fragments/folders)
do
    cat interface/fragments/folders/$fragment >> interface/folders.fragment
    echo -e "\n\n"  >> interface/folders.fragment
    echo -e "\t\t################################"  >> interface/folders.fragment
    echo -e "\n"  >> interface/folders.fragment
done

sed -e '/folders_fragmentPlaceHolder/r interface\/folders.fragment' -e '/folders_fragmentPlaceHolder/d' interface/templates/countrytechtreeview.template > countrytechtreeview_A.gui
sed -e '/technologiesTabs_fragmentPlaceHolder/r interface\/fragments\/technologiesTabs.fragment' -e '/technologiesTabs_fragmentPlaceHolder/d' countrytechtreeview_A.gui > countrytechtreeview_B.gui
sed -e '/smallItems_fragmentPlaceHolder/r interface\/fragments\/smallItems.fragment' -e '/smallItems_fragmentPlaceHolder/d' countrytechtreeview_B.gui > interface/countrytechtreeview.gui


rm -f interface/folders.fragment
rm -f countrytechtreeview*.gui