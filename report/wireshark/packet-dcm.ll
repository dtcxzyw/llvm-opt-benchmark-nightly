inline.NumInlined: 60
inline.NumDeleted: 36
begin_hunk_0_@dissect_dcm_tag_value:sub_0

bb.k:                                             ; preds = %.peel.begin
  %i.dm = add i8 %i.dl, -32
  %or.cond11.peel = icmp ult i8 %i.dm, 95
  br i1 %or.cond11.peel, label %.peel.next, label %.split

.split:                                           ; preds = %bb.k
  %i.dn = icmp eq i32 %i.di, %i.dc
  %i.do = icmp eq i8 %i.dl, 0
  %or.cond14.peel = and i1 %i.dn, %i.do           ; 2 uses
  %.0265..peel = select i1 %or.cond14.peel, i1 %i.dj, i1 false
  %.neg = sext i1 %or.cond14.peel to i32
  br i1 %.0265..peel, label %bb.l, label %bb.m

.peel.next:                                       ; preds = %bb.k, %.peel.begin, %.peel.begin, %.peel.begin
  br i1 %i.dj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.split, %.peel.next
  %.1267.peel.neg574 = phi i32 [ %.neg, %.split ], [ 0, %.peel.next ]
  %i.dp = getelementptr i8, ptr %1, i64 416
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = add i32 %.1267.peel.neg574, %8
  %i.ds = tail call ptr @tvb_format_text(ptr noundef %i.dq, ptr noundef %0, i32 noundef %4, i32 noundef %i.dr) ; 2 uses
  %i.dt = load i32, ptr @hf_dcm_tag_value_str, align 4
  %i.du = tail call ptr @proto_tree_add_string(ptr noundef %2, i32 noundef %i.dt, ptr noundef %0, i32 noundef %4, i32 noundef %8, ptr noundef %i.ds) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %.split, %.peel.next
  %i.dv = load i32, ptr @hf_dcm_tag_value_byte, align 4
  %i.dw = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %2, i32 noundef %i.dv, ptr noundef %0, i32 noundef %4, i32 noundef %8, ptr noundef null, ptr noundef nonnull @.str.306, ptr noundef nonnull @.str.307) ; 0 uses
  %i.dx = getelementptr i8, ptr %1, i64 416
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = tail call noalias ptr @wmem_strdup(ptr noundef %i.dy, ptr noundef nonnull @.str.307)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %storemerge = phi ptr [ %i.dz, %bb.m ], [ %i.ds, %bb.l ]
  store ptr %storemerge, ptr %10, align 8
  br label %bb.aj

.tail358:                                         ; preds = %.tail278
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = icmp eq i8 %i.eb, 84
  br i1 %i.ec, label %.lr.ph, label %.tail382.thread

.lr.ph:                                           ; preds = %.tail358
  %i.ed = tail call i32 @llvm.umax.i32(i32 range(i32 1, 0) %8, i32 5)
  %.0.i = lshr i32 %i.ed, 2
  %i.ee = getelementptr i8, ptr %1, i64 416
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %.0262387 = phi i32 [ 0, %.lr.ph ], [ %i.es, %bb.o ] ; 2 uses
  %.0264386 = phi ptr [ @.str.260, %.lr.ph ], [ %i.er, %bb.o ]
  %i.ef = shl nuw i32 %.0262387, 2
  %i.eg = add i32 %i.ef, %4                       ; 3 uses
  %i.eh = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.eg, i32 noundef %i.g)
  %i.ei = add i32 %i.eg, 2
  %i.ej = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.ei, i32 noundef %i.g)
  %i.ek = load i32, ptr @hf_dcm_tag_value_32u, align 4
  %i.el = zext i16 %i.eh to i32                   ; 3 uses
  %i.em = shl nuw i32 %i.el, 16
  %i.en = zext i16 %i.ej to i32                   ; 3 uses
  %i.eo = or disjoint i32 %i.em, %i.en
  %i.ep = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.ek, ptr noundef %0, i32 noundef %i.eg, i32 noundef 4, i32 noundef %i.eo, ptr noundef nonnull @.str.309, i32 noundef %i.el, i32 noundef %i.en) ; 0 uses
  %i.eq = load ptr, ptr %i.ee, align 8
  %i.er = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.eq, ptr noundef nonnull @.str.310, ptr noundef %.0264386, i32 noundef %i.el, i32 noundef %i.en) ; 2 uses
  %i.es = add nuw nsw i32 %.0262387, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.es, %.0.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.o
  store ptr %i.er, ptr %10, align 8
  br label %bb.aj

