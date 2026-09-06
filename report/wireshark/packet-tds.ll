Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-tds?download=true
inline.NumInlined: 219
inline.NumDeleted: 52
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
@.str.1295 = private unnamed_addr constant [11 x i8] c"TDS7 login\00", align 1
@.str.1296 = private unnamed_addr constant [13 x i8] c"SSPI message\00", align 1
@.str.1297 = private unnamed_addr constant [23 x i8] c"TDS7 pre-login message\00", align 1
@.str.1298 = private unnamed_addr constant [13 x i8] c"TLS exchange\00", align 1
@packet_type_names = internal constant [20 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1288 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1289 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.928 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.1290 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.1291 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.1292 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.1293 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.1291 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.1291 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.1291 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.1291 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.1291 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.1291 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.960 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.1294 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.1295 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.1296 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.1297 }, { i32, [4 x i8], ptr } { i32 23, [4 x i8] zeroinitializer, ptr @.str.1298 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1300 = private unnamed_addr constant [20 x i8] c"Query notifications\00", align 1
@header_type_names = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1300 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1085 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@tds_tcp_ports = internal unnamed_addr global ptr null, align 8
@.str.1302 = private unnamed_addr constant [14 x i8] c"not_specified\00", align 1
@.str.1303 = private unnamed_addr constant [14 x i8] c"Not Specified\00", align 1
@.str.1304 = private unnamed_addr constant [5 x i8] c"tds4\00", align 1
@.str.1305 = private unnamed_addr constant [8 x i8] c"TDS 4.x\00", align 1
@.str.1306 = private unnamed_addr constant [5 x i8] c"tds5\00", align 1
@.str.1307 = private unnamed_addr constant [8 x i8] c"TDS 5.0\00", align 1
@.str.1308 = private unnamed_addr constant [6 x i8] c"tds70\00", align 1
@.str.1309 = private unnamed_addr constant [8 x i8] c"TDS 7.0\00", align 1
@.str.1310 = private unnamed_addr constant [6 x i8] c"tds71\00", align 1
@.str.1311 = private unnamed_addr constant [8 x i8] c"TDS 7.1\00", align 1
@.str.1312 = private unnamed_addr constant [6 x i8] c"tds72\00", align 1
@.str.1313 = private unnamed_addr constant [8 x i8] c"TDS 7.2\00", align 1
@.str.1314 = private unnamed_addr constant [6 x i8] c"tds73\00", align 1
@.str.1315 = private unnamed_addr constant [8 x i8] c"TDS 7.3\00", align 1
@.str.1316 = private unnamed_addr constant [7 x i8] c"tds73a\00", align 1
@.str.1317 = private unnamed_addr constant [9 x i8] c"TDS 7.3A\00", align 1
@.str.1318 = private unnamed_addr constant [7 x i8] c"tds73b\00", align 1
@.str.1319 = private unnamed_addr constant [9 x i8] c"TDS 7.3B\00", align 1
@.str.1320 = private unnamed_addr constant [6 x i8] c"tds74\00", align 1
@.str.1321 = private unnamed_addr constant [8 x i8] c"TDS 7.4\00", align 1
@tds_protocol_type_options = internal constant [11 x { ptr, ptr, i32, [4 x i8] }] [{ ptr, ptr, i32, [4 x i8] } { ptr @.str.1302, ptr @.str.1303, i32 65535, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.1304, ptr @.str.1305, i32 16384, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.1306, ptr @.str.1307, i32 20480, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.1308, ptr @.str.1309, i32 28672, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.1310, ptr @.str.1311, i32 28928, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.1312, ptr @.str.1313, i32 29184, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.1314, ptr @.str.1315, i32 29440, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.1316, ptr @.str.1317, i32 29450, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.1318, ptr @.str.1319, i32 29451, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.1320, ptr @.str.1321, i32 29696, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }], align 16
@.str.1323 = private unnamed_addr constant [14 x i8] c"little_endian\00", align 1
@.str.1324 = private unnamed_addr constant [14 x i8] c"Little Endian\00", align 1
@.str.1325 = private unnamed_addr constant [11 x i8] c"big_endian\00", align 1
@.str.1326 = private unnamed_addr constant [11 x i8] c"Big Endian\00", align 1
@tds_endian_type_options = internal constant [3 x { ptr, ptr, i32, [4 x i8] }] [{ ptr, ptr, i32, [4 x i8] } { ptr @.str.1323, ptr @.str.1324, i32 1, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.1325, ptr @.str.1326, i32 0, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr null, ptr null, i32 -1, [4 x i8] zeroinitializer }], align 16
@.str.1328 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1329 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1330 = private unnamed_addr constant [24 x i8] c"Unknown Packet Type: %u\00", align 1
@dissect_netlib_buffer.status_flags = internal constant [6 x ptr] [ptr @hf_tds_status_eom, ptr @hf_tds_status_ignore, ptr @hf_tds_status_event_notif, ptr @hf_tds_status_reset_conn, ptr @hf_tds_status_reset_conn_skip_tran, ptr null], align 16
@.str.1331 = private unnamed_addr constant [19 x i8] c" (Not last buffer)\00", align 1
@.str.1332 = private unnamed_addr constant [16 x i8] c"Reassembled TDS\00", align 1
@tds_frag_items = internal constant %struct._fragment_items { ptr @ett_tds_fragment, ptr @ett_tds_fragments, ptr @hf_tds_fragments, ptr @hf_tds_fragment, ptr @hf_tds_fragment_overlap, ptr @hf_tds_fragment_overlap_conflict, ptr @hf_tds_fragment_multiple_tails, ptr @hf_tds_fragment_too_long_fragment, ptr @hf_tds_fragment_error, ptr @hf_tds_fragment_count, ptr @hf_tds_reassembled_in, ptr @hf_tds_reassembled_length, ptr null, ptr @.str.1333 }, align 8
@.str.1333 = private unnamed_addr constant [10 x i8] c"fragments\00", align 1
@.str.1334 = private unnamed_addr constant [7 x i8] c"Header\00", align 1
@.str.1335 = private unnamed_addr constant [13 x i8] c"Empty header\00", align 1
@.str.1336 = private unnamed_addr constant [23 x i8] c"Length should equal 18\00", align 1
@.str.1337 = private unnamed_addr constant [68 x i8] c"Sum of headers' lengths (%d) differs from total headers length (%d)\00", align 1
@.str.1338 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.1339 = private unnamed_addr constant [24 x i8] c"Invalid data type: %02X\00", align 1
@.str.1340 = private unnamed_addr constant [45 x i8] c" (PLP - Partially Length-Prefixed data type)\00", align 1
@.str.1341 = private unnamed_addr constant [4 x i8] c" %i\00", align 1
@.str.1342 = private unnamed_addr constant [12 x i8] c" (PLP_NULL)\00", align 1
@.str.1343 = private unnamed_addr constant [19 x i8] c" (UNKNOWN_PLP_LEN)\00", align 1
@.str.1344 = private unnamed_addr constant [18 x i8] c" (PLP_TERMINATOR)\00", align 1
@.str.1345 = private unnamed_addr constant [29 x i8] c"This type should not use PLP\00", align 1
@.str.1346 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1347 = private unnamed_addr constant [6 x i8] c" (%d)\00", align 1
@.str.1348 = private unnamed_addr constant [7 x i8] c" (%ld)\00", align 1
@.str.1349 = private unnamed_addr constant [6 x i8] c" (%f)\00", align 1
@.str.1350 = private unnamed_addr constant [13 x i8] c" %c%02i:%02i\00", align 1
@.str.1351 = private unnamed_addr constant [8 x i8] c" (%.*f)\00", align 1
@.str.1352 = private unnamed_addr constant [16 x i8] c" (CHARBIN_NULL)\00", align 1
@.str.1353 = private unnamed_addr constant [8 x i8] c" (NULL)\00", align 1
@.str.1354 = private unnamed_addr constant [5 x i8] c"%.4f\00", align 1
@.str.1355 = private unnamed_addr constant [21 x i8] c"Bogus token size: %u\00", align 1
@.str.1356 = private unnamed_addr constant [22 x i8] c" Capability length %d\00", align 1
@hf_req_array = internal unnamed_addr constant [11 x ptr] [ptr @hf_req_0, ptr @hf_req_1, ptr @hf_req_2, ptr @hf_req_3, ptr @hf_req_4, ptr @hf_req_5, ptr @hf_req_6, ptr @hf_req_7, ptr @hf_req_8, ptr @hf_req_9, ptr @hf_req_10], align 16
@.str.1357 = private unnamed_addr constant [17 x i8] c"Req caps %d-%d: \00", align 1
@hf_resp_array = internal unnamed_addr constant [9 x ptr] [ptr @hf_resp_0, ptr @hf_resp_1, ptr @hf_resp_2, ptr @hf_resp_3, ptr @hf_resp_4, ptr @hf_resp_5, ptr @hf_resp_6, ptr @hf_resp_7, ptr @hf_resp_8], align 16
@.str.1358 = private unnamed_addr constant [18 x i8] c"Resp caps %d-%d: \00", align 1
@hf_req_0 = internal constant [9 x ptr] [ptr @hf_tds_capability_req_lang, ptr @hf_tds_capability_req_rpc, ptr @hf_tds_capability_req_evt, ptr @hf_tds_capability_req_mstmt, ptr @hf_tds_capability_req_bcp, ptr @hf_tds_capability_req_cursor, ptr @hf_tds_capability_req_dynf, ptr null, ptr null], align 16
@hf_req_1 = internal constant [9 x ptr] [ptr @hf_tds_capability_req_msg, ptr @hf_tds_capability_req_param, ptr @hf_tds_capability_data_int1, ptr @hf_tds_capability_data_int2, ptr @hf_tds_capability_data_int4, ptr @hf_tds_capability_data_bit, ptr @hf_tds_capability_data_char, ptr @hf_tds_capability_data_vchar, ptr null], align 16
@hf_req_2 = internal constant [9 x ptr] [ptr @hf_tds_capability_data_bin, ptr @hf_tds_capability_data_vbin, ptr @hf_tds_capability_data_mny8, ptr @hf_tds_capability_data_mny4, ptr @hf_tds_capability_data_date8, ptr @hf_tds_capability_data_date4, ptr @hf_tds_capability_data_flt4, ptr @hf_tds_capability_data_flt8, ptr null], align 16
@hf_req_3 = internal constant [9 x ptr] [ptr @hf_tds_capability_data_num, ptr @hf_tds_capability_data_text, ptr @hf_tds_capability_data_image, ptr @hf_tds_capability_data_dec, ptr @hf_tds_capability_data_lchar, ptr @hf_tds_capability_data_lbin, ptr @hf_tds_capability_data_intn, ptr @hf_tds_capability_data_datetimen, ptr null], align 16
@hf_req_4 = internal constant [9 x ptr] [ptr @hf_tds_capability_data_moneyn, ptr @hf_tds_capability_csr_prev, ptr @hf_tds_capability_csr_first, ptr @hf_tds_capability_csr_last, ptr @hf_tds_capability_csr_abs, ptr @hf_tds_capability_csr_rel, ptr @hf_tds_capability_csr_multi, ptr @hf_tds_capability_con_oob, ptr null], align 16
@hf_req_5 = internal constant [9 x ptr] [ptr @hf_tds_capability_con_inband, ptr @hf_tds_capability_con_logical, ptr @hf_tds_capability_proto_text, ptr @hf_tds_capability_proto_bulk, ptr @hf_tds_capability_req_urgevt, ptr @hf_tds_capability_data_sensitivity, ptr @hf_tds_capability_data_boundary, ptr @hf_tds_capability_proto_dynamic, ptr null], align 16
@hf_req_6 = internal constant [9 x ptr] [ptr @hf_tds_capability_proto_dynproc, ptr @hf_tds_capability_data_fltn, ptr @hf_tds_capability_data_bitn, ptr @hf_tds_capability_data_int8, ptr @hf_tds_capability_data_void, ptr @hf_tds_capability_dol_bulk, ptr @hf_tds_capability_object_java1, ptr @hf_tds_capability_object_char, ptr null], align 16
@hf_req_7 = internal constant [9 x ptr] [ptr @hf_tds_capability_object_binary, ptr @hf_tds_capability_data_columnstatus, ptr @hf_tds_capability_widetable, ptr @hf_tds_capability_data_uint2, ptr @hf_tds_capability_data_uint4, ptr @hf_tds_capability_data_uint8, ptr null, ptr null, ptr null], align 16
@hf_req_8 = internal constant [9 x ptr] [ptr @hf_tds_capability_data_uintn, ptr @hf_tds_capability_cur_implicit, ptr @hf_tds_capability_data_nlbin, ptr @hf_tds_capability_image_nchar, ptr @hf_tds_capability_blob_nchar_16, ptr @hf_tds_capability_blob_nchar_8, ptr @hf_tds_capability_blob_nchar_scsu, ptr @hf_tds_capability_data_date, ptr null], align 16
@hf_req_9 = internal constant [9 x ptr] [ptr @hf_tds_capability_data_time, ptr @hf_tds_capability_data_interval, ptr @hf_tds_capability_csr_scroll, ptr @hf_tds_capability_csr_sensitive, ptr @hf_tds_capability_csr_insensitive, ptr @hf_tds_capability_csr_semisensitive, ptr @hf_tds_capability_csr_keysetdriven, ptr @hf_tds_capability_req_srvpktsize, ptr null], align 16
@hf_req_10 = internal constant [9 x ptr] [ptr @hf_tds_capability_data_unitext, ptr @hf_tds_capability_cap_clusterfailover, ptr @hf_tds_capability_data_sint1, ptr @hf_tds_capability_req_largeident, ptr @hf_tds_capability_req_blob_nchar_16, ptr @hf_tds_capability_data_xml, ptr @hf_tds_capability_req_curinfo3, ptr @hf_tds_capability_req_dbrpc2, ptr null], align 16
@hf_resp_0 = internal constant [9 x ptr] [ptr @hf_tds_capability_res_nomsg, ptr @hf_tds_capability_res_noeed, ptr @hf_tds_capability_res_noparam, ptr @hf_tds_capability_data_noint1, ptr @hf_tds_capability_data_noint2, ptr @hf_tds_capability_data_noint4, ptr @hf_tds_capability_data_nobit, ptr null, ptr null], align 16
@hf_resp_1 = internal constant [9 x ptr] [ptr @hf_tds_capability_data_nochar, ptr @hf_tds_capability_data_novchar, ptr @hf_tds_capability_data_nobin, ptr @hf_tds_capability_data_novbin, ptr @hf_tds_capability_data_nomny8, ptr @hf_tds_capability_data_nomny4, ptr @hf_tds_capability_data_nodate8, ptr @hf_tds_capability_data_nodate4, ptr null], align 16
@hf_resp_2 = internal constant [9 x ptr] [ptr @hf_tds_capability_data_noflt4, ptr @hf_tds_capability_data_noflt8, ptr @hf_tds_capability_data_nonum, ptr @hf_tds_capability_data_notext, ptr @hf_tds_capability_data_noimage, ptr @hf_tds_capability_data_nodec, ptr @hf_tds_capability_data_nolchar, ptr @hf_tds_capability_data_nolbin, ptr null], align 16
@hf_resp_3 = internal constant [9 x ptr] [ptr @hf_tds_capability_data_nointn, ptr @hf_tds_capability_data_nodatetimen, ptr @hf_tds_capability_data_nomoneyn, ptr @hf_tds_capability_con_nooob, ptr @hf_tds_capability_con_noinband, ptr @hf_tds_capability_proto_notext, ptr @hf_tds_capability_proto_nobulk, ptr @hf_tds_capability_data_nosensitivity, ptr null], align 16
@hf_resp_4 = internal constant [9 x ptr] [ptr @hf_tds_capability_data_noboundary, ptr @hf_tds_capability_res_notdsdebug, ptr @hf_tds_capability_res_nostripblanks, ptr @hf_tds_capability_data_noint8, ptr @hf_tds_capability_object_nojava1, ptr @hf_tds_capability_object_nochar, ptr @hf_tds_capability_data_nocolumnstatus, ptr @hf_tds_capability_object_nobinary, ptr null], align 16
@hf_resp_5 = internal constant [9 x ptr] [ptr @hf_tds_capability_data_nouint2, ptr @hf_tds_capability_data_nouint4, ptr @hf_tds_capability_data_nouint8, ptr @hf_tds_capability_data_nouintn, ptr @hf_tds_capability_no_widetables, ptr @hf_tds_capability_data_nonlbin, ptr @hf_tds_capability_image_nonchar, ptr null, ptr null], align 16
@hf_resp_6 = internal constant [9 x ptr] [ptr @hf_tds_capability_blob_nonchar_16, ptr @hf_tds_capability_blob_nonchar_8, ptr @hf_tds_capability_blob_nonchar_scsu, ptr @hf_tds_capability_data_nodate, ptr @hf_tds_capability_data_notime, ptr @hf_tds_capability_data_nointerval, ptr @hf_tds_capability_data_nounitext, ptr @hf_tds_capability_data_nosint1, ptr null], align 16
@hf_resp_7 = internal constant [9 x ptr] [ptr @hf_tds_capability_no_largeident, ptr @hf_tds_capability_no_blob_nchar_16, ptr @hf_tds_capability_no_srvpktsize, ptr @hf_tds_capability_data_noxml, ptr @hf_tds_capability_no_nint_return_value, ptr @hf_tds_capability_res_noxnldata, ptr @hf_tds_capability_res_suppress_fmt, ptr @hf_tds_capability_res_suppress_doneinproc, ptr null], align 16
@hf_resp_8 = internal constant <{ ptr, [8 x ptr] }> <{ ptr @hf_tds_capability_res_force_rowfmt2, [8 x ptr] zeroinitializer }>, align 16
@tds_curinfo_hf_fields = internal constant [8 x ptr] [ptr @hf_tds_curinfo_cursor_status_declared, ptr @hf_tds_curinfo_cursor_status_open, ptr @hf_tds_curinfo_cursor_status_closed, ptr @hf_tds_curinfo_cursor_status_rdonly, ptr @hf_tds_curinfo_cursor_status_updatable, ptr @hf_tds_curinfo_cursor_status_rowcnt, ptr @hf_tds_curinfo_cursor_status_dealloc, ptr null], align 16
@.str.1360 = private unnamed_addr constant [53 x i8] c"Cursor name %s does not match current cursor name %s\00", align 1
@done_status_flags = internal constant [9 x ptr] [ptr @hf_tds_done_status_more, ptr @hf_tds_done_status_error, ptr @hf_tds_done_status_inxact, ptr @hf_tds_done_status_proc, ptr @hf_tds_done_status_count, ptr @hf_tds_done_status_attn, ptr @hf_tds_done_status_event, ptr @hf_tds_done_status_srverror, ptr null], align 16
@doneproc_status_flags = internal constant [10 x ptr] [ptr @hf_tds_done_status_more, ptr @hf_tds_done_status_error, ptr @hf_tds_done_status_inxact, ptr @hf_tds_done_status_proc, ptr @hf_tds_done_status_count, ptr @hf_tds_done_status_attn, ptr @hf_tds_done_status_event, ptr @hf_tds_done_status_rpcinbatch, ptr @hf_tds_done_status_srverror, ptr null], align 16
@doneinproc_status_flags = internal constant [8 x ptr] [ptr @hf_tds_done_status_more, ptr @hf_tds_done_status_error, ptr @hf_tds_done_status_inxact, ptr @hf_tds_done_status_count, ptr @hf_tds_done_status_attn, ptr @hf_tds_done_status_event, ptr @hf_tds_done_status_srverror, ptr null], align 16
@.str.1361 = private unnamed_addr constant [15 x i8] c"Column %d (%s)\00", align 1
@.str.1362 = private unnamed_addr constant [10 x i8] c"Column %d\00", align 1
@.str.1363 = private unnamed_addr constant [5 x i8] c" (%s\00", align 1
@.str.1364 = private unnamed_addr constant [13 x i8] c"Unknown type\00", align 1
@.str.1365 = private unnamed_addr constant [6 x i8] c", %s)\00", align 1
@.str.1366 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1367 = private unnamed_addr constant [5 x i8] c" AS \00", align 1
@.str.1368 = private unnamed_addr constant [8 x i8] c"NTLMSSP\00", align 1
@.str.1369 = private unnamed_addr constant [9 x i8] c"hostname\00", align 1
@.str.1370 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.1371 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.1372 = private unnamed_addr constant [16 x i8] c"host process id\00", align 1
@.str.1373 = private unnamed_addr constant [14 x i8] c"Login Options\00", align 1
@.str.1374 = private unnamed_addr constant [8 x i8] c"appname\00", align 1
@.str.1375 = private unnamed_addr constant [12 x i8] c"server name\00", align 1
@.str.1376 = private unnamed_addr constant [19 x i8] c"TDS 5 Login Packet\00", align 1
@.str.1377 = private unnamed_addr constant [19 x i8] c"TDS 4 Login Packet\00", align 1
@.str.1378 = private unnamed_addr constant [13 x i8] c"program name\00", align 1
@.str.1379 = private unnamed_addr constant [16 x i8] c"Login Options 2\00", align 1
@.str.1380 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.1381 = private unnamed_addr constant [8 x i8] c"charset\00", align 1
@.str.1382 = private unnamed_addr constant [11 x i8] c"packetsize\00", align 1
@.str.1383 = private unnamed_addr constant [23 x i8] c"Invalid %s length (%d)\00", align 1
@.str.1384 = private unnamed_addr constant [16 x i8] c"Remote password\00", align 1
@.str.1385 = private unnamed_addr constant [22 x i8] c"remote password field\00", align 1
@.str.1386 = private unnamed_addr constant [27 x i8] c"remote password servername\00", align 1
@.str.1387 = private unnamed_addr constant [25 x i8] c"remote password password\00", align 1
@.str.1388 = private unnamed_addr constant [18 x i8] c"TDS7 Login Packet\00", align 1
@.str.1389 = private unnamed_addr constant [20 x i8] c"Login Packet Header\00", align 1
@.str.1390 = private unnamed_addr constant [20 x i8] c"Lengths and offsets\00", align 1
@.str.1391 = private unnamed_addr constant [14 x i8] c"%s offset: %u\00", align 1
@.str.1392 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.1393 = private unnamed_addr constant [14 x i8] c"%s length: %u\00", align 1
@.str.1394 = private unnamed_addr constant [12 x i8] c"Client Name\00", align 1
@.str.1395 = private unnamed_addr constant [9 x i8] c"App Name\00", align 1
@.str.1396 = private unnamed_addr constant [12 x i8] c"Server Name\00", align 1
@.str.1397 = private unnamed_addr constant [9 x i8] c"Unknown1\00", align 1
@.str.1398 = private unnamed_addr constant [13 x i8] c"Library Name\00", align 1
@.str.1399 = private unnamed_addr constant [14 x i8] c"Database Name\00", align 1
@login_field_names = internal constant [10 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1394 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.778 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.782 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1395 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.1396 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.1397 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.1398 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.898 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.1399 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1401 = private unnamed_addr constant [17 x i8] c"TDS Query Packet\00", align 1
@.str.1402 = private unnamed_addr constant [18 x i8] c"TDS5 Query Packet\00", align 1
@.str.1403 = private unnamed_addr constant [16 x i8] c"Token 0x%02x %s\00", align 1
@.str.1404 = private unnamed_addr constant [19 x i8] c"Unknown Token Type\00", align 1
@.str.1405 = private unnamed_addr constant [17 x i8] c"TDS5 Dynamic SQL\00", align 1
@.str.1406 = private unnamed_addr constant [22 x i8] c"TDS5 Parameter Format\00", align 1
@.str.1407 = private unnamed_addr constant [23 x i8] c"TDS5 Parameter2 Format\00", align 1
@.str.1408 = private unnamed_addr constant [16 x i8] c"TDS5 Parameters\00", align 1
@.str.1409 = private unnamed_addr constant [7 x i8] c"Logout\00", align 1
@.str.1410 = private unnamed_addr constant [14 x i8] c"Return Status\00", align 1
@.str.1411 = private unnamed_addr constant [8 x i8] c"Proc ID\00", align 1
@.str.1412 = private unnamed_addr constant [13 x i8] c"Column Names\00", align 1
@.str.1413 = private unnamed_addr constant [14 x i8] c"Column Format\00", align 1
@.str.1414 = private unnamed_addr constant [14 x i8] c"Compute Names\00", align 1
@.str.1415 = private unnamed_addr constant [16 x i8] c"Compute Results\00", align 1
@.str.1416 = private unnamed_addr constant [6 x i8] c"Order\00", align 1
@.str.1417 = private unnamed_addr constant [14 x i8] c"Error Message\00", align 1
@.str.1418 = private unnamed_addr constant [13 x i8] c"Info Message\00", align 1
@.str.1419 = private unnamed_addr constant [22 x i8] c"Login Acknowledgement\00", align 1
@.str.1420 = private unnamed_addr constant [8 x i8] c"TDS Key\00", align 1
@.str.1421 = private unnamed_addr constant [4 x i8] c"Row\00", align 1
@.str.1422 = private unnamed_addr constant [13 x i8] c"Capabilities\00", align 1
@.str.1423 = private unnamed_addr constant [19 x i8] c"Environment Change\00", align 1
@.str.1424 = private unnamed_addr constant [15 x i8] c"Extended Error\00", align 1
@.str.1425 = private unnamed_addr constant [15 x i8] c"Authentication\00", align 1
@.str.1426 = private unnamed_addr constant [7 x i8] c"Rowfmt\00", align 1
@.str.1427 = private unnamed_addr constant [5 x i8] c"Done\00", align 1
@.str.1428 = private unnamed_addr constant [10 x i8] c"Done Proc\00", align 1
@.str.1429 = private unnamed_addr constant [13 x i8] c"Done In Proc\00", align 1
@.str.1430 = private unnamed_addr constant [14 x i8] c"TDS5 Dynamic2\00", align 1
@.str.1431 = private unnamed_addr constant [14 x i8] c"TDS5 OrderBy2\00", align 1
@.str.1432 = private unnamed_addr constant [17 x i8] c"TDS5 CurDeclare2\00", align 1
@.str.1433 = private unnamed_addr constant [13 x i8] c"TDS5 RowFmt2\00", align 1
@.str.1434 = private unnamed_addr constant [9 x i8] c"TDS5 Msg\00", align 1
@.str.1435 = private unnamed_addr constant [9 x i8] c"CurClose\00", align 1
@.str.1436 = private unnamed_addr constant [16 x i8] c"Column Metadata\00", align 1
@.str.1437 = private unnamed_addr constant [9 x i8] c"CurFetch\00", align 1
@.str.1438 = private unnamed_addr constant [8 x i8] c"CurInfo\00", align 1
@.str.1439 = private unnamed_addr constant [8 x i8] c"CurOpen\00", align 1
@.str.1440 = private unnamed_addr constant [11 x i8] c"CurDeclare\00", align 1
@.str.1441 = private unnamed_addr constant [12 x i8] c"AltMetaData\00", align 1
@.str.1442 = private unnamed_addr constant [11 x i8] c"Table Name\00", align 1
@.str.1443 = private unnamed_addr constant [12 x i8] c"Column Info\00", align 1
@.str.1444 = private unnamed_addr constant [10 x i8] c"OptionCmd\00", align 1
@.str.1445 = private unnamed_addr constant [13 x i8] c"Return Value\00", align 1
@.str.1446 = private unnamed_addr constant [27 x i8] c"FeatureExt Acknowledgement\00", align 1
@.str.1447 = private unnamed_addr constant [35 x i8] c"Row (with Null Bitmap Compression)\00", align 1
@.str.1448 = private unnamed_addr constant [7 x i8] c"ALTROW\00", align 1
@.str.1449 = private unnamed_addr constant [14 x i8] c"Session State\00", align 1
@.str.1450 = private unnamed_addr constant [6 x i8] c"DBRPC\00", align 1
@.str.1451 = private unnamed_addr constant [5 x i8] c"SSPI\00", align 1
@.str.1452 = private unnamed_addr constant [12 x i8] c"FEDAUTHINFO\00", align 1
@token_names = internal constant [51 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 231, [4 x i8] zeroinitializer, ptr @.str.1405 }, { i32, [4 x i8], ptr } { i32 236, [4 x i8] zeroinitializer, ptr @.str.1406 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.1407 }, { i32, [4 x i8], ptr } { i32 215, [4 x i8] zeroinitializer, ptr @.str.1408 }, { i32, [4 x i8], ptr } { i32 33, [4 x i8] zeroinitializer, ptr @.str.838 }, { i32, [4 x i8], ptr } { i32 113, [4 x i8] zeroinitializer, ptr @.str.1409 }, { i32, [4 x i8], ptr } { i32 121, [4 x i8] zeroinitializer, ptr @.str.1410 }, { i32, [4 x i8], ptr } { i32 124, [4 x i8] zeroinitializer, ptr @.str.1411 }, { i32, [4 x i8], ptr } { i32 160, [4 x i8] zeroinitializer, ptr @.str.1412 }, { i32, [4 x i8], ptr } { i32 161, [4 x i8] zeroinitializer, ptr @.str.1413 }, { i32, [4 x i8], ptr } { i32 167, [4 x i8] zeroinitializer, ptr @.str.1414 }, { i32, [4 x i8], ptr } { i32 168, [4 x i8] zeroinitializer, ptr @.str.1415 }, { i32, [4 x i8], ptr } { i32 169, [4 x i8] zeroinitializer, ptr @.str.1416 }, { i32, [4 x i8], ptr } { i32 170, [4 x i8] zeroinitializer, ptr @.str.1417 }, { i32, [4 x i8], ptr } { i32 171, [4 x i8] zeroinitializer, ptr @.str.1418 }, { i32, [4 x i8], ptr } { i32 173, [4 x i8] zeroinitializer, ptr @.str.1419 }, { i32, [4 x i8], ptr } { i32 202, [4 x i8] zeroinitializer, ptr @.str.1420 }, { i32, [4 x i8], ptr } { i32 209, [4 x i8] zeroinitializer, ptr @.str.1421 }, { i32, [4 x i8], ptr } { i32 226, [4 x i8] zeroinitializer, ptr @.str.1422 }, { i32, [4 x i8], ptr } { i32 227, [4 x i8] zeroinitializer, ptr @.str.1423 }, { i32, [4 x i8], ptr } { i32 229, [4 x i8] zeroinitializer, ptr @.str.1424 }, { i32, [4 x i8], ptr } { i32 237, [4 x i8] zeroinitializer, ptr @.str.1425 }, { i32, [4 x i8], ptr } { i32 238, [4 x i8] zeroinitializer, ptr @.str.1426 }, { i32, [4 x i8], ptr } { i32 253, [4 x i8] zeroinitializer, ptr @.str.1427 }, { i32, [4 x i8], ptr } { i32 254, [4 x i8] zeroinitializer, ptr @.str.1428 }, { i32, [4 x i8], ptr } { i32 255, [4 x i8] zeroinitializer, ptr @.str.1429 }, { i32, [4 x i8], ptr } { i32 163, [4 x i8] zeroinitializer, ptr @.str.1430 }, { i32, [4 x i8], ptr } { i32 34, [4 x i8] zeroinitializer, ptr @.str.1431 }, { i32, [4 x i8], ptr } { i32 35, [4 x i8] zeroinitializer, ptr @.str.1432 }, { i32, [4 x i8], ptr } { i32 97, [4 x i8] zeroinitializer, ptr @.str.1433 }, { i32, [4 x i8], ptr } { i32 101, [4 x i8] zeroinitializer, ptr @.str.1434 }, { i32, [4 x i8], ptr } { i32 120, [4 x i8] zeroinitializer, ptr @.str.885 }, { i32, [4 x i8], ptr } { i32 128, [4 x i8] zeroinitializer, ptr @.str.1435 }, { i32, [4 x i8], ptr } { i32 129, [4 x i8] zeroinitializer, ptr @.str.1436 }, { i32, [4 x i8], ptr } { i32 130, [4 x i8] zeroinitializer, ptr @.str.1437 }, { i32, [4 x i8], ptr } { i32 131, [4 x i8] zeroinitializer, ptr @.str.1438 }, { i32, [4 x i8], ptr } { i32 132, [4 x i8] zeroinitializer, ptr @.str.1439 }, { i32, [4 x i8], ptr } { i32 134, [4 x i8] zeroinitializer, ptr @.str.1440 }, { i32, [4 x i8], ptr } { i32 136, [4 x i8] zeroinitializer, ptr @.str.1441 }, { i32, [4 x i8], ptr } { i32 164, [4 x i8] zeroinitializer, ptr @.str.1442 }, { i32, [4 x i8], ptr } { i32 165, [4 x i8] zeroinitializer, ptr @.str.1443 }, { i32, [4 x i8], ptr } { i32 166, [4 x i8] zeroinitializer, ptr @.str.1444 }, { i32, [4 x i8], ptr } { i32 172, [4 x i8] zeroinitializer, ptr @.str.1445 }, { i32, [4 x i8], ptr } { i32 174, [4 x i8] zeroinitializer, ptr @.str.1446 }, { i32, [4 x i8], ptr } { i32 210, [4 x i8] zeroinitializer, ptr @.str.1447 }, { i32, [4 x i8], ptr } { i32 211, [4 x i8] zeroinitializer, ptr @.str.1448 }, { i32, [4 x i8], ptr } { i32 228, [4 x i8] zeroinitializer, ptr @.str.1449 }, { i32, [4 x i8], ptr } { i32 230, [4 x i8] zeroinitializer, ptr @.str.1450 }, { i32, [4 x i8], ptr } { i32 237, [4 x i8] zeroinitializer, ptr @.str.1451 }, { i32, [4 x i8], ptr } { i32 238, [4 x i8] zeroinitializer, ptr @.str.1452 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@tds_curdeclare_hf_fields = internal constant [6 x ptr] [ptr @hf_tds_curdeclare_options_rdonly, ptr @hf_tds_curdeclare_options_updatable, ptr @hf_tds_curdeclare_options_sensitive, ptr @hf_tds_curdeclare_options_dynamic, ptr @hf_tds_curdeclare_options_implicit, ptr null], align 16
@dbrpc_options_hf_fields = internal constant [3 x ptr] [ptr @hf_tds_dbrpc_options_recompile, ptr @hf_tds_dbrpc_options_params, ptr null], align 16
@.str.1454 = private unnamed_addr constant [35 x i8] c"Transaction Manager Request Packet\00", align 1
@.str.1455 = private unnamed_addr constant [7 x i8] c"Option\00", align 1
@.str.1456 = private unnamed_addr constant [13 x i8] c": Terminator\00", align 1
@.str.1457 = private unnamed_addr constant [10 x i8] c": Version\00", align 1
@.str.1458 = private unnamed_addr constant [13 x i8] c": Encryption\00", align 1
@.str.1459 = private unnamed_addr constant [10 x i8] c": InstOpt\00", align 1
@.str.1460 = private unnamed_addr constant [11 x i8] c": ThreadID\00", align 1
@.str.1461 = private unnamed_addr constant [7 x i8] c": MARS\00", align 1
@.str.1462 = private unnamed_addr constant [10 x i8] c": TraceID\00", align 1
@.str.1463 = private unnamed_addr constant [18 x i8] c": FedAuthRequired\00", align 1
@.str.1464 = private unnamed_addr constant [11 x i8] c": NonceOpt\00", align 1
@switch.table.dissect_tds_resp = private unnamed_addr constant [253 x ptr] [ptr @hf_tds_curclose, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_curfetch, ptr @hf_tds_curinfo, ptr @hf_tds_curopen, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_curdeclare, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_colname, ptr @hf_tds_colfmt, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_order, ptr @hf_tds_error, ptr @hf_tds_info, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_loginack, ptr @hf_tds_control, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_row, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_params, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_capability, ptr @hf_tds_envchg, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_eed, ptr @hf_tds_dbrpc, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_paramfmt, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_rowfmt, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_done, ptr @hf_tds_doneproc, ptr @hf_tds_doneinproc, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_paramfmt2, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_rowfmt2, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_msg, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_logout, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_offset, ptr @hf_tds_returnstatus, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_unknown_tds_token, ptr @hf_tds_procid], align 8
@switch.table.get_size_by_coltype = private unnamed_addr constant [92 x i32] [i32 16, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 1, i32 -1, i32 1, i32 -1, i32 2, i32 -1, i32 -1, i32 -1, i32 4, i32 -1, i32 4, i32 4, i32 8, i32 8, i32 8, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 4, i32 -1, i32 -1, i32 -1, i32 -1, i32 8], align 4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_tds() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.1107, ptr noundef nonnull @.str.1108, ptr noundef nonnull @.str.1109) ; 2 uses
  store i32 %i.a, ptr @proto_tds, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_tds.hf, i32 noundef 596)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_tds.ett, i32 noundef 33)
  %i.b = load i32, ptr @proto_tds, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef nonnull @proto_register_tds.ei, i32 noundef 7)
  %i.d = load i32, ptr @proto_tds, align 4
  %i.e = tail call ptr @register_dissector(ptr noundef nonnull @.str.1109, ptr noundef nonnull @dissect_tds, i32 noundef %i.d)
  store ptr %i.e, ptr @tds_tcp_handle, align 8
  %i.f = load i32, ptr @proto_tds, align 4
  %i.g = tail call ptr @prefs_register_protocol(i32 noundef %i.f, ptr noundef nonnull @apply_tds_prefs) ; 4 uses
  tail call void @prefs_register_bool_preference(ptr noundef %i.g, ptr noundef nonnull @.str.1110, ptr noundef nonnull @.str.1111, ptr noundef nonnull @.str.1112, ptr noundef nonnull @tds_desegment)
  tail call void @prefs_register_bool_preference(ptr noundef %i.g, ptr noundef nonnull @.str.1113, ptr noundef nonnull @.str.1114, ptr noundef nonnull @.str.1115, ptr noundef nonnull @tds_defragment)
  tail call void @prefs_register_enum_preference(ptr noundef %i.g, ptr noundef nonnull @.str.1116, ptr noundef nonnull @.str.1117, ptr noundef nonnull @.str.1118, ptr noundef nonnull @tds_protocol_type, ptr noundef nonnull @tds_protocol_type_options, i1 noundef zeroext false)
  tail call void @prefs_register_enum_preference(ptr noundef %i.g, ptr noundef nonnull @.str.1119, ptr noundef nonnull @.str.1120, ptr noundef nonnull @.str.1121, ptr noundef nonnull @tds_little_endian, ptr noundef nonnull @tds_endian_type_options, i1 noundef zeroext false)
  tail call void @reassembly_table_register(ptr noundef nonnull @tds_reassembly_table, ptr noundef nonnull @addresses_ports_reassembly_table_functions)
  ret void
}

