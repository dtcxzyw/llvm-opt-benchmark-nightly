inline.NumInlined: 102
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@dissect_dch_control_frame:bb.a
  %i.dv = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_int_format(ptr noundef %0, i32 noundef %i.dt, ptr noundef %2, i32 noundef 8, i32 noundef 1, i32 noundef %i.du, ptr noundef nonnull @.str.568, i32 noundef %i.du, i32 noundef %i.dr) ; 0 uses
  br label %bb.x

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.dw = load i32, ptr @hf_fp_cfn_control, align 4
  %i.dx = call ptr @proto_tree_add_item_ret_uint(ptr noundef %0, i32 noundef %i.dw, ptr noundef %2, i32 noundef 2, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.dy = call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef 3)
  %i.dz = shl i8 %i.dy, 2
  %i.ea = load i32, ptr @hf_fp_timing_advance, align 4
  %i.eb = zext i8 %i.dz to i32                    ; 3 uses
  %i.ec = call ptr @proto_tree_add_uint(ptr noundef %0, i32 noundef %i.ea, ptr noundef %2, i32 noundef 3, i32 noundef 1, i32 noundef %i.eb)
  %i.ed = getelementptr i8, ptr %3, i64 8
  %i.ee = load i8, ptr %i.ed, align 8
  %i.ef = icmp eq i8 %i.ee, 7
  br i1 %i.ef, label %bb.t, label %dissect_dch_timing_advance.exit

bb.t:                                             ; preds = %bb.s
  %i.eg = call i32 @tvb_reported_length_remaining(ptr noundef %2, i32 noundef 4)
  %.not.i50 = icmp eq i32 %i.eg, 0
  br i1 %.not.i50, label %dissect_dch_timing_advance.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eh = call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef 4)
  %i.ei = and i8 %i.eh, 1
  %.not27.i = icmp eq i8 %i.ei, 0
  br i1 %.not27.i, label %dissect_dch_timing_advance.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ej = call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef 5)
  %i.ek = and i8 %i.ej, 1
  %i.el = shl nuw nsw i32 %i.eb, 1
  %i.em = zext nneg i8 %i.ek to i32
  %i.en = or disjoint i32 %i.el, %i.em
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ec, ptr noundef nonnull @.str.531, i32 noundef %i.en)
  br label %dissect_dch_timing_advance.exit

