part of sqladmin_v1beta3_api;

/** Database instance backup configuration. */
class BackupConfiguration {

  /** Whether binary log is enabled. If backup configuration is disabled, binary log must be disabled as well. */
  core.bool binaryLogEnabled;

  /** Whether this configuration is enabled. */
  core.bool enabled;

  /** Identifier for this configuration. This gets generated automatically when a backup configuration is created. */
  core.String id;

  /** This is always sql#backupConfiguration. */
  core.String kind;

  /** Start time for the daily backup configuration in UTC timezone in the 24 hour format - HH:MM. */
  core.String startTime;

  /** Create new BackupConfiguration from JSON data */
  BackupConfiguration.fromJson(core.Map json) {
    if (json.containsKey("binaryLogEnabled")) {
      binaryLogEnabled = json["binaryLogEnabled"];
    }
    if (json.containsKey("enabled")) {
      enabled = json["enabled"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("startTime")) {
      startTime = json["startTime"];
    }
  }

  /** Create JSON Object for BackupConfiguration */
  core.Map toJson() {
    var output = new core.Map();

    if (binaryLogEnabled != null) {
      output["binaryLogEnabled"] = binaryLogEnabled;
    }
    if (enabled != null) {
      output["enabled"] = enabled;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (startTime != null) {
      output["startTime"] = startTime;
    }

    return output;
  }

  /** Return String representation of BackupConfiguration */
  core.String toString() => JSON.encode(this.toJson());

}

/** A database instance backup run resource. */
class BackupRun {

  /** Backup Configuration identifier. */
  core.String backupConfiguration;

  /** The due time of this run in UTC timezone in RFC 3339 format, for example 2012-11-15T16:19:00.094Z. */
  core.String dueTime;

  /** The time the backup operation completed in UTC timezone in RFC 3339 format, for example 2012-11-15T16:19:00.094Z. */
  core.String endTime;

  /** The time the run was enqueued in UTC timezone in RFC 3339 format, for example 2012-11-15T16:19:00.094Z. */
  core.String enqueuedTime;

  /** Information about why the backup operation failed. This is only present if the run has the FAILED status. */
  OperationError error;

  /** Name of the database instance. */
  core.String instance;

  /** This is always sql#backupRun. */
  core.String kind;

  /** The time the backup operation actually started in UTC timezone in RFC 3339 format, for example 2012-11-15T16:19:00.094Z. */
  core.String startTime;

  /** The status of this run. */
  core.String status;

  /** Create new BackupRun from JSON data */
  BackupRun.fromJson(core.Map json) {
    if (json.containsKey("backupConfiguration")) {
      backupConfiguration = json["backupConfiguration"];
    }
    if (json.containsKey("dueTime")) {
      dueTime = json["dueTime"];
    }
    if (json.containsKey("endTime")) {
      endTime = json["endTime"];
    }
    if (json.containsKey("enqueuedTime")) {
      enqueuedTime = json["enqueuedTime"];
    }
    if (json.containsKey("error")) {
      error = new OperationError.fromJson(json["error"]);
    }
    if (json.containsKey("instance")) {
      instance = json["instance"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("startTime")) {
      startTime = json["startTime"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for BackupRun */
  core.Map toJson() {
    var output = new core.Map();

    if (backupConfiguration != null) {
      output["backupConfiguration"] = backupConfiguration;
    }
    if (dueTime != null) {
      output["dueTime"] = dueTime;
    }
    if (endTime != null) {
      output["endTime"] = endTime;
    }
    if (enqueuedTime != null) {
      output["enqueuedTime"] = enqueuedTime;
    }
    if (error != null) {
      output["error"] = error.toJson();
    }
    if (instance != null) {
      output["instance"] = instance;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (startTime != null) {
      output["startTime"] = startTime;
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of BackupRun */
  core.String toString() => JSON.encode(this.toJson());

}

/** Backup run list results. */
class BackupRunsListResponse {

  /** A list of backup runs in reverse chronological order of the enqueued time. */
  core.List<BackupRun> items;

  /** This is always sql#backupRunsList. */
  core.String kind;

  /** The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. */
  core.String nextPageToken;

  /** Create new BackupRunsListResponse from JSON data */
  BackupRunsListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new BackupRun.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for BackupRunsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of BackupRunsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Binary log coordinates. */
class BinLogCoordinates {

  /** Name of the binary log file for a Cloud SQL instance. */
  core.String binLogFileName;

  /** Position (offset) within the binary log file. */
  core.int binLogPosition;

  /** This is always sql#binLogCoordinates. */
  core.String kind;

  /** Create new BinLogCoordinates from JSON data */
  BinLogCoordinates.fromJson(core.Map json) {
    if (json.containsKey("binLogFileName")) {
      binLogFileName = json["binLogFileName"];
    }
    if (json.containsKey("binLogPosition")) {
      binLogPosition = (json["binLogPosition"] is core.String) ? core.int.parse(json["binLogPosition"]) : json["binLogPosition"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for BinLogCoordinates */
  core.Map toJson() {
    var output = new core.Map();

    if (binLogFileName != null) {
      output["binLogFileName"] = binLogFileName;
    }
    if (binLogPosition != null) {
      output["binLogPosition"] = binLogPosition;
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of BinLogCoordinates */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance clone context. */
class CloneContext {

  /** Binary log coordinates, if specified, indentify the the position up to which the source instance should be cloned. If not specified, the source instance is cloned up to the most recent binary log coordintes. */
  BinLogCoordinates binLogCoordinates;

  /** Name of the Cloud SQL instance to be created as a clone. */
  core.String destinationInstanceName;

  /** This is always sql#cloneContext. */
  core.String kind;

  /** Name of the Cloud SQL instance to be cloned. */
  core.String sourceInstanceName;

  /** Create new CloneContext from JSON data */
  CloneContext.fromJson(core.Map json) {
    if (json.containsKey("binLogCoordinates")) {
      binLogCoordinates = new BinLogCoordinates.fromJson(json["binLogCoordinates"]);
    }
    if (json.containsKey("destinationInstanceName")) {
      destinationInstanceName = json["destinationInstanceName"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("sourceInstanceName")) {
      sourceInstanceName = json["sourceInstanceName"];
    }
  }

  /** Create JSON Object for CloneContext */
  core.Map toJson() {
    var output = new core.Map();

    if (binLogCoordinates != null) {
      output["binLogCoordinates"] = binLogCoordinates.toJson();
    }
    if (destinationInstanceName != null) {
      output["destinationInstanceName"] = destinationInstanceName;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (sourceInstanceName != null) {
      output["sourceInstanceName"] = sourceInstanceName;
    }

    return output;
  }

  /** Return String representation of CloneContext */
  core.String toString() => JSON.encode(this.toJson());

}

/** MySQL flags for Cloud SQL instances. */
class DatabaseFlags {

  /** The name of the flag. These flags are passed at instance startup, so include both MySQL server options and MySQL system variables. Flags should be specified with underscores, not hyphens. Refer to the official MySQL documentation on server options and system variables for descriptions of what these flags do. Acceptable values are:  event_scheduler on or off (Note: The event scheduler will only work reliably if the instance activationPolicy is set to ALWAYS.) general_log on or off group_concat_max_len 4..17179869184 innodb_flush_log_at_trx_commit 0..2 innodb_lock_wait_timeout 1..1073741824 log_bin_trust_function_creators on or off log_output Can be either TABLE or NONE, FILE is not supported. log_queries_not_using_indexes on or off long_query_time 0..30000000 lower_case_table_names 0..2 max_allowed_packet 16384..1073741824 read_only on or off skip_show_database on or off slow_query_log on or off wait_timeout 1..31536000 */
  core.String name;

  /** The value of the flag. Booleans should be set using 1 for true, and 0 for false. This field must be omitted if the flag doesn't take a value. */
  core.String value;

  /** Create new DatabaseFlags from JSON data */
  DatabaseFlags.fromJson(core.Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for DatabaseFlags */
  core.Map toJson() {
    var output = new core.Map();

    if (name != null) {
      output["name"] = name;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of DatabaseFlags */
  core.String toString() => JSON.encode(this.toJson());

}

/** A Cloud SQL instance resource. */
class DatabaseInstance {

  /** The current disk usage of the instance in bytes. */
  core.int currentDiskSize;

  /** The database engine type and version. Can be MYSQL_5_5 or MYSQL_5_6. Defaults to MYSQL_5_5. The databaseVersion can not be changed after instance creation. */
  core.String databaseVersion;

  /** HTTP 1.1 Entity tag for the resource. */
  core.String etag;

  /** Name of the Cloud SQL instance. This does not include the project ID. */
  core.String instance;

  /** The assigned IP addresses for the instance. */
  core.List<IpMapping> ipAddresses;

  /** This is always sql#instance. */
  core.String kind;

  /** The maximum disk size of the instance in bytes. */
  core.int maxDiskSize;

  /** The project ID of the project containing the Cloud SQL instance. The Google apps domain is prefixed if applicable. */
  core.String project;

  /** The geographical region. Can be us-east1, us-central, asia-east1 or europe-west1. Defaults to us-central. The region can not be changed after instance creation. */
  core.String region;

  /** SSL configuration. */
  SslCert serverCaCert;

  /** The user settings. */
  Settings settings;

  /** The current serving state of the Cloud SQL instance. This can be one of the following.
RUNNABLE: The instance is running, or is ready to run when accessed.
SUSPENDED: The instance is not available, for example due to problems with billing.
PENDING_CREATE: The instance is being created.
MAINTENANCE: The instance is down for maintenance.
UNKNOWN_STATE: The state of the instance is unknown. */
  core.String state;

  /** Create new DatabaseInstance from JSON data */
  DatabaseInstance.fromJson(core.Map json) {
    if (json.containsKey("currentDiskSize")) {
      currentDiskSize = (json["currentDiskSize"] is core.String) ? core.int.parse(json["currentDiskSize"]) : json["currentDiskSize"];
    }
    if (json.containsKey("databaseVersion")) {
      databaseVersion = json["databaseVersion"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("instance")) {
      instance = json["instance"];
    }
    if (json.containsKey("ipAddresses")) {
      ipAddresses = json["ipAddresses"].map((ipAddressesItem) => new IpMapping.fromJson(ipAddressesItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("maxDiskSize")) {
      maxDiskSize = (json["maxDiskSize"] is core.String) ? core.int.parse(json["maxDiskSize"]) : json["maxDiskSize"];
    }
    if (json.containsKey("project")) {
      project = json["project"];
    }
    if (json.containsKey("region")) {
      region = json["region"];
    }
    if (json.containsKey("serverCaCert")) {
      serverCaCert = new SslCert.fromJson(json["serverCaCert"]);
    }
    if (json.containsKey("settings")) {
      settings = new Settings.fromJson(json["settings"]);
    }
    if (json.containsKey("state")) {
      state = json["state"];
    }
  }

  /** Create JSON Object for DatabaseInstance */
  core.Map toJson() {
    var output = new core.Map();

    if (currentDiskSize != null) {
      output["currentDiskSize"] = currentDiskSize;
    }
    if (databaseVersion != null) {
      output["databaseVersion"] = databaseVersion;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (instance != null) {
      output["instance"] = instance;
    }
    if (ipAddresses != null) {
      output["ipAddresses"] = ipAddresses.map((ipAddressesItem) => ipAddressesItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (maxDiskSize != null) {
      output["maxDiskSize"] = maxDiskSize;
    }
    if (project != null) {
      output["project"] = project;
    }
    if (region != null) {
      output["region"] = region;
    }
    if (serverCaCert != null) {
      output["serverCaCert"] = serverCaCert.toJson();
    }
    if (settings != null) {
      output["settings"] = settings.toJson();
    }
    if (state != null) {
      output["state"] = state;
    }

    return output;
  }

  /** Return String representation of DatabaseInstance */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance export context. */
class ExportContext {

  /** Databases (for example, guestbook) from which the export is made. If unspecified, all databases are exported. */
  core.List<core.String> database;

  /** This is always sql#exportContext. */
  core.String kind;

  /** Tables to export, or that were exported, from the specified database. If you specify tables, specify one and only one database. */
  core.List<core.String> table;

  /** The path to the file in Google Cloud Storage where the export will be stored, or where it was already stored. The URI is in the form gs://bucketName/fileName. If the file already exists, the operation fails. If the filename ends with .gz, the contents are compressed. */
  core.String uri;

  /** Create new ExportContext from JSON data */
  ExportContext.fromJson(core.Map json) {
    if (json.containsKey("database")) {
      database = json["database"].toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("table")) {
      table = json["table"].toList();
    }
    if (json.containsKey("uri")) {
      uri = json["uri"];
    }
  }

  /** Create JSON Object for ExportContext */
  core.Map toJson() {
    var output = new core.Map();

    if (database != null) {
      output["database"] = database.toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (table != null) {
      output["table"] = table.toList();
    }
    if (uri != null) {
      output["uri"] = uri;
    }

    return output;
  }

  /** Return String representation of ExportContext */
  core.String toString() => JSON.encode(this.toJson());

}

/** A Google Cloud SQL service flag resource. */
class Flag {

  /** For STRING flags, a list of strings that the value can be set to. */
  core.List<core.String> allowedStringValues;

  /** The database version this flag applies to. Currently this can only be [MYSQL_5_5]. */
  core.List<core.String> appliesTo;

  /** This is always sql#flag. */
  core.String kind;

  /** For INTEGER flags, the maximum allowed value. */
  core.int maxValue;

  /** For INTEGER flags, the minimum allowed value. */
  core.int minValue;

  /** This is the name of the flag. Flag names always use underscores, not hyphens, e.g. max_allowed_packet */
  core.String name;

  /** The type of the flag. Flags are typed to being BOOLEAN, STRING, INTEGER or NONE. NONE is used for flags which do not take a value, such as skip_grant_tables. */
  core.String type;

  /** Create new Flag from JSON data */
  Flag.fromJson(core.Map json) {
    if (json.containsKey("allowedStringValues")) {
      allowedStringValues = json["allowedStringValues"].toList();
    }
    if (json.containsKey("appliesTo")) {
      appliesTo = json["appliesTo"].toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("maxValue")) {
      maxValue = (json["maxValue"] is core.String) ? core.int.parse(json["maxValue"]) : json["maxValue"];
    }
    if (json.containsKey("minValue")) {
      minValue = (json["minValue"] is core.String) ? core.int.parse(json["minValue"]) : json["minValue"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Flag */
  core.Map toJson() {
    var output = new core.Map();

    if (allowedStringValues != null) {
      output["allowedStringValues"] = allowedStringValues.toList();
    }
    if (appliesTo != null) {
      output["appliesTo"] = appliesTo.toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (maxValue != null) {
      output["maxValue"] = maxValue;
    }
    if (minValue != null) {
      output["minValue"] = minValue;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Flag */
  core.String toString() => JSON.encode(this.toJson());

}

/** Flags list response. */
class FlagsListResponse {

  /** List of flags. */
  core.List<Flag> items;

  /** This is always sql#flagsList. */
  core.String kind;

  /** Create new FlagsListResponse from JSON data */
  FlagsListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Flag.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for FlagsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of FlagsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance import context. */
class ImportContext {

  /** The database (for example, guestbook) to which the import is made. If not set, it is assumed that the database is specified in the file to be imported. */
  core.String database;

  /** This is always sql#importContext. */
  core.String kind;

  /** A path to the MySQL dump file in Google Cloud Storage from which the import is made. The URI is in the form gs://bucketName/fileName. Compressed gzip files (.gz) are also supported. */
  core.List<core.String> uri;

  /** Create new ImportContext from JSON data */
  ImportContext.fromJson(core.Map json) {
    if (json.containsKey("database")) {
      database = json["database"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("uri")) {
      uri = json["uri"].toList();
    }
  }

  /** Create JSON Object for ImportContext */
  core.Map toJson() {
    var output = new core.Map();

    if (database != null) {
      output["database"] = database;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (uri != null) {
      output["uri"] = uri.toList();
    }

    return output;
  }

  /** Return String representation of ImportContext */
  core.String toString() => JSON.encode(this.toJson());

}

/** An Operations resource contains information about database instance operations such as create, delete, and restart. Operations resources are created in response to operations that were initiated; you never create them directly. */
class InstanceOperation {

  /** The time this operation finished in UTC timezone in RFC 3339 format, for example 2012-11-15T16:19:00.094Z. */
  core.String endTime;

  /** The time this operation was enqueued in UTC timezone in RFC 3339 format, for example 2012-11-15T16:19:00.094Z. */
  core.String enqueuedTime;

  /** The error(s) encountered by this operation. Only set if the operation results in an error. */
  core.List<OperationError> error;

  /** The context for export operation, if applicable. */
  ExportContext exportContext;

  /** The context for import operation, if applicable. */
  ImportContext importContext;

  /** Name of the database instance. */
  core.String instance;

  /** This is always sql#instanceOperation. */
  core.String kind;

  /** An identifier that uniquely identifies the operation. You can use this identifier to retrieve the Operations resource that has information about the operation. */
  core.String operation;

  /** The type of the operation. Valid values are CREATE, DELETE, UPDATE, RESTART, IMPORT, EXPORT, BACKUP_VOLUME, RESTORE_VOLUME. */
  core.String operationType;

  /** The time this operation actually started in UTC timezone in RFC 3339 format, for example 2012-11-15T16:19:00.094Z. */
  core.String startTime;

  /** The state of an operation. Valid values are PENDING, RUNNING, DONE, UNKNOWN. */
  core.String state;

  /** The email address of the user who initiated this operation. */
  core.String userEmailAddress;

  /** Create new InstanceOperation from JSON data */
  InstanceOperation.fromJson(core.Map json) {
    if (json.containsKey("endTime")) {
      endTime = json["endTime"];
    }
    if (json.containsKey("enqueuedTime")) {
      enqueuedTime = json["enqueuedTime"];
    }
    if (json.containsKey("error")) {
      error = json["error"].map((errorItem) => new OperationError.fromJson(errorItem)).toList();
    }
    if (json.containsKey("exportContext")) {
      exportContext = new ExportContext.fromJson(json["exportContext"]);
    }
    if (json.containsKey("importContext")) {
      importContext = new ImportContext.fromJson(json["importContext"]);
    }
    if (json.containsKey("instance")) {
      instance = json["instance"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("operation")) {
      operation = json["operation"];
    }
    if (json.containsKey("operationType")) {
      operationType = json["operationType"];
    }
    if (json.containsKey("startTime")) {
      startTime = json["startTime"];
    }
    if (json.containsKey("state")) {
      state = json["state"];
    }
    if (json.containsKey("userEmailAddress")) {
      userEmailAddress = json["userEmailAddress"];
    }
  }

  /** Create JSON Object for InstanceOperation */
  core.Map toJson() {
    var output = new core.Map();

    if (endTime != null) {
      output["endTime"] = endTime;
    }
    if (enqueuedTime != null) {
      output["enqueuedTime"] = enqueuedTime;
    }
    if (error != null) {
      output["error"] = error.map((errorItem) => errorItem.toJson()).toList();
    }
    if (exportContext != null) {
      output["exportContext"] = exportContext.toJson();
    }
    if (importContext != null) {
      output["importContext"] = importContext.toJson();
    }
    if (instance != null) {
      output["instance"] = instance;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (operation != null) {
      output["operation"] = operation;
    }
    if (operationType != null) {
      output["operationType"] = operationType;
    }
    if (startTime != null) {
      output["startTime"] = startTime;
    }
    if (state != null) {
      output["state"] = state;
    }
    if (userEmailAddress != null) {
      output["userEmailAddress"] = userEmailAddress;
    }

    return output;
  }

  /** Return String representation of InstanceOperation */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance set root password request. */
class InstanceSetRootPasswordRequest {

  /** Set Root Password Context. */
  SetRootPasswordContext setRootPasswordContext;

  /** Create new InstanceSetRootPasswordRequest from JSON data */
  InstanceSetRootPasswordRequest.fromJson(core.Map json) {
    if (json.containsKey("setRootPasswordContext")) {
      setRootPasswordContext = new SetRootPasswordContext.fromJson(json["setRootPasswordContext"]);
    }
  }

  /** Create JSON Object for InstanceSetRootPasswordRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (setRootPasswordContext != null) {
      output["setRootPasswordContext"] = setRootPasswordContext.toJson();
    }

    return output;
  }

  /** Return String representation of InstanceSetRootPasswordRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance clone request. */
class InstancesCloneRequest {

  /** Contains details about the clone operation. */
  CloneContext cloneContext;

  /** Create new InstancesCloneRequest from JSON data */
  InstancesCloneRequest.fromJson(core.Map json) {
    if (json.containsKey("cloneContext")) {
      cloneContext = new CloneContext.fromJson(json["cloneContext"]);
    }
  }

  /** Create JSON Object for InstancesCloneRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (cloneContext != null) {
      output["cloneContext"] = cloneContext.toJson();
    }

    return output;
  }

  /** Return String representation of InstancesCloneRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance clone response. */
class InstancesCloneResponse {

  /** This is always sql#instancesClone. */
  core.String kind;

  /** An unique identifier for the operation associated with the cloned instance. You can use this identifier to retrieve the Operations resource, which has information about the operation. */
  core.String operation;

  /** Create new InstancesCloneResponse from JSON data */
  InstancesCloneResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("operation")) {
      operation = json["operation"];
    }
  }

  /** Create JSON Object for InstancesCloneResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (operation != null) {
      output["operation"] = operation;
    }

    return output;
  }

  /** Return String representation of InstancesCloneResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance delete response. */
class InstancesDeleteResponse {

  /** This is always sql#instancesDelete. */
  core.String kind;

  /** An identifier that uniquely identifies the operation. You can use this identifier to retrieve the Operations resource that has information about the operation. */
  core.String operation;

  /** Create new InstancesDeleteResponse from JSON data */
  InstancesDeleteResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("operation")) {
      operation = json["operation"];
    }
  }

  /** Create JSON Object for InstancesDeleteResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (operation != null) {
      output["operation"] = operation;
    }

    return output;
  }

  /** Return String representation of InstancesDeleteResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance export request. */
class InstancesExportRequest {

  /** Contains details about the export operation. */
  ExportContext exportContext;

  /** Create new InstancesExportRequest from JSON data */
  InstancesExportRequest.fromJson(core.Map json) {
    if (json.containsKey("exportContext")) {
      exportContext = new ExportContext.fromJson(json["exportContext"]);
    }
  }

  /** Create JSON Object for InstancesExportRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (exportContext != null) {
      output["exportContext"] = exportContext.toJson();
    }

    return output;
  }

  /** Return String representation of InstancesExportRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance export response. */
class InstancesExportResponse {

  /** This is always sql#instancesExport. */
  core.String kind;

  /** An identifier that uniquely identifies the operation. You can use this identifier to retrieve the Operations resource that has information about the operation. */
  core.String operation;

  /** Create new InstancesExportResponse from JSON data */
  InstancesExportResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("operation")) {
      operation = json["operation"];
    }
  }

  /** Create JSON Object for InstancesExportResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (operation != null) {
      output["operation"] = operation;
    }

    return output;
  }

  /** Return String representation of InstancesExportResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance import request. */
class InstancesImportRequest {

  /** Contains details about the import operation. */
  ImportContext importContext;

  /** Create new InstancesImportRequest from JSON data */
  InstancesImportRequest.fromJson(core.Map json) {
    if (json.containsKey("importContext")) {
      importContext = new ImportContext.fromJson(json["importContext"]);
    }
  }

  /** Create JSON Object for InstancesImportRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (importContext != null) {
      output["importContext"] = importContext.toJson();
    }

    return output;
  }

  /** Return String representation of InstancesImportRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance import response. */
class InstancesImportResponse {

  /** This is always sql#instancesImport. */
  core.String kind;

  /** An identifier that uniquely identifies the operation. You can use this identifier to retrieve the Operations resource that has information about the operation. */
  core.String operation;

  /** Create new InstancesImportResponse from JSON data */
  InstancesImportResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("operation")) {
      operation = json["operation"];
    }
  }

  /** Create JSON Object for InstancesImportResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (operation != null) {
      output["operation"] = operation;
    }

    return output;
  }

  /** Return String representation of InstancesImportResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance insert response. */
class InstancesInsertResponse {

  /** This is always sql#instancesInsert. */
  core.String kind;

  /** An identifier that uniquely identifies the operation. You can use this identifier to retrieve the Operations resource that has information about the operation. */
  core.String operation;

  /** Create new InstancesInsertResponse from JSON data */
  InstancesInsertResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("operation")) {
      operation = json["operation"];
    }
  }

  /** Create JSON Object for InstancesInsertResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (operation != null) {
      output["operation"] = operation;
    }

    return output;
  }

  /** Return String representation of InstancesInsertResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instances list response. */
class InstancesListResponse {

  /** List of database instance resources. */
  core.List<DatabaseInstance> items;

  /** This is always sql#instancesList. */
  core.String kind;

  /** The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. */
  core.String nextPageToken;

  /** Create new InstancesListResponse from JSON data */
  InstancesListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new DatabaseInstance.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for InstancesListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of InstancesListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance resetSslConfig response. */
class InstancesResetSslConfigResponse {

  /** This is always sql#instancesResetSslConfig. */
  core.String kind;

  /** An identifier that uniquely identifies the operation. You can use this identifier to retrieve the Operations resource that has information about the operation. All ssl client certificates will be deleted and a new server certificate will be created. Does not take effect until the next instance restart. */
  core.String operation;

  /** Create new InstancesResetSslConfigResponse from JSON data */
  InstancesResetSslConfigResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("operation")) {
      operation = json["operation"];
    }
  }

  /** Create JSON Object for InstancesResetSslConfigResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (operation != null) {
      output["operation"] = operation;
    }

    return output;
  }

  /** Return String representation of InstancesResetSslConfigResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance restart response. */
class InstancesRestartResponse {

  /** This is always sql#instancesRestart. */
  core.String kind;

  /** An identifier that uniquely identifies the operation. You can use this identifier to retrieve the Operations resource that has information about the operation. */
  core.String operation;

  /** Create new InstancesRestartResponse from JSON data */
  InstancesRestartResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("operation")) {
      operation = json["operation"];
    }
  }

  /** Create JSON Object for InstancesRestartResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (operation != null) {
      output["operation"] = operation;
    }

    return output;
  }

  /** Return String representation of InstancesRestartResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance restore backup response. */
class InstancesRestoreBackupResponse {

  /** This is always sql#instancesRestoreBackup. */
  core.String kind;

  /** An identifier that uniquely identifies the operation. You can use this identifier to retrieve the Operations resource that has information about the operation. */
  core.String operation;

  /** Create new InstancesRestoreBackupResponse from JSON data */
  InstancesRestoreBackupResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("operation")) {
      operation = json["operation"];
    }
  }

  /** Create JSON Object for InstancesRestoreBackupResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (operation != null) {
      output["operation"] = operation;
    }

    return output;
  }

  /** Return String representation of InstancesRestoreBackupResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance set root password response. */
class InstancesSetRootPasswordResponse {

  /** This is always sql#instancesSetRootPassword. */
  core.String kind;

  /** An identifier that uniquely identifies the operation. You can use this identifier to retrieve the Operations resource that has information about the operation. */
  core.String operation;

  /** Create new InstancesSetRootPasswordResponse from JSON data */
  InstancesSetRootPasswordResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("operation")) {
      operation = json["operation"];
    }
  }

  /** Create JSON Object for InstancesSetRootPasswordResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (operation != null) {
      output["operation"] = operation;
    }

    return output;
  }

  /** Return String representation of InstancesSetRootPasswordResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance update response. */
class InstancesUpdateResponse {

  /** This is always sql#instancesUpdate. */
  core.String kind;

  /** An identifier that uniquely identifies the operation. You can use this identifier to retrieve information about the operation. */
  core.String operation;

  /** Create new InstancesUpdateResponse from JSON data */
  InstancesUpdateResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("operation")) {
      operation = json["operation"];
    }
  }

  /** Create JSON Object for InstancesUpdateResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (operation != null) {
      output["operation"] = operation;
    }

    return output;
  }

  /** Return String representation of InstancesUpdateResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** IP Management configuration. */
class IpConfiguration {

  /** The list of external networks that are allowed to connect to the instance using the IP. In CIDR notation, also known as 'slash' notation (e.g. 192.168.100.0/24). */
  core.List<core.String> authorizedNetworks;

  /** Whether the instance should be assigned an IP address or not. */
  core.bool enabled;

  /** Whether the mysqld should default to 'REQUIRE X509' for users connecting over IP. */
  core.bool requireSsl;

  /** Create new IpConfiguration from JSON data */
  IpConfiguration.fromJson(core.Map json) {
    if (json.containsKey("authorizedNetworks")) {
      authorizedNetworks = json["authorizedNetworks"].toList();
    }
    if (json.containsKey("enabled")) {
      enabled = json["enabled"];
    }
    if (json.containsKey("requireSsl")) {
      requireSsl = json["requireSsl"];
    }
  }

  /** Create JSON Object for IpConfiguration */
  core.Map toJson() {
    var output = new core.Map();

    if (authorizedNetworks != null) {
      output["authorizedNetworks"] = authorizedNetworks.toList();
    }
    if (enabled != null) {
      output["enabled"] = enabled;
    }
    if (requireSsl != null) {
      output["requireSsl"] = requireSsl;
    }

    return output;
  }

  /** Return String representation of IpConfiguration */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance IP Mapping. */
class IpMapping {

  /** The IP address assigned. */
  core.String ipAddress;

  /** The due time for this IP to be retired in RFC 3339 format, for example 2012-11-15T16:19:00.094Z. This field is only available when the IP is scheduled to be retired. */
  core.String timeToRetire;

  /** Create new IpMapping from JSON data */
  IpMapping.fromJson(core.Map json) {
    if (json.containsKey("ipAddress")) {
      ipAddress = json["ipAddress"];
    }
    if (json.containsKey("timeToRetire")) {
      timeToRetire = json["timeToRetire"];
    }
  }

  /** Create JSON Object for IpMapping */
  core.Map toJson() {
    var output = new core.Map();

    if (ipAddress != null) {
      output["ipAddress"] = ipAddress;
    }
    if (timeToRetire != null) {
      output["timeToRetire"] = timeToRetire;
    }

    return output;
  }

  /** Return String representation of IpMapping */
  core.String toString() => JSON.encode(this.toJson());

}

/** Preferred location. This specifies where a Cloud SQL instance should preferably be located, either in a specific Compute Engine zone, or co-located with an App Engine application. Note that if the preferred location is not available, the instance will be located as close as possible within the region. Only one location may be specified. */
class LocationPreference {

  /** The AppEngine application to follow, it must be in the same region as the Cloud SQL instance. */
  core.String followGaeApplication;

  /** This is always sql#locationPreference. */
  core.String kind;

  /** The preferred Compute Engine zone (e.g. us-centra1-a, us-central1-b, etc.). */
  core.String zone;

  /** Create new LocationPreference from JSON data */
  LocationPreference.fromJson(core.Map json) {
    if (json.containsKey("followGaeApplication")) {
      followGaeApplication = json["followGaeApplication"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("zone")) {
      zone = json["zone"];
    }
  }

  /** Create JSON Object for LocationPreference */
  core.Map toJson() {
    var output = new core.Map();

    if (followGaeApplication != null) {
      output["followGaeApplication"] = followGaeApplication;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (zone != null) {
      output["zone"] = zone;
    }

    return output;
  }

  /** Return String representation of LocationPreference */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance operation error. */
class OperationError {

  /** Identifies the specific error that occurred. */
  core.String code;

  /** This is always sql#operationError. */
  core.String kind;

  /** Create new OperationError from JSON data */
  OperationError.fromJson(core.Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for OperationError */
  core.Map toJson() {
    var output = new core.Map();

    if (code != null) {
      output["code"] = code;
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of OperationError */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance list operations response. */
class OperationsListResponse {

  /** List of operation resources. */
  core.List<InstanceOperation> items;

  /** This is always sql#operationsList. */
  core.String kind;

  /** The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. */
  core.String nextPageToken;

  /** Create new OperationsListResponse from JSON data */
  OperationsListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new InstanceOperation.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for OperationsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of OperationsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance set root password context. */
class SetRootPasswordContext {

  /** This is always sql#setRootUserContext. */
  core.String kind;

  /** The password for the root user. */
  core.String password;

  /** Create new SetRootPasswordContext from JSON data */
  SetRootPasswordContext.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("password")) {
      password = json["password"];
    }
  }

  /** Create JSON Object for SetRootPasswordContext */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (password != null) {
      output["password"] = password;
    }

    return output;
  }

  /** Return String representation of SetRootPasswordContext */
  core.String toString() => JSON.encode(this.toJson());

}

/** Database instance settings. */
class Settings {

  /** The activation policy for this instance. This specifies when the instance should be activated and is applicable only when the instance state is RUNNABLE. This can be one of the following.
ALWAYS: The instance should always be active.
NEVER: The instance should never be activated.
ON_DEMAND: The instance is activated upon receiving requests. */
  core.String activationPolicy;

  /** The AppEngine app ids that can access this instance. */
  core.List<core.String> authorizedGaeApplications;

  /** The daily backup configuration for the instance. */
  core.List<BackupConfiguration> backupConfiguration;

  /** The database flags passed to the instance at startup. */
  core.List<DatabaseFlags> databaseFlags;

  /** The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. */
  IpConfiguration ipConfiguration;

  /** This is always sql#settings. */
  core.String kind;

  /** The location preference settings. This allows the instance to be located as near as possible to either an AppEngine app or GCE zone for better perfomance. */
  LocationPreference locationPreference;

  /** The pricing plan for this instance. This can be either PER_USE or PACKAGE. */
  core.String pricingPlan;

  /** The type of replication this instance uses. This can be either ASYNCHRONOUS or SYNCHRONOUS. */
  core.String replicationType;

  /** The version of instance settings. This is a required field for update method to make sure concurrent updates are handled properly. During update, use the most recent settingsVersion value for this instance and do not try to update this value. */
  core.int settingsVersion;

  /** The tier of service for this instance, for example D1, D2. For more information, see pricing. */
  core.String tier;

  /** Create new Settings from JSON data */
  Settings.fromJson(core.Map json) {
    if (json.containsKey("activationPolicy")) {
      activationPolicy = json["activationPolicy"];
    }
    if (json.containsKey("authorizedGaeApplications")) {
      authorizedGaeApplications = json["authorizedGaeApplications"].toList();
    }
    if (json.containsKey("backupConfiguration")) {
      backupConfiguration = json["backupConfiguration"].map((backupConfigurationItem) => new BackupConfiguration.fromJson(backupConfigurationItem)).toList();
    }
    if (json.containsKey("databaseFlags")) {
      databaseFlags = json["databaseFlags"].map((databaseFlagsItem) => new DatabaseFlags.fromJson(databaseFlagsItem)).toList();
    }
    if (json.containsKey("ipConfiguration")) {
      ipConfiguration = new IpConfiguration.fromJson(json["ipConfiguration"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("locationPreference")) {
      locationPreference = new LocationPreference.fromJson(json["locationPreference"]);
    }
    if (json.containsKey("pricingPlan")) {
      pricingPlan = json["pricingPlan"];
    }
    if (json.containsKey("replicationType")) {
      replicationType = json["replicationType"];
    }
    if (json.containsKey("settingsVersion")) {
      settingsVersion = (json["settingsVersion"] is core.String) ? core.int.parse(json["settingsVersion"]) : json["settingsVersion"];
    }
    if (json.containsKey("tier")) {
      tier = json["tier"];
    }
  }

  /** Create JSON Object for Settings */
  core.Map toJson() {
    var output = new core.Map();

    if (activationPolicy != null) {
      output["activationPolicy"] = activationPolicy;
    }
    if (authorizedGaeApplications != null) {
      output["authorizedGaeApplications"] = authorizedGaeApplications.toList();
    }
    if (backupConfiguration != null) {
      output["backupConfiguration"] = backupConfiguration.map((backupConfigurationItem) => backupConfigurationItem.toJson()).toList();
    }
    if (databaseFlags != null) {
      output["databaseFlags"] = databaseFlags.map((databaseFlagsItem) => databaseFlagsItem.toJson()).toList();
    }
    if (ipConfiguration != null) {
      output["ipConfiguration"] = ipConfiguration.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (locationPreference != null) {
      output["locationPreference"] = locationPreference.toJson();
    }
    if (pricingPlan != null) {
      output["pricingPlan"] = pricingPlan;
    }
    if (replicationType != null) {
      output["replicationType"] = replicationType;
    }
    if (settingsVersion != null) {
      output["settingsVersion"] = settingsVersion;
    }
    if (tier != null) {
      output["tier"] = tier;
    }

    return output;
  }

  /** Return String representation of Settings */
  core.String toString() => JSON.encode(this.toJson());

}

/** SslCerts Resource */
class SslCert {

  /** PEM representation. */
  core.String cert;

  /** Serial number, as extracted from the certificate. */
  core.String certSerialNumber;

  /** User supplied name. Constrained to [a-zA-Z.-_ ]+. */
  core.String commonName;

  /** Time when the certificate was created. */
  core.String createTime;

  /** Time when the certificate expires. */
  core.String expirationTime;

  /** Name of the database instance. */
  core.String instance;

  /** This is always sql#sslCert. */
  core.String kind;

  /** Sha1 Fingerprint. */
  core.String sha1Fingerprint;

  /** Create new SslCert from JSON data */
  SslCert.fromJson(core.Map json) {
    if (json.containsKey("cert")) {
      cert = json["cert"];
    }
    if (json.containsKey("certSerialNumber")) {
      certSerialNumber = json["certSerialNumber"];
    }
    if (json.containsKey("commonName")) {
      commonName = json["commonName"];
    }
    if (json.containsKey("createTime")) {
      createTime = json["createTime"];
    }
    if (json.containsKey("expirationTime")) {
      expirationTime = json["expirationTime"];
    }
    if (json.containsKey("instance")) {
      instance = json["instance"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("sha1Fingerprint")) {
      sha1Fingerprint = json["sha1Fingerprint"];
    }
  }

  /** Create JSON Object for SslCert */
  core.Map toJson() {
    var output = new core.Map();

    if (cert != null) {
      output["cert"] = cert;
    }
    if (certSerialNumber != null) {
      output["certSerialNumber"] = certSerialNumber;
    }
    if (commonName != null) {
      output["commonName"] = commonName;
    }
    if (createTime != null) {
      output["createTime"] = createTime;
    }
    if (expirationTime != null) {
      output["expirationTime"] = expirationTime;
    }
    if (instance != null) {
      output["instance"] = instance;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (sha1Fingerprint != null) {
      output["sha1Fingerprint"] = sha1Fingerprint;
    }

    return output;
  }

  /** Return String representation of SslCert */
  core.String toString() => JSON.encode(this.toJson());

}

/** SslCertDetail. */
class SslCertDetail {

  /** The public information about the cert. */
  SslCert certInfo;

  /** The private key for the client cert, in pem format. Keep private in order to protect your security. */
  core.String certPrivateKey;

  /** Create new SslCertDetail from JSON data */
  SslCertDetail.fromJson(core.Map json) {
    if (json.containsKey("certInfo")) {
      certInfo = new SslCert.fromJson(json["certInfo"]);
    }
    if (json.containsKey("certPrivateKey")) {
      certPrivateKey = json["certPrivateKey"];
    }
  }

  /** Create JSON Object for SslCertDetail */
  core.Map toJson() {
    var output = new core.Map();

    if (certInfo != null) {
      output["certInfo"] = certInfo.toJson();
    }
    if (certPrivateKey != null) {
      output["certPrivateKey"] = certPrivateKey;
    }

    return output;
  }

  /** Return String representation of SslCertDetail */
  core.String toString() => JSON.encode(this.toJson());

}

/** SslCert delete response. */
class SslCertsDeleteResponse {

  /** This is always sql#sslCertsDelete. */
  core.String kind;

  /** An identifier that uniquely identifies the operation. You can use this identifier to retrieve the Operations resource that has information about the operation. */
  core.String operation;

  /** Create new SslCertsDeleteResponse from JSON data */
  SslCertsDeleteResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("operation")) {
      operation = json["operation"];
    }
  }

  /** Create JSON Object for SslCertsDeleteResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (operation != null) {
      output["operation"] = operation;
    }

    return output;
  }

  /** Return String representation of SslCertsDeleteResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** SslCerts insert request. */
class SslCertsInsertRequest {

  /** User supplied name. Must be a distinct name from the other certificates for this instance. New certificates will not be usable until the instance is restarted. */
  core.String commonName;

  /** Create new SslCertsInsertRequest from JSON data */
  SslCertsInsertRequest.fromJson(core.Map json) {
    if (json.containsKey("commonName")) {
      commonName = json["commonName"];
    }
  }

  /** Create JSON Object for SslCertsInsertRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (commonName != null) {
      output["commonName"] = commonName;
    }

    return output;
  }

  /** Return String representation of SslCertsInsertRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** SslCert insert response. */
class SslCertsInsertResponse {

  /** The new client certificate and private key. The new certificate will not work until the instance is restarted. */
  SslCertDetail clientCert;

  /** This is always sql#sslCertsInsert. */
  core.String kind;

  /** The server Certificate Authority's certificate. If this is missing you can force a new one to be generated by calling resetSslConfig method on instances resource.. */
  SslCert serverCaCert;

  /** Create new SslCertsInsertResponse from JSON data */
  SslCertsInsertResponse.fromJson(core.Map json) {
    if (json.containsKey("clientCert")) {
      clientCert = new SslCertDetail.fromJson(json["clientCert"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("serverCaCert")) {
      serverCaCert = new SslCert.fromJson(json["serverCaCert"]);
    }
  }

  /** Create JSON Object for SslCertsInsertResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (clientCert != null) {
      output["clientCert"] = clientCert.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (serverCaCert != null) {
      output["serverCaCert"] = serverCaCert.toJson();
    }

    return output;
  }

  /** Return String representation of SslCertsInsertResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** SslCerts list response. */
class SslCertsListResponse {

  /** List of client certificates for the instance. */
  core.List<SslCert> items;

  /** This is always sql#sslCertsList. */
  core.String kind;

  /** Create new SslCertsListResponse from JSON data */
  SslCertsListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new SslCert.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for SslCertsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of SslCertsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** A Google Cloud SQL service tier resource. */
class Tier {

  /** The maximum disk size of this tier in bytes. */
  core.int DiskQuota;

  /** The maximum RAM usage of this tier in bytes. */
  core.int RAM;

  /** This is always sql#tier. */
  core.String kind;

  /** The applicable regions for this tier. Can be us-east1, europe-west1, or asia-east1. */
  core.List<core.String> region;

  /** An identifier for the service tier, for example D1, D2 etc. For related information, see Pricing. */
  core.String tier;

  /** Create new Tier from JSON data */
  Tier.fromJson(core.Map json) {
    if (json.containsKey("DiskQuota")) {
      DiskQuota = (json["DiskQuota"] is core.String) ? core.int.parse(json["DiskQuota"]) : json["DiskQuota"];
    }
    if (json.containsKey("RAM")) {
      RAM = (json["RAM"] is core.String) ? core.int.parse(json["RAM"]) : json["RAM"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("region")) {
      region = json["region"].toList();
    }
    if (json.containsKey("tier")) {
      tier = json["tier"];
    }
  }

  /** Create JSON Object for Tier */
  core.Map toJson() {
    var output = new core.Map();

    if (DiskQuota != null) {
      output["DiskQuota"] = DiskQuota;
    }
    if (RAM != null) {
      output["RAM"] = RAM;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (region != null) {
      output["region"] = region.toList();
    }
    if (tier != null) {
      output["tier"] = tier;
    }

    return output;
  }

  /** Return String representation of Tier */
  core.String toString() => JSON.encode(this.toJson());

}

/** Tiers list response. */
class TiersListResponse {

  /** List of tiers. */
  core.List<Tier> items;

  /** This is always sql#tiersList. */
  core.String kind;

  /** Create new TiersListResponse from JSON data */
  TiersListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Tier.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for TiersListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of TiersListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
