Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-meta?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0
@.str.23 = private unnamed_addr constant [15 x i8] c"meta.phylinkid\00", align 1
@hf_meta_item_nsapi = internal global i32 0, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"NSAPI\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"meta.nsapi\00", align 1
@hf_meta_item_imsi_digits = internal global i32 0, align 4
@.str.26 = private unnamed_addr constant [12 x i8] c"IMSI digits\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"meta.imsi_digits\00", align 1
@hf_meta_item_imsi_value = internal global i32 0, align 4
@.str.28 = private unnamed_addr constant [11 x i8] c"IMSI value\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"meta.imsi_value\00", align 1
@hf_meta_item_imei_digits = internal global i32 0, align 4
@.str.30 = private unnamed_addr constant [12 x i8] c"IMEI digits\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"meta.imei_digits\00", align 1
@hf_meta_item_imei_value = internal global i32 0, align 4
@.str.32 = private unnamed_addr constant [11 x i8] c"IMEI value\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"meta.imei_value\00", align 1
@hf_meta_item_signaling = internal global i32 0, align 4
@.str.34 = private unnamed_addr constant [10 x i8] c"Signaling\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"meta.signaling\00", align 1
@hf_meta_item_incomplete = internal global i32 0, align 4
@.str.36 = private unnamed_addr constant [11 x i8] c"Incomplete\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"meta.incomplete\00", align 1
@hf_meta_item_deciphered = internal global i32 0, align 4
@.str.38 = private unnamed_addr constant [11 x i8] c"Deciphered\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"meta.deciphered\00", align 1
@hf_meta_item_apn = internal global i32 0, align 4
@.str.40 = private unnamed_addr constant [4 x i8] c"APN\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"meta.apn\00", align 1
@hf_meta_item_rat = internal global i32 0, align 4
@.str.42 = private unnamed_addr constant [4 x i8] c"RAT\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"meta.rat\00", align 1
@hf_meta_item_aal5proto = internal global i32 0, align 4
@.str.44 = private unnamed_addr constant [19 x i8] c"AAL5 Protocol Type\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"meta.aal5proto\00", align 1
@hf_meta_item_cell = internal global i32 0, align 4
@.str.46 = private unnamed_addr constant [12 x i8] c"Mobile Cell\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"meta.cell\00", align 1
@hf_meta_item_localdevid = internal global i32 0, align 4
@.str.48 = private unnamed_addr constant [16 x i8] c"Local Device ID\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"meta.localdevid\00", align 1
@hf_meta_item_remotedevid = internal global i32 0, align 4
@.str.50 = private unnamed_addr constant [17 x i8] c"Remote Device ID\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"meta.remotedevid\00", align 1
@hf_meta_item_tapgroupid = internal global i32 0, align 4
@.str.52 = private unnamed_addr constant [13 x i8] c"Tap Group ID\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"meta.tapgroupid\00", align 1
@hf_meta_item_tlli = internal global i32 0, align 4
@.str.54 = private unnamed_addr constant [5 x i8] c"TLLI\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"meta.tlli\00", align 1
@hf_meta_item_calling = internal global i32 0, align 4
@.str.56 = private unnamed_addr constant [19 x i8] c"Calling Station ID\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"meta.calling\00", align 1
@hf_meta_item_called = internal global i32 0, align 4
@.str.58 = private unnamed_addr constant [18 x i8] c"Called Station ID\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"meta.called\00", align 1
@proto_register_meta.ett = internal global [5 x ptr] [ptr @ett_meta, ptr @ett_meta_item, ptr @ett_meta_cell, ptr @ett_meta_imsi, ptr @ett_meta_imei], align 16
@ett_meta = internal global i32 0, align 4
@ett_meta_item = internal global i32 0, align 4
@ett_meta_cell = internal global i32 0, align 4
@ett_meta_imsi = internal global i32 0, align 4
@ett_meta_imei = internal global i32 0, align 4
@proto_register_meta.ei = internal global [2 x { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } }] [{ ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_meta_malformed, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.60, i32 117440512, i32 8388608, ptr @.str.61, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }, { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_meta_invalid_header, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.62, i32 117440512, i32 8388608, ptr @.str.63, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }], align 16
@ei_meta_malformed = internal global %struct.expert_field zeroinitializer, align 4
@.str.60 = private unnamed_addr constant [15 x i8] c"meta.malformed\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"Malformed data\00", align 1
@ei_meta_invalid_header = internal global %struct.expert_field zeroinitializer, align 4
@.str.62 = private unnamed_addr constant [27 x i8] c"meta.invalid_header_length\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"Invalid Header Length\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"Metadata\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"META\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"meta\00", align 1
@proto_meta = internal unnamed_addr global i32 0, align 4
@.str.67 = private unnamed_addr constant [14 x i8] c"META protocol\00", align 1
@meta_dissector_table = internal unnamed_addr global ptr null, align 8
@.str.68 = private unnamed_addr constant [6 x i8] c"sscop\00", align 1
@proto_sscop = internal unnamed_addr global i32 0, align 4
@.str.69 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@data_handle = internal unnamed_addr global ptr null, align 8
@.str.70 = private unnamed_addr constant [6 x i8] c"alcap\00", align 1
@alcap_handle = internal unnamed_addr global ptr null, align 8
@.str.71 = private unnamed_addr constant [16 x i8] c"atm_untruncated\00", align 1
@atm_untrunc_handle = internal unnamed_addr global ptr null, align 8
@.str.72 = private unnamed_addr constant [5 x i8] c"nbap\00", align 1
@nbap_handle = internal unnamed_addr global ptr null, align 8
@.str.73 = private unnamed_addr constant [9 x i8] c"sscf-nni\00", align 1
@sscf_nni_handle = internal unnamed_addr global ptr null, align 8
@.str.74 = private unnamed_addr constant [12 x i8] c"eth_withfcs\00", align 1
@ethwithfcs_handle = internal unnamed_addr global ptr null, align 8
@.str.75 = private unnamed_addr constant [15 x i8] c"eth_withoutfcs\00", align 1
@ethwithoutfcs_handle = internal unnamed_addr global ptr null, align 8
@.str.76 = private unnamed_addr constant [8 x i8] c"fp_hint\00", align 1
@fphint_handle = internal unnamed_addr global ptr null, align 8
@.str.77 = private unnamed_addr constant [5 x i8] c"mtp2\00", align 1
@mtp2_handle = internal unnamed_addr global ptr null, align 8
@.str.78 = private unnamed_addr constant [5 x i8] c"PCAP\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"DXT\00", align 1
@meta_schema_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.78 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.79 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.81 = private unnamed_addr constant [16 x i8] c"meta_proto_vals\00", align 1
@.str.82 = private unnamed_addr constant [21 x i8] c"Ethernet without FCS\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"Ethernet with FCS\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"ATM\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"ERF AAL5\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"ATM AAL2\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"FP Hint\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"HDLC\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"DXT CONTAINER\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"FP CAPTURE\00", align 1
@.str.91 = private unnamed_addr constant [14 x i8] c"UTRAN CAPSULE\00", align 1
@meta_proto_vals = internal constant [11 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.82 }, { i32, [4 x i8], ptr } { i32 36, [4 x i8] zeroinitializer, ptr @.str.83 }, { i32, [4 x i8], ptr } { i32 41, [4 x i8] zeroinitializer, ptr @.str.84 }, { i32, [4 x i8], ptr } { i32 49, [4 x i8] zeroinitializer, ptr @.str.85 }, { i32, [4 x i8], ptr } { i32 76, [4 x i8] zeroinitializer, ptr @.str.86 }, { i32, [4 x i8], ptr } { i32 82, [4 x i8] zeroinitializer, ptr @.str.87 }, { i32, [4 x i8], ptr } { i32 106, [4 x i8] zeroinitializer, ptr @.str.88 }, { i32, [4 x i8], ptr } { i32 127, [4 x i8] zeroinitializer, ptr @.str.89 }, { i32, [4 x i8], ptr } { i32 193, [4 x i8] zeroinitializer, ptr @.str.90 }, { i32, [4 x i8], ptr } { i32 194, [4 x i8] zeroinitializer, ptr @.str.91 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.93 = private unnamed_addr constant [13 x i8] c"meta_id_vals\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"Payload cutted\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"IMSI\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"IMEI\00", align 1
@meta_id_vals = internal constant [22 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.94 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.18 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.34 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.36 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.38 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.95 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.20 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.44 }, { i32, [4 x i8], ptr } { i32 256, [4 x i8] zeroinitializer, ptr @.str.22 }, { i32, [4 x i8], ptr } { i32 257, [4 x i8] zeroinitializer, ptr @.str.48 }, { i32, [4 x i8], ptr } { i32 258, [4 x i8] zeroinitializer, ptr @.str.50 }, { i32, [4 x i8], ptr } { i32 259, [4 x i8] zeroinitializer, ptr @.str.52 }, { i32, [4 x i8], ptr } { i32 1024, [4 x i8] zeroinitializer, ptr @.str.96 }, { i32, [4 x i8], ptr } { i32 1025, [4 x i8] zeroinitializer, ptr @.str.97 }, { i32, [4 x i8], ptr } { i32 1026, [4 x i8] zeroinitializer, ptr @.str.46 }, { i32, [4 x i8], ptr } { i32 1027, [4 x i8] zeroinitializer, ptr @.str.54 }, { i32, [4 x i8], ptr } { i32 1028, [4 x i8] zeroinitializer, ptr @.str.24 }, { i32, [4 x i8], ptr } { i32 1029, [4 x i8] zeroinitializer, ptr @.str.40 }, { i32, [4 x i8], ptr } { i32 1030, [4 x i8] zeroinitializer, ptr @.str.42 }, { i32, [4 x i8], ptr } { i32 1031, [4 x i8] zeroinitializer, ptr @.str.56 }, { i32, [4 x i8], ptr } { i32 1032, [4 x i8] zeroinitializer, ptr @.str.58 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.99 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"BOOLEAN\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"UINT8\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"UINT16\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"UINT32\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"UINT64\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@meta_type_vals = internal constant [8 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.99 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.100 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.101 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.102 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.103 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.104 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.105 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.107 = private unnamed_addr constant [3 x i8] c"Up\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"Down\00", align 1
@meta_direction_vals = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.107 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.108 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.110 = private unnamed_addr constant [11 x i8] c"SSCOP MTP3\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"GPRS NS\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c"SSCOP ALCAP\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"SSCOP NBAP\00", align 1
@meta_aal5proto_vals = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.110 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.111 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.112 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.113 }, { i32, [4 x i8], ptr } zeroinitializer], align 16

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_meta() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef @.str.64, ptr noundef @.str.65, ptr noundef @.str.66) ; 2 uses
  store i32 %i.a, ptr @proto_meta, align 4
  %i.b = tail call ptr @register_dissector(ptr noundef @.str.66, ptr noundef @dissect_meta, i32 noundef %i.a) ; 0 uses
  %i.c = load i32, ptr @proto_meta, align 4
  tail call void @proto_register_field_array(i32 noundef %i.c, ptr noundef @proto_register_meta.hf, i32 noundef 30)
  tail call void @proto_register_subtree_array(ptr noundef @proto_register_meta.ett, i32 noundef 5)
  %i.d = load i32, ptr @proto_meta, align 4
  %i.e = tail call ptr @expert_register_protocol(i32 noundef %i.d)
  tail call void @expert_register_field_array(ptr noundef %i.e, ptr noundef @proto_register_meta.ei, i32 noundef 2)
  %i.f = load i32, ptr @proto_meta, align 4
  %i.g = tail call ptr @register_dissector_table(ptr noundef @.str.5, ptr noundef @.str.67, i32 noundef %i.f, i32 noundef 5, i32 noundef 1)
  store ptr %i.g, ptr @meta_dissector_table, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_meta(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.atm_phdr, align 4           ; 19 uses
  %i.a = load ptr, ptr @data_handle, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @col_set_str(ptr noundef %i.c, i32 noundef 35, ptr noundef @.str.65)
  %i.d = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 0) ; 3 uses
  %i.e = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 2) ; 3 uses
  %i.f = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 4) ; 3 uses
  %i.g = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef 6)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = zext i16 %i.e to i32
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr @proto_meta, align 4
  %i.i = zext i16 %i.e to i32                     ; 3 uses
  %i.j = add nuw nsw i32 %i.i, 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.h, ptr noundef %0, i32 noundef 0, i32 noundef %i.j, i32 noundef 0) ; 2 uses
  %i.l = load i32, ptr @ett_meta, align 4
  %i.m = tail call ptr @proto_item_add_subtree(ptr noundef %i.k, i32 noundef %i.l) ; 5 uses
  %i.n = load i32, ptr @hf_meta_schema, align 4
  %i.o = zext i16 %i.d to i32
  %i.p = tail call ptr @proto_tree_add_uint(ptr noundef %i.m, i32 noundef %i.n, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef %i.o) ; 0 uses
  %i.q = load i32, ptr @hf_meta_hdrlen, align 4
  %i.r = tail call ptr @proto_tree_add_uint(ptr noundef %i.m, i32 noundef %i.q, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef %i.i) ; 0 uses
  %i.s = load i32, ptr @hf_meta_proto, align 4
  %i.t = zext i16 %i.f to i32
  %i.u = tail call ptr @proto_tree_add_uint(ptr noundef %i.m, i32 noundef %i.s, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef %i.t) ; 0 uses
  %i.v = load i32, ptr @hf_meta_reserved, align 4
  %i.w = zext i16 %i.g to i32
  %i.x = tail call ptr @proto_tree_add_uint(ptr noundef %i.m, i32 noundef %i.v, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef %i.w) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.i, %bb.b ] ; 17 uses
  %.065 = phi ptr [ null, %._crit_edge ], [ %i.m, %bb.b ] ; 26 uses
  %.064 = phi ptr [ null, %._crit_edge ], [ %i.k, %bb.b ]
  %.not.i = icmp eq i16 %i.e, 0
  br i1 %.not.i, label %evaluate_meta_items.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.y = getelementptr i8, ptr %1, i64 356        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.aa = getelementptr i8, ptr %1, i64 386
  switch i16 %i.d, label %.lr.ph.split.i [
    i16 2, label %.lr.ph.split.us.i
    i16 1, label %.lr.ph.split.us32.i
  ]

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %evaluate_meta_item_dxt.exit.us.i
  %.031.us.i = phi i32 [ %i.fi, %evaluate_meta_item_dxt.exit.us.i ], [ 0, %.lr.ph.i ] ; 5 uses
  %i.ab = trunc i32 %.031.us.i to i16
  %i.ac = add i32 %.031.us.i, 8
  %i.ad = and i32 %i.ac, 65532
  %i.ae = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.ad) ; 2 uses
  %i.af = add i32 %.031.us.i, 10
  %i.ag = and i32 %i.af, 65534
  %i.ah = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ag)
  %i.ai = add i32 %.031.us.i, 11
  %i.aj = and i32 %i.ai, 65535
  %i.ak = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.aj) ; 2 uses
  %i.al = add i16 %i.ab, 12                       ; 20 uses
  %i.am = zext i8 %i.ak to i32                    ; 6 uses
  %i.an = add nuw nsw i32 %i.am, 3
  %i.ao = and i32 %i.an, 508
  %i.ap = add nuw nsw i32 %i.ao, 4                ; 2 uses
  switch i16 %i.ae, label %bb.ae [
    i16 1, label %bb.ad
    i16 6, label %bb.ac
    i16 256, label %bb.ab
    i16 1028, label %bb.aa
    i16 1024, label %bb.z
    i16 1025, label %bb.y
    i16 1029, label %bb.x
    i16 1030, label %bb.w
    i16 1026, label %bb.v
    i16 2, label %bb.u
    i16 3, label %bb.t
    i16 4, label %bb.s
    i16 7, label %bb.j
    i16 257, label %bb.i
    i16 258, label %bb.h
    i16 259, label %bb.g
    i16 1027, label %bb.f
    i16 1031, label %bb.e
    i16 1032, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph.split.us.i
  %i.aq = load i32, ptr @hf_meta_item_called, align 4
  %i.ar = zext i16 %i.al to i32
  %i.as = tail call ptr @proto_tree_add_item(ptr noundef %.065, i32 noundef %i.aq, ptr noundef %0, i32 noundef %i.ar, i32 noundef %i.am, i32 noundef 0) ; 0 uses
  br label %evaluate_meta_item_dxt.exit.us.i

bb.e:                                             ; preds = %.lr.ph.split.us.i
  %i.at = load i32, ptr @hf_meta_item_calling, align 4
  %i.au = zext i16 %i.al to i32
  %i.av = tail call ptr @proto_tree_add_item(ptr noundef %.065, i32 noundef %i.at, ptr noundef %0, i32 noundef %i.au, i32 noundef %i.am, i32 noundef 0) ; 0 uses
  br label %evaluate_meta_item_dxt.exit.us.i

bb.f:                                             ; preds = %.lr.ph.split.us.i
  %i.aw = zext i16 %i.al to i32                   ; 2 uses
  %i.ax = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.aw)
  %i.ay = zext i16 %i.ax to i32
  %i.az = load i32, ptr @hf_meta_item_tlli, align 4
  %i.ba = tail call ptr @proto_tree_add_uint(ptr noundef %.065, i32 noundef %i.az, ptr noundef %0, i32 noundef %i.aw, i32 noundef 4, i32 noundef %i.ay) ; 0 uses
  br label %evaluate_meta_item_dxt.exit.us.i

