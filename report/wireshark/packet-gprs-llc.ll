Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-gprs-llc?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
@llcgprs_subdissector_table = internal unnamed_addr global ptr null, align 8
@gprs_llc_handle = internal unnamed_addr global ptr null, align 8
@.str.125 = private unnamed_addr constant [22 x i8] c"autodetect_cipher_bit\00", align 1
@.str.126 = private unnamed_addr constant [22 x i8] c"Autodetect cipher bit\00", align 1
@.str.127 = private unnamed_addr constant [82 x i8] c"Whether to autodetect the cipher bit (because it might be set on unciphered data)\00", align 1
@ignore_cipher_bit = internal global i8 0, align 1
@.str.128 = private unnamed_addr constant [11 x i8] c"wtap_encap\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"sndcpxid\00", align 1
@sndcp_xid_handle = internal unnamed_addr global ptr null, align 8
@.str.130 = private unnamed_addr constant [10 x i8] c"sapi_abrv\00", align 1
@.str.131 = private unnamed_addr constant [11 x i8] c"Reserved 0\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"LLGMM\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"TOM2\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"LL3\00", align 1
@.str.135 = private unnamed_addr constant [11 x i8] c"Reserved 4\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"LL5\00", align 1
@.str.137 = private unnamed_addr constant [11 x i8] c"Reserved 6\00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c"LLSMS\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"TOM8\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"LL9\00", align 1
@.str.141 = private unnamed_addr constant [12 x i8] c"Reserved 10\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"LL11\00", align 1
@.str.143 = private unnamed_addr constant [12 x i8] c"Reserved 12\00", align 1
@.str.144 = private unnamed_addr constant [12 x i8] c"Reserved 13\00", align 1
@.str.145 = private unnamed_addr constant [12 x i8] c"Reserved 14\00", align 1
@.str.146 = private unnamed_addr constant [12 x i8] c"Reserved 15\00", align 1
@sapi_abrv = internal constant [17 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.131 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.132 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.133 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.134 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.135 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.136 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.137 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.138 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.139 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.140 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.141 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.142 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.143 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.144 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.145 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.146 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.148 = private unnamed_addr constant [19 x i8] c"Invalid frame PD=1\00", align 1
@.str.149 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c"RR\00", align 1
@.str.151 = private unnamed_addr constant [4 x i8] c"ACK\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c"RNR\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"SACK\00", align 1
@cr_formats_ipluss = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.150 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.151 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.152 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.153 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.155 = private unnamed_addr constant [35 x i8] c"DownLink/UpLink = Command/Response\00", align 1
@.str.156 = private unnamed_addr constant [35 x i8] c"DownLink/UpLink = Response/Command\00", align 1
@.str.157 = private unnamed_addr constant [7 x i8] c"sapi_t\00", align 1
@.str.158 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@.str.159 = private unnamed_addr constant [25 x i8] c"GPRS Mobility Management\00", align 1
@.str.160 = private unnamed_addr constant [24 x i8] c"Tunneling of messages 2\00", align 1
@.str.161 = private unnamed_addr constant [12 x i8] c"User data 3\00", align 1
@.str.162 = private unnamed_addr constant [12 x i8] c"User data 5\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"SMS\00", align 1
@.str.164 = private unnamed_addr constant [24 x i8] c"Tunneling of messages 8\00", align 1
@.str.165 = private unnamed_addr constant [12 x i8] c"User data 9\00", align 1
@.str.166 = private unnamed_addr constant [13 x i8] c"User data 11\00", align 1
@sapi_t = internal constant [17 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.158 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.159 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.160 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.161 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.158 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.162 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.158 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.163 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.164 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.165 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.158 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.166 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.158 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.158 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.158 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.158 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.168 = private unnamed_addr constant [16 x i8] c"encrypted frame\00", align 1
@.str.169 = private unnamed_addr constant [20 x i8] c"non encrypted frame\00", align 1
@.str.170 = private unnamed_addr constant [51 x i8] c"FCS covers the frame header and information fields\00", align 1
@.str.171 = private unnamed_addr constant [80 x i8] c"FCS covers only the frame header and first N202 octets of the information field\00", align 1
@.str.172 = private unnamed_addr constant [50 x i8] c"To solicit an acknowledgement from the peer LLE. \00", align 1
@.str.173 = private unnamed_addr constant [57 x i8] c"The peer LLE is not requested to send an acknowledgment.\00", align 1
@.str.174 = private unnamed_addr constant [12 x i8] c"DM-response\00", align 1
@.str.175 = private unnamed_addr constant [13 x i8] c"DISC-command\00", align 1
@.str.176 = private unnamed_addr constant [12 x i8] c"UA-response\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"SABM\00", align 1
@.str.178 = private unnamed_addr constant [5 x i8] c"FRMR\00", align 1
@.str.179 = private unnamed_addr constant [4 x i8] c"XID\00", align 1
@cr_formats_unnumb = internal constant [7 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.174 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.175 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.176 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.177 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.178 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.179 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@dummy_ui_cmd = internal constant [6 x i8] c"C\C0\01+++", align 1
@.str.181 = private unnamed_addr constant [56 x i8] c"Invalid packet - Protocol Discriminator bit is set to 1\00", align 1
@.str.182 = private unnamed_addr constant [9 x i8] c"SAPI: %s\00", align 1
@.str.183 = private unnamed_addr constant [13 x i8] c"Unknown (%u)\00", align 1
@.str.184 = private unnamed_addr constant [88 x i8] c"MS-SGSN LLC (Mobile Station - Serving GPRS Support Node Logical Link Control)  SAPI: %s\00", align 1
@.str.185 = private unnamed_addr constant [24 x i8] c"Address field  SAPI: %s\00", align 1
@.str.186 = private unnamed_addr constant [6 x i8] c", I, \00", align 1
@.str.187 = private unnamed_addr constant [13 x i8] c"Unknown (%d)\00", align 1
@.str.188 = private unnamed_addr constant [12 x i8] c", N(S) = %u\00", align 1
@.str.189 = private unnamed_addr constant [12 x i8] c", N(R) = %u\00", align 1
@.str.190 = private unnamed_addr constant [46 x i8] c"Information format: %s: N(S) = %u,  N(R) = %u\00", align 1
@.str.191 = private unnamed_addr constant [9 x i8] c", k = %u\00", align 1
@.str.192 = private unnamed_addr constant [19 x i8] c"SACK FRAME: k = %u\00", align 1
@.str.193 = private unnamed_addr constant [6 x i8] c", S, \00", align 1
@dissect_llcgprs.s_formats = internal constant [6 x ptr] [ptr @hf_llcgprs_S_fmt, ptr @hf_llcgprs_As, ptr @hf_llcgprs_sspare, ptr @hf_llcgprs_NR, ptr @hf_llcgprs_sjsd, ptr null], align 16
@.str.194 = private unnamed_addr constant [21 x i8] c"Supervisory format: \00", align 1
@.str.195 = private unnamed_addr constant [24 x i8] c"SACK FRAME: length = %u\00", align 1
@.str.196 = private unnamed_addr constant [7 x i8] c", UI, \00", align 1
@.str.197 = private unnamed_addr constant [12 x i8] c", N(U) = %u\00", align 1
@dissect_llcgprs.i_formats = internal constant [6 x ptr] [ptr @hf_llcgprs_U_fmt, ptr @hf_llcgprs_sp_bits, ptr @hf_llcgprs_NU, ptr @hf_llcgprs_E_bit, ptr @hf_llcgprs_PM_bit, ptr null], align 16
@.str.198 = private unnamed_addr constant [38 x i8] c"Unconfirmed Information format - UI: \00", align 1
@.str.199 = private unnamed_addr constant [6 x i8] c", U, \00", align 1
@.str.200 = private unnamed_addr constant [24 x i8] c"Unknown/invalid code:%X\00", align 1
@.str.201 = private unnamed_addr constant [21 x i8] c"Unnumbered frame: %s\00", align 1
@.str.202 = private unnamed_addr constant [17 x i8] c"0x%06x (correct)\00", align 1
@.str.203 = private unnamed_addr constant [63 x i8] c"0x%06x  (incorrect, maybe due to ciphering, calculated 0x%06x)\00", align 1
@.str.204 = private unnamed_addr constant [38 x i8] c"0x%06x  (incorrect, should be 0x%06x)\00", align 1
@.str.205 = private unnamed_addr constant [40 x i8] c"FCS: Not enough data to compute the FCS\00", align 1
@.str.206 = private unnamed_addr constant [28 x i8] c"TOM Envelope - Protocol: %s\00", align 1
@.str.207 = private unnamed_addr constant [31 x i8] c"Information Field: Length = %u\00", align 1
@.str.208 = private unnamed_addr constant [29 x i8] c"Rejected Frame Control Field\00", align 1
@.str.209 = private unnamed_addr constant [23 x i8] c"Information Field Data\00", align 1
@.str.210 = private unnamed_addr constant [37 x i8] c"unprotected,non-ciphered information\00", align 1
@.str.211 = private unnamed_addr constant [36 x i8] c"protected, non-ciphered information\00", align 1
@.str.212 = private unnamed_addr constant [33 x i8] c"unprotected,ciphered information\00", align 1
@.str.213 = private unnamed_addr constant [32 x i8] c"protected, ciphered information\00", align 1
@pme = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.210 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.211 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.212 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.213 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@tbl_crc24 = internal unnamed_addr constant [256 x i32] [i32 0, i32 14067574, i32 16139607, i32 2155041, i32 12026133, i32 6366819, i32 4310082, i32 9921332, i32 3410321, i32 14855911, i32 12733638, i32 1371056, i32 8620164, i32 5582834, i32 7720403, i32 10709669, i32 6820642, i32 12498004, i32 10376821, i32 4780291, i32 14651959, i32 603457, i32 2742112, i32 16740374, i32 6036147, i32 9092549, i32 11165668, i32 8190098, i32 15440806, i32 4013264, i32 1957617, i32 13334919, i32 13641284, i32 426290, i32 2515731, i32 15778917, i32 6793041, i32 11599911, i32 9560582, i32 4670832, i32 14954453, i32 3311779, i32 1206914, i32 12897780, i32 5484224, i32 8718774, i32 10873751, i32 7556321, i32 12072294, i32 7246352, i32 5140529, i32 10016583, i32 1029235, i32 14226181, i32 16380196, i32 3102290, i32 9190647, i32 5938049, i32 8026528, i32 11329238, i32 3915234, i32 15538836, i32 13498549, i32 1793987, i32 16467763, i32 3006533, i32 852580, i32 14394642, i32 5031462, i32 10117456, i32 12223345, i32 7087111, i32 13586082, i32 1698260, i32 3738613, i32 15707267, i32 7917495, i32 11430081, i32 9341664, i32 5778838, i32 9655313, i32 4584295, i32 6623558, i32 11777584, i32 2413828, i32 15889010, i32 13799507, i32 276261, i32 10968448, i32 7469814, i32 5314775, i32 8896417, i32 1105045, i32 13007843, i32 15112642, i32 3161780, i32 2842999, i32 16631297, i32 14492704, i32 754518, i32 10281058, i32 4867860, i32 6989109, i32 12321347, i32 2058470, i32 13225872, i32 15281585, i32 4164295, i32 11069939, i32 8277637, i32 6204580, i32 8915922, i32 4420181, i32 9819427, i32 11876098, i32 6525044, i32 16053056, i32 2249782, i32 177687, i32 13898081, i32 7830468, i32 10607794, i32 8470163, i32 5741029, i32 12647121, i32 1465767, i32 3587974, i32 14686448, i32 11371997, i32 8069803, i32 6013066, i32 9267196, i32 1705160, i32 13411262, i32 15483295, i32 3860201, i32 10062924, i32 5188410, i32 7325979, i32 12152429, i32 3018073, i32 16296495, i32 14174222, i32 978808, i32 12949247, i32 1257865, i32 3396520, i32 15037662, i32 7477226, i32 10793116, i32 8671933, i32 5436875, i32 15834990, i32 2570264, i32 514617, i32 13729103, i32 4595323, i32 9484557, i32 11557676, i32 6749274, i32 8233881, i32 11207919, i32 9168590, i32 6111672, i32 13247116, i32 1869306, i32 3958747, i32 15384749, i32 4827656, i32 10423678, i32 12578655, i32 6899753, i32 16657181, i32 2657387, i32 552522, i32 14600508, i32 1421499, i32 12785613, i32 14939628, i32 3494554, i32 10629550, i32 7640792, i32 5534969, i32 8573839, i32 2210090, i32 16195164, i32 14154877, i32 88843, i32 9844799, i32 4235081, i32 6323560, i32 11983390, i32 5685998, i32 8414616, i32 10520505, i32 7741647, i32 14763003, i32 3662989, i32 1509036, i32 12689882, i32 6474623, i32 11824137, i32 9735720, i32 4335966, i32 13978218, i32 257308, i32 2297661, i32 16099403, i32 4116940, i32 15234746, i32 13145243, i32 1979373, i32 8999129, i32 6289327, i32 8328590, i32 11121400, i32 710749, i32 14450475, i32 16555274, i32 2767484, i32 12409160, i32 7077438, i32 4922399, i32 10337129, i32 8840362, i32 5260252, i32 7381501, i32 10880651, i32 3237311, i32 15188681, i32 13050088, i32 1148830, i32 11726139, i32 6572621, i32 4499564, i32 9572122, i32 355374, i32 13880152, i32 15935865, i32 2461199, i32 15660936, i32 3690750, i32 1618655, i32 13505961, i32 5863069, i32 9425387, i32 11482058, i32 7967932, i32 14351897, i32 809327, i32 2931534, i32 16391224, i32 7175948, i32 12310650, i32 10173019, i32 5086509], align 16
@.str.215 = private unnamed_addr constant [14 x i8] c"Not specified\00", align 1
@.str.216 = private unnamed_addr constant [12 x i8] c"TIA/EIA-136\00", align 1
@.str.217 = private unnamed_addr constant [5 x i8] c"RRLP\00", align 1
@.str.218 = private unnamed_addr constant [17 x i8] c"Reserved value 3\00", align 1
@.str.219 = private unnamed_addr constant [17 x i8] c"Reserved value 4\00", align 1
@.str.220 = private unnamed_addr constant [17 x i8] c"Reserved value 5\00", align 1
@.str.221 = private unnamed_addr constant [17 x i8] c"Reserved value 6\00", align 1
@.str.222 = private unnamed_addr constant [17 x i8] c"Reserved value 7\00", align 1
@.str.223 = private unnamed_addr constant [17 x i8] c"Reserved value 8\00", align 1
@.str.224 = private unnamed_addr constant [17 x i8] c"Reserved value 9\00", align 1
@.str.225 = private unnamed_addr constant [18 x i8] c"Reserved value 10\00", align 1
@.str.226 = private unnamed_addr constant [18 x i8] c"Reserved value 11\00", align 1
@.str.227 = private unnamed_addr constant [18 x i8] c"Reserved value 12\00", align 1
@.str.228 = private unnamed_addr constant [18 x i8] c"Reserved value 13\00", align 1
@.str.229 = private unnamed_addr constant [18 x i8] c"Reserved value 14\00", align 1
@.str.230 = private unnamed_addr constant [23 x i8] c"Reserved for extension\00", align 1
@tompd_formats = internal constant [17 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.215 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.216 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.217 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.218 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.220 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.221 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.222 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.223 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.224 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.225 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.226 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.227 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.228 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.229 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.230 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.232 = private unnamed_addr constant [34 x i8] c"XID parameter Type: L3 parameters\00", align 1
@.str.233 = private unnamed_addr constant [35 x i8] c"XID Parameter Type: %s - Value: %u\00", align 1
@xid_param_type_str_ext = internal global %struct._value_string_ext { ptr @_try_val_to_str_ext_init, i32 0, i32 13, ptr @xid_param_type_str, ptr @.str.236, ptr null }, align 8
@.str.234 = private unnamed_addr constant [17 x i8] c"Reserved Type:%X\00", align 1
@.str.235 = private unnamed_addr constant [23 x i8] c"XID Parameter Type: %s\00", align 1
@.str.236 = private unnamed_addr constant [19 x i8] c"xid_param_type_str\00", align 1
@.str.237 = private unnamed_addr constant [29 x i8] c"Version (LLC version number)\00", align 1
@.str.238 = private unnamed_addr constant [52 x i8] c"IOV-UI (ciphering Input offset value for UI frames)\00", align 1
@.str.239 = private unnamed_addr constant [50 x i8] c"IOV-I (ciphering Input offset value for I frames)\00", align 1
@.str.240 = private unnamed_addr constant [30 x i8] c"T200 (retransmission timeout)\00", align 1
@.str.241 = private unnamed_addr constant [37 x i8] c"N200 (max number of retransmissions)\00", align 1
@.str.242 = private unnamed_addr constant [51 x i8] c"N201-U (max info field length for U and UI frames)\00", align 1
@.str.243 = private unnamed_addr constant [44 x i8] c"N201-I (max info field length for I frames)\00", align 1
@.str.244 = private unnamed_addr constant [45 x i8] c"mD (I frame buffer size in the DL direction)\00", align 1
@.str.245 = private unnamed_addr constant [45 x i8] c"mU (I frame buffer size in the UL direction)\00", align 1
@.str.246 = private unnamed_addr constant [37 x i8] c"kD (window size in the DL direction)\00", align 1
@.str.247 = private unnamed_addr constant [37 x i8] c"kU (window size in the UL direction)\00", align 1
@.str.248 = private unnamed_addr constant [19 x i8] c"Layer-3 Parameters\00", align 1
@.str.249 = private unnamed_addr constant [6 x i8] c"Reset\00", align 1
@xid_param_type_str = internal constant [14 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.237 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.238 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.239 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.240 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.241 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.242 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.243 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.244 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.245 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.246 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.247 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.248 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.249 }, { i32, [4 x i8], ptr } zeroinitializer], align 16

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_llcgprs() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123) ; 2 uses
  store i32 %i.a, ptr @proto_llcgprs, align 4
  %i.b = tail call ptr @register_dissector_table(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.124, i32 noundef %i.a, i32 noundef 4, i32 noundef 2)
  store ptr %i.b, ptr @llcgprs_subdissector_table, align 8
  %i.c = load i32, ptr @proto_llcgprs, align 4
  tail call void @proto_register_field_array(i32 noundef %i.c, ptr noundef nonnull @proto_register_llcgprs.hf, i32 noundef 47)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_llcgprs.ett, i32 noundef 5)
  %i.d = load i32, ptr @proto_llcgprs, align 4
  %i.e = tail call ptr @expert_register_protocol(i32 noundef %i.d)
  tail call void @expert_register_field_array(ptr noundef %i.e, ptr noundef nonnull @proto_register_llcgprs.ei, i32 noundef 1)
  %i.f = load i32, ptr @proto_llcgprs, align 4
  %i.g = tail call ptr @register_dissector(ptr noundef nonnull @.str.123, ptr noundef nonnull @dissect_llcgprs, i32 noundef %i.f)
  store ptr %i.g, ptr @gprs_llc_handle, align 8
  %i.h = load i32, ptr @proto_llcgprs, align 4
  %i.i = tail call ptr @prefs_register_protocol(i32 noundef %i.h, ptr noundef null)
  tail call void @prefs_register_bool_preference(ptr noundef %i.i, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.127, ptr noundef nonnull @ignore_cipher_bit)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector_table(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_llcgprs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_memeql(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @dummy_ui_cmd, i64 noundef 6)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @hf_llcgprs_dummy_ui, align 4
  %i.c = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.d = tail call ptr @proto_tree_add_boolean(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef %i.c, i64 noundef 1) ; 0 uses
  %i.e = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.ba

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 8          ; 16 uses
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @col_set_str(ptr noundef %i.g, i32 noundef 35, ptr noundef nonnull @.str.122)
  %i.h = tail call i32 @tvb_reported_length(ptr noundef %0) ; 3 uses
  %i.i = icmp ugt i32 %i.h, 2                     ; 2 uses
  %i.j = add i32 %i.h, -3                         ; 5 uses
  %.0539 = select i1 %i.i, i32 %i.j, i32 0        ; 25 uses
  %i.k = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.l = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 4 uses
  %i.m = zext i8 %i.l to i32
  %i.n = icmp ugt i8 %i.l, -128
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.f, align 8
  tail call void @col_set_str(ptr noundef %i.o, i32 noundef 25, ptr noundef nonnull @.str.181)
  br label %bb.ba

bb.e:                                             ; preds = %bb.c
  %i.p = and i8 %i.l, 15                          ; 4 uses
  %i.q = load ptr, ptr %i.f, align 8
  %i.r = getelementptr i8, ptr %1, i64 416        ; 12 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = zext nneg i8 %i.p to i32                 ; 7 uses
  %i.u = tail call ptr @val_to_str_ext(ptr noundef %i.s, i32 noundef %i.t, ptr noundef nonnull @sapi_abrv_ext, ptr noundef nonnull @.str.183)
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.q, i32 noundef 25, ptr noundef nonnull @.str.182, ptr noundef %i.u)
  %.not559 = icmp eq ptr %2, null                 ; 11 uses
  br i1 %.not559, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr @proto_llcgprs, align 4
  %i.w = load ptr, ptr %i.r, align 8
  %i.x = tail call ptr @val_to_str_ext(ptr noundef %i.w, i32 noundef %i.t, ptr noundef nonnull @sapi_t_ext, ptr noundef nonnull @.str.183)
  %i.y = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef nonnull %2, i32 noundef %i.v, ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull @.str.184, ptr noundef %i.x)
  %i.z = load i32, ptr @ett_llcgprs, align 4
  %i.aa = tail call ptr @proto_item_add_subtree(ptr noundef %i.y, i32 noundef %i.z) ; 2 uses
  %i.ab = load i32, ptr @hf_llcgprs_sapi, align 4
  %i.ac = load ptr, ptr %i.r, align 8
  %i.ad = tail call ptr @val_to_str_ext(ptr noundef %i.ac, i32 noundef %i.t, ptr noundef nonnull @sapi_abrv_ext, ptr noundef nonnull @.str.183)
  %i.ae = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.aa, i32 noundef %i.ab, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.t, ptr noundef nonnull @.str.185, ptr noundef %i.ad)
  %i.af = load i32, ptr @ett_llcgprs_adf, align 4
  %i.ag = tail call ptr @proto_item_add_subtree(ptr noundef %i.ae, i32 noundef %i.af) ; 3 uses
  %i.ah = load i32, ptr @hf_llcgprs_pd, align 4
  %i.ai = zext i8 %i.l to i64                     ; 2 uses
  %i.aj = tail call ptr @proto_tree_add_boolean(ptr noundef %i.ag, i32 noundef %i.ah, ptr noundef %0, i32 noundef 0, i32 noundef 1, i64 noundef %i.ai) ; 0 uses
  %i.ak = load i32, ptr @hf_llcgprs_cr, align 4
  %i.al = tail call ptr @proto_tree_add_boolean(ptr noundef %i.ag, i32 noundef %i.ak, ptr noundef %0, i32 noundef 0, i32 noundef 1, i64 noundef %i.ai) ; 0 uses
  %i.am = load i32, ptr @hf_llcgprs_sapib, align 4
  %i.an = tail call ptr @proto_tree_add_uint(ptr noundef %i.ag, i32 noundef %i.am, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.m) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0542 = phi ptr [ %i.aa, %bb.f ], [ null, %bb.e ] ; 17 uses
  %i.ao = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 7 uses
  %i.ap = icmp ult i8 %i.ao, -64
  %i.aq = icmp sgt i8 %i.ao, -1
  %i.ar = select i1 %i.aq, i32 1, i32 2
  %i.as = icmp ult i8 %i.ao, -32
  %i.at = select i1 %i.as, i32 3, i32 4
  %.0544 = select i1 %i.ap, i32 %i.ar, i32 %i.at  ; 2 uses
  switch i32 %.0544, label %default.unreachable644 [
    i32 1, label %bb.h
    i32 2, label %bb.n
    i32 3, label %bb.p
    i32 4, label %bb.r
  ]

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %i.f, align 8
  tail call void @col_append_str(ptr noundef %i.au, i32 noundef 25, ptr noundef nonnull @.str.186)
  %i.av = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 1)
  %i.aw = lshr i16 %i.av, 4
  %i.ax = and i16 %i.aw, 511
  %i.ay = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2) ; 3 uses
  %i.az = lshr i16 %i.ay, 2
  %i.ba = and i16 %i.az, 511
  %i.bb = and i16 %i.ay, 3                        ; 3 uses
  %i.bc = load ptr, ptr %i.f, align 8
  %i.bd = load ptr, ptr %i.r, align 8
  %i.be = zext nneg i16 %i.bb to i32              ; 2 uses
  %i.bf = tail call ptr @val_to_str(ptr noundef %i.bd, i32 noundef %i.be, ptr noundef nonnull @cr_formats_ipluss, ptr noundef nonnull @.str.187)
  tail call void @col_append_str(ptr noundef %i.bc, i32 noundef 25, ptr noundef %i.bf)
  %i.bg = load ptr, ptr %i.f, align 8
  %i.bh = zext nneg i16 %i.ax to i32              ; 3 uses
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.bg, i32 noundef 25, ptr noundef nonnull @.str.188, i32 noundef %i.bh)
  %i.bi = load ptr, ptr %i.f, align 8
  %i.bj = zext nneg i16 %i.ba to i32              ; 3 uses
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.bi, i32 noundef 25, ptr noundef nonnull @.str.189, i32 noundef %i.bj)
  br i1 %.not559, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = zext i16 %i.ay to i32
  %i.bl = load i32, ptr @ett_llcgprs_sframe, align 4
  %i.bm = load ptr, ptr %i.r, align 8
  %i.bn = tail call ptr @val_to_str(ptr noundef %i.bm, i32 noundef %i.be, ptr noundef nonnull @cr_formats_ipluss, ptr noundef nonnull @.str.187)
  %i.bo = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %.0542, ptr noundef %0, i32 noundef 1, i32 noundef 3, i32 noundef %i.bl, ptr noundef null, ptr noundef nonnull @.str.190, ptr noundef %i.bn, i32 noundef %i.bh, i32 noundef %i.bj) ; 6 uses
  %i.bp = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 1)
  %i.bq = zext i16 %i.bp to i32
  %i.br = shl nuw i32 %i.bq, 16                   ; 3 uses
  %i.bs = load i32, ptr @hf_llcgprs_ifmt, align 4
  %i.bt = tail call ptr @proto_tree_add_uint(ptr noundef %i.bo, i32 noundef %i.bs, ptr noundef %0, i32 noundef 1, i32 noundef 3, i32 noundef %i.br) ; 0 uses
  %i.bu = load i32, ptr @hf_llcgprs_Ai, align 4
  %i.bv = zext i32 %i.br to i64
  %i.bw = tail call ptr @proto_tree_add_boolean(ptr noundef %i.bo, i32 noundef %i.bu, ptr noundef %0, i32 noundef 1, i32 noundef 3, i64 noundef %i.bv) ; 0 uses
  %i.bx = load i32, ptr @hf_llcgprs_izerobit, align 4
  %i.by = tail call ptr @proto_tree_add_uint(ptr noundef %i.bo, i32 noundef %i.bx, ptr noundef %0, i32 noundef 1, i32 noundef 3, i32 noundef %i.br) ; 0 uses
  %i.bz = shl nuw nsw i32 %i.bh, 12
  %i.ca = load i32, ptr @hf_llcgprs_isack_ns, align 4
  %i.cb = tail call ptr @proto_tree_add_uint(ptr noundef %i.bo, i32 noundef %i.ca, ptr noundef %0, i32 noundef 1, i32 noundef 3, i32 noundef %i.bz) ; 0 uses
  %i.cc = shl nuw nsw i32 %i.bj, 2
  %i.cd = load i32, ptr @hf_llcgprs_isack_nr, align 4
  %i.ce = tail call ptr @proto_tree_add_uint(ptr noundef %i.bo, i32 noundef %i.cd, ptr noundef %0, i32 noundef 1, i32 noundef 3, i32 noundef %i.cc) ; 0 uses
  %i.cf = load i32, ptr @hf_llcgprs_isack_sfb, align 4
  %i.cg = tail call ptr @proto_tree_add_uint(ptr noundef %i.bo, i32 noundef %i.cf, ptr noundef %0, i32 noundef 1, i32 noundef 3, i32 noundef %i.bk) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ch = icmp eq i16 %i.bb, 3
  br i1 %i.ch, label %bb.k, label %.loopexit576

