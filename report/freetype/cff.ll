Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/cff?download=true
inline.NumInlined: 81
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@cff_face_init:bb.a
  %.not390 = icmp eq i8 %.1341, 0
  br i1 %.not390, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bw = load i16, ptr %i.bv, align 8, !tbaa !321
  %i.bx = zext i16 %i.bw to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.by = phi i64 [ %i.bx, %bb.v ], [ 1000, %bb.u ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.as, i64 1736
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !322
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %i.as, i64 1696 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.as, i64 1744 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.as, i64 1736 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.as, i64 1720 ; 3 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !113 ; 2 uses
  %.not391 = icmp eq i64 %i.ce, 0
  br i1 %.not391, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cf = getelementptr inbounds nuw i8, ptr %i.as, i64 1712
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !114
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.sink = phi i64 [ %i.cg, %bb.y ], [ %i.ce, %bb.x ]
  %spec.select428 = call i64 @llvm.abs.i64(i64 %.sink, i1 true) ; 8 uses
  %.not392 = icmp eq i64 %spec.select428, 65536
  br i1 %.not392, label %._crit_edge521, label %bb.aa

._crit_edge521:                                   ; preds = %bb.z
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.as, i64 1752
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !115
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ch = load i64, ptr %i.cc, align 8, !tbaa !116
  %i.ci = call i64 @FT_DivFix(i64 noundef %i.ch, i64 noundef %spec.select428) #18
  store i64 %i.ci, ptr %i.cc, align 8, !tbaa !116
  %i.cj = load i64, ptr %i.ca, align 8, !tbaa !117
  %i.ck = call i64 @FT_DivFix(i64 noundef %i.cj, i64 noundef %spec.select428) #18
  store i64 %i.ck, ptr %i.ca, align 8, !tbaa !117
  %i.cl = getelementptr inbounds nuw i8, ptr %i.as, i64 1712 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !114
  %i.cn = call i64 @FT_DivFix(i64 noundef %i.cm, i64 noundef %spec.select428) #18
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !114
  %i.co = getelementptr inbounds nuw i8, ptr %i.as, i64 1704 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !118
  %i.cq = call i64 @FT_DivFix(i64 noundef %i.cp, i64 noundef %spec.select428) #18
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !118
  %i.cr = load i64, ptr %i.cd, align 8, !tbaa !113
  %i.cs = call i64 @FT_DivFix(i64 noundef %i.cr, i64 noundef %spec.select428) #18
  store i64 %i.cs, ptr %i.cd, align 8, !tbaa !113
  %i.ct = load i64, ptr %i.cb, align 8, !tbaa !119
  %i.cu = call i64 @FT_DivFix(i64 noundef %i.ct, i64 noundef %spec.select428) #18
  store i64 %i.cu, ptr %i.cb, align 8, !tbaa !119
  %i.cv = getelementptr inbounds nuw i8, ptr %i.as, i64 1752
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !115
  %i.cx = call i64 @FT_DivFix(i64 noundef %i.cw, i64 noundef %spec.select428) #18
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge521, %bb.aa
  %i.cy = phi i64 [ %.pre, %._crit_edge521 ], [ %i.cx, %bb.aa ]
  %i.cz = load i64, ptr %i.cb, align 8, !tbaa !119
  %i.da = ashr i64 %i.cz, 16
  store i64 %i.da, ptr %i.cb, align 8, !tbaa !119
  %i.db = getelementptr inbounds nuw i8, ptr %i.as, i64 1752
  %i.dc = ashr i64 %i.cy, 16
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !115
  %i.dd = getelementptr inbounds nuw i8, ptr %i.as, i64 2856
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !120 ; 2 uses
  %.not393481 = icmp eq i32 %i.de, 0
  br i1 %.not393481, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ab
  %i.df = getelementptr inbounds nuw i8, ptr %i.as, i64 2864
  %i.dg = zext i32 %i.de to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %bb.an
  %indvars.iv = phi i64 [ %i.dg, %.lr.ph ], [ %i.dh, %bb.an ]
  %i.dh = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !121 ; 18 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 88
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !112
  %.not423 = icmp eq i8 %i.dl, 0
  br i1 %.not423, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dm = load i8, ptr %i.bt, align 8, !tbaa !112
  %.not424 = icmp eq i8 %i.dm, 0
  br i1 %.not424, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dn = load i64, ptr %i.cc, align 8, !tbaa !322 ; 2 uses
  %i.do = icmp ugt i64 %i.dn, 1
  br i1 %i.do, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 96
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !322 ; 2 uses
  %i.dr = icmp ugt i64 %i.dq, 1
  br i1 %i.dr, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %. = call i64 @llvm.umin.i64(i64 %i.dn, i64 %i.dq)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.af, %bb.ag
  %.0328 = phi i64 [ %., %bb.ag ], [ 1, %bb.af ], [ 1, %bb.ae ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  call void @FT_Matrix_Multiply_Scaled(ptr noundef nonnull %i.ca, ptr noundef nonnull %i.ds, i64 noundef %.0328) #18
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 104
  call void @FT_Vector_Transform_Scaled(ptr noundef nonnull %i.dt, ptr noundef nonnull %i.ca, i64 noundef %.0328) #18
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 96 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !322
  %i.dw = load i64, ptr %i.cc, align 8, !tbaa !322
  %i.dx = call i64 @FT_MulDiv(i64 noundef %i.dv, i64 noundef %i.dw, i64 noundef %.0328) #18
  store i64 %i.dx, ptr %i.du, align 8, !tbaa !322
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ac
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dy, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 32, i1 false), !tbaa.struct !122
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dj, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !tbaa.struct !323
  %i.ea = load i64, ptr %i.cc, align 8, !tbaa !322
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dj, i64 96
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !322
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ad, %bb.ah, %bb.ai
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dj, i64 56 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dj, i64 104 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dj, i64 96 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dj, i64 80 ; 3 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !113 ; 2 uses
  %.not425 = icmp eq i64 %i.eg, 0
  br i1 %.not425, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dj, i64 72
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !114
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %.sink581 = phi i64 [ %i.ei, %bb.ak ], [ %i.eg, %bb.aj ]
  %spec.select430 = call i64 @llvm.abs.i64(i64 %.sink581, i1 true) ; 8 uses
  %.not426 = icmp eq i64 %spec.select430, 65536
  br i1 %.not426, label %._crit_edge522, label %bb.am

._crit_edge522:                                   ; preds = %bb.al
  %.phi.trans.insert523 = getelementptr inbounds nuw i8, ptr %i.dj, i64 112
  %.pre524 = load i64, ptr %.phi.trans.insert523, align 8, !tbaa !115
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ej = load i64, ptr %i.ee, align 8, !tbaa !116
  %i.ek = call i64 @FT_DivFix(i64 noundef %i.ej, i64 noundef %spec.select430) #18
  store i64 %i.ek, ptr %i.ee, align 8, !tbaa !116
  %i.el = load i64, ptr %i.ec, align 8, !tbaa !117
  %i.em = call i64 @FT_DivFix(i64 noundef %i.el, i64 noundef %spec.select430) #18
  store i64 %i.em, ptr %i.ec, align 8, !tbaa !117
  %i.en = getelementptr inbounds nuw i8, ptr %i.dj, i64 72 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !114
  %i.ep = call i64 @FT_DivFix(i64 noundef %i.eo, i64 noundef %spec.select430) #18
  store i64 %i.ep, ptr %i.en, align 8, !tbaa !114
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dj, i64 64 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !118
  %i.es = call i64 @FT_DivFix(i64 noundef %i.er, i64 noundef %spec.select430) #18
  store i64 %i.es, ptr %i.eq, align 8, !tbaa !118
  %i.et = load i64, ptr %i.ef, align 8, !tbaa !113
  %i.eu = call i64 @FT_DivFix(i64 noundef %i.et, i64 noundef %spec.select430) #18
  store i64 %i.eu, ptr %i.ef, align 8, !tbaa !113
  %i.ev = load i64, ptr %i.ed, align 8, !tbaa !119
  %i.ew = call i64 @FT_DivFix(i64 noundef %i.ev, i64 noundef %spec.select430) #18
  store i64 %i.ew, ptr %i.ed, align 8, !tbaa !119
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dj, i64 112
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !115
  %i.ez = call i64 @FT_DivFix(i64 noundef %i.ey, i64 noundef %spec.select430) #18
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge522, %bb.am
  %i.fa = phi i64 [ %.pre524, %._crit_edge522 ], [ %i.ez, %bb.am ]
  %i.fb = load i64, ptr %i.ed, align 8, !tbaa !119
  %i.fc = ashr i64 %i.fb, 16
  store i64 %i.fc, ptr %i.ed, align 8, !tbaa !119
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dj, i64 112
  %i.fe = ashr i64 %i.fa, 16
  store i64 %i.fe, ptr %i.fd, align 8, !tbaa !115
  %.not393.wide = icmp eq i64 %i.dh, 0
  br i1 %.not393.wide, label %._crit_edge, label %bb.ac, !llvm.loop !310

._crit_edge:                                      ; preds = %bb.an, %bb.ab
  %.not394 = icmp ne i8 %.1341, 0                 ; 4 uses
  %.pre527 = load i32, ptr %i.bk, align 4, !tbaa !110 ; 2 uses
  br i1 %.not394, label %bb.ao, label %bb.cb

bb.ao:                                            ; preds = %._crit_edge
  %i.ff = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !107
  %i.fh = zext i32 %i.fg to i64
  store i64 %i.fh, ptr %1, align 8, !tbaa !318
  %.not395 = icmp eq i32 %.pre527, 65535
  br i1 %.not395, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fi = getelementptr inbounds nuw i8, ptr %i.as, i64 1328
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !324
  %i.fk = add i32 %i.fj, 1
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.fl = getelementptr inbounds nuw i8, ptr %i.as, i64 1356
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !123
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %storemerge.in = phi i32 [ %i.fm, %bb.aq ], [ %i.fk, %bb.ap ]
  %storemerge = zext i32 %storemerge.in to i64
  store i64 %storemerge, ptr %i.bj, align 8, !tbaa !320
  %i.fn = getelementptr inbounds nuw i8, ptr %i.as, i64 1768
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !325
  %i.fp = ashr i64 %i.fo, 16
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !326
  %i.fr = getelementptr inbounds nuw i8, ptr %i.as, i64 1776
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !327
  %i.ft = ashr i64 %i.fs, 16                      ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !328
  %i.fv = getelementptr inbounds nuw i8, ptr %i.as, i64 1784
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !329
  %i.fx = add nsw i64 %i.fw, 65535
  %i.fy = ashr i64 %i.fx, 16
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !330
  %i.ga = getelementptr inbounds nuw i8, ptr %i.as, i64 1792
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !331
  %i.gc = add nsw i64 %i.gb, 65535
  %i.gd = ashr i64 %i.gc, 16                      ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !332
  %i.gf = load i64, ptr %i.cc, align 8, !tbaa !322 ; 2 uses
  %i.gg = trunc i64 %i.gf to i16
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i16 %i.gg, ptr %i.gh, align 8, !tbaa !333
  %i.gi = trunc i64 %i.gd to i16                  ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 138
  store i16 %i.gi, ptr %i.gj, align 2, !tbaa !334
  %i.gk = trunc i64 %i.ft to i16                  ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 140
  store i16 %i.gk, ptr %i.gl, align 4, !tbaa !335
  %i.gm = trunc i64 %i.gf to i32
  %i.gn = and i32 %i.gm, 65535
  %i.go = mul nuw nsw i32 %i.gn, 6
  %i.gp = udiv i32 %i.go, 5                       ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 142
  %sext = shl i32 %i.gp, 16
  %i.gr = ashr exact i32 %sext, 16
  %i.gs = sext i16 %i.gi to i32
  %i.gt = sext i16 %i.gk to i32
  %i.gu = sub nsw i32 %i.gs, %i.gt                ; 2 uses
  %i.gv = icmp slt i32 %i.gr, %i.gu
  %spec.select473 = select i1 %i.gv, i32 %i.gu, i32 %i.gp
  %storemerge471 = trunc i32 %spec.select473 to i16
  store i16 %storemerge471, ptr %i.gq, align 2, !tbaa !336
  %i.gw = getelementptr inbounds nuw i8, ptr %i.as, i64 1680
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.gy = load <2 x i16>, ptr %i.gw, align 8, !tbaa !66
  store <2 x i16> %i.gy, ptr %i.gx, align 4, !tbaa !66
  %i.gz = getelementptr inbounds nuw i8, ptr %i.as, i64 1656
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !124 ; 4 uses
  switch i32 %i.ha, label %bb.as [
    i32 0, label %cff_index_get_sid_string.exit.thread
    i32 65535, label %cff_index_get_sid_string.exit.thread
  ]

bb.as:                                            ; preds = %bb.ar
  %i.hb = icmp ugt i32 %i.ha, 390
  br i1 %i.hb, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.hc = add i32 %i.ha, -391                     ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.as, i64 1608
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !125
  %i.hf = icmp ult i32 %i.hc, %i.he
  br i1 %i.hf, label %bb.au, label %cff_index_get_sid_string.exit.thread

bb.au:                                            ; preds = %bb.at
  %i.hg = getelementptr inbounds nuw i8, ptr %i.as, i64 1616
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !126
  %i.hi = zext i32 %i.hc to i64
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hi
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !127
  br label %cff_index_get_sid_string.exit

bb.av:                                            ; preds = %bb.as
  %i.hl = load ptr, ptr %i.bb, align 8, !tbaa !92 ; 2 uses
  %.not.i = icmp eq ptr %i.hl, null
  br i1 %.not.i, label %cff_index_get_sid_string.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 40
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !128
  %i.ho = call ptr %i.hn(i32 noundef %i.ha) #18, !inline_history !0
  br label %cff_index_get_sid_string.exit

cff_index_get_sid_string.exit:                    ; preds = %bb.au, %bb.aw
  %.0.i = phi ptr [ %i.ho, %bb.aw ], [ %i.hk, %bb.au ] ; 2 uses
  %.not397 = icmp eq ptr %.0.i, null
  br i1 %.not397, label %cff_index_get_sid_string.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %cff_index_get_sid_string.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.hp = call ptr @ft_mem_strdup(ptr noundef %i.ar, ptr noundef nonnull %.0.i, ptr noundef nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !337
  br label %cff_index_get_sid_string.exit.thread

cff_index_get_sid_string.exit.thread:             ; preds = %bb.ar, %bb.ar, %bb.at, %bb.av, %cff_index_get_sid_string.exit, %bb.ax
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !337 ; 2 uses
  %.not398 = icmp eq ptr %i.hs, null
  br i1 %.not398, label %bb.ay, label %.thread450

bb.ay:                                            ; preds = %cff_index_get_sid_string.exit.thread
  %i.ht = call fastcc ptr @cff_index_get_name(ptr noundef nonnull %i.as, i32 noundef %i.bd) ; 3 uses
  store ptr %i.ht, ptr %i.hr, align 8, !tbaa !337
  %.not399 = icmp eq ptr %i.ht, null
  br i1 %.not399, label %.thread448, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call fastcc void @remove_subset_prefix(ptr noundef %i.ht)
  %.pr447 = load ptr, ptr %i.hr, align 8, !tbaa !337 ; 2 uses
  %.not400 = icmp eq ptr %.pr447, null
  br i1 %.not400, label %.thread448, label %.thread450

.thread450:                                       ; preds = %cff_index_get_sid_string.exit.thread, %bb.az
  %i.hu = phi ptr [ %i.hs, %cff_index_get_sid_string.exit.thread ], [ %.pr447, %bb.az ]
  %i.hv = getelementptr inbounds nuw i8, ptr %i.as, i64 1652
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !129 ; 4 uses
  %i.hx = icmp eq i32 %i.hw, 65535
  br i1 %i.hx, label %cff_index_get_sid_string.exit433.thread, label %bb.ba

bb.ba:                                            ; preds = %.thread450
  %i.hy = icmp ugt i32 %i.hw, 390
  br i1 %i.hy, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.hz = add i32 %i.hw, -391                     ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.as, i64 1608
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !125
  %i.ic = icmp ult i32 %i.hz, %i.ib
  br i1 %i.ic, label %bb.bc, label %cff_index_get_sid_string.exit433.thread

bb.bc:                                            ; preds = %bb.bb
  %i.id = getelementptr inbounds nuw i8, ptr %i.as, i64 1616
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !126
  %i.if = zext i32 %i.hz to i64
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.if
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !127
  br label %cff_index_get_sid_string.exit433

bb.bd:                                            ; preds = %bb.ba
  %i.ii = load ptr, ptr %i.bb, align 8, !tbaa !92 ; 2 uses
  %.not.i431 = icmp eq ptr %i.ii, null
  br i1 %.not.i431, label %cff_index_get_sid_string.exit433.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 40
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !128
  %i.il = call ptr %i.ik(i32 noundef %i.hw) #18, !inline_history !0
  %.pre525 = load ptr, ptr %i.hr, align 8, !tbaa !337
  br label %cff_index_get_sid_string.exit433

cff_index_get_sid_string.exit433:                 ; preds = %bb.bc, %bb.be
  %i.im = phi ptr [ %.pre525, %bb.be ], [ %i.hu, %bb.bc ] ; 2 uses
  %.0.i432 = phi ptr [ %i.il, %bb.be ], [ %i.ih, %bb.bc ] ; 3 uses
  %i.in = icmp ne ptr %.0.i432, null
  %i.io = icmp ne ptr %i.im, null
  %or.cond4 = select i1 %i.in, i1 %i.io, i1 false
  br i1 %or.cond4, label %.preheader, label %cff_index_get_sid_string.exit433.thread

.preheader:                                       ; preds = %cff_index_get_sid_string.exit433
  %i.ip = load i8, ptr %.0.i432, align 1, !tbaa !130 ; 2 uses
  %.not402501 = icmp eq i8 %i.ip, 0
  br i1 %.not402501, label %cff_index_get_sid_string.exit433.thread, label %.lr.ph484

.lr.ph484:                                        ; preds = %.preheader, %.outer.backedge
  %i.iq = phi i8 [ %i.iu, %.outer.backedge ], [ %i.ip, %.preheader ]
  %.0325.ph505 = phi ptr [ %.0325.ph.be, %.outer.backedge ], [ %i.im, %.preheader ] ; 5 uses
  %.0326.ph502 = phi ptr [ %.0326.ph.be, %.outer.backedge ], [ %.0.i432, %.preheader ] ; 2 uses
  %.fr = freeze i8 %i.iq                          ; 3 uses
end_hunk_0
begin_hunk_1_@cff_face_init:bb.a
  br i1 %.not402, label %cff_index_get_sid_string.exit433.thread, label %.lr.ph484, !llvm.loop !311

.lr.ph500:                                        ; preds = %.lr.ph484.split.split, %bb.bf
  %i.iv = phi i8 [ %i.ix, %bb.bf ], [ %i.ir, %.lr.ph484.split.split ]
  %.0325483499 = phi ptr [ %i.iw, %bb.bf ], [ %.0325.ph505, %.lr.ph484.split.split ]
  switch i8 %i.iv, label %cff_index_get_sid_string.exit433.thread [
    i8 32, label %bb.bf
    i8 45, label %bb.bf
    i8 0, label %.split493.us
  ]

bb.bf:                                            ; preds = %.lr.ph500, %.lr.ph500
  %i.iw = getelementptr inbounds nuw i8, ptr %.0325483499, i64 1 ; 3 uses
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !130 ; 2 uses
  %i.iy = icmp eq i8 %.fr, %i.ix
  br i1 %i.iy, label %.split.us, label %.lr.ph500

.split493.us:                                     ; preds = %.lr.ph500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.iz = call ptr @ft_mem_strdup(ptr noundef %i.ar, ptr noundef nonnull %.0326.ph502, ptr noundef nonnull %i.c) #18 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %.not404 = icmp eq ptr %i.iz, null
  br i1 %.not404, label %cff_index_get_sid_string.exit433.thread, label %bb.bm

.thread448:                                       ; preds = %bb.ay, %bb.az
  %i.ja = getelementptr inbounds nuw i8, ptr %i.as, i64 1936
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !131 ; 4 uses
  %i.jc = icmp eq i32 %i.jb, 65535
  br i1 %i.jc, label %cff_index_get_sid_string.exit433.thread, label %bb.bg

bb.bg:                                            ; preds = %.thread448
  %i.jd = icmp ugt i32 %i.jb, 390
  br i1 %i.jd, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.je = add i32 %i.jb, -391                     ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.as, i64 1608
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !125
  %i.jh = icmp ult i32 %i.je, %i.jg
  br i1 %i.jh, label %bb.bi, label %cff_index_get_sid_string.exit433.thread

bb.bi:                                            ; preds = %bb.bh
  %i.ji = getelementptr inbounds nuw i8, ptr %i.as, i64 1616
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !126
  %i.jk = zext i32 %i.je to i64
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jk
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !127
  br label %cff_index_get_sid_string.exit436

bb.bj:                                            ; preds = %bb.bg
  %i.jn = load ptr, ptr %i.bb, align 8, !tbaa !92 ; 2 uses
  %.not.i434 = icmp eq ptr %i.jn, null
  br i1 %.not.i434, label %cff_index_get_sid_string.exit433.thread, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 40
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !128
  %i.jq = call ptr %i.jp(i32 noundef %i.jb) #18, !inline_history !0
  br label %cff_index_get_sid_string.exit436

cff_index_get_sid_string.exit436:                 ; preds = %bb.bi, %bb.bk
  %.0.i435 = phi ptr [ %i.jq, %bb.bk ], [ %i.jm, %bb.bi ] ; 2 uses
  %.not401 = icmp eq ptr %.0.i435, null
  br i1 %.not401, label %cff_index_get_sid_string.exit433.thread, label %bb.bl

bb.bl:                                            ; preds = %cff_index_get_sid_string.exit436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.jr = call ptr @ft_mem_strdup(ptr noundef %i.ar, ptr noundef nonnull %.0.i435, ptr noundef nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  store ptr %i.jr, ptr %i.hr, align 8, !tbaa !337
  br label %cff_index_get_sid_string.exit433.thread

bb.bm:                                            ; preds = %.split493.us
  %i.js = load ptr, ptr %i.hr, align 8, !tbaa !337
  call fastcc void @remove_style(ptr noundef %i.js, ptr noundef %i.iz)
  br label %bb.bn

cff_index_get_sid_string.exit433.thread:          ; preds = %.outer.backedge, %.lr.ph500, %.preheader, %bb.bh, %bb.bj, %.thread448, %bb.bb, %bb.bd, %.thread450, %.split493.us, %cff_index_get_sid_string.exit433, %bb.bl, %cff_index_get_sid_string.exit436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.jt = call ptr @ft_mem_strdup(ptr noundef %i.ar, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.bn

bb.bn:                                            ; preds = %cff_index_get_sid_string.exit433.thread, %bb.bm
  %.sink582 = phi ptr [ %i.jt, %cff_index_get_sid_string.exit433.thread ], [ %i.iz, %bb.bm ]
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %.sink582, ptr %i.ju, align 8, !tbaa !338
  %spec.select = select i1 %.not376.not, i64 2073, i64 2065 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.as, i64 1664
  %i.jw = load i8, ptr %i.jv, align 8, !tbaa !132
  %.not407 = icmp eq i8 %i.jw, 0
  %i.jx = or disjoint i64 %spec.select, 4
  %.1331 = select i1 %.not407, i64 %spec.select, i64 %i.jx
  %i.jy = load i64, ptr %i.bo, align 8, !tbaa !111
  %i.jz = or i64 %.1331, %i.jy
  store i64 %i.jz, ptr %i.bo, align 8, !tbaa !111
  %i.ka = getelementptr inbounds nuw i8, ptr %i.as, i64 1672
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !133
  %.not408 = icmp ne i64 %i.kb, 0
  %.2 = zext i1 %.not408 to i32                   ; 6 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.as, i64 1660
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !134 ; 4 uses
  %i.ke = icmp eq i32 %i.kd, 65535
  br i1 %i.ke, label %cff_index_get_sid_string.exit439.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kf = icmp ugt i32 %i.kd, 390
  br i1 %i.kf, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.kg = add i32 %i.kd, -391                     ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.as, i64 1608
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !125
  %i.kj = icmp ult i32 %i.kg, %i.ki
  br i1 %i.kj, label %bb.bq, label %cff_index_get_sid_string.exit439.thread

bb.bq:                                            ; preds = %bb.bp
  %i.kk = getelementptr inbounds nuw i8, ptr %i.as, i64 1616
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !126
  %i.km = zext i32 %i.kg to i64
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.km
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !127
  br label %cff_index_get_sid_string.exit439

bb.br:                                            ; preds = %bb.bo
  %i.kp = load ptr, ptr %i.bb, align 8, !tbaa !92 ; 2 uses
  %.not.i437 = icmp eq ptr %i.kp, null
  br i1 %.not.i437, label %cff_index_get_sid_string.exit439.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 40
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !128
  %i.ks = call ptr %i.kr(i32 noundef %i.kd) #18, !inline_history !0
  br label %cff_index_get_sid_string.exit439

cff_index_get_sid_string.exit439:                 ; preds = %bb.bq, %bb.bs
  %.0.i438 = phi ptr [ %i.ks, %bb.bs ], [ %i.ko, %bb.bq ] ; 3 uses
  %.not409 = icmp eq ptr %.0.i438, null
  br i1 %.not409, label %cff_index_get_sid_string.exit439.thread, label %bb.bt

bb.bt:                                            ; preds = %cff_index_get_sid_string.exit439
  %i.kt = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0.i438, ptr noundef nonnull dereferenceable(5) @.str.20) #19
  %.not410 = icmp eq i32 %i.kt, 0
  br i1 %.not410, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ku = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0.i438, ptr noundef nonnull dereferenceable(6) @.str.21) #19
  %.not411 = icmp eq i32 %i.ku, 0
  br i1 %.not411, label %bb.bv, label %cff_index_get_sid_string.exit439.thread

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.kv = or disjoint i32 %.2, 2
  br label %cff_index_get_sid_string.exit439.thread

cff_index_get_sid_string.exit439.thread:          ; preds = %bb.bp, %bb.br, %bb.bn, %bb.bu, %bb.bv, %cff_index_get_sid_string.exit439
  %.3 = phi i32 [ %.2, %bb.bu ], [ %i.kv, %bb.bv ], [ %.2, %cff_index_get_sid_string.exit439 ], [ %.2, %bb.bn ], [ %.2, %bb.br ], [ %.2, %bb.bp ] ; 5 uses
  %i.kw = and i32 %.3, 2
  %.not412 = icmp eq i32 %i.kw, 0
  br i1 %.not412, label %bb.bw, label %bb.ca

bb.bw:                                            ; preds = %cff_index_get_sid_string.exit439.thread
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !338 ; 3 uses
  %.not413 = icmp eq ptr %i.ky, null
  br i1 %.not413, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kz = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ky, ptr noundef nonnull dereferenceable(5) @.str.20, i64 noundef 4) #19
  %.not414 = icmp eq i32 %i.kz, 0
  br i1 %.not414, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.la = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ky, ptr noundef nonnull dereferenceable(6) @.str.21, i64 noundef 5) #19
  %.not415 = icmp eq i32 %i.la, 0
  br i1 %.not415, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.lb = or disjoint i32 %.3, 2
  br label %bb.ca