bb.g:                                             ; preds = %.lr.ph.split.us.i
  %i.bb = zext i16 %i.al to i32                   ; 2 uses
  %i.bc = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.bb)
  %i.bd = load i32, ptr @hf_meta_item_tapgroupid, align 4
  %i.be = zext i16 %i.bc to i32
  %i.bf = tail call ptr @proto_tree_add_uint(ptr noundef %.065, i32 noundef %i.bd, ptr noundef %0, i32 noundef %i.bb, i32 noundef 2, i32 noundef %i.be) ; 0 uses
  br label %evaluate_meta_item_dxt.exit.us.i

bb.h:                                             ; preds = %.lr.ph.split.us.i
  %i.bg = zext i16 %i.al to i32                   ; 2 uses
  %i.bh = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.bg)
  %i.bi = load i32, ptr @hf_meta_item_remotedevid, align 4
  %i.bj = zext i16 %i.bh to i32
  %i.bk = tail call ptr @proto_tree_add_uint(ptr noundef %.065, i32 noundef %i.bi, ptr noundef %0, i32 noundef %i.bg, i32 noundef 2, i32 noundef %i.bj) ; 0 uses
  br label %evaluate_meta_item_dxt.exit.us.i

bb.i:                                             ; preds = %.lr.ph.split.us.i
  %i.bl = zext i16 %i.al to i32                   ; 2 uses
  %i.bm = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.bl)
  %i.bn = load i32, ptr @hf_meta_item_localdevid, align 4
  %i.bo = zext i16 %i.bm to i32
  %i.bp = tail call ptr @proto_tree_add_uint(ptr noundef %.065, i32 noundef %i.bn, ptr noundef %0, i32 noundef %i.bl, i32 noundef 2, i32 noundef %i.bo) ; 0 uses
  br label %evaluate_meta_item_dxt.exit.us.i

