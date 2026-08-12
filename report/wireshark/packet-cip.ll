inline.NumInlined: 204
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 18
begin_hunk_0_@dissect_cip_attribute:bb.a
  %exitcond.not = icmp eq i32 %i.v, %6
  br i1 %exitcond.not, label %dissect_cip_string_type.exit, label %.lr.ph125, !llvm.loop !14

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.1123 = phi i32 [ %i.aa, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.w = load ptr, ptr %i.i, align 8
  %i.x = load i32, ptr %i.w, align 4
  %i.y = add i32 %.1123, %5
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.x, ptr noundef %3, i32 noundef %i.y, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.aa = add i32 %.1123, 2                       ; 3 uses
  %i.ab = icmp slt i32 %i.aa, %6
  br i1 %i.ab, label %.lr.ph, label %dissect_cip_string_type.exit, !llvm.loop !15

bb.i:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.ac = load i32, ptr %i.j, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ac, ptr noundef %3, i32 noundef %5, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %dissect_cip_string_type.exit

bb.j:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.ae = load i32, ptr %i.j, align 4
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ae, ptr noundef %3, i32 noundef %5, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  br label %dissect_cip_string_type.exit

bb.k:                                             ; preds = %bb.e
  %i.ag = load i32, ptr %i.j, align 4
  %i.ah = tail call i32 @tvb_reported_length_remaining(ptr noundef %3, i32 noundef %5) ; 2 uses
  %i.ai = tail call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %5)
  %i.aj = zext i8 %i.ai to i32                    ; 3 uses
  %.not = icmp sgt i32 %i.ah, %i.aj
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = tail call ptr @expert_add_info(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @ei_mal_missing_string_data) ; 0 uses
  br label %dissect_cip_string_type.exit

bb.m:                                             ; preds = %bb.k
  %i.al = add nuw nsw i32 %i.aj, 1
  %i.am = add i32 %5, 1
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ag, ptr noundef %3, i32 noundef %i.am, i32 noundef %i.aj, i32 noundef 10) ; 0 uses
  br label %dissect_cip_string_type.exit

bb.n:                                             ; preds = %bb.e
  %i.ao = load i32, ptr %i.j, align 4
  %i.ap = tail call i32 @tvb_reported_length_remaining(ptr noundef %3, i32 noundef %5) ; 2 uses
  %i.aq = tail call zeroext i16 @tvb_get_letohs(ptr noundef %3, i32 noundef %5)
  %i.ar = zext i16 %i.aq to i32                   ; 2 uses
  %i.as = add nuw nsw i32 %i.ar, 2                ; 2 uses
  %i.at = icmp slt i32 %i.ap, %i.as
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = tail call ptr @expert_add_info(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @ei_mal_missing_string_data) ; 0 uses
  br label %dissect_cip_string_type.exit

bb.p:                                             ; preds = %bb.n
  %i.av = add i32 %5, 2
  %i.aw = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.ao, ptr noundef %3, i32 noundef %i.av, i32 noundef %i.ar, i32 noundef 10) ; 0 uses
  br label %dissect_cip_string_type.exit

.thread121:                                       ; preds = %bb.b
  %i.ax = tail call i32 %i.g(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %5, i32 noundef %6) ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  %spec.select = select i1 %i.ay, i32 %6, i32 %i.ax
  br label %dissect_cip_string_type.exit

bb.q:                                             ; preds = %bb.e
  %i.az = load i32, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.ba = add i32 %5, 4
  %i.bb = tail call zeroext i16 @tvb_get_letohs(ptr noundef %3, i32 noundef %i.ba) ; 2 uses
  %i.bc = tail call i32 @tvb_get_letohl(ptr noundef %3, i32 noundef %5) ; 3 uses
  %i.bd = icmp ne i16 %i.bb, 0
  %i.be = icmp ne i32 %i.bc, 0
  %or.cond.i = select i1 %i.bd, i1 true, i1 %i.be
  br i1 %or.cond.i, label %bb.r, label %dissect_cip_date_and_time.exit

