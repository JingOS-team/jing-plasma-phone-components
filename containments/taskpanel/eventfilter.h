#ifndef EVENTFILTER_H
#define EVENTFILTER_H
#include <QObject>

class EventFilter : public QObject
{
    Q_OBJECT
public:
    EventFilter();
protected:
     bool eventFilter(QObject *obj, QEvent *event) override;
};

#endif // EVENTFILTER_H
