inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@H5O__alloc_chunk:bb.a
  br i1 %i.bt, label %bb.p, label %H5O__alloc_msgs.exit.thread, !prof !12

bb.p:                                             ; preds = %bb.o
  %..i = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 3) ; 2 uses
  %i.bu = add i64 %..i, %i.bm                     ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !28
  %i.bx = tail call ptr @H5FL_seq_realloc(ptr noundef nonnull @H5_H5O_mesg_t_seq_free_list, ptr noundef %i.bw, i64 noundef %i.bu) #7 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 %i.bu, ptr %i.bl, align 8, !tbaa !13
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !28
  %i.bz = getelementptr inbounds nuw [48 x i8], ptr %i.bx, i64 %i.bm
  %i.ca = mul i64 %..i, 48
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bz, i8 0, i64 %i.ca, i1 false)
  %.pre369 = load i8, ptr %i.g, align 8, !tbaa !30
  br label %H5O__alloc_msgs.exit.thread

bb.r:                                             ; preds = %bb.p
  %i.cb = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !29
  %i.cc = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !29
  %i.cd = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__alloc_msgs, i32 noundef 436, i64 noundef %i.cb, i64 noundef %i.cc, ptr noundef nonnull @.str.1) #7 ; 0 uses
  %i.ce = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !29
  %i.cf = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !29
  %i.cg = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__alloc_chunk, i32 noundef 921, i64 noundef %i.ce, i64 noundef %i.cf, ptr noundef nonnull @.str.6) #7 ; 0 uses
  br label %.thread321

H5O__alloc_msgs.exit.thread:                      ; preds = %bb.o, %bb.q, %bb.n
  %i.ch = phi i8 [ %i.bf, %bb.o ], [ %.pre369, %bb.q ], [ %i.bf, %bb.n ]
  %i.ci = icmp eq i8 %i.ch, 1
  %i.cj = tail call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #7
  %i.ck = zext i8 %i.cj to i64                    ; 2 uses
  %i.cl = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #7
  %i.cm = zext i8 %i.cl to i64                    ; 2 uses
  %i.cn = add nuw nsw i64 %i.ck, 7
  %i.co = add nuw nsw i64 %i.cn, %i.cm
  %i.cp = and i64 %i.co, 1016
  %i.cq = add nuw nsw i64 %i.cm, %i.ck
  %i.cr = select i1 %i.ci, i64 %i.cp, i64 %i.cq
  %i.cs = load i64, ptr %i.bi, align 8, !tbaa !43
  %.not278 = icmp ult i64 %3, %i.cs
  br i1 %.not278, label %bb.aw, label %bb.s

bb.s:                                             ; preds = %H5O__alloc_msgs.exit.thread
  %i.ct = load i32, ptr %4, align 8, !tbaa !44    ; 2 uses
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %bb.t, label %bb.am

bb.t:                                             ; preds = %bb.s
  %i.cv = add i32 %i.ap, -1                       ; 4 uses
  %i.cw = tail call ptr @H5O__chunk_protect(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.cv) #7 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cy = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !29
  %i.cz = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !29
  %i.da = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__alloc_chunk, i32 noundef 935, i64 noundef %i.cy, i64 noundef %i.cz, ptr noundef nonnull @.str.7) #7 ; 0 uses
  br label %.thread321

bb.v:                                             ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.dc = load i64, ptr %i.bi, align 8, !tbaa !43 ; 2 uses
  %.not362 = icmp eq i64 %i.dc, 0
  %.pre372 = load ptr, ptr %i.db, align 8, !tbaa !28 ; 2 uses
  br i1 %.not362, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 289 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.ah
  %i.df = phi i64 [ %i.dc, %.lr.ph ], [ %i.fh, %bb.ah ] ; 2 uses
  %.0243359 = phi i64 [ %i.v, %.lr.ph ], [ %.1, %bb.ah ] ; 5 uses
  %.0250357 = phi ptr [ %.pre372, %.lr.ph ], [ %i.fj, %bb.ah ] ; 7 uses
  %.0256356 = phi i32 [ 0, %.lr.ph ], [ %i.fi, %bb.ah ]
  %.1258355 = phi ptr [ %.0257, %.lr.ph ], [ %.2259, %bb.ah ] ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0250357, i64 16 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !46
  %i.di = icmp eq i32 %i.dh, %i.cv
  br i1 %i.di, label %bb.x, label %bb.ah

