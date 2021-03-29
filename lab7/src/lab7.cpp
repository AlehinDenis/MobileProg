#ifdef QT_QML_DEBUG
#include <QtQuick>
#endif

#include <sailfishapp.h>
#include "counter.h"


int main(int argc, char *argv[])
{
    //QGuiApplication* app = SailfishApp::main(argc,argv);

    qmlRegisterType<Counter>("Counter", 1, 0, "Counter");

    return SailfishApp::main(argc, argv);
}