bb.k:                                             ; preds = %bb.j
  %i.ci = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4) ; 2 uses
  %i.cj = and i8 %i.ci, 31                        ; 2 uses
  %i.ck = add nuw nsw i8 %i.cj, 1
  %i.cl = load ptr, ptr %i.f, align 8
  %i.cm = zext nneg i8 %i.ck to i32               ; 5 uses
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.cl, i32 noundef 25, ptr noundef nonnull @.str.191, i32 noundef %i.cm)
  br i1 %.not559, label %.loopexit575, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cn = zext i8 %i.ci to i32
  %i.co = add nuw nsw i32 %i.cm, 1
  %i.cp = load i32, ptr @ett_llcgprs_sframe, align 4
  %i.cq = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %.0542, ptr noundef %0, i32 noundef 4, i32 noundef %i.co, i32 noundef %i.cp, ptr noundef null, ptr noundef nonnull @.str.192, i32 noundef %i.cm) ; 3 uses
  %i.cr = load i32, ptr @hf_llcgprs_kmask, align 4
  %i.cs = tail call ptr @proto_tree_add_uint(ptr noundef %i.cq, i32 noundef %i.cr, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef %i.cn) ; 0 uses
  %i.ct = load i32, ptr @hf_llcgprs_k, align 4
  %i.cu = tail call ptr @proto_tree_add_uint(ptr noundef %i.cq, i32 noundef %i.ct, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef %i.cm) ; 0 uses
  %i.cv = add nuw nsw i8 %i.cj, 6
  %wide.trip.count = zext nneg i8 %i.cv to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.m
  %.0534580 = phi i32 [ 5, %bb.l ], [ %i.da, %bb.m ] ; 3 uses
  %i.cw = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0534580)
  %i.cx = load i32, ptr @hf_llcgprs_rbyte, align 4
  %i.cy = zext i8 %i.cw to i32
  %i.cz = tail call ptr @proto_tree_add_uint(ptr noundef %i.cq, i32 noundef %i.cx, ptr noundef %0, i32 noundef %.0534580, i32 noundef 1, i32 noundef %i.cy) ; 0 uses
  %i.da = add nuw nsw i32 %.0534580, 1            ; 2 uses
  %exitcond624 = icmp eq i32 %i.da, %wide.trip.count
  br i1 %exitcond624, label %.loopexit575, label %bb.m, !llvm.loop !6

