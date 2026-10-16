Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-gtp?download=true
inline.NumInlined: 135
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dissect_gtp_mbms_time_to_data_tr:bb.a
  %i.b = add i8 %i.a, 1
  %i.c = load i32, ptr @hf_gtp_time_2_dta_tr, align 4
  %i.d = zext i8 %i.b to i32
  %i.e = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.d) ; 0 uses
  ret i32 3
}

; Function Attrs: null_pointer_is_valid
declare void @heur_dissector_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @dissect_eth_heur(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.b = icmp ult i32 %i.a, 14
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef 12, i32 noundef 0) ; 2 uses
  switch i16 %i.c, label %.preheader [
    i16 -28416, label %bb.c
    i16 -30552, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.d = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 14)
  %i.e = icmp ult i32 %i.d, 4
  br i1 %i.e, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef 16, i32 noundef 0)
  %.not = icmp eq i16 %i.f, -32512
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.d, %bb.b
  %.125.ph = phi i32 [ 18, %bb.d ], [ 14, %bb.b ]
  %.1.ph = phi i16 [ -32512, %bb.d ], [ %i.c, %bb.b ]
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.g
  %.125 = phi i32 [ %i.k, %bb.g ], [ %.125.ph, %.preheader ] ; 3 uses
  %.1 = phi i16 [ %i.j, %bb.g ], [ %.1.ph, %.preheader ]
  switch i16 %.1, label %.loopexit [
    i16 -32512, label %bb.f
    i16 2048, label %bb.h
    i16 -31011, label %bb.h
    i16 2054, label %bb.h
    i16 -30621, label %bb.h
    i16 -30620, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.125)
  %i.h = icmp ult i32 %i.g, 4
  br i1 %i.h, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = add i32 %.125, 2
  %i.j = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.i, i32 noundef 0)
  %i.k = add i32 %.125, 4
  br label %bb.e, !llvm.loop !47