; Function Attrs: nofree null_pointer_is_valid sspstrong uwtable
define internal void @version_convert(ptr noundef %0, i32 noundef %1) #1 {
bb.a:
  %i.a = lshr i32 %1, 24
  %i.b = lshr i32 %1, 16
  %i.c = and i32 %i.b, 255
  %i.d = and i32 %1, 65535
  %i.e = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %0, i64 noundef 240, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.1223, i32 noundef %i.a, i32 noundef %i.c, i32 noundef %i.d) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_tds(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = load i8, ptr @tds_desegment, align 1, !range !7, !noundef !8
  %i.b = trunc nuw i8 %i.a to i1
  tail call void @tcp_dissect_pdus(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %i.b, i32 noundef 8, ptr noundef nonnull @get_tds_pdu_len, ptr noundef nonnull @dissect_tds_pdu, ptr noundef %3)
  %i.c = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.c
}

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @apply_tds_prefs() #0 {
bb.a:
  %i.a = tail call ptr @prefs_get_range_value(ptr noundef nonnull @.str.1109, ptr noundef nonnull @.str.1122)
  store ptr %i.a, ptr @tds_tcp_ports, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_bool_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_enum_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @reassembly_table_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_tds() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @tds_tcp_handle, align 8
  tail call void @dissector_add_uint_range_with_preference(ptr noundef nonnull @.str.1122, ptr noundef nonnull @.str.1123, ptr noundef %i.a)
  %i.b = tail call ptr @prefs_get_range_value(ptr noundef nonnull @.str.1109, ptr noundef nonnull @.str.1122)
  store ptr %i.b, ptr @tds_tcp_ports, align 8
  %i.c = load i32, ptr @proto_tds, align 4
  tail call void @heur_dissector_add(ptr noundef nonnull @.str.1124, ptr noundef nonnull @dissect_tds_tcp_heur, ptr noundef nonnull @.str.1125, ptr noundef nonnull @.str.1126, i32 noundef %i.c, i32 noundef 1)
  %i.d = load i32, ptr @proto_tds, align 4
  %i.e = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.1127, i32 noundef %i.d)
  store ptr %i.e, ptr @ntlmssp_handle, align 8
  %i.f = load i32, ptr @proto_tds, align 4
  %i.g = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.1128, i32 noundef %i.f)
  store ptr %i.g, ptr @gssapi_handle, align 8
  %i.h = load i32, ptr @proto_tds, align 4
  %i.i = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.1129, i32 noundef %i.h)
  store ptr %i.i, ptr @spnego_handle, align 8
  %i.j = load i32, ptr @proto_tds, align 4
  %i.k = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.1130, i32 noundef %i.j)
  store ptr %i.k, ptr @smp_handle, align 8
  %i.l = load i32, ptr @proto_tds, align 4
  %i.m = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.1131, i32 noundef %i.l)
  store ptr %i.m, ptr @tls_handle, align 8
  %i.n = load i32, ptr @proto_tds, align 4
  %i.o = tail call ptr @create_dissector_handle(ptr noundef nonnull @dissect_tds_pdu, i32 noundef %i.n)
  tail call void @dissector_add_for_decode_as(ptr noundef nonnull @.str.1132, ptr noundef %i.o)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint_range_with_preference(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @heur_dissector_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @dissect_tds_tcp_heur(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.b = icmp ult i32 %i.a, 8
  br i1 %i.b, label %netlib_check_login_pkt.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  %i.d = add i8 %i.c, -1
  %or.cond = icmp ult i8 %i.d, 18
  %i.e = icmp eq i8 %i.c, 23
  %or.cond5 = or i1 %i.e, %or.cond
  br i1 %or.cond5, label %bb.c, label %netlib_check_login_pkt.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  switch i8 %i.f, label %netlib_check_login_pkt.exit.thread [
    i8 33, label %bb.d
    i8 17, label %bb.d
    i8 9, label %bb.d
    i8 5, label %bb.d
    i8 3, label %bb.d
    i8 2, label %bb.d
    i8 1, label %bb.d
    i8 0, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.g = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2)
  %i.h = icmp ult i16 %i.g, 8
  br i1 %i.h, label %netlib_check_login_pkt.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @tvb_captured_length(ptr noundef %0) ; 3 uses
  switch i8 %i.c, label %bb.o [
    i8 2, label %bb.f
    i8 16, label %bb.l
    i8 15, label %bb.m
  ]

bb.f:                                             ; preds = %bb.e
  %i.j = icmp ult i32 %i.i, 467
  br i1 %i.j, label %netlib_check_login_pkt.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 466)
  %i.l = add i8 %i.k, -6
  %or.cond.i = icmp ult i8 %i.l, -2
  br i1 %or.cond.i, label %netlib_check_login_pkt.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 38)
  %i.n = icmp ugt i8 %i.m, 30
  br i1 %i.n, label %netlib_check_login_pkt.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 69)
  %i.p = icmp ugt i8 %i.o, 30
  br i1 %i.p, label %netlib_check_login_pkt.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 100)
  %i.r = icmp ugt i8 %i.q, 30
  br i1 %i.r, label %netlib_check_login_pkt.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 131)
  %i.t = icmp ugt i8 %i.s, 30
  br i1 %i.t, label %netlib_check_login_pkt.exit.thread, label %netlib_check_login_pkt.exit.thread54