.loopexit575:                                     ; preds = %bb.m, %bb.k
  %i.db = add nuw nsw i32 %i.cm, 5
  br label %.loopexit576

bb.n:                                             ; preds = %bb.g
  %i.dc = load ptr, ptr %i.f, align 8
  tail call void @col_append_str(ptr noundef %i.dc, i32 noundef 25, ptr noundef nonnull @.str.193)
  %i.dd = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.de = and i16 %i.dd, 3                        ; 4 uses
  %i.df = lshr i16 %i.dd, 2
  %i.dg = and i16 %i.df, 511
  %i.dh = load ptr, ptr %i.f, align 8
  %i.di = load ptr, ptr %i.r, align 8
  %i.dj = zext nneg i16 %i.de to i32
  %i.dk = tail call ptr @val_to_str(ptr noundef %i.di, i32 noundef %i.dj, ptr noundef nonnull @cr_formats_ipluss, ptr noundef nonnull @.str.187)
  tail call void @col_append_str(ptr noundef %i.dh, i32 noundef 25, ptr noundef %i.dk)
  %i.dl = load ptr, ptr %i.f, align 8
  %i.dm = zext nneg i16 %i.dg to i32
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.dl, i32 noundef 25, ptr noundef nonnull @.str.189, i32 noundef %i.dm)
  br i1 %.not559, label %.loopexit576, label %.thread