dissect_dch_timing_advance.exit:                  ; preds = %bb.s, %bb.t, %bb.u, %bb.v
  %i.eo = load ptr, ptr %i.l, align 8
  %i.ep = load i32, ptr %i.b, align 4
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.eo, i32 noundef 25, ptr noundef nonnull @.str.541, i32 noundef %i.ep, i32 noundef %i.eb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.x

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.eq = load i32, ptr @hf_fp_congestion_status, align 4
  %i.er = call ptr @proto_tree_add_bits_ret_val(ptr noundef %0, i32 noundef %i.eq, ptr noundef %2, i32 noundef 22, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef 0) ; 0 uses
  %i.es = load ptr, ptr %i.l, align 8
  %i.et = load i64, ptr %i.a, align 8
  %i.eu = trunc i64 %i.et to i32
  %i.ev = and i32 %i.eu, 65535
  %i.ew = call ptr @val_to_str_const(i32 noundef %i.ev, ptr noundef nonnull @congestion_status_vals, ptr noundef nonnull @.str.570)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.es, i32 noundef 25, ptr noundef nonnull @.str.569, ptr noundef %i.ew)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %dissect_dch_timing_advance.exit, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %dissect_dch_rx_timing_deviation.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_int_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_float(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_child_real_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn null_pointer_is_valid
declare void @proto_report_dissector_bug(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @verify_header_crc_edch(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = add i32 %4, -1                           ; 2 uses
  %i.b = tail call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef 1, i32 noundef %i.a)
  %i.c = getelementptr i8, ptr %1, i64 416
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = zext i32 %i.a to i64                     ; 2 uses
  %i.f = tail call ptr @tvb_memdup(ptr noundef %i.d, ptr noundef %i.b, i32 noundef 0, i64 noundef %i.e) ; 3 uses
  %i.g = load i8, ptr %i.f, align 1
  %i.h = and i8 %i.g, 15
  store i8 %i.h, ptr %i.f, align 1
  %i.i = tail call zeroext i16 @crc11_307_noreflect_noxor(ptr noundef %i.f, i64 noundef %i.e) ; 2 uses
  %i.j = icmp eq i16 %3, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %2, ptr noundef nonnull @.str.548)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = zext i16 %i.i to i32
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %2, ptr noundef nonnull @.str.549, i32 noundef %i.k)
  %i.l = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ei_fp_bad_header_checksum) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @get_mac_tsn_size() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @crc11_307_noreflect_noxor(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @heur_dissect_fp_hsdsch_type_2(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 20         ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr i8, ptr %1, i64 184
  %i.d = getelementptr i8, ptr %1, i64 160
  %i.e = getelementptr i8, ptr %1, i64 284
  %i.f = load i32, ptr %i.e, align 4
  %i.g = tail call i32 @conversation_pt_to_conversation_type(i32 noundef %i.f)
  %i.h = getelementptr i8, ptr %1, i64 292
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr i8, ptr %1, i64 288        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = tail call ptr @find_conversation(i32 noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, i32 noundef %i.g, i32 noundef %i.i, i32 noundef %i.k, i32 noundef 65536) ; 3 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr @proto_fp, align 4
  %i.n = tail call ptr @conversation_get_proto_data(ptr noundef nonnull %i.l, i32 noundef %i.m) ; 4 uses
  %.not113 = icmp eq ptr %i.n, null
  br i1 %.not113, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8
  switch i32 %i.p, label %.thread [
    i32 13, label %bb.d
    i32 0, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.n, i64 64
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.s, 2
  br i1 %i.t, label %.thread.sink.split, label %.thread

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0101 = phi ptr [ %i.n, %bb.c ], [ null, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.u = tail call ptr @wmem_file_scope()
  %i.v = load i32, ptr @proto_fp, align 4
  %i.w = tail call ptr @p_get_proto_data(ptr noundef %i.u, ptr noundef %1, i32 noundef %i.v, i32 noundef 0)
  %.not115 = icmp eq ptr %i.w, null
  br i1 %.not115, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.x = tail call i32 @tvb_captured_length(ptr noundef %0) ; 3 uses
  %i.y = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.z = icmp ult i32 %i.x, 11
  br i1 %i.z, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.ab = and i8 %i.aa, 1
  %.not116 = icmp eq i8 %i.ab, 0
  br i1 %.not116, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 7)
  %i.ad = and i8 %i.ac, 16
  %.not117 = icmp eq i8 %i.ad, 0
  br i1 %.not117, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2)
  %i.af = lshr i8 %i.ae, 3                        ; 2 uses
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = icmp eq i8 %i.af, 0
  br i1 %i.ah, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 3)
  %i.aj = and i8 %i.ai, 3
  %.not118 = icmp eq i8 %i.aj, 0
  br i1 %.not118, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.j, %bb.q
  %.09 = phi i32 [ %i.bj, %bb.q ], [ 0, %bb.j ]   ; 4 uses
  %.0968 = phi i32 [ %i.bi, %bb.q ], [ 0, %bb.j ]
  %.0977 = phi i32 [ %.198, %bb.q ], [ 6, %bb.j ]
  %i.ak = mul nuw nsw i32 %.09, 3
  %i.al = add nuw nsw i32 %i.ak, 8                ; 2 uses
  %.not119 = icmp ult i32 %i.al, %i.x
  br i1 %.not119, label %bb.k, label %.thread

bb.k:                                             ; preds = %.preheader
  %i.am = and i32 %.09, 1                         ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  %3 = mul nuw nsw i32 %.09, 25                   ; 2 uses
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.udiv = udiv i32 %3, 10
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ao = add nsw i32 %3, -25
  %i.ap = udiv i32 %i.ao, 10
  %i.aq = add nuw nsw i32 %i.ap, 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0103 = phi i32 [ %.udiv, %bb.l ], [ %i.aq, %bb.m ]
  %i.ar = and i32 %.0103, 65535                   ; 3 uses
  %i.as = add nuw nsw i32 %i.ar, 6
  %i.at = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.as, i32 noundef 0)
  %i.au = lshr i16 %i.at, 5                       ; 2 uses
  %i.av = add nuw nsw i32 %i.ar, 7
  %i.aw = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.av)
  %i.ax = add nuw nsw i32 %i.ar, 8
  %i.ay = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ax)
  %i.az = zext nneg i16 %i.au to i32
  %i.ba = icmp eq i16 %i.au, 0
  br i1 %i.ba, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = and i8 %i.aw, 15                        ; 2 uses
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.al)
  %i.be = and i8 %i.bd, 15
  %.not120 = icmp ne i8 %i.be, 0
  %i.bf = icmp ugt i8 %i.ay, -17
  %or.cond123 = select i1 %.not120, i1 true, i1 %i.bf
  br i1 %or.cond123, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = zext nneg i8 %i.bb to i32
  %i.bh = mul nuw nsw i32 %i.bg, %i.az
  %i.bi = add i32 %i.bh, %.0968                   ; 2 uses
  %.198.v = xor i32 %i.am, 3
  %.198 = add i32 %.198.v, %.0977                 ; 3 uses
  %i.bj = add nuw nsw i32 %.09, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.bj, %i.ag
  br i1 %exitcond.not, label %bb.r, label %.preheader, !llvm.loop !60

