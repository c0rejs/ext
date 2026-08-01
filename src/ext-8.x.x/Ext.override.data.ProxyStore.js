Ext.define( null, {
    "override": "Ext.data.ProxyStore",

    // set default proxy type to "corejslib"
    applyProxy ( proxy ) {
        if ( proxy && Ext.isObject( proxy ) && !proxy.type ) {
            proxy.type = "corejslib";
        }

        return this.callParent( arguments );
    },
} );