.thread:                                          ; preds = %bb.n
  %i.dn = load i32, ptr @ett_llcgprs_sframe, align 4
  %i.do = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %.0542, ptr noundef %0, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.194, ptr noundef null, i32 noundef %i.dn, ptr noundef nonnull @dissect_llcgprs.s_formats, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.dp = icmp eq i16 %i.de, 3
  br i1 %i.dp, label %bb.o, label %.loopexit576

bb.o:                                             ; preds = %.thread
  %i.dq = add i32 %.0539, -3                      ; 3 uses
  %i.dr = load i32, ptr @ett_llcgprs_sframe, align 4
  %i.ds = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %.0542, ptr noundef %0, i32 noundef 3, i32 noundef %i.dq, i32 noundef %i.dr, ptr noundef null, ptr noundef nonnull @.str.195, i32 noundef %i.dq)
  %.not611 = icmp eq i32 %i.dq, 0
  br i1 %.not611, label %.loopexit576, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %.lr.ph
  %.0533577 = phi i32 [ %i.dx, %.lr.ph ], [ 3, %bb.o ] ; 3 uses
  %i.dt = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0533577)
  %i.du = load i32, ptr @hf_llcgprs_rbyte, align 4
  %i.dv = zext i8 %i.dt to i32
  %i.dw = tail call ptr @proto_tree_add_uint(ptr noundef %i.ds, i32 noundef %i.du, ptr noundef %0, i32 noundef %.0533577, i32 noundef 1, i32 noundef %i.dv) ; 0 uses
  %i.dx = add i32 %.0533577, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.dx, %.0539
  br i1 %exitcond.not, label %.loopexit576, label %.lr.ph, !llvm.loop !8

