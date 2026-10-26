Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-dlt?download=true
inline.NumInlined: 36
inline.NumDeleted: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@proto_register_dlt.ett = internal global [8 x ptr] [ptr @ett_dlt, ptr @ett_dlt_hdr_type, ptr @ett_dlt_ext_hdr, ptr @ett_dlt_msg_info, ptr @ett_dlt_payload, ptr @ett_dlt_service_app_ids, ptr @ett_dlt_service_app_id, ptr @ett_dlt_service_ctx_id], align 16
@ett_dlt = internal global i32 0, align 4
@ett_dlt_hdr_type = internal global i32 0, align 4
@ett_dlt_ext_hdr = internal global i32 0, align 4
@ett_dlt_msg_info = internal global i32 0, align 4
@ett_dlt_payload = internal global i32 0, align 4
@ett_dlt_service_app_ids = internal global i32 0, align 4
@ett_dlt_service_app_id = internal global i32 0, align 4
@ett_dlt_service_ctx_id = internal global i32 0, align 4
@proto_register_dlt.ei = internal global [6 x { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } }] [{ ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_dlt_unsupported_datatype, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.100, i32 117440512, i32 8388608, ptr @.str.101, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }, { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_dlt_unsupported_length_datatype, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.102, i32 117440512, i32 8388608, ptr @.str.103, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }, { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_dlt_unsupported_string_coding, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.104, i32 117440512, i32 8388608, ptr @.str.105, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }, { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_dlt_unsupported_non_verbose_msg_type, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.106, i32 117440512, i32 8388608, ptr @.str.107, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }, { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_dlt_buffer_too_short, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.108, i32 117440512, i32 8388608, ptr @.str.109, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }, { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_dlt_parsing_error, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.110, i32 117440512, i32 8388608, ptr @.str.111, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }], align 16
@ei_dlt_unsupported_datatype = internal global %struct.expert_field zeroinitializer, align 4
@.str.100 = private unnamed_addr constant [25 x i8] c"dlt.unsupported_datatype\00", align 1
@.str.101 = private unnamed_addr constant [28 x i8] c"DLT: Unsupported Data Type!\00", align 1
@ei_dlt_unsupported_length_datatype = internal global %struct.expert_field zeroinitializer, align 4
@.str.102 = private unnamed_addr constant [32 x i8] c"dlt.unsupported_length_datatype\00", align 1
@.str.103 = private unnamed_addr constant [37 x i8] c"DLT: Unsupported Length of Datatype!\00", align 1
@ei_dlt_unsupported_string_coding = internal global %struct.expert_field zeroinitializer, align 4
@.str.104 = private unnamed_addr constant [30 x i8] c"dlt.unsupported_string_coding\00", align 1
@.str.105 = private unnamed_addr constant [32 x i8] c"DLT: Unsupported String Coding!\00", align 1
@ei_dlt_unsupported_non_verbose_msg_type = internal global %struct.expert_field zeroinitializer, align 4
@.str.106 = private unnamed_addr constant [41 x i8] c"dlt.unsupported_non_verbose_message_type\00", align 1
@.str.107 = private unnamed_addr constant [43 x i8] c"DLT: Unsupported Non-Verbose Message Type!\00", align 1
@ei_dlt_buffer_too_short = internal global %struct.expert_field zeroinitializer, align 4
@.str.108 = private unnamed_addr constant [21 x i8] c"dlt.buffer_too_short\00", align 1
@.str.109 = private unnamed_addr constant [23 x i8] c"DLT: Buffer too short!\00", align 1
@ei_dlt_parsing_error = internal global %struct.expert_field zeroinitializer, align 4
@.str.110 = private unnamed_addr constant [18 x i8] c"dlt.parsing_error\00", align 1
@.str.111 = private unnamed_addr constant [20 x i8] c"DLT: Parsing Error!\00", align 1
@.str.112 = private unnamed_addr constant [31 x i8] c"Diagnostic Log and Trace (DLT)\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"DLT\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"dlt\00", align 1
@proto_dlt = internal unnamed_addr global i32 0, align 4
@.str.115 = private unnamed_addr constant [8 x i8] c"dlt_tcp\00", align 1
@dlt_handle_tcp = internal unnamed_addr global ptr null, align 8
@.str.116 = private unnamed_addr constant [8 x i8] c"dlt_udp\00", align 1
@dlt_handle_udp = internal unnamed_addr global ptr null, align 8
@.str.117 = private unnamed_addr constant [24 x i8] c"DLT Log Message payload\00", align 1
@heur_subdissector_list = internal unnamed_addr global ptr null, align 8
@.str.118 = private unnamed_addr constant [9 x i8] c"udp.port\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"tcp.port\00", align 1
@proto_register_dlt_storage_header.hfs = internal global [4 x %struct.hf_register_info] [%struct.hf_register_info { ptr @hf_dlt_storage_tstamp_s, %struct._header_field_info { ptr @.str.120, ptr @.str.121, i32 7, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_dlt_storage_tstamp_us, %struct._header_field_info { ptr @.str.122, ptr @.str.123, i32 7, i32 1, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_dlt_storage_ecu_name, %struct._header_field_info { ptr @.str.124, ptr @.str.125, i32 27, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_dlt_storage_reserved, %struct._header_field_info { ptr @.str.85, ptr @.str.126, i32 30, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }], align 16
@hf_dlt_storage_tstamp_s = internal global i32 0, align 4
@.str.120 = private unnamed_addr constant [12 x i8] c"Timestamp s\00", align 1
@.str.121 = private unnamed_addr constant [24 x i8] c"dlt.storage.timestamp_s\00", align 1
@hf_dlt_storage_tstamp_us = internal global i32 0, align 4
@.str.122 = private unnamed_addr constant [13 x i8] c"Timestamp us\00", align 1
@.str.123 = private unnamed_addr constant [25 x i8] c"dlt.storage.timestamp_us\00", align 1
@hf_dlt_storage_ecu_name = internal global i32 0, align 4
@.str.124 = private unnamed_addr constant [9 x i8] c"ECU Name\00", align 1
@.str.125 = private unnamed_addr constant [21 x i8] c"dlt.storage.ecu_name\00", align 1
@hf_dlt_storage_reserved = internal global i32 0, align 4
@.str.126 = private unnamed_addr constant [21 x i8] c"dlt.storage.reserved\00", align 1
@proto_register_dlt_storage_header.ett = internal global [1 x ptr] [ptr @ett_dlt_storage], align 8
@ett_dlt_storage = internal global i32 0, align 4
@.str.127 = private unnamed_addr constant [56 x i8] c"Shortened Diagnostic Log and Trace (DLT) Storage Header\00", align 1
@.str.128 = private unnamed_addr constant [19 x i8] c"DLT Storage Header\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"dlt.storage\00", align 1
@proto_dlt_storage_header = internal unnamed_addr global i32 0, align 4
@.str.130 = private unnamed_addr constant [12 x i8] c"dlt_storage\00", align 1
@dlt_handle_storage = internal unnamed_addr global ptr null, align 8
@.str.131 = private unnamed_addr constant [11 x i8] c"wtap_encap\00", align 1
@.str.132 = private unnamed_addr constant [16 x i8] c"DLT Log Message\00", align 1
@.str.133 = private unnamed_addr constant [18 x i8] c"DLT Trace Message\00", align 1
@.str.134 = private unnamed_addr constant [20 x i8] c"DLT Network Message\00", align 1
@.str.135 = private unnamed_addr constant [20 x i8] c"DLT Control Message\00", align 1
@dlt_msg_type = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.132 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.133 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.134 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.135 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.137 = private unnamed_addr constant [26 x i8] c"Loglevel and Trace status\00", align 1
@.str.138 = private unnamed_addr constant [36 x i8] c"Loglevel, Trace status, and Textual\00", align 1
@dlt_service_options = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.137 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.138 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.140 = private unnamed_addr constant [18 x i8] c"Default Log Level\00", align 1
@.str.141 = private unnamed_addr constant [12 x i8] c"No Messages\00", align 1
@.str.142 = private unnamed_addr constant [6 x i8] c"Fatal\00", align 1
@.str.143 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"Warn\00", align 1
@.str.145 = private unnamed_addr constant [5 x i8] c"Info\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"Debug\00", align 1
@dlt_service_log_level = internal constant [9 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 -1, [4 x i8] zeroinitializer, ptr @.str.140 }, { i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.141 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.142 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.143 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.144 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.145 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.146 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.27 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.148 = private unnamed_addr constant [21 x i8] c"Default Trace Status\00", align 1
@.str.149 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@dlt_service_trace_status = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 -1, [4 x i8] zeroinitializer, ptr @.str.148 }, { i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.149 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.150 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@dlt_service_new_status = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.149 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.150 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.153 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.154 = private unnamed_addr constant [14 x i8] c"Not supported\00", align 1
@dlt_service_status = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.153 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.154 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.143 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.156 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.157 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.158 = private unnamed_addr constant [7 x i8] c"%.4f s\00", align 1
@.str.159 = private unnamed_addr constant [8 x i8] c"%s (%d)\00", align 1
@.str.160 = private unnamed_addr constant [26 x i8] c"Unknown Message Type Info\00", align 1
@.str.161 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.162 = private unnamed_addr constant [26 x i8] c" [DLT: Buffer too short!]\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"Variable\00", align 1
@.str.164 = private unnamed_addr constant [12 x i8] c"Function In\00", align 1
@.str.165 = private unnamed_addr constant [13 x i8] c"Function Out\00", align 1
@.str.166 = private unnamed_addr constant [6 x i8] c"State\00", align 1
@.str.167 = private unnamed_addr constant [4 x i8] c"VFB\00", align 1
@.str.168 = private unnamed_addr constant [4 x i8] c"IPC\00", align 1
@.str.169 = private unnamed_addr constant [4 x i8] c"CAN\00", align 1
@.str.170 = private unnamed_addr constant [8 x i8] c"FlexRay\00", align 1
@.str.171 = private unnamed_addr constant [5 x i8] c"MOST\00", align 1
@.str.172 = private unnamed_addr constant [8 x i8] c"Request\00", align 1
@.str.173 = private unnamed_addr constant [9 x i8] c"Response\00", align 1
@.str.174 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@dlt_msg_type_info = internal constant [19 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.142 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.143 }, { i32, [4 x i8], ptr } { i32 48, [4 x i8] zeroinitializer, ptr @.str.144 }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @.str.145 }, { i32, [4 x i8], ptr } { i32 80, [4 x i8] zeroinitializer, ptr @.str.146 }, { i32, [4 x i8], ptr } { i32 96, [4 x i8] zeroinitializer, ptr @.str.27 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.163 }, { i32, [4 x i8], ptr } { i32 34, [4 x i8] zeroinitializer, ptr @.str.164 }, { i32, [4 x i8], ptr } { i32 50, [4 x i8] zeroinitializer, ptr @.str.165 }, { i32, [4 x i8], ptr } { i32 66, [4 x i8] zeroinitializer, ptr @.str.166 }, { i32, [4 x i8], ptr } { i32 82, [4 x i8] zeroinitializer, ptr @.str.167 }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @.str.168 }, { i32, [4 x i8], ptr } { i32 36, [4 x i8] zeroinitializer, ptr @.str.169 }, { i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @.str.170 }, { i32, [4 x i8], ptr } { i32 70, [4 x i8] zeroinitializer, ptr @.str.171 }, { i32, [4 x i8], ptr } { i32 22, [4 x i8] zeroinitializer, ptr @.str.172 }, { i32, [4 x i8], ptr } { i32 38, [4 x i8] zeroinitializer, ptr @.str.173 }, { i32, [4 x i8], ptr } { i32 54, [4 x i8] zeroinitializer, ptr @.str.174 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.176 = private unnamed_addr constant [42 x i8] c" Unknown Non-Verbose Message (ID: 0x%02x)\00", align 1
@.str.177 = private unnamed_addr constant [17 x i8] c" %s (ID: 0x%02x)\00", align 1
@.str.178 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.179 = private unnamed_addr constant [14 x i8] c"Set Log Level\00", align 1
@.str.180 = private unnamed_addr constant [17 x i8] c"Set Trace Status\00", align 1
@.str.181 = private unnamed_addr constant [13 x i8] c"Get Log Info\00", align 1
@.str.182 = private unnamed_addr constant [22 x i8] c"Get Default Log Level\00", align 1
@.str.183 = private unnamed_addr constant [20 x i8] c"Store Configuration\00", align 1
@.str.184 = private unnamed_addr constant [24 x i8] c"Restore Factory Default\00", align 1
@.str.185 = private unnamed_addr constant [39 x i8] c"Set Com Interface Status (Deprecated!)\00", align 1
@.str.186 = private unnamed_addr constant [46 x i8] c"Set Com Interface Max Bandwidth (Deprecated!)\00", align 1
@.str.187 = private unnamed_addr constant [31 x i8] c"Set Verbose Mode (Deprecated!)\00", align 1
@.str.188 = private unnamed_addr constant [22 x i8] c"Set Message Filtering\00", align 1
@.str.189 = private unnamed_addr constant [33 x i8] c"Set Timing Packets (Deprecated!)\00", align 1
@.str.190 = private unnamed_addr constant [29 x i8] c"Get Local Time (Deprecated!)\00", align 1
@.str.191 = private unnamed_addr constant [25 x i8] c"Use ECU ID (Deprecated!)\00", align 1
@.str.192 = private unnamed_addr constant [29 x i8] c"Use Session ID (Deprecated!)\00", align 1
@.str.193 = private unnamed_addr constant [28 x i8] c"Use Timestamp (Deprecated!)\00", align 1
@.str.194 = private unnamed_addr constant [34 x i8] c"Use Extended Header (Deprecated!)\00", align 1
@.str.195 = private unnamed_addr constant [22 x i8] c"Set Default Log Level\00", align 1
@.str.196 = private unnamed_addr constant [25 x i8] c"Set Default Trace Status\00", align 1
@.str.197 = private unnamed_addr constant [21 x i8] c"Get Software Version\00", align 1
@.str.198 = private unnamed_addr constant [38 x i8] c"Message Buffer Overflow (Deprecated!)\00", align 1
@.str.199 = private unnamed_addr constant [25 x i8] c"Get Default trace Status\00", align 1
@.str.200 = private unnamed_addr constant [39 x i8] c"Get Com Interface Status (Deprecated!)\00", align 1
@.str.201 = private unnamed_addr constant [22 x i8] c"Get Log Channel Names\00", align 1
@.str.202 = private unnamed_addr constant [46 x i8] c"Get Com Interface Max Bandwidth (Deprecated!)\00", align 1
@.str.203 = private unnamed_addr constant [38 x i8] c"Get Verbose Mode Status (Deprecated!)\00", align 1
@.str.204 = private unnamed_addr constant [43 x i8] c"Get Message Filtering Status (Deprecated!)\00", align 1
@.str.205 = private unnamed_addr constant [28 x i8] c"Get Use ECUID (Deprecated!)\00", align 1
@.str.206 = private unnamed_addr constant [33 x i8] c"Get Use Session ID (Deprecated!)\00", align 1
@.str.207 = private unnamed_addr constant [32 x i8] c"Get Use Timestamp (Deprecated!)\00", align 1
@.str.208 = private unnamed_addr constant [38 x i8] c"Get Use Extended Header (Deprecated!)\00", align 1
@.str.209 = private unnamed_addr constant [17 x i8] c"Get Trace Status\00", align 1
@.str.210 = private unnamed_addr constant [27 x i8] c"Set Log Channel Assignment\00", align 1
@.str.211 = private unnamed_addr constant [26 x i8] c"Set Log Channel Threshold\00", align 1
@.str.212 = private unnamed_addr constant [26 x i8] c"Get log Channel Threshold\00", align 1
@.str.213 = private unnamed_addr constant [29 x i8] c"Buffer Overflow Notification\00", align 1
@.str.214 = private unnamed_addr constant [13 x i8] c"User Service\00", align 1
@.str.215 = private unnamed_addr constant [31 x i8] c"Unregister Context (undefined)\00", align 1
@.str.216 = private unnamed_addr constant [28 x i8] c"Connection Info (undefined)\00", align 1
@.str.217 = private unnamed_addr constant [21 x i8] c"Timezone (undefined)\00", align 1
@.str.218 = private unnamed_addr constant [19 x i8] c"Marker (undefined)\00", align 1
@.str.219 = private unnamed_addr constant [32 x i8] c"Offline Log Storage (undefined)\00", align 1
@.str.220 = private unnamed_addr constant [33 x i8] c"Passive Mode Connect (undefined)\00", align 1
@.str.221 = private unnamed_addr constant [43 x i8] c"Passive Mode Connection Status (undefined)\00", align 1
@.str.222 = private unnamed_addr constant [30 x i8] c"Set All Log Level (undefined)\00", align 1
@.str.223 = private unnamed_addr constant [33 x i8] c"Set All Trace Status (undefined)\00", align 1
@dlt_service = internal constant [46 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.179 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.180 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.181 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.182 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.183 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.184 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.185 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.186 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.187 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.188 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.189 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.190 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.191 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.192 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.193 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.194 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.195 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.196 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.197 }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @.str.198 }, { i32, [4 x i8], ptr } { i32 21, [4 x i8] zeroinitializer, ptr @.str.199 }, { i32, [4 x i8], ptr } { i32 22, [4 x i8] zeroinitializer, ptr @.str.200 }, { i32, [4 x i8], ptr } { i32 23, [4 x i8] zeroinitializer, ptr @.str.201 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.202 }, { i32, [4 x i8], ptr } { i32 25, [4 x i8] zeroinitializer, ptr @.str.203 }, { i32, [4 x i8], ptr } { i32 26, [4 x i8] zeroinitializer, ptr @.str.204 }, { i32, [4 x i8], ptr } { i32 27, [4 x i8] zeroinitializer, ptr @.str.205 }, { i32, [4 x i8], ptr } { i32 28, [4 x i8] zeroinitializer, ptr @.str.206 }, { i32, [4 x i8], ptr } { i32 29, [4 x i8] zeroinitializer, ptr @.str.207 }, { i32, [4 x i8], ptr } { i32 30, [4 x i8] zeroinitializer, ptr @.str.208 }, { i32, [4 x i8], ptr } { i32 31, [4 x i8] zeroinitializer, ptr @.str.209 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.210 }, { i32, [4 x i8], ptr } { i32 33, [4 x i8] zeroinitializer, ptr @.str.211 }, { i32, [4 x i8], ptr } { i32 34, [4 x i8] zeroinitializer, ptr @.str.212 }, { i32, [4 x i8], ptr } { i32 35, [4 x i8] zeroinitializer, ptr @.str.213 }, { i32, [4 x i8], ptr } { i32 3840, [4 x i8] zeroinitializer, ptr @.str.214 }, { i32, [4 x i8], ptr } { i32 3841, [4 x i8] zeroinitializer, ptr @.str.215 }, { i32, [4 x i8], ptr } { i32 3842, [4 x i8] zeroinitializer, ptr @.str.216 }, { i32, [4 x i8], ptr } { i32 3843, [4 x i8] zeroinitializer, ptr @.str.217 }, { i32, [4 x i8], ptr } { i32 3844, [4 x i8] zeroinitializer, ptr @.str.218 }, { i32, [4 x i8], ptr } { i32 3845, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 3846, [4 x i8] zeroinitializer, ptr @.str.220 }, { i32, [4 x i8], ptr } { i32 3847, [4 x i8] zeroinitializer, ptr @.str.221 }, { i32, [4 x i8], ptr } { i32 3848, [4 x i8] zeroinitializer, ptr @.str.222 }, { i32, [4 x i8], ptr } { i32 3849, [4 x i8] zeroinitializer, ptr @.str.223 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@heur_dtbl_entry = internal global ptr null, align 8
@.str.225 = private unnamed_addr constant [46 x i8] c" [DLT: Unsupported Non-Verbose Message Type!]\00", align 1
@.str.226 = private unnamed_addr constant [23 x i8] c" [DLT: Parsing Error!]\00", align 1
@.str.227 = private unnamed_addr constant [7 x i8] c" false\00", align 1
@.str.228 = private unnamed_addr constant [6 x i8] c" true\00", align 1
@.str.229 = private unnamed_addr constant [11 x i8] c" undefined\00", align 1
@.str.230 = private unnamed_addr constant [12 x i8] c" [name: %s]\00", align 1
@.str.231 = private unnamed_addr constant [12 x i8] c" [unit: %s]\00", align 1
@.str.232 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.233 = private unnamed_addr constant [5 x i8] c" %ld\00", align 1
@.str.234 = private unnamed_addr constant [40 x i8] c" [DLT: Unsupported Length of Datatype!]\00", align 1
@.str.235 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.236 = private unnamed_addr constant [5 x i8] c" %lu\00", align 1
@.str.237 = private unnamed_addr constant [4 x i8] c" %f\00", align 1
@.str.238 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.239 = private unnamed_addr constant [35 x i8] c" [DLT: Unsupported String Coding!]\00", align 1
@.str.240 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.241 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.242 = private unnamed_addr constant [31 x i8] c" [DLT: Unsupported Data Type!]\00", align 1
@switch.table.dissect_dlt = private unnamed_addr constant [5 x i8] c"\01\02\04\08\10", align 4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read) uwtable
define hidden i32 @dlt_ecu_id_to_int32(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #8
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.e = tail call i32 @llvm.umin.i32(i32 %i.c, i32 4)
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.f = icmp ult i32 %i.c, 4
  br i1 %i.f, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.017 = phi i32 [ 32, %.lr.ph.preheader.new ], [ %i.r, %.lr.ph ] ; 4 uses
  %.01215 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.w, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %1 = add nsw i32 %.017, -8
  %i.g = getelementptr i8, ptr %0, i64 %indvars.iv
  %i.h = load i8, ptr %i.g, align 1
  %i.i = sext i8 %i.h to i32
  %2 = shl i32 %i.i, %1
  %3 = or i32 %2, %.01215
  %i.j = add nsw i32 %.017, -16
  %i.k = getelementptr i8, ptr %0, i64 %indvars.iv
  %i.l = getelementptr i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = sext i8 %i.m to i32
  %i.o = shl i32 %i.n, %i.j
  %4 = or i32 %i.o, %3
  %5 = add nsw i32 %.017, -24
  %6 = getelementptr i8, ptr %0, i64 %indvars.iv
  %7 = getelementptr i8, ptr %6, i64 2
  %8 = load i8, ptr %7, align 1
  %9 = sext i8 %8 to i32
  %i.p = shl i32 %9, %5
  %i.q = or i32 %i.p, %4
  %i.r = add nsw i32 %.017, -32                   ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 %indvars.iv
  %i.t = getelementptr i8, ptr %i.s, i64 3
  %i.u = load i8, ptr %i.t, align 1
  %i.v = sext i8 %i.u to i32
  %i.w = or i32 %i.q, %i.v                        ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !7

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %.017.epil.init = phi i32 [ 32, %.lr.ph.preheader ], [ %i.r, %.loopexit.loopexit.unr-lcssa ]
  %.01215.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.w, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod20 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod20)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.017.epil = phi i32 [ %.017.epil.init, %.lr.ph.epil.preheader ], [ %i.x, %.lr.ph.epil ]
  %.01215.epil = phi i32 [ %.01215.epil.init, %.lr.ph.epil.preheader ], [ %i.ac, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.x = add nsw i32 %.017.epil, -8               ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 %indvars.iv.epil
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = sext i8 %i.z to i32
  %i.ab = shl i32 %i.aa, %i.x
  %i.ac = or i32 %i.ab, %.01215.epil              ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !8

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader, %bb.a
  %.013 = phi i32 [ 0, %bb.a ], [ 0, %.preheader ], [ %i.w, %.loopexit.loopexit.unr-lcssa ], [ %i.ac, %.lr.ph.epil ]
  ret i32 %.013
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_dlt() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef @.str.112, ptr noundef @.str.113, ptr noundef @.str.114) ; 2 uses
  store i32 %i.a, ptr @proto_dlt, align 4
  %i.b = tail call ptr @register_dissector(ptr noundef @.str.115, ptr noundef @dissect_dlt_tcp, i32 noundef %i.a)
  store ptr %i.b, ptr @dlt_handle_tcp, align 8
  %i.c = load i32, ptr @proto_dlt, align 4
  %i.d = tail call ptr @register_dissector(ptr noundef @.str.116, ptr noundef @dissect_dlt_udp, i32 noundef %i.c)
  store ptr %i.d, ptr @dlt_handle_udp, align 8
  tail call void @proto_register_subtree_array(ptr noundef @proto_register_dlt.ett, i32 noundef 8)
  %i.e = load i32, ptr @proto_dlt, align 4
  tail call void @proto_register_field_array(i32 noundef %i.e, ptr noundef @proto_register_dlt.hf_dlt, i32 noundef 53)
  %i.f = load i32, ptr @proto_dlt, align 4
  %i.g = tail call ptr @expert_register_protocol(i32 noundef %i.f)
  tail call void @expert_register_field_array(ptr noundef %i.g, ptr noundef @proto_register_dlt.ei, i32 noundef 6)
  %i.h = load i32, ptr @proto_dlt, align 4
  %i.i = tail call ptr @register_heur_dissector_list_with_description(ptr noundef @.str.114, ptr noundef @.str.117, i32 noundef %i.h)
  store ptr %i.i, ptr @heur_subdissector_list, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_dlt_tcp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #3 {
bb.a:
  tail call void @tcp_dissect_pdus(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true, i32 noundef 4, ptr noundef @get_dlt_message_len, ptr noundef @dissect_dlt_msg, ptr noundef %3)
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_dlt_udp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #3 {
bb.a:
  %i.a = tail call i32 @udp_dissect_pdus(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 4, ptr noundef null, ptr noundef @get_dlt_message_len, ptr noundef @dissect_dlt_msg, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @register_heur_dissector_list_with_description(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_dlt() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @dlt_handle_udp, align 8
  tail call void @dissector_add_uint_with_preference(ptr noundef @.str.118, i32 noundef 0, ptr noundef %i.a)
  %i.b = load ptr, ptr @dlt_handle_tcp, align 8
  tail call void @dissector_add_uint_with_preference(ptr noundef @.str.119, i32 noundef 0, ptr noundef %i.b)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint_with_preference(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_dlt_storage_header() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef @.str.127, ptr noundef @.str.128, ptr noundef @.str.129)
  store i32 %i.a, ptr @proto_dlt_storage_header, align 4
  tail call void @proto_register_subtree_array(ptr noundef @proto_register_dlt_storage_header.ett, i32 noundef 1)
  %i.b = load i32, ptr @proto_dlt, align 4
  tail call void @proto_register_field_array(i32 noundef %i.b, ptr noundef @proto_register_dlt_storage_header.hfs, i32 noundef 4)
  %i.c = load i32, ptr @proto_dlt_storage_header, align 4
  %i.d = tail call ptr @register_dissector(ptr noundef @.str.130, ptr noundef @dissect_dlt_storage_header, i32 noundef %i.c)
  store ptr %i.d, ptr @dlt_handle_storage, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_dlt_storage_header(ptr noundef %0, ptr noundef initializes((208, 232)) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #3 {
bb.a:
  %i.a = load i32, ptr @proto_dlt_storage_header, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef 0, i32 noundef 16, i32 noundef 0)
  %i.c = load i32, ptr @ett_dlt_storage, align 4
  %i.d = tail call ptr @proto_item_add_subtree(ptr noundef %i.b, i32 noundef %i.c) ; 4 uses
  %i.e = load i32, ptr @hf_dlt_storage_tstamp_s, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.e, ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.g = load i32, ptr @hf_dlt_storage_tstamp_us, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.g, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.i = getelementptr i8, ptr %1, i64 208
  %i.j = tail call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 8, i32 noundef 4)
  store i32 7, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %1, i64 212
  store i32 4, ptr %i.k, align 4
  %i.l = getelementptr i8, ptr %1, i64 216
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %1, i64 224
  store ptr null, ptr %i.m, align 8
  %i.n = load i32, ptr @hf_dlt_storage_ecu_name, align 4
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.n, ptr noundef %0, i32 noundef 8, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.p = load i32, ptr @hf_dlt_storage_reserved, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %i.d, i32 noundef %i.p, ptr noundef %0, i32 noundef 13, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.r = tail call fastcc i32 @dissect_dlt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 16)
  %i.s = add i32 %i.r, 16
  ret i32 %i.s
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_dlt_storage_header() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @dlt_handle_storage, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.131, i32 noundef 218, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @tcp_dissect_pdus(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 65536) i32 @get_dlt_message_len(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3) #3 {
bb.a:
  %i.a = add i32 %2, 2
  %i.b = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %1, i32 noundef %i.a)
  %i.c = zext i16 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_dlt_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #3 {
bb.a:
  %i.a = tail call fastcc i32 @dissect_dlt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #4

end_hunk_0