bb.r:                                             ; preds = %bb.q
  %i.bk = add i32 %.198, 2
  %i.bl = add i32 %i.bk, %i.bi                    ; 2 uses
  %i.bm = icmp ugt i32 %i.bl, %i.x
  %i.bn = icmp ugt i32 %i.bl, %i.y
  %or.cond = select i1 %i.bm, i1 true, i1 %i.bn
  br i1 %or.cond, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = trunc i32 %.198 to i16                  ; 2 uses
  %i.bp = tail call fastcc zeroext i1 @check_header_crc_for_heur(ptr noundef %0, i16 noundef zeroext %i.bo)
  br i1 %i.bp, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.bq = tail call fastcc zeroext i1 @check_payload_crc_for_heur(ptr noundef %0, i16 noundef zeroext %i.bo)
  br i1 %i.bq, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %.not122 = icmp eq ptr %.0101, null
  br i1 %.not122, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.br = tail call ptr @wmem_file_scope()
  %i.bs = tail call noalias dereferenceable_or_null(132696) ptr @wmem_alloc0(ptr noundef %i.br, i64 noundef 132696) #12 ; 2 uses
  tail call fastcc void @set_both_sides_umts_fp_conv_data(ptr noundef %1, ptr noundef %i.bs)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1102 = phi ptr [ %.0101, %bb.u ], [ %i.bs, %bb.v ] ; 11 uses
  store i32 0, ptr %.1102, align 8
  %i.bt = getelementptr i8, ptr %.1102, i64 4
  store i32 1, ptr %i.bt, align 4
  %i.bu = load i32, ptr %i.a, align 4             ; 2 uses
  %i.bv = getelementptr i8, ptr %.1102, i64 16
  store i32 %i.bu, ptr %i.bv, align 8
  %i.bw = getelementptr i8, ptr %.1102, i64 20
  store i32 %i.bu, ptr %i.bw, align 4
  %i.bx = getelementptr i8, ptr %.1102, i64 132684
  store i8 1, ptr %i.bx, align 4
  %i.by = tail call fastcc i32 @generate_ue_id_for_heur(ptr noundef %1)
  %i.bz = getelementptr i8, ptr %.1102, i64 56
  store i32 %i.by, ptr %i.bz, align 8
  %i.ca = getelementptr i8, ptr %.1102, i64 12
  store i32 3, ptr %i.ca, align 4
  %i.cb = tail call ptr @wmem_file_scope()
  %i.cc = getelementptr i8, ptr %.1102, i64 24
  %i.cd = getelementptr i8, ptr %1, i64 208
  tail call fastcc void @copy_address_wmem(ptr noundef %i.cb, ptr noundef %i.cc, ptr noundef %i.cd)
  %i.ce = load i32, ptr %i.j, align 8
  %i.cf = trunc i32 %i.ce to i16
  %i.cg = getelementptr i8, ptr %.1102, i64 48
  store i16 %i.cf, ptr %i.cg, align 8
  %i.ch = getelementptr i8, ptr %.1102, i64 8
  store i32 13, ptr %i.ch, align 8
  %i.ci = tail call ptr @wmem_file_scope()
  %i.cj = tail call noalias dereferenceable_or_null(12) ptr @wmem_alloc0(ptr noundef %i.ci, i64 noundef 12) #12 ; 3 uses
  store i32 2, ptr %i.cj, align 4
  %i.ck = getelementptr i8, ptr %i.cj, i64 5
  store i8 1, ptr %i.ck, align 1
  %i.cl = getelementptr i8, ptr %.1102, i64 64
  store ptr %i.cj, ptr %i.cl, align 8
  %i.cm = tail call ptr @find_or_create_conversation(ptr noundef %1)
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.d, %bb.w
  %.sink = phi ptr [ %i.cm, %bb.w ], [ %i.l, %bb.d ]
  %i.cn = load ptr, ptr @fp_handle, align 8
  tail call void @conversation_set_dissector(ptr noundef %.sink, ptr noundef %i.cn)
  %i.co = tail call fastcc i32 @dissect_fp_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %.preheader, %bb.n, %bb.o, %bb.p, %.thread.sink.split, %bb.c, %bb.d, %bb.t, %bb.s, %bb.r, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.1100 = phi i1 [ false, %bb.t ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ true, %.thread.sink.split ], [ false, %bb.s ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.n ], [ false, %.preheader ]
  ret i1 %.1100
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @heur_dissect_fp_edch_type_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 20         ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr i8, ptr %1, i64 184
  %i.d = getelementptr i8, ptr %1, i64 160
  %i.e = getelementptr i8, ptr %1, i64 284
  %i.f = load i32, ptr %i.e, align 4
  %i.g = tail call i32 @conversation_pt_to_conversation_type(i32 noundef %i.f)
  %i.h = getelementptr i8, ptr %1, i64 292
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr i8, ptr %1, i64 288        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = tail call ptr @find_conversation(i32 noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, i32 noundef %i.g, i32 noundef %i.i, i32 noundef %i.k, i32 noundef 65536) ; 3 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr @proto_fp, align 4
  %i.n = tail call ptr @conversation_get_proto_data(ptr noundef nonnull %i.l, i32 noundef %i.m) ; 4 uses
  %.not123 = icmp eq ptr %i.n, null
  br i1 %.not123, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8
  switch i32 %i.p, label %.thread [
    i32 17, label %bb.d
    i32 0, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.n, i64 64
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 100
  %i.t = load i8, ptr %i.s, align 4
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %.thread.sink.split, label %.thread

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0113 = phi ptr [ %i.n, %bb.c ], [ null, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.v = tail call ptr @wmem_file_scope()
  %i.w = load i32, ptr @proto_fp, align 4
  %i.x = tail call ptr @p_get_proto_data(ptr noundef %i.v, ptr noundef %1, i32 noundef %i.w, i32 noundef 0)
  %.not125 = icmp eq ptr %i.x, null
  br i1 %.not125, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.y = tail call i32 @tvb_reported_length(ptr noundef %0) ; 4 uses
  %i.z = icmp ult i32 %i.y, 9
  br i1 %i.z, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0)
  %i.ab = and i8 %i.aa, 1
  %.not126 = icmp eq i8 %i.ab, 0
  br i1 %.not126, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2) ; 3 uses
  %.not127 = icmp ult i8 %i.ac, 16
  br i1 %.not127, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %narrow = add nuw nsw i8 %i.ac, 1
  %i.ad = zext nneg i8 %narrow to i32
  %i.ae = icmp samesign ugt i8 %i.ac, 9
  br i1 %i.ae, label %.thread, label %.preheader2

.preheader2:                                      ; preds = %bb.i, %bb.n
  %.010611 = phi i32 [ %i.bg, %bb.n ], [ 0, %bb.i ]
  %.010810 = phi i32 [ %i.bf, %bb.n ], [ 4, %bb.i ] ; 3 uses
  %.01119 = phi i32 [ %i.az, %bb.n ], [ 0, %bb.i ]
  %.01158 = phi i32 [ %i.bc, %bb.n ], [ 4, %bb.i ]
  %i.af = add i32 %.010810, 3
  %.not129 = icmp ult i32 %i.af, %i.y
  br i1 %.not129, label %bb.j, label %.thread

bb.j:                                             ; preds = %.preheader2
  %i.ag = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.010810)
  %i.ah = and i8 %i.ag, 7
  %i.ai = icmp samesign ugt i8 %i.ah, 4
  br i1 %i.ai, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = add i32 %.010810, 1                     ; 4 uses
  %i.ak = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.aj)
  %i.al = lshr i8 %i.ak, 4                        ; 3 uses
end_hunk_0