bb.h:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.l = load ptr, ptr @eth_handle, align 8
  %i.m = tail call i32 @call_dissector(ptr noundef %i.l, ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.d, %bb.c, %bb.a, %bb.h
  %.026 = phi i1 [ true, %bb.h ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.e ]
  ret i1 %.026
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_delete_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare ptr @wmem_memdup(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_inet_pton6(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_inet_pton4(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strndup(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_basestrtou32(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_strtou32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @wmem_free(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_bytes_exist(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_gtp_common(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.gtp_info_t, align 8         ; 8 uses
  %4 = alloca %struct.gtp_info_t, align 8         ; 8 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 10 uses
  %i.f = alloca i32, align 4                      ; 15 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 11 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i64, align 8                      ; 4 uses
  %5 = alloca %struct.gtp_hdr_ext_info, align 8   ; 4 uses
  %i.n = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  store i32 0, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  %i.o = tail call i32 @tvb_reported_length(ptr noundef %0) ; 10 uses
  %i.p = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef 0, i32 noundef 2)
  br i1 %i.p, label %bb.b, label %bb.ez

bb.b:                                             ; preds = %bb.a
  %i.q = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.r = icmp ugt i8 %i.q, 95
  br i1 %i.r, label %bb.ez, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.ez, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = zext i8 %i.s to i32
  %i.v = tail call ptr @try_val_to_str(i32 noundef %i.u, ptr noundef nonnull @gtp_message_type)
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.ez, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr i8, ptr %1, i64 416        ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noalias dereferenceable_or_null(16) ptr @wmem_alloc0(ptr noundef %i.y, i64 noundef 16) #16 ; 10 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8       ; 6 uses
  store i64 -1, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %1, i64 8         ; 8 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void @col_set_str(ptr noundef %i.ac, i32 noundef 35, ptr noundef nonnull @.str.931)
  %i.ad = load ptr, ptr %i.ab, align 8
  tail call void @col_clear(ptr noundef %i.ad, i32 noundef 25)
  %i.ae = load i8, ptr @g_gtp_session, align 1, !range !10, !noundef !11
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.x, align 8
  %i.ah = tail call noalias dereferenceable_or_null(64) ptr @wmem_alloc0(ptr noundef %i.ag, i64 noundef 64) #16 ; 4 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 48
  store i8 -128, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %i.x, align 8
  %i.ak = tail call ptr @wmem_list_new(ptr noundef %i.aj)
  store ptr %i.ak, ptr %i.ah, align 8
  %i.al = load ptr, ptr %i.x, align 8
  %i.am = tail call ptr @wmem_list_new(ptr noundef %i.al)
  %i.an = getelementptr i8, ptr %i.ah, i64 8
  store ptr %i.am, ptr %i.an, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0434 = phi ptr [ %i.ah, %bb.f ], [ null, %bb.e ] ; 19 uses
  %i.ao = tail call fastcc ptr @find_or_create_gtp_conv_info(ptr noundef %1)
  %i.ap = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  store i8 %i.ap, ptr %i.z, align 8
  %i.aq = and i8 %i.ap, 16
  %.not = icmp ne i8 %i.aq, 0                     ; 3 uses
  %switch.selectcmp634 = icmp ugt i8 %i.ap, 31
  store i1 %switch.selectcmp634, ptr @gtp_version, align 1
  %.not458 = icmp eq ptr %2, null
  br i1 %.not458, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load i32, ptr @proto_gtpprime, align 4
  %i.as = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.ar, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 3 uses
  %i.at = load i32, ptr @ett_gtp, align 4
  %i.au = tail call ptr @proto_item_add_subtree(ptr noundef %i.as, i32 noundef %i.at) ; 4 uses
  %.b457 = load i1, ptr @gtp_version, align 1
  %i.av = load i32, ptr @hf_gtp_flags, align 4    ; 2 uses
  %i.aw = load i32, ptr @ett_gtp_flags, align 4   ; 2 uses
  %i.ax = load i8, ptr %i.z, align 8
  %i.ay = zext i8 %i.ax to i64                    ; 2 uses
  br i1 %.b457, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = tail call ptr @proto_tree_add_bitmask_value_with_flags(ptr noundef %i.au, ptr noundef %0, i32 noundef 0, i32 noundef %i.av, i32 noundef %i.aw, ptr noundef nonnull @dissect_gtp_common.gtp_prime_v0_flags, i64 noundef %i.ay, i32 noundef 1) ; 0 uses
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.ba = tail call ptr @proto_tree_add_bitmask_value_with_flags(ptr noundef %i.au, ptr noundef %0, i32 noundef 0, i32 noundef %i.av, i32 noundef %i.aw, ptr noundef nonnull @dissect_gtp_common.gtp_prime_flags, i64 noundef %i.ay, i32 noundef 1) ; 0 uses
  br label %bb.o

bb.l:                                             ; preds = %bb.h
  %i.bb = load i32, ptr @proto_gtp, align 4
  %i.bc = tail call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.bb, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 3 uses
  %i.bd = load i32, ptr @ett_gtp, align 4
  %i.be = tail call ptr @proto_item_add_subtree(ptr noundef %i.bc, i32 noundef %i.bd) ; 4 uses
  %.b456 = load i1, ptr @gtp_version, align 1
  %i.bf = load i32, ptr @hf_gtp_flags, align 4    ; 2 uses
  %i.bg = load i32, ptr @ett_gtp_flags, align 4   ; 2 uses
  %i.bh = load i8, ptr %i.z, align 8
  %i.bi = zext i8 %i.bh to i64                    ; 2 uses
  br i1 %.b456, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = tail call ptr @proto_tree_add_bitmask_value_with_flags(ptr noundef %i.be, ptr noundef %0, i32 noundef 0, i32 noundef %i.bf, i32 noundef %i.bg, ptr noundef nonnull @dissect_gtp_common.gtp_v0_flags, i64 noundef %i.bi, i32 noundef 1) ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bk = tail call ptr @proto_tree_add_bitmask_value_with_flags(ptr noundef %i.be, ptr noundef %0, i32 noundef 0, i32 noundef %i.bf, i32 noundef %i.bg, ptr noundef nonnull @dissect_gtp_common.gtp_flags, i64 noundef %i.bi, i32 noundef 1) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.j, %bb.n, %bb.m, %bb.g
  %.0445 = phi ptr [ %i.au, %bb.j ], [ %i.au, %bb.k ], [ %i.be, %bb.m ], [ %i.be, %bb.n ], [ null, %bb.g ] ; 19 uses
  %.0444 = phi ptr [ %i.as, %bb.j ], [ %i.as, %bb.k ], [ %i.bc, %bb.m ], [ %i.bc, %bb.n ], [ null, %bb.g ]
  %i.bl = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 3 uses
  %i.bm = getelementptr i8, ptr %i.z, i64 1       ; 8 uses
  store i8 %i.bl, ptr %i.bm, align 1
  %switch.tableidx = add i8 %i.bl, -16            ; 3 uses
  %i.bn = icmp ult i8 %switch.tableidx, 39
  br i1 %i.bn, label %switch.hole_check, label %bb.p

switch.hole_check:                                ; preds = %bb.o
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 412316870911, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.p

switch.lookup:                                    ; preds = %switch.hole_check
  %i.bo = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.dissect_gtp_common, i64 %i.bo
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.bp = getelementptr i8, ptr %1, i64 392
  store i32 %switch.ext, ptr %i.bp, align 8
  br label %bb.p

bb.p:                                             ; preds = %switch.hole_check, %bb.o, %switch.lookup
  %i.bq = load ptr, ptr %i.ab, align 8
  %i.br = zext i8 %i.bl to i32
  %i.bs = tail call ptr @val_to_str_ext_const(i32 noundef %i.br, ptr noundef nonnull @gtp_message_type_ext, ptr noundef nonnull @.str.1686)
  tail call void @col_set_str(ptr noundef %i.bq, i32 noundef 25, ptr noundef %i.bs)
  %i.bt = load i32, ptr @hf_gtp_message_type, align 4
  %i.bu = load i8, ptr %i.bm, align 1
  %i.bv = zext i8 %i.bu to i32
  %i.bw = tail call ptr @proto_tree_add_uint(ptr noundef %.0445, i32 noundef %i.bt, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.bv) ; 4 uses
  %i.bx = load i32, ptr @hf_gtp_length, align 4
  %i.by = getelementptr i8, ptr %i.z, i64 4       ; 16 uses
  %i.bz = tail call ptr @proto_tree_add_item_ret_uint(ptr noundef %.0445, i32 noundef %i.bx, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0, ptr noundef %i.by) ; 8 uses
  br i1 %.not, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = load i32, ptr @hf_gtp_seq_number, align 4
  %i.cb = call ptr @proto_tree_add_item_ret_uint(ptr noundef %.0445, i32 noundef %i.ca, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %.b455 = load i1, ptr @gtp_version, align 1
  br i1 %.b455, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = load i8, ptr %i.z, align 8
  %i.cd = and i8 %i.cc, 1
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cf = load i32, ptr @hf_gtp_dummy_octets, align 4
  %i.cg = call ptr @proto_tree_add_item(ptr noundef %.0445, i32 noundef %i.cf, ptr noundef %0, i32 noundef 6, i32 noundef 14, i32 noundef 0) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.0438 = phi i32 [ 20, %bb.s ], [ 6, %bb.r ], [ 6, %bb.q ] ; 2 uses
  %i.ch = load i32, ptr %i.by, align 4
  %i.ci = add i32 %i.ch, %.0438
  br label %.thread.sink.split

bb.u:                                             ; preds = %bb.p
  %.b454 = load i1, ptr @gtp_version, align 1
  br i1 %.b454, label %bb.ae, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = load i32, ptr @hf_gtp_seq_number, align 4
  %i.ck = call ptr @proto_tree_add_item_ret_uint(ptr noundef %.0445, i32 noundef %i.cj, ptr noundef %0, i32 noundef 4, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.cl = load i32, ptr @hf_gtp_flow_label, align 4
  %i.cm = call ptr @proto_tree_add_item_ret_uint(ptr noundef %.0445, i32 noundef %i.cl, ptr noundef %0, i32 noundef 6, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %i.cn = load i32, ptr @hf_gtp_sndcp_number, align 4
  %i.co = call ptr @proto_tree_add_item_ret_uint(ptr noundef %.0445, i32 noundef %i.cn, ptr noundef %0, i32 noundef 8, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.d) ; 0 uses
  call fastcc void @id_to_str(ptr noundef %0)
  %i.cp = load i32, ptr @hf_gtp_tid, align 4
  %i.cq = call ptr @proto_tree_add_string(ptr noundef %.0445, i32 noundef %i.cp, ptr noundef %0, i32 noundef 12, i32 noundef 8, ptr noundef nonnull @id_to_str.str) ; 0 uses
  %i.cr = add i32 %i.o, -20                       ; 4 uses
  %i.cs = load i32, ptr %i.by, align 4            ; 4 uses
  %i.ct = icmp ugt i32 %i.cs, %i.cr
  br i1 %i.ct, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.cu = getelementptr i8, ptr %1, i64 272
  %i.cv = load i8, ptr %i.cu, align 8, !range !10, !noundef !11
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = getelementptr i8, ptr %1, i64 276
  %i.cy = load i8, ptr %i.cx, align 4
  %i.cz = and i8 %i.cy, 1
  %.not477 = icmp eq i8 %i.cz, 0
  br i1 %.not477, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bz, ptr noundef nonnull @.str.1744, i32 noundef %i.cr)
  %i.da = load i32, ptr %i.by, align 4
  %i.db = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bz, ptr noundef nonnull @ei_gtp_hdr_length_bad, ptr noundef nonnull @.str.1745, i32 noundef %i.da, i32 noundef 20, i32 noundef %i.o) ; 0 uses
  %i.dc = load ptr, ptr %i.ab, align 8
  %i.dd = load i32, ptr %i.by, align 4
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.dc, i32 noundef 25, ptr noundef nonnull @.str.1746, i32 noundef %i.dd, i32 noundef 20, i32 noundef %i.o)
  %.pre = load i32, ptr %i.by, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %i.de = phi i32 [ %.pre, %bb.y ], [ %i.cs, %bb.x ], [ %i.cs, %bb.w ], [ %i.cs, %bb.v ] ; 4 uses
  %i.df = icmp ult i32 %i.de, %i.cr
  br i1 %i.df, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.dg = getelementptr i8, ptr %1, i64 272
  %i.dh = load i8, ptr %i.dg, align 8, !range !10, !noundef !11
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dj = getelementptr i8, ptr %1, i64 276
  %i.dk = load i8, ptr %i.dj, align 4
  %i.dl = and i8 %i.dk, 1
  %.not478 = icmp eq i8 %i.dl, 0
  br i1 %.not478, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bz, ptr noundef nonnull @.str.1744, i32 noundef %i.cr)
  %i.dm = load i32, ptr %i.by, align 4
  %i.dn = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bz, ptr noundef nonnull @ei_gtp_hdr_length_bad, ptr noundef nonnull @.str.1747, i32 noundef %i.dm, i32 noundef 20, i32 noundef %i.o) ; 0 uses
  %i.do = load ptr, ptr %i.ab, align 8
  %i.dp = load i32, ptr %i.by, align 4
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.do, i32 noundef 25, ptr noundef nonnull @.str.1748, i32 noundef %i.dp, i32 noundef 20, i32 noundef %i.o)
  %.pre565.a = load i32, ptr %i.by, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  %i.dq = phi i32 [ %.pre565.a, %bb.ac ], [ %i.de, %bb.ab ], [ %i.de, %bb.aa ], [ %i.de, %bb.z ]
  %i.dr = add i32 %i.dq, 20
  br label %.thread.sink.split

bb.ae:                                            ; preds = %bb.u
  %i.ds = load i32, ptr @hf_gtp_teid, align 4
  %i.dt = call ptr @proto_tree_add_item_ret_uint(ptr noundef %.0445, i32 noundef %i.ds, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.h) ; 0 uses
  %i.du = load i32, ptr %i.h, align 4
  %i.dv = zext i32 %i.du to i64
  store i64 %i.dv, ptr %i.aa, align 8
  %i.dw = add i32 %i.o, -8                        ; 4 uses
  %i.dx = load i32, ptr %i.by, align 4            ; 4 uses
  %i.dy = icmp ugt i32 %i.dx, %i.dw
  br i1 %i.dy, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.dz = getelementptr i8, ptr %1, i64 272
  %i.ea = load i8, ptr %i.dz, align 8, !range !10, !noundef !11
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ec = getelementptr i8, ptr %1, i64 276
  %i.ed = load i8, ptr %i.ec, align 4
  %i.ee = and i8 %i.ed, 1
  %.not459 = icmp eq i8 %i.ee, 0
  br i1 %.not459, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bz, ptr noundef nonnull @.str.1744, i32 noundef %i.dw)
  %i.ef = load i32, ptr %i.by, align 4
  %i.eg = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bz, ptr noundef nonnull @ei_gtp_hdr_length_bad, ptr noundef nonnull @.str.1749, i32 noundef %i.ef, i32 noundef 8, i32 noundef %i.o) ; 0 uses
  %i.eh = load ptr, ptr %i.ab, align 8
  %i.ei = load i32, ptr %i.by, align 4
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.eh, i32 noundef 25, ptr noundef nonnull @.str.1750, i32 noundef %i.ei, i32 noundef 8, i32 noundef %i.o)
  %.pre566.a = load i32, ptr %i.by, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.ej = phi i32 [ %.pre566.a, %bb.ah ], [ %i.dx, %bb.ag ], [ %i.dx, %bb.af ], [ %i.dx, %bb.ae ] ; 4 uses
  %i.ek = icmp ult i32 %i.ej, %i.dw
  br i1 %i.ek, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.el = getelementptr i8, ptr %1, i64 272
  %i.em = load i8, ptr %i.el, align 8, !range !10, !noundef !11
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eo = getelementptr i8, ptr %1, i64 276
  %i.ep = load i8, ptr %i.eo, align 4
  %i.eq = and i8 %i.ep, 1
  %.not460 = icmp eq i8 %i.eq, 0
  br i1 %.not460, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bz, ptr noundef nonnull @.str.1744, i32 noundef %i.dw)
  %i.er = load i32, ptr %i.by, align 4
  %i.es = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bz, ptr noundef nonnull @ei_gtp_hdr_length_bad, ptr noundef nonnull @.str.1751, i32 noundef %i.er, i32 noundef 8, i32 noundef %i.o) ; 0 uses
  %i.et = load ptr, ptr %i.ab, align 8
  %i.eu = load i32, ptr %i.by, align 4
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.et, i32 noundef 25, ptr noundef nonnull @.str.1752, i32 noundef %i.eu, i32 noundef 8, i32 noundef %i.o)
  %.pre567 = load i32, ptr %i.by, align 4
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai
  %i.ev = phi i32 [ %.pre567, %bb.al ], [ %i.ej, %bb.ak ], [ %i.ej, %bb.aj ], [ %i.ej, %bb.ai ]
  %i.ew = add i32 %i.ev, 8
  call void @set_actual_length(ptr noundef %0, i32 noundef %i.ew)
  %i.ex = load i8, ptr %i.z, align 8
  %i.ey = zext i8 %i.ex to i32                    ; 2 uses
  %i.ez = and i32 %i.ey, 7
  %.not461 = icmp eq i32 %i.ez, 0
  br i1 %.not461, label %.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fa = and i32 %i.ey, 2
  %.not462 = icmp ne i32 %i.fa, 0                 ; 3 uses
  %i.fb = load i32, ptr @hf_gtp_seq_number, align 4
  %i.fc = call ptr @proto_tree_add_item_ret_uint(ptr noundef %.0445, i32 noundef %i.fb, ptr noundef %0, i32 noundef 8, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.fd = load i32, ptr @hf_gtp_npdu_number, align 4
  %i.fe = call ptr @proto_tree_add_item_ret_uint(ptr noundef %.0445, i32 noundef %i.fd, ptr noundef %0, i32 noundef 10, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.d) ; 0 uses
  %i.ff = load i8, ptr %i.z, align 8
  %i.fg = and i8 %i.ff, 4
  %.not463 = icmp eq i8 %i.fg, 0
  br i1 %.not463, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fh = load i32, ptr @hf_gtp_ext_hdr_next, align 4
  %i.fi = call ptr @proto_tree_add_item_ret_uint(ptr noundef %.0445, i32 noundef %i.fh, ptr noundef %0, i32 noundef 11, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.e)
  %i.fj = load i32, ptr %i.e, align 4
  %.not464531 = icmp eq i32 %i.fj, 0
  br i1 %.not464531, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ao, %bb.cc
  %.0432533 = phi ptr [ %i.kp, %bb.cc ], [ %i.fi, %bb.ao ]
  %.1439532 = phi i32 [ %i.kq, %bb.cc ], [ 12, %bb.ao ] ; 15 uses
  %i.fk = load i32, ptr @hf_gtp_ext_hdr, align 4
  %i.fl = call ptr @proto_tree_add_item(ptr noundef %.0445, i32 noundef %i.fk, ptr noundef %0, i32 noundef %.1439532, i32 noundef 0, i32 noundef 0) ; 3 uses
  %i.fm = load i32, ptr @ett_gtp_ext_hdr, align 4
end_hunk_0
begin_hunk_1_@dissect_gtp_common:bb.a
bb.bd:                                            ; preds = %bb.bc
  %i.hv = load i32, ptr @hf_gtp_ext_hdr_pdu_ses_cont_dl_send_time_stamp, align 4
  %i.hw = call ptr @proto_tree_add_item(ptr noundef %i.hk, i32 noundef %i.hv, ptr noundef %0, i32 noundef %.0430, i32 noundef 8, i32 noundef 2) ; 0 uses
  %i.hx = add i32 %.0430, 8
  %.pre572 = load i64, ptr %i.j, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.hy = phi i64 [ %.pre572, %bb.bd ], [ %i.ht, %bb.bc ] ; 2 uses
  %.1431 = phi i32 [ %i.hx, %bb.bd ], [ %.0430, %bb.bc ] ; 3 uses
  %i.hz = and i64 %i.hy, 4
  %.not475 = icmp eq i64 %i.hz, 0
  br i1 %.not475, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ia = load i32, ptr @hf_gtp_ext_hdr_pdu_ses_cont_dl_qfi_sn, align 4
  %i.ib = call ptr @proto_tree_add_item(ptr noundef %i.hk, i32 noundef %i.ia, ptr noundef %0, i32 noundef %.1431, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.ic = add i32 %.1431, 3
  %.pre573 = load i64, ptr %i.j, align 8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.id = phi i64 [ %.pre573, %bb.bf ], [ %i.hy, %bb.be ]
  %.2 = phi i32 [ %i.ic, %bb.bf ], [ %.1431, %bb.be ]
  %i.ie = and i64 %i.id, 2
  %.not476 = icmp eq i64 %i.ie, 0
  br i1 %.not476, label %bb.bw, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.if = load i32, ptr @hf_gtp_ext_hdr_pdu_ses_cont_dl_mbs_qfi_sn, align 4
  %i.ig = call ptr @proto_tree_add_item(ptr noundef %i.hk, i32 noundef %i.if, ptr noundef %0, i32 noundef %.2, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.bw

bb.bi:                                            ; preds = %bb.az
  call void @proto_tree_add_bitmask_list_ret_uint64(ptr noundef %i.hk, ptr noundef %0, i32 noundef %i.fu, i32 noundef 1, ptr noundef nonnull @dissect_gtp_common.flags1_ul, i32 noundef 0, ptr noundef nonnull %i.j)
  %i.ih = or disjoint i32 %.1439532, 2
  call void @proto_tree_add_bitmask_list_ret_uint64(ptr noundef %i.hk, ptr noundef %0, i32 noundef %i.ih, i32 noundef 1, ptr noundef nonnull @dissect_gtp_common.flags4, i32 noundef 0, ptr noundef nonnull %i.l)
  %i.ii = or disjoint i32 %.1439532, 3            ; 2 uses
  %i.ij = load i64, ptr %i.j, align 8             ; 2 uses
  %i.ik = and i64 %i.ij, 8
  %.not466 = icmp eq i64 %i.ik, 0
  br i1 %.not466, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.il = load i32, ptr @hf_gtp_ext_hdr_pdu_ses_cont_dl_send_time_stamp_repeat, align 4
  %i.im = call ptr @proto_tree_add_item(ptr noundef %i.hk, i32 noundef %i.il, ptr noundef %0, i32 noundef %i.ii, i32 noundef 8, i32 noundef 2) ; 0 uses
  %i.in = add i32 %.1439532, 11
  %i.io = load i32, ptr @hf_gtp_ext_hdr_pdu_ses_cont_dl_recv_time_stamp, align 4
  %i.ip = call ptr @proto_tree_add_item(ptr noundef %i.hk, i32 noundef %i.io, ptr noundef %0, i32 noundef %i.in, i32 noundef 8, i32 noundef 2) ; 0 uses
  %i.iq = add i32 %.1439532, 19
  %i.ir = load i32, ptr @hf_gtp_ext_hdr_pdu_ses_cont_ul_send_time_stamp, align 4
  %i.is = call ptr @proto_tree_add_item(ptr noundef %i.hk, i32 noundef %i.ir, ptr noundef %0, i32 noundef %i.iq, i32 noundef 8, i32 noundef 2) ; 0 uses
  %i.it = add i32 %.1439532, 27
  %.pre568 = load i64, ptr %i.j, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.iu = phi i64 [ %.pre568, %bb.bj ], [ %i.ij, %bb.bi ] ; 2 uses
  %.3 = phi i32 [ %i.it, %bb.bj ], [ %i.ii, %bb.bi ] ; 3 uses
  %i.iv = and i64 %i.iu, 4
  %.not467 = icmp eq i64 %i.iv, 0
  br i1 %.not467, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.iw = load i32, ptr @hf_gtp_ext_hdr_pdu_ses_cont_dl_delay_result, align 4
  %i.ix = call ptr @proto_tree_add_item(ptr noundef %i.hk, i32 noundef %i.iw, ptr noundef %0, i32 noundef %.3, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.iy = add i32 %.3, 4
  %.pre569 = load i64, ptr %i.j, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.iz = phi i64 [ %.pre569, %bb.bl ], [ %i.iu, %bb.bk ] ; 2 uses
  %.4 = phi i32 [ %i.iy, %bb.bl ], [ %.3, %bb.bk ] ; 3 uses
  %i.ja = and i64 %i.iz, 2
  %.not468 = icmp eq i64 %i.ja, 0
  br i1 %.not468, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jb = load i32, ptr @hf_gtp_ext_hdr_pdu_ses_cont_ul_delay_result, align 4
  %i.jc = call ptr @proto_tree_add_item(ptr noundef %i.hk, i32 noundef %i.jb, ptr noundef %0, i32 noundef %.4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.jd = add i32 %.4, 4
  %.pre570 = load i64, ptr %i.j, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.je = phi i64 [ %.pre570, %bb.bn ], [ %i.iz, %bb.bm ]
  %.5 = phi i32 [ %i.jd, %bb.bn ], [ %.4, %bb.bm ] ; 3 uses
  %i.jf = and i64 %i.je, 1
  %.not469 = icmp eq i64 %i.jf, 0
  br i1 %.not469, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jg = load i32, ptr @hf_gtp_ext_hdr_pdu_ses_cont_ul_qfi_sn, align 4
  %i.jh = call ptr @proto_tree_add_item(ptr noundef %i.hk, i32 noundef %i.jg, ptr noundef %0, i32 noundef %.5, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.ji = add i32 %.5, 3
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.6 = phi i32 [ %i.ji, %bb.bp ], [ %.5, %bb.bo ] ; 3 uses
  %i.jj = load i64, ptr %i.l, align 8             ; 2 uses
  %i.jk = and i64 %i.jj, 128
  %.not470 = icmp eq i64 %i.jk, 0
  br i1 %.not470, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jl = load i32, ptr @hf_gtp_ext_hdr_pdu_ses_cont_n3_n9_delay_result, align 4
  %i.jm = call ptr @proto_tree_add_item(ptr noundef %i.hk, i32 noundef %i.jl, ptr noundef %0, i32 noundef %.6, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.jn = add i32 %.6, 4
  %.pre571 = load i64, ptr %i.l, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.jo = phi i64 [ %.pre571, %bb.br ], [ %i.jj, %bb.bq ]
  %.7 = phi i32 [ %i.jn, %bb.br ], [ %.6, %bb.bq ] ; 2 uses
  %i.jp = and i64 %i.jo, 64
  %.not471 = icmp eq i64 %i.jp, 0
  br i1 %.not471, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @proto_tree_add_bitmask_list_ret_uint64(ptr noundef %i.hk, ptr noundef %0, i32 noundef %.7, i32 noundef 1, ptr noundef nonnull @dissect_gtp_common.flags5, i32 noundef 0, ptr noundef nonnull %i.m)
  %i.jq = load i64, ptr %i.m, align 8
  %i.jr = and i64 %i.jq, 1
  %.not472 = icmp eq i64 %i.jr, 0
  br i1 %.not472, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.js = add i32 %.7, 1
  call void @proto_tree_add_bitmask_list(ptr noundef %i.hk, ptr noundef %0, i32 noundef %i.js, i32 noundef 1, ptr noundef nonnull @dissect_gtp_common.flags6, i32 noundef 0)
  br label %bb.bw

bb.bv:                                            ; preds = %bb.az
  %i.jt = load i32, ptr %i.f, align 4
  %i.ju = shl i32 %i.jt, 2
  %i.jv = add i32 %i.ju, -1
  %i.jw = call ptr @proto_tree_add_expert(ptr noundef %i.hk, ptr noundef %1, ptr noundef nonnull @ei_gtp_unknown_pdu_type, ptr noundef %0, i32 noundef %i.fu, i32 noundef %i.jv) ; 0 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bs, %bb.bu, %bb.bt, %bb.bg, %bb.bh, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  br label %bb.cc

bb.bx:                                            ; preds = %bb.ap
  %i.jx = load i32, ptr %i.f, align 4
  %i.jy = icmp eq i32 %i.jx, 1
  br i1 %i.jy, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.jz = load i32, ptr @hf_gtp_ext_hdr_pdcpsn, align 4
  %i.ka = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.fn, i32 noundef %i.jz, ptr noundef %0, i32 noundef %i.fu, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.g)
  %i.kb = load i32, ptr %i.g, align 4
  %i.kc = and i32 %i.kb, 32768
  %.not465 = icmp eq i32 %i.kc, 0
  br i1 %.not465, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.kd = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ka, ptr noundef nonnull @ei_gtp_ext_hdr_pdcpsn) ; 0 uses
  br label %bb.cc

bb.ca:                                            ; preds = %bb.bx
  %i.ke = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.fn, ptr noundef nonnull @ei_gtp_ext_length_warn, ptr noundef nonnull @.str.1759) ; 0 uses
  br label %bb.cc

bb.cb:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %.0432533, ptr %5, align 8
  %i.kf = add i32 %.1439532, -1
  %i.kg = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.kf)
  %i.kh = load ptr, ptr @gtp_hdr_ext_dissector_table, align 8
  %i.ki = load i32, ptr %i.e, align 4
  %i.kj = call i32 @dissector_try_uint_with_data(ptr noundef %i.kh, i32 noundef %i.ki, ptr noundef %i.kg, ptr noundef %1, ptr noundef %i.fn, i1 noundef zeroext false, ptr noundef nonnull %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.cc

bb.cc:                                            ; preds = %bb.by, %bb.bz, %bb.ca, %bb.av, %bb.aw, %bb.ar, %bb.as, %bb.cb, %bb.bw, %bb.ay, %bb.ax, %bb.at, %bb.ap, %bb.ap
  %i.kk = load i32, ptr %i.f, align 4
  %i.kl = shl i32 %i.kk, 2                        ; 2 uses
  %i.km = add i32 %.1439532, -1
  %i.kn = add i32 %i.km, %i.kl
  %i.ko = load i32, ptr @hf_gtp_ext_hdr_next, align 4
  %i.kp = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.fn, i32 noundef %i.ko, ptr noundef %0, i32 noundef %i.kn, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.e)
  %i.kq = add i32 %.1439532, %i.kl                ; 2 uses
  %i.kr = load i32, ptr %i.e, align 4
  %.not464 = icmp eq i32 %i.kr, 0
  br i1 %.not464, label %.thread, label %.lr.ph, !llvm.loop !48

bb.cd:                                            ; preds = %.lr.ph
  %i.ks = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.fp, ptr noundef nonnull @ei_gtp_ext_length_mal, ptr noundef nonnull @.str.1753) ; 0 uses
  br label %.sink.split633

.thread.sink.split:                               ; preds = %bb.t, %bb.ad
  %.sink632 = phi i32 [ %i.dr, %bb.ad ], [ %i.ci, %bb.t ]
  %.2440.ph = phi i32 [ 20, %bb.ad ], [ %.0438, %bb.t ]
  call void @set_actual_length(ptr noundef %0, i32 noundef %.sink632)
  br label %.thread

.thread:                                          ; preds = %bb.cc, %.thread.sink.split, %bb.ao, %bb.an, %bb.am
  %.2440 = phi i32 [ 12, %bb.ao ], [ 8, %bb.am ], [ %.2440.ph, %.thread.sink.split ], [ 12, %bb.an ], [ %i.kq, %bb.cc ] ; 5 uses
  %.1436 = phi i1 [ %.not462, %bb.ao ], [ false, %bb.am ], [ true, %.thread.sink.split ], [ %.not462, %bb.an ], [ %.not462, %bb.cc ]
  %i.kt = load i8, ptr %i.bm, align 1
  %.not479 = icmp eq i8 %i.kt, -1
  br i1 %.not479, label %bb.cz, label %bb.ce

bb.ce:                                            ; preds = %.thread
  %.b = load i1, ptr @gtp_version, align 1
  %i.ku = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.2440)
  %.not480537 = icmp eq i32 %i.ku, 0
  br i1 %.not480537, label %._crit_edge, label %.lr.ph540

.lr.ph540:                                        ; preds = %bb.ce
  %narrow = select i1 %.not, i1 %.b, i1 false
  %gprs_mess_items.umts_mess_items.i = select i1 %narrow, ptr @umts_mess_items, ptr @gprs_mess_items ; 3 uses
  %6 = load i8, ptr %gprs_mess_items.umts_mess_items.i, align 16
  %.fr = freeze i8 %6                             ; 2 uses
  %.not41.i = icmp eq i8 %.fr, 0
  br i1 %.not41.i, label %.lr.ph540.split.us, label %.lr.ph540.split

.lr.ph540.split.us:                               ; preds = %.lr.ph540, %.split.loop.exit706
  %.3441539.us = phi i32 [ %39, %.split.loop.exit706 ], [ %.2440, %.lr.ph540 ] ; 3 uses
  %7 = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.3441539.us)
  %8 = load i8, ptr @g_gtp_etsi_order, align 1, !range !10, !noundef !11
  %9 = trunc nuw i8 %8 to i1
  br i1 %9, label %check_field_presence_and_decoder.exit.thread.us, label %.preheader.us

