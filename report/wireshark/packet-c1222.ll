Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-c1222?download=true
inline.NumInlined: 19
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@c1222_uat = internal unnamed_addr global ptr null, align 8
@.str.182 = private unnamed_addr constant [17 x i8] c"decryption_table\00", align 1
@.str.183 = private unnamed_addr constant [62 x i8] c"Table of security parameters for decryption of C12.22 packets\00", align 1
@proto_reg_handoff_c1222.initialized = internal unnamed_addr global i1 false, align 1
@.str.184 = private unnamed_addr constant [9 x i8] c"tcp.port\00", align 1
@.str.185 = private unnamed_addr constant [9 x i8] c"udp.port\00", align 1
@c1222_baseoid_len = internal unnamed_addr global i32 0, align 4
@c1222_baseoid = internal unnamed_addr global ptr null, align 8
@.str.186 = private unnamed_addr constant [10 x i8] c"Cleartext\00", align 1
@.str.187 = private unnamed_addr constant [30 x i8] c"Cleartext with authentication\00", align 1
@.str.188 = private unnamed_addr constant [31 x i8] c"Ciphertext with authentication\00", align 1
@c1222_security_modes = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.186 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.187 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.188 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.190 = private unnamed_addr constant [15 x i8] c"Always respond\00", align 1
@.str.191 = private unnamed_addr constant [21 x i8] c"Respond on exception\00", align 1
@.str.192 = private unnamed_addr constant [14 x i8] c"Never respond\00", align 1
@c1222_response_control = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.190 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.191 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.192 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.194 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.195 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.196 = private unnamed_addr constant [22 x i8] c"Service Not Supported\00", align 1
@.str.197 = private unnamed_addr constant [32 x i8] c"Insufficient Security Clearance\00", align 1
@.str.198 = private unnamed_addr constant [23 x i8] c"Operation Not Possible\00", align 1
@.str.199 = private unnamed_addr constant [31 x i8] c"Inappropriate Action Requested\00", align 1
@.str.200 = private unnamed_addr constant [12 x i8] c"Device Busy\00", align 1
@.str.201 = private unnamed_addr constant [15 x i8] c"Data Not Ready\00", align 1
@.str.202 = private unnamed_addr constant [12 x i8] c"Data Locked\00", align 1
@.str.203 = private unnamed_addr constant [20 x i8] c"Renegotiate Request\00", align 1
@.str.204 = private unnamed_addr constant [31 x i8] c"Invalid Service Sequence State\00", align 1
@.str.205 = private unnamed_addr constant [25 x i8] c"Security Mechanism Error\00", align 1
@.str.206 = private unnamed_addr constant [26 x i8] c"Unknown Application Title\00", align 1
@.str.207 = private unnamed_addr constant [17 x i8] c"Network Time-out\00", align 1
@.str.208 = private unnamed_addr constant [22 x i8] c"Network Not Reachable\00", align 1
@.str.209 = private unnamed_addr constant [18 x i8] c"Request Too Large\00", align 1
@.str.210 = private unnamed_addr constant [19 x i8] c"Response Too Large\00", align 1
@.str.211 = private unnamed_addr constant [26 x i8] c"Segmentation Not Possible\00", align 1
@.str.212 = private unnamed_addr constant [19 x i8] c"Segmentation Error\00", align 1
@.str.213 = private unnamed_addr constant [9 x i8] c"Identify\00", align 1
@.str.214 = private unnamed_addr constant [10 x i8] c"Terminate\00", align 1
@.str.215 = private unnamed_addr constant [11 x i8] c"Disconnect\00", align 1
@.str.216 = private unnamed_addr constant [10 x i8] c"Full Read\00", align 1
@.str.217 = private unnamed_addr constant [13 x i8] c"Default Read\00", align 1
@.str.218 = private unnamed_addr constant [20 x i8] c"Partial Read Offset\00", align 1
@.str.219 = private unnamed_addr constant [11 x i8] c"Full Write\00", align 1
@.str.220 = private unnamed_addr constant [14 x i8] c"Default Write\00", align 1
@.str.221 = private unnamed_addr constant [21 x i8] c"Partial Write Offset\00", align 1
@.str.222 = private unnamed_addr constant [6 x i8] c"Logon\00", align 1
@.str.223 = private unnamed_addr constant [9 x i8] c"Security\00", align 1
@.str.224 = private unnamed_addr constant [7 x i8] c"Logoff\00", align 1
@.str.225 = private unnamed_addr constant [13 x i8] c"Authenticate\00", align 1
@.str.226 = private unnamed_addr constant [10 x i8] c"Negotiate\00", align 1
@.str.227 = private unnamed_addr constant [25 x i8] c"Negotiate w/ 1 Baud Rate\00", align 1
@.str.228 = private unnamed_addr constant [26 x i8] c"Negotiate w/ 2 Baud Rates\00", align 1
@.str.229 = private unnamed_addr constant [26 x i8] c"Negotiate w/ 3 Baud Rates\00", align 1
@.str.230 = private unnamed_addr constant [26 x i8] c"Negotiate w/ 4 Baud Rates\00", align 1
@.str.231 = private unnamed_addr constant [26 x i8] c"Negotiate w/ 5 Baud Rates\00", align 1
@.str.232 = private unnamed_addr constant [26 x i8] c"Negotiate w/ 6 Baud Rates\00", align 1
@.str.233 = private unnamed_addr constant [26 x i8] c"Negotiate w/ 7 Baud Rates\00", align 1
@.str.234 = private unnamed_addr constant [26 x i8] c"Negotiate w/ 8 Baud Rates\00", align 1
@.str.235 = private unnamed_addr constant [26 x i8] c"Negotiate w/ 9 Baud Rates\00", align 1
@.str.236 = private unnamed_addr constant [27 x i8] c"Negotiate w/ 10 Baud Rates\00", align 1
@.str.237 = private unnamed_addr constant [27 x i8] c"Negotiate w/ 11 Baud Rates\00", align 1
@.str.238 = private unnamed_addr constant [5 x i8] c"Wait\00", align 1
@.str.239 = private unnamed_addr constant [13 x i8] c"Timing Setup\00", align 1
@commandnames = internal constant [47 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.194 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.195 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.196 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.197 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.198 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.199 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.200 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.201 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.202 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.203 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.204 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.205 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.206 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.207 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.208 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.209 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.210 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.211 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.212 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.213 }, { i32, [4 x i8], ptr } { i32 33, [4 x i8] zeroinitializer, ptr @.str.214 }, { i32, [4 x i8], ptr } { i32 34, [4 x i8] zeroinitializer, ptr @.str.215 }, { i32, [4 x i8], ptr } { i32 48, [4 x i8] zeroinitializer, ptr @.str.216 }, { i32, [4 x i8], ptr } { i32 62, [4 x i8] zeroinitializer, ptr @.str.217 }, { i32, [4 x i8], ptr } { i32 63, [4 x i8] zeroinitializer, ptr @.str.218 }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 78, [4 x i8] zeroinitializer, ptr @.str.220 }, { i32, [4 x i8], ptr } { i32 79, [4 x i8] zeroinitializer, ptr @.str.221 }, { i32, [4 x i8], ptr } { i32 80, [4 x i8] zeroinitializer, ptr @.str.222 }, { i32, [4 x i8], ptr } { i32 81, [4 x i8] zeroinitializer, ptr @.str.223 }, { i32, [4 x i8], ptr } { i32 82, [4 x i8] zeroinitializer, ptr @.str.224 }, { i32, [4 x i8], ptr } { i32 83, [4 x i8] zeroinitializer, ptr @.str.225 }, { i32, [4 x i8], ptr } { i32 96, [4 x i8] zeroinitializer, ptr @.str.226 }, { i32, [4 x i8], ptr } { i32 97, [4 x i8] zeroinitializer, ptr @.str.227 }, { i32, [4 x i8], ptr } { i32 98, [4 x i8] zeroinitializer, ptr @.str.228 }, { i32, [4 x i8], ptr } { i32 99, [4 x i8] zeroinitializer, ptr @.str.229 }, { i32, [4 x i8], ptr } { i32 100, [4 x i8] zeroinitializer, ptr @.str.230 }, { i32, [4 x i8], ptr } { i32 101, [4 x i8] zeroinitializer, ptr @.str.231 }, { i32, [4 x i8], ptr } { i32 102, [4 x i8] zeroinitializer, ptr @.str.232 }, { i32, [4 x i8], ptr } { i32 103, [4 x i8] zeroinitializer, ptr @.str.233 }, { i32, [4 x i8], ptr } { i32 104, [4 x i8] zeroinitializer, ptr @.str.234 }, { i32, [4 x i8], ptr } { i32 105, [4 x i8] zeroinitializer, ptr @.str.235 }, { i32, [4 x i8], ptr } { i32 106, [4 x i8] zeroinitializer, ptr @.str.236 }, { i32, [4 x i8], ptr } { i32 107, [4 x i8] zeroinitializer, ptr @.str.237 }, { i32, [4 x i8], ptr } { i32 112, [4 x i8] zeroinitializer, ptr @.str.238 }, { i32, [4 x i8], ptr } { i32 113, [4 x i8] zeroinitializer, ptr @.str.239 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.241 = private unnamed_addr constant [36 x i8] c"Post response in ST-8 on completion\00", align 1
@.str.242 = private unnamed_addr constant [35 x i8] c"Post response in ST-8 on exception\00", align 1
@.str.243 = private unnamed_addr constant [29 x i8] c"Do not post response in ST-8\00", align 1
@.str.244 = private unnamed_addr constant [45 x i8] c"Post response in ST-8 now, and on completion\00", align 1
@c1222_proc_response_control = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.241 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.242 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.243 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.244 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@c1222_Called_AP_title_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.101 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.104 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@c1222_Calling_AP_title_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.107 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.109 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@c1222_Authentication_value_encoding_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.117 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.119 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@c1222_Calling_authentication_value_single_asn1_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.122 }, { i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.124 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@c1222_Calling_authentication_value_c1221_U_vals = internal constant [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.130 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.133 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.136 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.251 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@aSO_context = internal global ptr null, align 8
@aSO_context_len = internal global i32 0, align 4
@aSO_context_allocated = internal global i32 0, align 4
@called_AP_title = internal global ptr null, align 8
@called_AP_title_len = internal global i32 0, align 4
@called_AP_title_allocated = internal global i32 0, align 4
@called_AP_invocation_id = internal global ptr null, align 8
@called_AP_invocation_id_len = internal global i32 0, align 4
@called_AP_invocation_id_allocated = internal global i32 0, align 4
@calling_AE_qualifier = internal global ptr null, align 8
@calling_AE_qualifier_len = internal global i32 0, align 4
@calling_AE_qualifier_allocated = internal global i32 0, align 4
@calling_AP_invocation_id = internal global ptr null, align 8
@calling_AP_invocation_id_len = internal global i32 0, align 4
@calling_AP_invocation_id_allocated = internal global i32 0, align 4
@mechanism_name = internal global ptr null, align 8
@mechanism_name_len = internal global i32 0, align 4
@mechanism_name_allocated = internal global i32 0, align 4
@calling_authentication_value = internal global ptr null, align 8
@calling_authentication_value_len = internal global i32 0, align 4
@calling_authentication_value_allocated = internal global i32 0, align 4
@user_information = internal global ptr null, align 8
@user_information_len = internal global i32 0, align 4
@user_information_allocated = internal global i32 0, align 4
@calling_AP_title = internal global ptr null, align 8
@calling_AP_title_len = internal global i32 0, align 4
@calling_AP_title_allocated = internal global i32 0, align 4
@key_id_element = internal global ptr null, align 8
@key_id_element_len = internal global i32 0, align 4
@key_id_element_allocated = internal global i32 0, align 4
@iv_element = internal global ptr null, align 8
@iv_element_len = internal global i32 0, align 4
@iv_element_allocated = internal global i32 0, align 4
@canonifyTable = internal unnamed_addr constant [12 x { i8, i8, i8, i8, [4 x i8], ptr, ptr, ptr }] [{ i8, i8, i8, i8, [4 x i8], ptr, ptr, ptr } { i8 0, i8 0, i8 -95, i8 1, [4 x i8] zeroinitializer, ptr @aSO_context, ptr @aSO_context_len, ptr @aSO_context_allocated }, { i8, i8, i8, i8, [4 x i8], ptr, ptr, ptr } { i8 1, i8 0, i8 -94, i8 1, [4 x i8] zeroinitializer, ptr @called_AP_title, ptr @called_AP_title_len, ptr @called_AP_title_allocated }, { i8, i8, i8, i8, [4 x i8], ptr, ptr, ptr } { i8 0, i8 0, i8 -92, i8 1, [4 x i8] zeroinitializer, ptr @called_AP_invocation_id, ptr @called_AP_invocation_id_len, ptr @called_AP_invocation_id_allocated }, { i8, i8, i8, i8, [4 x i8], ptr, ptr, ptr } { i8 0, i8 0, i8 -89, i8 1, [4 x i8] zeroinitializer, ptr @calling_AE_qualifier, ptr @calling_AE_qualifier_len, ptr @calling_AE_qualifier_allocated }, { i8, i8, i8, i8, [4 x i8], ptr, ptr, ptr } { i8 1, i8 0, i8 -88, i8 1, [4 x i8] zeroinitializer, ptr @calling_AP_invocation_id, ptr @calling_AP_invocation_id_len, ptr @calling_AP_invocation_id_allocated }, { i8, i8, i8, i8, [4 x i8], ptr, ptr, ptr } { i8 0, i8 0, i8 -117, i8 1, [4 x i8] zeroinitializer, ptr @mechanism_name, ptr @mechanism_name_len, ptr @mechanism_name_allocated }, { i8, i8, i8, i8, [4 x i8], ptr, ptr, ptr } { i8 0, i8 0, i8 -84, i8 1, [4 x i8] zeroinitializer, ptr @calling_authentication_value, ptr @calling_authentication_value_len, ptr @calling_authentication_value_allocated }, { i8, i8, i8, i8, [4 x i8], ptr, ptr, ptr } { i8 1, i8 1, i8 -66, i8 1, [4 x i8] zeroinitializer, ptr @user_information, ptr @user_information_len, ptr @user_information_allocated }, { i8, i8, i8, i8, [4 x i8], ptr, ptr, ptr } { i8 0, i8 0, i8 -90, i8 1, [4 x i8] zeroinitializer, ptr @calling_AP_title, ptr @calling_AP_title_len, ptr @calling_AP_title_allocated }, { i8, i8, i8, i8, [4 x i8], ptr, ptr, ptr } { i8 0, i8 0, i8 -84, i8 0, [4 x i8] zeroinitializer, ptr @key_id_element, ptr @key_id_element_len, ptr @key_id_element_allocated }, { i8, i8, i8, i8, [4 x i8], ptr, ptr, ptr } { i8 0, i8 0, i8 -84, i8 0, [4 x i8] zeroinitializer, ptr @iv_element, ptr @iv_element_len, ptr @iv_element_allocated }, { i8, i8, i8, i8, [4 x i8], ptr, ptr, ptr } { i8 0, i8 0, i8 0, i8 1, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null }], align 16
@MESSAGE_U_sequence = internal constant [10 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_c1222_aSO_context, i8 2, [3 x i8] zeroinitializer, i32 1, i32 1, [4 x i8] zeroinitializer, ptr @dissect_c1222_ASO_qualifier }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_c1222_called_AP_title, i8 2, [3 x i8] zeroinitializer, i32 2, i32 9, [4 x i8] zeroinitializer, ptr @dissect_c1222_Called_AP_title }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_c1222_called_AP_invocation_id, i8 2, [3 x i8] zeroinitializer, i32 4, i32 1, [4 x i8] zeroinitializer, ptr @dissect_c1222_Called_AP_invocation_id }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_c1222_calling_AP_title, i8 2, [3 x i8] zeroinitializer, i32 6, i32 9, [4 x i8] zeroinitializer, ptr @dissect_c1222_Calling_AP_title }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_c1222_calling_AE_qualifier, i8 2, [3 x i8] zeroinitializer, i32 7, i32 1, [4 x i8] zeroinitializer, ptr @dissect_c1222_Calling_AE_qualifier }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_c1222_calling_AP_invocation_id, i8 2, [3 x i8] zeroinitializer, i32 8, i32 0, [4 x i8] zeroinitializer, ptr @dissect_c1222_Calling_AP_invocation_id }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_c1222_mechanism_name, i8 2, [3 x i8] zeroinitializer, i32 11, i32 3, [4 x i8] zeroinitializer, ptr @dissect_c1222_Mechanism_name }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_c1222_calling_authentication_value, i8 2, [3 x i8] zeroinitializer, i32 12, i32 1, [4 x i8] zeroinitializer, ptr @dissect_c1222_Calling_authentication_value }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_c1222_user_information, i8 2, [3 x i8] zeroinitializer, i32 30, i32 0, [4 x i8] zeroinitializer, ptr @dissect_c1222_User_information }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@Called_AP_title_choice = internal constant [3 x { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @hf_c1222_called_ap_title_abs, i8 0, [3 x i8] zeroinitializer, i32 6, i32 4, [4 x i8] zeroinitializer, ptr @dissect_c1222_OBJECT_IDENTIFIER }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @hf_c1222_called_ap_title_rel, i8 2, [3 x i8] zeroinitializer, i32 0, i32 2, [4 x i8] zeroinitializer, ptr @dissect_c1222_RELATIVE_OID }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@Calling_AP_title_choice = internal constant [3 x { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @hf_c1222_calling_ap_title_abs, i8 0, [3 x i8] zeroinitializer, i32 6, i32 4, [4 x i8] zeroinitializer, ptr @dissect_c1222_OBJECT_IDENTIFIER }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @hf_c1222_calling_ap_title_rel, i8 2, [3 x i8] zeroinitializer, i32 0, i32 2, [4 x i8] zeroinitializer, ptr @dissect_c1222_RELATIVE_OID }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@Calling_authentication_value_U_sequence = internal constant [3 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_c1222_calling_authentication_value_indirect, i8 0, [3 x i8] zeroinitializer, i32 2, i32 5, [4 x i8] zeroinitializer, ptr @dissect_c1222_INTEGER }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_c1222_calling_authentication_value_encoding, i8 99, [3 x i8] zeroinitializer, i32 -1, i32 12, [4 x i8] zeroinitializer, ptr @dissect_c1222_Authentication_value_encoding }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@Authentication_value_encoding_choice = internal constant [3 x { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @hf_c1222_calling_authentication_value_single_asn1, i8 2, [3 x i8] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, ptr @dissect_c1222_Calling_authentication_value_single_asn1 }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @hf_c1222_calling_authentication_value_octet_aligned, i8 2, [3 x i8] zeroinitializer, i32 1, i32 2, [4 x i8] zeroinitializer, ptr @dissect_c1222_OCTET_STRING }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@Calling_authentication_value_single_asn1_choice = internal constant [3 x { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @hf_c1222_calling_authentication_value_c1222, i8 2, [3 x i8] zeroinitializer, i32 1, i32 4, [4 x i8] zeroinitializer, ptr @dissect_c1222_Calling_authentication_value_c1222 }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @hf_c1222_calling_authentication_value_c1221, i8 2, [3 x i8] zeroinitializer, i32 0, i32 4, [4 x i8] zeroinitializer, ptr @dissect_c1222_Calling_authentication_value_c1221 }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@Calling_authentication_value_c1222_U_sequence = internal constant [3 x { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_c1222_key_id_element, i8 2, [3 x i8] zeroinitializer, i32 0, i32 3, [4 x i8] zeroinitializer, ptr @dissect_c1222_Key_id_element }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { ptr @hf_c1222_iv_element, i8 2, [3 x i8] zeroinitializer, i32 1, i32 3, [4 x i8] zeroinitializer, ptr @dissect_c1222_Iv_element }, { ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@Calling_authentication_value_c1221_U_choice = internal constant [4 x { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @hf_c1222_c1221_auth_identification, i8 2, [3 x i8] zeroinitializer, i32 0, i32 2, [4 x i8] zeroinitializer, ptr @dissect_c1222_OCTET_STRING_SIZE_CONSTR001 }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @hf_c1222_c1221_auth_request, i8 2, [3 x i8] zeroinitializer, i32 1, i32 2, [4 x i8] zeroinitializer, ptr @dissect_c1222_OCTET_STRING_SIZE_1_255 }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @hf_c1222_c1221_auth_response, i8 2, [3 x i8] zeroinitializer, i32 2, i32 2, [4 x i8] zeroinitializer, ptr @dissect_c1222_OCTET_STRING_SIZE_CONSTR002 }, { i32, [4 x i8], ptr, i8, [3 x i8], i32, i32, [4 x i8], ptr } zeroinitializer], align 16
@c1222_flags = internal constant [7 x ptr] [ptr @hf_c1222_epsem_flags_reserved, ptr @hf_c1222_epsem_flags_recovery, ptr @hf_c1222_epsem_flags_proxy, ptr @hf_c1222_epsem_flags_ed_class, ptr @hf_c1222_epsem_flags_security_modes, ptr @hf_c1222_epsem_flags_response_control, ptr null], align 16
@.str.262 = private unnamed_addr constant [21 x i8] c"Decrypted EPSEM Data\00", align 1
@.str.263 = private unnamed_addr constant [36 x i8] c"C12.22 EPSEM: %s (id %d, user \22%s\22)\00", align 1
@.str.264 = private unnamed_addr constant [17 x i8] c"Unknown (0x%02x)\00", align 1
@.str.265 = private unnamed_addr constant [31 x i8] c"C12.22 LOGON command truncated\00", align 1
@.str.266 = private unnamed_addr constant [40 x i8] c"C12.22 EPSEM: %s (password \22%s\22, id %d)\00", align 1
@.str.267 = private unnamed_addr constant [33 x i8] c"C12.22 EPSEM: %s (password \22%s\22)\00", align 1
@.str.268 = private unnamed_addr constant [34 x i8] c"C12.22 SECURITY command truncated\00", align 1
@.str.269 = private unnamed_addr constant [32 x i8] c"C12.22 EPSEM: %s (%d bytes: %s)\00", align 1
@.str.270 = private unnamed_addr constant [38 x i8] c"C12.22 AUTHENTICATE command truncated\00", align 1
@.str.271 = private unnamed_addr constant [25 x i8] c"C12.22 EPSEM: %s (%s-%d)\00", align 1
@.str.272 = private unnamed_addr constant [17 x i8] c"Unknown (0x%04x)\00", align 1
@.str.273 = private unnamed_addr constant [30 x i8] c"C12.22 READ command truncated\00", align 1
@.str.274 = private unnamed_addr constant [32 x i8] c"C12.22 EPSEM: %s (%s-%d, %s-%d)\00", align 1
@.str.275 = private unnamed_addr constant [31 x i8] c"C12.22 WRITE command truncated\00", align 1
@.str.276 = private unnamed_addr constant [30 x i8] c"C12.22 EPSEM: %s (%d seconds)\00", align 1
@.str.277 = private unnamed_addr constant [30 x i8] c"C12.22 WAIT command truncated\00", align 1
@.str.278 = private unnamed_addr constant [64 x i8] c"C12.22 EPSEM: %s (pkt size %d, num pkts %d, with %d baud rates)\00", align 1
@.str.279 = private unnamed_addr constant [35 x i8] c"C12.22 NEGOTIATE command truncated\00", align 1
@.str.280 = private unnamed_addr constant [85 x i8] c"C12.22 EPSEM: %s (traffic to %d s, inter-char to %d s, response to %d s, %d retries)\00", align 1
@.str.281 = private unnamed_addr constant [17 x i8] c"C12.22 EPSEM: %s\00", align 1
@.str.282 = private unnamed_addr constant [3 x i8] c"ST\00", align 1
@.str.283 = private unnamed_addr constant [3 x i8] c"MT\00", align 1
@.str.284 = private unnamed_addr constant [11 x i8] c"Pending ST\00", align 1
@.str.285 = private unnamed_addr constant [11 x i8] c"Pending MT\00", align 1
@.str.286 = private unnamed_addr constant [4 x i8] c"UDT\00", align 1
@.str.287 = private unnamed_addr constant [12 x i8] c"Pending UDT\00", align 1
@tableflags = internal constant [7 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.282 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.283 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.284 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.285 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.286 }, { i32, [4 x i8], ptr } { i32 48, [4 x i8] zeroinitializer, ptr @.str.287 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.289 = private unnamed_addr constant [3 x i8] c"SF\00", align 1
@.str.290 = private unnamed_addr constant [3 x i8] c"MF\00", align 1
@procflags = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.289 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.290 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.292 = private unnamed_addr constant [42 x i8] c"Invalid key number; must be less than 256\00", align 1
@.str.293 = private unnamed_addr constant [35 x i8] c"Invalid key size; must be 16 bytes\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_c1222() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef @.str.163, ptr noundef @.str.164, ptr noundef @.str.165) ; 2 uses
  store i32 %i.a, ptr @proto_c1222, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef @proto_register_c1222.hf, i32 noundef 65)
  tail call void @proto_register_subtree_array(ptr noundef @proto_register_c1222.ett, i32 noundef 13)
  %i.b = load i32, ptr @proto_c1222, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef @proto_register_c1222.ei, i32 noundef 9)
  %i.d = load i32, ptr @proto_c1222, align 4
  %i.e = tail call ptr @register_dissector(ptr noundef @.str.166, ptr noundef @dissect_c1222, i32 noundef %i.d)
  store ptr %i.e, ptr @c1222_handle, align 8
  %i.f = load i32, ptr @proto_c1222, align 4
  %i.g = tail call ptr @register_dissector(ptr noundef @.str.167, ptr noundef @dissect_c1222_common, i32 noundef %i.f)
  store ptr %i.g, ptr @c1222_udp_handle, align 8
  %i.h = load i32, ptr @proto_c1222, align 4
  %i.i = tail call ptr @prefs_register_protocol(i32 noundef %i.h, ptr noundef @proto_reg_handoff_c1222) ; 5 uses
  tail call void @prefs_register_bool_preference(ptr noundef %i.i, ptr noundef @.str.168, ptr noundef @.str.169, ptr noundef @.str.170, ptr noundef @c1222_desegment)
  tail call void @prefs_register_string_preference(ptr noundef %i.i, ptr noundef @.str.171, ptr noundef @.str.172, ptr noundef @.str.173, ptr noundef @c1222_baseoid_str)
  tail call void @prefs_register_bool_preference(ptr noundef %i.i, ptr noundef @.str.174, ptr noundef @.str.175, ptr noundef @.str.176, ptr noundef @c1222_decrypt)
  tail call void @prefs_register_bool_preference(ptr noundef %i.i, ptr noundef @.str.177, ptr noundef @.str.178, ptr noundef @.str.179, ptr noundef @c1222_big_endian)
  %i.j = tail call ptr @uat_new(ptr noundef @.str.180, i64 noundef 24, ptr noundef @.str.181, i1 noundef zeroext true, ptr noundef @c1222_uat_data, ptr noundef @num_c1222_uat_data, i32 noundef 1, ptr noundef null, ptr noundef @c1222_uat_data_copy_cb, ptr noundef @c1222_uat_data_update_cb, ptr noundef @c1222_uat_data_free_cb, ptr noundef null, ptr noundef null, ptr noundef @proto_register_c1222.c1222_uat_flds) ; 2 uses
  store ptr %i.j, ptr @c1222_uat, align 8
  tail call void @prefs_register_uat_preference(ptr noundef %i.i, ptr noundef @.str.182, ptr noundef @.str.180, ptr noundef @.str.183, ptr noundef %i.j)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @uat_fld_chk_num_hex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @c1222_users_keynum_set_cb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = tail call noalias ptr @g_strndup(ptr noundef %1, i64 noundef %i.a) ; 2 uses
  %i.c = tail call zeroext i1 @ws_hexstrtou32(ptr noundef %i.b, ptr noundef null, ptr noundef %0) ; 0 uses
  tail call void @g_free(ptr noundef %i.b)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @c1222_users_keynum_tostr_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef @.str.251, i32 noundef %i.a) ; 2 uses
  store ptr %i.b, ptr %1, align 8
  %i.c = tail call i64 @strlen(ptr noundef %i.b) #10
  %i.d = trunc i64 %i.c to i32
  store i32 %i.d, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @c1222_users_key_set_cb(ptr nofree noundef captures(none) initializes((16, 20)) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %2 to i64
  %i.b = tail call ptr @g_memdup2(ptr noundef %1, i64 noundef %i.a) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.d = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @g_free(ptr noundef %i.e)
  store ptr %i.c, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %0, i64 16
  store i32 %2, ptr %i.f, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @c1222_users_key_tostr_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %i.e = zext i32 %i.d to i64
  %i.f = tail call ptr @g_memdup2(ptr noundef nonnull %i.b, i64 noundef %i.e) #11
  br label %g_strdup_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(1) ptr @g_malloc(i64 noundef 1) #12 ; 2 uses
  store i8 0, ptr %i.g, align 1
  br label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  store ptr %i.h, ptr %1, align 8
  %i.i = getelementptr i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8
  store i32 %i.j, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = load i8, ptr @c1222_desegment, align 1, !range !6, !noundef !7
  %i.b = trunc nuw i8 %i.a to i1
  tail call void @tcp_dissect_pdus(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %i.b, i32 noundef 5, ptr noundef @get_c1222_message_len, ptr noundef @dissect_c1222_common, ptr noundef %3)
  %i.c = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.c
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct._asn1_ctx_t, align 8        ; 4 uses
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef @.str.164)
  %i.c = load i32, ptr @proto_c1222, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.e = load i32, ptr @ett_c1222, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @asn1_ctx_init(ptr noundef nonnull %4, i32 noundef 0, i1 noundef zeroext true, ptr noundef %1)
  %i.g = load i32, ptr @hf_c1222_MESSAGE_PDU, align 4
  store i32 0, ptr @aSO_context_len, align 4
  store ptr null, ptr @aSO_context, align 8
  store i32 0, ptr @called_AP_title_len, align 4
  store ptr null, ptr @called_AP_title, align 8
  store i32 0, ptr @called_AP_invocation_id_len, align 4
  store ptr null, ptr @called_AP_invocation_id, align 8
  store i32 0, ptr @calling_AE_qualifier_len, align 4
  store ptr null, ptr @calling_AE_qualifier, align 8
  store i32 0, ptr @calling_AP_invocation_id_len, align 4
  store ptr null, ptr @calling_AP_invocation_id, align 8
  store i32 0, ptr @mechanism_name_len, align 4
  store ptr null, ptr @mechanism_name, align 8
  store i32 0, ptr @calling_authentication_value_len, align 4
  store ptr null, ptr @calling_authentication_value, align 8
  store i32 0, ptr @user_information_len, align 4
  store ptr null, ptr @user_information, align 8
  store i32 0, ptr @calling_AP_title_len, align 4
  store ptr null, ptr @calling_AP_title, align 8
  store i32 0, ptr @key_id_element_len, align 4
  store ptr null, ptr @key_id_element, align 8
  store i32 0, ptr @iv_element_len, align 4
  store ptr null, ptr @iv_element, align 8
  %i.h = call i32 @dissect_ber_tagged_type(i1 noundef zeroext false, ptr noundef nonnull %4, ptr noundef %i.f, ptr noundef %0, i32 noundef 0, i32 noundef %i.g, i8 noundef signext 1, i32 noundef 0, i1 noundef zeroext true, ptr noundef @dissect_c1222_MESSAGE_U)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %i.h
}

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_c1222() #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8
  %.b = load i1, ptr @proto_reg_handoff_c1222.initialized, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @c1222_handle, align 8
  tail call void @dissector_add_uint_with_preference(ptr noundef @.str.184, i32 noundef 1153, ptr noundef %i.b)
  %i.c = load ptr, ptr @c1222_udp_handle, align 8
  tail call void @dissector_add_uint_with_preference(ptr noundef @.str.185, i32 noundef 1153, ptr noundef %i.c)
  store i1 true, ptr @proto_reg_handoff_c1222.initialized, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr @c1222_baseoid_str, align 8 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %i.d, align 1
  %.not1 = icmp eq i8 %i.e, 0
  br i1 %.not1, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = call i32 @oid_string2encoded(ptr noundef null, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) ; 2 uses
  store i32 %i.f, ptr @c1222_baseoid_len, align 4
  %.not2 = icmp eq i32 %i.f, 0
  br i1 %.not2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = call ptr @wmem_epan_scope()
  %i.h = load ptr, ptr @c1222_baseoid, align 8
  %i.i = load i32, ptr @c1222_baseoid_len, align 4
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = call ptr @wmem_realloc(ptr noundef %i.g, ptr noundef %i.h, i64 noundef %i.j) #14 ; 2 uses
  store ptr %i.k, ptr @c1222_baseoid, align 8
  %i.l = load ptr, ptr %i.a, align 8
  %i.m = load i32, ptr @c1222_baseoid_len, align 4
  %i.n = zext i32 %i.m to i64
  %i.o = call ptr @__memcpy_chk(ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.n, i64 noundef %i.j) #13, !alias.scope !12 ; 0 uses
  %i.p = load ptr, ptr %i.a, align 8
  call void @wmem_free(ptr noundef null, ptr noundef %i.p)
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.q = load ptr, ptr @c1222_baseoid, align 8
  %.not3 = icmp eq ptr %i.q, null
  br i1 %.not3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = call ptr @wmem_epan_scope()
  %i.s = load ptr, ptr @c1222_baseoid, align 8
  call void @wmem_free(ptr noundef %i.r, ptr noundef %i.s)
  store ptr null, ptr @c1222_baseoid, align 8
  store i32 0, ptr @c1222_baseoid_len, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_bool_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_string_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @uat_new(ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef ptr @c1222_uat_data_copy_cb(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((0, 4), (8, 20)) %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  store i32 %i.a, ptr %0, align 8
  %i.b = getelementptr i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 16
  store i32 %i.c, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = zext i32 %i.c to i64
  %i.h = tail call ptr @g_memdup2(ptr noundef %i.f, i64 noundef %i.g) #11
  %i.i = getelementptr i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @c1222_uat_data_update_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = icmp ugt i32 %i.a, 255
  br i1 %i.b, label %g_strdup_inline.exit7, label %bb.b

g_strdup_inline.exit7:                            ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(42) ptr @g_malloc(i64 noundef 42) #12 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(42) %i.c, ptr noundef nonnull align 1 dereferenceable(42) @.str.292, i64 noundef 42, i1 noundef false) #13
  br label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp eq i32 %i.e, 16
  br i1 %.not, label %bb.c, label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.b
  %i.f = tail call noalias dereferenceable_or_null(35) ptr @g_malloc(i64 noundef 35) #12 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(35) %i.f, ptr noundef nonnull align 1 dereferenceable(35) @.str.293, i64 noundef 35, i1 noundef false) #13
  br label %.sink.split

.sink.split:                                      ; preds = %g_strdup_inline.exit7, %g_strdup_inline.exit
  %.sink = phi ptr [ %i.f, %g_strdup_inline.exit ], [ %i.c, %g_strdup_inline.exit7 ]
  store ptr %.sink, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ false, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @c1222_uat_data_free_cb(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @g_free(ptr noundef %i.b)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_uat_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint_with_preference(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @oid_string2encoded(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare ptr @wmem_realloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_epan_scope() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strndup(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_hexstrtou32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(1)
declare ptr @g_memdup2(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare void @tcp_dissect_pdus(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @get_c1222_message_len(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = add i32 %2, 1
  %i.d = call i32 @dissect_ber_length(ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.e = load i32, ptr %i.a, align 4
  %i.f = sub i32 %i.d, %2
  %i.g = add i32 %i.f, %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.g
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_length(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @asn1_ctx_init(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_tagged_type(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef signext, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_MESSAGE_U(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_c1222_MESSAGE_U, align 4
  %i.b = tail call i32 @dissect_ber_sequence(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @MESSAGE_U_sequence, i32 noundef %5, i32 noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_sequence(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_ASO_qualifier(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_object_identifier(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef null) ; 2 uses
  %i.b = sub i32 %i.a, %2                         ; 3 uses
  %i.c = getelementptr i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 416
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = sext i32 %i.b to i64
  %i.h = tail call ptr @tvb_memdup(ptr noundef %i.f, ptr noundef %1, i32 noundef %2, i64 noundef %i.g)
  store ptr %i.h, ptr @aSO_context, align 8
  store i32 %i.b, ptr @aSO_context_len, align 4
  store i32 %i.b, ptr @aSO_context_allocated, align 4
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_Called_AP_title(i1 zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_c1222_Called_AP_title, align 4
  %i.b = tail call i32 @dissect_ber_choice(ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @Called_AP_title_choice, i32 noundef %5, i32 noundef %i.a, ptr noundef null) ; 2 uses
  %i.c = sub i32 %i.b, %2                         ; 6 uses
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %2)
  %cond = icmp eq i8 %i.d, -128
  br i1 %cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @tvb_ensure_bytes_exist(ptr noundef %1, i32 noundef %2, i32 noundef %i.c)
  %i.e = load i32, ptr @c1222_baseoid_len, align 4
  %i.f = add i32 %i.e, %i.c                       ; 3 uses
  store i32 %i.f, ptr @called_AP_title_len, align 4
  %i.g = getelementptr i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 416
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = zext i32 %i.f to i64                     ; 2 uses
  %i.l = tail call noalias ptr @wmem_alloc(ptr noundef %i.j, i64 noundef %i.k) #11 ; 5 uses
  store ptr %i.l, ptr @called_AP_title, align 8
  %i.m = load i32, ptr @called_AP_title_len, align 4 ; 2 uses
  store i32 %i.m, ptr @called_AP_title_allocated, align 4
  store i8 6, ptr %i.l, align 1
  %i.n = trunc i32 %i.m to i8
  %i.o = add i8 %i.n, -2
  %i.p = getelementptr i8, ptr %i.l, i64 1
  store i8 %i.o, ptr %i.p, align 1
  %i.q = load ptr, ptr @c1222_baseoid, align 8    ; 2 uses
  %.not = icmp eq ptr %i.q, null
  %.pre = load i32, ptr @c1222_baseoid_len, align 4 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.l, i64 2
  %i.s = zext i32 %.pre to i64
  %i.t = add nsw i64 %i.k, -2
  %i.u = icmp ult i32 %i.f, 2
  %i.v = select i1 %i.u, i64 0, i64 %i.t          ; 2 uses
  %i.w = icmp ne i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = tail call ptr @__memcpy_chk(ptr noundef %i.r, ptr noundef nonnull %i.q, i64 noundef %i.s, i64 noundef %i.v) #13, !alias.scope !16 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = add i32 %.pre, 2
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.l, i64 %i.z
  %i.ab = add i32 %2, 2
  %i.ac = add i32 %i.c, -2
  %i.ad = sext i32 %i.ac to i64
  %i.ae = tail call ptr @tvb_memcpy(ptr noundef %1, ptr noundef %i.aa, i32 noundef %i.ab, i64 noundef %i.ad) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.af = getelementptr i8, ptr %3, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr i8, ptr %i.ag, i64 416
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = sext i32 %i.c to i64
  %i.ak = tail call ptr @tvb_memdup(ptr noundef %i.ai, ptr noundef %1, i32 noundef %2, i64 noundef %i.aj)
  store ptr %i.ak, ptr @called_AP_title, align 8
  store i32 %i.c, ptr @called_AP_title_len, align 4
  store i32 %i.c, ptr @called_AP_title_allocated, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_Called_AP_invocation_id(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_integer(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef null) ; 2 uses
  %i.b = sub i32 %i.a, %2                         ; 3 uses
  %i.c = getelementptr i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 416
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = sext i32 %i.b to i64
  %i.h = tail call ptr @tvb_memdup(ptr noundef %i.f, ptr noundef %1, i32 noundef %2, i64 noundef %i.g)
  store ptr %i.h, ptr @called_AP_invocation_id, align 8
  store i32 %i.b, ptr @called_AP_invocation_id_len, align 4
  store i32 %i.b, ptr @called_AP_invocation_id_allocated, align 4
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_Calling_AP_title(i1 zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_c1222_Calling_AP_title, align 4
  %i.b = tail call i32 @dissect_ber_choice(ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @Calling_AP_title_choice, i32 noundef %5, i32 noundef %i.a, ptr noundef null) ; 2 uses
  %i.c = sub i32 %i.b, %2                         ; 6 uses
  %i.d = tail call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %2)
  %cond = icmp eq i8 %i.d, -128
  br i1 %cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @tvb_ensure_bytes_exist(ptr noundef %1, i32 noundef %2, i32 noundef %i.c)
  %i.e = load i32, ptr @c1222_baseoid_len, align 4
  %i.f = add i32 %i.e, %i.c                       ; 3 uses
  store i32 %i.f, ptr @calling_AP_title_len, align 4
  %i.g = getelementptr i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 416
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = zext i32 %i.f to i64                     ; 2 uses
  %i.l = tail call noalias ptr @wmem_alloc(ptr noundef %i.j, i64 noundef %i.k) #11 ; 5 uses
  store ptr %i.l, ptr @calling_AP_title, align 8
  %i.m = load i32, ptr @calling_AP_title_len, align 4 ; 2 uses
  store i32 %i.m, ptr @calling_AP_title_allocated, align 4
  store i8 6, ptr %i.l, align 1
  %i.n = trunc i32 %i.m to i8
  %i.o = add i8 %i.n, -2
  %i.p = getelementptr i8, ptr %i.l, i64 1
  store i8 %i.o, ptr %i.p, align 1
  %i.q = load ptr, ptr @c1222_baseoid, align 8    ; 2 uses
  %.not = icmp eq ptr %i.q, null
  %.pre = load i32, ptr @c1222_baseoid_len, align 4 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.l, i64 2
  %i.s = zext i32 %.pre to i64
  %i.t = add nsw i64 %i.k, -2
  %i.u = icmp ult i32 %i.f, 2
  %i.v = select i1 %i.u, i64 0, i64 %i.t          ; 2 uses
  %i.w = icmp ne i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = tail call ptr @__memcpy_chk(ptr noundef %i.r, ptr noundef nonnull %i.q, i64 noundef %i.s, i64 noundef %i.v) #13, !alias.scope !20 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = add i32 %.pre, 2
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.l, i64 %i.z
  %i.ab = add i32 %2, 2
  %i.ac = add i32 %i.c, -2
  %i.ad = sext i32 %i.ac to i64
  %i.ae = tail call ptr @tvb_memcpy(ptr noundef %1, ptr noundef %i.aa, i32 noundef %i.ab, i64 noundef %i.ad) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.af = getelementptr i8, ptr %3, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr i8, ptr %i.ag, i64 416
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = sext i32 %i.c to i64
  %i.ak = tail call ptr @tvb_memdup(ptr noundef %i.ai, ptr noundef %1, i32 noundef %2, i64 noundef %i.aj)
  store ptr %i.ak, ptr @calling_AP_title, align 8
  store i32 %i.c, ptr @calling_AP_title_len, align 4
  store i32 %i.c, ptr @calling_AP_title_allocated, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_Calling_AE_qualifier(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_integer(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef null) ; 2 uses
  %i.b = sub i32 %i.a, %2                         ; 3 uses
  %i.c = getelementptr i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 416
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = sext i32 %i.b to i64
  %i.h = tail call ptr @tvb_memdup(ptr noundef %i.f, ptr noundef %1, i32 noundef %2, i64 noundef %i.g)
  store ptr %i.h, ptr @calling_AE_qualifier, align 8
  store i32 %i.b, ptr @calling_AE_qualifier_len, align 4
  store i32 %i.b, ptr @calling_AE_qualifier_allocated, align 4
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_Calling_AP_invocation_id(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_integer(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef null) ; 2 uses
  %i.b = sub i32 %i.a, %2                         ; 3 uses
  %i.c = getelementptr i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 416
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = sext i32 %i.b to i64
  %i.h = tail call ptr @tvb_memdup(ptr noundef %i.f, ptr noundef %1, i32 noundef %2, i64 noundef %i.g)
  store ptr %i.h, ptr @calling_AP_invocation_id, align 8
  store i32 %i.b, ptr @calling_AP_invocation_id_len, align 4
  store i32 %i.b, ptr @calling_AP_invocation_id_allocated, align 4
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_Mechanism_name(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_object_identifier(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef null) ; 2 uses
  %i.b = sub i32 %i.a, %2                         ; 3 uses
  %i.c = getelementptr i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 416
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = sext i32 %i.b to i64
  %i.h = tail call ptr @tvb_memdup(ptr noundef %i.f, ptr noundef %1, i32 noundef %2, i64 noundef %i.g)
  store ptr %i.h, ptr @mechanism_name, align 8
  store i32 %i.b, ptr @mechanism_name_len, align 4
  store i32 %i.b, ptr @mechanism_name_allocated, align 4
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_Calling_authentication_value(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_tagged_type(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, i8 noundef signext 2, i32 noundef 2, i1 noundef zeroext true, ptr noundef @dissect_c1222_Calling_authentication_value_U) ; 2 uses
  %i.b = sub i32 %i.a, %2                         ; 3 uses
  %i.c = getelementptr i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 416
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = sext i32 %i.b to i64
  %i.h = tail call ptr @tvb_memdup(ptr noundef %i.f, ptr noundef %1, i32 noundef %2, i64 noundef %i.g)
  store ptr %i.h, ptr @calling_authentication_value, align 8
  store i32 %i.b, ptr @calling_authentication_value_len, align 4
  store i32 %i.b, ptr @calling_authentication_value_allocated, align 4
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_User_information(i1 zeroext %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 %5) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 64 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  %i.j = getelementptr i8, ptr %3, i64 16         ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call i32 @dissect_ber_identifier(ptr noundef %i.k, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h)
  %i.m = load ptr, ptr %i.j, align 8
  %i.n = call i32 @dissect_ber_length(ptr noundef %i.m, ptr noundef %4, ptr noundef %1, i32 noundef %i.l, ptr noundef nonnull %i.i, ptr noundef nonnull %i.g) ; 3 uses
  %i.o = sub i32 %i.n, %2                         ; 2 uses
  %i.p = shl i32 %i.o, 1
  %i.q = or disjoint i32 %i.p, 1                  ; 2 uses
  %i.r = load ptr, ptr %i.j, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 416
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = sext i32 %i.q to i64
  %i.v = call ptr @tvb_memdup(ptr noundef %i.t, ptr noundef %1, i32 noundef %2, i64 noundef %i.u)
  store ptr %i.v, ptr @user_information, align 8
  %i.w = load i32, ptr %i.i, align 4
  %i.x = add i32 %i.o, %i.w
  store i32 %i.x, ptr @user_information_len, align 4
  store i32 %i.q, ptr @user_information_allocated, align 4
  %i.y = load i32, ptr %i.h, align 4
  %i.z = icmp eq i32 %i.y, 8
  br i1 %i.z, label %bb.b, label %bb.cg

bb.b:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %i.j, align 8
  %i.ab = call i32 @dissect_ber_identifier(ptr noundef %i.aa, ptr noundef %4, ptr noundef %1, i32 noundef %i.n, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h)
  %i.ac = load ptr, ptr %i.j, align 8
  %i.ad = call i32 @dissect_ber_length(ptr noundef %i.ac, ptr noundef %4, ptr noundef %1, i32 noundef %i.ab, ptr noundef nonnull %i.i, ptr noundef nonnull %i.g) ; 7 uses
  %i.ae = load i32, ptr %i.h, align 4
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.c, label %bb.cg

bb.c:                                             ; preds = %bb.b
  %i.ag = load i32, ptr @hf_c1222_user_information, align 4
  %i.ah = load i32, ptr %i.i, align 4
  %i.ai = call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.ag, ptr noundef %1, i32 noundef %i.ad, i32 noundef %i.ah, i32 noundef 0)
  %i.aj = load i32, ptr @ett_c1222_epsem, align 4
  %i.ak = call ptr @proto_item_add_subtree(ptr noundef %i.ai, i32 noundef %i.aj) ; 13 uses
  %i.al = load i32, ptr %i.i, align 4
  %i.am = load ptr, ptr %i.j, align 8             ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.an = icmp eq ptr %1, null
  %i.ao = icmp eq i32 %i.al, 0
  %or.cond.i = and i1 %i.an, %i.ao
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = call ptr @expert_add_info(ptr noundef %i.am, ptr noundef %i.ak, ptr noundef @ei_c1222_epsem_missing) ; 0 uses
  br label %dissect_epsem.exit

bb.e:                                             ; preds = %bb.c
  %i.aq = call zeroext i8 @tvb_get_uint8(ptr noundef %1, i32 noundef %i.ad)
  %i.ar = load i32, ptr @hf_c1222_epsem_flags, align 4
  %i.as = load i32, ptr @ett_c1222_flags, align 4
  %i.at = call ptr @proto_tree_add_bitmask(ptr noundef %i.ak, ptr noundef %1, i32 noundef %i.ad, i32 noundef %i.ar, i32 noundef %i.as, ptr noundef @c1222_flags, i32 noundef 0) ; 0 uses
  %i.au = add i32 %i.ad, 1                        ; 7 uses
  %i.av = zext i8 %i.aq to i32                    ; 2 uses
  %i.aw = lshr i32 %i.av, 2
  %i.ax = and i32 %i.aw, 3
  switch i32 %i.ax, label %bb.n [
    i32 2, label %bb.f
    i32 1, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.ay = call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %i.au) ; 7 uses
  store i32 %i.ay, ptr %i.c, align 4
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %dissect_epsem.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = load i8, ptr @c1222_decrypt, align 1, !range !6, !noundef !7
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.h, label %.thread213.i

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr i8, ptr %i.am, i64 416
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = zext i32 %i.ay to i64
  %i.bf = call ptr @tvb_memdup(ptr noundef %i.bd, ptr noundef %1, i32 noundef %i.au, i64 noundef %i.be) ; 2 uses
  %i.bg = call fastcc zeroext i1 @decrypt_packet(ptr noundef %i.bf, i32 noundef %i.ay, i1 noundef zeroext true)
  br i1 %i.bg, label %bb.i, label %.thread213.i

bb.i:                                             ; preds = %bb.h
  %i.bh = call ptr @tvb_new_real_data(ptr noundef %i.bf, i32 noundef %i.ay, i32 noundef %i.ay) ; 3 uses
  call void @tvb_set_child_real_data_tvbuff(ptr noundef %1, ptr noundef %i.bh)
  %i.bi = call ptr @add_new_data_source(ptr noundef %i.am, ptr noundef %i.bh, ptr noundef @.str.262) ; 0 uses
  br label %bb.o

bb.j:                                             ; preds = %bb.e
  %i.bj = call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %i.au) ; 4 uses
  store i32 %i.bj, ptr %i.c, align 4
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %dissect_epsem.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = call ptr @tvb_new_subset_remaining(ptr noundef %1, i32 noundef %i.au) ; 3 uses
  %i.bm = getelementptr i8, ptr %i.am, i64 416
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = zext i32 %i.bj to i64
  %i.bp = call ptr @tvb_memdup(ptr noundef %i.bn, ptr noundef %1, i32 noundef %i.au, i64 noundef %i.bo)
  %i.bq = load i8, ptr @c1222_decrypt, align 1, !range !6, !noundef !7
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bs = call fastcc zeroext i1 @decrypt_packet(ptr noundef %i.bp, i32 noundef %i.bj, i1 noundef zeroext false)
  br i1 %i.bs, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = call ptr @expert_add_info(ptr noundef %i.am, ptr noundef %i.ak, ptr noundef @ei_c1222_epsem_failed_authentication) ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.e
  %i.bu = call ptr @tvb_new_subset_remaining(ptr noundef %1, i32 noundef %i.au)
  br label %bb.o

.thread213.i:                                     ; preds = %bb.h, %bb.g
  %.094.i = phi i64 [ 1, %bb.h ], [ 0, %bb.g ]
  %i.bv = load i32, ptr @hf_c1222_epsem_total, align 4
  %i.bw = call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.bv, ptr noundef %1, i32 noundef %i.au, i32 noundef -1, i32 noundef 0) ; 0 uses
  %i.bx = call ptr @expert_add_info(ptr noundef %i.am, ptr noundef %i.ak, ptr noundef @ei_c1222_epsem_not_decrypted) ; 0 uses
  %i.by = add i32 %i.ad, -3
  %i.bz = add i32 %i.by, %i.ay
  br label %bb.bz

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.i
  %.096.ph.i = phi ptr [ %i.bl, %bb.l ], [ %i.bl, %bb.m ], [ %i.bl, %bb.k ], [ %i.bh, %bb.i ], [ %i.bu, %bb.n ] ; 71 uses
  %.095.ph.i = phi i64 [ 1, %bb.l ], [ 0, %bb.m ], [ 0, %bb.k ], [ 1, %bb.i ], [ 0, %bb.n ]
  %.094.ph.i = phi i64 [ 0, %bb.l ], [ 1, %bb.m ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.n ]
  %.093.ph.i = phi i1 [ true, %bb.l ], [ true, %bb.m ], [ true, %bb.k ], [ true, %bb.i ], [ false, %bb.n ] ; 2 uses
  %i.ca = and i32 %i.av, 16
  %.not.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = call zeroext i1 @tvb_offset_exists(ptr noundef %.096.ph.i, i32 noundef 3)
  br i1 %i.cb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cc = load i32, ptr @hf_c1222_epsem_ed_class, align 4
  %i.cd = call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.cc, ptr noundef %.096.ph.i, i32 noundef 0, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ce = call ptr @expert_add_info(ptr noundef %i.am, ptr noundef %i.ak, ptr noundef @ei_c1222_ed_class_missing) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o
  %.0198.i = phi i32 [ 0, %bb.o ], [ 4, %bb.q ], [ 0, %bb.r ] ; 3 uses
  %i.cf = call i32 @tvb_captured_length_remaining(ptr noundef %.096.ph.i, i32 noundef %.0198.i)
  %i.cg = select i1 %.093.ph.i, i32 4, i32 0      ; 2 uses
  %i.ch = icmp ugt i32 %i.cf, %i.cg
  br i1 %i.ch, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.s
  %i.ci = getelementptr i8, ptr %i.am, i64 416    ; 20 uses
  br label %bb.t

bb.t:                                             ; preds = %parse_c1222_detailed.exit.i, %.lr.ph.i
  %.1199228.i = phi i32 [ %.0198.i, %.lr.ph.i ], [ %i.oo, %parse_c1222_detailed.exit.i ] ; 6 uses
  %i.cj = call zeroext i1 @tvb_offset_exists(ptr noundef %.096.ph.i, i32 noundef %.1199228.i)
  br i1 %i.cj, label %bb.u, label %ber_len_ok.exit.i

bb.u:                                             ; preds = %bb.t
  %i.ck = call zeroext i8 @tvb_get_uint8(ptr noundef %.096.ph.i, i32 noundef %.1199228.i)
  %i.cl = add i32 %.1199228.i, 1                  ; 2 uses
  %.not.i.i = icmp sgt i8 %i.ck, -1
  br i1 %.not.i.i, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cm = call zeroext i1 @tvb_offset_exists(ptr noundef %.096.ph.i, i32 noundef %i.cl)
  br i1 %i.cm, label %bb.w, label %ber_len_ok.exit.i

bb.w:                                             ; preds = %bb.v
  %i.cn = call zeroext i8 @tvb_get_uint8(ptr noundef %.096.ph.i, i32 noundef %i.cl)
  %i.co = add i32 %.1199228.i, 2                  ; 2 uses
  %.not23.i.i = icmp sgt i8 %i.cn, -1
  br i1 %.not23.i.i, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = call zeroext i1 @tvb_offset_exists(ptr noundef %.096.ph.i, i32 noundef %i.co)
  br i1 %i.cp, label %bb.y, label %ber_len_ok.exit.i

bb.y:                                             ; preds = %bb.x
  %i.cq = call zeroext i8 @tvb_get_uint8(ptr noundef %.096.ph.i, i32 noundef %i.co)
  %i.cr = add i32 %.1199228.i, 3                  ; 2 uses
  %.not24.i.i = icmp sgt i8 %i.cq, -1
  br i1 %.not24.i.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cs = call zeroext i1 @tvb_offset_exists(ptr noundef %.096.ph.i, i32 noundef %i.cr)
  br i1 %i.cs, label %bb.aa, label %ber_len_ok.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.ct = call zeroext i8 @tvb_get_uint8(ptr noundef %.096.ph.i, i32 noundef %i.cr)
  %.not25.i.i = icmp sgt i8 %i.ct, -1
  br i1 %.not25.i.i, label %bb.ab, label %ber_len_ok.exit.i

bb.ab:                                            ; preds = %bb.aa, %bb.y, %bb.w, %bb.u
  %i.cu = call i32 @dissect_ber_length(ptr noundef %i.am, ptr noundef %i.ak, ptr noundef %.096.ph.i, i32 noundef %.1199228.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 28 uses
  %i.cv = call i32 @tvb_captured_length_remaining(ptr noundef %.096.ph.i, i32 noundef %i.cu)
  %i.cw = load i32, ptr %i.c, align 4
  %.not99.i = icmp ult i32 %i.cv, %i.cw
  br i1 %.not99.i, label %bb.by, label %bb.ac

ber_len_ok.exit.i:                                ; preds = %bb.aa, %bb.z, %bb.x, %bb.v, %bb.t
  %i.cx = call ptr @expert_add_info(ptr noundef %i.am, ptr noundef %i.ak, ptr noundef @ei_c1222_epsem_ber_length_error) ; 0 uses
  br label %dissect_epsem.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cy = call zeroext i8 @tvb_get_uint8(ptr noundef %.096.ph.i, i32 noundef %i.cu)
  %i.cz = zext i8 %i.cy to i32                    ; 3 uses
  %i.da = load i32, ptr @hf_c1222_epsem_total, align 4
  %i.db = load i32, ptr %i.c, align 4
  %i.dc = call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.da, ptr noundef %.096.ph.i, i32 noundef %i.cu, i32 noundef %i.db, i32 noundef 0)
  %i.dd = load i32, ptr @ett_c1222_cmd, align 4
  %i.de = call ptr @proto_item_add_subtree(ptr noundef %i.dc, i32 noundef %i.dd) ; 58 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8
  %i.df = and i32 %i.cz, 240
  %i.dg = icmp eq i32 %i.df, 96                   ; 2 uses
  %i.dh = and i32 %i.cz, 15
  %spec.select.i.i = select i1 %i.dg, i32 96, i32 %i.cz ; 4 uses
  %spec.select373.i.i = select i1 %i.dg, i32 %i.dh, i32 0
  %i.di = icmp samesign ugt i32 %spec.select.i.i, 31
  %i.dj = load i32, ptr @hf_c1222_cmd, align 4
  %i.dk = load i32, ptr @hf_c1222_err, align 4
  %i.dl = select i1 %i.di, i32 %i.dj, i32 %i.dk
  %i.dm = call ptr @proto_tree_add_uint(ptr noundef %i.de, i32 noundef %i.dl, ptr noundef %.096.ph.i, i32 noundef %i.cu, i32 noundef 1, i32 noundef %spec.select.i.i) ; 0 uses
  %i.dn = add i32 %i.cu, 1                        ; 32 uses
  %i.do = load i32, ptr %i.c, align 4
  %i.dp = add i32 %i.do, -1                       ; 11 uses
  store i32 %i.dp, ptr %i.c, align 4
  %trunc.i.i = trunc nuw i32 %spec.select.i.i to i8
  switch i8 %trunc.i.i, label %bb.bw [
    i8 80, label %bb.ad
    i8 81, label %bb.ag
    i8 83, label %bb.al
    i8 48, label %bb.aq
    i8 63, label %bb.at
    i8 64, label %bb.aw
    i8 79, label %bb.bi
    i8 112, label %bb.bn
    i8 96, label %bb.bq
    i8 113, label %bb.bt
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.dq = icmp ugt i32 %i.dp, 11
  br i1 %i.dq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dr = call zeroext i16 @tvb_get_ntohs(ptr noundef %.096.ph.i, i32 noundef %i.dn)
  %i.ds = load i32, ptr @hf_c1222_logon_id, align 4
  %i.dt = zext i16 %i.dr to i32                   ; 2 uses
  %i.du = call ptr @proto_tree_add_uint(ptr noundef %i.de, i32 noundef %i.ds, ptr noundef %.096.ph.i, i32 noundef %i.dn, i32 noundef 2, i32 noundef %i.dt) ; 0 uses
  %i.dv = add i32 %i.cu, 3
  %i.dw = load i32, ptr @hf_c1222_logon_user, align 4
  %i.dx = load ptr, ptr %i.ci, align 8
  %i.dy = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.de, i32 noundef %i.dw, ptr noundef %.096.ph.i, i32 noundef %i.dv, i32 noundef 10, i32 noundef 0, ptr noundef %i.dx, ptr noundef nonnull %i.a) ; 0 uses
  %i.dz = add i32 %i.cu, 13
  %i.ea = load i32, ptr %i.c, align 4
  %i.eb = add i32 %i.ea, -12
  store i32 %i.eb, ptr %i.c, align 4
  %i.ec = load ptr, ptr %i.ci, align 8
  %i.ed = call ptr @val_to_str(ptr noundef %i.ec, i32 noundef 80, ptr noundef @commandnames, ptr noundef @.str.264)
  %i.ee = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.de, ptr noundef @.str.263, ptr noundef %i.ed, i32 noundef %i.dt, ptr noundef %i.ee)
  br label %parse_c1222_detailed.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.ef = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %i.am, ptr noundef %i.de, ptr noundef @ei_c1222_command_truncated, ptr noundef @.str.265) ; 0 uses
  br label %parse_c1222_detailed.exit.i

bb.ag:                                            ; preds = %bb.ac
  %i.eg = icmp ugt i32 %i.dp, 19
  br i1 %i.eg, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.eh = load i32, ptr @hf_c1222_security_password, align 4
  %i.ei = load ptr, ptr %i.ci, align 8
  %i.ej = call ptr @proto_tree_add_item_ret_string(ptr noundef %i.de, i32 noundef %i.eh, ptr noundef %.096.ph.i, i32 noundef %i.dn, i32 noundef 20, i32 noundef 0, ptr noundef %i.ei, ptr noundef nonnull %i.b) ; 0 uses
  %i.ek = add i32 %i.cu, 21                       ; 3 uses
  %i.el = load i32, ptr %i.c, align 4
  %i.em = add i32 %i.el, -20                      ; 2 uses
  store i32 %i.em, ptr %i.c, align 4
  %i.en = icmp ugt i32 %i.em, 1
  br i1 %i.en, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eo = call zeroext i16 @tvb_get_ntohs(ptr noundef %.096.ph.i, i32 noundef %i.ek)
  %i.ep = load i32, ptr @hf_c1222_logon_id, align 4
  %i.eq = zext i16 %i.eo to i32                   ; 2 uses
  %i.er = call ptr @proto_tree_add_uint(ptr noundef %i.de, i32 noundef %i.ep, ptr noundef %.096.ph.i, i32 noundef %i.ek, i32 noundef 2, i32 noundef %i.eq) ; 0 uses
  %i.es = add i32 %i.cu, 23
  %i.et = load i32, ptr %i.c, align 4
  %i.eu = add i32 %i.et, -2
  store i32 %i.eu, ptr %i.c, align 4
  %i.ev = load ptr, ptr %i.ci, align 8
  %i.ew = call ptr @val_to_str(ptr noundef %i.ev, i32 noundef 81, ptr noundef @commandnames, ptr noundef @.str.264)
  %i.ex = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.de, ptr noundef @.str.266, ptr noundef %i.ew, ptr noundef %i.ex, i32 noundef %i.eq)
  br label %parse_c1222_detailed.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.ey = load ptr, ptr %i.ci, align 8
  %i.ez = call ptr @val_to_str(ptr noundef %i.ey, i32 noundef 81, ptr noundef @commandnames, ptr noundef @.str.264)
  %i.fa = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.de, ptr noundef @.str.267, ptr noundef %i.ez, ptr noundef %i.fa)
  br label %parse_c1222_detailed.exit.i

bb.ak:                                            ; preds = %bb.ag
  %i.fb = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %i.am, ptr noundef %i.de, ptr noundef @ei_c1222_command_truncated, ptr noundef @.str.268) ; 0 uses
  br label %parse_c1222_detailed.exit.i

bb.al:                                            ; preds = %bb.ac
  %.not370.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not370.i.i, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fc = call zeroext i8 @tvb_get_uint8(ptr noundef %.096.ph.i, i32 noundef %i.dn)
  %i.fd = load i32, ptr @hf_c1222_auth_len, align 4
  %i.fe = zext i8 %i.fc to i32                    ; 7 uses
  %i.ff = call ptr @proto_tree_add_uint(ptr noundef %i.de, i32 noundef %i.fd, ptr noundef %.096.ph.i, i32 noundef %i.dn, i32 noundef 1, i32 noundef %i.fe) ; 0 uses
  %i.fg = add i32 %i.cu, 2                        ; 4 uses
  %i.fh = load i32, ptr %i.c, align 4
  %.not371.i.i = icmp ult i32 %i.fh, %i.fe
  br i1 %.not371.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fi = load ptr, ptr %i.ci, align 8
  %i.fj = call ptr @tvb_bytes_to_str(ptr noundef %i.fi, ptr noundef %.096.ph.i, i32 noundef %i.fg, i32 noundef %i.fe)
  %i.fk = load i32, ptr @hf_c1222_auth_data, align 4
  %i.fl = call ptr @proto_tree_add_item(ptr noundef %i.de, i32 noundef %i.fk, ptr noundef %.096.ph.i, i32 noundef %i.fg, i32 noundef %i.fe, i32 noundef 0) ; 0 uses
  %i.fm = add i32 %i.fg, %i.fe
  %.neg.i.i = xor i32 %i.fe, -1
  %i.fn = load i32, ptr %i.c, align 4
  %i.fo = add i32 %i.fn, %.neg.i.i
  store i32 %i.fo, ptr %i.c, align 4
  %i.fp = load ptr, ptr %i.ci, align 8
  %i.fq = call ptr @val_to_str(ptr noundef %i.fp, i32 noundef 83, ptr noundef @commandnames, ptr noundef @.str.264)
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.de, ptr noundef @.str.269, ptr noundef %i.fq, i32 noundef %i.fe, ptr noundef %i.fj)
  br label %parse_c1222_detailed.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.fr = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %i.am, ptr noundef %i.de, ptr noundef @ei_c1222_command_truncated, ptr noundef @.str.270) ; 0 uses
  br label %parse_c1222_detailed.exit.i

bb.ap:                                            ; preds = %bb.al
  %i.fs = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %i.am, ptr noundef %i.de, ptr noundef @ei_c1222_command_truncated, ptr noundef @.str.270) ; 0 uses
  br label %parse_c1222_detailed.exit.i

bb.aq:                                            ; preds = %bb.ac
  %i.ft = icmp ugt i32 %i.dp, 1
  br i1 %i.ft, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fu = call zeroext i16 @tvb_get_ntohs(ptr noundef %.096.ph.i, i32 noundef %i.dn)
  %i.fv = load i32, ptr @hf_c1222_read_table, align 4
  %i.fw = zext i16 %i.fu to i32                   ; 3 uses
  %i.fx = call ptr @proto_tree_add_uint(ptr noundef %i.de, i32 noundef %i.fv, ptr noundef %.096.ph.i, i32 noundef %i.dn, i32 noundef 2, i32 noundef %i.fw) ; 0 uses
  %i.fy = load ptr, ptr %i.ci, align 8
  %i.fz = call ptr @val_to_str(ptr noundef %i.fy, i32 noundef 48, ptr noundef @commandnames, ptr noundef @.str.264)
  %i.ga = load ptr, ptr %i.ci, align 8
  %i.gb = lshr i32 %i.fw, 8
  %i.gc = and i32 %i.gb, 248
  %i.gd = call ptr @val_to_str(ptr noundef %i.ga, i32 noundef %i.gc, ptr noundef @tableflags, ptr noundef @.str.272)
  %i.ge = and i32 %i.fw, 2047
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.de, ptr noundef @.str.271, ptr noundef %i.fz, ptr noundef %i.gd, i32 noundef %i.ge)
  %i.gf = add i32 %i.cu, 3
  %i.gg = load i32, ptr %i.c, align 4
  %i.gh = add i32 %i.gg, -2
  store i32 %i.gh, ptr %i.c, align 4
  br label %parse_c1222_detailed.exit.i

bb.as:                                            ; preds = %bb.aq
  %i.gi = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %i.am, ptr noundef %i.de, ptr noundef @ei_c1222_command_truncated, ptr noundef @.str.273) ; 0 uses
  br label %parse_c1222_detailed.exit.i

bb.at:                                            ; preds = %bb.ac
  %i.gj = icmp ugt i32 %i.dp, 6
  br i1 %i.gj, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gk = call zeroext i16 @tvb_get_ntohs(ptr noundef %.096.ph.i, i32 noundef %i.dn)
  %i.gl = load i32, ptr @hf_c1222_read_table, align 4
  %i.gm = zext i16 %i.gk to i32                   ; 3 uses
  %i.gn = call ptr @proto_tree_add_uint(ptr noundef %i.de, i32 noundef %i.gl, ptr noundef %.096.ph.i, i32 noundef %i.dn, i32 noundef 2, i32 noundef %i.gm) ; 0 uses
  %i.go = add i32 %i.cu, 3
  %i.gp = load i32, ptr %i.c, align 4
  %i.gq = add i32 %i.gp, -2
  store i32 %i.gq, ptr %i.c, align 4
  %i.gr = load i32, ptr @hf_c1222_read_offset, align 4
  %i.gs = call ptr @proto_tree_add_item(ptr noundef %i.de, i32 noundef %i.gr, ptr noundef %.096.ph.i, i32 noundef %i.go, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.gt = add i32 %i.cu, 6
  %i.gu = load i32, ptr %i.c, align 4
  %i.gv = add i32 %i.gu, -3
  store i32 %i.gv, ptr %i.c, align 4
  %i.gw = load i32, ptr @hf_c1222_read_count, align 4
  %i.gx = call ptr @proto_tree_add_item(ptr noundef %i.de, i32 noundef %i.gw, ptr noundef %.096.ph.i, i32 noundef %i.gt, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.gy = add i32 %i.cu, 8
  %i.gz = load i32, ptr %i.c, align 4
  %i.ha = add i32 %i.gz, -2
  store i32 %i.ha, ptr %i.c, align 4
  %i.hb = load ptr, ptr %i.ci, align 8
  %i.hc = call ptr @val_to_str(ptr noundef %i.hb, i32 noundef 63, ptr noundef @commandnames, ptr noundef @.str.264)
  %i.hd = load ptr, ptr %i.ci, align 8
  %i.he = lshr i32 %i.gm, 8
  %i.hf = and i32 %i.he, 248
  %i.hg = call ptr @val_to_str(ptr noundef %i.hd, i32 noundef %i.hf, ptr noundef @tableflags, ptr noundef @.str.272)
  %i.hh = and i32 %i.gm, 2047
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.de, ptr noundef @.str.271, ptr noundef %i.hc, ptr noundef %i.hg, i32 noundef %i.hh)
  br label %parse_c1222_detailed.exit.i

bb.av:                                            ; preds = %bb.at
  %i.hi = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %i.am, ptr noundef %i.de, ptr noundef @ei_c1222_command_truncated, ptr noundef @.str.273) ; 0 uses
  br label %parse_c1222_detailed.exit.i

end_hunk_0
begin_hunk_1_@dissect_c1222_User_information:bb.a
  %i.ke = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %i.am, ptr noundef %i.de, ptr noundef @ei_c1222_command_truncated, ptr noundef @.str.275) ; 0 uses
  br label %parse_c1222_detailed.exit.i

bb.bh:                                            ; preds = %bb.aw
  %i.kf = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %i.am, ptr noundef %i.de, ptr noundef @ei_c1222_command_truncated, ptr noundef @.str.275) ; 0 uses
  br label %parse_c1222_detailed.exit.i

bb.bi:                                            ; preds = %bb.ac
  %i.kg = icmp ugt i32 %i.dp, 7
  br i1 %i.kg, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.kh = call zeroext i16 @tvb_get_ntohs(ptr noundef %.096.ph.i, i32 noundef %i.dn)
  %i.ki = load i32, ptr @hf_c1222_write_table, align 4
  %i.kj = zext i16 %i.kh to i32                   ; 3 uses
  %i.kk = call ptr @proto_tree_add_uint(ptr noundef %i.de, i32 noundef %i.ki, ptr noundef %.096.ph.i, i32 noundef %i.dn, i32 noundef 2, i32 noundef %i.kj) ; 0 uses
  %i.kl = add i32 %i.cu, 3
  %i.km = load i32, ptr %i.c, align 4
  %i.kn = add i32 %i.km, -2
  store i32 %i.kn, ptr %i.c, align 4
  %i.ko = load i32, ptr @hf_c1222_write_offset, align 4
  %i.kp = call ptr @proto_tree_add_item(ptr noundef %i.de, i32 noundef %i.ko, ptr noundef %.096.ph.i, i32 noundef %i.kl, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.kq = add i32 %i.cu, 6                        ; 2 uses
  %i.kr = load i32, ptr %i.c, align 4
  %i.ks = add i32 %i.kr, -3
  store i32 %i.ks, ptr %i.c, align 4
  %i.kt = call zeroext i16 @tvb_get_ntohs(ptr noundef %.096.ph.i, i32 noundef %i.kq) ; 2 uses
  %i.ku = load i32, ptr @hf_c1222_write_size, align 4
  %i.kv = zext i16 %i.kt to i32                   ; 6 uses
  %i.kw = call ptr @proto_tree_add_uint(ptr noundef %i.de, i32 noundef %i.ku, ptr noundef %.096.ph.i, i32 noundef %i.kq, i32 noundef 2, i32 noundef %i.kv) ; 0 uses
  %i.kx = add i32 %i.cu, 8                        ; 4 uses
  %i.ky = load i32, ptr %i.c, align 4
  %i.kz = add i32 %i.ky, -2                       ; 2 uses
  store i32 %i.kz, ptr %i.c, align 4
  %.not368.not.i.i = icmp ugt i32 %i.kz, %i.kv
  br i1 %.not368.not.i.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.la = load i32, ptr @hf_c1222_write_data, align 4
  %i.lb = call ptr @proto_tree_add_item(ptr noundef %i.de, i32 noundef %i.la, ptr noundef %.096.ph.i, i32 noundef %i.kx, i32 noundef %i.kv, i32 noundef 0) ; 0 uses
  %i.lc = add i32 %i.kx, %i.kv                    ; 2 uses
  %i.ld = load i32, ptr %i.c, align 4
  %i.le = sub i32 %i.ld, %i.kv
  store i32 %i.le, ptr %i.c, align 4
  %.not8.i380.i.i = icmp eq i16 %i.kt, 0
  br i1 %.not8.i380.i.i, label %c1222_cksum.exit387.i.i, label %.lr.ph.i381.i.i

.lr.ph.i381.i.i:                                  ; preds = %bb.bk, %.lr.ph.i381.i.i
  %.011.i382.i.i = phi i8 [ %i.lg, %.lr.ph.i381.i.i ], [ 0, %bb.bk ]
  %.0610.i383.i.i = phi i32 [ %i.li, %.lr.ph.i381.i.i ], [ %i.kv, %bb.bk ]
  %.079.i384.i.i = phi i32 [ %i.lh, %.lr.ph.i381.i.i ], [ %i.kx, %bb.bk ] ; 2 uses
  %i.lf = call zeroext i8 @tvb_get_uint8(ptr noundef %.096.ph.i, i32 noundef %.079.i384.i.i)
  %i.lg = add i8 %i.lf, %.011.i382.i.i            ; 2 uses
  %i.lh = add i32 %.079.i384.i.i, 1
  %i.li = add nsw i32 %.0610.i383.i.i, -1         ; 2 uses
  %.not.i385.i.i = icmp eq i32 %i.li, 0
  br i1 %.not.i385.i.i, label %c1222_cksum.exit387.i.i, label %.lr.ph.i381.i.i, !llvm.loop !21

c1222_cksum.exit387.i.i:                          ; preds = %.lr.ph.i381.i.i, %bb.bk
  %.0.lcssa.i386.i.i = phi i8 [ 0, %bb.bk ], [ %i.lg, %.lr.ph.i381.i.i ]
  %i.lj = sub i8 0, %.0.lcssa.i386.i.i
  %i.lk = load i32, ptr @hf_c1222_write_chksum, align 4
  %i.ll = load i32, ptr @hf_c1222_write_chksum_status, align 4
  %i.lm = zext i8 %i.lj to i32
  %i.ln = call ptr @proto_tree_add_checksum(ptr noundef %i.de, ptr noundef %.096.ph.i, i32 noundef %i.lc, i32 noundef %i.lk, i32 noundef %i.ll, ptr noundef @ei_c1222_bad_checksum, ptr noundef %i.am, i32 noundef %i.lm, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.lo = load ptr, ptr %i.ci, align 8
  %i.lp = call ptr @val_to_str(ptr noundef %i.lo, i32 noundef 79, ptr noundef @commandnames, ptr noundef @.str.264)
  %i.lq = load ptr, ptr %i.ci, align 8
  %i.lr = lshr i32 %i.kj, 8
  %i.ls = and i32 %i.lr, 248
  %i.lt = call ptr @val_to_str(ptr noundef %i.lq, i32 noundef %i.ls, ptr noundef @tableflags, ptr noundef @.str.272)
  %i.lu = and i32 %i.kj, 2047
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.de, ptr noundef @.str.271, ptr noundef %i.lp, ptr noundef %i.lt, i32 noundef %i.lu)
  %i.lv = add i32 %i.lc, 1
  %i.lw = load i32, ptr %i.c, align 4
  %i.lx = add i32 %i.lw, -1
  store i32 %i.lx, ptr %i.c, align 4
  br label %parse_c1222_detailed.exit.i

bb.bl:                                            ; preds = %bb.bj
  %i.ly = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %i.am, ptr noundef %i.de, ptr noundef @ei_c1222_command_truncated, ptr noundef @.str.275) ; 0 uses
  br label %parse_c1222_detailed.exit.i

bb.bm:                                            ; preds = %bb.bi
  %i.lz = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %i.am, ptr noundef %i.de, ptr noundef @ei_c1222_command_truncated, ptr noundef @.str.275) ; 0 uses
  br label %parse_c1222_detailed.exit.i

bb.bn:                                            ; preds = %bb.ac
  %.not.i100.i = icmp eq i32 %i.dp, 0
  br i1 %.not.i100.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ma = call zeroext i8 @tvb_get_uint8(ptr noundef %.096.ph.i, i32 noundef %i.dn)
  %i.mb = load i32, ptr @hf_c1222_wait_secs, align 4
  %i.mc = zext i8 %i.ma to i32                    ; 2 uses
  %i.md = call ptr @proto_tree_add_uint(ptr noundef %i.de, i32 noundef %i.mb, ptr noundef %.096.ph.i, i32 noundef %i.dn, i32 noundef 1, i32 noundef %i.mc) ; 0 uses
  %i.me = add i32 %i.cu, 2
  %i.mf = load i32, ptr %i.c, align 4
  %i.mg = add i32 %i.mf, -1
  store i32 %i.mg, ptr %i.c, align 4
  %i.mh = load ptr, ptr %i.ci, align 8
  %i.mi = call ptr @val_to_str(ptr noundef %i.mh, i32 noundef 112, ptr noundef @commandnames, ptr noundef @.str.264)
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.de, ptr noundef @.str.276, ptr noundef %i.mi, i32 noundef %i.mc)
  br label %parse_c1222_detailed.exit.i

bb.bp:                                            ; preds = %bb.bn
  %i.mj = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %i.am, ptr noundef %i.de, ptr noundef @ei_c1222_command_truncated, ptr noundef @.str.277) ; 0 uses
  br label %parse_c1222_detailed.exit.i

bb.bq:                                            ; preds = %bb.ac
  %i.mk = icmp ugt i32 %i.dp, 2
  br i1 %i.mk, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ml = call zeroext i16 @tvb_get_ntohs(ptr noundef %.096.ph.i, i32 noundef %i.dn)
  %i.mm = load i32, ptr @hf_c1222_neg_pkt_size, align 4
  %i.mn = zext i16 %i.ml to i32                   ; 2 uses
  %i.mo = call ptr @proto_tree_add_uint(ptr noundef %i.de, i32 noundef %i.mm, ptr noundef %.096.ph.i, i32 noundef %i.dn, i32 noundef 2, i32 noundef %i.mn) ; 0 uses
  %i.mp = add i32 %i.cu, 3                        ; 2 uses
  %i.mq = load i32, ptr %i.c, align 4
  %i.mr = add i32 %i.mq, -2
  store i32 %i.mr, ptr %i.c, align 4
  %i.ms = call zeroext i8 @tvb_get_uint8(ptr noundef %.096.ph.i, i32 noundef %i.mp)
  %i.mt = load i32, ptr @hf_c1222_neg_nbr_pkts, align 4
  %i.mu = zext i8 %i.ms to i32                    ; 2 uses
  %i.mv = call ptr @proto_tree_add_uint(ptr noundef %i.de, i32 noundef %i.mt, ptr noundef %.096.ph.i, i32 noundef %i.mp, i32 noundef 1, i32 noundef %i.mu) ; 0 uses
  %i.mw = add i32 %i.cu, 4
  %i.mx = load i32, ptr %i.c, align 4
  %i.my = add i32 %i.mx, -1
  store i32 %i.my, ptr %i.c, align 4
  %i.mz = load ptr, ptr %i.ci, align 8
  %i.na = call ptr @val_to_str(ptr noundef %i.mz, i32 noundef 96, ptr noundef @commandnames, ptr noundef @.str.264)
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.de, ptr noundef @.str.278, ptr noundef %i.na, i32 noundef %i.mn, i32 noundef %i.mu, i32 noundef %spec.select373.i.i)
  br label %parse_c1222_detailed.exit.i

bb.bs:                                            ; preds = %bb.bq
  %i.nb = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %i.am, ptr noundef %i.de, ptr noundef @ei_c1222_command_truncated, ptr noundef @.str.279) ; 0 uses
  br label %parse_c1222_detailed.exit.i

bb.bt:                                            ; preds = %bb.ac
  %i.nc = icmp ugt i32 %i.dp, 3
  br i1 %i.nc, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.nd = call zeroext i8 @tvb_get_uint8(ptr noundef %.096.ph.i, i32 noundef %i.dn)
  %i.ne = load i32, ptr @hf_c1222_timing_setup_traffic, align 4
  %i.nf = zext i8 %i.nd to i32                    ; 2 uses
  %i.ng = call ptr @proto_tree_add_uint(ptr noundef %i.de, i32 noundef %i.ne, ptr noundef %.096.ph.i, i32 noundef %i.dn, i32 noundef 1, i32 noundef %i.nf) ; 0 uses
  %i.nh = add i32 %i.cu, 2                        ; 2 uses
  %i.ni = load i32, ptr %i.c, align 4
  %i.nj = add i32 %i.ni, -1
  store i32 %i.nj, ptr %i.c, align 4
  %i.nk = call zeroext i8 @tvb_get_uint8(ptr noundef %.096.ph.i, i32 noundef %i.nh)
  %i.nl = load i32, ptr @hf_c1222_timing_setup_inter_char, align 4
  %i.nm = zext i8 %i.nk to i32                    ; 2 uses
  %i.nn = call ptr @proto_tree_add_uint(ptr noundef %i.de, i32 noundef %i.nl, ptr noundef %.096.ph.i, i32 noundef %i.nh, i32 noundef 1, i32 noundef %i.nm) ; 0 uses
  %i.no = add i32 %i.cu, 3                        ; 2 uses
  %i.np = load i32, ptr %i.c, align 4
  %i.nq = add i32 %i.np, -1
  store i32 %i.nq, ptr %i.c, align 4
  %i.nr = call zeroext i8 @tvb_get_uint8(ptr noundef %.096.ph.i, i32 noundef %i.no)
  %i.ns = load i32, ptr @hf_c1222_timing_setup_resp_to, align 4
  %i.nt = zext i8 %i.nr to i32                    ; 2 uses
  %i.nu = call ptr @proto_tree_add_uint(ptr noundef %i.de, i32 noundef %i.ns, ptr noundef %.096.ph.i, i32 noundef %i.no, i32 noundef 1, i32 noundef %i.nt) ; 0 uses
  %i.nv = add i32 %i.cu, 4                        ; 2 uses
  %i.nw = load i32, ptr %i.c, align 4
  %i.nx = add i32 %i.nw, -1
  store i32 %i.nx, ptr %i.c, align 4
  %i.ny = call zeroext i8 @tvb_get_uint8(ptr noundef %.096.ph.i, i32 noundef %i.nv)
  %i.nz = load i32, ptr @hf_c1222_timing_setup_nbr_retries, align 4
  %i.oa = zext i8 %i.ny to i32                    ; 2 uses
  %i.ob = call ptr @proto_tree_add_uint(ptr noundef %i.de, i32 noundef %i.nz, ptr noundef %.096.ph.i, i32 noundef %i.nv, i32 noundef 1, i32 noundef %i.oa) ; 0 uses
  %i.oc = add i32 %i.cu, 5
  %i.od = load i32, ptr %i.c, align 4
  %i.oe = add i32 %i.od, -1
  store i32 %i.oe, ptr %i.c, align 4
  %i.of = load ptr, ptr %i.ci, align 8
  %i.og = call ptr @val_to_str(ptr noundef %i.of, i32 noundef 113, ptr noundef @commandnames, ptr noundef @.str.264)
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.de, ptr noundef @.str.280, ptr noundef %i.og, i32 noundef %i.nf, i32 noundef %i.nm, i32 noundef %i.nt, i32 noundef %i.oa)
  br label %parse_c1222_detailed.exit.i

bb.bv:                                            ; preds = %bb.bt
  %i.oh = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %i.am, ptr noundef %i.de, ptr noundef @ei_c1222_command_truncated, ptr noundef @.str.279) ; 0 uses
  br label %parse_c1222_detailed.exit.i

