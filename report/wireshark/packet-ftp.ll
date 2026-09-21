Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ftp?download=true
inline.NumInlined: 41
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.83 = private unnamed_addr constant [13 x i8] c"Setup method\00", align 1
@.str.84 = private unnamed_addr constant [22 x i8] c"ftp-data.setup-method\00", align 1
@.str.85 = private unnamed_addr constant [40 x i8] c"Method used to set up data conversation\00", align 1
@hf_ftp_data_command = internal global i32 0, align 4
@.str.86 = private unnamed_addr constant [17 x i8] c"ftp-data.command\00", align 1
@.str.87 = private unnamed_addr constant [38 x i8] c"Command that this data stream answers\00", align 1
@hf_ftp_data_command_frame = internal global i32 0, align 4
@.str.88 = private unnamed_addr constant [23 x i8] c"ftp-data.command-frame\00", align 1
@.str.89 = private unnamed_addr constant [37 x i8] c"Where command for this data was seen\00", align 1
@hf_ftp_data_current_working_directory = internal global i32 0, align 4
@.str.90 = private unnamed_addr constant [35 x i8] c"ftp-data.current-working-directory\00", align 1
@.str.91 = private unnamed_addr constant [45 x i8] c"Current working directory at time of command\00", align 1
@proto_register_ftp.ei = internal global [4 x { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } }] [{ ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_ftp_eprt_args_invalid, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.92, i32 117440512, i32 6291456, ptr @.str.93, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }, { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_ftp_epsv_args_invalid, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.94, i32 117440512, i32 6291456, ptr @.str.95, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }, { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_ftp_response_code_invalid, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.96, i32 117440512, i32 8388608, ptr @.str.97, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }, { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_ftp_pwd_response_invalid, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.98, i32 117440512, i32 8388608, ptr @.str.99, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }], align 16
@ei_ftp_eprt_args_invalid = internal global %struct.expert_field zeroinitializer, align 4
@.str.92 = private unnamed_addr constant [22 x i8] c"ftp.eprt.args_invalid\00", align 1
@.str.93 = private unnamed_addr constant [60 x i8] c"EPRT arguments must have the form: |<family>|<addr>|<port>|\00", align 1
@ei_ftp_epsv_args_invalid = internal global %struct.expert_field zeroinitializer, align 4
@.str.94 = private unnamed_addr constant [22 x i8] c"ftp.epsv.args_invalid\00", align 1
@.str.95 = private unnamed_addr constant [47 x i8] c"EPSV arguments must have the form (|||<port>|)\00", align 1
@ei_ftp_response_code_invalid = internal global %struct.expert_field zeroinitializer, align 4
@.str.96 = private unnamed_addr constant [26 x i8] c"ftp.response.code.invalid\00", align 1
@.str.97 = private unnamed_addr constant [22 x i8] c"Invalid response code\00", align 1
@ei_ftp_pwd_response_invalid = internal global %struct.expert_field zeroinitializer, align 4
@.str.98 = private unnamed_addr constant [25 x i8] c"ftp.response.pwd.invalid\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c"Invalid PWD response\00", align 1
@.str.100 = private unnamed_addr constant [29 x i8] c"File Transfer Protocol (FTP)\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"FTP\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"ftp\00", align 1
@proto_ftp = internal unnamed_addr global i32 0, align 4
@ftp_handle = internal unnamed_addr global ptr null, align 8
@.str.103 = private unnamed_addr constant [9 x i8] c"FTP Data\00", align 1
@.str.104 = private unnamed_addr constant [9 x i8] c"FTP-DATA\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"ftp-data\00", align 1
@proto_ftp_data = internal unnamed_addr global i32 0, align 4
@ftpdata_handle = internal unnamed_addr global ptr null, align 8
@.str.106 = private unnamed_addr constant [12 x i8] c"credentials\00", align 1
@credentials_tap = internal unnamed_addr global i32 0, align 4
@.str.107 = private unnamed_addr constant [15 x i8] c"export.maxsize\00", align 1
@.str.108 = private unnamed_addr constant [63 x i8] c"Max file size (in MB) for export objects (use 0 for unlimited)\00", align 1
@.str.109 = private unnamed_addr constant [76 x i8] c"Maximum file size (in megabytes) for export objects  (use 0 for unlimited).\00", align 1
@pref_export_maxsize = internal global i32 0, align 4
@ftp_eo_tap = internal unnamed_addr global i32 0, align 4
@.str.110 = private unnamed_addr constant [9 x i8] c"tcp.port\00", align 1
@.str.111 = private unnamed_addr constant [21 x i8] c"acdr.tls_application\00", align 1
@.str.112 = private unnamed_addr constant [16 x i8] c"data-text-lines\00", align 1
@data_text_lines_handle = internal unnamed_addr global ptr null, align 8
@.str.113 = private unnamed_addr constant [4 x i8] c"tls\00", align 1
@tls_handle = internal unnamed_addr global ptr null, align 8
@.str.114 = private unnamed_addr constant [15 x i8] c"response_table\00", align 1
@.str.115 = private unnamed_addr constant [21 x i8] c"Restart marker reply\00", align 1
@.str.116 = private unnamed_addr constant [29 x i8] c"Service ready in nnn minutes\00", align 1
@.str.117 = private unnamed_addr constant [48 x i8] c"Data connection already open; transfer starting\00", align 1
@.str.118 = private unnamed_addr constant [48 x i8] c"File status okay; about to open data connection\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"Command okay\00", align 1
@.str.120 = private unnamed_addr constant [50 x i8] c"Command not implemented, superfluous at this site\00", align 1
@.str.121 = private unnamed_addr constant [36 x i8] c"System status, or system help reply\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"Directory status\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"File status\00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"Help message\00", align 1
@.str.125 = private unnamed_addr constant [17 x i8] c"NAME system type\00", align 1
@.str.126 = private unnamed_addr constant [27 x i8] c"Service ready for new user\00", align 1
@.str.127 = private unnamed_addr constant [35 x i8] c"Service closing control connection\00", align 1
@.str.128 = private unnamed_addr constant [46 x i8] c"Data connection open; no transfer in progress\00", align 1
@.str.129 = private unnamed_addr constant [24 x i8] c"Closing data connection\00", align 1
@.str.130 = private unnamed_addr constant [22 x i8] c"Entering Passive Mode\00", align 1
@.str.131 = private unnamed_addr constant [31 x i8] c"Entering Extended Passive Mode\00", align 1
@.str.132 = private unnamed_addr constant [24 x i8] c"User logged in, proceed\00", align 1
@.str.133 = private unnamed_addr constant [53 x i8] c"User logged in, authorized by security data exchange\00", align 1
@.str.134 = private unnamed_addr constant [32 x i8] c"Security data exchange complete\00", align 1
@.str.135 = private unnamed_addr constant [46 x i8] c"Security data exchange completed successfully\00", align 1
@.str.136 = private unnamed_addr constant [38 x i8] c"Requested file action okay, completed\00", align 1
@.str.137 = private unnamed_addr constant [17 x i8] c"PATHNAME created\00", align 1
@.str.138 = private unnamed_addr constant [30 x i8] c"User name okay, need password\00", align 1
@.str.139 = private unnamed_addr constant [23 x i8] c"Need account for login\00", align 1
@.str.140 = private unnamed_addr constant [35 x i8] c"Requested security mechanism is ok\00", align 1
@.str.141 = private unnamed_addr constant [46 x i8] c"Security data is acceptable, more is required\00", align 1
@.str.142 = private unnamed_addr constant [47 x i8] c"Username okay, need password. Challenge is ...\00", align 1
@.str.143 = private unnamed_addr constant [50 x i8] c"Requested file action pending further information\00", align 1
@.str.144 = private unnamed_addr constant [50 x i8] c"Service not available, closing control connection\00", align 1
@.str.145 = private unnamed_addr constant [27 x i8] c"Can't open data connection\00", align 1
@.str.146 = private unnamed_addr constant [36 x i8] c"Connection closed; transfer aborted\00", align 1
@.str.147 = private unnamed_addr constant [51 x i8] c"Need some unavailable resource to process security\00", align 1
@.str.148 = private unnamed_addr constant [32 x i8] c"Requested file action not taken\00", align 1
@.str.149 = private unnamed_addr constant [52 x i8] c"Requested action aborted: local error in processing\00", align 1
@.str.150 = private unnamed_addr constant [65 x i8] c"Requested action not taken. Insufficient storage space in system\00", align 1
@.str.151 = private unnamed_addr constant [35 x i8] c"Syntax error, command unrecognized\00", align 1
@.str.152 = private unnamed_addr constant [40 x i8] c"Syntax error in parameters or arguments\00", align 1
@.str.153 = private unnamed_addr constant [24 x i8] c"Command not implemented\00", align 1
@.str.154 = private unnamed_addr constant [25 x i8] c"Bad sequence of commands\00", align 1
@.str.155 = private unnamed_addr constant [43 x i8] c"Command not implemented for that parameter\00", align 1
@.str.156 = private unnamed_addr constant [31 x i8] c"Network protocol not supported\00", align 1
@.str.157 = private unnamed_addr constant [14 x i8] c"Not logged in\00", align 1
@.str.158 = private unnamed_addr constant [31 x i8] c"Need account for storing files\00", align 1
@.str.159 = private unnamed_addr constant [51 x i8] c"Command protection level denied for policy reasons\00", align 1
@.str.160 = private unnamed_addr constant [34 x i8] c"Request denied for policy reasons\00", align 1
@.str.161 = private unnamed_addr constant [44 x i8] c"Failed security check (hash, sequence, etc)\00", align 1
@.str.162 = private unnamed_addr constant [48 x i8] c"Requested PROT level not supported by mechanism\00", align 1
@.str.163 = private unnamed_addr constant [61 x i8] c"Command protection level not supported by security mechanism\00", align 1
@.str.164 = private unnamed_addr constant [45 x i8] c"Requested action not taken: File unavailable\00", align 1
@.str.165 = private unnamed_addr constant [44 x i8] c"Requested action aborted: page type unknown\00", align 1
@.str.166 = private unnamed_addr constant [59 x i8] c"Requested file action aborted: Exceeded storage allocation\00", align 1
@.str.167 = private unnamed_addr constant [50 x i8] c"Requested action not taken: File name not allowed\00", align 1
@.str.168 = private unnamed_addr constant [26 x i8] c"Integrity protected reply\00", align 1
@.str.169 = private unnamed_addr constant [46 x i8] c"Confidentiality and integrity protected reply\00", align 1
@.str.170 = private unnamed_addr constant [32 x i8] c"Confidentiality protected reply\00", align 1
@response_table = internal constant [57 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 110, [4 x i8] zeroinitializer, ptr @.str.115 }, { i32, [4 x i8], ptr } { i32 120, [4 x i8] zeroinitializer, ptr @.str.116 }, { i32, [4 x i8], ptr } { i32 125, [4 x i8] zeroinitializer, ptr @.str.117 }, { i32, [4 x i8], ptr } { i32 150, [4 x i8] zeroinitializer, ptr @.str.118 }, { i32, [4 x i8], ptr } { i32 200, [4 x i8] zeroinitializer, ptr @.str.119 }, { i32, [4 x i8], ptr } { i32 202, [4 x i8] zeroinitializer, ptr @.str.120 }, { i32, [4 x i8], ptr } { i32 211, [4 x i8] zeroinitializer, ptr @.str.121 }, { i32, [4 x i8], ptr } { i32 212, [4 x i8] zeroinitializer, ptr @.str.122 }, { i32, [4 x i8], ptr } { i32 213, [4 x i8] zeroinitializer, ptr @.str.123 }, { i32, [4 x i8], ptr } { i32 214, [4 x i8] zeroinitializer, ptr @.str.124 }, { i32, [4 x i8], ptr } { i32 215, [4 x i8] zeroinitializer, ptr @.str.125 }, { i32, [4 x i8], ptr } { i32 220, [4 x i8] zeroinitializer, ptr @.str.126 }, { i32, [4 x i8], ptr } { i32 221, [4 x i8] zeroinitializer, ptr @.str.127 }, { i32, [4 x i8], ptr } { i32 225, [4 x i8] zeroinitializer, ptr @.str.128 }, { i32, [4 x i8], ptr } { i32 226, [4 x i8] zeroinitializer, ptr @.str.129 }, { i32, [4 x i8], ptr } { i32 227, [4 x i8] zeroinitializer, ptr @.str.130 }, { i32, [4 x i8], ptr } { i32 229, [4 x i8] zeroinitializer, ptr @.str.131 }, { i32, [4 x i8], ptr } { i32 230, [4 x i8] zeroinitializer, ptr @.str.132 }, { i32, [4 x i8], ptr } { i32 232, [4 x i8] zeroinitializer, ptr @.str.133 }, { i32, [4 x i8], ptr } { i32 234, [4 x i8] zeroinitializer, ptr @.str.134 }, { i32, [4 x i8], ptr } { i32 235, [4 x i8] zeroinitializer, ptr @.str.135 }, { i32, [4 x i8], ptr } { i32 250, [4 x i8] zeroinitializer, ptr @.str.136 }, { i32, [4 x i8], ptr } { i32 257, [4 x i8] zeroinitializer, ptr @.str.137 }, { i32, [4 x i8], ptr } { i32 331, [4 x i8] zeroinitializer, ptr @.str.138 }, { i32, [4 x i8], ptr } { i32 332, [4 x i8] zeroinitializer, ptr @.str.139 }, { i32, [4 x i8], ptr } { i32 334, [4 x i8] zeroinitializer, ptr @.str.140 }, { i32, [4 x i8], ptr } { i32 335, [4 x i8] zeroinitializer, ptr @.str.141 }, { i32, [4 x i8], ptr } { i32 336, [4 x i8] zeroinitializer, ptr @.str.142 }, { i32, [4 x i8], ptr } { i32 350, [4 x i8] zeroinitializer, ptr @.str.143 }, { i32, [4 x i8], ptr } { i32 421, [4 x i8] zeroinitializer, ptr @.str.144 }, { i32, [4 x i8], ptr } { i32 425, [4 x i8] zeroinitializer, ptr @.str.145 }, { i32, [4 x i8], ptr } { i32 426, [4 x i8] zeroinitializer, ptr @.str.146 }, { i32, [4 x i8], ptr } { i32 431, [4 x i8] zeroinitializer, ptr @.str.147 }, { i32, [4 x i8], ptr } { i32 450, [4 x i8] zeroinitializer, ptr @.str.148 }, { i32, [4 x i8], ptr } { i32 451, [4 x i8] zeroinitializer, ptr @.str.149 }, { i32, [4 x i8], ptr } { i32 452, [4 x i8] zeroinitializer, ptr @.str.150 }, { i32, [4 x i8], ptr } { i32 500, [4 x i8] zeroinitializer, ptr @.str.151 }, { i32, [4 x i8], ptr } { i32 501, [4 x i8] zeroinitializer, ptr @.str.152 }, { i32, [4 x i8], ptr } { i32 502, [4 x i8] zeroinitializer, ptr @.str.153 }, { i32, [4 x i8], ptr } { i32 503, [4 x i8] zeroinitializer, ptr @.str.154 }, { i32, [4 x i8], ptr } { i32 504, [4 x i8] zeroinitializer, ptr @.str.155 }, { i32, [4 x i8], ptr } { i32 522, [4 x i8] zeroinitializer, ptr @.str.156 }, { i32, [4 x i8], ptr } { i32 530, [4 x i8] zeroinitializer, ptr @.str.157 }, { i32, [4 x i8], ptr } { i32 532, [4 x i8] zeroinitializer, ptr @.str.158 }, { i32, [4 x i8], ptr } { i32 533, [4 x i8] zeroinitializer, ptr @.str.159 }, { i32, [4 x i8], ptr } { i32 534, [4 x i8] zeroinitializer, ptr @.str.160 }, { i32, [4 x i8], ptr } { i32 535, [4 x i8] zeroinitializer, ptr @.str.161 }, { i32, [4 x i8], ptr } { i32 536, [4 x i8] zeroinitializer, ptr @.str.162 }, { i32, [4 x i8], ptr } { i32 537, [4 x i8] zeroinitializer, ptr @.str.163 }, { i32, [4 x i8], ptr } { i32 550, [4 x i8] zeroinitializer, ptr @.str.164 }, { i32, [4 x i8], ptr } { i32 551, [4 x i8] zeroinitializer, ptr @.str.165 }, { i32, [4 x i8], ptr } { i32 552, [4 x i8] zeroinitializer, ptr @.str.166 }, { i32, [4 x i8], ptr } { i32 553, [4 x i8] zeroinitializer, ptr @.str.167 }, { i32, [4 x i8], ptr } { i32 631, [4 x i8] zeroinitializer, ptr @.str.168 }, { i32, [4 x i8], ptr } { i32 632, [4 x i8] zeroinitializer, ptr @.str.169 }, { i32, [4 x i8], ptr } { i32 633, [4 x i8] zeroinitializer, ptr @.str.170 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.172 = private unnamed_addr constant [5 x i8] c"IPv4\00", align 1
@.str.173 = private unnamed_addr constant [5 x i8] c"IPv6\00", align 1
@eprt_af_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.172 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.173 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.175 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.176 = private unnamed_addr constant [5 x i8] c"PORT\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"EPRT\00", align 1
@.str.178 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.179 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str.180 = private unnamed_addr constant [23 x i8] c"Username in packet: %u\00", align 1
@.str.181 = private unnamed_addr constant [9 x i8] c"AUTH TLS\00", align 1
@ftp_command_to_data_hash = internal unnamed_addr global ptr null, align 8
@.str.182 = private unnamed_addr constant [5 x i8] c"CWD \00", align 1
@.str.183 = private unnamed_addr constant [5 x i8] c"CDUP\00", align 1
@.str.184 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.185 = private unnamed_addr constant [5 x i8] c"PASV\00", align 1
@.str.186 = private unnamed_addr constant [6 x i8] c"EPASV\00", align 1
@.str.187 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.188 = private unnamed_addr constant [5 x i8] c"RETR\00", align 1
@.str.189 = private unnamed_addr constant [5 x i8] c"STOR\00", align 1
@.str.190 = private unnamed_addr constant [5 x i8] c"STOU\00", align 1
@.str.191 = private unnamed_addr constant [5 x i8] c"APPE\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@.str.193 = private unnamed_addr constant [5 x i8] c"NLST\00", align 1
@.str.194 = private unnamed_addr constant [5 x i8] c"MLSD\00", align 1
@.str.195 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.196 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@g_ascii_table = external local_unnamed_addr constant ptr, align 8
@.str.198 = private unnamed_addr constant [18 x i8] c"%d,%d,%d,%d,%d,%d\00", align 1
@.str.199 = private unnamed_addr constant [19 x i8] c"0123456789abcdef.:\00", align 1
@.str.200 = private unnamed_addr constant [19 x i8] c"FTP Data: %u bytes\00", align 1
@.str.201 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.202 = private unnamed_addr constant [17 x i8] c" (%u bytes data)\00", align 1
@command_packet_to_eo_row = internal unnamed_addr global ptr null, align 8
@.str.203 = private unnamed_addr constant [9 x i8] c"FTP file\00", align 1
@.str.204 = private unnamed_addr constant [10 x i8] c"(MISSING)\00", align 1
@eo_row_count = internal unnamed_addr global i32 0, align 4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_ftp() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102) ; 2 uses
  store i32 %i.a, ptr @proto_ftp, align 4
  %i.b = tail call ptr @register_dissector(ptr noundef nonnull @.str.102, ptr noundef nonnull @dissect_ftp, i32 noundef %i.a)
  store ptr %i.b, ptr @ftp_handle, align 8
  %i.c = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.105) ; 2 uses
  store i32 %i.c, ptr @proto_ftp_data, align 4
  %i.d = tail call ptr @register_dissector(ptr noundef nonnull @.str.105, ptr noundef nonnull @dissect_ftpdata, i32 noundef %i.c)
  store ptr %i.d, ptr @ftpdata_handle, align 8
  %i.e = load i32, ptr @proto_ftp, align 4
  tail call void @proto_register_field_array(i32 noundef %i.e, ptr noundef nonnull @proto_register_ftp.hf, i32 noundef 29)
  %i.f = load i32, ptr @proto_ftp, align 4
  tail call void @proto_register_field_array(i32 noundef %i.f, ptr noundef nonnull @proto_register_ftp.data_hf, i32 noundef 5)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_ftp.ett, i32 noundef 2)
  %i.g = load i32, ptr @proto_ftp, align 4
  %i.h = tail call ptr @expert_register_protocol(i32 noundef %i.g)
  tail call void @expert_register_field_array(ptr noundef %i.h, ptr noundef nonnull @proto_register_ftp.ei, i32 noundef 4)
  tail call void @register_init_routine(ptr noundef nonnull @ftp_init_protocol)
  tail call void @register_cleanup_routine(ptr noundef nonnull @ftp_cleanup_protocol)
  %i.i = tail call i32 @register_tap(ptr noundef nonnull @.str.106)
  store i32 %i.i, ptr @credentials_tap, align 4
  %i.j = load i32, ptr @proto_ftp_data, align 4
  %i.k = tail call ptr @prefs_register_protocol(i32 noundef %i.j, ptr noundef null)
  tail call void @prefs_register_uint_preference(ptr noundef %i.k, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, i32 noundef 10, ptr noundef nonnull @pref_export_maxsize)
  %i.l = load i32, ptr @proto_ftp_data, align 4
  %i.m = tail call i32 @register_export_object(i32 noundef %i.l, ptr noundef nonnull @ftp_eo_packet, ptr noundef nonnull @ftp_eo_cleanup)
  store i32 %i.m, ptr @ftp_eo_tap, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ftp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 20 uses
  %i.f = alloca i32, align 4                      ; 14 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %i.k = alloca i32, align 4                      ; 7 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca [8 x i16], align 16               ; 5 uses
  %i.n = alloca i16, align 2                      ; 14 uses
  %i.o = alloca i32, align 4                      ; 9 uses
  %4 = alloca %struct._address, align 8           ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  store i32 0, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #11
  store i32 0, ptr %i.k, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.p = getelementptr i8, ptr %1, i64 208        ; 4 uses
  %i.q = getelementptr i8, ptr %1, i64 212        ; 2 uses
  %i.r = getelementptr i8, ptr %1, i64 216        ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.u = load <2 x i32>, ptr %i.p, align 8
  store <2 x i32> %i.u, ptr %4, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store ptr %i.s, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr null, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %1, i64 296
  %i.y = load i32, ptr %i.x, align 8
  %i.z = getelementptr i8, ptr %1, i64 292        ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = icmp eq i32 %i.y, %i.aa                 ; 5 uses
  %i.ac = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void @col_set_str(ptr noundef %i.ad, i32 noundef 35, ptr noundef nonnull @.str.101)
  %i.ae = tail call fastcc ptr @find_or_create_ftp_conversation(ptr noundef %1) ; 22 uses
  %i.af = getelementptr i8, ptr %1, i64 80        ; 6 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr i8, ptr %i.ag, i64 53
  %i.ai = load i16, ptr %i.ah, align 1
  %i.aj = and i16 %i.ai, 8
  %.not = icmp eq i16 %i.aj, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ak = tail call ptr @wmem_file_scope()
  %i.al = tail call noalias dereferenceable_or_null(8) ptr @wmem_alloc0(ptr noundef %i.ak, i64 noundef 8) #12 ; 2 uses
  %i.am = tail call ptr @wmem_file_scope()
  %i.an = getelementptr i8, ptr %i.ae, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call ptr @wmem_strbuf_get_str(ptr noundef %i.ao)
  %i.aq = tail call ptr @wmem_strbuf_new(ptr noundef %i.am, ptr noundef %i.ap)
  store ptr %i.aq, ptr %i.al, align 8
  %i.ar = tail call ptr @wmem_file_scope()
  %i.as = load i32, ptr @proto_ftp, align 4
  tail call void @p_add_proto_data(ptr noundef %i.ar, ptr noundef %1, i32 noundef %i.as, i32 noundef 0, ptr noundef %i.al)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.at = call zeroext i1 @tvb_find_line_end_remaining(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c) ; 0 uses
  %i.au = load ptr, ptr %i.ac, align 8
  %i.av = select i1 %i.ab, ptr @.str.5, ptr @.str.2
  %i.aw = getelementptr i8, ptr %1, i64 416       ; 10 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = load i32, ptr %i.e, align 4
  %i.az = call ptr @tvb_format_text(ptr noundef %i.ax, ptr noundef %0, i32 noundef 0, i32 noundef %i.ay)
  call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.au, i32 noundef 25, ptr noundef nonnull @.str.175, ptr noundef nonnull %i.av, ptr noundef %i.az)
  %i.ba = load i32, ptr @proto_ftp, align 4
  %i.bb = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ba, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.bc = load i32, ptr @ett_ftp, align 4
  %i.bd = call ptr @proto_item_add_subtree(ptr noundef %i.bb, i32 noundef %i.bc) ; 4 uses
  %i.be = load i32, ptr @hf_ftp_request, align 4
  %i.bf = zext i1 %i.ab to i64
  %i.bg = call ptr @proto_tree_add_boolean(ptr noundef %i.bd, i32 noundef %i.be, ptr noundef %0, i32 noundef 0, i32 noundef 0, i64 noundef %i.bf) ; 2 uses
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bh = getelementptr i8, ptr %i.bg, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.bi, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = getelementptr i8, ptr %i.bi, i64 28     ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = or i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.c, %bb.d, %bb.e
  %i.bm = load i32, ptr @hf_ftp_response, align 4
  %i.bn = xor i1 %i.ab, true
  %i.bo = zext i1 %i.bn to i64
  %i.bp = call ptr @proto_tree_add_boolean(ptr noundef %i.bd, i32 noundef %i.bm, ptr noundef %0, i32 noundef 0, i32 noundef 0, i64 noundef %i.bo) ; 2 uses
  %.not.i311 = icmp eq ptr %i.bp, null
  br i1 %.not.i311, label %proto_item_set_hidden.exit313, label %bb.f