check_field_presence_and_decoder.exit.thread.us:  ; preds = %.lr.ph540.split.us
  %10 = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.bw, ptr noundef nonnull @ei_gtp_message_not_found) ; 0 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %check_field_presence_and_decoder.exit.thread.us, %.lr.ph540.split.us
  %11 = zext i8 %7 to i32                         ; 4 uses
  br label %29

12:                                               ; preds = %29
  %.not489.us = icmp eq i64 %indvars.iv.next563654, 132
  br i1 %.not489.us, label %.split.loop.exit706, label %13

13:                                               ; preds = %12
  %14 = getelementptr [16 x i8], ptr @gtpopt, i64 %indvars.iv.next563654 ; 2 uses
  %15 = getelementptr i8, ptr %14, i64 16
  %16 = load i32, ptr %15, align 16
  %17 = icmp eq i32 %16, %11
  br i1 %17, label %.split.loop.exit704, label %18, !llvm.loop !49

18:                                               ; preds = %13
  %19 = getelementptr [16 x i8], ptr @gtpopt, i64 %indvars.iv.next563654 ; 2 uses
  %20 = getelementptr i8, ptr %19, i64 32
  %21 = load i32, ptr %20, align 16
  %22 = icmp eq i32 %21, %11
  br i1 %22, label %.split.loop.exit702, label %23, !llvm.loop !49