bb.j:                                             ; preds = %.lr.ph.split.us.i
  %i.bq = zext i16 %i.al to i32                   ; 2 uses
  %i.br = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bq) ; 2 uses
  %i.bs = tail call ptr @wmem_file_scope()
  %i.bt = load i32, ptr @proto_sscop, align 4
  %i.bu = tail call ptr @p_get_proto_data(ptr noundef %i.bs, ptr noundef %1, i32 noundef %i.bt, i32 noundef 0) ; 2 uses
  %.not.i.us.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.us.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bv = tail call ptr @wmem_file_scope()
  %i.bw = tail call noalias dereferenceable_or_null(8) ptr @wmem_alloc0(ptr noundef %i.bv, i64 noundef 8) #6 ; 2 uses
  %i.bx = tail call ptr @wmem_file_scope()
  %i.by = load i32, ptr @proto_sscop, align 4
  tail call void @p_add_proto_data(ptr noundef %i.bx, ptr noundef %1, i32 noundef %i.by, i32 noundef 0, ptr noundef %i.bw)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i.us.i = phi ptr [ %i.bu, %bb.j ], [ %i.bw, %bb.k ] ; 3 uses
  %i.bz = zext i8 %i.br to i32
  switch i8 %i.br, label %bb.q [
    i8 2, label %bb.p
    i8 5, label %bb.o
    i8 6, label %bb.n
    i8 3, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 noundef 0, i64 noundef 28, i1 noundef false) #5
  store i8 9, ptr %i.z, align 1
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.ca = load ptr, ptr @nbap_handle, align 8
  store ptr %i.ca, ptr %.0.i.us.i, align 8
  br label %bb.r