bb.l:                                             ; preds = %bb.e
  %i.u = icmp ult i32 %i.i, 16
  br i1 %i.u, label %netlib_check_login_pkt.exit.thread, label %netlib_check_login_pkt.exit
end_hunk_0
begin_hunk_1_@dissect_netlib_buffer:bb.a
  %i.aka = load i32, ptr @hf_tds_unknown_tds_packet, align 4
  %i.akb = call ptr @proto_tree_add_item(ptr noundef %i.bm, i32 noundef %i.aka, ptr noundef nonnull %.0165, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.ft

.thread199:                                       ; preds = %bb.s, %bb.u
  %i.akc = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef 8)
  %i.akd = call i32 @call_data_dissector(ptr noundef %i.akc, ptr noundef %1, ptr noundef %i.bm) ; 0 uses
  br label %bb.ft

bb.ft:                                            ; preds = %bb.v, %dissect_tds_rpc.exit, %bb.ar, %dissect_tds45_login.exit, %dissect_tds7_login.exit, %dissect_tds_query_packet.exit, %dissect_tds5_tokenized_request_packet.exit, %bb.fn, %dissect_tds_transmgr_packet.exit, %bb.fr, %bb.fs, %.thread199
  store i8 %i.cc, ptr %i.cb, align 8
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %detect_tls.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @col_set_fence(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @find_or_create_conversation(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_get_proto_data(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @conversation_add_proto_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint8(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint16(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_add_seq_next(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @process_reassembled_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_add_seq_check(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_tds_resp(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i16, align 2                      ; 3 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 3 uses
  %i.l = alloca ptr, align 8                      ; 6 uses
  %i.m = alloca i32, align 4                      ; 7 uses
  %i.n = alloca i32, align 4                      ; 7 uses
  %i.o = alloca i32, align 4                      ; 7 uses
  %i.p = alloca i32, align 4                      ; 7 uses
  %i.q = alloca i32, align 4                      ; 7 uses
  %i.r = alloca i32, align 4                      ; 6 uses
  %i.s = alloca i32, align 4                      ; 6 uses
  %i.t = alloca ptr, align 8                      ; 9 uses
  %i.u = alloca ptr, align 8                      ; 8 uses
  %i.v = alloca ptr, align 8                      ; 9 uses
  %i.w = alloca ptr, align 8                      ; 10 uses
  %i.x = alloca ptr, align 8                      ; 11 uses
  %i.y = alloca i32, align 4                      ; 4 uses
  %i.z = alloca i32, align 4                      ; 4 uses
  %i.aa = alloca i32, align 4                     ; 3 uses
  %i.ab = alloca ptr, align 8                     ; 8 uses
  %i.ac = alloca i32, align 4                     ; 7 uses
  %i.ad = alloca i32, align 4                     ; 6 uses
  %i.ae = alloca ptr, align 8                     ; 8 uses
  %i.af = alloca i32, align 4                     ; 4 uses
  %i.ag = alloca i32, align 4                     ; 4 uses
  %i.ah = alloca i32, align 4                     ; 4 uses
  %i.ai = alloca i32, align 4                     ; 6 uses
  %i.aj = alloca i32, align 4                     ; 6 uses
  %i.ak = alloca i32, align 4                     ; 4 uses
  %i.al = alloca i32, align 4                     ; 4 uses
  %i.am = alloca i32, align 4                     ; 4 uses
  %i.an = alloca ptr, align 8                     ; 6 uses
  %i.ao = alloca i32, align 4                     ; 8 uses
  %i.ap = alloca i32, align 4                     ; 8 uses
  %i.aq = alloca i32, align 4                     ; 4 uses
  %4 = alloca %struct._netlib_data, align 8       ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2056) %4, i8 noundef 0, i64 noundef 2056, i1 noundef false) #13
  %i.ar = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef 0)
  %.not34.i = icmp eq i32 %i.ar, 0
  br i1 %.not34.i, label %dissect_tds_prelogin_response.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.as = tail call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef 0)
  %i.at = icmp ult i8 %i.as, 8
  br i1 %i.at, label %bb.b, label %dissect_tds_prelogin_response.exit

bb.b:                                             ; preds = %.lr.ph.preheader.i
  %i.au = tail call zeroext i16 @tvb_get_ntohs(ptr noundef nonnull %0, i32 noundef 1)
  %i.av = zext i16 %i.au to i32
  %i.aw = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef 0)
  %i.ax = icmp ult i32 %i.aw, %i.av
  br i1 %i.ax, label %dissect_tds_prelogin_response.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ay = tail call zeroext i16 @tvb_get_ntohs(ptr noundef nonnull %0, i32 noundef 3)
  %i.az = zext i16 %i.ay to i32
  %i.ba = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef 0)
  %i.bb = icmp ult i32 %i.ba, %i.az
  br i1 %i.bb, label %dissect_tds_prelogin_response.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef 5)
  %.not.peel.i = icmp eq i32 %i.bc, 0
  br i1 %.not.peel.i, label %dissect_tds_prelogin_response.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.h
  %i.bd = add i32 %.02435.i, 5                    ; 2 uses
  %i.be = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %i.bd)
  %.not.i = icmp eq i32 %i.be, 0
  br i1 %.not.i, label %dissect_tds_prelogin_response.exit, label %.lr.ph.i, !llvm.loop !15

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.02435.i = phi i32 [ %i.bd, %bb.e ], [ 5, %bb.d ] ; 4 uses
  %i.bf = tail call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %.02435.i) ; 2 uses
  %i.bg = add i32 %.02435.i, 1
  %i.bh = icmp eq i8 %i.bf, -1
  br i1 %i.bh, label %dissect_tds_prelogin_response.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.bi = icmp ult i8 %i.bf, 8
  br i1 %i.bi, label %bb.g, label %dissect_tds_prelogin_response.exit