23:                                               ; preds = %18
  %24 = getelementptr [16 x i8], ptr @gtpopt, i64 %indvars.iv.next563654 ; 2 uses
  %25 = getelementptr i8, ptr %24, i64 48
  %26 = load i32, ptr %25, align 16
  %27 = icmp eq i32 %26, %11
  br i1 %27, label %.split.loop.exit701, label %28, !llvm.loop !49

28:                                               ; preds = %23
  %indvars.iv.next563.3 = add nuw nsw i64 %indvars.iv.next563654, 4
  br label %29

29:                                               ; preds = %28, %.preheader.us
  %indvars.iv.next563654 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next563.3, %28 ] ; 6 uses
  %30 = getelementptr [16 x i8], ptr @gtpopt, i64 %indvars.iv.next563654 ; 2 uses
  %31 = load i32, ptr %30, align 16
  %32 = icmp eq i32 %31, %11
  br i1 %32, label %.split.loop.exit706, label %12, !llvm.loop !49

.split.loop.exit701:                              ; preds = %23
  %33 = getelementptr i8, ptr %24, i64 48
  br label %.split.loop.exit706

.split.loop.exit702:                              ; preds = %18
  %34 = getelementptr i8, ptr %19, i64 32
  br label %.split.loop.exit706

.split.loop.exit704:                              ; preds = %13
  %35 = getelementptr i8, ptr %14, i64 16
  br label %.split.loop.exit706

