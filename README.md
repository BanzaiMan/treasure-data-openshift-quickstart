Treasure Data on OpenShift in 5 Minutes
--------------------------------

This git repository helps you easily integrate Treasure Data Big Data as-a-Service into your OpenShift apps.

###Step 1. Create OpenShift App###

Create an account at http://openshift.redhat.com/ and set up you local machine with the client tools.

Create a ruby-1.9 application (you can call your application whatever you want) and change into the application directory.
<pre>
$ rhc app create treasure-data ruby-1.9 --from-code https://github.com/treasure-data/treasure-data-openshift-quickstart
$ cd treasure-data
</pre>

###Step 2. Configure Treasure Data###

1. Sign up for a free account at http://www.treasure-data.com/
2. Download [Treasure Data toolbelt](http://toolbelt.treasure-data.com/) and authenticate it by `td account -f` command
2. Create a project
3. Retrieve your apikey by `td apikey:show` command
4. Enter apikey into <strong>config.rb</strong>

```
  {
    :apikey => 'YOUR_API_KEY_HERE'
  }
```

###Step 3. Deploy your app###

```
$ git add .
$ git commit -m "my first commmit"
$ git push
```

###Step 4. View your app!###

```
$ open http://traesure-data-$yournamespace.rhcloud.com/
```


More Information
----------------------------

For Treasure Data's documentation visit http://docs.treasure-data.com/

For more info on the Treasure Data Ruby client visit [td-client-ruby](https://github.com/treasure-data/td-client-ruby) and [td-logger-ruby](https://github.com/treasure-data/td-logger-ruby]

For more information on Treasure Data visit http://www.treasure-data.com/

