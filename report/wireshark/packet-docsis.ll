Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-docsis?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0
@.str.103 = private unnamed_addr constant [22 x i8] c"docsis.fragment.error\00", align 1
@.str.104 = private unnamed_addr constant [47 x i8] c"Defragmentation error due to illegal fragments\00", align 1
@hf_docsis_fragment_count = internal global i32 0, align 4
@.str.105 = private unnamed_addr constant [15 x i8] c"Fragment count\00", align 1
@.str.106 = private unnamed_addr constant [22 x i8] c"docsis.fragment.count\00", align 1
@hf_docsis_fragment = internal global i32 0, align 4
@.str.107 = private unnamed_addr constant [16 x i8] c"DOCSIS Fragment\00", align 1
@.str.108 = private unnamed_addr constant [16 x i8] c"docsis.fragment\00", align 1
@hf_docsis_fragments = internal global i32 0, align 4
@.str.109 = private unnamed_addr constant [17 x i8] c"DOCSIS Fragments\00", align 1
@.str.110 = private unnamed_addr constant [17 x i8] c"docsis.fragments\00", align 1
@hf_docsis_reassembled_in = internal global i32 0, align 4
@.str.111 = private unnamed_addr constant [28 x i8] c"Reassembled DOCSIS in frame\00", align 1
@.str.112 = private unnamed_addr constant [22 x i8] c"docsis.reassembled_in\00", align 1
@.str.113 = private unnamed_addr constant [48 x i8] c"This DOCSIS packet is reassembled in this frame\00", align 1
@hf_docsis_reassembled_length = internal global i32 0, align 4
@.str.114 = private unnamed_addr constant [26 x i8] c"Reassembled DOCSIS length\00", align 1
@.str.115 = private unnamed_addr constant [26 x i8] c"docsis.reassembled.length\00", align 1
@.str.116 = private unnamed_addr constant [44 x i8] c"The total length of the reassembled payload\00", align 1
@hf_docsis_reassembled_data = internal global i32 0, align 4
@.str.117 = private unnamed_addr constant [24 x i8] c"Reassembled DOCSIS data\00", align 1
@.str.118 = private unnamed_addr constant [24 x i8] c"docsis.reassembled.data\00", align 1
@.str.119 = private unnamed_addr constant [24 x i8] c"The reassembled payload\00", align 1
@hf_docsis_frag_fcs = internal global i32 0, align 4
@.str.120 = private unnamed_addr constant [13 x i8] c"Fragment FCS\00", align 1
@.str.121 = private unnamed_addr constant [16 x i8] c"docsis.frag.fcs\00", align 1
@hf_docsis_frag_fcs_status = internal global i32 0, align 4
@.str.122 = private unnamed_addr constant [20 x i8] c"Fragment FCS Status\00", align 1
@.str.123 = private unnamed_addr constant [23 x i8] c"docsis.frag.fcs.status\00", align 1
@hf_docsis_encrypted_payload = internal global i32 0, align 4
@.str.124 = private unnamed_addr constant [18 x i8] c"Encrypted Payload\00", align 1
@.str.125 = private unnamed_addr constant [25 x i8] c"docsis.encrypted_payload\00", align 1
@.str.126 = private unnamed_addr constant [15 x i8] c"Encrypted data\00", align 1
@proto_register_docsis.ei = internal global [5 x { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } }] [{ ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_docsis_hcs_bad, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.127, i32 16777216, i32 8388608, ptr @.str.128, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }, { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_docsis_len, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.129, i32 117440512, i32 8388608, ptr @.str.130, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }, { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_docsis_len_small, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.131, i32 117440512, i32 8388608, ptr @.str.132, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }, { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_docsis_frag_fcs_bad, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.133, i32 16777216, i32 8388608, ptr @.str.134, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }, { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_docsis_eh_len, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.135, i32 117440512, i32 8388608, ptr @.str.136, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }], align 16
@ei_docsis_hcs_bad = internal global %struct.expert_field zeroinitializer, align 4
@.str.127 = private unnamed_addr constant [15 x i8] c"docsis.hcs_bad\00", align 1
@.str.128 = private unnamed_addr constant [26 x i8] c"Bad header check sequence\00", align 1
@ei_docsis_len = internal global %struct.expert_field zeroinitializer, align 4
@.str.129 = private unnamed_addr constant [20 x i8] c"docsis.len.past_end\00", align 1
@.str.130 = private unnamed_addr constant [52 x i8] c"Length field value goes past the end of the payload\00", align 1
@ei_docsis_len_small = internal global %struct.expert_field zeroinitializer, align 4
@.str.131 = private unnamed_addr constant [21 x i8] c"docsis.len.too_small\00", align 1
@.str.132 = private unnamed_addr constant [32 x i8] c"Length field value is too small\00", align 1
@ei_docsis_frag_fcs_bad = internal global %struct.expert_field zeroinitializer, align 4
@.str.133 = private unnamed_addr constant [20 x i8] c"docsis.frag.fcs_bad\00", align 1
@.str.134 = private unnamed_addr constant [13 x i8] c"Bad checksum\00", align 1
@ei_docsis_eh_len = internal global %struct.expert_field zeroinitializer, align 4
@.str.135 = private unnamed_addr constant [25 x i8] c"docsis.ehdr.len.past_end\00", align 1
@.str.136 = private unnamed_addr constant [32 x i8] c"Extended Header Length Invalid!\00", align 1
@proto_register_docsis.ett = internal global [5 x ptr] [ptr @ett_docsis, ptr @ett_ehdr, ptr @ett_docsis_fragment, ptr @ett_docsis_fragments, ptr @ett_addr], align 16
@ett_docsis = internal global i32 0, align 4
@ett_ehdr = internal global i32 0, align 4
@ett_docsis_fragment = internal global i32 0, align 4
@ett_docsis_fragments = internal global i32 0, align 4
@ett_addr = internal global i32 0, align 4
@.str.137 = private unnamed_addr constant [7 x i8] c"DOCSIS\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"docsis\00", align 1
@proto_docsis = internal unnamed_addr global i32 0, align 4
@.str.139 = private unnamed_addr constant [10 x i8] c"check_fcs\00", align 1
@.str.140 = private unnamed_addr constant [41 x i8] c"Validate the DOCSIS checksum if possible\00", align 1
@.str.141 = private unnamed_addr constant [53 x i8] c"Whether or not to validate the Header Check Sequence\00", align 1
@docsis_check_fcs = internal global i8 1, align 1
@.str.142 = private unnamed_addr constant [25 x i8] c"dissect_encrypted_frames\00", align 1
@.str.143 = private unnamed_addr constant [26 x i8] c"Ignore EH 'encrypted' bit\00", align 1
@.str.144 = private unnamed_addr constant [62 x i8] c"Whether or not to attempt to dissect encrypted DOCSIS payload\00", align 1
@docsis_dissect_encrypted_frames = internal global i8 0, align 1
@docsis_handle = internal unnamed_addr global ptr null, align 8
@docsis_reassembly_table = internal global %struct.reassembly_table zeroinitializer, align 8
@addresses_reassembly_table_functions = external constant %struct.reassembly_table_functions, align 8
@.str.145 = private unnamed_addr constant [11 x i8] c"wtap_encap\00", align 1
@.str.146 = private unnamed_addr constant [8 x i8] c"eth.dst\00", align 1
@hf_docsis_dst = internal unnamed_addr global i32 0, align 4
@.str.147 = private unnamed_addr constant [17 x i8] c"eth.dst_resolved\00", align 1
@hf_docsis_dst_resolved = internal unnamed_addr global i32 0, align 4
@.str.148 = private unnamed_addr constant [8 x i8] c"eth.src\00", align 1
@hf_docsis_src = internal unnamed_addr global i32 0, align 4
@.str.149 = private unnamed_addr constant [17 x i8] c"eth.src_resolved\00", align 1
@hf_docsis_src_resolved = internal unnamed_addr global i32 0, align 4
@.str.150 = private unnamed_addr constant [7 x i8] c"eth.lg\00", align 1
@hf_docsis_lg = internal unnamed_addr global i32 0, align 4
@.str.151 = private unnamed_addr constant [7 x i8] c"eth.ig\00", align 1
@hf_docsis_ig = internal unnamed_addr global i32 0, align 4
@.str.152 = private unnamed_addr constant [12 x i8] c"docsis_mgmt\00", align 1
@docsis_mgmt_handle = internal unnamed_addr global ptr null, align 8
@.str.153 = private unnamed_addr constant [13 x i8] c"eth_maybefcs\00", align 1
@eth_maybefcs_handle = internal unnamed_addr global ptr null, align 8
@.str.154 = private unnamed_addr constant [11 x i8] c"Packet PDU\00", align 1
@.str.155 = private unnamed_addr constant [12 x i8] c"Special Use\00", align 1
@.str.156 = private unnamed_addr constant [14 x i8] c"Isolation PDU\00", align 1
@.str.157 = private unnamed_addr constant [13 x i8] c"MAC Specific\00", align 1
@fctype_vals = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.154 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.155 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.156 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.157 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.159 = private unnamed_addr constant [8 x i8] c"PDU MAC\00", align 1
@.str.160 = private unnamed_addr constant [36 x i8] c"DELAY/DUPLICATE/MULTICAST/BROADCAST\00", align 1
@pkt_fcparm_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.159 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.160 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.162 = private unnamed_addr constant [14 x i8] c"Timing Header\00", align 1
@.str.163 = private unnamed_addr constant [23 x i8] c"MAC Management Message\00", align 1
@.str.164 = private unnamed_addr constant [14 x i8] c"Request Frame\00", align 1
@.str.165 = private unnamed_addr constant [21 x i8] c"Fragmentation Header\00", align 1
@.str.166 = private unnamed_addr constant [32 x i8] c"Queue Depth-based Request Frame\00", align 1
@.str.167 = private unnamed_addr constant [21 x i8] c"Concatenation Header\00", align 1
@ms_fcparm_vals = internal constant [7 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.162 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.163 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.164 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.165 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.166 }, { i32, [4 x i8], ptr } { i32 28, [4 x i8] zeroinitializer, ptr @.str.167 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.169 = private unnamed_addr constant [24 x i8] c"Extended Header Present\00", align 1
@.str.170 = private unnamed_addr constant [23 x i8] c"Extended Header Absent\00", align 1
@.str.171 = private unnamed_addr constant [29 x i8] c"NULL Configuration Parameter\00", align 1
@.str.172 = private unnamed_addr constant [8 x i8] c"Request\00", align 1
@.str.173 = private unnamed_addr constant [26 x i8] c"Acknowledgement Requested\00", align 1
@.str.174 = private unnamed_addr constant [25 x i8] c"Upstream Privacy Element\00", align 1
@.str.175 = private unnamed_addr constant [28 x i8] c"Downstream  Privacy Element\00", align 1
@.str.176 = private unnamed_addr constant [37 x i8] c"Service Flow EH; PHS Header Upstream\00", align 1
@.str.177 = private unnamed_addr constant [39 x i8] c"Service Flow EH; PHS Header Downstream\00", align 1
@.str.178 = private unnamed_addr constant [36 x i8] c"Upstream Privacy with Multi Channel\00", align 1
@.str.179 = private unnamed_addr constant [19 x i8] c"Downstream Service\00", align 1
@.str.180 = private unnamed_addr constant [12 x i8] c"Path Verify\00", align 1
@.str.181 = private unnamed_addr constant [9 x i8] c"Extended\00", align 1
@eh_type_vals = internal constant [17 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.171 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.172 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.173 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.174 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.175 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.176 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.177 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.178 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.179 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.180 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.32 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.32 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.32 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.32 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.32 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.181 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.183 = private unnamed_addr constant [25 x i8] c"No PHS on current packet\00", align 1
@unique_no_phs = internal constant [2 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.183 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.185 = private unnamed_addr constant [13 x i8] c"Rate overrun\00", align 1
@.str.186 = private unnamed_addr constant [17 x i8] c"Rate non-overrun\00", align 1
@.str.187 = private unnamed_addr constant [8 x i8] c"Odd Key\00", align 1
@.str.188 = private unnamed_addr constant [9 x i8] c"Even Key\00", align 1
@.str.189 = private unnamed_addr constant [35 x i8] c"Request Frame SID=%u Mini Slots=%u\00", align 1
@.str.190 = private unnamed_addr constant [48 x i8] c"Request Frame SID=%u, Requested Size=%uxN bytes\00", align 1
@.str.191 = private unnamed_addr constant [17 x i8] c"Fragmented Frame\00", align 1
@.str.192 = private unnamed_addr constant [12 x i8] c" Packet PDU\00", align 1
@.str.193 = private unnamed_addr constant [17 x i8] c" Special Use PDU\00", align 1
@.str.194 = private unnamed_addr constant [15 x i8] c" Isolation PDU\00", align 1
@.str.195 = private unnamed_addr constant [18 x i8] c" MAC-Specific PDU\00", align 1
@.str.196 = private unnamed_addr constant [49 x i8] c"Len field value is too small to fit fragment FCS\00", align 1
@frag_sid = internal unnamed_addr global i16 0, align 2
@frag_seq = internal unnamed_addr global i8 0, align 1
@frag_flags = internal unnamed_addr global i8 0, align 1
@.str.197 = private unnamed_addr constant [20 x i8] c"Reassembled Message\00", align 1
@docsis_frag_items = internal constant %struct._fragment_items { ptr @ett_docsis_fragment, ptr @ett_docsis_fragments, ptr @hf_docsis_fragments, ptr @hf_docsis_fragment, ptr @hf_docsis_fragment_overlap, ptr @hf_docsis_fragment_overlap_conflict, ptr @hf_docsis_fragment_multiple_tails, ptr @hf_docsis_fragment_too_long_fragment, ptr @hf_docsis_fragment_error, ptr @hf_docsis_fragment_count, ptr @hf_docsis_reassembled_in, ptr @hf_docsis_reassembled_length, ptr @hf_docsis_reassembled_data, ptr @.str.206 }, align 8
@.str.198 = private unnamed_addr constant [23 x i8] c" (Message Reassembled)\00", align 1
@.str.199 = private unnamed_addr constant [23 x i8] c" (Message fragment %u)\00", align 1
@.str.200 = private unnamed_addr constant [23 x i8] c" (Concatenated Header)\00", align 1
@.str.201 = private unnamed_addr constant [16 x i8] c"Extended Header\00", align 1
@.str.202 = private unnamed_addr constant [40 x i8] c"Unsolicited Grant Sync EHDR Sub-Element\00", align 1
@.str.203 = private unnamed_addr constant [17 x i8] c" (Encrypted MMM)\00", align 1
@.str.204 = private unnamed_addr constant [37 x i8] c" (Encrypted Fragmentation MAC Frame)\00", align 1
@.str.205 = private unnamed_addr constant [13 x i8] c" (Encrypted)\00", align 1
@.str.206 = private unnamed_addr constant [17 x i8] c"DOCSIS fragments\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_docsis() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef @.str.137, ptr noundef @.str.137, ptr noundef @.str.138) ; 2 uses
  store i32 %i.a, ptr @proto_docsis, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef @proto_register_docsis.hf, i32 noundef 56)
  tail call void @proto_register_subtree_array(ptr noundef @proto_register_docsis.ett, i32 noundef 5)
  %i.b = load i32, ptr @proto_docsis, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef @proto_register_docsis.ei, i32 noundef 5)
  %i.d = load i32, ptr @proto_docsis, align 4
  %i.e = tail call ptr @prefs_register_protocol(i32 noundef %i.d, ptr noundef null) ; 2 uses
  tail call void @prefs_register_bool_preference(ptr noundef %i.e, ptr noundef @.str.139, ptr noundef @.str.140, ptr noundef @.str.141, ptr noundef @docsis_check_fcs)
  tail call void @prefs_register_bool_preference(ptr noundef %i.e, ptr noundef @.str.142, ptr noundef @.str.143, ptr noundef @.str.144, ptr noundef @docsis_dissect_encrypted_frames)
  %i.f = load i32, ptr @proto_docsis, align 4
  %i.g = tail call ptr @register_dissector(ptr noundef @.str.138, ptr noundef @dissect_docsis, i32 noundef %i.f)
  store ptr %i.g, ptr @docsis_handle, align 8
  tail call void @reassembly_table_register(ptr noundef @docsis_reassembly_table, ptr noundef @addresses_reassembly_table_functions)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

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
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_bool_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_docsis(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 8 uses
  %i.b = alloca i8, align 1                       ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i8 0, ptr %i.b, align 1
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  %i.d = lshr i8 %i.c, 6                          ; 3 uses
  %i.e = lshr i8 %i.c, 1
  %i.f = and i8 %i.e, 31                          ; 9 uses
  %i.g = and i8 %i.c, 1                           ; 6 uses
  %i.h = icmp eq i8 %i.f, 4                       ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  %i.k = zext i8 %i.j to i16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 2, %bb.c ], [ 3, %bb.b ]
  %.0280 = phi i16 [ %i.k, %bb.c ], [ %i.i, %bb.b ] ; 6 uses
  %.0279 = phi i32 [ 6, %bb.c ], [ 7, %bb.b ]
  %i.l = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.sink) ; 13 uses
  %.not284 = icmp eq i8 %i.g, 0                   ; 2 uses
  %i.m = zext i16 %.0280 to i32                   ; 7 uses
  %i.n = select i1 %.not284, i32 0, i32 %i.m
  %.1 = add nuw nsw i32 %i.n, %.0279
  %i.o = and i32 %.1, 255                         ; 19 uses
  %i.p = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.o)
  %i.q = trunc i32 %i.p to i16
  store i16 %i.q, ptr %i.a, align 2
  %i.r = icmp eq i8 %i.d, 3
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  switch i8 %i.f, label %.thread291.a [
    i8 4, label %.thread
    i8 2, label %.thread
  ]