bb.ca:                                            ; preds = %bb.by, %bb.bz, %bb.bw, %cff_index_get_sid_string.exit439.thread
  %.4 = phi i32 [ %.3, %cff_index_get_sid_string.exit439.thread ], [ %.3, %bb.by ], [ %i.lb, %bb.bz ], [ %.3, %bb.bw ]
  %i.lc = zext nneg i32 %.4 to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.lc, ptr %i.ld, align 8, !tbaa !339
  %.pre526 = load i32, ptr %i.bk, align 4, !tbaa !110
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %._crit_edge
  %i.le = phi i32 [ %.pre526, %bb.ca ], [ %.pre527, %._crit_edge ]
  %i.lf = icmp ne i32 %i.le, 65535                ; 3 uses
  %or.cond6 = or i1 %i.ap, %i.lf
  br i1 %or.cond6, label %bb.cc, label %.sink.split

bb.cc:                                            ; preds = %bb.cb
  %or.cond9 = and i1 %.not394, %i.lf
  br i1 %or.cond9, label %.sink.split, label %bb.cd

.sink.split:                                      ; preds = %bb.cc, %bb.cb
  %.sink586 = phi i64 [ 512, %bb.cb ], [ 4096, %bb.cc ]
  %.ph = phi i1 [ %.not394, %bb.cb ], [ true, %bb.cc ]
  %i.lg = load i64, ptr %i.bo, align 8, !tbaa !111
  %i.lh = or i64 %i.lg, %.sink586
  store i64 %i.lh, ptr %i.bo, align 8, !tbaa !111
  br label %bb.cd

