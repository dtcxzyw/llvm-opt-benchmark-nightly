Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-corosync-totemnet?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hf_register_info = type { ptr, %struct._header_field_info }
%struct._header_field_info = type { ptr, ptr, i32, i32, ptr, i64, ptr, i32, i32, i32, i32, ptr }
%struct._sober128_prng = type { [17 x i64], [17 x i64], i64, i64, i32, i32, i32 }

@proto_register_corosync_totemnet.hf = internal global [4 x %struct.hf_register_info] [%struct.hf_register_info { ptr @hf_corosync_totemnet_security_header_hash_digest, %struct._header_field_info { ptr @.str, ptr @.str.1, i32 30, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_corosync_totemnet_security_header_salt, %struct._header_field_info { ptr @.str.2, ptr @.str.3, i32 30, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_corosync_totemnet_security_crypto_type, %struct._header_field_info { ptr @.str.4, ptr @.str.5, i32 4, i32 1, ptr @corosync_totemnet_crypto_type, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_corosync_totemnet_security_crypto_key, %struct._header_field_info { ptr @.str.6, ptr @.str.7, i32 26, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }], align 16
@hf_corosync_totemnet_security_header_hash_digest = internal global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Hash digest\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"corosync_totemnet.security_header_hash_digest\00", align 1
@hf_corosync_totemnet_security_header_salt = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Salt\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"corosync_totemnet.security_header_salt\00", align 1
@hf_corosync_totemnet_security_crypto_type = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Cryptographic Type\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"corosync_totemnet.security_crypto_type\00", align 1
@hf_corosync_totemnet_security_crypto_key = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Private Key for decryption\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"corosync_totemnet.security_crypto_key\00", align 1
@proto_register_corosync_totemnet.ett_corosync_totemnet = internal global [1 x ptr] [ptr @ett_corosync_totemnet_security_header], align 8
@ett_corosync_totemnet_security_header = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"Totemnet Layer of Corosync Cluster Engine\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"COROSYNC/TOTEMNET\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"corosync_totemnet\00", align 1
@proto_corosync_totemnet = internal unnamed_addr global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"private_keys\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Private keys\00", align 1
@.str.13 = private unnamed_addr constant [68 x i8] c"Semicolon-separated  list of keys for decryption(e.g. key1;key2;...\00", align 1
@corosync_totemnet_private_keys = internal global ptr null, align 8
@corosync_totemnet_handle = internal unnamed_addr global ptr null, align 8
@proto_reg_handoff_corosync_totemnet.initialized = internal unnamed_addr global i1 false, align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"corosync_totemsrp\00", align 1
@corosync_totemsrp_handle = internal unnamed_addr global ptr null, align 8
@.str.15 = private unnamed_addr constant [9 x i8] c"udp.port\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"5404-5405\00", align 1
@corosync_totemnet_private_keys_list = internal unnamed_addr global ptr null, align 8
@.str.17 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"SOBER\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"NSS\00", align 1
@corosync_totemnet_crypto_type = internal constant [3 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.18 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.19 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@dissect_corosynec_totemnet.last_key_index = internal unnamed_addr global i32 -1, align 4
@dissect_corosynec_totemnet.last_check_crypt_type_index = internal unnamed_addr global i32 0, align 4
@__const.dissect_corosynec_totemnet.check_crypt_type_list = private unnamed_addr constant [2 x i8] c"\00\01", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Decrypted Data\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_corosync_totemnet() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef @.str.8, ptr noundef @.str.9, ptr noundef @.str.10) ; 2 uses
  store i32 %i.a, ptr @proto_corosync_totemnet, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef @proto_register_corosync_totemnet.hf, i32 noundef 4)
  tail call void @proto_register_subtree_array(ptr noundef @proto_register_corosync_totemnet.ett_corosync_totemnet, i32 noundef 1)
  %i.b = load i32, ptr @proto_corosync_totemnet, align 4
  %i.c = tail call ptr @prefs_register_protocol(i32 noundef %i.b, ptr noundef @proto_reg_handoff_corosync_totemnet)
  tail call void @prefs_register_string_preference(ptr noundef %i.c, ptr noundef @.str.11, ptr noundef @.str.12, ptr noundef @.str.13, ptr noundef @corosync_totemnet_private_keys)
  tail call void @register_shutdown_routine(ptr noundef @corosync_totemnet_shutdown)
  %i.d = load i32, ptr @proto_corosync_totemnet, align 4
  %i.e = tail call ptr @register_dissector(ptr noundef @.str.10, ptr noundef @dissect_corosynec_totemnet, i32 noundef %i.d)
  store ptr %i.e, ptr @corosync_totemnet_handle, align 8
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
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_corosync_totemnet() #0 {
bb.a:
  %.b = load i1, ptr @proto_reg_handoff_corosync_totemnet.initialized, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @proto_corosync_totemnet, align 4
  %i.b = tail call ptr @find_dissector_add_dependency(ptr noundef @.str.14, i32 noundef %i.a)
  store ptr %i.b, ptr @corosync_totemsrp_handle, align 8
  %i.c = load ptr, ptr @corosync_totemnet_handle, align 8
  tail call void @dissector_add_uint_range_with_preference(ptr noundef @.str.15, ptr noundef @.str.16, ptr noundef %i.c)
  store i1 true, ptr @proto_reg_handoff_corosync_totemnet.initialized, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr @corosync_totemnet_private_keys_list, align 8
  tail call void @g_strfreev(ptr noundef %i.d)
  %i.e = load ptr, ptr @corosync_totemnet_private_keys, align 8
  %i.f = tail call ptr @g_strsplit(ptr noundef %i.e, ptr noundef @.str.17, i32 noundef 0)
  store ptr %i.f, ptr @corosync_totemnet_private_keys_list, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_string_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @register_shutdown_routine(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @corosync_totemnet_shutdown() #0 {
bb.a:
  %i.a = load ptr, ptr @corosync_totemnet_private_keys_list, align 8
  tail call void @g_strfreev(ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_corosynec_totemnet(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load ptr, ptr @corosync_totemnet_private_keys_list, align 8 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @dissect_corosynec_totemnet.last_key_index, align 4 ; 2 uses
  %.not33 = icmp eq i32 %i.b, -1
  br i1 %.not33, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @dissect_corosynec_totemnet.last_check_crypt_type_index, align 4
  %4 = zext nneg i32 %i.c to i64
  %5 = getelementptr i8, ptr @__const.dissect_corosynec_totemnet.check_crypt_type_list, i64 %4
  %6 = load i8, ptr %5, align 1, !range !8, !noundef !9
  %7 = trunc nuw i8 %6 to i1
  %i.d = sext i32 %i.b to i64
  %i.e = getelementptr [8 x i8], ptr %i.a, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call fastcc i32 @dissect_corosynec_totemnet_with_decryption(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %7, ptr noundef %i.f) ; 2 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %.critedge.thread

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr @dissect_corosynec_totemnet.last_key_index, align 4
  %.pre = load ptr, ptr @corosync_totemnet_private_keys_list, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.i = phi ptr [ %.pre, %bb.d ], [ %i.a, %bb.b ]
  %i.j = load ptr, ptr %i.i, align 8
  %.not3446 = icmp eq ptr %i.j, null
  br i1 %.not3446, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.h
  %i.k = phi i64 [ %i.t, %bb.h ], [ 0, %bb.e ]
  %.02647 = phi i32 [ %i.r, %bb.h ], [ 0, %bb.e ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.preheader ] ; 4 uses
  %8 = getelementptr i8, ptr @__const.dissect_corosynec_totemnet.check_crypt_type_list, i64 %indvars.iv
  %9 = load i8, ptr %8, align 1, !range !8, !noundef !9
  %10 = trunc nuw i8 %9 to i1
  %i.l = load ptr, ptr @corosync_totemnet_private_keys_list, align 8
  %i.m = getelementptr [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call fastcc i32 @dissect_corosynec_totemnet_with_decryption(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %10, ptr noundef %i.n) ; 3 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  %11 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %.02647, ptr @dissect_corosynec_totemnet.last_key_index, align 4
  store i32 %11, ptr @dissect_corosynec_totemnet.last_check_crypt_type_index, align 4
  br label %.critedge.thread

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %12 = trunc nuw nsw i64 %indvars.iv to i32
  %i.q = or i32 %i.o, %12
  %or.cond = icmp eq i32 %i.q, 0
  br i1 %or.cond, label %bb.f, label %bb.h, !llvm.loop !6

bb.h:                                             ; preds = %bb.g
  %i.r = add i32 %.02647, 1                       ; 2 uses
  %i.s = load ptr, ptr @corosync_totemnet_private_keys_list, align 8
  %i.t = sext i32 %i.r to i64                     ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8
  %.not34 = icmp eq ptr %i.v, null
  br i1 %.not34, label %.critedge, label %.preheader, !llvm.loop !7

.critedge:                                        ; preds = %bb.h, %bb.e, %bb.a
  %i.w = load ptr, ptr @corosync_totemsrp_handle, align 8
  %i.x = tail call i32 @call_dissector(ptr noundef %i.w, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.c, %.thread, %.critedge
  %.7 = phi i32 [ %i.x, %.critedge ], [ %i.g, %bb.c ], [ %i.o, %.thread ]
  ret i32 %.7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint_range_with_preference(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @g_strfreev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_strsplit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_corosynec_totemnet_with_decryption(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 7 uses
  %5 = alloca %struct._sober128_prng, align 8     ; 6 uses
  %6 = alloca %struct._sober128_prng, align 8     ; 6 uses
  %i.b = alloca [20 x i8], align 16               ; 5 uses
  %i.c = alloca [256 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.f = tail call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %.neg = sext i1 %3 to i32
  %i.g = add i32 %i.f, %.neg                      ; 6 uses
  %i.h = icmp slt i32 %i.g, 36
  br i1 %i.h, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %1, i64 416
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = sext i32 %i.f to i64
  %i.l = tail call ptr @tvb_memdup(ptr noundef %i.j, ptr noundef %0, i32 noundef 0, i64 noundef %i.k) ; 6 uses
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = zext nneg i32 %i.g to i64
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr i8, ptr %i.l, i64 20       ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 noundef 0, i64 noundef 256, i1 noundef false) #5
  %i.q = tail call i64 @strlen(ptr noundef %4) #6
  %i.r = add i64 %i.q, 4
  %i.s = and i64 %i.r, 252                        ; 2 uses
  %i.t = call i64 @g_strlcpy(ptr noundef nonnull %i.c, ptr noundef %4, i64 noundef %i.s) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 noundef 0, i64 noundef 48, i1 noundef false) #5
  %i.u = call i32 @sober128_start(ptr noundef nonnull %5) ; 0 uses
  %i.v = call i32 @sober128_add_entropy(ptr noundef nonnull %i.c, i64 noundef %i.s, ptr noundef nonnull %5) ; 0 uses
  %i.w = call i32 @sober128_add_entropy(ptr noundef %i.p, i64 noundef 16, ptr noundef nonnull %5) ; 0 uses
  %i.x = call i64 @sober128_read(ptr noundef nonnull %i.a, i64 noundef 48, ptr noundef nonnull %5) ; 0 uses
  %i.y = call i32 @sober128_start(ptr noundef nonnull %6) ; 0 uses
  %i.z = call i32 @sober128_add_entropy(ptr noundef nonnull %i.e, i64 noundef 16, ptr noundef nonnull %6) ; 0 uses
  %i.aa = call i32 @sober128_add_entropy(ptr noundef nonnull %i.a, i64 noundef 16, ptr noundef nonnull %6) ; 0 uses
  %i.ab = add nsw i32 %i.g, -20
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = call i32 @ws_hmac_buffer(i32 noundef 2, ptr noundef nonnull %i.b, ptr noundef %i.p, i64 noundef %i.ac, ptr noundef nonnull %i.d, i64 noundef 16)
  %.not43 = icmp eq i32 %i.ad, 0
  br i1 %.not43, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.ae = load i128, ptr %i.b, align 16
  %i.af = load i128, ptr %i.l, align 1
  %i.ag = xor i128 %i.ae, %i.af
  %i.ah = getelementptr i8, ptr %i.b, i64 16
  %i.ai = getelementptr i8, ptr %i.l, i64 16
  %i.aj = load i32, ptr %i.ah, align 16
  %i.ak = load i32, ptr %i.ai, align 1
  %i.al = zext i32 %i.aj to i128
  %i.am = zext i32 %i.ak to i128
  %i.an = xor i128 %i.al, %i.am
  %i.ao = or i128 %i.ag, %i.an
  %i.ap = icmp ne i128 %i.ao, 0
  %i.aq = zext i1 %i.ap to i32
  %.not44 = icmp eq i32 %i.aq, 0
  br i1 %.not44, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr i8, ptr %i.l, i64 36
  %i.as = add nsw i32 %i.g, -36                   ; 2 uses
  %i.at = zext nneg i32 %i.as to i64
  %i.au = call i64 @sober128_read(ptr noundef %i.ar, i64 noundef %i.at, ptr noundef nonnull %6) ; 0 uses
  %i.av = call ptr @tvb_new_real_data(ptr noundef %i.l, i32 noundef %i.g, i32 noundef %i.g) ; 9 uses
  call void @tvb_set_child_real_data_tvbuff(ptr noundef %0, ptr noundef %i.av)
  %i.aw = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.av, ptr noundef @.str.21) ; 0 uses
  %i.ax = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  call void @col_set_str(ptr noundef %i.ay, i32 noundef 35, ptr noundef @.str.9)
  %i.az = load ptr, ptr %i.ax, align 8
  call void @col_clear(ptr noundef %i.az, i32 noundef 25)
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %dissect_corosync_totemnet_security_header.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = load i32, ptr @proto_corosync_totemnet, align 4
  %i.bb = call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.ba, ptr noundef %i.av, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.bc = load i32, ptr @ett_corosync_totemnet_security_header, align 4
  %i.bd = call ptr @proto_item_add_subtree(ptr noundef %i.bb, i32 noundef %i.bc) ; 4 uses
  %i.be = load i32, ptr @hf_corosync_totemnet_security_header_hash_digest, align 4
  %i.bf = call ptr @proto_tree_add_item(ptr noundef %i.bd, i32 noundef %i.be, ptr noundef %i.av, i32 noundef 0, i32 noundef 20, i32 noundef 0) ; 0 uses
  %i.bg = load i32, ptr @hf_corosync_totemnet_security_header_salt, align 4
  %i.bh = call ptr @proto_tree_add_item(ptr noundef %i.bd, i32 noundef %i.bg, ptr noundef %i.av, i32 noundef 20, i32 noundef 16, i32 noundef 0) ; 0 uses
  br i1 %3, label %bb.h, label %dissect_corosync_totemnet_security_header.exit

bb.h:                                             ; preds = %bb.g
  %i.bi = call i32 @tvb_reported_length(ptr noundef %i.av)
  %i.bj = load i32, ptr @hf_corosync_totemnet_security_crypto_type, align 4
  %i.bk = add i32 %i.bi, -1
  %i.bl = call ptr @proto_tree_add_item(ptr noundef %i.bd, i32 noundef %i.bj, ptr noundef %i.av, i32 noundef %i.bk, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bm = load i32, ptr @hf_corosync_totemnet_security_crypto_key, align 4
  %i.bn = call ptr @proto_tree_add_string(ptr noundef %i.bd, i32 noundef %i.bm, ptr noundef %i.av, i32 noundef 0, i32 noundef 0, ptr noundef %4) ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %dissect_corosync_totemnet_security_header.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = getelementptr i8, ptr %i.bn, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not5.i.i = icmp eq ptr %i.bp, null
  br i1 %.not5.i.i, label %dissect_corosync_totemnet_security_header.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 28     ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = or i32 %i.br, 2
  store i32 %i.bs, ptr %i.bq, align 4
  br label %dissect_corosync_totemnet_security_header.exit

dissect_corosync_totemnet_security_header.exit:   ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %i.bt = call ptr @tvb_new_subset_length(ptr noundef %i.av, i32 noundef 36, i32 noundef %i.as)
  %i.bu = load ptr, ptr @corosync_totemsrp_handle, align 8
  %i.bv = call i32 @call_dissector(ptr noundef %i.bu, ptr noundef %i.bt, ptr noundef %1, ptr noundef %2)
  %i.bw = add i32 %i.bv, 36
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a, %dissect_corosync_totemnet_security_header.exit
  %.0 = phi i32 [ %i.bw, %dissect_corosync_totemnet_security_header.exit ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memdup(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i64 @g_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @sober128_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @sober128_add_entropy(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i64 @sober128_read(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @ws_hmac_buffer(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_real_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @tvb_set_child_real_data_tvbuff(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !10}
!7 = distinct !{!7, !10}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = !{!"llvm.loop.mustprogress"}
end_hunk_0