bb.x:                                             ; preds = %bb.w
  %i.dj = load ptr, ptr %.0250357, align 8, !tbaa !49
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !50
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store ptr @H5O_MSG_DELETED, ptr %.0250357, align 8, !tbaa !49
  %i.dm = load i32, ptr %i.de, align 8, !tbaa !52
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.de, align 8, !tbaa !52
  br label %bb.ah

bb.z:                                             ; preds = %bb.x
  %i.do = getelementptr inbounds nuw i8, ptr %.0250357, i64 40 ; 3 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !53 ; 2 uses
  %i.dq = load i8, ptr %i.g, align 8, !tbaa !30
  %i.dr = icmp eq i8 %i.dq, 1
  br i1 %i.dr, label %bb.aa, label %.thread308

bb.aa:                                            ; preds = %bb.z
  %i.ds = add i64 %i.dp, 8                        ; 2 uses
  %i.dt = icmp ult i64 %.0243359, %i.ds
  br i1 %i.dt, label %bb.ab, label %bb.ac

.thread308:                                       ; preds = %bb.z
  %i.du = load i8, ptr %i.dd, align 1, !tbaa !31
  %i.dv = lshr i8 %i.du, 1
  %i.dw = and i8 %i.dv, 2
  %i.dx = or disjoint i8 %i.dw, 4
  %i.dy = zext nneg i8 %i.dx to i64               ; 2 uses
  %i.dz = add i64 %i.dp, %i.dy                    ; 2 uses
  %i.ea = icmp ult i64 %.0243359, %i.dz
  br i1 %i.ea, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %.thread308, %bb.aa
  %i.eb = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !29
  %i.ec = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !29
  %i.ed = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__alloc_chunk, i32 noundef 950, i64 noundef %i.eb, i64 noundef %i.ec, ptr noundef nonnull @.str.8) #7 ; 0 uses
  br label %.thread321

bb.ac:                                            ; preds = %bb.aa
  %i.ee = getelementptr inbounds nuw i8, ptr %.0250357, i64 32 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !54
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -8
  br label %bb.ae

bb.ad:                                            ; preds = %.thread308
  %i.eh = getelementptr inbounds nuw i8, ptr %.0250357, i64 32 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !54
  %i.ej = sub nsw i64 0, %i.dy
  %i.ek = getelementptr inbounds i8, ptr %i.ei, i64 %i.ej
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.pre-phi = phi i64 [ %i.ds, %bb.ac ], [ %i.dz, %bb.ad ]
  %i.el = phi ptr [ %i.eg, %bb.ac ], [ %i.ek, %bb.ad ]
  %i.em = phi ptr [ %i.ee, %bb.ac ], [ %i.eh, %bb.ad ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1258355, ptr nonnull align 1 %i.el, i64 %.pre-phi, i1 false)
  store i32 %i.ap, ptr %i.dg, align 8, !tbaa !46
  %i.en = load i8, ptr %i.g, align 8, !tbaa !30
  %i.eo = icmp eq i8 %i.en, 1
  br i1 %i.eo, label %.thread312, label %bb.af

.thread312:                                       ; preds = %bb.ae
  %i.ep = getelementptr i8, ptr %.1258355, i64 8  ; 2 uses
  %i.eq = load i64, ptr %i.do, align 8, !tbaa !53 ; 2 uses
  %i.er = getelementptr i8, ptr %i.ep, i64 %i.eq
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.es = load i8, ptr %i.dd, align 1, !tbaa !31
  %i.et = lshr i8 %i.es, 1
  %i.eu = and i8 %i.et, 2                         ; 2 uses
  %i.ev = zext nneg i8 %i.eu to i64
  %i.ew = getelementptr i8, ptr %.1258355, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.ew, i64 4      ; 2 uses
  %i.ey = load i64, ptr %i.do, align 8, !tbaa !53 ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ex, i64 %i.ey
  %i.fa = or disjoint i8 %i.eu, 4
  %i.fb = zext nneg i8 %i.fa to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.thread312, %bb.af
  %.sink = phi ptr [ %i.ep, %.thread312 ], [ %i.ex, %bb.af ]
  %i.fc = phi ptr [ %i.er, %.thread312 ], [ %i.ez, %bb.af ]
  %i.fd = phi i64 [ %i.eq, %.thread312 ], [ %i.ey, %bb.af ]
  %i.fe = phi i64 [ 8, %.thread312 ], [ %i.fb, %bb.af ]
  store ptr %.sink, ptr %i.em, align 8, !tbaa !54
  %i.ff = add i64 %i.fd, %i.fe
  %i.fg = sub i64 %.0243359, %i.ff
  %.pre370 = load i64, ptr %i.bi, align 8, !tbaa !43
  br label %bb.ah

