from django.dispatch import receiver
from polls import signals


@receiver(signals.author_changed)
def my_task_done(sender, **kwargs):
    print('Сигнал принял: автор изменился')