bb.f:                                             ; preds = %proto_item_set_hidden.exit
  %i.bq = getelementptr i8, ptr %i.bp, i64 40
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not5.i312 = icmp eq ptr %i.br, null
  br i1 %.not5.i312, label %proto_item_set_hidden.exit313, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bs = getelementptr i8, ptr %i.br, i64 28     ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = or i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4
  br label %proto_item_set_hidden.exit313

proto_item_set_hidden.exit313:                    ; preds = %proto_item_set_hidden.exit, %bb.f, %bb.g
  %i.bv = load i32, ptr %i.c, align 4
  %i.bw = call ptr @proto_tree_add_format_text(ptr noundef %i.bd, ptr noundef %0, i32 noundef 0, i32 noundef %i.bv)
  %i.bx = load i32, ptr @ett_ftp_reqresp, align 4
  %i.by = call ptr @proto_item_add_subtree(ptr noundef %i.bw, i32 noundef %i.bx) ; 18 uses
  %i.bz = load i32, ptr %i.e, align 4             ; 2 uses
  br i1 %i.ab, label %bb.h, label %bb.ab

bb.h:                                             ; preds = %proto_item_set_hidden.exit313
  %i.ca = call zeroext i1 @tvb_get_token_len_length(ptr noundef %0, i32 noundef 0, i32 noundef %i.bz, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d)
  br i1 %i.ca, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.cb = load i32, ptr @hf_ftp_request_command, align 4
  %i.cc = load i32, ptr %i.f, align 4
  %i.cd = call ptr @proto_tree_add_item(ptr noundef %i.by, i32 noundef %i.cb, ptr noundef %0, i32 noundef 0, i32 noundef %i.cc, i32 noundef 2) ; 0 uses
  %i.ce = load i32, ptr %i.f, align 4
  %i.cf = zext i32 %i.ce to i64
  %i.cg = call i32 @tvb_strneql(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.176, i64 noundef %i.cf)
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ci = load i32, ptr %i.f, align 4
  %i.cj = zext i32 %i.ci to i64
  %i.ck = call i32 @tvb_strneql(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.177, i64 noundef %i.cj)
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cm = load i32, ptr %i.f, align 4
  %i.cn = zext i32 %i.cm to i64
  %i.co = call i32 @tvb_strneql(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.178, i64 noundef %i.cn)
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %.not297 = icmp eq ptr %i.ae, null
  br i1 %.not297, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cq = getelementptr i8, ptr %i.ae, i64 40     ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8
  %.not298 = icmp eq ptr %i.cr, null
  br i1 %.not298, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.cs = load i32, ptr %i.e, align 4
  %i.ct = load i32, ptr %i.f, align 4
  %i.cu = sub i32 %i.cs, %i.ct
  %i.cv = icmp ugt i32 %i.cu, 1
  br i1 %i.cv, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.cw = call ptr @wmem_file_scope()
  %i.cx = load i32, ptr %i.f, align 4             ; 2 uses
  %i.cy = add i32 %i.cx, 1
  %i.cz = load i32, ptr %i.e, align 4
  %i.da = xor i32 %i.cx, -1
  %i.db = add i32 %i.cz, %i.da
  %i.dc = call ptr @tvb_get_string_enc(ptr noundef %i.cw, ptr noundef %0, i32 noundef %i.cy, i32 noundef %i.db, i32 noundef 2)
  store ptr %i.dc, ptr %i.cq, align 8
  %i.dd = getelementptr i8, ptr %1, i64 20
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = getelementptr i8, ptr %i.ae, i64 48
  store i32 %i.de, ptr %i.df, align 8
  br label %.thread