.thread291.a:                                     ; preds = %bb.e
  %i.s = zext i16 %i.l to i32
  %i.t = add nuw nsw i32 %i.m, 2
  %i.u = icmp samesign ult i32 %i.t, %i.s
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.v = zext i16 %i.l to i32
  %i.w = add nuw nsw i32 %i.m, 2
  %i.x = icmp samesign ult i32 %i.w, %i.v         ; 3 uses
  %i.y = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  tail call void @col_set_str(ptr noundef %i.z, i32 noundef 35, ptr noundef @.str.137)
  %i.aa = load ptr, ptr %i.y, align 8             ; 3 uses
  switch i8 %i.d, label %default.unreachable302 [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  tail call void @col_set_str(ptr noundef %i.aa, i32 noundef 25, ptr noundef @.str.154)
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  tail call void @col_set_str(ptr noundef %i.aa, i32 noundef 25, ptr noundef @.str.155)
  br label %bb.p

bb.i:                                             ; preds = %bb.f
  tail call void @col_set_str(ptr noundef %i.aa, i32 noundef 25, ptr noundef @.str.156)
  br label %bb.p

.thread:                                          ; preds = %bb.e, %bb.e, %.thread291.a
  %.0277290 = phi i1 [ %i.u, %.thread291.a ], [ false, %bb.e ], [ false, %bb.e ] ; 4 uses
  %i.ab = getelementptr i8, ptr %1, i64 8         ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void @col_set_str(ptr noundef %i.ac, i32 noundef 35, ptr noundef @.str.137)
  %i.ad = icmp eq i8 %i.f, 2
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread
  %i.ae = load ptr, ptr %i.ab, align 8
  %i.af = zext i16 %i.l to i32
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.ae, i32 noundef 25, ptr noundef @.str.189, i32 noundef %i.af, i32 noundef %i.m)
  br label %bb.p

