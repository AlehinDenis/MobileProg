/****************************************************************************
** Meta object code from reading C++ file 'requst.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.6.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../lab8/src/requst.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'requst.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.6.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_Request_t {
    QByteArrayData data[15];
    char stringdata0[196];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_Request_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_Request_t qt_meta_stringdata_Request = {
    {
QT_MOC_LITERAL(0, 0, 7), // "Request"
QT_MOC_LITERAL(1, 8, 14), // "respondChanged"
QT_MOC_LITERAL(2, 23, 0), // ""
QT_MOC_LITERAL(3, 24, 12), // "imageChanged"
QT_MOC_LITERAL(4, 37, 16), // "getReplyFinished"
QT_MOC_LITERAL(5, 54, 17), // "postReplyFinished"
QT_MOC_LITERAL(6, 72, 18), // "ImageReplyFinished"
QT_MOC_LITERAL(7, 91, 16), // "putReplyFinished"
QT_MOC_LITERAL(8, 108, 14), // "sendGetRequest"
QT_MOC_LITERAL(9, 123, 15), // "sendPostRequest"
QT_MOC_LITERAL(10, 139, 4), // "body"
QT_MOC_LITERAL(11, 144, 16), // "sendImageRequest"
QT_MOC_LITERAL(12, 161, 14), // "sendPutRequest"
QT_MOC_LITERAL(13, 176, 10), // "getRespond"
QT_MOC_LITERAL(14, 187, 8) // "getImage"

    },
    "Request\0respondChanged\0\0imageChanged\0"
    "getReplyFinished\0postReplyFinished\0"
    "ImageReplyFinished\0putReplyFinished\0"
    "sendGetRequest\0sendPostRequest\0body\0"
    "sendImageRequest\0sendPutRequest\0"
    "getRespond\0getImage"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_Request[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      12,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   74,    2, 0x06 /* Public */,
       3,    0,   75,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       4,    0,   76,    2, 0x0a /* Public */,
       5,    0,   77,    2, 0x0a /* Public */,
       6,    0,   78,    2, 0x0a /* Public */,
       7,    0,   79,    2, 0x0a /* Public */,

 // methods: name, argc, parameters, tag, flags
       8,    0,   80,    2, 0x02 /* Public */,
       9,    1,   81,    2, 0x02 /* Public */,
      11,    0,   84,    2, 0x02 /* Public */,
      12,    1,   85,    2, 0x02 /* Public */,
      13,    0,   88,    2, 0x02 /* Public */,
      14,    0,   89,    2, 0x02 /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // methods: parameters
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,   10,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,   10,
    QMetaType::QString,
    QMetaType::QString,

       0        // eod
};

void Request::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Request *_t = static_cast<Request *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->respondChanged(); break;
        case 1: _t->imageChanged(); break;
        case 2: _t->getReplyFinished(); break;
        case 3: _t->postReplyFinished(); break;
        case 4: _t->ImageReplyFinished(); break;
        case 5: _t->putReplyFinished(); break;
        case 6: _t->sendGetRequest(); break;
        case 7: _t->sendPostRequest((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 8: _t->sendImageRequest(); break;
        case 9: _t->sendPutRequest((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 10: { QString _r = _t->getRespond();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = _r; }  break;
        case 11: { QString _r = _t->getImage();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = _r; }  break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (Request::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&Request::respondChanged)) {
                *result = 0;
                return;
            }
        }
        {
            typedef void (Request::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&Request::imageChanged)) {
                *result = 1;
                return;
            }
        }
    }
}

const QMetaObject Request::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_Request.data,
      qt_meta_data_Request,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *Request::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Request::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_Request.stringdata0))
        return static_cast<void*>(const_cast< Request*>(this));
    return QObject::qt_metacast(_clname);
}

int Request::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 12)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 12;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 12)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 12;
    }
    return _id;
}

// SIGNAL 0
void Request::respondChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, Q_NULLPTR);
}

// SIGNAL 1
void Request::imageChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, Q_NULLPTR);
}
QT_END_MOC_NAMESPACE