bb.ah:                                            ; preds = %bb.w, %bb.ag, %bb.y
  %i.fh = phi i64 [ %i.df, %bb.y ], [ %.pre370, %bb.ag ], [ %i.df, %bb.w ] ; 3 uses
  %.2259 = phi ptr [ %.1258355, %bb.y ], [ %i.fc, %bb.ag ], [ %.1258355, %bb.w ] ; 2 uses
  %.1 = phi i64 [ %.0243359, %bb.y ], [ %i.fg, %bb.ag ], [ %.0243359, %bb.w ] ; 2 uses
  %i.fi = add i32 %.0256356, 1                    ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.0250357, i64 48
  %i.fk = zext i32 %i.fi to i64
  %i.fl = icmp ugt i64 %i.fh, %i.fk
  br i1 %i.fl, label %bb.w, label %._crit_edge.loopexit, !llvm.loop !55

._crit_edge.loopexit:                             ; preds = %bb.ah
  %.pre371 = load ptr, ptr %i.db, align 8, !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.v
  %i.fm = phi ptr [ %.pre372, %bb.v ], [ %.pre371, %._crit_edge.loopexit ]
  %.1258.lcssa = phi ptr [ %.0257, %bb.v ], [ %.2259, %._crit_edge.loopexit ]
  %.0243.lcssa = phi i64 [ %i.v, %bb.v ], [ %.1, %._crit_edge.loopexit ]
  %.lcssa = phi i64 [ 0, %bb.v ], [ %i.fh, %._crit_edge.loopexit ] ; 3 uses
  %i.fn = add nuw nsw i64 %.lcssa, 1
  store i64 %i.fn, ptr %i.bi, align 8, !tbaa !43
  %i.fo = getelementptr inbounds nuw [48 x i8], ptr %i.fm, i64 %.lcssa ; 9 uses
  store ptr @H5O_MSG_NULL, ptr %i.fo, align 8, !tbaa !49
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store i8 1, ptr %i.fp, align 8, !tbaa !57
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  store ptr null, ptr %i.fq, align 8, !tbaa !58
  %i.fr = load ptr, ptr %i.ar, align 8, !tbaa !34
  %i.fs = zext i32 %i.cv to i64
  %i.ft = getelementptr inbounds nuw [40 x i8], ptr %i.fr, i64 %i.fs ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !41 ; 3 uses
  %i.fw = icmp eq i32 %i.ap, 1
  %i.fx = load i8, ptr %i.g, align 8, !tbaa !30   ; 2 uses
  %i.fy = icmp eq i8 %i.fx, 1                     ; 2 uses
  br i1 %i.fw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %._crit_edge
  br i1 %i.fy, label %.thread316, label %bb.ak

.thread316:                                       ; preds = %bb.ai
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !54
  br label %.thread318

bb.aj:                                            ; preds = %._crit_edge
  %i.gb = icmp eq i8 %i.fx, 1
  %i.gc = select i1 %i.fy, i64 0, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.gc ; 2 uses
  br i1 %i.gb, label %.thread402, label %.thread319

.thread402:                                       ; preds = %bb.aj
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !54
  br label %.thread318