bb.o:                                             ; preds = %bb.l
  %i.cb = load ptr, ptr @alcap_handle, align 8
  store ptr %i.cb, ptr %.0.i.us.i, align 8
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  %i.cc = load ptr, ptr @sscf_nni_handle, align 8
  store ptr %i.cc, ptr %.0.i.us.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 noundef 0, i64 noundef 28, i1 noundef false) #5
  store i8 10, ptr %i.z, align 1
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.cd = tail call ptr @wmem_file_scope()
  %i.ce = load i32, ptr @proto_sscop, align 4
  tail call void @p_remove_proto_data(ptr noundef %i.cd, ptr noundef %1, i32 noundef %i.ce, i32 noundef 0)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %i.cf = load i32, ptr @hf_meta_item_aal5proto, align 4
  %i.cg = tail call ptr @proto_tree_add_uint(ptr noundef %.065, i32 noundef %i.cf, ptr noundef %0, i32 noundef %i.bq, i32 noundef 1, i32 noundef %i.bz) ; 0 uses
  br label %evaluate_meta_item_dxt.exit.us.i

bb.s:                                             ; preds = %.lr.ph.split.us.i
  %i.ch = load i32, ptr @hf_meta_item_deciphered, align 4
  %i.ci = zext i16 %i.al to i32
  %i.cj = tail call ptr @proto_tree_add_boolean(ptr noundef %.065, i32 noundef %i.ch, ptr noundef %0, i32 noundef %i.ci, i32 noundef 0, i64 noundef 1) ; 0 uses
  br label %evaluate_meta_item_dxt.exit.us.i

bb.t:                                             ; preds = %.lr.ph.split.us.i
  %i.ck = load i32, ptr @hf_meta_item_incomplete, align 4
  %i.cl = zext i16 %i.al to i32
  %i.cm = tail call ptr @proto_tree_add_boolean(ptr noundef %.065, i32 noundef %i.ck, ptr noundef %0, i32 noundef %i.cl, i32 noundef 0, i64 noundef 1) ; 0 uses
  br label %evaluate_meta_item_dxt.exit.us.i

bb.u:                                             ; preds = %.lr.ph.split.us.i
  %i.cn = load i32, ptr @hf_meta_item_signaling, align 4
  %i.co = zext i16 %i.al to i32
  %i.cp = tail call ptr @proto_tree_add_boolean(ptr noundef %.065, i32 noundef %i.cn, ptr noundef %0, i32 noundef %i.co, i32 noundef 0, i64 noundef 1) ; 0 uses
  br label %evaluate_meta_item_dxt.exit.us.i

bb.v:                                             ; preds = %.lr.ph.split.us.i
  %i.cq = zext i16 %i.al to i32                   ; 4 uses
  %i.cr = tail call i64 @tvb_get_ntoh64(ptr noundef %0, i32 noundef %i.cq)
  %i.cs = load i32, ptr @hf_meta_item_cell, align 4
  %i.ct = tail call ptr (ptr, i32, ptr, i32, i32, i64, ptr, ...) @proto_tree_add_uint64_format(ptr noundef %.065, i32 noundef %i.cs, ptr noundef %0, i32 noundef %i.cq, i32 noundef 8, i64 noundef %i.cr, ptr noundef @.str.46)
  %i.cu = load i32, ptr @ett_meta_cell, align 4
  %i.cv = tail call ptr @proto_item_add_subtree(ptr noundef %i.ct, i32 noundef %i.cu) ; 2 uses
  %i.cw = tail call zeroext i16 @de_gmm_rai(ptr noundef %0, ptr noundef %i.cv, ptr noundef %1, i32 noundef %i.cq, i32 noundef 8, ptr noundef null, i32 noundef 0) ; 0 uses
  %i.cx = add nuw nsw i32 %i.cq, 6
  %i.cy = tail call zeroext i16 @de_cell_id(ptr noundef %0, ptr noundef %i.cv, ptr noundef %1, i32 noundef %i.cx, i32 noundef 2, ptr noundef null, i32 noundef 0) ; 0 uses
  br label %evaluate_meta_item_dxt.exit.us.i

bb.w:                                             ; preds = %.lr.ph.split.us.i
  %i.cz = zext i16 %i.al to i32                   ; 2 uses
  %i.da = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cz)
  %i.db = load i32, ptr @hf_meta_item_rat, align 4
  %i.dc = zext i8 %i.da to i32
  %i.dd = tail call ptr @proto_tree_add_uint(ptr noundef %.065, i32 noundef %i.db, ptr noundef %0, i32 noundef %i.cz, i32 noundef 1, i32 noundef %i.dc) ; 0 uses
  br label %evaluate_meta_item_dxt.exit.us.i