.split.loop.exit706:                              ; preds = %12, %29, %.split.loop.exit704, %.split.loop.exit702, %.split.loop.exit701
  %.lcssa543 = phi ptr [ %35, %.split.loop.exit704 ], [ %30, %29 ], [ %34, %.split.loop.exit702 ], [ %33, %.split.loop.exit701 ], [ getelementptr inbounds nuw (i8, ptr @gtpopt, i64 2128), %12 ]
  %36 = getelementptr i8, ptr %.lcssa543, i64 8
  %37 = load ptr, ptr %36, align 8
  %38 = call i32 %37(ptr noundef %0, i32 noundef %.3441539.us, ptr noundef %1, ptr noundef %.0445, ptr noundef %.0434)
  %39 = add i32 %38, %.3441539.us                 ; 3 uses
  %40 = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %39)
  %.not480.us = icmp eq i32 %40, 0
  br i1 %.not480.us, label %._crit_edge, label %.lr.ph540.split.us, !llvm.loop !50

.lr.ph540.split:                                  ; preds = %.lr.ph540, %bb.co
  %.3441539 = phi i32 [ %i.my, %bb.co ], [ %.2440, %.lr.ph540 ] ; 3 uses
  %.0497538 = phi i32 [ %.1498611, %bb.co ], [ 0, %.lr.ph540 ] ; 5 uses
  %i.kv = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.3441539) ; 2 uses
  %i.kw = load i8, ptr @g_gtp_etsi_order, align 1, !range !10, !noundef !11
  %i.kx = trunc nuw i8 %i.kw to i1
  br i1 %i.kx, label %.lr.ph.i.preheader, label %.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph540.split
  %i.ky = load i8, ptr %i.bm, align 1             ; 2 uses
  %i.kz = icmp eq i8 %.fr, %i.ky
  br i1 %i.kz, label %.preheader.i, label %.lr.ph535