bb.p:                                             ; preds = %bb.g
  %i.dy = load ptr, ptr %i.f, align 8
  tail call void @col_append_str(ptr noundef %i.dy, i32 noundef 25, ptr noundef nonnull @.str.196)
  %i.dz = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.ea = and i16 %i.dz, 3                        ; 4 uses
  %i.eb = lshr i16 %i.dz, 2
  %i.ec = and i16 %i.eb, 511
  %i.ed = zext nneg i16 %i.ea to i32              ; 2 uses
  %.not560 = icmp samesign ugt i16 %i.ea, 1       ; 2 uses
  %i.ee = and i32 %i.ed, 1
  %i.ef = icmp eq i32 %i.ee, 0
  %i.eg = tail call i32 @llvm.umin.i32(i32 %.0539, i32 7)
  %.0540 = select i1 %i.ef, i32 %i.eg, i32 %.0539 ; 2 uses
  %i.eh = load ptr, ptr %i.f, align 8
  %i.ei = load ptr, ptr %i.r, align 8
  %i.ej = tail call ptr @val_to_str(ptr noundef %i.ei, i32 noundef %i.ed, ptr noundef nonnull @pme, ptr noundef nonnull @.str.187)
  tail call void @col_append_str(ptr noundef %i.eh, i32 noundef 25, ptr noundef %i.ej)
  %i.ek = load ptr, ptr %i.f, align 8
  %i.el = zext nneg i16 %i.ec to i32
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ek, i32 noundef 25, ptr noundef nonnull @.str.197, i32 noundef %i.el)
  br i1 %.not559, label %.loopexit576, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.em = load i32, ptr @ett_llcgprs_ctrlf, align 4
  %i.en = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %.0542, ptr noundef %0, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.198, ptr noundef null, i32 noundef %i.em, ptr noundef nonnull @dissect_llcgprs.i_formats, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %.loopexit576