bb.k:                                             ; preds = %.thread
  br i1 %i.h, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %i.ab, align 8
  %i.ah = zext i16 %i.l to i32
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.ag, i32 noundef 25, ptr noundef @.str.190, i32 noundef %i.ah, i32 noundef %i.m)
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.ai = icmp eq i8 %i.f, 3
  %i.aj = load ptr, ptr %i.ab, align 8            ; 2 uses
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @col_set_str(ptr noundef %i.aj, i32 noundef 25, ptr noundef @.str.191)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void @col_set_str(ptr noundef %i.aj, i32 noundef 25, ptr noundef @.str.157)
  br label %bb.p

default.unreachable302:                           ; preds = %bb.p, %bb.f
  unreachable

bb.p:                                             ; preds = %bb.j, %bb.n, %bb.o, %bb.l, %bb.i, %bb.h, %bb.g
  %.0277289 = phi i1 [ %.0277290, %bb.j ], [ %.0277290, %bb.n ], [ %.0277290, %bb.o ], [ %.0277290, %bb.l ], [ %i.x, %bb.i ], [ %i.x, %bb.h ], [ %i.x, %bb.g ] ; 2 uses
  %i.ak = load i32, ptr @proto_docsis, align 4
  %i.al = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ak, ptr noundef %0, i32 noundef 0, i32 noundef %i.o, i32 noundef 0) ; 8 uses
  %i.am = load i32, ptr @ett_docsis, align 4
  %i.an = tail call ptr @proto_item_add_subtree(ptr noundef %i.al, i32 noundef %i.am) ; 41 uses
  %i.ao = load i32, ptr @hf_docsis_fctype, align 4
  %i.ap = tail call ptr @proto_tree_add_item(ptr noundef %i.an, i32 noundef %i.ao, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  switch i8 %i.d, label %default.unreachable302 [
    i8 0, label %bb.q
    i8 1, label %bb.u
    i8 2, label %bb.aa
    i8 3, label %bb.ae
  ]

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.al, ptr noundef @.str.192)
  %i.aq = load i32, ptr @hf_docsis_fcparm, align 4
  %i.ar = tail call ptr @proto_tree_add_item(ptr noundef %i.an, i32 noundef %i.aq, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.as = load i32, ptr @hf_docsis_exthdr, align 4
  %i.at = tail call ptr @proto_tree_add_item(ptr noundef %i.an, i32 noundef %i.as, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.au = call fastcc ptr @dissect_exthdr_length_field(ptr noundef %0, ptr noundef %1, ptr noundef %i.an, i8 noundef zeroext %i.g, i16 noundef zeroext %.0280, i16 noundef zeroext %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.av = call fastcc zeroext i1 @dissect_hcs_field(ptr noundef %0, ptr noundef %1, ptr noundef %i.an, i32 noundef %i.o)
  %or.cond4 = select i1 %i.av, i1 %.0277289, i1 false
  br i1 %or.cond4, label %bb.r, label %bb.az

bb.r:                                             ; preds = %bb.q
  %i.aw = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.o) ; 2 uses
  %i.ax = load i8, ptr %i.b, align 1, !range !6, !noundef !7
  %i.ay = trunc nuw i8 %i.ax to i1
  %.not = xor i1 %i.ay, true
  %i.az = load i8, ptr @docsis_dissect_encrypted_frames, align 1, !range !6
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond6 = select i1 %.not, i1 true, i1 %i.ba
  br i1 %or.cond6, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call fastcc void @dissect_encrypted_frame(ptr noundef %i.aw, ptr noundef %1, ptr noundef %i.an, i8 noundef zeroext 0, i8 noundef zeroext %i.f)
  br label %bb.az

bb.t:                                             ; preds = %bb.r
  %i.bb = load ptr, ptr @eth_maybefcs_handle, align 8
  %i.bc = call i32 @call_dissector(ptr noundef %i.bb, ptr noundef %i.aw, ptr noundef %1, ptr noundef %i.an) ; 0 uses
  br label %bb.az

bb.u:                                             ; preds = %bb.p
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.al, ptr noundef @.str.193)
  %i.bd = load i32, ptr @hf_docsis_machdr_fcparm, align 4
  %i.be = tail call ptr @proto_tree_add_item(ptr noundef %i.an, i32 noundef %i.bd, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bf = load i32, ptr @hf_docsis_exthdr, align 4
  %i.bg = tail call ptr @proto_tree_add_item(ptr noundef %i.an, i32 noundef %i.bf, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bh = call fastcc ptr @dissect_exthdr_length_field(ptr noundef %0, ptr noundef %1, ptr noundef %i.an, i8 noundef zeroext %i.g, i16 noundef zeroext %.0280, i16 noundef zeroext %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.bi = call fastcc zeroext i1 @dissect_hcs_field(ptr noundef %0, ptr noundef %1, ptr noundef %i.an, i32 noundef %i.o)
  br i1 %i.bi, label %bb.v, label %bb.az

bb.v:                                             ; preds = %bb.u
  %i.bj = icmp eq i8 %i.f, 1
  %or.cond9 = and i1 %.not284, %i.bj
  %i.bk = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.o) ; 3 uses
  br i1 %or.cond9, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bl = load i8, ptr %i.b, align 1, !range !6, !noundef !7
  %i.bm = trunc nuw i8 %i.bl to i1
  %.not10 = xor i1 %i.bm, true
  %i.bn = load i8, ptr @docsis_dissect_encrypted_frames, align 1, !range !6
  %i.bo = trunc nuw i8 %i.bn to i1
  %or.cond12 = select i1 %.not10, i1 true, i1 %i.bo
  br i1 %or.cond12, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call fastcc void @dissect_encrypted_frame(ptr noundef %i.bk, ptr noundef %1, ptr noundef %i.an, i8 noundef zeroext 1, i8 noundef zeroext 1)
  br label %bb.az

bb.y:                                             ; preds = %bb.w
  %i.bp = load ptr, ptr @docsis_mgmt_handle, align 8
  %i.bq = call i32 @call_dissector(ptr noundef %i.bp, ptr noundef %i.bk, ptr noundef %1, ptr noundef %i.an) ; 0 uses
  br label %bb.az

bb.z:                                             ; preds = %bb.v
  %i.br = call i32 @call_data_dissector(ptr noundef %i.bk, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %bb.az

bb.aa:                                            ; preds = %bb.p
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.al, ptr noundef @.str.194)
  %i.bs = load i32, ptr @hf_docsis_fcparm, align 4
  %i.bt = tail call ptr @proto_tree_add_item(ptr noundef %i.an, i32 noundef %i.bs, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bu = load i32, ptr @hf_docsis_exthdr, align 4
  %i.bv = tail call ptr @proto_tree_add_item(ptr noundef %i.an, i32 noundef %i.bu, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bw = call fastcc ptr @dissect_exthdr_length_field(ptr noundef %0, ptr noundef %1, ptr noundef %i.an, i8 noundef zeroext %i.g, i16 noundef zeroext %.0280, i16 noundef zeroext %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.bx = call fastcc zeroext i1 @dissect_hcs_field(ptr noundef %0, ptr noundef %1, ptr noundef %i.an, i32 noundef %i.o)
  %or.cond14 = select i1 %i.bx, i1 %.0277289, i1 false
  br i1 %or.cond14, label %bb.ab, label %bb.az

bb.ab:                                            ; preds = %bb.aa
  %i.by = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.o) ; 2 uses
  %i.bz = load i8, ptr %i.b, align 1, !range !6, !noundef !7
  %i.ca = trunc nuw i8 %i.bz to i1
  %.not15 = xor i1 %i.ca, true
  %i.cb = load i8, ptr @docsis_dissect_encrypted_frames, align 1, !range !6
  %i.cc = trunc nuw i8 %i.cb to i1
  %or.cond17 = select i1 %.not15, i1 true, i1 %i.cc
  br i1 %or.cond17, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call fastcc void @dissect_encrypted_frame(ptr noundef %i.by, ptr noundef %1, ptr noundef %i.an, i8 noundef zeroext 2, i8 noundef zeroext %i.f)
  br label %bb.az

bb.ad:                                            ; preds = %bb.ab
  %i.cd = load ptr, ptr @eth_maybefcs_handle, align 8
  %i.ce = call i32 @call_dissector(ptr noundef %i.cd, ptr noundef %i.by, ptr noundef %1, ptr noundef %i.an) ; 0 uses
  br label %bb.az

bb.ae:                                            ; preds = %bb.p
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.al, ptr noundef @.str.195)
  %i.cf = load i32, ptr @hf_docsis_machdr_fcparm, align 4
  %i.cg = tail call ptr @proto_tree_add_item(ptr noundef %i.an, i32 noundef %i.cf, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ch = load i32, ptr @hf_docsis_exthdr, align 4
  %i.ci = tail call ptr @proto_tree_add_item(ptr noundef %i.an, i32 noundef %i.ch, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  switch i8 %i.f, label %bb.az [
    i8 0, label %bb.af
    i8 1, label %bb.af
    i8 2, label %bb.aj
    i8 3, label %bb.ak
    i8 4, label %bb.ax
    i8 28, label %bb.ay
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  %i.cj = call fastcc ptr @dissect_exthdr_length_field(ptr noundef %0, ptr noundef %1, ptr noundef %i.an, i8 noundef zeroext %i.g, i16 noundef zeroext %.0280, i16 noundef zeroext %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.ck = call fastcc zeroext i1 @dissect_hcs_field(ptr noundef %0, ptr noundef %1, ptr noundef %i.an, i32 noundef %i.o)
  br i1 %i.ck, label %bb.ag, label %bb.az

bb.ag:                                            ; preds = %bb.af
  %i.cl = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.o) ; 2 uses
  %i.cm = load i8, ptr %i.b, align 1, !range !6, !noundef !7
  %i.cn = trunc nuw i8 %i.cm to i1
  %.not18 = xor i1 %i.cn, true
  %i.co = load i8, ptr @docsis_dissect_encrypted_frames, align 1, !range !6
  %i.cp = trunc nuw i8 %i.co to i1
  %or.cond20 = select i1 %.not18, i1 true, i1 %i.cp
  br i1 %or.cond20, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call fastcc void @dissect_encrypted_frame(ptr noundef %i.cl, ptr noundef %1, ptr noundef %i.an, i8 noundef zeroext 3, i8 noundef zeroext %i.f)
  br label %bb.az

bb.ai:                                            ; preds = %bb.ag
  %i.cq = load ptr, ptr @docsis_mgmt_handle, align 8
  %i.cr = call i32 @call_dissector(ptr noundef %i.cq, ptr noundef %i.cl, ptr noundef %1, ptr noundef %i.an) ; 0 uses
  br label %bb.az

bb.aj:                                            ; preds = %bb.ae
  %i.cs = load i32, ptr @hf_docsis_mini_slots, align 4
  %i.ct = tail call ptr @proto_tree_add_uint(ptr noundef %i.an, i32 noundef %i.cs, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.m) ; 0 uses
  %i.cu = load i32, ptr @hf_docsis_sid, align 4
  %i.cv = zext i16 %i.l to i32
  %i.cw = tail call ptr @proto_tree_add_uint(ptr noundef %i.an, i32 noundef %i.cu, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef %i.cv) ; 0 uses
  %i.cx = tail call fastcc zeroext i1 @dissect_hcs_field(ptr noundef %0, ptr noundef %1, ptr noundef %i.an, i32 noundef %i.o) ; 0 uses
  br label %bb.az

bb.ak:                                            ; preds = %bb.ae
  %i.cy = getelementptr i8, ptr %1, i64 272       ; 4 uses
  %i.cz = load i8, ptr %i.cy, align 8, !range !6, !noundef !7
  store i8 1, ptr %i.cy, align 8
  %i.da = call fastcc ptr @dissect_exthdr_length_field(ptr noundef %0, ptr noundef %1, ptr noundef %i.an, i8 noundef zeroext %i.g, i16 noundef zeroext %.0280, i16 noundef zeroext %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.db = zext i16 %i.l to i32                    ; 2 uses
  %i.dc = icmp ult i16 %i.l, 4
  br i1 %i.dc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dd = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.da, ptr noundef @ei_docsis_len_small, ptr noundef @.str.196) ; 0 uses
  call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #6
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.de = call fastcc zeroext i1 @dissect_hcs_field(ptr noundef %0, ptr noundef %1, ptr noundef %i.an, i32 noundef %i.o)
  br i1 %i.de, label %bb.an, label %bb.az

bb.an:                                            ; preds = %bb.am
  %i.df = call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.db)
  %i.dg = add nsw i32 %i.db, -4                   ; 3 uses
  %i.dh = add nuw nsw i32 %i.dg, %i.o             ; 3 uses
  br i1 %i.df, label %bb.ao, label %.thread292

bb.ao:                                            ; preds = %bb.an
  %i.di = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.dh) ; 4 uses
  %i.dj = call i32 @crc32_802_tvb(ptr noundef %0, i32 noundef %i.dh) ; 2 uses
  %i.dk = icmp eq i32 %i.di, %i.dj
  br i1 %i.dk, label %bb.ap, label %.thread292

bb.ap:                                            ; preds = %bb.ao
  %i.dl = load i16, ptr @frag_sid, align 2
  %i.dm = zext nneg i16 %i.dl to i32
  %i.dn = load i8, ptr @frag_seq, align 1
  %i.do = zext nneg i8 %i.dn to i32
  %i.dp = load i8, ptr @frag_flags, align 1
  %i.dq = and i8 %i.dp, 16
  %.not285.a = icmp eq i8 %i.dq, 0
  %i.dr = call ptr @fragment_add_seq_check(ptr noundef @docsis_reassembly_table, ptr noundef %0, i32 noundef %i.o, ptr noundef %1, i32 noundef %i.dm, ptr noundef null, i32 noundef %i.do, i32 noundef %i.dg, i1 noundef zeroext %.not285.a) ; 2 uses
  %i.ds = call ptr @process_reassembled_data(ptr noundef %0, i32 noundef %i.o, ptr noundef %1, ptr noundef @.str.197, ptr noundef %i.dr, ptr noundef @docsis_frag_items, ptr noundef null, ptr noundef %i.an) ; 3 uses
  %i.dt = load i8, ptr @frag_flags, align 1
  %i.du = icmp ne i8 %i.dt, 16
  %. = zext i1 %i.du to i8
  store i8 %., ptr %i.cy, align 8
  %.not286.a = icmp eq ptr %i.dr, null
  br i1 %.not286.a, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.al, ptr noundef @.str.198)
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.dv = load i8, ptr @frag_seq, align 1
  %i.dw = zext nneg i8 %i.dv to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.al, ptr noundef @.str.199, i32 noundef %i.dw)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.not287 = icmp eq ptr %i.ds, null
  br i1 %.not287, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dx = load i8, ptr %i.b, align 1, !range !6, !noundef !7
  %i.dy = trunc nuw i8 %i.dx to i1
  %.not21 = xor i1 %i.dy, true
  %i.dz = load i8, ptr @docsis_dissect_encrypted_frames, align 1, !range !6
  %i.ea = trunc nuw i8 %i.dz to i1
  %or.cond23 = select i1 %.not21, i1 true, i1 %i.ea
  br i1 %or.cond23, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call fastcc void @dissect_encrypted_frame(ptr noundef nonnull %i.ds, ptr noundef %1, ptr noundef %i.an, i8 noundef zeroext 3, i8 noundef zeroext 3)
  br label %.thread292

bb.av:                                            ; preds = %bb.at
  %i.eb = load ptr, ptr @eth_maybefcs_handle, align 8
  %i.ec = call i32 @call_dissector(ptr noundef %i.eb, ptr noundef nonnull %i.ds, ptr noundef %1, ptr noundef %i.an) ; 0 uses
  br label %.thread292

bb.aw:                                            ; preds = %bb.as
  %i.ed = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.dg)
  %i.ee = call i32 @call_data_dissector(ptr noundef %i.ed, ptr noundef %1, ptr noundef %i.an) ; 0 uses
  br label %.thread292

.thread292:                                       ; preds = %bb.an, %bb.aw, %bb.av, %bb.au, %bb.ao
  %.0295 = phi i32 [ %i.dj, %bb.ao ], [ %i.di, %bb.aw ], [ %i.di, %bb.av ], [ %i.di, %bb.au ], [ 0, %bb.an ]
  %i.ef = load i32, ptr @hf_docsis_frag_fcs, align 4
  %i.eg = load i32, ptr @hf_docsis_frag_fcs_status, align 4
  %i.eh = call ptr @proto_tree_add_checksum(ptr noundef %i.an, ptr noundef %0, i32 noundef %i.dh, i32 noundef %i.ef, i32 noundef %i.eg, ptr noundef @ei_docsis_frag_fcs_bad, ptr noundef %1, i32 noundef %.0295, i32 noundef 0, i32 noundef 1) ; 0 uses
  store i8 %i.cz, ptr %i.cy, align 8
  br label %bb.az

bb.ax:                                            ; preds = %bb.ae
  %i.ei = load i32, ptr @hf_docsis_requested_size, align 4
  %i.ej = tail call ptr @proto_tree_add_uint(ptr noundef %i.an, i32 noundef %i.ei, ptr noundef %0, i32 noundef 1, i32 noundef 2, i32 noundef %i.m) ; 0 uses
  %i.ek = load i32, ptr @hf_docsis_sid, align 4
  %i.el = zext i16 %i.l to i32
  %i.em = tail call ptr @proto_tree_add_uint(ptr noundef %i.an, i32 noundef %i.ek, ptr noundef %0, i32 noundef 3, i32 noundef 2, i32 noundef %i.el) ; 0 uses
  %i.en = tail call fastcc zeroext i1 @dissect_hcs_field(ptr noundef %0, ptr noundef %1, ptr noundef %i.an, i32 noundef %i.o) ; 0 uses
  br label %bb.az

bb.ay:                                            ; preds = %bb.ae
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.al, ptr noundef @.str.200)
  %i.eo = load i32, ptr @hf_docsis_concat_cnt, align 4
  %i.ep = tail call ptr @proto_tree_add_item(ptr noundef %i.an, i32 noundef %i.eo, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.eq = load i32, ptr @hf_docsis_len, align 4
  %i.er = tail call ptr @proto_tree_add_item(ptr noundef %i.an, i32 noundef %i.eq, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.es = tail call fastcc zeroext i1 @dissect_hcs_field(ptr noundef %0, ptr noundef %1, ptr noundef %i.an, i32 noundef %i.o) ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.am, %.thread292, %bb.aj, %bb.ax, %bb.ay, %bb.ah, %bb.ai, %bb.af, %bb.ae, %bb.aa, %bb.ad, %bb.ac, %bb.u, %bb.x, %bb.y, %bb.z, %bb.q, %bb.t, %bb.s
  %i.et = call i32 @tvb_captured_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %i.et
}

; Function Attrs: null_pointer_is_valid
declare void @reassembly_table_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_docsis() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @docsis_handle, align 8
  tail call void @dissector_add_uint(ptr noundef @.str.145, i32 noundef 33, ptr noundef %i.a)
  %i.b = tail call i32 @proto_registrar_get_id_byname(ptr noundef @.str.146)
  store i32 %i.b, ptr @hf_docsis_dst, align 4
  %i.c = tail call i32 @proto_registrar_get_id_byname(ptr noundef @.str.147)
  store i32 %i.c, ptr @hf_docsis_dst_resolved, align 4
  %i.d = tail call i32 @proto_registrar_get_id_byname(ptr noundef @.str.148)
  store i32 %i.d, ptr @hf_docsis_src, align 4
  %i.e = tail call i32 @proto_registrar_get_id_byname(ptr noundef @.str.149)
  store i32 %i.e, ptr @hf_docsis_src_resolved, align 4
  %i.f = tail call i32 @proto_registrar_get_id_byname(ptr noundef @.str.150)
  store i32 %i.f, ptr @hf_docsis_lg, align 4
  %i.g = tail call i32 @proto_registrar_get_id_byname(ptr noundef @.str.151)
  store i32 %i.g, ptr @hf_docsis_ig, align 4
  %i.h = tail call ptr @find_dissector(ptr noundef @.str.152)
  store ptr %i.h, ptr @docsis_mgmt_handle, align 8
  %i.i = load i32, ptr @proto_docsis, align 4
  %i.j = tail call ptr @find_dissector_add_dependency(ptr noundef @.str.153, i32 noundef %i.i)
  store ptr %i.j, ptr @eth_maybefcs_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @proto_registrar_get_id_byname(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc ptr @dissect_exthdr_length_field(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext range(i8 0, 2) %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr nofree noundef captures(none) %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 12 uses
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @hf_docsis_ehdrlen, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.d = load i32, ptr @hf_docsis_len, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 2 uses
  %i.f = zext i16 %5 to i32
  %i.g = zext i16 %4 to i32
  %i.h = sub nsw i32 %i.f, %i.g
  %i.i = load i16, ptr %6, align 2
  %i.j = zext i16 %i.i to i32
  %i.k = icmp sgt i32 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i16 %5, ptr %6, align 2
  %i.l = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.e, ptr noundef @ei_docsis_len) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.m = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = load i32, ptr @ett_ehdr, align 4
  %i.p = tail call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef 4, i32 noundef %i.n, i32 noundef %i.o, ptr noundef null, ptr noundef @.str.201) ; 41 uses
  %i.q = add nuw nsw i32 %i.n, 4
  %.not155.i = icmp eq i8 %i.m, 0
  br i1 %.not155.i, label %dissect_ehdr.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.r = getelementptr i8, ptr %1, i64 272
  br label %bb.e

bb.e:                                             ; preds = %bb.z, %.lr.ph.i
  %.0154.i = phi i32 [ 4, %.lr.ph.i ], [ %i.em, %bb.z ] ; 19 uses
  %i.s = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0154.i)
  %i.t = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0154.i)
  %i.u = and i8 %i.t, 15                          ; 2 uses
  store i8 %i.u, ptr %i.a, align 1
  %i.v = lshr i8 %i.s, 4                          ; 2 uses
  %i.w = icmp eq i8 %i.v, 6
  %i.x = icmp eq i8 %i.u, 2
  %or.cond.i = select i1 %i.w, i1 %i.x, i1 false
  %i.y = load i32, ptr @hf_docsis_eh_type, align 4 ; 2 uses
  %i.z = add nsw i32 %.0154.i, 1                  ; 28 uses
  br i1 %or.cond.i, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.aa = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.p, i32 noundef %i.y, ptr noundef %0, i32 noundef %.0154.i, i32 noundef 1, i32 noundef 96, ptr noundef @.str.202) ; 0 uses
  %i.ab = load i32, ptr @hf_docsis_eh_len, align 4
  %i.ac = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.ab, ptr noundef %0, i32 noundef %.0154.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.ad = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.y, ptr noundef %0, i32 noundef %.0154.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ae = load i32, ptr @hf_docsis_eh_len, align 4
  %i.af = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.ae, ptr noundef %0, i32 noundef %.0154.i, i32 noundef 1, i32 noundef 0)
  switch i8 %i.v, label %bb.x [
    i8 1, label %bb.g
    i8 2, label %bb.i
    i8 3, label %bb.k
    i8 4, label %bb.m
    i8 5, label %bb.n
    i8 6, label %bb.n
    i8 7, label %bb.p
    i8 8, label %bb.q
    i8 9, label %bb.u
    i8 15, label %bb.w
  ]

