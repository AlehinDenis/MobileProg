#ifndef COUNTER_H
#define COUNTER_H

#include <QObject>

class Counter : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int count READ getCount WRITE setCount NOTIFY countChanged)
public:
    int count;
    Q_INVOKABLE void add() {count++;}
    Q_INVOKABLE void reset() { count = 0;}
    Q_INVOKABLE int getCount() {return count;}
    void setCount(int Count) {count = Count;}

signals:
    void countChanged();
};

#endif // COUNTER_H