bb.r:                                             ; preds = %bb.g
  %i.eo = zext i8 %i.ao to i32                    ; 2 uses
  %i.ep = load ptr, ptr %i.f, align 8
  tail call void @col_append_str(ptr noundef %i.ep, i32 noundef 25, ptr noundef nonnull @.str.199)
  %i.eq = and i8 %i.ao, 15
  %i.er = load ptr, ptr %i.f, align 8
  %i.es = load ptr, ptr %i.r, align 8
  %i.et = zext nneg i8 %i.eq to i32               ; 2 uses
  %i.eu = tail call ptr @val_to_str(ptr noundef %i.es, i32 noundef %i.et, ptr noundef nonnull @cr_formats_unnumb, ptr noundef nonnull @.str.200)
  tail call void @col_append_str(ptr noundef %i.er, i32 noundef 25, ptr noundef %i.eu)
  %i.ev = add i32 %.0539, -1
  %i.ew = load i32, ptr @ett_llcgprs_ui, align 4
  %i.ex = load ptr, ptr %i.r, align 8
  %i.ey = tail call ptr @val_to_str(ptr noundef %i.ex, i32 noundef %i.et, ptr noundef nonnull @cr_formats_unnumb, ptr noundef nonnull @.str.200)
  %i.ez = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %.0542, ptr noundef %0, i32 noundef 1, i32 noundef %i.ev, i32 noundef %i.ew, ptr noundef null, ptr noundef nonnull @.str.201, ptr noundef %i.ey) ; 3 uses
  %i.fa = load i32, ptr @hf_llcgprs_Un, align 4
  %i.fb = tail call ptr @proto_tree_add_uint(ptr noundef %i.ez, i32 noundef %i.fa, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.eo) ; 0 uses
  %i.fc = load i32, ptr @hf_llcgprs_PF, align 4
  %i.fd = zext i8 %i.ao to i64
  %i.fe = tail call ptr @proto_tree_add_boolean(ptr noundef %i.ez, i32 noundef %i.fc, ptr noundef %0, i32 noundef 1, i32 noundef 1, i64 noundef %i.fd) ; 0 uses
  %i.ff = load i32, ptr @hf_llcgprs_ucom, align 4
  %i.fg = tail call ptr @proto_tree_add_uint(ptr noundef %i.ez, i32 noundef %i.ff, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.eo) ; 0 uses
  br label %.loopexit576