bb.p:                                             ; preds = %bb.k
  %i.dg = load i32, ptr %i.f, align 4
  %i.dh = zext i32 %i.dg to i64
  %i.di = call i32 @tvb_strneql(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.179, i64 noundef %i.dh)
  %i.dj = icmp eq i32 %i.di, 0
  %i.dk = icmp ne ptr %i.ae, null
  %or.cond3 = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %or.cond3, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.dl = getelementptr i8, ptr %i.ae, i64 40     ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8
  %.not296 = icmp eq ptr %i.dm, null
  br i1 %.not296, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dn = load ptr, ptr %i.aw, align 8
  %i.do = call noalias dereferenceable_or_null(40) ptr @wmem_alloc0(ptr noundef %i.dn, i64 noundef 40) #12 ; 7 uses
  %i.dp = getelementptr i8, ptr %1, i64 20
  %i.dq = load i32, ptr %i.dp, align 4
  store i32 %i.dq, ptr %i.do, align 8
  %i.dr = getelementptr i8, ptr %i.do, i64 24
  store ptr @.str.101, ptr %i.dr, align 8
  %i.ds = load i32, ptr @hf_ftp_request_arg, align 4
  %i.dt = getelementptr i8, ptr %i.do, i64 8
  store i32 %i.ds, ptr %i.dt, align 8
  %i.du = load ptr, ptr %i.dl, align 8
  %i.dv = getelementptr i8, ptr %i.do, i64 16
  store ptr %i.du, ptr %i.dv, align 8
  %i.dw = getelementptr i8, ptr %i.ae, i64 48
  %i.dx = load i32, ptr %i.dw, align 8            ; 2 uses
  %i.dy = getelementptr i8, ptr %i.do, i64 4
  store i32 %i.dx, ptr %i.dy, align 4
  %i.dz = load ptr, ptr %i.aw, align 8
  %i.ea = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.dz, ptr noundef nonnull @.str.180, i32 noundef %i.dx)
  %i.eb = getelementptr i8, ptr %i.do, i64 32
  store ptr %i.ea, ptr %i.eb, align 8
  %i.ec = load i32, ptr @credentials_tap, align 4
  call void @tap_queue_packet(i32 noundef %i.ec, ptr noundef %1, ptr noundef %i.do)
  br label %.thread

bb.s:                                             ; preds = %bb.j, %bb.i, %bb.p, %bb.h
  %.0274 = phi i1 [ false, %bb.h ], [ true, %bb.i ], [ false, %bb.j ], [ false, %bb.p ] ; 2 uses
  %.0272 = phi i1 [ false, %bb.h ], [ false, %bb.i ], [ true, %bb.j ], [ false, %bb.p ] ; 2 uses
  %.not299 = icmp eq ptr %i.ae, null
  br i1 %.not299, label %.critedge, label %.thread

end_hunk_0
begin_hunk_1_@dissect_ftp:bb.a

bb.z:                                             ; preds = %bb.y
  %i.ev = load ptr, ptr %i.ae, align 8
  %i.ew = call fastcc zeroext i1 @cmd_resp_is_data(ptr noundef %i.ev)
  br i1 %i.ew, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z, %bb.x
  %i.ex = call ptr @wmem_file_scope()
  %i.ey = load i32, ptr %i.e, align 4
  %i.ez = call ptr @tvb_get_string_enc(ptr noundef %i.ex, ptr noundef %0, i32 noundef 0, i32 noundef %i.ey, i32 noundef 2)
  %i.fa = load ptr, ptr %i.en, align 8
  store ptr %i.ez, ptr %i.fa, align 8
  %i.fb = load i32, ptr %i.eg, align 4            ; 2 uses
  %i.fc = load ptr, ptr %i.en, align 8
  %i.fd = getelementptr i8, ptr %i.fc, i64 8
  store i32 %i.fb, ptr %i.fd, align 8
  %i.fe = load ptr, ptr @ftp_command_to_data_hash, align 8
  %i.ff = zext i32 %i.fb to i64
  %i.fg = inttoptr i64 %i.ff to ptr
  %i.fh = load ptr, ptr %i.en, align 8
  %i.fi = call i32 @g_hash_table_insert(ptr noundef %i.fe, ptr noundef %i.fg, ptr noundef %i.fh) ; 0 uses
  %i.fj = load ptr, ptr @ftp_command_to_data_hash, align 8
  %i.fk = getelementptr i8, ptr %i.ae, i64 32
  %i.fl = load i32, ptr %i.fk, align 8
  %i.fm = zext i32 %i.fl to i64
  %i.fn = inttoptr i64 %i.fm to ptr
  %i.fo = load ptr, ptr %i.en, align 8
  %i.fp = call i32 @g_hash_table_insert(ptr noundef %i.fj, ptr noundef %i.fn, ptr noundef %i.fo) ; 0 uses
  br label %.critedge

bb.ab:                                            ; preds = %proto_item_set_hidden.exit313
  %i.fq = icmp ugt i32 %i.bz, 2
  br i1 %i.fq, label %bb.ac, label %bb.as

bb.ac:                                            ; preds = %bb.ab
  %i.fr = call zeroext i1 @tvb_ascii_isdigit(ptr noundef %0, i32 noundef 0, i32 noundef 3)
  br i1 %i.fr, label %bb.ad, label %bb.as

bb.ad:                                            ; preds = %bb.ac
  %i.fs = call zeroext i1 @tvb_get_string_uint(ptr noundef %0, i32 noundef 0, i32 noundef 3, i32 noundef 67108864, ptr noundef nonnull %i.b, ptr noundef null)
  %i.ft = load i32, ptr @hf_ftp_response_code, align 4
  %i.fu = load i32, ptr %i.b, align 4
  %i.fv = call ptr @proto_tree_add_uint(ptr noundef %i.by, i32 noundef %i.ft, ptr noundef %0, i32 noundef 0, i32 noundef 3, i32 noundef %i.fu) ; 2 uses
  br i1 %i.fs, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fw = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.fv, ptr noundef nonnull @ei_ftp_response_code_invalid) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fx = load i32, ptr %i.b, align 4             ; 4 uses
  %i.fy = icmp eq i32 %i.fx, 227
  %i.fz = icmp eq i32 %i.fx, 229
  %i.ga = icmp eq i32 %i.fx, 234
  br i1 %i.ga, label %bb.ag, label %thread-pre-split

bb.ag:                                            ; preds = %bb.af
  %i.gb = getelementptr i8, ptr %i.ae, i64 52     ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 4, !range !12, !noundef !13
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.ah, label %thread-pre-split.thread

bb.ah:                                            ; preds = %bb.ag
  %i.ge = load ptr, ptr @tls_handle, align 8
  %i.gf = load ptr, ptr @ftp_handle, align 8
  %i.gg = call i32 @ssl_starttls_ack(ptr noundef %i.ge, ptr noundef %1, ptr noundef %i.gf) ; 0 uses
  store i8 0, ptr %i.gb, align 4
  %.pr.pre = load i32, ptr %i.b, align 4
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.ah, %bb.af
  %i.gh = phi i32 [ %i.fx, %bb.af ], [ %.pr.pre, %bb.ah ]
  %i.gi = icmp eq i32 %i.gh, 250
  br i1 %i.gi, label %bb.ai, label %thread-pre-split.thread

bb.ai:                                            ; preds = %thread-pre-split
  %i.gj = load ptr, ptr %i.af, align 8
  %i.gk = getelementptr i8, ptr %i.gj, i64 53
  %i.gl = load i16, ptr %i.gk, align 1
  %i.gm = and i16 %i.gl, 8
  %i.gn = icmp eq i16 %i.gm, 0
  %i.go = icmp ne ptr %i.ae, null
  %or.cond5 = select i1 %i.gn, i1 %i.go, i1 false
  br i1 %or.cond5, label %bb.aj, label %thread-pre-split.thread

bb.aj:                                            ; preds = %bb.ai
  %i.gp = load ptr, ptr %i.ae, align 8            ; 4 uses
  %.not293 = icmp eq ptr %i.gp, null
  br i1 %.not293, label %thread-pre-split.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gq = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.gp, ptr noundef nonnull dereferenceable(5) @.str.182, i64 noundef 4) #13
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gs = getelementptr i8, ptr %i.gp, i64 4
  br label %thread-pre-split.thread.sink.split

