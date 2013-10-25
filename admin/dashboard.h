/************************************************************

Filename: dashboard.h

Description: Containes declarations for dashboard widgets

Authors: Gauravjeet Singh, Shaina Sabarwal, Inderpreet Singh, Amitoj Singh

License: GNU GPL V3

*************************************************************/
#ifndef DASHBOARD_H
#define DASHBOARD_H

#include "setting_pannel.h"
#include "post_pad.h"
#include "allpost.h"

#include <Wt/WTabWidget>
#include <Wt/WContainerWidget>

class dashboard: public WContainerWidget
{
public:
     dashboard(WContainerWidget *parent);
 
private:
     WContainerWidget *defaultContainer;
     WTabWidget *adminTab;
};
#endif