bb.g:                                             ; preds = %bb.f
  %i.ag = load i8, ptr %i.a, align 1
  %i.ah = icmp eq i8 %i.ag, 3
  br i1 %i.ah, label %bb.h, label %.loopexit.sink.split.i

bb.h:                                             ; preds = %bb.g
  %i.ai = load i32, ptr @hf_docsis_mini_slots, align 4
  %i.aj = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.z, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ak = load i32, ptr @hf_docsis_sid, align 4
  %i.al = add nsw i32 %.0154.i, 2
  %i.am = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.ak, ptr noundef %0, i32 noundef %i.al, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.z

bb.i:                                             ; preds = %bb.f
  %i.an = load i8, ptr %i.a, align 1
  %i.ao = icmp eq i8 %i.an, 2
  br i1 %i.ao, label %bb.j, label %.loopexit.sink.split.i

bb.j:                                             ; preds = %bb.i
  %i.ap = load i32, ptr @hf_docsis_sid, align 4
  %i.aq = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.ap, ptr noundef %0, i32 noundef %i.z, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.z

bb.k:                                             ; preds = %bb.f
  %i.ar = load i32, ptr @hf_docsis_key_seq, align 4
  %i.as = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.ar, ptr noundef %0, i32 noundef %i.z, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.at = load i32, ptr @hf_docsis_ehdr_ver, align 4
  %i.au = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.at, ptr noundef %0, i32 noundef %i.z, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.av = load i32, ptr @hf_docsis_bpi_en, align 4
  %i.aw = add nsw i32 %.0154.i, 2                 ; 4 uses
  %i.ax = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.p, i32 noundef %i.av, ptr noundef %0, i32 noundef %i.aw, i32 noundef 1, i32 noundef 0, ptr noundef %7) ; 0 uses
  %i.ay = load i32, ptr @hf_docsis_toggle_bit, align 4
  %i.az = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.ay, ptr noundef %0, i32 noundef %i.aw, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ba = load i32, ptr @hf_docsis_sid, align 4
  %i.bb = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.ba, ptr noundef %0, i32 noundef %i.aw, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bc = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.aw)
  %i.bd = zext i8 %i.bc to i16
  store i16 %i.bd, ptr @frag_sid, align 2
  %i.be = load i32, ptr @hf_docsis_mini_slots, align 4
  %i.bf = add nsw i32 %.0154.i, 4
  %i.bg = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.be, ptr noundef %0, i32 noundef %i.bf, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bh = load i8, ptr %i.r, align 8, !range !6, !noundef !7
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.l, label %bb.z