bb.am:                                            ; preds = %bb.ak
  %i.gt = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.gp, ptr noundef nonnull dereferenceable(5) @.str.183, i64 noundef 4) #13
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %thread-pre-split.thread.sink.split, label %thread-pre-split.thread

thread-pre-split.thread.sink.split:               ; preds = %bb.am, %bb.al
  %.sink = phi ptr [ %i.gs, %bb.al ], [ @.str.184, %bb.am ]
  call fastcc void @process_cwd_success(ptr noundef %i.ae, ptr noundef %.sink, ptr noundef %1)
  call fastcc void @store_directory_in_packet(ptr noundef %1, ptr noundef nonnull %i.ae)
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %thread-pre-split.thread.sink.split, %bb.ag, %bb.ai, %bb.am, %bb.aj, %thread-pre-split
  %i.gv = load i32, ptr %i.b, align 4
  %i.gw = icmp eq i32 %i.gv, 257
  br i1 %i.gw, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %thread-pre-split.thread
  %i.gx = load ptr, ptr %i.af, align 8
  %i.gy = getelementptr i8, ptr %i.gx, i64 53
  %i.gz = load i16, ptr %i.gy, align 1
  %i.ha = and i16 %i.gz, 8
  %.not294 = icmp eq i16 %i.ha, 0
  br i1 %.not294, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.hb = icmp ne ptr %i.ae, null
  %i.hc = load i32, ptr %i.e, align 4             ; 2 uses
  %i.hd = icmp ugt i32 %i.hc, 3
  %or.cond = select i1 %i.hb, i1 %i.hd, i1 false
  br i1 %or.cond, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.he = add i32 %i.hc, -4
  call fastcc void @process_pwd_success(ptr noundef %i.ae, ptr noundef %0, i32 noundef %i.he, ptr noundef %1, ptr noundef %i.fv)
  %i.hf = load ptr, ptr %i.af, align 8
  %i.hg = getelementptr i8, ptr %i.hf, i64 53
  %i.hh = load i16, ptr %i.hg, align 1
  %i.hi = and i16 %i.hh, 8
  %.not295 = icmp eq i16 %i.hi, 0
  br i1 %.not295, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call fastcc void @store_directory_in_packet(ptr noundef %1, ptr noundef nonnull %i.ae)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.an, %bb.ap, %bb.aq, %bb.ao, %thread-pre-split.thread
  %i.hj = load i32, ptr %i.e, align 4
  %. = call i32 @llvm.umin.i32(i32 %i.hj, i32 4)
  store i32 %., ptr %i.d, align 4
  br label %.critedge

bb.as:                                            ; preds = %bb.ac, %bb.ab
  store i32 0, ptr %i.d, align 4
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.s, %bb.ar, %bb.as, %bb.v, %bb.w, %bb.aa, %bb.z, %bb.y
  %.1275 = phi i1 [ %.0274363, %bb.w ], [ %.0274363, %bb.y ], [ %.0274363, %bb.aa ], [ %.0274363, %bb.z ], [ %.0274363, %bb.v ], [ %.0274, %bb.s ], [ false, %bb.ar ], [ false, %bb.as ], [ false, %bb.l ]
  %.1273 = phi i1 [ %.0272364, %bb.w ], [ %.0272364, %bb.y ], [ %.0272364, %bb.aa ], [ %.0272364, %bb.z ], [ %.0272364, %bb.v ], [ %.0272, %bb.s ], [ false, %bb.ar ], [ false, %bb.as ], [ false, %bb.l ]
  %.1271 = phi i1 [ false, %bb.w ], [ false, %bb.y ], [ false, %bb.aa ], [ false, %bb.z ], [ false, %bb.v ], [ false, %bb.s ], [ %i.fy, %bb.ar ], [ false, %bb.as ], [ false, %bb.l ]
  %.1 = phi i1 [ false, %bb.w ], [ false, %bb.y ], [ false, %bb.aa ], [ false, %bb.z ], [ false, %bb.v ], [ false, %bb.s ], [ %i.fz, %bb.ar ], [ false, %bb.as ], [ false, %bb.l ]
  %i.hk = load i32, ptr %i.d, align 4             ; 9 uses
  %i.hl = load i32, ptr %i.e, align 4             ; 2 uses
  %i.hm = sub i32 %i.hl, %i.hk                    ; 2 uses
  store i32 %i.hm, ptr %i.e, align 4
  %.not304 = icmp eq i32 %i.hl, %i.hk
  br i1 %.not304, label %bb.at, label %.sink.split

.sink.split:                                      ; preds = %.critedge
  %hf_ftp_request_arg.val = load i32, ptr @hf_ftp_request_arg, align 4
  %hf_ftp_response_arg.val = load i32, ptr @hf_ftp_response_arg, align 4
  %i.hn = select i1 %i.ab, i32 %hf_ftp_request_arg.val, i32 %hf_ftp_response_arg.val
  %i.ho = call ptr @proto_tree_add_item(ptr noundef %i.by, i32 noundef %i.hn, ptr noundef %0, i32 noundef %i.hk, i32 noundef %i.hm, i32 noundef 2) ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %.sink.split, %.critedge
  br i1 %.1275, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.hp = load i32, ptr %i.e, align 4
  %.val309 = load ptr, ptr %i.aw, align 8
  %i.hq = call fastcc zeroext i1 @parse_port_pasv(ptr noundef %0, ptr %.val309, i32 noundef %i.hk, i32 noundef %i.hp, ptr noundef nonnull %i.i, ptr noundef nonnull %i.n, ptr noundef nonnull %i.h, ptr noundef nonnull %i.j, ptr noundef nonnull %i.o)
  br i1 %i.hq, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.hr = load i32, ptr @hf_ftp_active_ip, align 4
  %i.hs = load i32, ptr %i.h, align 4             ; 2 uses
  %i.ht = load i32, ptr %i.f, align 4
  %i.hu = add i32 %i.hs, 1
  %i.hv = add i32 %i.hu, %i.ht
  %i.hw = load i32, ptr %i.j, align 4             ; 2 uses
  %i.hx = load i32, ptr %i.i, align 4
  %i.hy = call ptr @proto_tree_add_ipv4(ptr noundef %i.by, i32 noundef %i.hr, ptr noundef %0, i32 noundef %i.hv, i32 noundef %i.hw, i32 noundef %i.hx) ; 0 uses
  %i.hz = load i32, ptr @hf_ftp_active_port, align 4
  %i.ia = load i32, ptr %i.f, align 4
  %i.ib = add i32 %i.hs, 2
  %i.ic = add i32 %i.ib, %i.hw
  %i.id = add i32 %i.ic, %i.ia
  %i.ie = load i32, ptr %i.o, align 4
  %i.if = load i16, ptr %i.n, align 2
  %i.ig = zext i16 %i.if to i32
  %i.ih = call ptr @proto_tree_add_uint(ptr noundef %i.by, i32 noundef %i.hz, ptr noundef %0, i32 noundef %i.id, i32 noundef %i.ie, i32 noundef %i.ig) ; 0 uses
  store i32 2, ptr %4, align 8
  store i32 4, ptr %i.t, align 4
  store ptr %i.i, ptr %i.v, align 8
  store ptr null, ptr %i.w, align 8
  %i.ii = load i32, ptr %i.p, align 8
  %i.ij = icmp eq i32 %i.ii, 2
  br i1 %i.ij, label %bb.aw, label %addresses_equal.exit

bb.aw:                                            ; preds = %bb.av
  %i.ik = load i32, ptr %i.q, align 4
  %i.il = icmp eq i32 %i.ik, 4
  br i1 %i.il, label %bb.ax, label %addresses_equal.exit

bb.ax:                                            ; preds = %bb.aw
  %i.im = load ptr, ptr %i.r, align 8
  %i.in = load i32, ptr %i.im, align 1
  %i.io = load i32, ptr %i.i, align 4
  %i.ip = icmp ne i32 %i.in, %i.io
  %i.iq = zext i1 %i.ip to i32
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %addresses_equal.exit.thread, label %addresses_equal.exit

addresses_equal.exit:                             ; preds = %bb.ax, %bb.aw, %bb.av
  %i.is = load i32, ptr @hf_ftp_active_nat, align 4
  %i.it = call ptr @proto_tree_add_boolean(ptr noundef %i.by, i32 noundef %i.is, ptr noundef %0, i32 noundef 0, i32 noundef 0, i64 noundef 1) ; 0 uses
  br label %addresses_equal.exit.thread

addresses_equal.exit.thread:                      ; preds = %bb.ax, %addresses_equal.exit
  %i.iu = getelementptr i8, ptr %1, i64 232
  %i.iv = load i16, ptr %i.n, align 2
  call fastcc void @create_and_link_data_conversation(ptr noundef %1, ptr noundef %i.iu, i16 noundef zeroext 20, ptr noundef nonnull %4, i16 noundef zeroext %i.iv, ptr noundef nonnull @.str.176)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.au, %addresses_equal.exit.thread, %bb.at
  %i.iw = load i32, ptr %i.e, align 4             ; 2 uses
  %i.ix = icmp ne i32 %i.iw, 0
  %or.cond7 = select i1 %.1271, i1 %i.ix, i1 false
  br i1 %or.cond7, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %.val = load ptr, ptr %i.aw, align 8
  %i.iy = call fastcc zeroext i1 @parse_port_pasv(ptr noundef %0, ptr %.val, i32 noundef %i.hk, i32 noundef %i.iw, ptr noundef nonnull %i.g, ptr noundef nonnull %i.n, ptr noundef nonnull %i.h, ptr noundef nonnull %i.j, ptr noundef nonnull %i.o)
  br i1 %i.iy, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.iz = load i32, ptr @hf_ftp_pasv_ip, align 4
  %i.ja = load i32, ptr %i.h, align 4             ; 2 uses
  %i.jb = add i32 %i.ja, 4
  %i.jc = load i32, ptr %i.j, align 4             ; 2 uses
  %i.jd = load i32, ptr %i.g, align 4
  %i.je = call ptr @proto_tree_add_ipv4(ptr noundef %i.by, i32 noundef %i.iz, ptr noundef %0, i32 noundef %i.jb, i32 noundef %i.jc, i32 noundef %i.jd) ; 0 uses
  %i.jf = load i32, ptr @hf_ftp_pasv_port, align 4
  %i.jg = add i32 %i.ja, 5
  %i.jh = add i32 %i.jg, %i.jc
  %i.ji = load i32, ptr %i.o, align 4
  %i.jj = load i16, ptr %i.n, align 2
  %i.jk = zext i16 %i.jj to i32
  %i.jl = call ptr @proto_tree_add_uint(ptr noundef %i.by, i32 noundef %i.jf, ptr noundef %0, i32 noundef %i.jh, i32 noundef %i.ji, i32 noundef %i.jk) ; 0 uses
  store i32 2, ptr %4, align 8
  store i32 4, ptr %i.t, align 4
  store ptr %i.g, ptr %i.v, align 8
  store ptr null, ptr %i.w, align 8
  %i.jm = load i32, ptr %i.p, align 8
  %i.jn = icmp eq i32 %i.jm, 2
  br i1 %i.jn, label %bb.bb, label %addresses_equal.exit316

bb.bb:                                            ; preds = %bb.ba
  %i.jo = load i32, ptr %i.q, align 4
  %i.jp = icmp eq i32 %i.jo, 4
  br i1 %i.jp, label %bb.bc, label %addresses_equal.exit316

bb.bc:                                            ; preds = %bb.bb
  %i.jq = load ptr, ptr %i.r, align 8
  %i.jr = load i32, ptr %i.jq, align 1
  %i.js = load i32, ptr %i.g, align 4
  %i.jt = icmp ne i32 %i.jr, %i.js
  %i.ju = zext i1 %i.jt to i32
  %i.jv = icmp eq i32 %i.ju, 0
  br i1 %i.jv, label %addresses_equal.exit316.thread, label %addresses_equal.exit316

addresses_equal.exit316:                          ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.jw = load i32, ptr @hf_ftp_pasv_nat, align 4
  %i.jx = call ptr @proto_tree_add_boolean(ptr noundef %i.by, i32 noundef %i.jw, ptr noundef %0, i32 noundef 0, i32 noundef 0, i64 noundef 1) ; 0 uses
  br label %addresses_equal.exit316.thread

addresses_equal.exit316.thread:                   ; preds = %bb.bc, %addresses_equal.exit316
  %i.jy = load i16, ptr %i.n, align 2
  %i.jz = getelementptr i8, ptr %1, i64 232
  %i.ka = load i32, ptr %i.z, align 4
  %i.kb = trunc i32 %i.ka to i16
  call fastcc void @create_and_link_data_conversation(ptr noundef %1, ptr noundef nonnull %4, i16 noundef zeroext %i.jy, ptr noundef %i.jz, i16 noundef zeroext %i.kb, ptr noundef nonnull @.str.185)
  br label %bb.bd