bb.ak:                                            ; preds = %bb.ai
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 289
  %8 = load i8, ptr %7, align 1, !tbaa !31
  %9 = zext i8 %8 to i32                          ; 3 uses
  %10 = lshr i32 %9, 1
  %11 = and i32 %10, 16
  %12 = lshr i32 %9, 2
  %13 = and i32 %12, 4
  %14 = and i32 %9, 3
  %15 = shl nuw nsw i32 1, %14
  %16 = or disjoint i32 %11, %13
  %17 = or disjoint i32 %16, 10
  %18 = add nuw nsw i32 %17, %15
  %19 = zext nneg i32 %18 to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fv, i64 %19
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 289
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !31
  %i.gi = lshr i8 %i.gh, 1
  %i.gj = and i8 %i.gi, 2
  %i.gk = zext nneg i8 %i.gj to i64
  %i.gl = getelementptr i8, ptr %i.gf, i64 %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  store ptr %i.gl, ptr %i.gm, align 8, !tbaa !54
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 289
  %20 = load i8, ptr %i.gn, align 1, !tbaa !31    ; 2 uses
  %21 = zext i8 %20 to i32                        ; 3 uses
  %22 = lshr i32 %21, 1
  %23 = and i32 %22, 16
  %24 = lshr i32 %21, 2
  %25 = and i32 %24, 4
  %26 = and i32 %21, 3
  %27 = shl nuw nsw i32 1, %26
  %28 = or disjoint i32 %23, %25
  %29 = or disjoint i32 %28, 10
  %30 = add nuw nsw i32 %29, %27
  %31 = zext nneg i32 %30 to i64
  br label %._crit_edge373

.thread319:                                       ; preds = %bb.aj
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 289
  %33 = load i8, ptr %32, align 1, !tbaa !31
  %34 = lshr i8 %33, 1
  %35 = and i8 %34, 2
  %36 = zext nneg i8 %35 to i64
  %37 = getelementptr i8, ptr %6, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  store ptr %37, ptr %38, align 8, !tbaa !54
  %.phi.trans.insert374 = getelementptr inbounds nuw i8, ptr %1, i64 289
  %.pre375 = load i8, ptr %.phi.trans.insert374, align 1, !tbaa !31
  br label %._crit_edge373

._crit_edge373:                                   ; preds = %.thread319, %bb.ak
  %39 = phi i8 [ %20, %bb.ak ], [ %.pre375, %.thread319 ]
  %i.go = phi i64 [ %31, %bb.ak ], [ 8, %.thread319 ]
  %i.gp = lshr i8 %39, 1
  %i.gq = and i8 %i.gp, 2
  %i.gr = or disjoint i8 %i.gq, 4
  %i.gs = zext nneg i8 %i.gr to i64
  br label %.thread318

.thread318:                                       ; preds = %.thread402, %.thread316, %._crit_edge373
  %i.gt = phi i64 [ %i.go, %._crit_edge373 ], [ 0, %.thread402 ], [ 16, %.thread316 ]
  %i.gu = phi i64 [ %i.gs, %._crit_edge373 ], [ 8, %.thread402 ], [ 8, %.thread316 ]
  %.in410 = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %40 = load i64, ptr %.in410, align 8, !tbaa !39
  %i.gv = add nuw nsw i64 %i.gt, %i.gu
  %i.gw = sub i64 %40, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  store i64 %i.gw, ptr %i.gx, align 8, !tbaa !53
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store i32 %i.cv, ptr %i.gy, align 8, !tbaa !46
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store i64 0, ptr %i.gz, align 8, !tbaa !40
  %i.ha = tail call i32 @H5O__chunk_unprotect(ptr noundef %0, ptr noundef nonnull %i.cw, i1 noundef zeroext true) #7
  %i.hb = icmp slt i32 %i.ha, 0
  br i1 %i.hb, label %bb.al, label %bb.aw

bb.al:                                            ; preds = %.thread318
  %i.hc = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !29
  %i.hd = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !29
  %i.he = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__alloc_chunk, i32 noundef 988, i64 noundef %i.hc, i64 noundef %i.hd, ptr noundef nonnull @.str.9) #7 ; 0 uses
  br label %.thread321

bb.am:                                            ; preds = %bb.s
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !28
  %i.hh = zext nneg i32 %i.ct to i64
  %i.hi = getelementptr inbounds nuw [48 x i8], ptr %i.hg, i64 %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !46
  %i.hl = tail call ptr @H5O__chunk_protect(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.hk) #7 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hn = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !29
  %i.ho = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !29
  %i.hp = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__alloc_chunk, i32 noundef 998, i64 noundef %i.hn, i64 noundef %i.ho, ptr noundef nonnull @.str.7) #7 ; 0 uses
  br label %.thread321