bb.x:                                             ; preds = %.lr.ph.split.us.i
  %i.de = load i32, ptr @hf_meta_item_apn, align 4
  %i.df = zext i16 %i.al to i32
  %i.dg = tail call ptr @proto_tree_add_item(ptr noundef %.065, i32 noundef %i.de, ptr noundef %0, i32 noundef %i.df, i32 noundef %i.am, i32 noundef 0) ; 0 uses
  br label %evaluate_meta_item_dxt.exit.us.i

bb.y:                                             ; preds = %.lr.ph.split.us.i
  %i.dh = load i32, ptr @hf_meta_item_imei_digits, align 4
  %i.di = zext i16 %i.al to i32                   ; 2 uses
end_hunk_0
begin_hunk_1_@dissect_meta:bb.a
  %i.dr = load i32, ptr @ett_meta_imsi, align 4
  %i.ds = tail call ptr @proto_item_add_subtree(ptr noundef %i.dq, i32 noundef %i.dr)
  %i.dt = load i32, ptr @hf_meta_item_imsi_value, align 4
  %i.du = tail call ptr @proto_tree_add_item(ptr noundef %i.ds, i32 noundef %i.dt, ptr noundef %0, i32 noundef %i.dp, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  br label %evaluate_meta_item_dxt.exit.us.i

bb.aa:                                            ; preds = %.lr.ph.split.us.i
  %i.dv = zext i16 %i.al to i32                   ; 2 uses
  %i.dw = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dv)
  %i.dx = load i32, ptr @hf_meta_item_nsapi, align 4
  %i.dy = zext i8 %i.dw to i32
  %i.dz = tail call ptr @proto_tree_add_uint(ptr noundef %.065, i32 noundef %i.dx, ptr noundef %0, i32 noundef %i.dv, i32 noundef 1, i32 noundef %i.dy) ; 0 uses
  br label %evaluate_meta_item_dxt.exit.us.i

bb.ab:                                            ; preds = %.lr.ph.split.us.i
  %i.ea = zext i16 %i.al to i32                   ; 2 uses
  %i.eb = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.ea) ; 2 uses
  store i16 %i.eb, ptr %i.aa, align 2
  %i.ec = load i32, ptr @hf_meta_item_phylinkid, align 4
  %i.ed = zext i16 %i.eb to i32
  %i.ee = tail call ptr @proto_tree_add_uint(ptr noundef %.065, i32 noundef %i.ec, ptr noundef %0, i32 noundef %i.ea, i32 noundef 2, i32 noundef %i.ed) ; 0 uses
  br label %evaluate_meta_item_dxt.exit.us.i

bb.ac:                                            ; preds = %.lr.ph.split.us.i
  %i.ef = zext i16 %i.al to i32                   ; 2 uses
  %i.eg = tail call i64 @tvb_get_letoh64(ptr noundef %0, i32 noundef %i.ef)
  %i.eh = load i32, ptr @hf_meta_item_ts, align 4
  %i.ei = tail call ptr @proto_tree_add_uint64(ptr noundef %.065, i32 noundef %i.eh, ptr noundef %0, i32 noundef %i.ef, i32 noundef 8, i64 noundef %i.eg) ; 0 uses
  br label %evaluate_meta_item_dxt.exit.us.i

bb.ad:                                            ; preds = %.lr.ph.split.us.i
  %i.ej = zext i16 %i.al to i32                   ; 2 uses
  %i.ek = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ej) ; 2 uses
  %i.el = zext i8 %i.ek to i32
  %i.em = icmp eq i8 %i.ek, 0
  %i.en = zext i1 %i.em to i32
  store i32 %i.en, ptr %i.y, align 4
  %i.eo = load i32, ptr @hf_meta_item_direction, align 4
  %i.ep = tail call ptr @proto_tree_add_uint(ptr noundef %.065, i32 noundef %i.eo, ptr noundef %0, i32 noundef %i.ej, i32 noundef 1, i32 noundef %i.el) ; 0 uses
  br label %evaluate_meta_item_dxt.exit.us.i

bb.ae:                                            ; preds = %.lr.ph.split.us.i
  %i.eq = zext i16 %i.ae to i32
  %i.er = load i32, ptr @hf_meta_item, align 4
  %i.es = zext i16 %i.al to i32                   ; 4 uses
  %i.et = add nsw i32 %i.es, -4                   ; 2 uses
  %i.eu = tail call ptr @proto_tree_add_item(ptr noundef %.065, i32 noundef %i.er, ptr noundef %0, i32 noundef %i.et, i32 noundef %i.ap, i32 noundef 0)
  %i.ev = load i32, ptr @ett_meta_item, align 4
  %i.ew = tail call ptr @proto_item_add_subtree(ptr noundef %i.eu, i32 noundef %i.ev) ; 4 uses
  %i.ex = load i32, ptr @hf_meta_item_id, align 4
  %i.ey = tail call ptr @proto_tree_add_uint(ptr noundef %i.ew, i32 noundef %i.ex, ptr noundef %0, i32 noundef %i.et, i32 noundef 2, i32 noundef %i.eq) ; 0 uses
  %i.ez = load i32, ptr @hf_meta_item_type, align 4
  %i.fa = add nsw i32 %i.es, -2
  %i.fb = zext i8 %i.ah to i32
  %i.fc = tail call ptr @proto_tree_add_uint(ptr noundef %i.ew, i32 noundef %i.ez, ptr noundef %0, i32 noundef %i.fa, i32 noundef 1, i32 noundef %i.fb) ; 0 uses
  %i.fd = load i32, ptr @hf_meta_item_len, align 4
  %i.fe = add nsw i32 %i.es, -1
  %i.ff = tail call ptr @proto_tree_add_uint(ptr noundef %i.ew, i32 noundef %i.fd, ptr noundef %0, i32 noundef %i.fe, i32 noundef 1, i32 noundef %i.am) ; 0 uses
  %.not163.i.us.i = icmp eq i8 %i.ak, 0
  br i1 %.not163.i.us.i, label %evaluate_meta_item_dxt.exit.us.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fg = load i32, ptr @hf_meta_item_data, align 4
  %i.fh = tail call ptr @proto_tree_add_item(ptr noundef %i.ew, i32 noundef %i.fg, ptr noundef %0, i32 noundef %i.es, i32 noundef %i.am, i32 noundef 0) ; 0 uses
  br label %evaluate_meta_item_dxt.exit.us.i

evaluate_meta_item_dxt.exit.us.i:                 ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.fi = add i32 %i.ap, %.031.us.i               ; 3 uses
  %i.fj = icmp slt i32 %i.fi, %.pre-phi
  br i1 %i.fj, label %.lr.ph.split.us.i, label %evaluate_meta_items.exit, !llvm.loop !6