bb.bd:                                            ; preds = %addresses_equal.exit316.thread, %bb.az, %bb.ay
  br i1 %.1273, label %bb.be, label %bb.br

bb.be:                                            ; preds = %bb.bd
  %i.kc = load i32, ptr %i.e, align 4             ; 3 uses
  %i.kd = icmp slt i32 %i.kc, 4
  br i1 %i.kd, label %parse_eprt_request.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ke = load ptr, ptr %i.aw, align 8
  %i.kf = add nuw i32 %i.kc, 1
  %i.kg = sext i32 %i.kf to i64                   ; 2 uses
  %i.kh = call noalias ptr @wmem_alloc(ptr noundef %i.ke, i64 noundef %i.kg) #12 ; 7 uses
  %i.ki = call i32 @tvb_get_raw_bytes_as_string(ptr noundef %0, i32 noundef %i.hk, ptr noundef %i.kh, i64 noundef %i.kg) ; 0 uses
  %i.kj = call i64 @strlen(ptr noundef %i.kh) #13
  %i.kk = trunc i64 %i.kj to i32                  ; 2 uses
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.kc, i32 %i.kk) ; 3 uses
  %i.kl = load i8, ptr %i.kh, align 1             ; 5 uses
  %i.km = load ptr, ptr @g_ascii_table, align 8
  %i.kn = zext i8 %i.kl to i64
  %i.ko = getelementptr [2 x i8], ptr %i.km, i64 %i.kn
  %i.kp = load i16, ptr %i.ko, align 2
  %i.kq = and i16 %i.kp, 16
  %.not.i.i = icmp eq i16 %i.kq, 0
  br i1 %.not.i.i, label %parse_eprt_request.exit.thread, label %isvalid_rfc2428_delimiter.exit.i

isvalid_rfc2428_delimiter.exit.i:                 ; preds = %bb.bf
  %i.kr = call signext i8 @g_ascii_tolower(i8 noundef signext %i.kl) #14
  %i.ks = sext i8 %i.kr to i32
  %memchr.i.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.199, i32 %i.ks, i64 19)
  %.not3.i.i = icmp eq ptr %memchr.i.i, null
  %i.kt = icmp sgt i32 %i.kk, 0
  %or.cond.i = select i1 %.not3.i.i, i1 %i.kt, i1 false
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %parse_eprt_request.exit.thread

.lr.ph.preheader.i:                               ; preds = %isvalid_rfc2428_delimiter.exit.i
  %wide.trip.count.i = zext nneg i32 %spec.select.i to i64 ; 4 uses
  %min.iters.check = icmp ult i32 %spec.select.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.kl, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.la, %vector.body ]
  %vec.phi445 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.lb, %vector.body ]
  %i.ku = getelementptr i8, ptr %i.kh, i64 %index ; 2 uses
  %i.kv = getelementptr i8, ptr %i.ku, i64 4
  %wide.load = load <4 x i8>, ptr %i.ku, align 1
  %wide.load446 = load <4 x i8>, ptr %i.kv, align 1
  %i.kw = icmp eq <4 x i8> %wide.load, %broadcast.splat
  %i.kx = icmp eq <4 x i8> %wide.load446, %broadcast.splat
  %i.ky = zext <4 x i1> %i.kw to <4 x i32>
  %i.kz = zext <4 x i1> %i.kx to <4 x i32>
  %i.la = add <4 x i32> %vec.phi, %i.ky           ; 2 uses
  %i.lb = add <4 x i32> %vec.phi445, %i.kz        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lc = icmp eq i64 %index.next, %n.vec
  br i1 %i.lc, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.lb, %i.la
  %i.ld = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.07395.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ld, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.07395.i = phi i32 [ %spec.select89.i, %.lr.ph.i ], [ %.07395.i.ph, %.lr.ph.i.preheader ]
  %i.le = getelementptr i8, ptr %i.kh, i64 %indvars.iv.i
  %i.lf = load i8, ptr %i.le, align 1
  %i.lg = icmp eq i8 %i.lf, %i.kl
  %i.lh = zext i1 %i.lg to i32
  %spec.select89.i = add i32 %.07395.i, %i.lh     ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !8

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block
  %spec.select89.i.lcssa = phi i32 [ %i.ld, %middle.block ], [ %spec.select89.i, %.lr.ph.i ]
  %i.li = icmp eq i32 %spec.select89.i.lcssa, 4
  br i1 %i.li, label %.preheader.i, label %parse_eprt_request.exit.thread

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.lj = icmp sgt i32 %spec.select.i, 1
  br i1 %i.lj, label %.lr.ph101.i, label %parse_eprt_request.exit.thread372

.lr.ph101.i:                                      ; preds = %.preheader.i, %bb.bn
  %.0 = phi i32 [ %.1362, %bb.bn ], [ 0, %.preheader.i ] ; 4 uses
  %indvars.iv112.i = phi i64 [ %indvars.iv.next113.i, %bb.bn ], [ 1, %.preheader.i ] ; 3 uses
  %.066100.i = phi i1 [ %.4.i, %bb.bn ], [ true, %.preheader.i ] ; 4 uses
  %.06999.i = phi i32 [ %.170.i, %bb.bn ], [ 0, %.preheader.i ] ; 3 uses
  %.27597.i = phi i32 [ %.376.i, %bb.bn ], [ 1, %.preheader.i ] ; 2 uses
  %i.lk = getelementptr i8, ptr %i.kh, i64 %indvars.iv112.i
  %i.ll = load i8, ptr %i.lk, align 1
  %.not88.i = icmp eq i8 %i.ll, %i.kl
  br i1 %.not88.i, label %bb.bg, label %bb.bn

