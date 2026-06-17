import Passwords from "#core/crypto/passwords";

Ext.define( "Ext.data.validator.PasswordStrength", {
    "extend": "Ext.data.validator.Validator",
    "alias": "data.validator.password-strength",
    "type": "password-strength",

    "weakMessage": l10n( "Password is weak" ),

    "config": {
        "allowWeakPasswords": false,
    },

    validate ( value ) {
        const data = Passwords.default.checkPassword( value );

        if ( !data.strong && !this.getAllowWeakPasswords() ) {
            return this.weakMessage;
        }

        return true;
    },
} );