bb.ao:                                            ; preds = %bb.am
  %i.hq = load i64, ptr %i.bi, align 8, !tbaa !43 ; 3 uses
  %i.hr = add i64 %i.hq, 1
  store i64 %i.hr, ptr %i.bi, align 8, !tbaa !43
  %i.hs = load ptr, ptr %i.hf, align 8, !tbaa !28 ; 3 uses
  %i.ht = getelementptr inbounds nuw [48 x i8], ptr %i.hs, i64 %i.hq ; 6 uses
  store ptr @H5O_MSG_NULL, ptr %i.ht, align 8, !tbaa !49
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  store ptr null, ptr %i.hu, align 8, !tbaa !58
  %i.hv = load i32, ptr %4, align 8, !tbaa !44
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [48 x i8], ptr %i.hs, i64 %i.hw ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 32 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !54 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  store ptr %i.hz, ptr %i.ia, align 8, !tbaa !54
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 40 ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !53 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ht, i64 40 ; 5 uses
  store i64 %i.ic, ptr %i.id, align 8, !tbaa !53
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hx, i64 16 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !46
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 2 uses
  store i32 %i.if, ptr %i.ig, align 8, !tbaa !46
  %i.ih = load i8, ptr %i.g, align 8, !tbaa !30
  %i.ii = icmp eq i8 %i.ih, 1
  br i1 %i.ii, label %.thread330, label %bb.ap

.thread330:                                       ; preds = %bb.ao
  %i.ij = getelementptr inbounds i8, ptr %i.hz, i64 -8
  %i.ik = add i64 %i.ic, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0257, ptr nonnull align 1 %i.ij, i64 %i.ik, i1 false)
  %i.il = getelementptr i8, ptr %.0257, i64 8
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 289
  %i.in = load i8, ptr %i.im, align 1, !tbaa !31
  %i.io = lshr i8 %i.in, 1
  %i.ip = and i8 %i.io, 2                         ; 2 uses
  %i.iq = or disjoint i8 %i.ip, 4
  %i.ir = zext nneg i8 %i.iq to i64               ; 3 uses
  %i.is = sub nsw i64 0, %i.ir
  %i.it = getelementptr inbounds i8, ptr %i.hz, i64 %i.is
  %i.iu = add i64 %i.ic, %i.ir
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0257, ptr nonnull align 1 %i.it, i64 %i.iu, i1 false)
  %i.iv = zext nneg i8 %i.ip to i64
  %i.iw = getelementptr i8, ptr %.0257, i64 %i.iv
  %i.ix = getelementptr i8, ptr %i.iw, i64 4
  br label %bb.aq

bb.aq:                                            ; preds = %.thread330, %bb.ap
  %.sink404 = phi ptr [ %i.il, %.thread330 ], [ %i.ix, %bb.ap ] ; 2 uses
  %i.iy = phi i64 [ 8, %.thread330 ], [ %i.ir, %bb.ap ]
  %i.iz = load i64, ptr %i.ib, align 8, !tbaa !53 ; 2 uses
  %i.ja = getelementptr i8, ptr %.sink404, i64 %i.iz
  store ptr %.sink404, ptr %i.hy, align 8, !tbaa !54
  store i32 %i.ap, ptr %i.ie, align 8, !tbaa !46
  %i.jb = add i64 %i.iz, %i.iy
  %i.jc = sub i64 %i.v, %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !59 ; 2 uses
  %.not284 = icmp eq i64 %i.je, 0
  br i1 %.not284, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jf = load i64, ptr %i.id, align 8, !tbaa !53
  %i.jg = add i64 %i.jf, %i.je
  store i64 %i.jg, ptr %i.id, align 8, !tbaa !53
  %i.jh = load ptr, ptr %i.ar, align 8, !tbaa !34
  %i.ji = load i32, ptr %i.ig, align 8, !tbaa !46
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [40 x i8], ptr %i.jh, i64 %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  store i64 0, ptr %i.jl, align 8, !tbaa !40
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.jm = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !60 ; 2 uses
  %.not285 = icmp eq i64 %i.jn, 0
  br i1 %.not285, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jo = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !61
  %i.jq = zext i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [48 x i8], ptr %i.hs, i64 %i.jq ; 2 uses
  %i.js = load i64, ptr %i.id, align 8, !tbaa !53
  %i.jt = add i64 %i.js, %i.jn
  store i64 %i.jt, ptr %i.id, align 8, !tbaa !53
  %i.ju = tail call i32 @H5O__msg_free_mesg(ptr noundef %i.jr) #7 ; 0 uses
  store ptr @H5O_MSG_DELETED, ptr %i.jr, align 8, !tbaa !49
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !52
  %i.jx = add i32 %i.jw, 1
  store i32 %i.jx, ptr %i.jv, align 8, !tbaa !52
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %bb.ar
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store i8 1, ptr %i.jy, align 8, !tbaa !57
  %i.jz = tail call i32 @H5O__chunk_unprotect(ptr noundef %0, ptr noundef nonnull %i.hl, i1 noundef zeroext true) #7
  %i.ka = icmp slt i32 %i.jz, 0
  br i1 %i.ka, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.kb = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !29
  %i.kc = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !29
  %i.kd = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__alloc_chunk, i32 noundef 1051, i64 noundef %i.kb, i64 noundef %i.kc, ptr noundef nonnull @.str.9) #7 ; 0 uses
  br label %.thread321