.lr.ph535:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.02642.i534 = phi i32 [ %i.la, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.la = add i32 %.02642.i534, 1                 ; 2 uses
  %i.lb = zext i32 %i.la to i64
  %i.lc = getelementptr [744 x i8], ptr %gprs_mess_items.umts_mess_items.i, i64 %i.lb ; 2 uses
  %i.ld = load i8, ptr %i.lc, align 8             ; 2 uses
  %.not.i = icmp eq i8 %i.ld, 0
  br i1 %.not.i, label %check_field_presence_and_decoder.exit.thread.loopexit, label %.lr.ph.i, !llvm.loop !51

.lr.ph.i:                                         ; preds = %.lr.ph535
  %i.le = icmp eq i8 %i.ld, %i.ky
  br i1 %i.le, label %.preheader.i, label %.lr.ph535, !llvm.loop !51

.preheader.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.lcssa = phi ptr [ %gprs_mess_items.umts_mess_items.i, %.lr.ph.i.preheader ], [ %i.lc, %.lr.ph.i ]
  %i.lf = getelementptr i8, ptr %.lcssa, i64 8    ; 2 uses
  %i.lg = sext i32 %.0497538 to i64
  %i.lh = getelementptr [16 x i8], ptr %i.lf, i64 %i.lg ; 2 uses
  %i.li = load i8, ptr %i.lh, align 8             ; 2 uses
  %.not3043.i = icmp eq i8 %i.li, 0
  br i1 %.not3043.i, label %check_field_presence_and_decoder.exit.thread508, label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.preheader.i, %bb.cg
  %.2499 = phi i32 [ %i.lp, %bb.cg ], [ %.0497538, %.preheader.i ] ; 2 uses
  %i.lj = phi i8 [ %i.ls, %bb.cg ], [ %i.li, %.preheader.i ] ; 2 uses
  %i.lk = phi ptr [ %i.lr, %bb.cg ], [ %i.lh, %.preheader.i ] ; 2 uses
  %i.ll = icmp eq i8 %i.lj, %i.kv
  br i1 %i.ll, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph44.i
  %i.lm = getelementptr i8, ptr %i.lk, i64 1
  %i.ln = load i8, ptr %i.lm, align 1
  %i.lo = icmp eq i8 %i.ln, 1
  %i.lp = add i32 %.2499, 1                       ; 4 uses
  br i1 %i.lo, label %check_field_presence_and_decoder.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr [16 x i8], ptr %i.lf, i64 %i.lq ; 2 uses
  %i.ls = load i8, ptr %i.lr, align 8             ; 2 uses
  %.not30.i = icmp eq i8 %i.ls, 0
  br i1 %.not30.i, label %check_field_presence_and_decoder.exit.thread508, label %.lr.ph44.i, !llvm.loop !52

check_field_presence_and_decoder.exit:            ; preds = %bb.cf
  %i.lt = zext i8 %i.lj to i32
  %i.lu = call ptr @val_to_str_ext_const(i32 noundef %i.lt, ptr noundef nonnull @gtp_val_ext, ptr noundef nonnull @.str.1761)
  %i.lv = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bw, ptr noundef nonnull @ei_gtp_wrong_next_field, ptr noundef nonnull @.str.1760, ptr noundef %i.lu) ; 0 uses
  br label %.preheader

check_field_presence_and_decoder.exit.thread.loopexit: ; preds = %.lr.ph535
  %i.lw = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.bw, ptr noundef nonnull @ei_gtp_message_not_found) ; 0 uses
  br label %.preheader

check_field_presence_and_decoder.exit.thread508:  ; preds = %bb.cg, %.preheader.i
  %.3500512 = phi i32 [ %.0497538, %.preheader.i ], [ %i.lp, %bb.cg ]
  %i.lx = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.bw, ptr noundef nonnull @ei_gtp_field_not_present) ; 0 uses
  br label %.preheader

bb.ch:                                            ; preds = %.lr.ph44.i
  %i.ly = getelementptr i8, ptr %i.lk, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8            ; 2 uses
  %i.ma = add i32 %.2499, 1                       ; 2 uses
  %i.mb = icmp eq ptr %i.lz, null
  br i1 %i.mb, label %.preheader, label %bb.co

.preheader:                                       ; preds = %.lr.ph540.split, %check_field_presence_and_decoder.exit.thread508, %check_field_presence_and_decoder.exit.thread.loopexit, %check_field_presence_and_decoder.exit, %bb.ch
  %.1498612 = phi i32 [ %i.ma, %bb.ch ], [ %.0497538, %.lr.ph540.split ], [ %.3500512, %check_field_presence_and_decoder.exit.thread508 ], [ %.0497538, %check_field_presence_and_decoder.exit.thread.loopexit ], [ %i.lp, %check_field_presence_and_decoder.exit ]
  %i.mc = zext i8 %i.kv to i32                    ; 4 uses
  br label %bb.cn