bb.g:                                             ; preds = %bb.f
  %i.bj = tail call zeroext i16 @tvb_get_ntohs(ptr noundef nonnull %0, i32 noundef %i.bg)
  %i.bk = zext i16 %i.bj to i32
  %i.bl = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef 0)
  %i.bm = icmp ult i32 %i.bl, %i.bk
  br i1 %i.bm, label %dissect_tds_prelogin_response.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = add i32 %.02435.i, 3
  %i.bo = tail call zeroext i16 @tvb_get_ntohs(ptr noundef nonnull %0, i32 noundef %i.bn)
  %i.bp = zext i16 %i.bo to i32
  %i.bq = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef 0)
  %i.br = icmp ult i32 %i.bq, %i.bp
  br i1 %i.br, label %dissect_tds_prelogin_response.exit, label %bb.e

dissect_tds_prelogin_response.exit.thread:        ; preds = %.lr.ph.i
  tail call fastcc void @dissect_tds7_prelogin_packet(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext true)
  br label %.thread314

dissect_tds_prelogin_response.exit:               ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.a, %.lr.ph.preheader.i, %bb.b, %bb.c, %bb.d
  %i.bs = tail call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef 0)
  %.not338 = icmp eq i32 %i.bs, 0
  br i1 %.not338, label %.thread314, label %.lr.ph