.lr.ph.split.us32.i:                              ; preds = %.lr.ph.i, %evaluate_meta_item_dxt.exit.us34.i
  %.031.us33.i = phi i32 [ %i.hi, %evaluate_meta_item_dxt.exit.us34.i ], [ 0, %.lr.ph.i ] ; 5 uses
  %i.fk = trunc i32 %.031.us33.i to i16
  %i.fl = add i32 %.031.us33.i, 8
  %i.fm = and i32 %i.fl, 65532
  %i.fn = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.fm) ; 2 uses
  %i.fo = add i32 %.031.us33.i, 10
  %i.fp = and i32 %i.fo, 65534
  %i.fq = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.fp)
  %i.fr = add i32 %.031.us33.i, 11
  %i.fs = and i32 %i.fr, 65535
  %i.ft = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.fs) ; 2 uses
  %i.fu = add i16 %i.fk, 12                       ; 5 uses
  %i.fv = zext i8 %i.ft to i32                    ; 3 uses
  %i.fw = add nuw nsw i32 %i.fv, 3
  %i.fx = and i32 %i.fw, 508
  %i.fy = add nuw nsw i32 %i.fx, 4                ; 2 uses
  switch i16 %i.fn, label %bb.ak [
    i16 1, label %bb.aj
    i16 6, label %bb.ai
    i16 2, label %bb.ah
    i16 3, label %bb.ag
  ]

bb.ag:                                            ; preds = %.lr.ph.split.us32.i
  %i.fz = load i32, ptr @hf_meta_item_incomplete, align 4
  %i.ga = zext i16 %i.fu to i32
  %i.gb = tail call ptr @proto_tree_add_boolean(ptr noundef %.065, i32 noundef %i.fz, ptr noundef %0, i32 noundef %i.ga, i32 noundef 0, i64 noundef 1) ; 0 uses
  br label %evaluate_meta_item_dxt.exit.us34.i

bb.ah:                                            ; preds = %.lr.ph.split.us32.i
  %i.gc = load i32, ptr @hf_meta_item_signaling, align 4
  %i.gd = zext i16 %i.fu to i32
  %i.ge = tail call ptr @proto_tree_add_boolean(ptr noundef %.065, i32 noundef %i.gc, ptr noundef %0, i32 noundef %i.gd, i32 noundef 0, i64 noundef 1) ; 0 uses
  br label %evaluate_meta_item_dxt.exit.us34.i

bb.ai:                                            ; preds = %.lr.ph.split.us32.i
  %i.gf = zext i16 %i.fu to i32                   ; 2 uses
  %i.gg = tail call i64 @tvb_get_letoh64(ptr noundef %0, i32 noundef %i.gf)
  %i.gh = load i32, ptr @hf_meta_item_ts, align 4
  %i.gi = tail call ptr @proto_tree_add_uint64(ptr noundef %.065, i32 noundef %i.gh, ptr noundef %0, i32 noundef %i.gf, i32 noundef 8, i64 noundef %i.gg) ; 0 uses
  br label %evaluate_meta_item_dxt.exit.us34.i

bb.aj:                                            ; preds = %.lr.ph.split.us32.i
  %i.gj = zext i16 %i.fu to i32                   ; 2 uses
  %i.gk = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.gj) ; 2 uses
  %i.gl = zext i8 %i.gk to i32
  %i.gm = icmp eq i8 %i.gk, 0
  %i.gn = zext i1 %i.gm to i32
  store i32 %i.gn, ptr %i.y, align 4
  %i.go = load i32, ptr @hf_meta_item_direction, align 4
  %i.gp = tail call ptr @proto_tree_add_uint(ptr noundef %.065, i32 noundef %i.go, ptr noundef %0, i32 noundef %i.gj, i32 noundef 1, i32 noundef %i.gl) ; 0 uses
  br label %evaluate_meta_item_dxt.exit.us34.i

bb.ak:                                            ; preds = %.lr.ph.split.us32.i
  %i.gq = zext i16 %i.fn to i32
  %i.gr = load i32, ptr @hf_meta_item, align 4
  %i.gs = zext i16 %i.fu to i32                   ; 4 uses
  %i.gt = add nsw i32 %i.gs, -4                   ; 2 uses
  %i.gu = tail call ptr @proto_tree_add_item(ptr noundef %.065, i32 noundef %i.gr, ptr noundef %0, i32 noundef %i.gt, i32 noundef %i.fy, i32 noundef 0)
  %i.gv = load i32, ptr @ett_meta_item, align 4
  %i.gw = tail call ptr @proto_item_add_subtree(ptr noundef %i.gu, i32 noundef %i.gv) ; 4 uses
  %i.gx = load i32, ptr @hf_meta_item_id, align 4
  %i.gy = tail call ptr @proto_tree_add_uint(ptr noundef %i.gw, i32 noundef %i.gx, ptr noundef %0, i32 noundef %i.gt, i32 noundef 2, i32 noundef %i.gq) ; 0 uses
  %i.gz = load i32, ptr @hf_meta_item_type, align 4
  %i.ha = add nsw i32 %i.gs, -2
  %i.hb = zext i8 %i.fq to i32
  %i.hc = tail call ptr @proto_tree_add_uint(ptr noundef %i.gw, i32 noundef %i.gz, ptr noundef %0, i32 noundef %i.ha, i32 noundef 1, i32 noundef %i.hb) ; 0 uses
  %i.hd = load i32, ptr @hf_meta_item_len, align 4
  %i.he = add nsw i32 %i.gs, -1
  %i.hf = tail call ptr @proto_tree_add_uint(ptr noundef %i.gw, i32 noundef %i.hd, ptr noundef %0, i32 noundef %i.he, i32 noundef 1, i32 noundef %i.fv) ; 0 uses
  %.not.i29.us.i = icmp eq i8 %i.ft, 0
  br i1 %.not.i29.us.i, label %evaluate_meta_item_dxt.exit.us34.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hg = load i32, ptr @hf_meta_item_data, align 4
  %i.hh = tail call ptr @proto_tree_add_item(ptr noundef %i.gw, i32 noundef %i.hg, ptr noundef %0, i32 noundef %i.gs, i32 noundef %i.fv, i32 noundef 0) ; 0 uses
  br label %evaluate_meta_item_dxt.exit.us34.i