bb.bg:                                            ; preds = %.lr.ph101.i
  %i.lm = xor i32 %.06999.i, -1
  %i.ln = trunc nuw nsw i64 %indvars.iv112.i to i32 ; 6 uses
  %i.lo = add i32 %i.lm, %i.ln                    ; 7 uses
  %i.lp = icmp slt i32 %i.lo, 1
  br i1 %i.lp, label %parse_eprt_request.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lq = add i32 %.27597.i, 1                    ; 2 uses
  %i.lr = sext i32 %.06999.i to i64
  %i.ls = getelementptr i8, ptr %i.kh, i64 %i.lr
  %i.lt = getelementptr i8, ptr %i.ls, i64 1      ; 3 uses
  switch i32 %i.lq, label %bb.bn [
    i32 2, label %bb.bi
    i32 3, label %bb.bj
    i32 4, label %bb.bm
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.lu = load ptr, ptr %i.aw, align 8
  %i.lv = zext nneg i32 %i.lo to i64
  %i.lw = call noalias ptr @wmem_strndup(ptr noundef %i.lu, ptr noundef %i.lt, i64 noundef %i.lv)
  %i.lx = call zeroext i1 @ws_strtou32(ptr noundef %i.lw, ptr noundef null, ptr noundef nonnull %i.k)
  br i1 %i.lx, label %bb.bn, label %parse_eprt_request.exit.thread

bb.bj:                                            ; preds = %bb.bh
  %i.ly = load ptr, ptr %i.aw, align 8
  %i.lz = zext nneg i32 %i.lo to i64
  %i.ma = call noalias ptr @wmem_strndup(ptr noundef %i.ly, ptr noundef %i.lt, i64 noundef %i.lz) ; 2 uses
  %i.mb = load i32, ptr %i.k, align 4
  switch i32 %i.mb, label %parse_eprt_request.exit.thread [
    i32 1, label %bb.bk
    i32 2, label %bb.bl
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.mc = call zeroext i1 @str_to_ip(ptr noundef %i.ma, ptr noundef nonnull %i.l)
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bj
  %i.md = call zeroext i1 @str_to_ip6(ptr noundef %i.ma, ptr noundef nonnull %i.m)
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bh
  %i.me = load ptr, ptr %i.aw, align 8
  %i.mf = zext nneg i32 %i.lo to i64
  %i.mg = call noalias ptr @wmem_strndup(ptr noundef %i.me, ptr noundef %i.lt, i64 noundef %i.mf)
  %i.mh = call zeroext i1 @ws_strtou16(ptr noundef %i.mg, ptr noundef null, ptr noundef nonnull %i.n)
  br i1 %i.mh, label %.sink.split.i.a, label %parse_eprt_request.exit.thread

.sink.split.i.a:                                  ; preds = %bb.bm
  store i32 %i.lo, ptr %i.o, align 4
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bk, %bb.bl, %.sink.split.i.a, %bb.bi, %bb.bh, %.lr.ph101.i
  %.1362 = phi i32 [ %.0, %bb.bh ], [ %.0, %bb.bi ], [ %.0, %.lr.ph101.i ], [ %i.lo, %bb.bk ], [ %i.lo, %bb.bl ], [ %.0, %.sink.split.i.a ] ; 2 uses
  %.376.i = phi i32 [ %i.lq, %bb.bh ], [ 2, %bb.bi ], [ %.27597.i, %.lr.ph101.i ], [ 3, %bb.bk ], [ 3, %bb.bl ], [ 4, %.sink.split.i.a ]
  %.170.i = phi i32 [ %i.ln, %bb.bh ], [ %i.ln, %bb.bi ], [ %.06999.i, %.lr.ph101.i ], [ %i.ln, %bb.bk ], [ %i.ln, %bb.bl ], [ %i.ln, %.sink.split.i.a ]
  %.4.i = phi i1 [ %.066100.i, %bb.bh ], [ %.066100.i, %bb.bi ], [ %.066100.i, %.lr.ph101.i ], [ %i.mc, %bb.bk ], [ %i.md, %bb.bl ], [ %.066100.i, %.sink.split.i.a ] ; 2 uses
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1 ; 2 uses
  %exitcond115.not.i = icmp eq i64 %indvars.iv.next113.i, %wide.trip.count.i
  br i1 %exitcond115.not.i, label %parse_eprt_request.exit, label %.lr.ph101.i, !llvm.loop !9

parse_eprt_request.exit:                          ; preds = %bb.bn
  br i1 %.4.i, label %parse_eprt_request.exit.thread372, label %parse_eprt_request.exit.thread

parse_eprt_request.exit.thread372:                ; preds = %.preheader.i, %parse_eprt_request.exit
  %.3379 = phi i32 [ %.1362, %parse_eprt_request.exit ], [ 0, %.preheader.i ] ; 3 uses
  %i.mi = load i32, ptr %i.f, align 4             ; 2 uses
  %i.mj = add i32 %i.mi, 2
  %i.mk = load i32, ptr @hf_ftp_eprt_af, align 4
  %i.ml = load i32, ptr %i.k, align 4
  %i.mm = call ptr @proto_tree_add_uint(ptr noundef %i.by, i32 noundef %i.mk, ptr noundef %0, i32 noundef %i.mj, i32 noundef 1, i32 noundef %i.ml) ; 0 uses
  %i.mn = add i32 %i.mi, 4                        ; 3 uses
  %i.mo = load i32, ptr %i.k, align 4
  switch i32 %i.mo, label %bb.bq [
    i32 1, label %parse_eprt_request.exit.thread372._crit_edge
    i32 2, label %bb.bo
  ]

parse_eprt_request.exit.thread372._crit_edge:     ; preds = %parse_eprt_request.exit.thread372
  %5 = load i32, ptr @hf_ftp_eprt_ip, align 4
  %.0..0..0.359.pre = load i32, ptr %i.l, align 4
  %6 = call ptr @proto_tree_add_ipv4(ptr noundef %i.by, i32 noundef %5, ptr noundef %0, i32 noundef %i.mn, i32 noundef %.3379, i32 noundef %.0..0..0.359.pre) ; 0 uses
  br label %bb.bp

bb.bo:                                            ; preds = %parse_eprt_request.exit.thread372
  %i.mp = load i32, ptr @hf_ftp_eprt_ipv6, align 4
  %i.mq = call ptr @proto_tree_add_ipv6(ptr noundef %i.by, i32 noundef %i.mp, ptr noundef %0, i32 noundef %i.mn, i32 noundef %.3379, ptr noundef nonnull %i.m) ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %parse_eprt_request.exit.thread372._crit_edge, %bb.bo
  %.sink444 = phi ptr [ %i.m, %bb.bo ], [ %i.l, %parse_eprt_request.exit.thread372._crit_edge ]
  %7 = phi <2 x i32> [ <i32 3, i32 16>, %bb.bo ], [ <i32 2, i32 4>, %parse_eprt_request.exit.thread372._crit_edge ]
  store <2 x i32> %7, ptr %4, align 8
  store ptr %.sink444, ptr %i.v, align 8
  store ptr null, ptr %i.w, align 8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %parse_eprt_request.exit.thread372
  %i.mr = add nuw i32 %.3379, 1
  %i.ms = add i32 %i.mr, %i.mn
  %i.mt = load i32, ptr @hf_ftp_eprt_port, align 4
  %i.mu = load i32, ptr %i.o, align 4
  %i.mv = load i16, ptr %i.n, align 2
  %i.mw = zext i16 %i.mv to i32
  %i.mx = call ptr @proto_tree_add_uint(ptr noundef %i.by, i32 noundef %i.mt, ptr noundef %0, i32 noundef %i.ms, i32 noundef %i.mu, i32 noundef %i.mw) ; 0 uses
  %i.my = load i16, ptr %i.n, align 2
  call fastcc void @create_and_link_data_conversation(ptr noundef %1, ptr noundef %i.p, i16 noundef zeroext %i.my, ptr noundef nonnull %4, i16 noundef zeroext 0, ptr noundef nonnull @.str.177)
  br label %bb.br

parse_eprt_request.exit.thread:                   ; preds = %bb.bm, %bb.bg, %bb.bj, %bb.bi, %bb.bf, %._crit_edge.i, %isvalid_rfc2428_delimiter.exit.i, %bb.be, %parse_eprt_request.exit
  %i.mz = load i32, ptr %i.e, align 4             ; 2 uses
  %i.na = xor i32 %i.mz, -1
  %i.nb = add i32 %i.hk, %i.na
  %i.nc = call ptr @proto_tree_add_expert(ptr noundef %i.by, ptr noundef %1, ptr noundef nonnull @ei_ftp_eprt_args_invalid, ptr noundef %0, i32 noundef %i.nb, i32 noundef %i.mz) ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %parse_eprt_request.exit.thread, %bb.bd
  %i.nd = load i32, ptr %i.e, align 4             ; 2 uses
  %i.ne = icmp ne i32 %i.nd, 0
  %or.cond9 = select i1 %.1, i1 %i.ne, i1 false
  br i1 %or.cond9, label %bb.bs, label %bb.cc

bb.bs:                                            ; preds = %bb.br
  %.val310 = load ptr, ptr %i.aw, align 8
  %i.nf = add i32 %i.nd, 1
  %i.ng = sext i32 %i.nf to i64                   ; 2 uses
  %i.nh = call noalias ptr @wmem_alloc(ptr noundef %.val310, i64 noundef %i.ng) #12 ; 4 uses
  %i.ni = call i32 @tvb_get_raw_bytes_as_string(ptr noundef %0, i32 noundef %i.hk, ptr noundef %i.nh, i64 noundef %i.ng) ; 0 uses
  %i.nj = load ptr, ptr @g_ascii_table, align 8
  %scevgep.i = getelementptr i8, ptr %i.nh, i64 4
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bu, %bb.bs
  %indvars.iv.i317 = phi ptr [ %scevgep.i, %bb.bs ], [ %scevgep17.i, %bb.bu ] ; 3 uses
  %.143.i = phi ptr [ %i.nh, %bb.bs ], [ %i.nm, %bb.bu ] ; 5 uses
  %i.nk = load i8, ptr %.143.i, align 1
  switch i8 %i.nk, label %bb.bu [
    i8 0, label %parse_extended_pasv_response.exit.thread
    i8 40, label %.preheader.i318
  ]

.preheader.i318:                                  ; preds = %bb.bt
  %.211.i = getelementptr i8, ptr %.143.i, i64 1  ; 3 uses
  %i.nl = load i8, ptr %.211.i, align 1           ; 5 uses
  %.not50.i = icmp eq i8 %i.nl, 0
  br i1 %.not50.i, label %parse_extended_pasv_response.exit.thread, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.nm = getelementptr i8, ptr %.143.i, i64 1
  %scevgep17.i = getelementptr i8, ptr %indvars.iv.i317, i64 1
  br label %bb.bt, !llvm.loop !10

bb.bv:                                            ; preds = %.preheader.i318
  %i.nn = zext i8 %i.nl to i64
  %i.no = getelementptr [2 x i8], ptr %i.nj, i64 %i.nn
  %i.np = load i16, ptr %i.no, align 2
  %i.nq = and i16 %i.np, 16
  %.not.i.i319 = icmp eq i16 %i.nq, 0
  br i1 %.not.i.i319, label %isvalid_rfc2428_delimiter.exit.thread.thread.i, label %isvalid_rfc2428_delimiter.exit.i320

isvalid_rfc2428_delimiter.exit.i320:              ; preds = %bb.bv
  %i.nr = call signext i8 @g_ascii_tolower(i8 noundef signext %i.nl) #14
  %i.ns = sext i8 %i.nr to i32
  %memchr.i.i321 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.199, i32 %i.ns, i64 19)
  %memchr.i.fr.i = freeze ptr %memchr.i.i321
  %.not3.i.i322 = icmp eq ptr %memchr.i.fr.i, null
  br i1 %.not3.i.i322, label %.thread.i, label %isvalid_rfc2428_delimiter.exit.thread.thread.i

.thread.i:                                        ; preds = %isvalid_rfc2428_delimiter.exit.i320
  %.2.i = getelementptr i8, ptr %.143.i, i64 2    ; 2 uses
  %i.nt = load i8, ptr %.2.i, align 1             ; 2 uses
  %.not50.1.i = icmp eq i8 %i.nt, 0
  br i1 %.not50.1.i, label %parse_extended_pasv_response.exit.thread, label %isvalid_rfc2428_delimiter.exit.thread.1.i

isvalid_rfc2428_delimiter.exit.thread.1.i:        ; preds = %.thread.i
  %.not51.1.i = icmp eq i8 %i.nt, %i.nl
  br i1 %.not51.1.i, label %.thread.1.i, label %isvalid_rfc2428_delimiter.exit.thread.thread.i

.thread.1.i:                                      ; preds = %isvalid_rfc2428_delimiter.exit.thread.1.i
  %.2.1.i = getelementptr i8, ptr %.143.i, i64 3  ; 2 uses
  %i.nu = load i8, ptr %.2.1.i, align 1           ; 2 uses
  %.not50.2.i = icmp eq i8 %i.nu, 0
  br i1 %.not50.2.i, label %parse_extended_pasv_response.exit.thread, label %isvalid_rfc2428_delimiter.exit.thread.2.i

isvalid_rfc2428_delimiter.exit.thread.2.i:        ; preds = %.thread.1.i
  %.not51.2.i = icmp eq i8 %i.nu, %i.nl
  br i1 %.not51.2.i, label %isvalid_rfc2428_delimiter.exit.thread.i, label %isvalid_rfc2428_delimiter.exit.thread.thread.i

isvalid_rfc2428_delimiter.exit.thread.i:          ; preds = %isvalid_rfc2428_delimiter.exit.thread.2.i
  %.pre.i = load i8, ptr %indvars.iv.i317, align 1
  %i.nv = icmp eq i8 %.pre.i, 0
  br i1 %i.nv, label %parse_extended_pasv_response.exit.thread, label %isvalid_rfc2428_delimiter.exit.thread.thread.i

isvalid_rfc2428_delimiter.exit.thread.thread.i:   ; preds = %isvalid_rfc2428_delimiter.exit.thread.i, %isvalid_rfc2428_delimiter.exit.thread.2.i, %isvalid_rfc2428_delimiter.exit.thread.1.i, %isvalid_rfc2428_delimiter.exit.i320, %bb.bv
  %.2.lcssa24.i = phi ptr [ %indvars.iv.i317, %isvalid_rfc2428_delimiter.exit.thread.i ], [ %.211.i, %isvalid_rfc2428_delimiter.exit.i320 ], [ %.211.i, %bb.bv ], [ %.2.1.i, %isvalid_rfc2428_delimiter.exit.thread.2.i ], [ %.2.i, %isvalid_rfc2428_delimiter.exit.thread.1.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.nw = call zeroext i1 @ws_strtou16(ptr noundef %.2.lcssa24.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.n)
  br i1 %i.nw, label %.thread6.i, label %bb.bw

bb.bw:                                            ; preds = %isvalid_rfc2428_delimiter.exit.thread.thread.i
  %i.nx = load ptr, ptr %i.a, align 8
  %i.ny = load i8, ptr %i.nx, align 1
  %i.nz = icmp eq i8 %i.ny, 124
  br i1 %i.nz, label %.thread6.i, label %parse_extended_pasv_response.exit.thread376

.thread6.i:                                       ; preds = %bb.bw, %isvalid_rfc2428_delimiter.exit.thread.thread.i
  %i.oa = ptrtoint ptr %.2.lcssa24.i to i64       ; 2 uses
  %i.ob = ptrtoint ptr %i.nh to i64
  %i.oc = sub i64 %i.oa, %i.ob
  %i.od = trunc i64 %i.oc to i32                  ; 2 uses
  store i32 %i.od, ptr %i.h, align 4
  %i.oe = call ptr @strchr(ptr noundef %.2.lcssa24.i, i32 noundef 41) #13 ; 2 uses
  %i.of = icmp eq ptr %i.oe, null
  br i1 %i.of, label %parse_extended_pasv_response.exit.thread376, label %bb.bx

parse_extended_pasv_response.exit.thread376:      ; preds = %bb.bw, %.thread6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %parse_extended_pasv_response.exit.thread

bb.bx:                                            ; preds = %.thread6.i
  %i.og = getelementptr i8, ptr %i.oe, i64 -1
  %i.oh = ptrtoint ptr %i.og to i64
  %i.oi = sub i64 %i.oh, %i.oa
  %i.oj = trunc i64 %i.oi to i32                  ; 2 uses
  store i32 %i.oj, ptr %i.o, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ok = load i32, ptr %4, align 8
  switch i32 %i.ok, label %proto_item_set_generated.exit327 [
    i32 2, label %bb.by
    i32 3, label %bb.ca
  ]

bb.by:                                            ; preds = %bb.bx
  %i.ol = load ptr, ptr %i.v, align 8
  %i.om = load i32, ptr %i.ol, align 1
  %i.on = load i32, ptr @hf_ftp_epsv_ip, align 4
  %i.oo = call ptr @proto_tree_add_ipv4(ptr noundef %i.by, i32 noundef %i.on, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.om) ; 2 uses
  %.not.i323 = icmp eq ptr %i.oo, null
  br i1 %.not.i323, label %proto_item_set_generated.exit327, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.op = getelementptr i8, ptr %i.oo, i64 40
  %i.oq = load ptr, ptr %i.op, align 8            ; 2 uses
  %.not5.i324 = icmp eq ptr %i.oq, null
  br i1 %.not5.i324, label %proto_item_set_generated.exit327, label %proto_item_set_generated.exit327.sink.split

bb.ca:                                            ; preds = %bb.bx
  %i.or = load i32, ptr @hf_ftp_epsv_ipv6, align 4
  %i.os = load ptr, ptr %i.v, align 8
  %i.ot = call ptr @proto_tree_add_ipv6(ptr noundef %i.by, i32 noundef %i.or, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef %i.os) ; 2 uses
  %.not.i325 = icmp eq ptr %i.ot, null
  br i1 %.not.i325, label %proto_item_set_generated.exit327, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ou = getelementptr i8, ptr %i.ot, i64 40
  %i.ov = load ptr, ptr %i.ou, align 8            ; 2 uses
  %.not5.i326 = icmp eq ptr %i.ov, null
  br i1 %.not5.i326, label %proto_item_set_generated.exit327, label %proto_item_set_generated.exit327.sink.split

proto_item_set_generated.exit327.sink.split:      ; preds = %bb.cb, %bb.bz
  %.sink441 = phi ptr [ %i.oq, %bb.bz ], [ %i.ov, %bb.cb ]
  %i.ow = getelementptr i8, ptr %.sink441, i64 28 ; 2 uses
  %i.ox = load i32, ptr %i.ow, align 4
  %i.oy = or i32 %i.ox, 2
  store i32 %i.oy, ptr %i.ow, align 4
  br label %proto_item_set_generated.exit327

proto_item_set_generated.exit327:                 ; preds = %proto_item_set_generated.exit327.sink.split, %bb.bz, %bb.by, %bb.cb, %bb.ca, %bb.bx
  %i.oz = load i32, ptr @hf_ftp_epsv_port, align 4
  %i.pa = add i32 %i.od, 4
  %i.pb = load i16, ptr %i.n, align 2
  %i.pc = zext i16 %i.pb to i32
  %i.pd = call ptr @proto_tree_add_uint(ptr noundef %i.by, i32 noundef %i.oz, ptr noundef %0, i32 noundef %i.pa, i32 noundef %i.oj, i32 noundef %i.pc) ; 0 uses
  %i.pe = load i16, ptr %i.n, align 2
  %i.pf = getelementptr i8, ptr %1, i64 232
  call fastcc void @create_and_link_data_conversation(ptr noundef %1, ptr noundef nonnull %4, i16 noundef zeroext %i.pe, ptr noundef %i.pf, i16 noundef zeroext 0, ptr noundef nonnull @.str.186)
  br label %bb.cc

parse_extended_pasv_response.exit.thread:         ; preds = %bb.bt, %.preheader.i318, %.thread.1.i, %.thread.i, %isvalid_rfc2428_delimiter.exit.thread.i, %parse_extended_pasv_response.exit.thread376
  %i.pg = load i32, ptr %i.e, align 4             ; 2 uses
  %i.ph = xor i32 %i.pg, -1
  %i.pi = add i32 %i.hk, %i.ph
  %i.pj = call ptr @proto_tree_add_expert(ptr noundef %i.by, ptr noundef %1, ptr noundef nonnull @ei_ftp_epsv_args_invalid, ptr noundef %0, i32 noundef %i.pi, i32 noundef %i.pg) ; 0 uses
  br label %bb.cc

bb.cc:                                            ; preds = %proto_item_set_generated.exit327, %parse_extended_pasv_response.exit.thread, %bb.br
  %.0268380 = load i32, ptr %i.c, align 4         ; 3 uses
  %i.pk = call zeroext i1 @tvb_offset_exists(ptr noundef %0, i32 noundef %.0268380)
  br i1 %i.pk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.cc, %.lr.ph
  %.0268381 = phi i32 [ %.0268, %.lr.ph ], [ %.0268380, %bb.cc ] ; 3 uses
  %i.pl = call zeroext i1 @tvb_find_line_end_remaining(ptr noundef %0, i32 noundef %.0268381, ptr noundef null, ptr noundef nonnull %i.c) ; 0 uses
  %i.pm = load i32, ptr %i.c, align 4
  %i.pn = sub i32 %i.pm, %.0268381
  %i.po = call ptr @proto_tree_add_format_text(ptr noundef %i.bd, ptr noundef %0, i32 noundef %.0268381, i32 noundef %i.pn) ; 0 uses
  %.0268 = load i32, ptr %i.c, align 4            ; 3 uses
  %i.pp = call zeroext i1 @tvb_offset_exists(ptr noundef %0, i32 noundef %.0268)
  br i1 %i.pp, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph, %bb.cc
  %.0268.lcssa = phi i32 [ %.0268380, %bb.cc ], [ %.0268, %.lr.ph ]
  %i.pq = call ptr @wmem_file_scope()
  %i.pr = load i32, ptr @proto_ftp, align 4
  %i.ps = call ptr @p_get_proto_data(ptr noundef %i.pq, ptr noundef %1, i32 noundef %i.pr, i32 noundef 0) ; 2 uses
  %.not305 = icmp eq ptr %i.ps, null
  br i1 %.not305, label %proto_item_set_generated.exit330, label %bb.cd

bb.cd:                                            ; preds = %._crit_edge
  %i.pt = load ptr, ptr %i.ps, align 8            ; 2 uses
  %.not306 = icmp eq ptr %i.pt, null
  br i1 %.not306, label %proto_item_set_generated.exit330, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.pu = load i32, ptr @hf_ftp_current_working_directory, align 4
  %i.pv = call ptr @wmem_strbuf_get_str(ptr noundef nonnull %i.pt)
  %i.pw = call ptr @proto_tree_add_string(ptr noundef %2, i32 noundef %i.pu, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef %i.pv) ; 2 uses
  %.not.i328 = icmp eq ptr %i.pw, null
  br i1 %.not.i328, label %proto_item_set_generated.exit330, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.px = getelementptr i8, ptr %i.pw, i64 40
  %i.py = load ptr, ptr %i.px, align 8            ; 2 uses
  %.not5.i329 = icmp eq ptr %i.py, null
  br i1 %.not5.i329, label %proto_item_set_generated.exit330, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.pz = getelementptr i8, ptr %i.py, i64 28     ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 4
  %i.qb = or i32 %i.qa, 2
  store i32 %i.qb, ptr %i.pz, align 4
  br label %proto_item_set_generated.exit330

proto_item_set_generated.exit330:                 ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cd, %._crit_edge
  %i.qc = load ptr, ptr %i.af, align 8
  %i.qd = getelementptr i8, ptr %i.qc, i64 53
  %i.qe = load i16, ptr %i.qd, align 1
  %i.qf = and i16 %i.qe, 8
  %.not307 = icmp eq i16 %i.qf, 0
  br i1 %.not307, label %proto_item_set_generated.exit357, label %bb.ch

bb.ch:                                            ; preds = %proto_item_set_generated.exit330
  %i.qg = load ptr, ptr @ftp_command_to_data_hash, align 8
  %i.qh = getelementptr i8, ptr %1, i64 20        ; 3 uses
  %i.qi = load i32, ptr %i.qh, align 4
  %i.qj = zext i32 %i.qi to i64
  %i.qk = inttoptr i64 %i.qj to ptr
  %i.ql = call ptr @g_hash_table_lookup(ptr noundef %i.qg, ptr noundef %i.qk) ; 13 uses
  %.not308 = icmp eq ptr %i.ql, null
  br i1 %.not308, label %proto_item_set_generated.exit357, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.qm = load i32, ptr %i.qh, align 4
  %i.qn = getelementptr i8, ptr %i.ql, i64 8      ; 2 uses
  %i.qo = load i32, ptr %i.qn, align 8
  %i.qp = icmp eq i32 %i.qm, %i.qo
  br i1 %i.qp, label %bb.cj, label %proto_item_set_generated.exit351

bb.cj:                                            ; preds = %bb.ci
  %i.qq = load i32, ptr @hf_ftp_command_response_frames, align 4
  %i.qr = getelementptr i8, ptr %i.ql, i64 88     ; 2 uses
  %i.qs = load i32, ptr %i.qr, align 8
  %i.qt = call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.qq, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.qs) ; 2 uses
  %.not.i331 = icmp eq ptr %i.qt, null
  br i1 %.not.i331, label %proto_item_set_generated.exit333, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.qu = getelementptr i8, ptr %i.qt, i64 40
  %i.qv = load ptr, ptr %i.qu, align 8            ; 2 uses
  %.not5.i332 = icmp eq ptr %i.qv, null
  br i1 %.not5.i332, label %proto_item_set_generated.exit333, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.qw = getelementptr i8, ptr %i.qv, i64 28     ; 2 uses
  %i.qx = load i32, ptr %i.qw, align 4
  %i.qy = or i32 %i.qx, 2
  store i32 %i.qy, ptr %i.qw, align 4
  br label %proto_item_set_generated.exit333

proto_item_set_generated.exit333:                 ; preds = %bb.cj, %bb.ck, %bb.cl
  %i.qz = load i32, ptr @hf_ftp_command_response_bytes, align 4
  %i.ra = getelementptr i8, ptr %i.ql, i64 92     ; 2 uses
  %i.rb = load i32, ptr %i.ra, align 4
  %i.rc = call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.qz, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.rb) ; 2 uses
  %.not.i334 = icmp eq ptr %i.rc, null
  br i1 %.not.i334, label %proto_item_set_generated.exit336, label %bb.cm