.tail362:                                         ; preds = %sub_0
  %i.et = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = icmp eq i8 %i.eu, 76
  br i1 %i.ev, label %bb.p, label %.tail366

bb.p:                                             ; preds = %.tail362
  %i.ew = tail call float @tvb_get_ieee_float(ptr noundef %0, i32 noundef %4, i32 noundef %i.g)
  %i.ex = load i32, ptr @hf_dcm_tag_value_byte, align 4
  %i.ey = fpext float %i.ew to double             ; 2 uses
  %i.ez = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %2, i32 noundef %i.ex, ptr noundef %0, i32 noundef %4, i32 noundef 4, ptr noundef null, ptr noundef nonnull @.str.312, double noundef %i.ey) ; 0 uses
  %i.fa = getelementptr i8, ptr %1, i64 416
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.fb, ptr noundef nonnull @.str.312, double noundef %i.ey)
  store ptr %i.fc, ptr %10, align 8
  br label %bb.aj

.tail366:                                         ; preds = %.tail362
  %i.fd = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = icmp eq i8 %i.fe, 68
  br i1 %i.ff, label %bb.q, label %.tail382.thread

bb.q:                                             ; preds = %.tail366
  %i.fg = tail call double @tvb_get_ieee_double(ptr noundef %0, i32 noundef %4, i32 noundef %i.g) ; 2 uses
  %i.fh = load i32, ptr @hf_dcm_tag_value_byte, align 4
  %i.fi = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %2, i32 noundef %i.fh, ptr noundef %0, i32 noundef %4, i32 noundef 8, ptr noundef null, ptr noundef nonnull @.str.312, double noundef %i.fg) ; 0 uses
  %i.fj = getelementptr i8, ptr %1, i64 416
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.fk, ptr noundef nonnull @.str.312, double noundef %i.fg)
  store ptr %i.fl, ptr %10, align 8
  br label %bb.aj

.tail370:                                         ; preds = %.tail318
  %i.fm = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = icmp eq i8 %i.fn, 76
  br i1 %i.fo, label %bb.r, label %.tail374

bb.r:                                             ; preds = %.tail370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.fp = load i32, ptr @hf_dcm_tag_value_32s, align 4
  %i.fq = call ptr @proto_tree_add_item_ret_int(ptr noundef %2, i32 noundef %i.fp, ptr noundef %0, i32 noundef %4, i32 noundef 4, i32 noundef %i.g, ptr noundef nonnull %i.a) ; 0 uses
  %i.fr = getelementptr i8, ptr %1, i64 416
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = load i32, ptr %i.a, align 4
  %i.fu = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.fs, ptr noundef nonnull @.str.315, i32 noundef %i.ft)
  store ptr %i.fu, ptr %10, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.aj

.tail374:                                         ; preds = %.tail370
  %i.fv = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.fw = load i8, ptr %i.fv, align 1
  %i.fx = icmp eq i8 %i.fw, 83
  br i1 %i.fx, label %bb.s, label %.tail382.thread

bb.s:                                             ; preds = %.tail374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.fy = load i32, ptr @hf_dcm_tag_value_16s, align 4
  %i.fz = call ptr @proto_tree_add_item_ret_int(ptr noundef %2, i32 noundef %i.fy, ptr noundef %0, i32 noundef %4, i32 noundef 2, i32 noundef %i.g, ptr noundef nonnull %i.b) ; 0 uses
  %i.ga = getelementptr i8, ptr %1, i64 416
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = load i32, ptr %i.b, align 4
  %i.gd = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.gb, ptr noundef nonnull @.str.315, i32 noundef %i.gc)
  store ptr %i.gd, ptr %10, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.aj

.tail378:                                         ; preds = %.tail354
  %i.ge = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.gf = load i8, ptr %i.ge, align 1
  %i.gg = icmp eq i8 %i.gf, 76
  br i1 %i.gg, label %bb.t, label %.tail382

bb.t:                                             ; preds = %.tail378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.gh = load i32, ptr @hf_dcm_tag_value_32u, align 4
  %i.gi = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.gh, ptr noundef %0, i32 noundef %4, i32 noundef 4, i32 noundef %i.g, ptr noundef nonnull %i.c) ; 0 uses
  %i.gj = getelementptr i8, ptr %1, i64 416
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = load i32, ptr %i.c, align 4
  %i.gm = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.gk, ptr noundef nonnull @.str.317, i32 noundef %i.gl)
  store ptr %i.gm, ptr %10, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.aj

