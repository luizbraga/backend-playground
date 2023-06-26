from django.contrib.auth.models import AbstractUser
from django.db import models


class Team(models.Model):
    name = models.CharField(max_length=255)


class User(AbstractUser):
    assigns_to = models.ForeignKey(
        "self",
        null=True,
        blank=True,
        on_delete=models.SET_NULL,
        related_name="assigns",
    )
    team = models.ForeignKey(
        Team,
        null=False,
        blank=False,
        on_delete=models.CASCADE,
        related_name="members",
    )

    @property
    def num_assigns(self):
        return self.assigns.count()