bb.cm:                                            ; preds = %proto_item_set_generated.exit333
  %i.rd = getelementptr i8, ptr %i.rc, i64 40
  %i.re = load ptr, ptr %i.rd, align 8            ; 2 uses
  %.not5.i335 = icmp eq ptr %i.re, null
  br i1 %.not5.i335, label %proto_item_set_generated.exit336, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.rf = getelementptr i8, ptr %i.re, i64 28     ; 2 uses
  %i.rg = load i32, ptr %i.rf, align 4
  %i.rh = or i32 %i.rg, 2
  store i32 %i.rh, ptr %i.rf, align 4
  br label %proto_item_set_generated.exit336

proto_item_set_generated.exit336:                 ; preds = %proto_item_set_generated.exit333, %bb.cm, %bb.cn
  %i.ri = load i32, ptr @hf_ftp_command_response_first_frame_num, align 4
  %i.rj = getelementptr i8, ptr %i.ql, i64 40
  %i.rk = load i32, ptr %i.rj, align 8
  %i.rl = call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.ri, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.rk) ; 2 uses
  %.not.i337 = icmp eq ptr %i.rl, null
  br i1 %.not.i337, label %proto_item_set_generated.exit339, label %bb.co

bb.co:                                            ; preds = %proto_item_set_generated.exit336
  %i.rm = getelementptr i8, ptr %i.rl, i64 40
  %i.rn = load ptr, ptr %i.rm, align 8            ; 2 uses
  %.not5.i338 = icmp eq ptr %i.rn, null
  br i1 %.not5.i338, label %proto_item_set_generated.exit339, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ro = getelementptr i8, ptr %i.rn, i64 28     ; 2 uses
  %i.rp = load i32, ptr %i.ro, align 4
  %i.rq = or i32 %i.rp, 2
  store i32 %i.rq, ptr %i.ro, align 4
  br label %proto_item_set_generated.exit339

proto_item_set_generated.exit339:                 ; preds = %proto_item_set_generated.exit336, %bb.co, %bb.cp
  %i.rr = load i32, ptr @hf_ftp_command_response_last_frame_num, align 4
  %i.rs = getelementptr i8, ptr %i.ql, i64 64
  %i.rt = load i32, ptr %i.rs, align 8
  %i.ru = call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.rr, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.rt) ; 2 uses
  %.not.i340 = icmp eq ptr %i.ru, null
  br i1 %.not.i340, label %proto_item_set_generated.exit342, label %bb.cq

bb.cq:                                            ; preds = %proto_item_set_generated.exit339
  %i.rv = getelementptr i8, ptr %i.ru, i64 40
  %i.rw = load ptr, ptr %i.rv, align 8            ; 2 uses
  %.not5.i341 = icmp eq ptr %i.rw, null
  br i1 %.not5.i341, label %proto_item_set_generated.exit342, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.rx = getelementptr i8, ptr %i.rw, i64 28     ; 2 uses
  %i.ry = load i32, ptr %i.rx, align 4
  %i.rz = or i32 %i.ry, 2
  store i32 %i.rz, ptr %i.rx, align 4
  br label %proto_item_set_generated.exit342

proto_item_set_generated.exit342:                 ; preds = %proto_item_set_generated.exit339, %bb.cq, %bb.cr
  %i.sa = load i32, ptr %i.qr, align 8
  %i.sb = icmp ugt i32 %i.sa, 1
  br i1 %i.sb, label %bb.cs, label %proto_item_set_generated.exit348

bb.cs:                                            ; preds = %proto_item_set_generated.exit342
  %i.sc = getelementptr i8, ptr %i.ql, i64 72
  %i.sd = load i64, ptr %i.sc, align 8
  %i.se = getelementptr i8, ptr %i.ql, i64 48
  %i.sf = load i64, ptr %i.se, align 8
  %i.sg = sub i64 %i.sd, %i.sf
  %i.sh = trunc i64 %i.sg to i32
  %i.si = getelementptr i8, ptr %i.ql, i64 80
  %i.sj = load i32, ptr %i.si, align 8
  %i.sk = getelementptr i8, ptr %i.ql, i64 56
  %i.sl = load i32, ptr %i.sk, align 8
  %i.sm = mul i32 %i.sh, 1000
  %i.sn = add i32 %i.sj, 500000
  %i.so = sub i32 %i.sn, %i.sl
  %i.sp = sdiv i32 %i.so, 1000000
  %i.sq = add i32 %i.sp, %i.sm                    ; 2 uses
  %i.sr = load i32, ptr @hf_ftp_command_response_duration, align 4
  %i.ss = call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.sr, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.sq) ; 2 uses
  %.not.i343 = icmp eq ptr %i.ss, null
  br i1 %.not.i343, label %proto_item_set_generated.exit345, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.st = getelementptr i8, ptr %i.ss, i64 40
  %i.su = load ptr, ptr %i.st, align 8            ; 2 uses
  %.not5.i344 = icmp eq ptr %i.su, null
  br i1 %.not5.i344, label %proto_item_set_generated.exit345, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.sv = getelementptr i8, ptr %i.su, i64 28     ; 2 uses
  %i.sw = load i32, ptr %i.sv, align 4
  %i.sx = or i32 %i.sw, 2
  store i32 %i.sx, ptr %i.sv, align 4
  br label %proto_item_set_generated.exit345