.lr.ph:                                           ; preds = %dissect_tds_prelogin_response.exit
  %i.bt = getelementptr i8, ptr %3, i64 8         ; 10 uses
  %i.bu = getelementptr i8, ptr %3, i64 24        ; 17 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  %i.bw = getelementptr i8, ptr %1, i64 416       ; 18 uses
  %i.bx = getelementptr i8, ptr %3, i64 20        ; 14 uses
  %i.by = getelementptr i8, ptr %3, i64 28        ; 13 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.gk
  %.0208339 = phi i32 [ 0, %.lr.ph ], [ %.1209, %bb.gk ] ; 75 uses
  %i.bz = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %.0208339) ; 4 uses
  %i.ca = load i32, ptr @tds_protocol_type, align 4 ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 65535
  br i1 %i.cb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = load i32, ptr %i.bt, align 8
  %i.cd = icmp slt i32 %i.cc, 28673
  br i1 %i.cd, label %bb.l, label %6

bb.k:                                             ; preds = %bb.i
  %i.ce = icmp slt i32 %i.ca, 28673
  br i1 %i.ce, label %bb.l, label %6

bb.l:                                             ; preds = %bb.k, %bb.j
  %switch.tableidx = xor i8 %i.bz, -128           ; 2 uses
  %5 = icmp ult i8 %switch.tableidx, -3
  br i1 %5, label %switch.lookup, label %tds45_token_to_idx.exit

switch.lookup:                                    ; preds = %bb.l
  %i.cf = zext i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_tds_resp, i64 %i.cf
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %tds45_token_to_idx.exit

tds45_token_to_idx.exit:                          ; preds = %bb.l, %switch.lookup
  %.0.in.i = phi ptr [ %switch.load, %switch.lookup ], [ @hf_tds_unknown_tds_token, %bb.l ]
  %.0.i = load i32, ptr %.0.in.i, align 4
  %i.cg = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %.0208339)
  %i.ch = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %.0.i, ptr noundef nonnull %0, i32 noundef %.0208339, i32 noundef %i.cg, i32 noundef 0) ; 4 uses
  %i.ci = load i32, ptr @ett_tds_token, align 4
  %i.cj = call ptr @proto_item_add_subtree(ptr noundef %i.ch, i32 noundef %i.ci) ; 42 uses
  switch i8 %i.bz, label %.thread308 [
    i8 -30, label %bb.m
    i8 -125, label %bb.n
    i8 -3, label %bb.o
    i8 -2, label %bb.p
    i8 -1, label %bb.q
    i8 -27, label %bb.r
    i8 -29, label %bb.s
    i8 -96, label %bb.t
    i8 -95, label %bb.aa
    i8 -82, label %bb.aj
    i8 -86, label %bb.an
    i8 -85, label %bb.ao
    i8 -83, label %bb.ap
    i8 101, label %bb.aq
    i8 -87, label %bb.ar
    i8 -20, label %bb.as
    i8 32, label %bb.at
    i8 -41, label %bb.au
    i8 124, label %bb.aw
    i8 121, label %bb.ax
    i8 -47, label %bb.ay
    i8 -18, label %bb.az
    i8 97, label %bb.bs
  ]

bb.m:                                             ; preds = %tds45_token_to_idx.exit
  %i.ck = add i32 %.0208339, 1
  %.val = load i32, ptr %i.bx, align 4
  %i.cl = call fastcc i32 @dissect_tds5_capability_token(ptr noundef %0, ptr noundef %1, i32 noundef %i.ck, ptr noundef %i.cj, i32 %.val)
  %i.cm = add i32 %i.cl, 1
  br label %bb.cu

bb.n:                                             ; preds = %tds45_token_to_idx.exit
  %i.cn = add i32 %.0208339, 1
  %i.co = call fastcc i32 @dissect_tds5_curinfo_token(ptr noundef %0, ptr noundef %1, i32 noundef %i.cn, ptr noundef %i.cj, ptr noundef %3)
  %i.cp = add i32 %i.co, 1
  br label %bb.cu

bb.o:                                             ; preds = %tds45_token_to_idx.exit
  %i.cq = add i32 %.0208339, 1
  %i.cr = call fastcc i32 @dissect_tds_done_token(ptr noundef %0, i32 noundef %i.cq, ptr noundef %i.cj, ptr noundef %3)
  %i.cs = add i32 %i.cr, 1
  br label %bb.cu

bb.p:                                             ; preds = %tds45_token_to_idx.exit
  %i.ct = add i32 %.0208339, 1
  %i.cu = call fastcc i32 @dissect_tds_doneproc_token(ptr noundef %0, i32 noundef %i.ct, ptr noundef %i.cj, ptr noundef %3)
  %i.cv = add i32 %i.cu, 1
  br label %bb.cu

bb.q:                                             ; preds = %tds45_token_to_idx.exit
  %i.cw = add i32 %.0208339, 1
  %i.cx = call fastcc i32 @dissect_tds_doneinproc_token(ptr noundef %0, i32 noundef %i.cw, ptr noundef %i.cj, ptr noundef %3)
  %i.cy = add i32 %i.cx, 1
  br label %bb.cu