bb.r:                                             ; preds = %bb.q
  %i.bf = zext i16 %i.bb to i64
  %i.bg = mul nuw nsw i64 %i.bf, 86400
  %i.bh = add nuw nsw i64 %i.bg, 63072000
  %i.bi = udiv i32 %i.bc, 1000
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = add nuw nsw i64 %i.bh, %i.bj
  %i.bl = urem i32 %i.bc, 1000
  %i.bm = mul nuw nsw i32 %i.bl, 1000000
  br label %dissect_cip_date_and_time.exit

dissect_cip_date_and_time.exit:                   ; preds = %bb.q, %bb.r
  %.sink13.i = phi i64 [ %i.bk, %bb.r ], [ 0, %bb.q ]
  %.sink.i = phi i32 [ %i.bm, %bb.r ], [ 0, %bb.q ]
  store i64 %.sink13.i, ptr %9, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sink.i, ptr %i.bn, align 8
  %i.bo = call ptr @proto_tree_add_time(ptr noundef %1, i32 noundef %i.az, ptr noundef %3, i32 noundef %5, i32 noundef 6, ptr noundef nonnull %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %dissect_cip_string_type.exit

bb.s:                                             ; preds = %bb.e
  %i.bp = load i32, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.bq, align 8
  %i.br = tail call i64 @tvb_get_letoh64(ptr noundef %3, i32 noundef %5) ; 2 uses
  %i.bs = udiv i64 %i.br, 1000000000
  store i64 %i.bs, ptr %8, align 8
  %i.bt = urem i64 %i.br, 1000000000
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  store i32 %i.bu, ptr %i.bq, align 8
  %i.bv = call ptr @proto_tree_add_time(ptr noundef %1, i32 noundef %i.bp, ptr noundef %3, i32 noundef %5, i32 noundef 8, ptr noundef nonnull %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %dissect_cip_string_type.exit

bb.t:                                             ; preds = %bb.e
  %i.bw = load i32, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.bx, align 8
  %i.by = tail call i64 @tvb_get_letoh64(ptr noundef %3, i32 noundef %5) ; 2 uses
  %i.bz = udiv i64 %i.by, 1000000
  store i64 %i.bz, ptr %7, align 8
  %i.ca = urem i64 %i.by, 1000000
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = mul nuw nsw i32 %i.cb, 1000
  store i32 %i.cc, ptr %i.bx, align 8
  %i.cd = call ptr @proto_tree_add_time(ptr noundef %1, i32 noundef %i.bw, ptr noundef %3, i32 noundef %5, i32 noundef 8, ptr noundef nonnull %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %dissect_cip_string_type.exit

bb.u:                                             ; preds = %bb.e
  %i.ce = load i32, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.cf = tail call zeroext i16 @tvb_get_letohs(ptr noundef %3, i32 noundef %5) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.cg = zext i16 %i.cf to i64
  %i.ch = mul nuw nsw i64 %i.cg, 86400
  %i.ci = add nuw nsw i64 %i.ch, 63072000
  store i64 %i.ci, ptr %i.b, align 8
  %i.cj = call ptr @gmtime(ptr noundef nonnull %i.b) #16 ; 2 uses
  %.not.i = icmp eq ptr %i.cj, null
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = call i64 @strftime(ptr noundef nonnull %i.a, i64 noundef 20, ptr noundef nonnull @.str.3241, ptr noundef nonnull %i.cj) #16 ; 0 uses
  br label %dissect_cip_date.exit

bb.w:                                             ; preds = %bb.u
  %i.cl = call i64 @g_strlcpy(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.3242, i64 noundef 20) ; 0 uses
  br label %dissect_cip_date.exit

dissect_cip_date.exit:                            ; preds = %bb.v, %bb.w
  %i.cm = zext i16 %i.cf to i32
  %i.cn = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.ce, ptr noundef %3, i32 noundef %5, i32 noundef 2, i32 noundef %i.cm, ptr noundef nonnull @.str.235, ptr noundef nonnull %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %dissect_cip_string_type.exit

bb.x:                                             ; preds = %bb.e
  %i.co = tail call i32 @tvb_get_letohl(ptr noundef %3, i32 noundef %5) ; 3 uses
  %i.cp = sdiv i32 %i.co, 3600000
  %i.cq = srem i32 %i.co, 3600000                 ; 2 uses
  %i.cr = sdiv i32 %i.cq, 60000
  %i.cs = srem i32 %i.cq, 60000                   ; 2 uses
  %i.ct = sdiv i32 %i.cs, 1000
  %i.cu = srem i32 %i.cs, 1000
  %i.cv = load ptr, ptr %i.i, align 8
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %1, i32 noundef %i.cw, ptr noundef %3, i32 noundef %5, i32 noundef 4, i32 noundef %i.co, ptr noundef nonnull @.str.176, i32 noundef %i.cp, i32 noundef %i.cr, i32 noundef %i.ct, i32 noundef %i.cu) ; 0 uses
  br label %dissect_cip_string_type.exit

bb.y:                                             ; preds = %bb.e
  %i.cy = load i32, ptr %i.j, align 4
  %i.cz = tail call i32 @tvb_reported_length_remaining(ptr noundef %3, i32 noundef %5) ; 2 uses
  %i.da = tail call zeroext i16 @tvb_get_letohs(ptr noundef %3, i32 noundef %5)
  %i.db = zext i16 %i.da to i32
  %i.dc = shl nuw nsw i32 %i.db, 1                ; 2 uses
  %i.dd = add nuw nsw i32 %i.dc, 2                ; 2 uses
  %i.de = icmp slt i32 %i.cz, %i.dd
  br i1 %i.de, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.df = tail call ptr @expert_add_info(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @ei_mal_missing_string_data) ; 0 uses
  br label %dissect_cip_string_type.exit

bb.aa:                                            ; preds = %bb.y
  %i.dg = add i32 %5, 2
  %i.dh = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.cy, ptr noundef %3, i32 noundef %i.dg, i32 noundef %i.dc, i32 noundef -2147483642) ; 0 uses
  br label %dissect_cip_string_type.exit

bb.ab:                                            ; preds = %bb.e
  %i.di = tail call fastcc i32 @dissect_cip_stringi(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %5, ptr noundef nonnull @.str.177)
  br label %dissect_cip_string_type.exit

bb.ac:                                            ; preds = %bb.e
  %i.dj = load i32, ptr %i.j, align 4
  %i.dk = tail call i32 @tvb_reported_length_remaining(ptr noundef %3, i32 noundef %5) ; 3 uses
  %i.dl = tail call zeroext i16 @tvb_get_letohs(ptr noundef %3, i32 noundef %5) ; 2 uses
  %i.dm = zext i16 %i.dl to i32
  %i.dn = add i32 %5, 2
  %i.do = tail call zeroext i16 @tvb_get_letohs(ptr noundef %3, i32 noundef %i.dn)
  %i.dp = zext i16 %i.do to i32
  %i.dq = mul nuw nsw i32 %i.dp, %i.dm            ; 2 uses
  switch i16 %i.dl, label %dissect_cip_string_type.exit [
    i16 1, label %bb.af
    i16 2, label %bb.ad
    i16 4, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.1.i = phi i32 [ 10, %bb.ac ], [ -2147483640, %bb.ae ], [ -2147483642, %bb.ad ]
  %i.dr = add nuw i32 %i.dq, 4                    ; 2 uses
  %i.ds = icmp slt i32 %i.dk, %i.dr
  br i1 %i.ds, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dt = tail call ptr @expert_add_info(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @ei_mal_missing_string_data) ; 0 uses
  br label %dissect_cip_string_type.exit

bb.ah:                                            ; preds = %bb.af
  %i.du = add i32 %5, 4
  %i.dv = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.dj, ptr noundef %3, i32 noundef %i.du, i32 noundef %i.dq, i32 noundef %.1.i) ; 0 uses
  br label %dissect_cip_string_type.exit

bb.ai:                                            ; preds = %bb.e
  %i.dw = tail call ptr @expert_add_info(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @ei_proto_unsupported_datatype) ; 0 uses
  br label %dissect_cip_string_type.exit

dissect_cip_string_type.exit:                     ; preds = %.lr.ph, %.lr.ph125, %.preheader, %bb.h, %bb.ah, %bb.ag, %bb.ac, %bb.aa, %bb.z, %bb.p, %bb.o, %bb.m, %bb.l, %.thread121, %bb.ai, %bb.ab, %bb.x, %dissect_cip_date.exit, %bb.t, %bb.s, %dissect_cip_date_and_time.exit, %bb.j, %bb.i, %bb.g, %bb.f
  %.0 = phi i32 [ %6, %bb.ai ], [ 1, %bb.f ], [ 2, %bb.g ], [ %i.cz, %bb.z ], [ %i.dk, %bb.ag ], [ 4, %bb.i ], [ 8, %bb.j ], [ %i.di, %bb.ab ], [ %i.ah, %bb.l ], [ %6, %bb.h ], [ %spec.select, %.thread121 ], [ 6, %dissect_cip_date_and_time.exit ], [ 8, %bb.s ], [ 8, %bb.t ], [ 2, %dissect_cip_date.exit ], [ 4, %bb.x ], [ %i.ap, %bb.o ], [ %i.al, %bb.m ], [ %i.as, %bb.p ], [ %i.dd, %bb.aa ], [ %i.dk, %bb.ac ], [ %i.dr, %bb.ah ], [ %6, %.lr.ph125 ], [ 0, %.preheader ], [ %i.aa, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: noreturn null_pointer_is_valid
declare void @proto_report_dissector_bug(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef i32 @dissect_cip_stringi(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4
  %i.b = load i32, ptr @hf_stringi, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.b, ptr noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0) ; 4 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.c, ptr noundef nonnull @.str.235, ptr noundef nonnull %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.c, ptr noundef nonnull @.str.177)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = load i32, ptr @ett_stringi, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 2 uses
  %i.f = load i32, ptr @hf_stringi_number_of_strings, align 4
  %i.g = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.e, i32 noundef %i.f, ptr noundef %2, i32 noundef %3, i32 noundef 1, i32 noundef -2147483648, ptr noundef nonnull %i.a) ; 0 uses
  %i.h = add i32 %3, 1                            ; 2 uses
  %i.i = load i32, ptr %i.a, align 4
  %.not59 = icmp eq i32 %i.i, 0
  br i1 %.not59, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %.0.lcssa = phi i32 [ %i.h, %bb.d ], [ %i.ad, %bb.f ]
  %i.j = sub i32 %.0.lcssa, %3                    ; 2 uses
  call void @proto_item_set_len(ptr noundef %i.c, i32 noundef %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %i.j

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.058 = phi i32 [ %i.ad, %bb.f ], [ %i.h, %bb.d ] ; 6 uses
  %.05557 = phi i32 [ %i.m, %bb.f ], [ 0, %bb.d ]
  %i.k = load i32, ptr @hf_stringi_string, align 4
  %i.l = call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.k, ptr noundef %2, i32 noundef %.058, i32 noundef 0, i32 noundef 0) ; 5 uses
  %i.m = add nuw i32 %.05557, 1                   ; 3 uses
  call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.l, ptr noundef nonnull @.str.3243, i32 noundef %i.m)
  %i.n = load i32, ptr @ett_stringi_entry, align 4
  %i.o = call ptr @proto_item_add_subtree(ptr noundef %i.l, i32 noundef %i.n) ; 4 uses
  %i.p = load i32, ptr @hf_stringi_language_char, align 4
  %i.q = call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.p, ptr noundef %2, i32 noundef %.058, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.r = add i32 %.058, 3                         ; 2 uses
  %i.s = call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %i.r) ; 2 uses
  %i.t = load i32, ptr @hf_stringi_data_type, align 4
  %i.u = call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.t, ptr noundef %2, i32 noundef %i.r, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.v = zext i8 %i.s to i32                      ; 2 uses
  switch i8 %i.s, label %bb.e [
    i8 -48, label %bb.f
    i8 -43, label %bb.f
    i8 -39, label %bb.f
    i8 -38, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph
  %i.w = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %0, ptr noundef %i.l, ptr noundef nonnull @ei_cip_stringi_invalid_type, ptr noundef nonnull @.str.3244, i32 noundef %i.v) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %bb.e
  %i.x = add i32 %.058, 4
  %i.y = load i32, ptr @hf_stringi_char_set, align 4
  %i.z = call ptr @proto_tree_add_item(ptr noundef %i.o, i32 noundef %i.y, ptr noundef %2, i32 noundef %i.x, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.aa = add i32 %.058, 6                        ; 2 uses
  %i.ab = load i32, ptr @hf_stringi_international_string, align 4
  %i.ac = call i32 @dissect_cip_string_type(ptr noundef %0, ptr noundef %i.o, ptr noundef %i.l, ptr noundef %2, i32 noundef %i.aa, i32 noundef %i.ab, i32 noundef %i.v)
  %i.ad = add i32 %i.ac, %i.aa                    ; 3 uses
  %i.ae = sub i32 %i.ad, %.058
  call void @proto_item_set_len(ptr noundef %i.l, i32 noundef %i.ae)
  %i.af = load i32, ptr %i.a, align 4
  %i.ag = icmp ult i32 %i.m, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !16
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden range(i32 0, 131073) i32 @dissect_cip_get_attribute_list_req(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %4)
  %i.c = icmp ult i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %3, ptr noundef nonnull @ei_mal_serv_gal) ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.e = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %4) ; 2 uses
  %i.f = zext i16 %i.e to i32                     ; 3 uses
  %i.g = load i32, ptr @hf_cip_sc_get_attr_list_attr_count, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef %4, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  %i.i = add i32 %4, 2                            ; 2 uses
  %i.j = shl nuw nsw i32 %i.f, 1                  ; 2 uses
  %i.k = load i32, ptr @ett_cip_get_attribute_list, align 4
  %i.l = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %i.i, i32 noundef %i.j, i32 noundef %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.178)
  %.not42 = icmp eq i16 %i.e, 0
  br i1 %.not42, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr i8, ptr %5, i64 4
  %i.n = getelementptr i8, ptr %5, i64 12
  %i.o = add nsw i32 %i.f, -1
  br label %bb.e