proto_item_set_generated.exit345:                 ; preds = %bb.cs, %bb.ct, %bb.cu
  %i.sy = load i32, ptr %i.ra, align 4
  %i.sz = uitofp i32 %i.sy to double
  %i.ta = fmul nnan double %i.sz, 8.000000e+00
  %i.tb = sitofp i32 %i.sq to double
  %i.tc = fdiv double %i.tb, 1.000000e+03
  %i.td = fdiv double %i.ta, %i.tc
  %i.te = fdiv double %i.td, 1.000000e+03
  %i.tf = fptoui double %i.te to i32
  %i.tg = load i32, ptr @hf_ftp_command_response_kbps, align 4
  %i.th = call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.tg, ptr noundef %0, i32 noundef %.0268.lcssa, i32 noundef 0, i32 noundef %i.tf) ; 2 uses
  %.not.i346 = icmp eq ptr %i.th, null
  br i1 %.not.i346, label %proto_item_set_generated.exit348, label %bb.cv

bb.cv:                                            ; preds = %proto_item_set_generated.exit345
  %i.ti = getelementptr i8, ptr %i.th, i64 40
  %i.tj = load ptr, ptr %i.ti, align 8            ; 2 uses
  %.not5.i347 = icmp eq ptr %i.tj, null
  br i1 %.not5.i347, label %proto_item_set_generated.exit348, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.tk = getelementptr i8, ptr %i.tj, i64 28     ; 2 uses
  %i.tl = load i32, ptr %i.tk, align 4
  %i.tm = or i32 %i.tl, 2
  store i32 %i.tm, ptr %i.tk, align 4
  br label %proto_item_set_generated.exit348

proto_item_set_generated.exit348:                 ; preds = %bb.cw, %bb.cv, %proto_item_set_generated.exit345, %proto_item_set_generated.exit342
  %i.tn = load i32, ptr @hf_ftp_command_setup_frame, align 4
  %i.to = getelementptr i8, ptr %i.ql, i64 24
  %i.tp = load i32, ptr %i.to, align 8
  %i.tq = call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.tn, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.tp) ; 2 uses
  %.not.i349 = icmp eq ptr %i.tq, null
  br i1 %.not.i349, label %proto_item_set_generated.exit351, label %bb.cx

bb.cx:                                            ; preds = %proto_item_set_generated.exit348
  %i.tr = getelementptr i8, ptr %i.tq, i64 40
  %i.ts = load ptr, ptr %i.tr, align 8            ; 2 uses
  %.not5.i350 = icmp eq ptr %i.ts, null
  br i1 %.not5.i350, label %proto_item_set_generated.exit351, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.tt = getelementptr i8, ptr %i.ts, i64 28     ; 2 uses
  %i.tu = load i32, ptr %i.tt, align 4
  %i.tv = or i32 %i.tu, 2
  store i32 %i.tv, ptr %i.tt, align 4
  br label %proto_item_set_generated.exit351

proto_item_set_generated.exit351:                 ; preds = %bb.cy, %bb.cx, %proto_item_set_generated.exit348, %bb.ci
  %i.tw = load i32, ptr %i.qh, align 4
  %i.tx = getelementptr i8, ptr %i.ql, i64 24
  %i.ty = load i32, ptr %i.tx, align 8
  %i.tz = icmp eq i32 %i.tw, %i.ty
  br i1 %i.tz, label %bb.cz, label %proto_item_set_generated.exit357

bb.cz:                                            ; preds = %proto_item_set_generated.exit351
  %i.ua = load i32, ptr @hf_ftp_command_command, align 4
  %i.ub = load ptr, ptr %i.ql, align 8
  %i.uc = call ptr @proto_tree_add_string(ptr noundef %2, i32 noundef %i.ua, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef %i.ub) ; 2 uses
  %.not.i352 = icmp eq ptr %i.uc, null
  br i1 %.not.i352, label %proto_item_set_generated.exit354, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ud = getelementptr i8, ptr %i.uc, i64 40
  %i.ue = load ptr, ptr %i.ud, align 8            ; 2 uses
  %.not5.i353 = icmp eq ptr %i.ue, null
  br i1 %.not5.i353, label %proto_item_set_generated.exit354, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.uf = getelementptr i8, ptr %i.ue, i64 28     ; 2 uses
  %i.ug = load i32, ptr %i.uf, align 4
  %i.uh = or i32 %i.ug, 2
  store i32 %i.uh, ptr %i.uf, align 4
  br label %proto_item_set_generated.exit354

proto_item_set_generated.exit354:                 ; preds = %bb.cz, %bb.da, %bb.db
  %i.ui = load i32, ptr @hf_ftp_command_command_frame, align 4
  %i.uj = load i32, ptr %i.qn, align 8
  %i.uk = call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.ui, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.uj) ; 2 uses
  %.not.i355 = icmp eq ptr %i.uk, null
  br i1 %.not.i355, label %proto_item_set_generated.exit357, label %bb.dc

bb.dc:                                            ; preds = %proto_item_set_generated.exit354
  %i.ul = getelementptr i8, ptr %i.uk, i64 40
  %i.um = load ptr, ptr %i.ul, align 8            ; 2 uses
  %.not5.i356 = icmp eq ptr %i.um, null
  br i1 %.not5.i356, label %proto_item_set_generated.exit357, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.un = getelementptr i8, ptr %i.um, i64 28     ; 2 uses
  %i.uo = load i32, ptr %i.un, align 4
  %i.up = or i32 %i.uo, 2
  store i32 %i.up, ptr %i.un, align 4
  br label %proto_item_set_generated.exit357

proto_item_set_generated.exit357:                 ; preds = %bb.dd, %bb.dc, %proto_item_set_generated.exit354, %bb.ch, %proto_item_set_generated.exit351, %proto_item_set_generated.exit330
  %i.uq = call i32 @tvb_captured_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret i32 %i.uq
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ftpdata(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_captured_length(ptr noundef %0) ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 8          ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @col_set_str(ptr noundef %i.c, i32 noundef 35, ptr noundef nonnull @.str.104)
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = tail call i32 @tvb_reported_length(ptr noundef %0)
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.d, i32 noundef 25, ptr noundef nonnull @.str.200, i32 noundef %i.e)
  %i.f = load i32, ptr @proto_ftp_data, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.h = tail call ptr @find_conversation_pinfo(ptr noundef %1, i32 noundef 0) ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr @hf_ftp_data_setup_frame, align 4
  %i.j = getelementptr i8, ptr %i.h, i64 28       ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.k) ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.n, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.n, i64 28       ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = or i32 %i.p, 2
  store i32 %i.q, ptr %i.o, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.b, %bb.c, %bb.d
  %i.r = load i32, ptr @proto_ftp_data, align 4
  %i.s = tail call ptr @conversation_get_proto_data(ptr noundef nonnull %i.h, i32 noundef %i.r) ; 17 uses
  %.not96 = icmp eq ptr %i.s, null
  br i1 %.not96, label %bb.x, label %bb.e

bb.e:                                             ; preds = %proto_item_set_generated.exit
  %i.t = getelementptr i8, ptr %1, i64 80
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 53
  %i.w = load i16, ptr %i.v, align 1
  %i.x = and i16 %i.w, 8
  %.not97 = icmp eq i16 %i.x, 0
  br i1 %.not97, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr i8, ptr %i.s, i64 40       ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %.not98 = icmp eq i32 %i.z, 0
  br i1 %.not98, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %1, i64 20
  %i.ab = load i32, ptr %i.aa, align 4
  store i32 %i.ab, ptr %i.y, align 8
  %i.ac = getelementptr i8, ptr %i.s, i64 48
  %i.ad = getelementptr i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.ac, ptr noundef align 8 dereferenceable(16) %i.ad, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = getelementptr i8, ptr %1, i64 20
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.ag = getelementptr i8, ptr %i.s, i64 64      ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = icmp ugt i32 %i.af, %i.ah
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.af, ptr %i.ag, align 8
  %i.aj = getelementptr i8, ptr %i.s, i64 72
  %i.ak = getelementptr i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.aj, ptr noundef align 8 dereferenceable(16) %i.ak, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = getelementptr i8, ptr %i.s, i64 88      ; 2 uses
  %i.am = load i32, ptr %i.al, align 8
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 8
  %i.ao = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.ap = getelementptr i8, ptr %i.s, i64 92      ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = add i32 %i.aq, %i.ao
  store i32 %i.ar, ptr %i.ap, align 4
  %i.as = load i32, ptr %i.j, align 4
  %i.at = getelementptr i8, ptr %i.s, i64 24
  store i32 %i.as, ptr %i.at, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %i.au = getelementptr i8, ptr %i.s, i64 16      ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not99 = icmp eq ptr %i.av, null
  br i1 %.not99, label %proto_item_set_generated.exit106, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = load i32, ptr @hf_ftp_data_setup_method, align 4
  %i.ax = tail call ptr @proto_tree_add_string(ptr noundef %2, i32 noundef %i.aw, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.av) ; 2 uses
  %i.ay = load ptr, ptr %i.b, align 8
  %i.az = load ptr, ptr %i.au, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ay, i32 noundef 25, ptr noundef nonnull @.str.201, ptr noundef %i.az)
  %.not.i104 = icmp eq ptr %i.ax, null
  br i1 %.not.i104, label %proto_item_set_generated.exit106, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr i8, ptr %i.ax, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not5.i105 = icmp eq ptr %i.bb, null
  br i1 %.not5.i105, label %proto_item_set_generated.exit106, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr i8, ptr %i.bb, i64 28     ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = or i32 %i.bd, 2
  store i32 %i.be, ptr %i.bc, align 4
  br label %proto_item_set_generated.exit106

proto_item_set_generated.exit106:                 ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.bf = load ptr, ptr %i.s, align 8             ; 2 uses
  %.not100 = icmp eq ptr %i.bf, null
  br i1 %.not100, label %proto_item_set_generated.exit112, label %bb.o

bb.o:                                             ; preds = %proto_item_set_generated.exit106
  %i.bg = load i32, ptr @hf_ftp_data_command, align 4
  %i.bh = tail call ptr @proto_tree_add_string(ptr noundef %2, i32 noundef %i.bg, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.bf) ; 2 uses
  %.not.i107 = icmp eq ptr %i.bh, null
  br i1 %.not.i107, label %proto_item_set_generated.exit112.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr i8, ptr %i.bh, i64 40     ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not5.i108 = icmp eq ptr %i.bj, null
  br i1 %.not5.i108, label %proto_item_set_generated.exit109, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr i8, ptr %i.bj, i64 28     ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = or i32 %i.bl, 2
  store i32 %i.bm, ptr %i.bk, align 4
  br label %proto_item_set_generated.exit109

proto_item_set_generated.exit109:                 ; preds = %bb.p, %bb.q
  %i.bn = load ptr, ptr %i.b, align 8
  %i.bo = load ptr, ptr %i.s, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.bn, i32 noundef 25, ptr noundef nonnull @.str.201, ptr noundef %i.bo)
  %i.bp = load i32, ptr @hf_ftp_data_command_frame, align 4
  %i.bq = getelementptr i8, ptr %i.s, i64 8
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.bp, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.br) ; 0 uses
  %i.bt = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not5.i111 = icmp eq ptr %i.bt, null
  br i1 %.not5.i111, label %proto_item_set_generated.exit112, label %bb.r

bb.r:                                             ; preds = %proto_item_set_generated.exit109
  %i.bu = getelementptr i8, ptr %i.bt, i64 28     ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = or i32 %i.bv, 2
  store i32 %i.bw, ptr %i.bu, align 4
  br label %proto_item_set_generated.exit112

proto_item_set_generated.exit112.critedge:        ; preds = %bb.o
  %i.bx = load ptr, ptr %i.b, align 8
  %i.by = load ptr, ptr %i.s, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.bx, i32 noundef 25, ptr noundef nonnull @.str.201, ptr noundef %i.by)
  %i.bz = load i32, ptr @hf_ftp_data_command_frame, align 4
  %i.ca = getelementptr i8, ptr %i.s, i64 8
  %i.cb = load i32, ptr %i.ca, align 8
  %i.cc = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.bz, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.cb) ; 0 uses
  br label %proto_item_set_generated.exit112

proto_item_set_generated.exit112:                 ; preds = %proto_item_set_generated.exit112.critedge, %bb.r, %proto_item_set_generated.exit109, %proto_item_set_generated.exit106
  %i.cd = getelementptr i8, ptr %i.s, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not101 = icmp eq ptr %i.ce, null
  br i1 %.not101, label %proto_item_set_generated.exit115, label %bb.s

bb.s:                                             ; preds = %proto_item_set_generated.exit112
end_hunk_1