bb.r:                                             ; preds = %tds45_token_to_idx.exit
  %i.cz = add i32 %.0208339, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #13
  %i.da = load i32, ptr @hf_tds_eed_length, align 4
  %.val56.i = load i32, ptr %i.bx, align 4
  %i.db = icmp eq i32 %.val56.i, 2
  %i.dc = select i1 %i.db, i32 0, i32 -2147483648
  %i.dd = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.da, ptr noundef nonnull %0, i32 noundef %i.cz, i32 noundef 2, i32 noundef %i.dc) ; 0 uses
  %i.de = add i32 %.0208339, 3
  %i.df = load i32, ptr @hf_tds_eed_number, align 4
  %.val57.i = load i32, ptr %i.bu, align 8
  %i.dg = icmp eq i32 %.val57.i, 0
  %i.dh = select i1 %i.dg, i32 0, i32 -2147483648
  %i.di = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.df, ptr noundef nonnull %0, i32 noundef %i.de, i32 noundef 4, i32 noundef %i.dh) ; 0 uses
  %i.dj = add i32 %.0208339, 7
  %i.dk = load i32, ptr @hf_tds_eed_state, align 4
  %i.dl = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.dk, ptr noundef nonnull %0, i32 noundef %i.dj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dm = add i32 %.0208339, 8
  %i.dn = load i32, ptr @hf_tds_eed_class, align 4
  %i.do = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.dn, ptr noundef nonnull %0, i32 noundef %i.dm, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dp = add i32 %.0208339, 9                    ; 2 uses
  %i.dq = load i32, ptr @hf_tds_eed_sql_state, align 4
  %i.dr = call ptr @proto_tree_add_item_ret_length(ptr noundef %i.cj, i32 noundef %i.dq, ptr noundef nonnull %0, i32 noundef %i.dp, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.aq) ; 0 uses
  %i.ds = load i32, ptr %i.aq, align 4
  %i.dt = add i32 %i.ds, %i.dp                    ; 3 uses
  %i.du = load i32, ptr @hf_tds_eed_status, align 4
  %i.dv = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.du, ptr noundef nonnull %0, i32 noundef %i.dt, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dw = add i32 %i.dt, 1
  %i.dx = load i32, ptr @hf_tds_eed_transtate, align 4
  %.val55.i = load i32, ptr %i.bx, align 4
  %i.dy = icmp eq i32 %.val55.i, 2
  %i.dz = select i1 %i.dy, i32 0, i32 -2147483648
  %i.ea = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.dx, ptr noundef nonnull %0, i32 noundef %i.dw, i32 noundef 2, i32 noundef %i.dz) ; 0 uses
  %i.eb = add i32 %i.dt, 3                        ; 2 uses
  %i.ec = load i32, ptr @hf_tds_eed_msgtext, align 4
  %.val60.i = load i32, ptr %i.by, align 4        ; 2 uses
  %switch.selectcmp.i.i = icmp eq i32 %.val60.i, 7
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 46, i32 0
  %switch.selectcmp1.i.i = icmp eq i32 %.val60.i, 120
  %switch.select2.i.i = select i1 %switch.selectcmp1.i.i, i32 -2147483644, i32 %switch.select.i.i
  %.val54.i = load i32, ptr %i.bx, align 4
  %i.ed = icmp eq i32 %.val54.i, 2
  %i.ee = select i1 %i.ed, i32 0, i32 -2147483648
  %i.ef = or i32 %switch.select2.i.i, %i.ee
  %i.eg = call ptr @proto_tree_add_item_ret_length(ptr noundef %i.cj, i32 noundef %i.ec, ptr noundef nonnull %0, i32 noundef %i.eb, i32 noundef 2, i32 noundef %i.ef, ptr noundef nonnull %i.ap) ; 0 uses
  %i.eh = load i32, ptr %i.ap, align 4
  %i.ei = add i32 %i.eh, %i.eb                    ; 2 uses
  %i.ej = load i32, ptr @hf_tds_eed_servername, align 4
  %.val59.i = load i32, ptr %i.by, align 4        ; 2 uses
  %switch.selectcmp.i61.i = icmp eq i32 %.val59.i, 7
  %switch.select.i62.i = select i1 %switch.selectcmp.i61.i, i32 46, i32 0
  %switch.selectcmp1.i63.i = icmp eq i32 %.val59.i, 120
  %switch.select2.i64.i = select i1 %switch.selectcmp1.i63.i, i32 -2147483644, i32 %switch.select.i62.i
  %i.ek = call ptr @proto_tree_add_item_ret_length(ptr noundef %i.cj, i32 noundef %i.ej, ptr noundef nonnull %0, i32 noundef %i.ei, i32 noundef 1, i32 noundef %switch.select2.i64.i, ptr noundef nonnull %i.ap) ; 0 uses
  %i.el = load i32, ptr %i.ap, align 4
  %i.em = add i32 %i.el, %i.ei                    ; 2 uses
  %i.en = load i32, ptr @hf_tds_eed_procname, align 4
  %.val58.i = load i32, ptr %i.by, align 4        ; 2 uses
  %switch.selectcmp.i65.i = icmp eq i32 %.val58.i, 7
  %switch.select.i66.i = select i1 %switch.selectcmp.i65.i, i32 46, i32 0
  %switch.selectcmp1.i67.i = icmp eq i32 %.val58.i, 120
  %switch.select2.i68.i = select i1 %switch.selectcmp1.i67.i, i32 -2147483644, i32 %switch.select.i66.i
  %i.eo = call ptr @proto_tree_add_item_ret_length(ptr noundef %i.cj, i32 noundef %i.en, ptr noundef nonnull %0, i32 noundef %i.em, i32 noundef 1, i32 noundef %switch.select2.i68.i, ptr noundef nonnull %i.ap) ; 0 uses
  %i.ep = load i32, ptr %i.ap, align 4
  %i.eq = add i32 %i.ep, %i.em                    ; 2 uses
  %i.er = load i32, ptr @hf_tds_eed_linenumber, align 4
  %.val.i = load i32, ptr %i.bx, align 4
  %i.es = icmp eq i32 %.val.i, 2
  %i.et = select i1 %i.es, i32 0, i32 -2147483648
  %i.eu = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.er, ptr noundef nonnull %0, i32 noundef %i.eq, i32 noundef 2, i32 noundef %i.et) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #13
  %reass.sub = sub i32 %i.eq, %.0208339
  %i.ev = add i32 %reass.sub, 2
  br label %bb.cu

bb.s:                                             ; preds = %tds45_token_to_idx.exit
  %i.ew = add i32 %.0208339, 1
  %i.ex = call fastcc i32 @dissect_tds_envchg_token(ptr noundef %0, i32 noundef %i.ew, ptr noundef %i.cj, ptr noundef %3)
  %i.ey = add i32 %i.ex, 1
  br label %bb.cu

bb.t:                                             ; preds = %tds45_token_to_idx.exit
  %i.ez = add i32 %.0208339, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #13
  %i.fa = load i32, ptr @hf_tds_colname_length, align 4
  %.val.i214 = load i32, ptr %i.bx, align 4
  %i.fb = icmp eq i32 %.val.i214, 2
  %i.fc = select i1 %i.fb, i32 0, i32 -2147483648
  %i.fd = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.cj, i32 noundef %i.fa, ptr noundef nonnull %0, i32 noundef %i.ez, i32 noundef 2, i32 noundef %i.fc, ptr noundef nonnull %i.am) ; 0 uses
  %i.fe = add i32 %.0208339, 3                    ; 4 uses
  %i.ff = load i32, ptr %i.am, align 4
  %i.fg = add i32 %i.ff, %i.fe                    ; 2 uses
  %i.fh = icmp ult i32 %i.fe, %i.fg
  br i1 %i.fh, label %.lr.ph.i215.preheader, label %._crit_edge.i

.lr.ph.i215.preheader:                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #13
  br label %bb.u

.lr.ph.i215:                                      ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #13
  %exitcond.not.i = icmp eq i64 %i.fx, 256
  br i1 %exitcond.not.i, label %.thread.i, label %bb.u, !llvm.loop !16

.thread.i:                                        ; preds = %.lr.ph.i215
  store i32 256, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #13
  br label %dissect_tds_col_name_token.exit

bb.u:                                             ; preds = %.lr.ph.i215.preheader, %.lr.ph.i215
  %.03948.i449 = phi i32 [ %i.fe, %.lr.ph.i215.preheader ], [ %i.gb, %.lr.ph.i215 ] ; 3 uses
  %indvars.iv.i448 = phi i64 [ 0, %.lr.ph.i215.preheader ], [ %i.fx, %.lr.ph.i215 ] ; 2 uses
  %i.fi = load i32, ptr @hf_tds_colname_column, align 4
  %i.fj = call ptr @proto_tree_add_item(ptr noundef %i.cj, i32 noundef %i.fi, ptr noundef nonnull %0, i32 noundef %.03948.i449, i32 noundef 0, i32 noundef 0) ; 4 uses
  %i.fk = load i32, ptr @ett_tds_col, align 4
  %i.fl = call ptr @proto_item_add_subtree(ptr noundef %i.fj, i32 noundef %i.fk)
  %i.fm = getelementptr [8 x i8], ptr %i.bv, i64 %indvars.iv.i448 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8            ; 2 uses
  %.not.i216 = icmp eq ptr %i.fn, null
  br i1 %.not.i216, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fo = load ptr, ptr %i.bw, align 8
  %i.fp = call noalias dereferenceable_or_null(24) ptr @wmem_alloc0(ptr noundef %i.fo, i64 noundef 24) #14 ; 2 uses
  store ptr %i.fp, ptr %i.fm, align 8
  br label %bb.w
end_hunk_1
begin_hunk_2_@dissect_tds_resp:bb.a
    i32 35, label %bb.ch
    i32 34, label %bb.ch
    i32 225, label %bb.ci
    i32 175, label %bb.ci
  ]

bb.ch:                                            ; preds = %bb.cg, %bb.cg, %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #13
  %i.uo = load i32, ptr @hf_tds_rowfmt2_csize, align 4
  %.val190.i = load i32, ptr %i.bu, align 8
  %i.up = icmp eq i32 %.val190.i, 0
  %i.uq = select i1 %i.up, i32 0, i32 -2147483648
  %i.ur = getelementptr i8, ptr %i.ts, i64 8
  %i.us = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.rm, i32 noundef %i.uo, ptr noundef nonnull %0, i32 noundef %i.uj, i32 noundef 4, i32 noundef %i.uq, ptr noundef %i.ur) ; 0 uses
  %i.ut = add i32 %i.sp, 13                       ; 2 uses
  %i.uu = load i32, ptr @hf_tds_rowfmt2_text_tablename, align 4
  %.val195.i = load i32, ptr %i.by, align 4       ; 2 uses
  %switch.selectcmp.i217.i = icmp eq i32 %.val195.i, 7
  %switch.select.i218.i = select i1 %switch.selectcmp.i217.i, i32 46, i32 0
  %switch.selectcmp1.i219.i = icmp eq i32 %.val195.i, 120
  %switch.select2.i220.i = select i1 %switch.selectcmp1.i219.i, i32 -2147483644, i32 %switch.select.i218.i
  %.val.i275 = load i32, ptr %i.bx, align 4
  %i.uv = icmp eq i32 %.val.i275, 2
  %i.uw = select i1 %i.uv, i32 0, i32 -2147483648
  %i.ux = or i32 %switch.select2.i220.i, %i.uw
  %i.uy = call ptr @proto_tree_add_item_ret_length(ptr noundef %i.rm, i32 noundef %i.uu, ptr noundef nonnull %0, i32 noundef %i.ut, i32 noundef 2, i32 noundef %i.ux, ptr noundef nonnull %i.y) ; 0 uses
  %i.uz = load i32, ptr %i.y, align 4
  %i.va = add i32 %i.uz, %i.ut
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #13
  br label %bb.cl

bb.ci:                                            ; preds = %bb.cg, %bb.cg
  %i.vb = load i32, ptr @hf_tds_rowfmt2_csize, align 4
  %.val189.i = load i32, ptr %i.bu, align 8
  %i.vc = icmp eq i32 %.val189.i, 0
  %i.vd = select i1 %i.vc, i32 0, i32 -2147483648
  %i.ve = getelementptr i8, ptr %i.ts, i64 8
  %i.vf = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.rm, i32 noundef %i.vb, ptr noundef nonnull %0, i32 noundef %i.uj, i32 noundef 4, i32 noundef %i.vd, ptr noundef %i.ve) ; 0 uses
  %i.vg = add i32 %i.sp, 13
  br label %bb.cl