bb.ci:                                            ; preds = %bb.cn
  %.not489 = icmp eq i64 %indvars.iv.next653, 132
  br i1 %.not489, label %.split.loop.exit694, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.md = getelementptr [16 x i8], ptr @gtpopt, i64 %indvars.iv.next653 ; 2 uses
  %i.me = getelementptr i8, ptr %i.md, i64 16
  %i.mf = load i32, ptr %i.me, align 16
  %i.mg = icmp eq i32 %i.mf, %i.mc
  br i1 %i.mg, label %.split.loop.exit692, label %bb.ck, !llvm.loop !49

bb.ck:                                            ; preds = %bb.cj
  %i.mh = getelementptr [16 x i8], ptr @gtpopt, i64 %indvars.iv.next653 ; 2 uses
  %i.mi = getelementptr i8, ptr %i.mh, i64 32
  %i.mj = load i32, ptr %i.mi, align 16
  %i.mk = icmp eq i32 %i.mj, %i.mc
  br i1 %i.mk, label %.split.loop.exit690, label %bb.cl, !llvm.loop !49

bb.cl:                                            ; preds = %bb.ck
  %i.ml = getelementptr [16 x i8], ptr @gtpopt, i64 %indvars.iv.next653 ; 2 uses
  %i.mm = getelementptr i8, ptr %i.ml, i64 48
  %i.mn = load i32, ptr %i.mm, align 16
  %i.mo = icmp eq i32 %i.mn, %i.mc
  br i1 %i.mo, label %.split.loop.exit, label %bb.cm, !llvm.loop !49

bb.cm:                                            ; preds = %bb.cl
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.next653, 4
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %.preheader
  %indvars.iv.next653 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.3, %bb.cm ] ; 6 uses
  %i.mp = getelementptr [16 x i8], ptr @gtpopt, i64 %indvars.iv.next653 ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 16
  %i.mr = icmp eq i32 %i.mq, %i.mc
  br i1 %i.mr, label %.split.loop.exit694, label %bb.ci, !llvm.loop !49

.split.loop.exit:                                 ; preds = %bb.cl
  %i.ms = getelementptr i8, ptr %i.ml, i64 48
  br label %.split.loop.exit694

.split.loop.exit690:                              ; preds = %bb.ck
  %i.mt = getelementptr i8, ptr %i.mh, i64 32
  br label %.split.loop.exit694

.split.loop.exit692:                              ; preds = %bb.cj
  %i.mu = getelementptr i8, ptr %i.md, i64 16
  br label %.split.loop.exit694

.split.loop.exit694:                              ; preds = %bb.ci, %bb.cn, %.split.loop.exit692, %.split.loop.exit690, %.split.loop.exit
  %.lcssa556 = phi ptr [ %i.mu, %.split.loop.exit692 ], [ %i.mp, %bb.cn ], [ %i.mt, %.split.loop.exit690 ], [ %i.ms, %.split.loop.exit ], [ getelementptr inbounds nuw (i8, ptr @gtpopt, i64 2128), %bb.ci ]
  %i.mv = getelementptr i8, ptr %.lcssa556, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8
  br label %bb.co

bb.co:                                            ; preds = %.split.loop.exit694, %bb.ch
  %.1498611 = phi i32 [ %.1498612, %.split.loop.exit694 ], [ %i.ma, %bb.ch ]
  %.1495 = phi ptr [ %i.mw, %.split.loop.exit694 ], [ %i.lz, %bb.ch ]
  %i.mx = call i32 %.1495(ptr noundef %0, i32 noundef %.3441539, ptr noundef %1, ptr noundef %.0445, ptr noundef %.0434)
  %i.my = add i32 %i.mx, %.3441539                ; 3 uses
  %i.mz = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.my)
  %.not480 = icmp eq i32 %i.mz, 0
  br i1 %.not480, label %._crit_edge, label %.lr.ph540.split, !llvm.loop !50

._crit_edge:                                      ; preds = %bb.co, %.split.loop.exit706, %bb.ce
  %.3441.lcssa = phi i32 [ %.2440, %bb.ce ], [ %39, %.split.loop.exit706 ], [ %i.my, %bb.co ] ; 4 uses
  %.not481 = icmp eq ptr %.0434, null             ; 2 uses
  br i1 %.not481, label %bb.ct, label %bb.cp

bb.cp:                                            ; preds = %._crit_edge
  %i.na = getelementptr i8, ptr %1, i64 80
  %i.nb = load ptr, ptr %i.na, align 8
  %i.nc = getelementptr i8, ptr %i.nb, i64 53
  %i.nd = load i16, ptr %i.nc, align 1
  %i.ne = and i16 %i.nd, 8
  %.not482 = icmp eq i16 %i.ne, 0
  br i1 %.not482, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  %i.nf = call zeroext i1 @is_deinterlacing_supported(ptr noundef %1)
  br i1 %i.nf, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.ng = call ptr @find_conversation_strat(ptr noundef %1, i32 noundef 39, i32 noundef 262144, i1 noundef zeroext false)
  %i.nh = load ptr, ptr %.0434, align 8
  %i.ni = getelementptr i8, ptr %.0434, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8
  %i.nk = getelementptr i8, ptr %1, i64 20
  %i.nl = load i32, ptr %i.nk, align 4
  %i.nm = getelementptr i8, ptr %i.ng, i64 24
  %i.nn = load i32, ptr %i.nm, align 8
  call void @fill_map(ptr noundef %i.nh, ptr noundef %i.nj, i32 noundef %i.nl, i32 noundef %i.nn, i1 noundef zeroext false)
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cq
  %i.no = load ptr, ptr %.0434, align 8
  %i.np = getelementptr i8, ptr %.0434, i64 8
  %i.nq = load ptr, ptr %i.np, align 8
  %i.nr = getelementptr i8, ptr %1, i64 20
  %i.ns = load i32, ptr %i.nr, align 4
  call void @fill_map(ptr noundef %i.no, ptr noundef %i.nq, i32 noundef %i.ns, i32 noundef 0, i1 noundef zeroext true)
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs, %bb.cp, %._crit_edge
  br i1 %.1436, label %bb.cu, label %bb.cz