default.unreachable644:                           ; preds = %bb.y, %bb.g
  unreachable

.loopexit576:                                     ; preds = %.lr.ph, %bb.o, %bb.n, %.thread, %bb.p, %bb.q, %bb.j, %.loopexit575, %bb.r
  %.0543 = phi i16 [ 0, %bb.r ], [ %i.ea, %bb.p ], [ %i.bb, %bb.j ], [ 3, %.loopexit575 ], [ %i.de, %.thread ], [ %i.de, %bb.n ], [ %i.ea, %bb.q ], [ 3, %bb.o ], [ 3, %.lr.ph ]
  %.1541 = phi i32 [ %.0539, %bb.r ], [ %.0540, %bb.p ], [ %.0539, %bb.j ], [ %.0539, %.loopexit575 ], [ %.0539, %.thread ], [ %.0539, %bb.n ], [ %.0540, %bb.q ], [ 3, %bb.o ], [ %.0539, %.lr.ph ] ; 6 uses
  %.1537 = phi i1 [ false, %bb.r ], [ %.not560, %bb.p ], [ false, %bb.j ], [ false, %.loopexit575 ], [ false, %.thread ], [ false, %bb.n ], [ %.not560, %bb.q ], [ false, %bb.o ], [ false, %.lr.ph ]
  %.3 = phi i32 [ 2, %bb.r ], [ 3, %bb.p ], [ 4, %bb.j ], [ %i.db, %.loopexit575 ], [ 3, %.thread ], [ 3, %bb.n ], [ 3, %bb.q ], [ 3, %bb.o ], [ %.0539, %.lr.ph ] ; 39 uses
  %i.fh = icmp uge i32 %i.k, %i.h
  %or.cond = and i1 %i.i, %i.fh
  br i1 %or.cond, label %bb.s, label %bb.x