bb.l:                                             ; preds = %bb.k
  %i.bj = load i32, ptr @hf_docsis_frag_rsvd, align 4
  %i.bk = add nsw i32 %.0154.i, 5                 ; 6 uses
  %i.bl = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.bj, ptr noundef %0, i32 noundef %i.bk, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bm = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bk)
  %i.bn = and i8 %i.bm, 48
  store i8 %i.bn, ptr @frag_flags, align 1
  %i.bo = load i32, ptr @hf_docsis_frag_first, align 4
  %i.bp = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.bo, ptr noundef %0, i32 noundef %i.bk, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bq = load i32, ptr @hf_docsis_frag_last, align 4
  %i.br = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.bq, ptr noundef %0, i32 noundef %i.bk, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bs = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bk)
  %i.bt = and i8 %i.bs, 15
  store i8 %i.bt, ptr @frag_seq, align 1
  %i.bu = load i32, ptr @hf_docsis_frag_seq, align 4
  %i.bv = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.bu, ptr noundef %0, i32 noundef %i.bk, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.z

bb.m:                                             ; preds = %bb.f
  %i.bw = load i32, ptr @hf_docsis_key_seq, align 4
  %i.bx = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.bw, ptr noundef %0, i32 noundef %i.z, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.by = load i32, ptr @hf_docsis_ehdr_ver, align 4
  %i.bz = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.by, ptr noundef %0, i32 noundef %i.z, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ca = load i32, ptr @hf_docsis_bpi_en, align 4
  %i.cb = add nsw i32 %.0154.i, 2                 ; 3 uses
  %i.cc = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.p, i32 noundef %i.ca, ptr noundef %0, i32 noundef %i.cb, i32 noundef 1, i32 noundef 0, ptr noundef %7) ; 0 uses
  %i.cd = load i32, ptr @hf_docsis_toggle_bit, align 4
  %i.ce = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.cd, ptr noundef %0, i32 noundef %i.cb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cf = load i32, ptr @hf_docsis_said, align 4
  %i.cg = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.cf, ptr noundef %0, i32 noundef %i.cb, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ch = load i32, ptr @hf_docsis_reserved, align 4
  %i.ci = add nsw i32 %.0154.i, 4
  %i.cj = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.ch, ptr noundef %0, i32 noundef %i.ci, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.z

