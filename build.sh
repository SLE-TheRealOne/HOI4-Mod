#!/bin/sh

rm -f interface/countrytechtreeview.gui
sed -e '/additionalFolders_fragmentPlaceHolder/r interface\/additionalFolders.fragment' -e '/additionalFolders_fragmentPlaceHolder/d' interface/countrytechtreeview.template > countrytechtreeview_A.gui
sed -e '/additionalTechnologiesTabs_fragmentPlaceHolder/r interface\/additionalTechnologiesTabs.fragment' -e '/additionalTechnologiesTabs_fragmentPlaceHolder/d' countrytechtreeview_A.gui > countrytechtreeview_B.gui
sed -e '/additionalSmallItems_fragmentPlaceHolder/r interface\/additionalSmallItems.fragment' -e '/additionalSmallItems_fragmentPlaceHolder/d' countrytechtreeview_B.gui > interface/countrytechtreeview.gui
rm -f countrytechtreeview*.gui