evaluate_meta_item_dxt.exit.us34.i:               ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %i.hi = add i32 %i.fy, %.031.us33.i             ; 3 uses
  %i.hj = icmp slt i32 %i.hi, %.pre-phi
  br i1 %i.hj, label %.lr.ph.split.us32.i, label %evaluate_meta_items.exit, !llvm.loop !6

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %evaluate_meta_item_dxt.exit.i
  %.031.i = phi i32 [ %i.iq, %evaluate_meta_item_dxt.exit.i ], [ 0, %.lr.ph.i ] ; 5 uses
  %i.hk = add i32 %.031.i, 8
  %i.hl = and i32 %i.hk, 65532
  %i.hm = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.hl)
  %i.hn = add i32 %.031.i, 10
  %i.ho = and i32 %i.hn, 65534
  %i.hp = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ho)
  %i.hq = add i32 %.031.i, 11
  %i.hr = and i32 %i.hq, 65535
  %i.hs = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.hr) ; 2 uses
  %i.ht = add i32 %.031.i, 12
  %i.hu = zext i8 %i.hs to i32                    ; 3 uses
  %i.hv = add nuw nsw i32 %i.hu, 3
  %i.hw = and i32 %i.hv, 508
  %i.hx = add nuw nsw i32 %i.hw, 4                ; 2 uses
  %i.hy = load i32, ptr @hf_meta_item, align 4
  %i.hz = and i32 %i.ht, 65532                    ; 4 uses
  %i.ia = add nsw i32 %i.hz, -4                   ; 2 uses
  %i.ib = tail call ptr @proto_tree_add_item(ptr noundef %.065, i32 noundef %i.hy, ptr noundef %0, i32 noundef %i.ia, i32 noundef %i.hx, i32 noundef 0)
  %i.ic = load i32, ptr @ett_meta_item, align 4
  %i.id = tail call ptr @proto_item_add_subtree(ptr noundef %i.ib, i32 noundef %i.ic) ; 4 uses
  %i.ie = load i32, ptr @hf_meta_item_id, align 4
  %i.if = zext i16 %i.hm to i32
  %i.ig = tail call ptr @proto_tree_add_uint(ptr noundef %i.id, i32 noundef %i.ie, ptr noundef %0, i32 noundef %i.ia, i32 noundef 2, i32 noundef %i.if) ; 0 uses
  %i.ih = load i32, ptr @hf_meta_item_type, align 4
  %i.ii = add nsw i32 %i.hz, -2
  %i.ij = zext i8 %i.hp to i32
  %i.ik = tail call ptr @proto_tree_add_uint(ptr noundef %i.id, i32 noundef %i.ih, ptr noundef %0, i32 noundef %i.ii, i32 noundef 1, i32 noundef %i.ij) ; 0 uses
  %i.il = load i32, ptr @hf_meta_item_len, align 4
  %i.im = add nsw i32 %i.hz, -1
  %i.in = tail call ptr @proto_tree_add_uint(ptr noundef %i.id, i32 noundef %i.il, ptr noundef %0, i32 noundef %i.im, i32 noundef 1, i32 noundef %i.hu) ; 0 uses
  %.not.i30.i = icmp eq i8 %i.hs, 0
  br i1 %.not.i30.i, label %evaluate_meta_item_dxt.exit.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.split.i
  %i.io = load i32, ptr @hf_meta_item_data, align 4
  %i.ip = tail call ptr @proto_tree_add_item(ptr noundef %i.id, i32 noundef %i.io, ptr noundef %0, i32 noundef %i.hz, i32 noundef %i.hu, i32 noundef 0) ; 0 uses
  br label %evaluate_meta_item_dxt.exit.i

evaluate_meta_item_dxt.exit.i:                    ; preds = %bb.am, %.lr.ph.split.i
  %i.iq = add i32 %i.hx, %.031.i                  ; 3 uses
  %i.ir = icmp slt i32 %i.iq, %.pre-phi
  br i1 %i.ir, label %.lr.ph.split.i, label %evaluate_meta_items.exit, !llvm.loop !6

evaluate_meta_items.exit:                         ; preds = %evaluate_meta_item_dxt.exit.us34.i, %evaluate_meta_item_dxt.exit.us.i, %evaluate_meta_item_dxt.exit.i, %bb.c
  %.0.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.fi, %evaluate_meta_item_dxt.exit.us.i ], [ %i.iq, %evaluate_meta_item_dxt.exit.i ], [ %i.hi, %evaluate_meta_item_dxt.exit.us34.i ]
  %.not70 = icmp eq i32 %.0.lcssa.i, %.pre-phi
  br i1 %.not70, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %evaluate_meta_items.exit
  %i.is = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %.064, ptr noundef @ei_meta_invalid_header) ; 0 uses
  br label %bb.az

bb.ao:                                            ; preds = %evaluate_meta_items.exit
  %cond = icmp eq i16 %i.d, 2
  br i1 %cond, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %bb.ao
  switch i16 %i.f, label %bb.aw [
    i16 1, label %bb.aq
    i16 36, label %bb.ar
    i16 82, label %bb.as
    i16 41, label %bb.at
    i16 76, label %bb.au
    i16 49, label %bb.av
    i16 106, label %bb.ax
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.it = load ptr, ptr @ethwithoutfcs_handle, align 8
  br label %.thread

bb.ar:                                            ; preds = %bb.ap
  %i.iu = load ptr, ptr @ethwithfcs_handle, align 8
  br label %.thread

bb.as:                                            ; preds = %bb.ap
  %i.iv = load ptr, ptr @fphint_handle, align 8
  br label %.thread

bb.at:                                            ; preds = %bb.ap
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 noundef 0, i64 noundef 28, i1 noundef false) #5
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 7, ptr %i.iw, align 4
  %i.ix = load ptr, ptr @atm_untrunc_handle, align 8
  br label %.thread

bb.au:                                            ; preds = %bb.ap
  %i.iy = add nuw nsw i32 %.pre-phi, 8            ; 2 uses
  %i.iz = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.iy)
  %i.ja = add nuw nsw i32 %.pre-phi, 12
  %i.jb = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.ja) ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 noundef 0, i64 noundef 28, i1 noundef false) #5
  %i.jc = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 2, ptr %i.jc, align 4
  %i.jd = lshr i32 %i.jb, 20
  %i.je = trunc nuw nsw i32 %i.jd to i16
  %i.jf = and i16 %i.je, 255
  %i.jg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.jf, ptr %i.jg, align 4
  %i.jh = lshr i32 %i.jb, 4
  %i.ji = trunc i32 %i.jh to i16
  %i.jj = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.ji, ptr %i.jj, align 2
  %i.jk = trunc i32 %i.iz to i8
  %i.jl = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 %i.jk, ptr %i.jl, align 4
  %i.jm = getelementptr inbounds nuw i8, ptr %4, i64 5
  store i8 8, ptr %i.jm, align 1
  %i.jn = load ptr, ptr @atm_untrunc_handle, align 8
  br label %.thread

