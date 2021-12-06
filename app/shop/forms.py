from django import forms
from models import Customer

class CustomerForm(forms.ModelForm):
    password = forms.CharField(widget=forms.PasswordInput)

    class Meta:
        model = Customer
        fields = ('first_name', 'last_name', 'gender', 'username', 'email_address', 'mobile_no', 'password', 'status', 'created_at', 'updated_at')