bb.n:                                             ; preds = %bb.f, %bb.f, %.thread.i
  %i.ck = load i32, ptr @hf_docsis_ehdr_phsi, align 4
  %i.cl = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.ck, ptr noundef %0, i32 noundef %i.z, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cm = load i8, ptr %i.a, align 1
  %i.cn = icmp eq i8 %i.cm, 2
  br i1 %i.cn, label %bb.o, label %bb.z

bb.o:                                             ; preds = %bb.n
  %i.co = load i32, ptr @hf_docsis_ehdr_qind, align 4
  %i.cp = add nsw i32 %.0154.i, 2                 ; 2 uses
  %i.cq = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.co, ptr noundef %0, i32 noundef %i.cp, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cr = load i32, ptr @hf_docsis_ehdr_grants, align 4
  %i.cs = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.cr, ptr noundef %0, i32 noundef %i.cp, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.z

bb.p:                                             ; preds = %bb.f
  %i.ct = load i32, ptr @hf_docsis_ehdr_bpup2_key_seq, align 4
  %i.cu = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.ct, ptr noundef %0, i32 noundef %i.z, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cv = load i32, ptr @hf_docsis_ehdr_bpup2_ver, align 4
  %i.cw = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.cv, ptr noundef %0, i32 noundef %i.z, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.cx = load i32, ptr @hf_docsis_ehdr_bpup2_bpi_en, align 4
  %i.cy = add nsw i32 %.0154.i, 2                 ; 3 uses
  %i.cz = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.p, i32 noundef %i.cx, ptr noundef %0, i32 noundef %i.cy, i32 noundef 1, i32 noundef 0, ptr noundef %7) ; 0 uses
  %i.da = load i32, ptr @hf_docsis_ehdr_bpup2_toggle_bit, align 4
  %i.db = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.da, ptr noundef %0, i32 noundef %i.cy, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dc = load i32, ptr @hf_docsis_ehdr_bpup2_sid, align 4
  %i.dd = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.dc, ptr noundef %0, i32 noundef %i.cy, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.z

bb.q:                                             ; preds = %bb.f
  %i.de = load i32, ptr @hf_docsis_ehdr_ds_traffic_pri, align 4
  %i.df = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.de, ptr noundef %0, i32 noundef %i.z, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dg = load i8, ptr %i.a, align 1              ; 2 uses
  %i.dh = icmp eq i8 %i.dg, 3
  br i1 %i.dh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.di = load i32, ptr @hf_docsis_ehdr_ds_dsid, align 4
  %i.dj = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.di, ptr noundef %0, i32 noundef %i.z, i32 noundef 3, i32 noundef 0) ; 0 uses
  %.pr.i = load i8, ptr %i.a, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dk = phi i8 [ %.pr.i, %bb.r ], [ %i.dg, %bb.q ]
  %i.dl = icmp eq i8 %i.dk, 5
  br i1 %i.dl, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.dm = load i32, ptr @hf_docsis_ehdr_ds_seq_chg_cnt, align 4
  %i.dn = call ptr @proto_tree_add_item(ptr noundef %i.p, i32 noundef %i.dm, ptr noundef %0, i32 noundef %i.z, i32 noundef 1, i32 noundef 0) ; 0 uses
end_hunk_0