bb.bw:                                            ; preds = %bb.ac
  %i.oi = load ptr, ptr %i.ci, align 8
  %i.oj = call ptr @val_to_str(ptr noundef %i.oi, i32 noundef %spec.select.i.i, ptr noundef @commandnames, ptr noundef @.str.264)
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.de, ptr noundef @.str.281, ptr noundef %i.oj)
  %i.ok = load i32, ptr %i.c, align 4             ; 2 uses
  %.not372.i.i = icmp eq i32 %i.ok, 0
  br i1 %.not372.i.i, label %parse_c1222_detailed.exit.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ol = load i32, ptr @hf_c1222_data, align 4
  %i.om = call ptr @proto_tree_add_item(ptr noundef %i.de, i32 noundef %i.ol, ptr noundef %.096.ph.i, i32 noundef %i.dn, i32 noundef %i.ok, i32 noundef 0) ; 0 uses
  br label %parse_c1222_detailed.exit.i

parse_c1222_detailed.exit.i:                      ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bs, %bb.br, %bb.bp, %bb.bo, %bb.bm, %bb.bl, %c1222_cksum.exit387.i.i, %bb.bh, %bb.bg, %bb.bf, %bb.av, %bb.au, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.an, %bb.ak, %bb.aj, %bb.ai, %bb.af, %bb.ae
  %.4.i = phi i32 [ %i.dn, %bb.bw ], [ %i.dn, %bb.bx ], [ %i.dz, %bb.ae ], [ %i.dn, %bb.af ], [ %i.es, %bb.ai ], [ %i.ek, %bb.aj ], [ %i.dn, %bb.ak ], [ %i.dn, %bb.ap ], [ %i.fg, %bb.ao ], [ %i.fm, %bb.an ], [ %i.gf, %bb.ar ], [ %i.dn, %bb.as ], [ %i.gy, %bb.au ], [ %i.dn, %bb.av ], [ %i.kb, %bb.bf ], [ %i.hv, %bb.bg ], [ %i.dn, %bb.bh ], [ %i.lv, %c1222_cksum.exit387.i.i ], [ %i.kx, %bb.bl ], [ %i.dn, %bb.bm ], [ %i.dn, %bb.bp ], [ %i.me, %bb.bo ], [ %i.mw, %bb.br ], [ %i.dn, %bb.bs ], [ %i.oc, %bb.bu ], [ %i.dn, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.on = load i32, ptr %i.c, align 4
  %i.oo = add i32 %i.on, %.4.i                    ; 3 uses
  %i.op = call i32 @tvb_captured_length_remaining(ptr noundef %.096.ph.i, i32 noundef %i.oo)
  %i.oq = icmp ugt i32 %i.op, %i.cg
  br i1 %i.oq, label %bb.t, label %._crit_edge.i, !llvm.loop !22

bb.by:                                            ; preds = %bb.ab
  %i.or = call ptr @expert_add_info(ptr noundef %i.am, ptr noundef %i.ak, ptr noundef @ei_c1222_epsem_field_length_error) ; 0 uses
  br label %dissect_epsem.exit

._crit_edge.i:                                    ; preds = %parse_c1222_detailed.exit.i, %bb.s
  %.1199.lcssa.i = phi i32 [ %.0198.i, %bb.s ], [ %i.oo, %parse_c1222_detailed.exit.i ]
  br i1 %.093.ph.i, label %bb.bz, label %dissect_epsem.exit

bb.bz:                                            ; preds = %._crit_edge.i, %.thread213.i
  %.1222.i = phi ptr [ %1, %.thread213.i ], [ %.096.ph.i, %._crit_edge.i ] ; 2 uses
  %.2221.i = phi i32 [ %i.bz, %.thread213.i ], [ %.1199.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.095206220.i = phi i64 [ 0, %.thread213.i ], [ %.095.ph.i, %._crit_edge.i ]
  %.094208219.i = phi i64 [ %.094.i, %.thread213.i ], [ %.094.ph.i, %._crit_edge.i ]
  %i.os = call i32 @tvb_captured_length_remaining(ptr noundef %.1222.i, i32 noundef %.2221.i)
  %i.ot = icmp ugt i32 %i.os, 3
  br i1 %i.ot, label %bb.ca, label %bb.cf

bb.ca:                                            ; preds = %bb.bz
  %i.ou = load i32, ptr @hf_c1222_epsem_mac, align 4
  %i.ov = call ptr @proto_tree_add_item(ptr noundef %i.ak, i32 noundef %i.ou, ptr noundef %.1222.i, i32 noundef %.2221.i, i32 noundef 4, i32 noundef 0)
  %i.ow = load i32, ptr @ett_c1222_crypto, align 4
  %i.ox = call ptr @proto_item_add_subtree(ptr noundef %i.ov, i32 noundef %i.ow) ; 2 uses
  %i.oy = load i32, ptr @hf_c1222_epsem_crypto_good, align 4
  %i.oz = call ptr @proto_tree_add_boolean(ptr noundef %i.ox, i32 noundef %i.oy, ptr noundef %1, i32 noundef %.2221.i, i32 noundef 4, i64 noundef %.095206220.i) ; 2 uses
  %.not.i102.i = icmp eq ptr %i.oz, null
  br i1 %.not.i102.i, label %proto_item_set_generated.exit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.pa = getelementptr i8, ptr %i.oz, i64 40
  %i.pb = load ptr, ptr %i.pa, align 8            ; 2 uses
  %.not5.i.i = icmp eq ptr %i.pb, null
  br i1 %.not5.i.i, label %proto_item_set_generated.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.pc = getelementptr i8, ptr %i.pb, i64 28     ; 2 uses
  %i.pd = load i32, ptr %i.pc, align 4
  %i.pe = or i32 %i.pd, 2
  store i32 %i.pe, ptr %i.pc, align 4
  br label %proto_item_set_generated.exit.i

proto_item_set_generated.exit.i:                  ; preds = %bb.cc, %bb.cb, %bb.ca
  %i.pf = load i32, ptr @hf_c1222_epsem_crypto_bad, align 4
  %i.pg = call ptr @proto_tree_add_boolean(ptr noundef %i.ox, i32 noundef %i.pf, ptr noundef %1, i32 noundef %.2221.i, i32 noundef 4, i64 noundef %.094208219.i) ; 2 uses
  %.not.i103.i = icmp eq ptr %i.pg, null
  br i1 %.not.i103.i, label %dissect_epsem.exit, label %bb.cd

bb.cd:                                            ; preds = %proto_item_set_generated.exit.i
  %i.ph = getelementptr i8, ptr %i.pg, i64 40
  %i.pi = load ptr, ptr %i.ph, align 8            ; 2 uses
  %.not5.i104.i = icmp eq ptr %i.pi, null
  br i1 %.not5.i104.i, label %dissect_epsem.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.pj = getelementptr i8, ptr %i.pi, i64 28     ; 2 uses
  %i.pk = load i32, ptr %i.pj, align 4
  %i.pl = or i32 %i.pk, 2
  store i32 %i.pl, ptr %i.pj, align 4
  br label %dissect_epsem.exit

bb.cf:                                            ; preds = %bb.bz
  %i.pm = call ptr @expert_add_info(ptr noundef %i.am, ptr noundef %i.ak, ptr noundef @ei_c1222_mac_missing) ; 0 uses
  br label %dissect_epsem.exit

dissect_epsem.exit:                               ; preds = %bb.d, %bb.f, %bb.j, %ber_len_ok.exit.i, %bb.by, %._crit_edge.i, %proto_item_set_generated.exit.i, %bb.cd, %bb.ce, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.pn = load i32, ptr %i.i, align 4
  %i.po = add i32 %i.pn, %i.ad
  br label %bb.cg

bb.cg:                                            ; preds = %bb.b, %dissect_epsem.exit, %bb.a
  %.0 = phi i32 [ %i.po, %dissect_epsem.exit ], [ %i.ad, %bb.b ], [ %i.n, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_object_identifier(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memdup(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_choice(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @tvb_ensure_bytes_exist(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memcpy(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_OBJECT_IDENTIFIER(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_object_identifier(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_RELATIVE_OID(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_relative_oid(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_relative_oid(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_integer(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_Calling_authentication_value_U(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_c1222_Calling_authentication_value_U, align 4
  %i.b = tail call i32 @dissect_ber_sequence(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @Calling_authentication_value_U_sequence, i32 noundef %5, i32 noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_INTEGER(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_integer(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_Authentication_value_encoding(i1 zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_c1222_Authentication_value_encoding, align 4
  %i.b = tail call i32 @dissect_ber_choice(ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @Authentication_value_encoding_choice, i32 noundef %5, i32 noundef %i.a, ptr noundef null)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_Calling_authentication_value_single_asn1(i1 zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_c1222_Calling_authentication_value_single_asn1, align 4
  %i.b = tail call i32 @dissect_ber_choice(ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @Calling_authentication_value_single_asn1_choice, i32 noundef %5, i32 noundef %i.a, ptr noundef null)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_OCTET_STRING(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_octet_string(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_Calling_authentication_value_c1222(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_tagged_type(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, i8 noundef signext 2, i32 noundef 1, i1 noundef zeroext true, ptr noundef @dissect_c1222_Calling_authentication_value_c1222_U)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_Calling_authentication_value_c1221(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_tagged_type(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %5, i8 noundef signext 2, i32 noundef 0, i1 noundef zeroext true, ptr noundef @dissect_c1222_Calling_authentication_value_c1221_U)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_Calling_authentication_value_c1222_U(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_c1222_Calling_authentication_value_c1222_U, align 4
  %i.b = tail call i32 @dissect_ber_sequence(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @Calling_authentication_value_c1222_U_sequence, i32 noundef %5, i32 noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_Key_id_element(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_constrained_octet_string(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 1, i32 noundef %5, ptr noundef null) ; 2 uses
  %i.b = sub i32 %i.a, %2                         ; 3 uses
  %i.c = getelementptr i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 416
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = sext i32 %i.b to i64
  %i.h = tail call ptr @tvb_memdup(ptr noundef %i.f, ptr noundef %1, i32 noundef %2, i64 noundef %i.g)
  store ptr %i.h, ptr @key_id_element, align 8
  store i32 %i.b, ptr @key_id_element_len, align 4
  store i32 %i.b, ptr @key_id_element_allocated, align 4
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_Iv_element(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_constrained_octet_string(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef 4, i32 noundef %5, ptr noundef null) ; 2 uses
  %i.b = sub i32 %i.a, %2                         ; 3 uses
  %i.c = getelementptr i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 416
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = sext i32 %i.b to i64
  %i.h = tail call ptr @tvb_memdup(ptr noundef %i.f, ptr noundef %1, i32 noundef %2, i64 noundef %i.g)
  store ptr %i.h, ptr @iv_element, align 8
  store i32 %i.b, ptr @iv_element_len, align 4
  store i32 %i.b, ptr @iv_element_allocated, align 4
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_constrained_octet_string(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_Calling_authentication_value_c1221_U(i1 zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr @ett_c1222_Calling_authentication_value_c1221_U, align 4
  %i.b = tail call i32 @dissect_ber_choice(ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, ptr noundef @Calling_authentication_value_c1221_U_choice, i32 noundef %5, i32 noundef %i.a, ptr noundef null)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_OCTET_STRING_SIZE_CONSTR001(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_constrained_octet_string(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef 3, i32 noundef 259, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_OCTET_STRING_SIZE_1_255(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_constrained_octet_string(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 255, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_c1222_OCTET_STRING_SIZE_CONSTR002(i1 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = tail call i32 @dissect_ber_constrained_octet_string(i1 noundef zeroext %0, ptr noundef %3, ptr noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 255, i32 noundef %5, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_octet_string(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_ber_identifier(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc zeroext i1 @decrypt_packet(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [300 x i8], align 16              ; 6 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = icmp ult i32 %1, 4
  br i1 %i.c, label %canonify_unencrypted_header.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @key_id_element, align 8   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.010 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.b ]
  br label %bb.e

bb.e:                                             ; preds = %bb.q, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ %.2, %bb.q ]      ; 4 uses
  %i.g = phi ptr [ @aSO_context, %bb.d ], [ %i.bf, %bb.q ] ; 3 uses
  %.03035.i = phi ptr [ @canonifyTable, %bb.d ], [ %i.bd, %bb.q ] ; 8 uses
  %i.h = getelementptr i8, ptr %.03035.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i32, ptr %i.i, align 4              ; 6 uses
  %i.k = getelementptr i8, ptr %.03035.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i32, ptr %i.l, align 4
  %i.n = load i8, ptr %.03035.i, align 8, !range !6, !noundef !7
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = load ptr, ptr %i.g, align 8
  %i.q = icmp eq ptr %i.p, null                   ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.q, label %canonify_unencrypted_header.exit.thread, label %.thread.i

bb.g:                                             ; preds = %bb.e
  br i1 %i.q, label %bb.q, label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.f
  %i.r = getelementptr i8, ptr %.03035.i, i64 3
  %i.s = load i8, ptr %i.r, align 1, !range !6, !noundef !7
  %i.t = trunc nuw i8 %i.s to i1                  ; 2 uses
  br i1 %i.t, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.thread.i
  %i.u = getelementptr i8, ptr %.03035.i, i64 2
  %i.v = load i8, ptr %i.u, align 2
  %i.w = add nuw nsw i32 %.0, 1                   ; 2 uses
  %i.x = zext nneg i32 %.0 to i64
  %i.y = getelementptr i8, ptr %i.a, i64 %i.x
  store i8 %i.v, ptr %i.y, align 1
  %i.z = zext nneg i32 %i.w to i64
  %i.aa = getelementptr i8, ptr %i.a, i64 %i.z    ; 3 uses
  %3 = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %4 = shufflevector <4 x i32> %3, <4 x i32> poison, <4 x i32> zeroinitializer
  %5 = icmp ugt <4 x i32> %4, <i32 255, i32 65535, i32 16777215, i32 127>
  %6 = select <4 x i1> %5, <4 x i32> <i32 1, i32 1, i32 1, i32 2>, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %7 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %6) ; 5 uses
  %i.ab = icmp samesign ugt i32 %7, 4
  br i1 %i.ab, label %encode_ber_len.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = icmp eq i32 %7, 1
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = trunc i32 %i.j to i8
  %i.ae = and i8 %i.ad, 127
  store i8 %i.ae, ptr %i.aa, align 1
  br label %encode_ber_len.exit.i

bb.k:                                             ; preds = %bb.i
  %i.af = add nsw i32 %7, -1                      ; 2 uses
  %i.ag = trunc nuw nsw i32 %i.af to i8
  %i.ah = or i8 %i.ag, -128
  store i8 %i.ah, ptr %i.aa, align 1
  %.not18.i.i = icmp eq i32 %i.j, 0
  br i1 %.not18.i.i, label %encode_ber_len.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.k
  %i.ai = zext nneg i32 %i.af to i64
  %i.aj = getelementptr i8, ptr %i.aa, i64 %i.ai
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.01520.i.i = phi i32 [ %i.am, %.lr.ph.i.i ], [ %i.j, %.lr.ph.preheader.i.i ] ; 2 uses
  %.01619.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %i.aj, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ak = trunc i32 %.01520.i.i to i8
  %i.al = getelementptr i8, ptr %.01619.i.i, i64 -1
  store i8 %i.ak, ptr %.01619.i.i, align 1
  %i.am = lshr i32 %.01520.i.i, 8                 ; 2 uses
  %.not.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i, label %encode_ber_len.exit.i, label %.lr.ph.i.i, !llvm.loop !23

encode_ber_len.exit.i:                            ; preds = %.lr.ph.i.i, %bb.k, %bb.j, %bb.h
  %.0.i.i = phi i32 [ 0, %bb.h ], [ 1, %bb.j ], [ %7, %bb.k ], [ %7, %.lr.ph.i.i ]
  %i.an = add nuw nsw i32 %.0.i.i, %i.w
  br label %bb.l

bb.l:                                             ; preds = %encode_ber_len.exit.i, %.thread.i
  %.1 = phi i32 [ %i.an, %encode_ber_len.exit.i ], [ %.0, %.thread.i ] ; 3 uses
  %i.ao = getelementptr i8, ptr %.03035.i, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !range !6, !noundef !7
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %8 = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> zeroinitializer
  %10 = icmp ugt <4 x i32> %9, <i32 255, i32 65535, i32 16777215, i32 127>
  %11 = select <4 x i1> %10, <4 x i32> <i32 1, i32 1, i32 1, i32 2>, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %12 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %11)
  %13 = shl nuw nsw i32 %12, 1
  %14 = add nuw nsw i32 %13, 3
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i = phi i32 [ %14, %bb.m ], [ %i.j, %bb.l ] ; 3 uses
  %i.ar = add i32 %.0.i, %.1                      ; 3 uses
  %i.as = icmp ugt i32 %i.ar, 300
  %i.at = icmp ult i32 %i.m, %.0.i
  %or.cond.i = select i1 %i.as, i1 true, i1 %i.at
  br i1 %or.cond.i, label %canonify_unencrypted_header.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = zext nneg i32 %.1 to i64                ; 2 uses
  %i.av = getelementptr i8, ptr %i.a, i64 %i.au
  %i.aw = load ptr, ptr %i.g, align 8
  %i.ax = zext i32 %.0.i to i64
  %i.ay = sub nsw i64 300, %i.au
  %i.az = icmp ugt i32 %.1, 300
  %i.ba = select i1 %i.az, i64 0, i64 %i.ay       ; 2 uses
  %i.bb = icmp ne i64 %i.ba, -1
  call void @llvm.assume(i1 %i.bb)
  %i.bc = call ptr @__memcpy_chk(ptr noundef %i.av, ptr noundef %i.aw, i64 noundef %i.ax, i64 noundef %i.ba) #13, !alias.scope !29 ; 0 uses
  br i1 %i.t, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %i.g, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.g
  %.2 = phi i32 [ %i.ar, %bb.p ], [ %i.ar, %bb.o ], [ %.0, %bb.g ] ; 3 uses
  %i.bd = getelementptr i8, ptr %.03035.i, i64 32
  %i.be = getelementptr i8, ptr %.03035.i, i64 40
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %canonify_unencrypted_header.exit, label %bb.e, !llvm.loop !27

canonify_unencrypted_header.exit:                 ; preds = %bb.q
  %.not14 = icmp eq i32 %.2, 0
  br i1 %.not14, label %canonify_unencrypted_header.exit.thread, label %bb.r

bb.r:                                             ; preds = %canonify_unencrypted_header.exit
  %i.bg = load ptr, ptr @c1222_uat_data, align 8  ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %canonify_unencrypted_header.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.r
  %i.bi = load i32, ptr @num_c1222_uat_data, align 4 ; 2 uses
  %.not.i16 = icmp eq i32 %i.bi, 0
  br i1 %.not.i16, label %canonify_unencrypted_header.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %wide.trip.count.i = zext i32 %i.bi to i64
  br label %bb.t

bb.s:                                             ; preds = %bb.t
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %canonify_unencrypted_header.exit.thread, label %bb.t, !llvm.loop !28

bb.t:                                             ; preds = %bb.s, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.s ] ; 2 uses
  %i.bj = getelementptr [24 x i8], ptr %i.bg, i64 %indvars.iv.i ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = icmp eq i32 %i.bk, %.010
  br i1 %i.bl, label %bb.u, label %bb.s

bb.u:                                             ; preds = %bb.t
  %i.bm = getelementptr i8, ptr %i.bj, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef align 1 dereferenceable(16) %i.bn, i64 noundef 16, i1 noundef false) #13
  %i.bo = add i32 %1, -4                          ; 2 uses
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr i8, ptr %0, i64 %i.bp
  %i.br = select i1 %2, i8 2, i8 1
  %i.bs = call zeroext i1 @Eax_Decrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %0, i32 noundef %.2, i32 noundef 16, i32 noundef %i.bo, ptr noundef %i.bq, i8 noundef zeroext %i.br)
  br label %canonify_unencrypted_header.exit.thread

canonify_unencrypted_header.exit.thread:          ; preds = %bb.f, %bb.n, %bb.s, %.preheader.i, %bb.r, %bb.u, %canonify_unencrypted_header.exit, %bb.a
  %.011 = phi i1 [ false, %bb.a ], [ false, %.preheader.i ], [ false, %canonify_unencrypted_header.exit ], [ %i.bs, %bb.u ], [ false, %bb.s ], [ false, %bb.r ], [ false, %bb.n ], [ false, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i1 %.011
}

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_real_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @tvb_set_child_real_data_tvbuff(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_offset_exists(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @Eax_Decrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_set_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_bytes_to_str(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_uint16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_checksum(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { allocsize(1) }
attributes #12 = { allocsize(0) }
attributes #13 = { nounwind }
attributes #14 = { allocsize(2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, i1 true, !"memcpy.inline"}
!10 = distinct !{!10, !9, !"memcpy.inline: argument 1"}
!11 = distinct !{!11, !9, !"memcpy.inline: argument 0"}
!12 = !{!11, !10}
!13 = distinct !{!13, i1 true, !"memcpy.inline"}
!14 = distinct !{!14, !13, !"memcpy.inline: argument 1"}
!15 = distinct !{!15, !13, !"memcpy.inline: argument 0"}
!16 = !{!15, !14}
!17 = distinct !{!17, i1 true, !"memcpy.inline"}
!18 = distinct !{!18, !17, !"memcpy.inline: argument 1"}
!19 = distinct !{!19, !17, !"memcpy.inline: argument 0"}
!20 = !{!19, !18}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, i1 true, !"memcpy.inline"}
!25 = distinct !{!25, !24, !"memcpy.inline: argument 1"}
!26 = distinct !{!26, !24, !"memcpy.inline: argument 0"}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = !{!26, !25}
end_hunk_1