bb.cd:                                            ; preds = %.sink.split, %bb.cc
  %6 = phi i1 [ %.not394, %bb.cc ], [ %.ph, %.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !340 ; 4 uses
  %i.lk = icmp sgt i32 %i.lj, 0
  br i1 %i.lk, label %.lr.ph509, label %._crit_edge510

.lr.ph509:                                        ; preds = %bb.cd
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !341
  %wide.trip.count = zext nneg i32 %i.lj to i64
  br label %bb.ce

bb.ce:                                            ; preds = %.lr.ph509, %.thread463
  %indvars.iv518 = phi i64 [ 0, %.lr.ph509 ], [ %indvars.iv.next519, %.thread463 ] ; 2 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %indvars.iv518
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !342 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 12
  %i.lq = load i16, ptr %i.lp, align 4, !tbaa !343
  switch i16 %i.lq, label %.thread463 [
    i16 3, label %bb.cf
    i16 0, label %.loopexit
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 14
  %i.ls = load i16, ptr %i.lr, align 2, !tbaa !344
  %i.lt = icmp eq i16 %i.ls, 1
  br i1 %i.lt, label %.loopexit, label %.thread463

.thread463:                                       ; preds = %bb.ce, %bb.cf
  %indvars.iv.next519 = add nuw nsw i64 %indvars.iv518, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next519, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge510, label %bb.ce, !llvm.loop !312

._crit_edge510:                                   ; preds = %.thread463, %bb.cd
  %or.cond470.not = and i1 %i.lf, %6
  br i1 %or.cond470.not, label %bb.cp, label %bb.cg

bb.cg:                                            ; preds = %._crit_edge510
  store ptr %1, ptr %5, align 8, !tbaa !345
  %i.lu = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i16 3, ptr %i.lu, align 4, !tbaa !343
  %i.lv = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 1, ptr %i.lv, align 2, !tbaa !344
  %i.lw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1970170211, ptr %i.lw, align 8, !tbaa !346
  %i.lx = call i32 @FT_CMap_New(ptr noundef nonnull @cff_cmap_unicode_class_rec, ptr noundef null, ptr noundef nonnull %5, ptr noundef null) #18 ; 3 uses
  store i32 %i.lx, ptr %i.e, align 4, !tbaa !67
  %.not417 = icmp eq i32 %i.lx, 0
  br i1 %.not417, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %trunc472 = trunc i32 %i.lx to i8
  switch i8 %trunc472, label %bb.cp [
    i8 -93, label %bb.ci
    i8 7, label %bb.ci
  ]

bb.ci:                                            ; preds = %bb.ch, %bb.ch, %bb.cg
  store i32 0, ptr %i.e, align 4, !tbaa !67
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !347
  %.not420 = icmp eq ptr %i.lz, null
  br i1 %.not420, label %bb.cj, label %.loopexit

bb.cj:                                            ; preds = %bb.ci
  %i.ma = load i32, ptr %i.li, align 8, !tbaa !340
  %.not421 = icmp eq i32 %i.lj, %i.ma
  br i1 %.not421, label %.loopexit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !341
  %i.md = sext i32 %i.lj to i64
  %i.me = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.md
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !342
  store ptr %i.mf, ptr %i.ly, align 8, !tbaa !347
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ce, %bb.cf, %bb.ci, %bb.cj, %bb.ck
  %i.mg = getelementptr inbounds nuw i8, ptr %i.as, i64 264
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !135
  %.not422 = icmp eq i32 %i.mh, 0
  br i1 %.not422, label %bb.cp, label %bb.cl

bb.cl:                                            ; preds = %.loopexit
  store ptr %1, ptr %5, align 8, !tbaa !345
  %i.mi = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i16 7, ptr %i.mi, align 4, !tbaa !343
  %i.mj = getelementptr inbounds nuw i8, ptr %i.as, i64 256
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !136
  %i.ml = getelementptr inbounds nuw i8, ptr %5, i64 14
  %i.mm = getelementptr inbounds nuw i8, ptr %5, i64 8
  switch i64 %i.mk, label %bb.cn [
    i64 0, label %bb.co
    i64 1, label %bb.cm
  ]

bb.cm:                                            ; preds = %bb.cl
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  br label %bb.co

bb.co:                                            ; preds = %bb.cl, %bb.cm, %bb.cn
  %.sink588 = phi i16 [ 1, %bb.cm ], [ 2, %bb.cn ], [ 0, %bb.cl ]
  %.sink587 = phi i32 [ 1094992453, %bb.cm ], [ 1094992451, %bb.cn ], [ 1094995778, %bb.cl ]
  store i16 %.sink588, ptr %i.ml, align 2, !tbaa !344
  store i32 %.sink587, ptr %i.mm, align 8, !tbaa !346
  %i.mn = call i32 @FT_CMap_New(ptr noundef nonnull @cff_cmap_encoding_class_rec, ptr noundef null, ptr noundef nonnull %5, ptr noundef null) #18
  store i32 %i.mn, ptr %i.e, align 4, !tbaa !67
  br label %bb.cp

bb.cp:                                            ; preds = %._crit_edge510, %bb.ch, %bb.co, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.pre529 = load i32, ptr %i.e, align 4, !tbaa !67
  br label %.thread465

.thread465:                                       ; preds = %bb.q, %bb.e, %bb.b, %bb.a, %bb.k, %bb.c, %bb.h, %thread-pre-split, %bb.l, %bb.i, %bb.cp, %bb.n, %bb.o, %bb.s, %.thread467, %bb.f
  %.1336 = phi i32 [ 0, %bb.f ], [ 0, %.thread467 ], [ %i.bs, %bb.s ], [ %i.av, %bb.o ], [ %i.at, %bb.n ], [ 2, %bb.e ], [ %.pre529, %bb.cp ], [ %i.ag, %bb.i ], [ %i.ao, %bb.l ], [ %i.an, %thread-pre-split ], [ %i.ad, %bb.h ], [ %i.r, %bb.c ], [ 11, %bb.b ], [ 11, %bb.a ], [ %i.ai, %bb.k ], [ 11, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  ret i32 %.1336
}

; Function Attrs: nounwind uwtable
define internal void @cff_face_done(ptr noundef %0) #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !137  ; 2 uses
  %.not17 = icmp eq ptr %i.d, null
  br i1 %.not17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !350
  tail call void %i.f(ptr noundef nonnull %0) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63   ; 39 uses
  %.not18 = icmp eq ptr %i.h, null
  br i1 %.not18, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !138  ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 184 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !139  ; 3 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %cff_index_done.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !141
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 240 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142
  %.not10.i.i = icmp eq ptr %i.p, null
  br i1 %.not10.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @FT_Stream_ReleaseFrame(ptr noundef nonnull %i.l, ptr noundef nonnull %i.o) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !143
  tail call void @ft_mem_free(ptr noundef %i.n, ptr noundef %i.r) #18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, i8 0, i64 64, i1 false)
  br label %cff_index_done.exit.i

cff_index_done.exit.i:                            ; preds = %bb.h, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 1400 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !139  ; 3 uses
  %.not.i49.i = icmp eq ptr %i.t, null
  br i1 %.not.i49.i, label %cff_index_done.exit51.i, label %bb.i

bb.i:                                             ; preds = %cff_index_done.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !141
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 1456 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !142
  %.not10.i50.i = icmp eq ptr %i.x, null
  br i1 %.not10.i50.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @FT_Stream_ReleaseFrame(ptr noundef nonnull %i.t, ptr noundef nonnull %i.w) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 1448
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !143
  tail call void @ft_mem_free(ptr noundef %i.v, ptr noundef %i.z) #18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, i8 0, i64 64, i1 false)
  br label %cff_index_done.exit51.i

cff_index_done.exit51.i:                          ; preds = %bb.k, %cff_index_done.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !139 ; 3 uses
  %.not.i52.i = icmp eq ptr %i.ab, null
  br i1 %.not.i52.i, label %cff_index_done.exit54.i, label %bb.l

bb.l:                                             ; preds = %cff_index_done.exit51.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !141
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !142
  %.not10.i53.i = icmp eq ptr %i.af, null
  br i1 %.not10.i53.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @FT_Stream_ReleaseFrame(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ae) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !143
  tail call void @ft_mem_free(ptr noundef %i.ad, ptr noundef %i.ah) #18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, i8 0, i64 64, i1 false)
  br label %cff_index_done.exit54.i

cff_index_done.exit54.i:                          ; preds = %bb.n, %cff_index_done.exit51.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 1336 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !139 ; 3 uses
  %.not.i55.i = icmp eq ptr %i.aj, null
  br i1 %.not.i55.i, label %cff_index_done.exit57.i, label %bb.o

bb.o:                                             ; preds = %cff_index_done.exit54.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !141
end_hunk_1