bb.cj:                                            ; preds = %bb.cg
  %i.vh = call zeroext i8 @tvb_get_uint8(ptr noundef nonnull %0, i32 noundef %i.uj)
  %i.vi = zext i8 %i.vh to i32
  %i.vj = getelementptr i8, ptr %i.ts, i64 8
  store i32 %i.vi, ptr %i.vj, align 8
  %i.vk = load i32, ptr @hf_tds_rowfmt2_csize, align 4
  %i.vl = call ptr @proto_tree_add_item(ptr noundef %i.rm, i32 noundef %i.vk, ptr noundef nonnull %0, i32 noundef %i.uj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.vm = add i32 %i.sp, 10
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg
  %i.vn = call fastcc i32 @get_size_by_coltype(i32 noundef %i.un)
  %i.vo = getelementptr i8, ptr %i.ts, i64 8
  store i32 %i.vn, ptr %i.vo, align 8
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.ch
  %.1178.i = phi i32 [ %i.uj, %bb.ck ], [ %i.va, %bb.ch ], [ %i.vg, %bb.ci ], [ %i.vm, %bb.cj ] ; 4 uses
  %i.vp = load i8, ptr %i.um, align 8
  switch i8 %i.vp, label %bb.cn [
    i8 63, label %bb.cm
    i8 108, label %bb.cm
    i8 55, label %bb.cm
    i8 106, label %bb.cm
  ]

bb.cm:                                            ; preds = %bb.cl, %bb.cl, %bb.cl, %bb.cl
  %i.vq = load i32, ptr @hf_tds_rowfmt2_precision, align 4
  %i.vr = call ptr @proto_tree_add_item(ptr noundef %i.rm, i32 noundef %i.vq, ptr noundef nonnull %0, i32 noundef %.1178.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.vs = load i32, ptr @hf_tds_rowfmt2_scale, align 4
  %i.vt = add i32 %.1178.i, 1
  %i.vu = call ptr @proto_tree_add_item(ptr noundef %i.rm, i32 noundef %i.vs, ptr noundef nonnull %0, i32 noundef %i.vt, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.vv = add i32 %.1178.i, 2
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.2.i274 = phi i32 [ %i.vv, %bb.cm ], [ %.1178.i, %bb.cl ] ; 2 uses
  %i.vw = load i32, ptr @hf_tds_rowfmt2_locale_info, align 4
  %i.vx = call ptr @proto_tree_add_item_ret_length(ptr noundef %i.rm, i32 noundef %i.vw, ptr noundef nonnull %0, i32 noundef %.2.i274, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.s) ; 0 uses
  %i.vy = load i32, ptr %i.s, align 4
  %i.vz = add i32 %i.vy, %.2.i274                 ; 4 uses
  %i.wa = load ptr, ptr %i.l, align 8
  %i.wb = sub i32 %i.vz, %.0177225.i441
  call void @proto_item_set_len(ptr noundef %i.wa, i32 noundef %i.wb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #13
  %i.wc = icmp ult i32 %i.vz, %i.rh
  br i1 %i.wc, label %.lr.ph.i266, label %._crit_edge.i258, !llvm.loop !21

._crit_edge.i258:                                 ; preds = %bb.cn, %bb.bs
  %.0177.lcssa.i = phi i32 [ %i.ri, %bb.bs ], [ %i.vz, %bb.cn ]
  %i.wd = phi i32 [ 0, %bb.bs ], [ %i.rl, %bb.cn ] ; 4 uses
  store i32 %i.wd, ptr %4, align 8
  %.not.i259 = icmp eq ptr %i.qw, null
  br i1 %.not.i259, label %bb.ct, label %bb.co

bb.co:                                            ; preds = %._crit_edge.i258
  %i.we = getelementptr i8, ptr %i.qw, i64 24     ; 3 uses
  %i.wf = load i32, ptr %i.we, align 8
  %i.wg = and i32 %i.wf, 4
  %.not185.i = icmp eq i32 %i.wg, 0
  br i1 %.not185.i, label %bb.cp, label %bb.ct

bb.cp:                                            ; preds = %bb.co
  %i.wh = call ptr @wmem_file_scope()             ; 3 uses
  %i.wi = call noalias dereferenceable_or_null(2056) ptr @wmem_alloc0(ptr noundef %i.wh, i64 noundef 2056) #14 ; 3 uses
  store i32 %i.wd, ptr %i.wi, align 8
  %.not28.i.i260 = icmp eq i32 %i.wd, 0
  br i1 %.not28.i.i260, label %copy_nl_data.exit.i265, label %.lr.ph.i.i261

.lr.ph.i.i261:                                    ; preds = %bb.cp
  %i.wj = getelementptr i8, ptr %i.wi, i64 8
  %i.wk = zext i32 %i.wd to i64
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cs, %.lr.ph.i.i261
  %indvars.iv.i.i262 = phi i64 [ 0, %.lr.ph.i.i261 ], [ %indvars.iv.next.i.i264, %bb.cs ] ; 3 uses
  %i.wl = getelementptr [8 x i8], ptr %i.bv, i64 %indvars.iv.i.i262
  %i.wm = load ptr, ptr %i.wl, align 8            ; 6 uses
  %i.wn = call noalias dereferenceable_or_null(24) ptr @wmem_alloc0(ptr noundef %i.wh, i64 noundef 24) #14 ; 7 uses
  %i.wo = getelementptr [8 x i8], ptr %i.wj, i64 %indvars.iv.i.i262
  store ptr %i.wn, ptr %i.wo, align 8
  %i.wp = load ptr, ptr %i.wm, align 8            ; 2 uses
  %.not.i.i263 = icmp eq ptr %i.wp, null
  br i1 %.not.i.i263, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.wq = call noalias ptr @wmem_strdup(ptr noundef %i.wh, ptr noundef nonnull %i.wp)
  store ptr %i.wq, ptr %i.wn, align 8
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.wr = getelementptr i8, ptr %i.wm, i64 8
  %i.ws = load i32, ptr %i.wr, align 8
  %i.wt = getelementptr i8, ptr %i.wn, i64 8
  store i32 %i.ws, ptr %i.wt, align 8
  %i.wu = getelementptr i8, ptr %i.wm, i64 12
  %i.wv = load i32, ptr %i.wu, align 4
  %i.ww = getelementptr i8, ptr %i.wn, i64 12
  store i32 %i.wv, ptr %i.ww, align 4
  %i.wx = getelementptr i8, ptr %i.wm, i64 16
  %i.wy = load i8, ptr %i.wx, align 8
  %i.wz = getelementptr i8, ptr %i.wn, i64 16
  store i8 %i.wy, ptr %i.wz, align 8
  %i.xa = getelementptr i8, ptr %i.wm, i64 17
  %i.xb = load i8, ptr %i.xa, align 1
  %i.xc = getelementptr i8, ptr %i.wn, i64 17
  store i8 %i.xb, ptr %i.xc, align 1
  %i.xd = getelementptr i8, ptr %i.wm, i64 18
  %i.xe = load i8, ptr %i.xd, align 2
  %i.xf = getelementptr i8, ptr %i.wn, i64 18
  store i8 %i.xe, ptr %i.xf, align 2
  %indvars.iv.next.i.i264 = add nuw nsw i64 %indvars.iv.i.i262, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i.i264, %i.wk
  br i1 %exitcond.not, label %copy_nl_data.exit.i265, label %bb.cq, !llvm.loop !20

copy_nl_data.exit.i265:                           ; preds = %bb.cs, %bb.cp
  %i.xg = getelementptr i8, ptr %i.qw, i64 16
  store ptr %i.wi, ptr %i.xg, align 8
  %i.xh = load i32, ptr %i.we, align 8
  %i.xi = or i32 %i.xh, 4
  store i32 %i.xi, ptr %i.we, align 8
  br label %bb.ct

bb.ct:                                            ; preds = %copy_nl_data.exit.i265, %bb.co, %._crit_edge.i258
  %i.xj = sub i32 %.0177.lcssa.i, %.0208339
  br label %dissect_tds_rowfmt2_token.exit

dissect_tds_rowfmt2_token.exit:                   ; preds = %.thread.i276, %bb.ct
  %.2181.i = phi i32 [ 1, %.thread.i276 ], [ %i.xj, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  br label %bb.cu

bb.cu:                                            ; preds = %dissect_tds_rowfmt2_token.exit, %dissect_tds_rowfmt_token.exit, %bb.ay, %dissect_tds5_params_token.exit, %bb.at, %bb.as, %bb.ar, %bb.ao, %bb.an, %dissect_tds_control_token.exit, %dissect_tds_colfmt_token.exit, %dissect_tds_col_name_token.exit, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.0 = phi i32 [ %.2166.i, %dissect_tds_rowfmt_token.exit ], [ %i.cm, %bb.m ], [ %i.cp, %bb.n ], [ %i.cs, %bb.o ], [ %i.cv, %bb.p ], [ %i.cy, %bb.q ], [ %i.ev, %bb.r ], [ %i.ey, %bb.s ], [ %.2.i, %dissect_tds_col_name_token.exit ], [ %.2122.i, %dissect_tds_colfmt_token.exit ], [ %.024.i, %dissect_tds_control_token.exit ], [ %i.jk, %bb.an ], [ %i.jn, %bb.ao ], [ %.2181.i, %dissect_tds_rowfmt2_token.exit ], [ %i.ll, %bb.ay ], [ %i.ke, %bb.ar ], [ %i.kh, %bb.as ], [ %i.kk, %bb.at ], [ %i.la, %dissect_tds5_params_token.exit ] ; 2 uses
  %i.xk = icmp eq i32 %.0, 0
  br i1 %i.xk, label %.thread308, label %.thread

.thread308:                                       ; preds = %tds45_token_to_idx.exit, %bb.cu
  %i.xl = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ch, ptr noundef nonnull @ei_tds_token_length_invalid, ptr noundef nonnull @.str.1355, i32 noundef 0) ; 0 uses
  br label %.thread314

.thread:                                          ; preds = %bb.ax, %bb.aw, %bb.aq, %bb.ap, %bb.cu
  %.0307 = phi i32 [ %.0, %bb.cu ], [ 5, %bb.ax ], [ 9, %bb.aw ], [ 5, %bb.aq ], [ %i.jq, %bb.ap ] ; 2 uses
  call void @proto_item_set_len(ptr noundef %i.ch, i32 noundef %.0307)
  br label %bb.gk

6:                                                ; preds = %bb.k, %bb.j
  switch i8 %i.bz, label %bb.cw [
    i8 -30, label %tds7_token_to_idx.exit
    i8 -95, label %7
    i8 -127, label %8
    i8 -3, label %9
    i8 -2, label %10
    i8 -1, label %11
    i8 -29, label %12
    i8 -86, label %13
    i8 -82, label %14
    i8 -85, label %15
    i8 -83, label %16
    i8 -46, label %17
    i8 120, label %18
    i8 -87, label %19
    i8 121, label %20
    i8 -47, label %21
    i8 -28, label %22
    i8 -19, label %bb.cv
  ]

7:                                                ; preds = %6
  br label %tds7_token_to_idx.exit

8:                                                ; preds = %6
  br label %tds7_token_to_idx.exit

9:                                                ; preds = %6
  br label %tds7_token_to_idx.exit

10:                                               ; preds = %6
  br label %tds7_token_to_idx.exit

11:                                               ; preds = %6
  br label %tds7_token_to_idx.exit

12:                                               ; preds = %6
  br label %tds7_token_to_idx.exit

13:                                               ; preds = %6
  br label %tds7_token_to_idx.exit

14:                                               ; preds = %6
  br label %tds7_token_to_idx.exit

15:                                               ; preds = %6
  br label %tds7_token_to_idx.exit

16:                                               ; preds = %6
  br label %tds7_token_to_idx.exit

17:                                               ; preds = %6
  br label %tds7_token_to_idx.exit

18:                                               ; preds = %6
  br label %tds7_token_to_idx.exit

19:                                               ; preds = %6
  br label %tds7_token_to_idx.exit

20:                                               ; preds = %6
  br label %tds7_token_to_idx.exit

21:                                               ; preds = %6
  br label %tds7_token_to_idx.exit

22:                                               ; preds = %6
  br label %tds7_token_to_idx.exit

bb.cv:                                            ; preds = %6
  br label %tds7_token_to_idx.exit

bb.cw:                                            ; preds = %6
  br label %tds7_token_to_idx.exit

tds7_token_to_idx.exit:                           ; preds = %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %bb.cv, %bb.cw
  %.0.in.i277 = phi ptr [ @hf_tds_unknown_tds_token, %bb.cw ], [ @hf_tds_sspi, %bb.cv ], [ @hf_tds_colfmt, %7 ], [ @hf_tds_colmetadata, %8 ], [ @hf_tds_done, %9 ], [ @hf_tds_doneproc, %10 ], [ @hf_tds_doneinproc, %11 ], [ @hf_tds_envchg, %12 ], [ @hf_tds_error, %13 ], [ @hf_tds_featureextack, %14 ], [ @hf_tds_info, %15 ], [ @hf_tds_loginack, %16 ], [ @hf_tds_nbcrow, %17 ], [ @hf_tds_offset, %18 ], [ @hf_tds_order, %19 ], [ @hf_tds_returnstatus, %20 ], [ @hf_tds_row, %21 ], [ @hf_tds_sessionstate, %22 ], [ @hf_tds_capability, %6 ]
  %.0.i278 = load i32, ptr %.0.in.i277, align 4
  %i.xm = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %.0208339)
  %i.xn = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %.0.i278, ptr noundef nonnull %0, i32 noundef %.0208339, i32 noundef %i.xm, i32 noundef 0) ; 2 uses
  %i.xo = load i32, ptr @ett_tds_token, align 4
  %i.xp = call ptr @proto_item_add_subtree(ptr noundef %i.xn, i32 noundef %i.xo) ; 24 uses
  switch i8 %i.bz, label %.thread314 [
    i8 -127, label %bb.cx
    i8 -3, label %bb.fj
    i8 -2, label %bb.fk
    i8 -1, label %bb.fl
    i8 -29, label %bb.fm
    i8 -86, label %bb.fn
    i8 -85, label %bb.fo
    i8 -82, label %bb.fp
    i8 -83, label %bb.fr
    i8 -46, label %bb.fs
    i8 120, label %bb.fx
    i8 -87, label %bb.fy
    i8 121, label %bb.fz
    i8 -47, label %bb.ga
    i8 -28, label %bb.gb
    i8 -19, label %bb.gf
  ]

bb.cx:                                            ; preds = %tds7_token_to_idx.exit
  %i.xq = add i32 %.0208339, 1                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  %i.xr = load i32, ptr @tds_little_endian, align 4
  %.not.i279 = icmp eq i32 %i.xr, 0
  %i.xs = select i1 %.not.i279, i32 0, i32 -2147483648 ; 7 uses
  %i.xt = call zeroext i16 @tvb_get_letohs(ptr noundef nonnull %0, i32 noundef %i.xq) ; 4 uses
  %i.xu = zext i16 %i.xt to i32
  store i32 %i.xu, ptr %4, align 8
  %i.xv = load i32, ptr @hf_tds_colmetadata_columns, align 4
  %i.xw = call ptr @proto_tree_add_item(ptr noundef %i.xp, i32 noundef %i.xv, ptr noundef nonnull %0, i32 noundef %i.xq, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.xx = icmp ugt i16 %i.xt, 256
  br i1 %i.xx, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store i32 0, ptr %4, align 8
  br label %dissect_tds7_colmetadata_token.exit

bb.cz:                                            ; preds = %bb.cx
  %i.xy = add i32 %.0208339, 3                    ; 2 uses
  %.not577610.i = icmp eq i16 %i.xt, 0
  br i1 %.not577610.i, label %._crit_edge.i283, label %.lr.ph614.i

.lr.ph614.i:                                      ; preds = %bb.cz
  %i.xz = zext nneg i16 %i.xt to i64
  br label %bb.da

bb.da:                                            ; preds = %bb.fi, %.lr.ph614.i
  %indvars.iv.i280 = phi i64 [ 0, %.lr.ph614.i ], [ %indvars.iv.next.i281, %bb.fi ] ; 2 uses
  %.0553612.i = phi i32 [ %i.xy, %.lr.ph614.i ], [ %.12.i, %bb.fi ] ; 6 uses
  %i.ya = load i32, ptr @hf_tds_colmetadata_field, align 4
  %i.yb = call ptr @proto_tree_add_item(ptr noundef %i.xp, i32 noundef %i.ya, ptr noundef nonnull %0, i32 noundef %.0553612.i, i32 noundef 0, i32 noundef 0) ; 3 uses
  %i.yc = load i32, ptr @ett_tds_col, align 4
  %i.yd = call ptr @proto_item_add_subtree(ptr noundef %i.yb, i32 noundef %i.yc) ; 54 uses
  %indvars.iv.next.i281 = add nuw nsw i64 %indvars.iv.i280, 1 ; 3 uses
  %i.ye = trunc nuw nsw i64 %indvars.iv.next.i281 to i32
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.yb, ptr noundef nonnull @.str.1362, i32 noundef %i.ye)
  %i.yf = getelementptr [8 x i8], ptr %i.bv, i64 %indvars.iv.i280 ; 2 uses
  %i.yg = load ptr, ptr %i.yf, align 8            ; 2 uses
  %.not578.i = icmp eq ptr %i.yg, null
  br i1 %.not578.i, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.yh = load ptr, ptr %i.bw, align 8
  %i.yi = call noalias dereferenceable_or_null(24) ptr @wmem_alloc0(ptr noundef %i.yh, i64 noundef 24) #14 ; 2 uses
  store ptr %i.yi, ptr %i.yf, align 8
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.yj = phi ptr [ %i.yi, %bb.db ], [ %i.yg, %bb.da ] ; 14 uses
  %i.yk = load i32, ptr @tds_protocol_type, align 4 ; 2 uses
  %i.yl = icmp eq i32 %i.yk, 65535
  br i1 %i.yl, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.ym = load i32, ptr %i.bt, align 8
  %i.yn = icmp slt i32 %i.ym, 28929
  br i1 %i.yn, label %bb.df, label %bb.dg

bb.de:                                            ; preds = %bb.dc
  %i.yo = icmp slt i32 %i.yk, 28929
  br i1 %i.yo, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.yp = load i32, ptr @hf_tds_colmetadata_usertype16, align 4
  %i.yq = call ptr @proto_tree_add_item(ptr noundef %i.yd, i32 noundef %i.yp, ptr noundef nonnull %0, i32 noundef %.0553612.i, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.yr = call zeroext i16 @tvb_get_uint16(ptr noundef nonnull %0, i32 noundef %.0553612.i, i32 noundef %i.xs)
  %i.ys = zext i16 %i.yr to i32
  %i.yt = getelementptr i8, ptr %i.yj, i64 12
  store i32 %i.ys, ptr %i.yt, align 4
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de, %bb.dd
  %i.yu = load i32, ptr @hf_tds_colmetadata_usertype32, align 4
  %i.yv = getelementptr i8, ptr %i.yj, i64 12
  %i.yw = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.yd, i32 noundef %i.yu, ptr noundef nonnull %0, i32 noundef %.0553612.i, i32 noundef 4, i32 noundef -2147483648, ptr noundef %i.yv) ; 0 uses
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.sink.i = phi i32 [ 4, %bb.dg ], [ 2, %bb.df ]
  %i.yx = add i32 %.sink.i, %.0553612.i           ; 44 uses
  %i.yy = load i32, ptr @hf_tds_colmetadata_results_token_flags, align 4
  %i.yz = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.yd, i32 noundef %i.yy, ptr noundef nonnull %0, i32 noundef %i.yx, i32 noundef 2, i32 noundef -2147483648, ptr noundef nonnull %i.h) ; 2 uses
  %.not579.i = icmp eq ptr %i.yz, null
  br i1 %.not579.i, label %.thread601.thread.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.za = load i32, ptr @ett_tds_flags, align 4
  %i.zb = call ptr @proto_item_add_subtree(ptr noundef nonnull %i.yz, i32 noundef %i.za) ; 13 uses
  %.not580.i = icmp eq ptr %i.zb, null
  br i1 %.not580.i, label %.thread601.thread.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.zc = load i32, ptr @hf_tds_colmetadata_flags_nullable, align 4
  %i.zd = call ptr @proto_tree_add_item(ptr noundef nonnull %i.zb, i32 noundef %i.zc, ptr noundef nonnull %0, i32 noundef %i.yx, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ze = load i32, ptr @hf_tds_colmetadata_flags_casesen, align 4
  %i.zf = call ptr @proto_tree_add_item(ptr noundef nonnull %i.zb, i32 noundef %i.ze, ptr noundef nonnull %0, i32 noundef %i.yx, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.zg = load i32, ptr @hf_tds_colmetadata_flags_updateable, align 4
  %i.zh = call ptr @proto_tree_add_item(ptr noundef nonnull %i.zb, i32 noundef %i.zg, ptr noundef nonnull %0, i32 noundef %i.yx, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.zi = load i32, ptr @hf_tds_colmetadata_flags_identity, align 4
  %i.zj = call ptr @proto_tree_add_item(ptr noundef nonnull %i.zb, i32 noundef %i.zi, ptr noundef nonnull %0, i32 noundef %i.yx, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.zk = load i32, ptr @tds_protocol_type, align 4 ; 2 uses
  %i.zl = icmp eq i32 %i.zk, 65535
  br i1 %i.zl, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.zm = load i32, ptr %i.bt, align 8
  %i.zn = icmp sgt i32 %i.zm, 29183
  br i1 %i.zn, label %bb.dm, label %.thread645.i

bb.dl:                                            ; preds = %bb.dj
  %i.zo = icmp sgt i32 %i.zk, 29183
  br i1 %i.zo, label %bb.dm, label %.thread645.i

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.zp = load i32, ptr @hf_tds_colmetadata_flags_computed, align 4
  %i.zq = call ptr @proto_tree_add_item(ptr noundef nonnull %i.zb, i32 noundef %i.zp, ptr noundef nonnull %0, i32 noundef %i.yx, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.pr.pre.i = load i32, ptr @tds_protocol_type, align 4 ; 2 uses
  %i.zr = icmp eq i32 %.pr.pre.i, 65535
  br i1 %i.zr, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %.pr.i = load i32, ptr %i.bt, align 8
  %i.zs = icmp slt i32 %.pr.i, 29451
  br i1 %i.zs, label %.thread645.i, label %.thread650.i

bb.do:                                            ; preds = %bb.dm
  %i.zt = icmp slt i32 %.pr.pre.i, 29451
  br i1 %i.zt, label %.thread645.i, label %.thread650.i

.thread645.i:                                     ; preds = %bb.do, %bb.dn, %bb.dl, %bb.dk
  %i.zu = load i32, ptr @hf_tds_colmetadata_flags_reservedodbc, align 4
  %i.zv = call ptr @proto_tree_add_item(ptr noundef nonnull %i.zb, i32 noundef %i.zu, ptr noundef nonnull %0, i32 noundef %i.yx, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.pr593.pre.i = load i32, ptr @tds_protocol_type, align 4 ; 2 uses
  %i.zw = icmp eq i32 %.pr593.pre.i, 65535
  br i1 %i.zw, label %bb.dp, label %.thread594.i

bb.dp:                                            ; preds = %.thread645.i
  %.pr649.i = load i32, ptr %i.bt, align 8
  %i.zx = icmp sgt i32 %.pr649.i, 29183
  br i1 %i.zx, label %.thread650.i, label %.thread601.thread.i

.thread594.i:                                     ; preds = %.thread645.i
  %i.zy = icmp sgt i32 %.pr593.pre.i, 29183
  br i1 %i.zy, label %.thread650.i, label %.thread601.thread.i

.thread650.i:                                     ; preds = %.thread594.i, %bb.dp, %bb.do, %bb.dn
  %i.zz = load i32, ptr @hf_tds_colmetadata_flags_fixedlenclrtype, align 4
  %i.aaa = call ptr @proto_tree_add_item(ptr noundef nonnull %i.zb, i32 noundef %i.zz, ptr noundef nonnull %0, i32 noundef %i.yx, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.pre.i288 = load i32, ptr @tds_protocol_type, align 4 ; 3 uses
  %i.aab = icmp eq i32 %.pre.i288, 65535
  br i1 %i.aab, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %.thread650.i
  %.pr654.i = load i32, ptr %i.bt, align 8        ; 2 uses
  %i.aac = icmp sgt i32 %.pr654.i, 29450
  br i1 %i.aac, label %bb.ds, label %.thread598.thread.i

bb.dr:                                            ; preds = %.thread650.i
  %i.aad = icmp sgt i32 %.pre.i288, 29450
  br i1 %i.aad, label %bb.ds, label %.thread601.i

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.aae = load i32, ptr @hf_tds_colmetadata_flags_sparsecolumnset, align 4
  %i.aaf = call ptr @proto_tree_add_item(ptr noundef nonnull %i.zb, i32 noundef %i.aae, ptr noundef nonnull %0, i32 noundef %i.yx, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.pr596.pre.i = load i32, ptr @tds_protocol_type, align 4 ; 3 uses
  %i.aag = icmp eq i32 %.pr596.pre.i, 65535
  br i1 %i.aag, label %.thread657.i, label %bb.dt

.thread657.i:                                     ; preds = %bb.ds
  %.pr662.i = load i32, ptr %i.bt, align 8        ; 2 uses
  %i.aah = icmp sgt i32 %.pr662.i, 29695
  br i1 %i.aah, label %.thread598.i, label %.thread598.thread.i

bb.dt:                                            ; preds = %bb.ds
end_hunk_2