bb.av:                                            ; preds = %bb.ap
  %i.jo = add nuw nsw i32 %.pre-phi, 8
  %i.jp = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.jo) ; 2 uses
  %i.jq = add nuw nsw i32 %.pre-phi, 4
  %i.jr = lshr i32 %i.jp, 20
  %i.js = trunc nuw nsw i32 %i.jr to i16
  %i.jt = and i16 %i.js, 255
  %i.ju = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %i.jt, ptr %i.ju, align 4
  %i.jv = lshr i32 %i.jp, 4
  %i.jw = trunc i32 %i.jv to i16
  %i.jx = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.jw, ptr %i.jx, align 2
  %i.jy = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 4, ptr %i.jy, align 4
  %i.jz = load ptr, ptr @atm_untrunc_handle, align 8
  br label %.thread

bb.aw:                                            ; preds = %bb.ap
  %i.ka = zext i16 %i.f to i32
  %i.kb = load ptr, ptr @meta_dissector_table, align 8
  %i.kc = tail call ptr @dissector_get_uint_handle(ptr noundef %i.kb, i32 noundef %i.ka)
  br label %.thread

bb.ax:                                            ; preds = %bb.ap
  %i.kd = load ptr, ptr @mtp2_handle, align 8     ; 2 uses
  %i.ke = add nuw nsw i32 %.pre-phi, 8
  %i.kf = add nuw nsw i32 %.pre-phi, 10
  %i.kg = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.kf)
  %i.kh = tail call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.ke, i32 noundef %i.kg) ; 2 uses
  %.not71 = icmp eq ptr %i.kh, null
  br i1 %.not71, label %.thread, label %bb.ay

.thread:                                          ; preds = %bb.ao, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.aw, %bb.ax
  %.081 = phi ptr [ null, %bb.ax ], [ null, %bb.ao ], [ %4, %bb.av ], [ %4, %bb.au ], [ %4, %bb.at ], [ null, %bb.as ], [ null, %bb.ar ], [ null, %bb.aq ], [ null, %bb.aw ]
  %.06279 = phi ptr [ %i.kd, %bb.ax ], [ %i.a, %bb.ao ], [ %i.jz, %bb.av ], [ %i.jn, %bb.au ], [ %i.ix, %bb.at ], [ %i.iv, %bb.as ], [ %i.iu, %bb.ar ], [ %i.it, %bb.aq ], [ %i.kc, %bb.aw ]
  %.06677 = phi i32 [ %.pre-phi, %bb.ax ], [ %.pre-phi, %bb.ao ], [ %i.jq, %bb.av ], [ %i.iy, %bb.au ], [ %.pre-phi, %bb.at ], [ %.pre-phi, %bb.as ], [ %.pre-phi, %bb.ar ], [ %.pre-phi, %bb.aq ], [ %.pre-phi, %bb.aw ]
  %i.ki = add nuw nsw i32 %.06677, 8
  %i.kj = tail call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.ki)
  br label %bb.ay

bb.ay:                                            ; preds = %.thread, %bb.ax
  %.080 = phi ptr [ null, %bb.ax ], [ %.081, %.thread ]
  %.06278 = phi ptr [ %i.kd, %bb.ax ], [ %.06279, %.thread ]
  %.1 = phi ptr [ %i.kh, %bb.ax ], [ %i.kj, %.thread ]
  %i.kk = call i32 @call_dissector_with_data(ptr noundef %.06278, ptr noundef %.1, ptr noundef %1, ptr noundef %2, ptr noundef %.080) ; 0 uses
  %i.kl = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.an
  %.067 = phi i32 [ %i.kl, %bb.ay ], [ 8, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  ret i32 %.067
}

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector_table(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_meta() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_get_id_by_filter_name(ptr noundef @.str.68)
  store i32 %i.a, ptr @proto_sscop, align 4
  %i.b = tail call ptr @find_dissector(ptr noundef @.str.69)
  store ptr %i.b, ptr @data_handle, align 8
  %i.c = load i32, ptr @proto_meta, align 4
  %i.d = tail call ptr @find_dissector_add_dependency(ptr noundef @.str.70, i32 noundef %i.c)
  store ptr %i.d, ptr @alcap_handle, align 8
  %i.e = load i32, ptr @proto_meta, align 4
  %i.f = tail call ptr @find_dissector_add_dependency(ptr noundef @.str.71, i32 noundef %i.e)
  store ptr %i.f, ptr @atm_untrunc_handle, align 8
  %i.g = load i32, ptr @proto_meta, align 4
  %i.h = tail call ptr @find_dissector_add_dependency(ptr noundef @.str.72, i32 noundef %i.g)
  store ptr %i.h, ptr @nbap_handle, align 8
  %i.i = load i32, ptr @proto_meta, align 4
  %i.j = tail call ptr @find_dissector_add_dependency(ptr noundef @.str.73, i32 noundef %i.i)
  store ptr %i.j, ptr @sscf_nni_handle, align 8
  %i.k = load i32, ptr @proto_meta, align 4
  %i.l = tail call ptr @find_dissector_add_dependency(ptr noundef @.str.74, i32 noundef %i.k)
  store ptr %i.l, ptr @ethwithfcs_handle, align 8
  %i.m = load i32, ptr @proto_meta, align 4
  %i.n = tail call ptr @find_dissector_add_dependency(ptr noundef @.str.75, i32 noundef %i.m)
  store ptr %i.n, ptr @ethwithoutfcs_handle, align 8
  %i.o = load i32, ptr @proto_meta, align 4
  %i.p = tail call ptr @find_dissector_add_dependency(ptr noundef @.str.76, i32 noundef %i.o)
  store ptr %i.p, ptr @fphint_handle, align 8
  %i.q = load i32, ptr @proto_meta, align 4
  %i.r = tail call ptr @find_dissector_add_dependency(ptr noundef @.str.77, i32 noundef %i.q)
  store ptr %i.r, ptr @mtp2_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_get_id_by_filter_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @_try_val_to_str_ext_init(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_letohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @dissector_get_uint_handle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector_with_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i64 @tvb_get_letoh64(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint64(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i64 @tvb_get_ntoh64(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint64_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @de_gmm_rai(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @de_cell_id(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @p_get_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc0(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @p_add_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @p_remove_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }
attributes #6 = { allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
end_hunk_1