.tail382:                                         ; preds = %.tail378
  %i.gn = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.go = load i8, ptr %i.gn, align 1
  %i.gp = icmp eq i8 %i.go, 83
  br i1 %i.gp, label %bb.u, label %.tail382.thread

bb.u:                                             ; preds = %.tail382
  %i.gq = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %4, i32 noundef %i.g) ; 11 uses
  %i.gr = icmp eq i16 %5, 0                       ; 3 uses
  %i.gs = icmp eq i16 %6, 256
  %or.cond17 = and i1 %i.gr, %i.gs
  br i1 %or.cond17, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gt = tail call ptr @wmem_file_scope()
  %i.gu = zext i16 %i.gq to i32                   ; 2 uses
  %i.gv = tail call ptr @val_to_str_const(i32 noundef %i.gu, ptr noundef nonnull @dcm_cmd_vals, ptr noundef nonnull @.str.319)
  %i.gw = tail call noalias ptr @wmem_strdup(ptr noundef %i.gt, ptr noundef %i.gv) ; 2 uses
  %i.gx = getelementptr i8, ptr %3, i64 80
  store ptr %i.gw, ptr %i.gx, align 8
  store ptr %i.gw, ptr %10, align 8
  br label %.thread.thread

bb.w:                                             ; preds = %bb.u
  %i.gy = icmp eq i16 %6, 2304
  %or.cond20 = and i1 %i.gr, %i.gy
  br i1 %or.cond20, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.gz = tail call fastcc ptr @dcm_rsp2str(i16 noundef zeroext %i.gq) ; 3 uses
  %i.ha = getelementptr i8, ptr %1, i64 416
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = zext i16 %i.gq to i32                   ; 3 uses
  %i.hd = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.hb, ptr noundef nonnull @.str.320, ptr noundef %i.gz, i32 noundef %i.hc)
  store ptr %i.hd, ptr %10, align 8
  %i.he = and i32 %i.hc, 65280
  %i.hf = icmp eq i32 %i.he, 65280
  br i1 %i.hf, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not = icmp eq i16 %i.gq, 0
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sink672 = phi i64 [ 105, %bb.x ], [ 104, %bb.y ]
  %i.hg = getelementptr i8, ptr %3, i64 %.sink672
  store i8 1, ptr %i.hg, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.hh = tail call ptr @wmem_file_scope()
  %i.hi = tail call noalias ptr @wmem_strdup(ptr noundef %i.hh, ptr noundef %i.gz)
  %i.hj = getelementptr i8, ptr %3, i64 88
  store ptr %i.hi, ptr %i.hj, align 8
  %i.hk = icmp ne ptr %i.gz, null
  br label %.thread.thread

bb.ab:                                            ; preds = %bb.w
  %i.hl = getelementptr i8, ptr %1, i64 416
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = zext i16 %i.gq to i32                   ; 9 uses
  %i.ho = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.hm, ptr noundef nonnull @.str.317, i32 noundef %i.hn)
  store ptr %i.ho, ptr %10, align 8
  br i1 %i.gr, label %.thread, label %.thread.thread

.thread:                                          ; preds = %bb.ab
  switch i16 %6, label %.thread.thread [
    i16 272, label %bb.ac
    i16 288, label %bb.ad
    i16 4128, label %bb.ae
    i16 4129, label %bb.af
    i16 4130, label %bb.ag
    i16 4131, label %bb.ah
  ]

bb.ac:                                            ; preds = %.thread
  %i.hp = getelementptr i8, ptr %3, i64 106
  store i16 %i.gq, ptr %i.hp, align 2
  br label %.thread.thread

bb.ad:                                            ; preds = %.thread
  %i.hq = getelementptr i8, ptr %3, i64 108
  store i16 %i.gq, ptr %i.hq, align 4
  br label %.thread.thread

bb.ae:                                            ; preds = %.thread
  %i.hr = getelementptr i8, ptr %3, i64 110
  store i16 %i.gq, ptr %i.hr, align 2
  br label %.thread.thread

bb.af:                                            ; preds = %.thread
  %i.hs = getelementptr i8, ptr %3, i64 112
  store i16 %i.gq, ptr %i.hs, align 8
  br label %.thread.thread

bb.ag:                                            ; preds = %.thread
  %i.ht = getelementptr i8, ptr %3, i64 114
  store i16 %i.gq, ptr %i.ht, align 2
  br label %.thread.thread

