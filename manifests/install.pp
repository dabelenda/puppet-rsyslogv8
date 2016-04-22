class rsyslogv8::install {

  if $rsyslogv8::rsyslog_package_name != false {
    package { $rsyslogv8::rsyslog_package_name:
      ensure          => $rsyslogv8::package_status,
      install_options => $::rsyslogv8::install_options,
      notify          => Class['rsyslogv8::service'],
      require         => Class['rsyslogv8::repository'],
    }
  }

  if $rsyslogv8::relp_package_name != false {
    package { $rsyslogv8::relp_package_name:
      ensure          => $rsyslogv8::package_status,
      install_options => $::rsyslogv8::install_options,
      notify          => Class['rsyslogv8::service'],
      require         => Class['rsyslogv8::repository'],
    }
  }

  if $rsyslogv8::gnutls_package_name != false {
    package { $rsyslogv8::gnutls_package_name:
      ensure          => $rsyslogv8::package_status,
      install_options => $::rsyslogv8::install_options,
      notify          => Class['rsyslogv8::service'],
      require         => Class['rsyslogv8::repository'],
    }
  }

}