bb.d:                                             ; preds = %bb.g
  %i.p = add nuw nsw i32 %.03640, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.p, %i.f
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !17

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.03541 = phi i32 [ %i.i, %.lr.ph ], [ %i.z, %bb.d ] ; 3 uses
  %.03640 = phi i32 [ 0, %.lr.ph ], [ %i.p, %bb.d ] ; 2 uses
  %i.q = call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %.03541)
  %i.r = zext i16 %i.q to i32
  %i.s = load i32, ptr @hf_cip_attribute16, align 4
  %i.t = call ptr @proto_tree_add_item(ptr noundef %i.l, i32 noundef %i.s, ptr noundef %0, i32 noundef %.03541, i32 noundef 2, i32 noundef -2147483648)
  %i.u = load i32, ptr %i.m, align 4
  %i.v = load i32, ptr %i.n, align 4
  %i.w = call ptr @cip_get_attribute(i32 noundef %i.u, i32 noundef %i.v, i32 noundef %i.r) ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.t, ptr noundef nonnull @.str.153, ptr noundef %i.y)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = add i32 %.03541, 2                       ; 2 uses
  %i.aa = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.z)
  %i.ab = icmp ult i32 %i.aa, 2
  %i.ac = icmp slt i32 %.03640, %i.o
  %or.cond = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.h, label %bb.d

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.a, align 8
  %i.ae = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ad, ptr noundef nonnull @ei_mal_serv_gal_count) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.h
  %i.af = add nuw nsw i32 %i.j, 2
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.af, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef i32 @dissect_cip_set_attribute_list_req(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #3 {
end_hunk_0