bb.cu:                                            ; preds = %bb.ct
  %i.nt = load i8, ptr %i.bm, align 1             ; 2 uses
  %.not483 = icmp eq i8 %i.nt, -15
  br i1 %.not483, label %bb.cz, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  br i1 %.not481, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.nu = getelementptr i8, ptr %.0434, i64 48
  %i.nv = load i8, ptr %i.nu, align 8
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.0 = phi i8 [ %i.nv, %bb.cw ], [ -128, %bb.cv ]
  %i.nw = load i32, ptr %i.b, align 4
  %i.nx = zext i8 %i.nt to i32
  %i.ny = call fastcc ptr @gtp_match_response(ptr noundef %0, ptr noundef %1, ptr noundef %.0445, i32 noundef %i.nw, i32 noundef %i.nx, ptr noundef %i.ao, i8 noundef zeroext %.0) ; 2 uses
  %.not484 = icmp eq ptr %i.ny, null
  br i1 %.not484, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.nz = load i32, ptr @gtp_tap, align 4
  call void @tap_queue_packet(i32 noundef %i.nz, ptr noundef %1, ptr noundef nonnull %i.ny)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.ct, %bb.cu, %bb.cy, %bb.cx, %.thread
  %.4442 = phi i32 [ %.2440, %.thread ], [ %.3441.lcssa, %bb.cx ], [ %.3441.lcssa, %bb.cy ], [ %.3441.lcssa, %bb.cu ], [ %.3441.lcssa, %bb.ct ] ; 10 uses
  %.not485 = icmp eq ptr %.0434, null
  br i1 %.not485, label %bb.ei, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.oa = getelementptr i8, ptr %1, i64 80
  %i.ob = load ptr, ptr %i.oa, align 8
  %i.oc = getelementptr i8, ptr %i.ob, i64 53
  %i.od = load i16, ptr %i.oc, align 1
  %i.oe = and i16 %i.od, 8
  %i.of = icmp eq i16 %i.oe, 0
  %.b.i = load i1, ptr @gtp_version, align 1
  %or.cond.i = select i1 %i.of, i1 %.b.i, i1 false
  br i1 %or.cond.i, label %bb.db, label %bb.ec

bb.db:                                            ; preds = %bb.da
  %i.og = load ptr, ptr @session_table, align 8
  %i.oh = getelementptr i8, ptr %1, i64 20        ; 7 uses
  %i.oi = load i32, ptr %i.oh, align 4
  %i.oj = zext i32 %i.oi to i64
  %i.ok = inttoptr i64 %i.oj to ptr
  %i.ol = call ptr @wmem_map_lookup(ptr noundef %i.og, ptr noundef %i.ok)
  %i.om = ptrtoint ptr %i.ol to i64
  %i.on = and i64 %i.om, 4294967295
  %.not.i491 = icmp eq i64 %i.on, 0
  br i1 %.not.i491, label %bb.dc, label %bb.ec

bb.dc:                                            ; preds = %bb.db
  %i.oo = load i8, ptr %i.bm, align 1             ; 2 uses
  %i.op = and i8 %i.oo, -4
  %switch.i = icmp eq i8 %i.op, 16
  br i1 %switch.i, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.oq = load ptr, ptr %.0434, align 8
  %i.or = call i32 @wmem_list_count(ptr noundef %i.oq)
  %.not86.i = icmp eq i32 %i.or, 0
  br i1 %.not86.i, label %thread-pre-split.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.os = getelementptr i8, ptr %.0434, i64 8
  %i.ot = load ptr, ptr %i.os, align 8
  %i.ou = call i32 @wmem_list_count(ptr noundef %i.ot)
  %.not87.i = icmp eq i32 %i.ou, 0
  br i1 %.not87.i, label %thread-pre-split.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ov = load i32, ptr %i.oh, align 4
  %i.ow = load ptr, ptr @frame_map, align 8
  %i.ox = zext i32 %i.ov to i64
  %i.oy = inttoptr i64 %i.ox to ptr
  %i.oz = call i32 @wmem_map_foreach_remove(ptr noundef %i.ow, ptr noundef nonnull @frame_equal, ptr noundef %i.oy) ; 0 uses
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.df, %bb.de, %bb.dd
  %.pr.i = load i8, ptr %i.bm, align 1
  br label %bb.dg

bb.dg:                                            ; preds = %thread-pre-split.i, %bb.dc
  %i.pa = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.oo, %bb.dc ]
  switch i8 %i.pa, label %bb.dt [
    i8 16, label %bb.dh
    i8 17, label %bb.ec
    i8 26, label %bb.dk
  ]

bb.dh:                                            ; preds = %bb.dg
  %i.pb = load i32, ptr %i.oh, align 4
  %i.pc = load i32, ptr @gtp_session_count, align 4
  %i.pd = load ptr, ptr @session_table, align 8
  %i.pe = zext i32 %i.pb to i64
  %i.pf = inttoptr i64 %i.pe to ptr
  %i.pg = zext i32 %i.pc to i64
  %i.ph = inttoptr i64 %i.pg to ptr
  %i.pi = call ptr @wmem_map_insert(ptr noundef %i.pd, ptr noundef %i.pf, ptr noundef %i.ph) ; 0 uses
  %i.pj = getelementptr i8, ptr %.0434, i64 56    ; 2 uses
  %i.pk = load ptr, ptr %i.pj, align 8
  %.not99.i = icmp eq ptr %i.pk, null
  br i1 %.not99.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.pl = call ptr @wmem_file_scope()
  %i.pm = load ptr, ptr %i.pj, align 8
  %i.pn = call noalias ptr @wmem_strdup(ptr noundef %i.pl, ptr noundef %i.pm)
  %i.po = load ptr, ptr @session_imsi, align 8
  %i.pp = load i32, ptr @gtp_session_count, align 4
  %i.pq = zext i32 %i.pp to i64
  %i.pr = inttoptr i64 %i.pq to ptr
  %i.ps = call ptr @wmem_map_insert(ptr noundef %i.po, ptr noundef %i.pr, ptr noundef %i.pn) ; 0 uses
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.pt = load i32, ptr @gtp_session_count, align 4
  %i.pu = add i32 %i.pt, 1
  store i32 %i.pu, ptr @gtp_session_count, align 4
  br label %bb.ec

bb.dk:                                            ; preds = %bb.dg
  %i.pv = call zeroext i1 @is_deinterlacing_supported(ptr noundef %1)
  %i.pw = getelementptr i8, ptr %.0434, i64 24    ; 2 uses
  %i.px = getelementptr i8, ptr %.0434, i64 16
  %i.py = load i32, ptr %i.px, align 8            ; 2 uses
  br i1 %i.pv, label %bb.dl, label %bb.dp

bb.dl:                                            ; preds = %bb.dk
  %i.pz = call i32 @get_gtp_session_frame(ptr noundef byval(%struct._address) align 8 %i.pw, i32 noundef %i.py, i32 noundef 0, ptr noundef nonnull %i.a, i1 noundef zeroext true)
  %.not119.i = icmp eq i32 %i.pz, 0
  br i1 %.not119.i, label %bb.ec, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.qa = load ptr, ptr @session_table, align 8
  %i.qb = load i32, ptr %i.a, align 4
  %i.qc = zext i32 %i.qb to i64
  %i.qd = inttoptr i64 %i.qc to ptr
  %i.qe = call ptr @wmem_map_lookup(ptr noundef %i.qa, ptr noundef %i.qd)
  %i.qf = ptrtoint ptr %i.qe to i64
  %i.qg = and i64 %i.qf, 4294967295               ; 2 uses
  %.not97.i = icmp eq i64 %i.qg, 0
  br i1 %.not97.i, label %bb.ec, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.qh = load i32, ptr %i.oh, align 4
  %i.qi = load ptr, ptr @session_table, align 8
  %i.qj = zext i32 %i.qh to i64
  %i.qk = inttoptr i64 %i.qj to ptr
  %i.ql = inttoptr i64 %i.qg to ptr               ; 2 uses
  %i.qm = call ptr @wmem_map_insert(ptr noundef %i.qi, ptr noundef %i.qk, ptr noundef nonnull %i.ql) ; 0 uses
  %i.qn = getelementptr i8, ptr %.0434, i64 56    ; 2 uses
  %i.qo = load ptr, ptr %i.qn, align 8
  %.not98.i = icmp eq ptr %i.qo, null
  br i1 %.not98.i, label %bb.ec, label %bb.do

end_hunk_1