bb.ah:                                            ; preds = %.thread
  %i.hu = getelementptr i8, ptr %3, i64 116
  store i16 %i.gq, ptr %i.hu, align 4
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.aa, %bb.v, %.thread, %bb.ac, %bb.ae, %bb.ag, %bb.ah, %bb.af, %bb.ad, %bb.ab
  %.pre-phi = phi i32 [ %i.hc, %bb.aa ], [ %i.gu, %bb.v ], [ %i.hn, %.thread ], [ %i.hn, %bb.ac ], [ %i.hn, %bb.ae ], [ %i.hn, %bb.ag ], [ %i.hn, %bb.ah ], [ %i.hn, %bb.af ], [ %i.hn, %bb.ad ], [ %i.hn, %bb.ab ]
  %.0275 = phi i1 [ %i.hk, %bb.aa ], [ false, %bb.v ], [ false, %.thread ], [ false, %bb.ac ], [ false, %bb.ae ], [ false, %bb.ag ], [ false, %bb.ah ], [ false, %bb.af ], [ false, %bb.ad ], [ false, %bb.ab ]
  %i.hv = load i32, ptr @hf_dcm_tag_value_16u, align 4
  %i.hw = load ptr, ptr %10, align 8
  %i.hx = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.hv, ptr noundef %0, i32 noundef %4, i32 noundef 2, i32 noundef %.pre-phi, ptr noundef nonnull @.str.306, ptr noundef %i.hw)
  %i.hy = getelementptr i8, ptr %3, i64 104
  %i.hz = load i8, ptr %i.hy, align 8, !range !13, !noundef !14
  %i.ia = trunc nuw i8 %i.hz to i1
  %or.cond22 = and i1 %.0275, %i.ia
  br i1 %or.cond22, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.thread.thread
  %i.ib = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.hx, ptr noundef nonnull @ei_dcm_status_msg) ; 0 uses
  br label %bb.aj

.tail382.thread:                                  ; preds = %.tail374, %sub_0, %.tail282, %.tail294, %.tail298, %.tail306, %.tail310, %.tail358, %.tail350, %.tail322, %.tail366, %.tail382
  %i.ic = load i32, ptr @hf_dcm_tag_value_byte, align 4
  %i.id = icmp ugt i32 %7, %8
  %i.ie = select i1 %i.id, ptr @.str.260, ptr @.str.321
  %i.if = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format_value(ptr noundef %2, i32 noundef %i.ic, ptr noundef %0, i32 noundef %4, i32 noundef %8, ptr noundef null, ptr noundef nonnull @.str.306, ptr noundef nonnull %i.ie) ; 0 uses
  %i.ig = getelementptr i8, ptr %1, i64 416
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = tail call noalias ptr @wmem_strdup(ptr noundef %i.ih, ptr noundef nonnull @.str.321)
  store ptr %i.ii, ptr %10, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %.thread.thread, %bb.ai, %bb.g, %._crit_edge, %bb.q, %bb.s, %.tail382.thread, %bb.t, %bb.r, %bb.p, %bb.n, %bb.f
  %i.ij = add i32 %8, %4
  ret i32 %i.ij
}

; Function Attrs: null_pointer_is_valid
declare ptr @g_strchomp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_strchug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @tvb_ensure_bytes_exist(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_format_text(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @ws_utf8_truncate(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bytes_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare float @tvb_get_ieee_float(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare double @tvb_get_ieee_double(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_int(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc ptr @dcm_rsp2str(i16 noundef zeroext %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @dcm_status_table, align 8
  %i.b = zext i16 %0 to i64
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @wmem_map_lookup(ptr noundef %i.a, ptr noundef %i.c) ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %trunc = and i16 %0, -256
  switch i16 %trunc, label %bb.e [
    i16 -22784, label %bb.f
    i16 -22272, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = and i16 %0, -4096
  %i.h = icmp eq i16 %i.g, -16384
  %.str.348..str.82 = select i1 %i.h, ptr @.str.348, ptr @.str.82
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ @.str.346, %bb.c ], [ @.str.347, %bb.d ], [ %.str.348..str.82, %bb.e ]
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @g_strcanon(ptr noundef, ptr noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @tap_queue_packet(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare ptr @g_strrstr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_display_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_dcm_assoc_detail(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull captures(none) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 6 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  store ptr null, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  store ptr null, ptr %i.i, align 8
  %i.j = add i32 %5, %4                           ; 3 uses
  %i.k = load i32, ptr @ett_assoc, align 4
  %i.l = tail call ptr @proto_item_add_subtree(ptr noundef %2, i32 noundef %i.k) ; 4 uses
  %i.m = icmp ult i32 %4, %i.j
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
end_hunk_0
