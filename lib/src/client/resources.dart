part of sqladmin_v1beta3_api;

class BackupRunsResource_ {

  final Client _client;

  BackupRunsResource_(Client client) :
      _client = client;

  /**
   * Retrieves a resource containing information about a backup run.
   *
   * [project] - Project ID of the project that contains the instance.
   *
   * [instance] - Cloud SQL instance ID. This does not include the project ID.
   *
   * [backupConfiguration] - Identifier for the backup configuration. This gets generated automatically when a backup configuration is created.
   *
   * [dueTime] - The time when this run is due to start in RFC 3339 format, for example 2012-11-15T16:19:00.094Z.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<BackupRun> get(core.String project, core.String instance, core.String backupConfiguration, core.String dueTime, {core.Map optParams}) {
    var url = "{project}/instances/{instance}/backupRuns/{backupConfiguration}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (backupConfiguration == null) paramErrors.add("backupConfiguration is required");
    if (backupConfiguration != null) urlParams["backupConfiguration"] = backupConfiguration;
    if (dueTime == null) paramErrors.add("dueTime is required");
    if (dueTime != null) queryParams["dueTime"] = dueTime;
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new BackupRun.fromJson(data));
  }

  /**
   * Lists all backup runs associated with a given instance and configuration in the reverse chronological order of the enqueued time.
   *
   * [project] - Project ID of the project that contains the instance.
   *
   * [instance] - Cloud SQL instance ID. This does not include the project ID.
   *
   * [backupConfiguration] - Identifier for the backup configuration. This gets generated automatically when a backup configuration is created.
   *
   * [maxResults] - Maximum number of backup runs per response.
   *
   * [pageToken] - A previously-returned page token representing part of the larger set of results to view.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<BackupRunsListResponse> list(core.String project, core.String instance, core.String backupConfiguration, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "{project}/instances/{instance}/backupRuns";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (backupConfiguration == null) paramErrors.add("backupConfiguration is required");
    if (backupConfiguration != null) queryParams["backupConfiguration"] = backupConfiguration;
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new BackupRunsListResponse.fromJson(data));
  }
}

class InstancesResource_ {

  final Client _client;

  InstancesResource_(Client client) :
      _client = client;

  /**
   * Deletes a Cloud SQL instance.
   *
   * [project] - Project ID of the project that contains the instance to be deleted.
   *
   * [instance] - Cloud SQL instance ID. This does not include the project ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InstancesDeleteResponse> delete(core.String project, core.String instance, {core.Map optParams}) {
    var url = "{project}/instances/{instance}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new InstancesDeleteResponse.fromJson(data));
  }

  /**
   * Exports data from a Cloud SQL instance to a Google Cloud Storage bucket as a MySQL dump file.
   *
   * [request] - InstancesExportRequest to send in this request
   *
   * [project] - Project ID of the project that contains the instance to be exported.
   *
   * [instance] - Cloud SQL instance ID. This does not include the project ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InstancesExportResponse> export(InstancesExportRequest request, core.String project, core.String instance, {core.Map optParams}) {
    var url = "{project}/instances/{instance}/export";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new InstancesExportResponse.fromJson(data));
  }

  /**
   * Retrieves a resource containing information about a Cloud SQL instance.
   *
   * [project] - Project ID of the project that contains the instance.
   *
   * [instance] - Database instance ID. This does not include the project ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<DatabaseInstance> get(core.String project, core.String instance, {core.Map optParams}) {
    var url = "{project}/instances/{instance}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new DatabaseInstance.fromJson(data));
  }

  /**
   * Imports data into a Cloud SQL instance from a MySQL dump file in Google Cloud Storage.
   *
   * [request] - InstancesImportRequest to send in this request
   *
   * [project] - Project ID of the project that contains the instance.
   *
   * [instance] - Cloud SQL instance ID. This does not include the project ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InstancesImportResponse> import(InstancesImportRequest request, core.String project, core.String instance, {core.Map optParams}) {
    var url = "{project}/instances/{instance}/import";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new InstancesImportResponse.fromJson(data));
  }

  /**
   * Creates a new Cloud SQL instance.
   *
   * [request] - DatabaseInstance to send in this request
   *
   * [project] - Project ID of the project to which the newly created Cloud SQL instances should belong.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InstancesInsertResponse> insert(DatabaseInstance request, core.String project, {core.Map optParams}) {
    var url = "{project}/instances";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new InstancesInsertResponse.fromJson(data));
  }

  /**
   * Lists instances under a given project in the alphabetical order of the instance name.
   *
   * [project] - Project ID of the project for which to list Cloud SQL instances.
   *
   * [maxResults] - The maximum number of results to return per response.
   *
   * [pageToken] - A previously-returned page token representing part of the larger set of results to view.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InstancesListResponse> list(core.String project, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "{project}/instances";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new InstancesListResponse.fromJson(data));
  }

  /**
   * Updates settings of a Cloud SQL instance. Caution: This is not a partial update, so you must include values for all the settings that you want to retain. For partial updates, use patch.. This method supports patch semantics.
   *
   * [request] - DatabaseInstance to send in this request
   *
   * [project] - Project ID of the project that contains the instance.
   *
   * [instance] - Cloud SQL instance ID. This does not include the project ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InstancesUpdateResponse> patch(DatabaseInstance request, core.String project, core.String instance, {core.Map optParams}) {
    var url = "{project}/instances/{instance}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new InstancesUpdateResponse.fromJson(data));
  }

  /**
   * Deletes all client certificates and generates a new server SSL certificate for the instance. The changes will not take effect until the instance is restarted. Existing instances without a server certificate will need to call this once to set a server certificate.
   *
   * [project] - Project ID of the project that contains the instance.
   *
   * [instance] - Cloud SQL instance ID. This does not include the project ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InstancesResetSslConfigResponse> resetSslConfig(core.String project, core.String instance, {core.Map optParams}) {
    var url = "{project}/instances/{instance}/resetSslConfig";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new InstancesResetSslConfigResponse.fromJson(data));
  }

  /**
   * Restarts a Cloud SQL instance.
   *
   * [project] - Project ID of the project that contains the instance to be restarted.
   *
   * [instance] - Cloud SQL instance ID. This does not include the project ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InstancesRestartResponse> restart(core.String project, core.String instance, {core.Map optParams}) {
    var url = "{project}/instances/{instance}/restart";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new InstancesRestartResponse.fromJson(data));
  }

  /**
   * Restores a backup of a Cloud SQL instance.
   *
   * [project] - Project ID of the project that contains the instance.
   *
   * [instance] - Cloud SQL instance ID. This does not include the project ID.
   *
   * [backupConfiguration] - The identifier of the backup configuration. This gets generated automatically when a backup configuration is created.
   *
   * [dueTime] - The time when this run is due to start in RFC 3339 format, for example 2012-11-15T16:19:00.094Z.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InstancesRestoreBackupResponse> restoreBackup(core.String project, core.String instance, core.String backupConfiguration, core.String dueTime, {core.Map optParams}) {
    var url = "{project}/instances/{instance}/restoreBackup";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (backupConfiguration == null) paramErrors.add("backupConfiguration is required");
    if (backupConfiguration != null) queryParams["backupConfiguration"] = backupConfiguration;
    if (dueTime == null) paramErrors.add("dueTime is required");
    if (dueTime != null) queryParams["dueTime"] = dueTime;
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new InstancesRestoreBackupResponse.fromJson(data));
  }

  /**
   * Sets the password for the root user.
   *
   * [request] - InstanceSetRootPasswordRequest to send in this request
   *
   * [project] - Project ID of the project that contains the instance.
   *
   * [instance] - Cloud SQL instance ID. This does not include the project ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InstancesSetRootPasswordResponse> setRootPassword(InstanceSetRootPasswordRequest request, core.String project, core.String instance, {core.Map optParams}) {
    var url = "{project}/instances/{instance}/setRootPassword";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new InstancesSetRootPasswordResponse.fromJson(data));
  }

  /**
   * Updates settings of a Cloud SQL instance. Caution: This is not a partial update, so you must include values for all the settings that you want to retain. For partial updates, use patch.
   *
   * [request] - DatabaseInstance to send in this request
   *
   * [project] - Project ID of the project that contains the instance.
   *
   * [instance] - Cloud SQL instance ID. This does not include the project ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InstancesUpdateResponse> update(DatabaseInstance request, core.String project, core.String instance, {core.Map optParams}) {
    var url = "{project}/instances/{instance}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new InstancesUpdateResponse.fromJson(data));
  }
}

class OperationsResource_ {

  final Client _client;

  OperationsResource_(Client client) :
      _client = client;

  /**
   * Retrieves an instance operation that has been performed on an instance.
   *
   * [project] - Project ID of the project that contains the instance.
   *
   * [instance] - Cloud SQL instance ID. This does not include the project ID.
   *
   * [operation] - Instance operation ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InstanceOperation> get(core.String project, core.String instance, core.String operation, {core.Map optParams}) {
    var url = "{project}/instances/{instance}/operations/{operation}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (operation == null) paramErrors.add("operation is required");
    if (operation != null) urlParams["operation"] = operation;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new InstanceOperation.fromJson(data));
  }

  /**
   * Lists all instance operations that have been performed on the given Cloud SQL instance in the reverse chronological order of the start time.
   *
   * [project] - Project ID of the project that contains the instance.
   *
   * [instance] - Cloud SQL instance ID. This does not include the project ID.
   *
   * [maxResults] - Maximum number of operations per response.
   *
   * [pageToken] - A previously-returned page token representing part of the larger set of results to view.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<OperationsListResponse> list(core.String project, core.String instance, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "{project}/instances/{instance}/operations";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new OperationsListResponse.fromJson(data));
  }
}

class SslCertsResource_ {

  final Client _client;

  SslCertsResource_(Client client) :
      _client = client;

  /**
   * Deletes the SSL certificate. The change will not take effect until the instance is restarted.
   *
   * [project] - Project ID of the project that contains the instance to be deleted.
   *
   * [instance] - Cloud SQL instance ID. This does not include the project ID.
   *
   * [sha1Fingerprint] - Sha1 FingerPrint.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SslCertsDeleteResponse> delete(core.String project, core.String instance, core.String sha1Fingerprint, {core.Map optParams}) {
    var url = "{project}/instances/{instance}/sslCerts/{sha1Fingerprint}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (sha1Fingerprint == null) paramErrors.add("sha1Fingerprint is required");
    if (sha1Fingerprint != null) urlParams["sha1Fingerprint"] = sha1Fingerprint;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new SslCertsDeleteResponse.fromJson(data));
  }

  /**
   * Retrieves a particular SSL certificate. Does not include the private key (required for usage). The private key must be saved from the response to initial creation.
   *
   * [project] - Project ID of the project that contains the instance.
   *
   * [instance] - Cloud SQL instance ID. This does not include the project ID.
   *
   * [sha1Fingerprint] - Sha1 FingerPrint.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SslCert> get(core.String project, core.String instance, core.String sha1Fingerprint, {core.Map optParams}) {
    var url = "{project}/instances/{instance}/sslCerts/{sha1Fingerprint}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (sha1Fingerprint == null) paramErrors.add("sha1Fingerprint is required");
    if (sha1Fingerprint != null) urlParams["sha1Fingerprint"] = sha1Fingerprint;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new SslCert.fromJson(data));
  }

  /**
   * Creates an SSL certificate and returns it along with the private key and server certificate authority. The new certificate will not be usable until the instance is restarted.
   *
   * [request] - SslCertsInsertRequest to send in this request
   *
   * [project] - Project ID of the project to which the newly created Cloud SQL instances should belong.
   *
   * [instance] - Cloud SQL instance ID. This does not include the project ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SslCertsInsertResponse> insert(SslCertsInsertRequest request, core.String project, core.String instance, {core.Map optParams}) {
    var url = "{project}/instances/{instance}/sslCerts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new SslCertsInsertResponse.fromJson(data));
  }

  /**
   * Lists all of the current SSL certificates for the instance.
   *
   * [project] - Project ID of the project for which to list Cloud SQL instances.
   *
   * [instance] - Cloud SQL instance ID. This does not include the project ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SslCertsListResponse> list(core.String project, core.String instance, {core.Map optParams}) {
    var url = "{project}/instances/{instance}/sslCerts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (instance == null) paramErrors.add("instance is required");
    if (instance != null) urlParams["instance"] = instance;
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new SslCertsListResponse.fromJson(data));
  }
}

class TiersResource_ {

  final Client _client;

  TiersResource_(Client client) :
      _client = client;

  /**
   * Lists all available service tiers for Google Cloud SQL, for example D1, D2. For related information, see Pricing.
   *
   * [project] - Project ID of the project for which to list tiers.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<TiersListResponse> list(core.String project, {core.Map optParams}) {
    var url = "{project}/tiers";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (project == null) paramErrors.add("project is required");
    if (project != null) urlParams["project"] = project;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new TiersListResponse.fromJson(data));
  }
}

