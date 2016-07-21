# Testing Various Impala Drivers Under Ruby

This directory contains a small test script to run against an Impala database populated with CDM data and vocabulary files.

You might need to adjust the contents of the script to use different databases.

# Prepping for Testing
The tests use [rvm](https://rvm.io/) to switch between MRI Ruby 2.2.5 and JRuby 9.1.2.0 to test various drivers

Install rvm following the [instructions here](https://rvm.io/rvm/install).

After RVM is installed, install Ruby 2.2.5 and JRurby 9.1.2.0:

```
rvm install 2.2.5
rvm install jruby
```

# Running the Tests
I wrote a script that automates running through the three candidate drivers in this order:

- JDBC/Hive2 via JRuby
- impala-ruby via Ruby 2.2.5
- rbhive via Ruby 2.2.5

We use a locally-modified version of [Sequelizer](https://github.com/outcomesinsights/sequelizer) to setup connection parameters for each driver.  We switch between configurations by changing the `.env` symlink.

To run the tests, just run:

`bash run_all.sh`