bb.aw:                                            ; preds = %bb.au, %.thread318, %H5O__alloc_msgs.exit.thread
  %.5262 = phi ptr [ %.0257, %H5O__alloc_msgs.exit.thread ], [ %.1258.lcssa, %.thread318 ], [ %i.ja, %bb.au ] ; 2 uses
  %.2246 = phi i64 [ %3, %H5O__alloc_msgs.exit.thread ], [ %.lcssa, %.thread318 ], [ %i.hq, %bb.au ] ; 2 uses
  %.4 = phi i64 [ %i.v, %H5O__alloc_msgs.exit.thread ], [ %.0243.lcssa, %.thread318 ], [ %i.jc, %bb.au ]
  %i.ke = load i64, ptr %i.bi, align 8, !tbaa !43 ; 3 uses
  %i.kf = add i64 %i.ke, 1
  store i64 %i.kf, ptr %i.bi, align 8, !tbaa !43
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !28 ; 2 uses
  %i.ki = getelementptr inbounds nuw [48 x i8], ptr %i.kh, i64 %i.ke ; 6 uses
  store ptr @H5O_MSG_NULL, ptr %i.ki, align 8, !tbaa !49
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store i8 1, ptr %i.kj, align 8, !tbaa !57
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  store ptr null, ptr %i.kk, align 8, !tbaa !58
  %i.kl = load i8, ptr %i.g, align 8, !tbaa !30
  %i.km = icmp eq i8 %i.kl, 1
  br i1 %i.km, label %.thread338, label %bb.ax

.thread338:                                       ; preds = %bb.aw
  %i.kn = getelementptr inbounds nuw i8, ptr %.5262, i64 8
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 289
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !31
  %i.kq = lshr i8 %i.kp, 1
  %i.kr = and i8 %i.kq, 2                         ; 2 uses
  %i.ks = zext nneg i8 %i.kr to i64
  %i.kt = getelementptr inbounds nuw i8, ptr %.5262, i64 %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  %i.kv = or disjoint i8 %i.kr, 4
  %i.kw = zext nneg i8 %i.kv to i64
  br label %bb.ay

bb.ay:                                            ; preds = %.thread338, %bb.ax
  %.sink366 = phi ptr [ %i.kn, %.thread338 ], [ %i.ku, %bb.ax ]
  %.neg363 = phi i64 [ 0, %.thread338 ], [ -8, %bb.ax ]
  %i.kx = phi i64 [ 8, %.thread338 ], [ %i.kw, %bb.ax ]
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  store ptr %.sink366, ptr %i.ky, align 8, !tbaa !54
  %.neg351 = add i64 %.neg363, %.4
  %i.kz = sub i64 %.neg351, %i.kx
  %i.la = getelementptr inbounds nuw i8, ptr %i.ki, i64 40
  store i64 %i.kz, ptr %i.la, align 8, !tbaa !53
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store i32 %i.ap, ptr %i.lb, align 8, !tbaa !46
  %i.lc = getelementptr inbounds nuw [48 x i8], ptr %i.kh, i64 %.2246
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !46
  %i.lf = tail call i32 @H5O__chunk_add(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.ap, i32 noundef %i.le) #7
  %i.lg = icmp slt i32 %i.lf, 0
  br i1 %i.lg, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
end_hunk_0