bb.s:                                             ; preds = %.loopexit576
  %i.fi = tail call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 0, i32 noundef range(i32 0, -3) %.1541) ; 2 uses
  %.not8.i = icmp eq i32 %.1541, 0
  br i1 %.not8.i, label %crc_calc.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.s
  %xtraiter = and i32 %.1541, 1
  %i.fj = icmp eq i32 %.1541, 1
  br i1 %i.fj, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %.1541, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.011.i = phi ptr [ %i.fi, %.lr.ph.i.preheader.new ], [ %i.fs, %.lr.ph.i ] ; 3 uses
  %.079.i = phi i32 [ 16777215, %.lr.ph.i.preheader.new ], [ %i.fx, %.lr.ph.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.fk = lshr i32 %.079.i, 8
  %i.fl = getelementptr i8, ptr %.011.i, i64 1
  %i.fm = load i8, ptr %.011.i, align 1
  %.07.tr.i = trunc i32 %.079.i to i8
  %.narrow.i = xor i8 %i.fm, %.07.tr.i
  %i.fn = zext i8 %.narrow.i to i64
  %i.fo = getelementptr [4 x i8], ptr @tbl_crc24, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = xor i32 %i.fp, %i.fk                    ; 2 uses
  %i.fr = lshr i32 %i.fq, 8
  %i.fs = getelementptr i8, ptr %.011.i, i64 2    ; 2 uses
  %i.ft = load i8, ptr %i.fl, align 1
  %.07.tr.i.1 = trunc i32 %i.fq to i8
  %.narrow.i.1 = xor i8 %i.ft, %.07.tr.i.1
  %i.fu = zext i8 %.narrow.i.1 to i64
  %i.fv = getelementptr [4 x i8], ptr @tbl_crc24, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4
  %i.fx = xor i32 %i.fw, %i.fr                    ; 3 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %crc_calc.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !9

crc_calc.exit.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %crc_calc.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %crc_calc.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.011.i.epil.init = phi ptr [ %i.fi, %.lr.ph.i.preheader ], [ %i.fs, %crc_calc.exit.loopexit.unr-lcssa ]
  %.079.i.epil.init = phi i32 [ 16777215, %.lr.ph.i.preheader ], [ %i.fx, %crc_calc.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod661 = trunc i32 %.1541 to i1
  tail call void @llvm.assume(i1 %lcmp.mod661)
  %i.fy = lshr i32 %.079.i.epil.init, 8
  %i.fz = load i8, ptr %.011.i.epil.init, align 1
  %.07.tr.i.epil = trunc i32 %.079.i.epil.init to i8
  %.narrow.i.epil = xor i8 %i.fz, %.07.tr.i.epil
  %i.ga = zext i8 %.narrow.i.epil to i64
  %i.gb = getelementptr [4 x i8], ptr @tbl_crc24, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4
  %i.gd = xor i32 %i.gc, %i.fy
  br label %crc_calc.exit.loopexit

crc_calc.exit.loopexit:                           ; preds = %crc_calc.exit.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa = phi i32 [ %i.fx, %crc_calc.exit.loopexit.unr-lcssa ], [ %i.gd, %.lr.ph.i.epil.preheader ]
  %i.ge = and i32 %.lcssa, 16777215
  %i.gf = xor i32 %i.ge, 16777215
  br label %crc_calc.exit

crc_calc.exit:                                    ; preds = %crc_calc.exit.loopexit, %bb.s
  %.07.lcssa.i = phi i32 [ 0, %bb.s ], [ %i.gf, %crc_calc.exit.loopexit ] ; 5 uses
  %i.gg = tail call i32 @tvb_get_letoh24(ptr noundef %0, i32 noundef %i.j) ; 5 uses
  %i.gh = icmp eq i32 %.07.lcssa.i, %i.gg
  %i.gi = load i32, ptr @hf_llcgprs_fcs, align 4  ; 3 uses
  br i1 %i.gh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %crc_calc.exit
  %i.gj = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %.0542, i32 noundef %i.gi, ptr noundef %0, i32 noundef %i.j, i32 noundef 3, i32 noundef %.07.lcssa.i, ptr noundef nonnull @.str.202, i32 noundef %.07.lcssa.i) ; 0 uses
  br label %bb.y

bb.u:                                             ; preds = %crc_calc.exit
  br i1 %.1537, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gk = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %.0542, i32 noundef %i.gi, ptr noundef %0, i32 noundef %i.j, i32 noundef 3, i32 noundef %i.gg, ptr noundef nonnull @.str.203, i32 noundef %i.gg, i32 noundef %.07.lcssa.i) ; 0 uses
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.gl = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %.0542, i32 noundef %i.gi, ptr noundef %0, i32 noundef %i.j, i32 noundef 3, i32 noundef %i.gg, ptr noundef nonnull @.str.204, i32 noundef %i.gg, i32 noundef %.07.lcssa.i) ; 0 uses
  br label %bb.y

bb.x:                                             ; preds = %.loopexit576
  %i.gm = load i32, ptr @hf_llcgprs_fcs, align 4
  %i.gn = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %.0542, i32 noundef %i.gm, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.205) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %bb.w, %bb.v, %bb.x
  %i.go = phi i1 [ true, %bb.t ], [ false, %bb.v ], [ false, %bb.w ], [ false, %bb.x ]
  switch i32 %.0544, label %default.unreachable644 [
    i32 1, label %bb.z
    i32 2, label %bb.ae
    i32 3, label %bb.ak
    i32 4, label %bb.as
  ]

bb.z:                                             ; preds = %bb.y
  switch i8 %i.p, label %bb.ac [
    i8 8, label %bb.aa
    i8 2, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  br i1 %.not559, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gp = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.3) ; 3 uses
  %i.gq = zext i8 %i.gp to i32                    ; 2 uses
  %i.gr = lshr i8 %i.gp, 4                        ; 3 uses
  %i.gs = and i8 %i.gp, 15
  %i.gt = sub i32 %.0539, %.3
  %i.gu = load i32, ptr @ett_llcgprs_sframe, align 4
  %i.gv = load ptr, ptr %i.r, align 8
  %i.gw = zext nneg i8 %i.gs to i32
  %i.gx = tail call ptr @val_to_str(ptr noundef %i.gv, i32 noundef %i.gw, ptr noundef nonnull @tompd_formats, ptr noundef nonnull @.str.187)
  %i.gy = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %.0542, ptr noundef %0, i32 noundef %.3, i32 noundef %i.gt, i32 noundef %i.gu, ptr noundef null, ptr noundef nonnull @.str.206, ptr noundef %i.gx) ; 4 uses
  %i.gz = load i32, ptr @hf_llcgprs_tom_rl, align 4
  %i.ha = tail call ptr @proto_tree_add_uint(ptr noundef %i.gy, i32 noundef %i.gz, ptr noundef %0, i32 noundef %.3, i32 noundef 1, i32 noundef %i.gq) ; 0 uses
  %i.hb = load i32, ptr @hf_llcgprs_tom_pd, align 4
  %i.hc = tail call ptr @proto_tree_add_uint(ptr noundef %i.gy, i32 noundef %i.hb, ptr noundef %0, i32 noundef %.3, i32 noundef 1, i32 noundef %i.gq) ; 0 uses
  %i.hd = zext nneg i8 %i.gr to i32
  %.not568 = icmp eq i8 %i.gr, 15
  br i1 %.not568, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ab
  %.4601 = add i32 %.3, 1                         ; 2 uses
  %.not616 = icmp eq i8 %i.gr, 0
  br i1 %.not616, label %._crit_edge605, label %.lr.ph604

.lr.ph604:                                        ; preds = %.preheader, %.lr.ph604
end_hunk_0
