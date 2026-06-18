inline.NumInlined: 130
inline.NumDeleted: 29
begin_hunk_0_@dpb_split_field:bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 6404
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !83
  %i.dh = icmp sgt i32 %i.dg, 1
  br i1 %i.dh, label %.lr.ph479, label %._crit_edge

.lr.ph477:                                        ; preds = %.preheader471, %.lr.ph477
  %indvars.iv511 = phi i64 [ %indvars.iv.next512, %.lr.ph477 ], [ 0, %.preheader471 ] ; 3 uses
  %i.di = phi ptr [ %i.dx, %.lr.ph477 ], [ %i.bl, %.preheader471 ] ; 2 uses
  %i.dj = load ptr, ptr %i.ai, align 8, !tbaa !65
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 6440
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !96
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv511
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !226
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 6440
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !96
  %.idx555 = shl nuw nsw i64 %indvars.iv511, 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.idx555
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !226
  %i.dt = getelementptr inbounds nuw i8, ptr %i.di, i64 6392
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !78
  %i.dv = sext i32 %i.du to i64
  %i.dw = shl nsw i64 %i.dv, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.dn, ptr align 2 %i.ds, i64 %i.dw, i1 false)
  %indvars.iv.next512 = add nuw nsw i64 %indvars.iv511, 1 ; 2 uses
  %i.dx = load ptr, ptr %i.a, align 8, !tbaa !62  ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 6396
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !79
  %i.ea = sdiv i32 %i.dz, 2
  %i.eb = sext i32 %i.ea to i64
  %i.ec = icmp slt i64 %indvars.iv.next512, %i.eb
  br i1 %i.ec, label %.lr.ph477, label %.preheader470, !llvm.loop !231

.lr.ph479:                                        ; preds = %.preheader470, %.lr.ph479
  %indvars.iv514 = phi i64 [ %indvars.iv.next515, %.lr.ph479 ], [ 0, %.preheader470 ] ; 4 uses
  %i.ed = phi ptr [ %i.fn, %.lr.ph479 ], [ %i.de, %.preheader470 ] ; 2 uses
  %i.ee = load ptr, ptr %i.ai, align 8, !tbaa !65
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 6472
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !100
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !229
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv514
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !226
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 6472
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !100
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !229
  %i.en = shl nuw nsw i64 %indvars.iv514, 1
  %i.eo = or disjoint i64 %i.en, 1                ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !226
  %i.er = getelementptr inbounds nuw i8, ptr %i.ed, i64 6400
  %i.es = load i32, ptr %i.er, align 8, !tbaa !82
  %i.et = sext i32 %i.es to i64
  %i.eu = shl nsw i64 %i.et, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ej, ptr align 2 %i.eq, i64 %i.eu, i1 false)
  %i.ev = load ptr, ptr %i.ai, align 8, !tbaa !65
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 6472
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !100
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !229
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv514
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !226
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 6472
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !100
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !229
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.eo
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !226
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 6400
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !82
  %i.fl = sext i32 %i.fk to i64
  %i.fm = shl nsw i64 %i.fl, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.fb, ptr align 2 %i.fi, i64 %i.fm, i1 false)
  %indvars.iv.next515 = add nuw nsw i64 %indvars.iv514, 1 ; 2 uses
  %i.fn = load ptr, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 6404
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !83
  %i.fq = sdiv i32 %i.fp, 2
  %i.fr = sext i32 %i.fq to i64
  %i.fs = icmp slt i64 %indvars.iv.next515, %i.fr
  br i1 %i.fs, label %.lr.ph479, label %._crit_edge, !llvm.loop !232

._crit_edge:                                      ; preds = %.lr.ph479, %.preheader470
  %i.ft = load ptr, ptr %i.v, align 8, !tbaa !64
  tail call void @UnifiedOneForthPix(ptr noundef %i.ft) #16
  %i.fu = load ptr, ptr %i.ai, align 8, !tbaa !65
  tail call void @UnifiedOneForthPix(ptr noundef %i.fu) #16
  %i.fv = load ptr, ptr %i.a, align 8, !tbaa !62  ; 13 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !201 ; 3 uses
  %i.fy = load ptr, ptr %i.v, align 8, !tbaa !64  ; 15 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  store i32 %i.fx, ptr %i.fz, align 4, !tbaa !132
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !203 ; 3 uses
  %i.gc = load ptr, ptr %i.ai, align 8, !tbaa !65 ; 14 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  store i32 %i.gb, ptr %i.gd, align 4, !tbaa !132
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !233 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store i32 %i.gf, ptr %i.gg, align 8, !tbaa !233
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 %i.gb, ptr %i.gh, align 4, !tbaa !203
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  store i32 %i.gb, ptr %i.gi, align 4, !tbaa !203
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i32 %i.fx, ptr %i.gj, align 8, !tbaa !201
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store i32 %i.fx, ptr %i.gk, align 8, !tbaa !201
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store i32 %i.gf, ptr %i.gl, align 8, !tbaa !233
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fv, i64 6380
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !101 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 6380
  store i32 %i.gn, ptr %i.go, align 4, !tbaa !101
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fy, i64 6380
  store i32 %i.gn, ptr %i.gp, align 4, !tbaa !101
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fv, i64 6376
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !102 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gc, i64 6376
  store i32 %i.gr, ptr %i.gs, align 8, !tbaa !102
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fy, i64 6376
  store i32 %i.gr, ptr %i.gt, align 8, !tbaa !102
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fv, i64 6372
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !109 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gc, i64 6372
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !109
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fy, i64 6372
  store i32 %i.gv, ptr %i.gx, align 4, !tbaa !109
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.gv, ptr %i.gy, align 4, !tbaa !155
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gc, i64 6428
  store i32 1, ptr %i.gz, align 4, !tbaa !88
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fy, i64 6428
  store i32 1, ptr %i.ha, align 4, !tbaa !88
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fv, i64 6432
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !89 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gc, i64 6432
  store i32 %i.hc, ptr %i.hd, align 8, !tbaa !89
  %i.he = getelementptr inbounds nuw i8, ptr %i.fy, i64 6432
  store i32 %i.hc, ptr %i.he, align 8, !tbaa !89
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fv, i64 6536
  store ptr %i.fy, ptr %i.hf, align 8, !tbaa !156
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fv, i64 6544
  store ptr %i.gc, ptr %i.hg, align 8, !tbaa !157
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fy, i64 6544
  store ptr %i.gc, ptr %i.hh, align 8, !tbaa !157
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fy, i64 6552
  store ptr %i.fv, ptr %i.hi, align 8, !tbaa !234
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gc, i64 6536
  store ptr %i.fy, ptr %i.hj, align 8, !tbaa !156
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gc, i64 6552
  store ptr %i.fv, ptr %i.hk, align 8, !tbaa !234
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fv, i64 6560
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !235 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gc, i64 6560
  store i32 %i.hm, ptr %i.hn, align 8, !tbaa !235
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fy, i64 6560
  store i32 %i.hm, ptr %i.ho, align 8, !tbaa !235
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fy, i64 288
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fv, i64 816
  %i.hr = load i32, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !4
  %i.hs = shl nsw i32 %i.hr, 1
  %i.ht = sext i32 %i.hs to i64
  %i.hu = shl nsw i64 %i.ht, 3                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hp, ptr nonnull align 8 %i.hq, i64 %i.hu, i1 false)
  %i.hv = load ptr, ptr %i.ai, align 8, !tbaa !65
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 288
  %i.hx = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 1344
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hw, ptr nonnull align 8 %i.hy, i64 %i.hu, i1 false)
  %i.hz = load ptr, ptr %i.v, align 8, !tbaa !64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 552
  %i.id = load i32, ptr @listXsize, align 16, !tbaa !4
  %i.ie = shl nsw i32 %i.id, 1
  %i.if = sext i32 %i.ie to i64
  %i.ig = shl nsw i64 %i.if, 3                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ia, ptr nonnull align 8 %i.ic, i64 %i.ig, i1 false)
  %i.ih = load ptr, ptr %i.ai, align 8, !tbaa !65
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.ij = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 1080
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ii, ptr nonnull align 8 %i.ik, i64 %i.ig, i1 false)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !62
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 6536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.il, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.im, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.in = phi ptr [ %i.b, %bb.c ], [ %.pre, %._crit_edge ] ; 14 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 6396
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !79 ; 5 uses
  %i.iq = sdiv i32 %i.ip, 4                       ; 2 uses
  %i.ir = icmp sgt i32 %i.ip, 3
  br i1 %i.ir, label %.lr.ph486, label %._crit_edge487.split

.lr.ph486:                                        ; preds = %bb.d
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 6392
  %i.it = load i32, ptr %i.is, align 8, !tbaa !78 ; 2 uses
  %1 = sdiv i32 %i.it, 4                          ; 2 uses
  %i.iu = icmp sgt i32 %i.it, 3
  %i.iv = getelementptr inbounds nuw i8, ptr %i.in, i64 6480
  %i.iw = getelementptr inbounds nuw i8, ptr %i.in, i64 6488 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.in, i64 24 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.in, i64 6504 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.in, i64 1608 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.in, i64 288 ; 2 uses
  br i1 %i.iu, label %.lr.ph486.split, label %._crit_edge487.split

.lr.ph486.split:                                  ; preds = %.lr.ph486
  %2 = getelementptr inbounds nuw i8, ptr %i.in, i64 6432
  %3 = load i32, ptr %2, align 8, !tbaa !89
  %.not462 = icmp eq i32 %3, 0
  br i1 %.not462, label %.lr.ph486.split.split.us, label %.lr.ph486.split.split

.lr.ph486.split.split.us:                         ; preds = %.lr.ph486.split
  %4 = load ptr, ptr %i.iw, align 8, !tbaa !90    ; 2 uses
  %5 = load ptr, ptr %4, align 8, !tbaa !212
  %i.jb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %6 = load ptr, ptr %i.jb, align 8, !tbaa !212
  %7 = load ptr, ptr %i.iy, align 8, !tbaa !92    ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !217
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %10 = load ptr, ptr %9, align 8, !tbaa !217
  %wide.trip.count533 = zext nneg i32 %i.iq to i64
  %wide.trip.count528.a = zext nneg i32 %1 to i64
  br label %.lr.ph482.us

.lr.ph482.us:                                     ; preds = %._crit_edge483.split.us.us, %.lr.ph486.split.split.us
  %indvars.iv530 = phi i64 [ %indvars.iv.next531, %._crit_edge483.split.us.us ], [ 0, %.lr.ph486.split.split.us ] ; 5 uses
  %11 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv530
  %12 = load ptr, ptr %11, align 8, !tbaa !213
  %13 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv530
  %14 = load ptr, ptr %13, align 8, !tbaa !213
  %15 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv530
  %16 = load ptr, ptr %15, align 8, !tbaa !219
  %17 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %indvars.iv530
  %18 = load ptr, ptr %17, align 8, !tbaa !219
  br label %19

19:                                               ; preds = %37, %.lr.ph482.us
  %indvars.iv525 = phi i64 [ %indvars.iv.next526, %37 ], [ 0, %.lr.ph482.us ] ; 5 uses
  %20 = getelementptr inbounds nuw i8, ptr %12, i64 %indvars.iv525
  %21 = load i8, ptr %20, align 1, !tbaa !214     ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %14, i64 %indvars.iv525
  %23 = load i8, ptr %22, align 1, !tbaa !214     ; 2 uses
  %24 = sext i8 %23 to i64
  %25 = icmp sgt i8 %21, -1
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = zext nneg i8 %21 to i64
  %28 = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !215
  br label %30

30:                                               ; preds = %26, %19
  %31 = phi i64 [ %29, %26 ], [ -1, %19 ]
  %32 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %indvars.iv525
  store i64 %31, ptr %32, align 8, !tbaa !215
  %33 = icmp sgt i8 %23, -1
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %24
  %36 = load i64, ptr %35, align 8, !tbaa !215
  br label %37

37:                                               ; preds = %34, %30
  %38 = phi i64 [ %36, %34 ], [ -1, %30 ]
  %39 = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv525
  store i64 %38, ptr %39, align 8, !tbaa !215
  %indvars.iv.next526 = add nuw nsw i64 %indvars.iv525, 1 ; 2 uses
  %exitcond529.not = icmp eq i64 %indvars.iv.next526, %wide.trip.count528.a
  br i1 %exitcond529.not, label %._crit_edge483.split.us.us, label %19, !llvm.loop !236

._crit_edge483.split.us.us:                       ; preds = %37
  %indvars.iv.next531 = add nuw nsw i64 %indvars.iv530, 1 ; 2 uses
  %exitcond534.not = icmp eq i64 %indvars.iv.next531, %wide.trip.count533
  br i1 %exitcond534.not, label %._crit_edge487.split, label %.lr.ph482.us, !llvm.loop !237

.lr.ph486.split.split:                            ; preds = %.lr.ph486.split
  %40 = load ptr, ptr %i.iv, align 8, !tbaa !69
  %wide.trip.count523 = zext nneg i32 %i.iq to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  %41 = load ptr, ptr %i.iw, align 8, !tbaa !90   ; 3 uses
  %42 = load ptr, ptr %41, align 8, !tbaa !212
  %43 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %44 = getelementptr inbounds nuw i8, ptr %41, i64 8
  br label %.lr.ph482

.lr.ph482:                                        ; preds = %.lr.ph486.split.split, %._crit_edge483.split
  %indvars.iv520.a = phi i64 [ 0, %.lr.ph486.split.split ], [ %indvars.iv.next521, %._crit_edge483.split ] ; 10 uses
  %i.jc = trunc nuw nsw i64 %indvars.iv520.a to i32 ; 2 uses
  %i.jd = lshr i32 %i.jc, 2
  %i.je = and i32 %i.jd, 1                        ; 2 uses
  %i.jf = lshr i32 %i.jc, 3
  %i.jg = mul nsw i32 %i.jf, %i.f
  %invariant.op.a = or disjoint i32 %i.jg, %i.je
  %.not464 = icmp eq i32 %i.je, 0
  %i.jh = select i1 %.not464, i32 2, i32 4        ; 2 uses
  %i.ji = zext nneg i32 %i.jh to i64              ; 4 uses
  %i.jj = getelementptr inbounds nuw [264 x i8], ptr %i.ix, i64 %i.ji
  %i.jk = getelementptr inbounds nuw [264 x i8], ptr %i.in, i64 %i.ji
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 288
  %i.jm = or disjoint i32 %i.jh, 1
  %i.jn = zext nneg i32 %i.jm to i64              ; 2 uses
  %i.jo = getelementptr inbounds nuw [264 x i8], ptr %i.iz, i64 %i.ji
  %i.jp = getelementptr inbounds nuw [264 x i8], ptr %i.iz, i64 %i.jn
  %45 = getelementptr inbounds nuw [8 x i8], ptr %42, i64 %indvars.iv520.a
  %46 = load ptr, ptr %45, align 8, !tbaa !213
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph482, %bb.r
  %indvars.iv517 = phi i64 [ 0, %.lr.ph482 ], [ %indvars.iv.next518, %bb.r ] ; 10 uses
  %i.jq = trunc nuw nsw i64 %indvars.iv517 to i32
  %i.jr = lshr i32 %i.jq, 1
  %i.js = and i32 %i.jr, 1073741822
  %.reass.a = add i32 %i.js, %invariant.op.a
  %i.jt = sext i32 %.reass.a to i64
  %i.ju = getelementptr inbounds i8, ptr %40, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !214
  %.not463 = icmp eq i8 %i.jv, 0
  %i.jw = getelementptr inbounds nuw i8, ptr %46, i64 %indvars.iv517
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !214 ; 4 uses
  br i1 %.not463, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.jy = sext i8 %i.jx to i32                    ; 2 uses
  %i.jz = load ptr, ptr %43, align 8, !tbaa !212
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %indvars.iv520.a
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !213
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 %indvars.iv517
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !214 ; 2 uses
  %i.ke = sext i8 %i.kd to i32                    ; 2 uses
  %i.kf = icmp sgt i8 %i.jx, -1                   ; 2 uses
  br i1 %i.kf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.kg = zext nneg i32 %i.jy to i64
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.kg
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !215
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.kj = phi i64 [ %i.ki, %bb.g ], [ 0, %bb.f ]
  %i.kk = load ptr, ptr %i.iy, align 8, !tbaa !92 ; 5 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.ji
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !217
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %indvars.iv520.a
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !219
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %indvars.iv517
  store i64 %i.kj, ptr %i.kp, align 8, !tbaa !215
  %i.kq = icmp sgt i8 %i.kd, -1                   ; 2 uses
  br i1 %i.kq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.kr = zext nneg i32 %i.ke to i64
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.kr
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !215
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ku = phi i64 [ %i.kt, %bb.i ], [ 0, %bb.h ]
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.jn
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !217
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv520.a
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !219
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %indvars.iv517
  store i64 %i.ku, ptr %i.kz, align 8, !tbaa !215
  br i1 %i.kf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.la = zext nneg i32 %i.jy to i64
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %i.la
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !215
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ld = phi i64 [ %i.lc, %bb.k ], [ 0, %bb.j ]
  %i.le = load ptr, ptr %i.kk, align 8, !tbaa !217
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %indvars.iv520.a
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !219
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %indvars.iv517
  store i64 %i.ld, ptr %i.lh, align 8, !tbaa !215
  br i1 %i.kq, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.li = zext nneg i32 %i.ke to i64
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.li
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !215
  br label %bb.r

bb.n:                                             ; preds = %bb.e
  %i.ll = load ptr, ptr %44, align 8, !tbaa !212
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv520.a
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !213
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 %indvars.iv517
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !214 ; 2 uses
  %i.lq = sext i8 %i.lp to i64
  %i.lr = icmp sgt i8 %i.jx, -1
  br i1 %i.lr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ls = zext nneg i8 %i.jx to i64
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.ls
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !215
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.lv = phi i64 [ %i.lu, %bb.o ], [ -1, %bb.n ]
  %i.lw = load ptr, ptr %i.iy, align 8, !tbaa !92 ; 3 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !217
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv520.a
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !219
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %indvars.iv517
  store i64 %i.lv, ptr %i.ma, align 8, !tbaa !215
  %i.mb = icmp sgt i8 %i.lp, -1
  br i1 %i.mb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.lq
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !215
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.m, %bb.l
  %.sink571 = phi ptr [ %i.kk, %bb.m ], [ %i.kk, %bb.l ], [ %i.lw, %bb.p ], [ %i.lw, %bb.q ]
  %.sink = phi i64 [ %i.lk, %bb.m ], [ 0, %bb.l ], [ -1, %bb.p ], [ %i.md, %bb.q ]
  %i.me = getelementptr inbounds nuw i8, ptr %.sink571, i64 8
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !217
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %indvars.iv520.a
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !219
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %indvars.iv517
  store i64 %.sink, ptr %i.mi, align 8, !tbaa !215
  %indvars.iv.next518 = add nuw nsw i64 %indvars.iv517, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next518, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge483.split, label %bb.e, !llvm.loop !236

._crit_edge483.split:                             ; preds = %bb.r
  %indvars.iv.next521 = add nuw nsw i64 %indvars.iv520.a, 1 ; 2 uses
  %exitcond524.not = icmp eq i64 %indvars.iv.next521, %wide.trip.count523
  br i1 %exitcond524.not, label %._crit_edge487.split, label %.lr.ph482, !llvm.loop !237

._crit_edge487.split:                             ; preds = %._crit_edge483.split, %._crit_edge483.split.us.us, %.lr.ph486, %bb.d
  %i.mj = load ptr, ptr @active_sps, align 8, !tbaa !8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 1148
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !15
  %.not456 = icmp eq i32 %i.ml, 0
  br i1 %.not456, label %bb.s, label %.loopexit469.thread557

bb.s:                                             ; preds = %._crit_edge487.split
  %i.mm = getelementptr inbounds nuw i8, ptr %i.in, i64 6432
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !89
  %.not457 = icmp eq i32 %i.mn, 0
  br i1 %.not457, label %.preheader, label %.preheader468

.preheader468:                                    ; preds = %bb.s
  %i.mo = icmp sgt i32 %i.ip, 7
  br i1 %i.mo, label %.lr.ph497, label %.loopexit

.lr.ph497:                                        ; preds = %.preheader468
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph497, %._crit_edge493
  %i.mr = phi ptr [ %i.in, %.lr.ph497 ], [ %i.wb, %._crit_edge493 ] ; 4 uses
  %indvars.iv538 = phi i64 [ 0, %.lr.ph497 ], [ %indvars.iv.next539, %._crit_edge493 ] ; 17 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 6392
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !78
  %i.mu = icmp sgt i32 %i.mt, 3
  br i1 %i.mu, label %.lr.ph492, label %._crit_edge493

.lr.ph492:                                        ; preds = %bb.t
  %i.mv = trunc nuw nsw i64 %indvars.iv538 to i32 ; 3 uses
  %i.mw = lshr i32 %i.mv, 1
  %i.mx = shl nuw nsw i64 %indvars.iv538, 1       ; 3 uses
  %i.my = trunc nuw nsw i64 %i.mx to i32
  %i.mz = and i32 %i.my, 2147483640
  %i.na = and i32 %i.mv, 3
  %i.nb = or disjoint i32 %i.mz, %i.na            ; 2 uses
  %i.nc = or disjoint i32 %i.nb, 4
  %i.nd = lshr i32 %i.mv, 2
  %i.ne = mul nsw i32 %i.nd, %i.f
  %i.nf = and i32 %i.mw, 1
  %invariant.op494 = or disjoint i32 %i.ne, %i.nf
  %i.ng = zext nneg i32 %i.nc to i64              ; 6 uses
  %i.nh = zext nneg i32 %i.nb to i64              ; 6 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph492, %bb.w
  %i.ni = phi ptr [ %i.mr, %.lr.ph492 ], [ %i.vu, %bb.w ]
  %i.nj = phi ptr [ %i.mr, %.lr.ph492 ], [ %i.vv, %bb.w ] ; 2 uses
  %indvars.iv535 = phi i64 [ 0, %.lr.ph492 ], [ %indvars.iv.next536, %bb.w ] ; 30 uses
  %i.nk = trunc nuw nsw i64 %indvars.iv535 to i32
  %i.nl = lshr i32 %i.nk, 1
  %i.nm = and i32 %i.nl, 1073741822
  %.reass495 = add i32 %i.nm, %invariant.op494
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 6480
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !69
  %i.np = sext i32 %.reass495 to i64
  %i.nq = getelementptr inbounds i8, ptr %i.no, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !214
  %.not458 = icmp eq i8 %i.nr, 0
  br i1 %.not458, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ns = load ptr, ptr %i.mp, align 8, !tbaa !64
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 6528
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !95
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %indvars.iv538
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !213
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 %indvars.iv535
  store i8 1, ptr %i.nx, align 1, !tbaa !214
  %i.ny = load ptr, ptr %i.mq, align 8, !tbaa !65
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 6528
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !95
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %indvars.iv538
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !213
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %indvars.iv535
  store i8 1, ptr %i.od, align 1, !tbaa !214
  %i.oe = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 6528
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !95
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %i.mx
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !213
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 %indvars.iv535
  store i8 1, ptr %i.ok, align 1, !tbaa !214
  %i.ol = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 6528
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !95
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %i.mx
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !213
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 %indvars.iv535
  store i8 1, ptr %i.oq, align 1, !tbaa !214
  %i.or = load ptr, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 6512
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !93 ; 2 uses
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !238
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %i.ng
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !229
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %indvars.iv535
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !226 ; 2 uses
  %i.oz = load i16, ptr %i.oy, align 2, !tbaa !239
  %i.pa = load ptr, ptr %i.mq, align 8, !tbaa !65 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 6512
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !93 ; 2 uses
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !238
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %indvars.iv538
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !229
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %indvars.iv535
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !226 ; 2 uses
  store i16 %i.oz, ptr %i.ph, align 2, !tbaa !239
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oy, i64 2
  %i.pj = load i16, ptr %i.pi, align 2, !tbaa !239
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 2
  store i16 %i.pj, ptr %i.pk, align 2, !tbaa !239
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !238
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %i.ng
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !229
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %indvars.iv535
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !226 ; 2 uses
  %i.pr = load i16, ptr %i.pq, align 2, !tbaa !239
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !238
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %indvars.iv538
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !229
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %indvars.iv535
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !226 ; 2 uses
  store i16 %i.pr, ptr %i.px, align 2, !tbaa !239
  %i.py = getelementptr inbounds nuw i8, ptr %i.pq, i64 2
  %i.pz = load i16, ptr %i.py, align 2, !tbaa !239
  %i.qa = getelementptr inbounds nuw i8, ptr %i.px, i64 2
  store i16 %i.pz, ptr %i.qa, align 2, !tbaa !239
  %i.qb = getelementptr inbounds nuw i8, ptr %i.or, i64 6488
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !90
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !212
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %i.ng
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !213
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 %indvars.iv535
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !214
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pa, i64 6488
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !90
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !212
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %indvars.iv538
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !213
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 %indvars.iv535
  store i8 %i.qh, ptr %i.qn, align 1, !tbaa !214
  %i.qo = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 6488
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !90
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !212
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %i.ng
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !213
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 %indvars.iv535
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !214
  %i.qx = load ptr, ptr %i.mq, align 8, !tbaa !65
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 6488
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !90
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !212
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv538
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !213
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 %indvars.iv535
  store i8 %i.qw, ptr %i.re, align 1, !tbaa !214
  %i.rf = load ptr, ptr %i.a, align 8, !tbaa !62  ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 6504
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !92 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 32
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !217
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %i.ng
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !219
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.rl, i64 %indvars.iv535
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !215
  %i.ro = load ptr, ptr %i.mq, align 8, !tbaa !65
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 6504
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !92 ; 2 uses
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !217
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %indvars.iv538
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !219
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %indvars.iv535
  store i64 %i.rn, ptr %i.ru, align 8, !tbaa !215
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rh, i64 40
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !217
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.ng
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !219
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %indvars.iv535
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !215
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !217
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %indvars.iv538
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !219
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.se, i64 %indvars.iv535
  store i64 %i.sa, ptr %i.sf, align 8, !tbaa !215
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rf, i64 6512
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !93 ; 2 uses
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !238
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.si, i64 %i.nh
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !229
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.sk, i64 %indvars.iv535
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !226 ; 2 uses
end_hunk_0
begin_hunk_1_@compute_colocated:bb.a
._crit_edge970:                                   ; preds = %bb.bz
  %i.asq = icmp eq i8 %i.asb, -1
  br i1 %i.asq, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %._crit_edge970
  %i.asr = getelementptr inbounds nuw i8, ptr %.pre968, i64 8
  %i.ass = load ptr, ptr %i.asr, align 8, !tbaa !212
  %i.ast = getelementptr inbounds nuw [8 x i8], ptr %i.ass, i64 %indvars.iv890
  %i.asu = load ptr, ptr %i.ast, align 8, !tbaa !213
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asu, i64 %indvars.iv887
  %i.asw = load i8, ptr %i.asv, align 1, !tbaa !214
  %i.asx = icmp eq i8 %i.asw, 0
  br i1 %i.asx, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.asy = load ptr, ptr %i.aix, align 8, !tbaa !293
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asy, i64 8
  %i.ata = load ptr, ptr %i.asz, align 8, !tbaa !238
  %i.atb = getelementptr inbounds nuw [8 x i8], ptr %i.ata, i64 %indvars.iv890
  %i.atc = load ptr, ptr %i.atb, align 8, !tbaa !229
  %i.atd = getelementptr inbounds nuw [8 x i8], ptr %i.atc, i64 %indvars.iv887
  %i.ate = load ptr, ptr %i.atd, align 8, !tbaa !226 ; 2 uses
  %i.atf = load i16, ptr %i.ate, align 2, !tbaa !239
  %i.atg = tail call i16 @llvm.abs.i16(i16 %i.atf, i1 false)
  %i.ath = icmp ult i16 %i.atg, 2
  br i1 %i.ath, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ati = getelementptr inbounds nuw i8, ptr %i.ate, i64 2
  %i.atj = load i16, ptr %i.ati, align 2, !tbaa !239
  %i.atk = add i16 %i.atj, -2
  %i.atl = icmp ult i16 %i.atk, -3
  %i.atm = zext i1 %i.atl to i8
  br label %bb.cf

bb.cf:                                            ; preds = %.thread1021, %._crit_edge970, %bb.cc, %bb.cd, %bb.ce, %bb.cb
  %i.atn = phi i8 [ 0, %bb.cb ], [ 1, %bb.cd ], [ 1, %bb.cc ], [ 1, %._crit_edge970 ], [ %i.atm, %bb.ce ], [ 1, %.thread1021 ]
  %i.ato = load ptr, ptr %i.ajc, align 8, !tbaa !294
  %i.atp = getelementptr inbounds nuw [8 x i8], ptr %i.ato, i64 %indvars.iv890
  %i.atq = load ptr, ptr %i.atp, align 8, !tbaa !213
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atq, i64 %indvars.iv887
  store i8 %i.atn, ptr %i.atr, align 1, !tbaa !214
  br label %bb.cg

bb.cg:                                            ; preds = %.lr.ph847, %bb.cf
  %indvars.iv.next888 = add nuw nsw i64 %indvars.iv887, 1 ; 2 uses
  %i.ats = load i32, ptr %i.aiv, align 8, !tbaa !78 ; 2 uses
  %i.att = sdiv i32 %i.ats, 4
  %i.atu = sext i32 %i.att to i64
  %i.atv = icmp slt i64 %indvars.iv.next888, %i.atu
  br i1 %i.atv, label %.lr.ph847, label %._crit_edge848.loopexit, !llvm.loop !316

._crit_edge848.loopexit:                          ; preds = %bb.cg
  %.pre975 = load i32, ptr %i.ais, align 4, !tbaa !79
  br label %._crit_edge848

._crit_edge848:                                   ; preds = %._crit_edge848.loopexit, %.preheader822
  %i.atw = phi i32 [ %.pre975, %._crit_edge848.loopexit ], [ %i.aoq, %.preheader822 ] ; 3 uses
  %i.atx = phi i32 [ %i.ats, %._crit_edge848.loopexit ], [ %i.aor, %.preheader822 ]
  %indvars.iv.next891 = add nuw nsw i64 %indvars.iv890, 1 ; 2 uses
  %i.aty = sdiv i32 %i.atw, 4
  %i.atz = sext i32 %i.aty to i64
  %i.aua = icmp slt i64 %indvars.iv.next891, %i.atz
  br i1 %i.aua, label %.preheader822, label %.loopexit821, !llvm.loop !317

.loopexit821:                                     ; preds = %._crit_edge848, %._crit_edge853, %.preheader823, %bb.bo
  %i.aub = phi i32 [ %i.aol, %._crit_edge853 ], [ %i.ajf, %bb.bo ], [ %i.ait, %.preheader823 ], [ %i.atw, %._crit_edge848 ] ; 2 uses
  %i.auc = load ptr, ptr @img, align 8, !tbaa !8  ; 5 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %i.auc, i64 14452
  %i.aue = load i32, ptr %i.aud, align 4, !tbaa !309
  %i.auf = icmp eq i32 %i.aue, 0
  br i1 %i.auf, label %.preheader820, label %.loopexit

.preheader820:                                    ; preds = %.loopexit821
  %i.aug = sdiv i32 %i.aub, 4                     ; 2 uses
  %i.auh = icmp sgt i32 %i.aub, 3
  br i1 %i.auh, label %.preheader819.lr.ph, label %.preheader818

.preheader819.lr.ph:                              ; preds = %.preheader820
  %i.aui = getelementptr inbounds nuw i8, ptr %.0, i64 6392
  %i.auj = load i32, ptr %i.aui, align 8, !tbaa !78 ; 2 uses
  %i.auk = sdiv i32 %i.auj, 4                     ; 2 uses
  %i.aul = icmp sgt i32 %i.auj, 3
  %i.aum = getelementptr inbounds nuw i8, ptr %.0, i64 6528 ; 2 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %i.auc, i64 24 ; 2 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 4 uses
  br i1 %i.aul, label %.preheader819.lr.ph.split, label %.preheader818

.preheader819.lr.ph.split:                        ; preds = %.preheader819.lr.ph
  %i.aup = getelementptr inbounds nuw i8, ptr %i.auc, i64 15268
  %i.auq = load i32, ptr %i.aup, align 4, !tbaa !304
  %.not796 = icmp eq i32 %i.auq, 0
  br i1 %.not796, label %.preheader819.lr.ph.split.split.us, label %.preheader819.lr.ph.split.split

.preheader819.lr.ph.split.split.us:               ; preds = %.preheader819.lr.ph.split
  %i.aur = load i32, ptr %i.aun, align 8, !tbaa !160
  %.not797.us.us = icmp eq i32 %i.aur, 0
  %i.aus = load ptr, ptr %i.aum, align 8, !tbaa !95 ; 2 uses
  %wide.trip.count925 = zext nneg i32 %i.aug to i64 ; 2 uses
  %wide.trip.count920 = zext nneg i32 %i.auk to i64 ; 2 uses
  br i1 %.not797.us.us, label %.preheader819.us.us.a, label %.preheader819.us.a

.preheader819.us.us.a:                            ; preds = %.preheader819.lr.ph.split.split.us, %._crit_edge859.split.us.us.split.us.us
  %indvars.iv922.a = phi i64 [ %indvars.iv.next923.a, %._crit_edge859.split.us.us.split.us.us ], [ 0, %.preheader819.lr.ph.split.split.us ] ; 4 uses
  %i.aut = getelementptr inbounds nuw [8 x i8], ptr %i.aus, i64 %indvars.iv922.a
  %i.auu = load ptr, ptr %i.aut, align 8, !tbaa !213
  br label %bb.ch

bb.ch:                                            ; preds = %.thread.us.us.us.us, %.preheader819.us.us.a
  %indvars.iv917.a = phi i64 [ %indvars.iv.next918.a, %.thread.us.us.us.us ], [ 0, %.preheader819.us.us.a ] ; 4 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auu, i64 %indvars.iv917.a
  %i.auw = load i8, ptr %i.auv, align 1, !tbaa !214
  %.not798.us.us.us.us = icmp eq i8 %i.auw, 0
  br i1 %.not798.us.us.us.us, label %.thread.us.us.us.us, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.aux = load ptr, ptr %i.auo, align 8, !tbaa !293 ; 2 uses
  %i.auy = load ptr, ptr %i.aux, align 8, !tbaa !238
  %i.auz = getelementptr inbounds nuw [8 x i8], ptr %i.auy, i64 %indvars.iv922.a
  %i.ava = load ptr, ptr %i.auz, align 8, !tbaa !229
  %i.avb = getelementptr inbounds nuw [8 x i8], ptr %i.ava, i64 %indvars.iv917.a
  %i.avc = load ptr, ptr %i.avb, align 8, !tbaa !226
  %i.avd = getelementptr inbounds nuw i8, ptr %i.avc, i64 2 ; 2 uses
  %i.ave = load i16, ptr %i.avd, align 2, !tbaa !239
  %i.avf = shl i16 %i.ave, 1
  store i16 %i.avf, ptr %i.avd, align 2, !tbaa !239
  %i.avg = getelementptr inbounds nuw i8, ptr %i.aux, i64 8
  %i.avh = load ptr, ptr %i.avg, align 8, !tbaa !238
  %i.avi = getelementptr inbounds nuw [8 x i8], ptr %i.avh, i64 %indvars.iv922.a
  %i.avj = load ptr, ptr %i.avi, align 8, !tbaa !229
  %i.avk = getelementptr inbounds nuw [8 x i8], ptr %i.avj, i64 %indvars.iv917.a
  %i.avl = load ptr, ptr %i.avk, align 8, !tbaa !226
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avl, i64 2 ; 2 uses
  %i.avn = load i16, ptr %i.avm, align 2, !tbaa !239
  %i.avo = shl i16 %i.avn, 1
  store i16 %i.avo, ptr %i.avm, align 2, !tbaa !239
  br label %.thread.us.us.us.us

.thread.us.us.us.us:                              ; preds = %bb.ch, %bb.ci
  %indvars.iv.next918.a = add nuw nsw i64 %indvars.iv917.a, 1 ; 2 uses
  %exitcond921.not.a = icmp eq i64 %indvars.iv.next918.a, %wide.trip.count920
  br i1 %exitcond921.not.a, label %._crit_edge859.split.us.us.split.us.us, label %bb.ch, !llvm.loop !318

._crit_edge859.split.us.us.split.us.us:           ; preds = %.thread.us.us.us.us
  %indvars.iv.next923.a = add nuw nsw i64 %indvars.iv922.a, 1 ; 2 uses
  %exitcond926.not.a = icmp eq i64 %indvars.iv.next923.a, %wide.trip.count925
  br i1 %exitcond926.not.a, label %.preheader818, label %.preheader819.us.us.a, !llvm.loop !319

.preheader819.us.a:                               ; preds = %.preheader819.lr.ph.split.split.us, %._crit_edge859.split.us.us.split
  %indvars.iv912.a = phi i64 [ %indvars.iv.next913.a, %._crit_edge859.split.us.us.split ], [ 0, %.preheader819.lr.ph.split.split.us ] ; 4 uses
  %i.avp = getelementptr inbounds nuw [8 x i8], ptr %i.aus, i64 %indvars.iv912.a
  %i.avq = load ptr, ptr %i.avp, align 8, !tbaa !213
  br label %.thread.us.us

.thread.us.us:                                    ; preds = %bb.ck, %.preheader819.us.a
  %indvars.iv907 = phi i64 [ %indvars.iv.next908, %bb.ck ], [ 0, %.preheader819.us.a ] ; 4 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avq, i64 %indvars.iv907
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !214
  %.not802.us.us = icmp eq i8 %i.avs, 0
  br i1 %.not802.us.us, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.thread.us.us
  %i.avt = load ptr, ptr %i.auo, align 8, !tbaa !293 ; 2 uses
  %i.avu = load ptr, ptr %i.avt, align 8, !tbaa !238
  %i.avv = getelementptr inbounds nuw [8 x i8], ptr %i.avu, i64 %indvars.iv912.a
  %i.avw = load ptr, ptr %i.avv, align 8, !tbaa !229
  %i.avx = getelementptr inbounds nuw [8 x i8], ptr %i.avw, i64 %indvars.iv907
  %i.avy = load ptr, ptr %i.avx, align 8, !tbaa !226
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avy, i64 2 ; 2 uses
  %i.awa = load i16, ptr %i.avz, align 2, !tbaa !239
  %i.awb = sdiv i16 %i.awa, 2
  store i16 %i.awb, ptr %i.avz, align 2, !tbaa !239
  %i.awc = getelementptr inbounds nuw i8, ptr %i.avt, i64 8
  %i.awd = load ptr, ptr %i.awc, align 8, !tbaa !238
  %i.awe = getelementptr inbounds nuw [8 x i8], ptr %i.awd, i64 %indvars.iv912.a
  %i.awf = load ptr, ptr %i.awe, align 8, !tbaa !229
  %i.awg = getelementptr inbounds nuw [8 x i8], ptr %i.awf, i64 %indvars.iv907
  %i.awh = load ptr, ptr %i.awg, align 8, !tbaa !226
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awh, i64 2 ; 2 uses
  %i.awj = load i16, ptr %i.awi, align 2, !tbaa !239
  %i.awk = sdiv i16 %i.awj, 2
  store i16 %i.awk, ptr %i.awi, align 2, !tbaa !239
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.thread.us.us
  %indvars.iv.next908 = add nuw nsw i64 %indvars.iv907, 1 ; 2 uses
  %exitcond911.not = icmp eq i64 %indvars.iv.next908, %wide.trip.count920
  br i1 %exitcond911.not, label %._crit_edge859.split.us.us.split, label %.thread.us.us, !llvm.loop !318

._crit_edge859.split.us.us.split:                 ; preds = %bb.ck
  %indvars.iv.next913.a = add nuw nsw i64 %indvars.iv912.a, 1 ; 2 uses
  %exitcond916.not.a = icmp eq i64 %indvars.iv.next913.a, %wide.trip.count925
  br i1 %exitcond916.not.a, label %.preheader818, label %.preheader819.us.a, !llvm.loop !319

.preheader819.lr.ph.split.split:                  ; preds = %.preheader819.lr.ph.split
  %i.awl = load ptr, ptr %i.aum, align 8, !tbaa !95
  %wide.trip.count905 = zext nneg i32 %i.aug to i64
  %wide.trip.count = zext nneg i32 %i.auk to i64
  br label %.preheader819

.preheader819:                                    ; preds = %.preheader819.lr.ph.split.split, %._crit_edge859.split
  %indvars.iv902 = phi i64 [ 0, %.preheader819.lr.ph.split.split ], [ %indvars.iv.next903, %._crit_edge859.split ] ; 6 uses
  %i.awm = getelementptr inbounds nuw [8 x i8], ptr %i.awl, i64 %indvars.iv902
  %i.awn = load ptr, ptr %i.awm, align 8, !tbaa !213
  br label %bb.cl

.preheader818:                                    ; preds = %._crit_edge859.split, %._crit_edge859.split.us.us.split, %._crit_edge859.split.us.us.split.us.us, %.preheader819.lr.ph, %.preheader820
  %2 = getelementptr inbounds nuw i8, ptr %i.auc, i64 15268 ; 2 uses
  %3 = load i32, ptr %2, align 4, !tbaa !304      ; 2 uses
  %.not794866 = icmp slt i32 %3, 0
  br i1 %.not794866, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader818
  %4 = getelementptr inbounds nuw i8, ptr %i.auc, i64 14472
  br label %.preheader

bb.cl:                                            ; preds = %.preheader819, %bb.co
  %indvars.iv899 = phi i64 [ 0, %.preheader819 ], [ %indvars.iv.next900, %bb.co ] ; 6 uses
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awn, i64 %indvars.iv899
  %i.awp = load i8, ptr %i.awo, align 1, !tbaa !214
  %.not800 = icmp eq i8 %i.awp, 0
  br i1 %.not800, label %.thread, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.awq = load ptr, ptr %i.auo, align 8, !tbaa !293 ; 2 uses
  %i.awr = load ptr, ptr %i.awq, align 8, !tbaa !238
  %i.aws = getelementptr inbounds nuw [8 x i8], ptr %i.awr, i64 %indvars.iv902
  %i.awt = load ptr, ptr %i.aws, align 8, !tbaa !229
  %i.awu = getelementptr inbounds nuw [8 x i8], ptr %i.awt, i64 %indvars.iv899
  %i.awv = load ptr, ptr %i.awu, align 8, !tbaa !226
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 2 ; 2 uses
  %i.awx = load i16, ptr %i.aww, align 2, !tbaa !239
  %i.awy = shl i16 %i.awx, 1
  store i16 %i.awy, ptr %i.aww, align 2, !tbaa !239
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awq, i64 8
  %i.axa = load ptr, ptr %i.awz, align 8, !tbaa !238
  %i.axb = getelementptr inbounds nuw [8 x i8], ptr %i.axa, i64 %indvars.iv902
  %i.axc = load ptr, ptr %i.axb, align 8, !tbaa !229
  %i.axd = getelementptr inbounds nuw [8 x i8], ptr %i.axc, i64 %indvars.iv899
  %i.axe = load ptr, ptr %i.axd, align 8, !tbaa !226
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 2 ; 2 uses
  %i.axg = load i16, ptr %i.axf, align 2, !tbaa !239
  %i.axh = shl i16 %i.axg, 1
  store i16 %i.axh, ptr %i.axf, align 2, !tbaa !239
  br label %bb.co

.thread:                                          ; preds = %bb.cl
  %i.axi = load i32, ptr %i.aun, align 8, !tbaa !160
  %.not801 = icmp eq i32 %i.axi, 0
  br i1 %.not801, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.thread
  %i.axj = load ptr, ptr %i.auo, align 8, !tbaa !293 ; 2 uses
  %i.axk = load ptr, ptr %i.axj, align 8, !tbaa !238
  %i.axl = getelementptr inbounds nuw [8 x i8], ptr %i.axk, i64 %indvars.iv902
  %i.axm = load ptr, ptr %i.axl, align 8, !tbaa !229
  %i.axn = getelementptr inbounds nuw [8 x i8], ptr %i.axm, i64 %indvars.iv899
  %i.axo = load ptr, ptr %i.axn, align 8, !tbaa !226
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axo, i64 2 ; 2 uses
  %i.axq = load i16, ptr %i.axp, align 2, !tbaa !239
  %i.axr = sdiv i16 %i.axq, 2
  store i16 %i.axr, ptr %i.axp, align 2, !tbaa !239
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axj, i64 8
  %i.axt = load ptr, ptr %i.axs, align 8, !tbaa !238
  %i.axu = getelementptr inbounds nuw [8 x i8], ptr %i.axt, i64 %indvars.iv902
  %i.axv = load ptr, ptr %i.axu, align 8, !tbaa !229
  %i.axw = getelementptr inbounds nuw [8 x i8], ptr %i.axv, i64 %indvars.iv899
  %i.axx = load ptr, ptr %i.axw, align 8, !tbaa !226
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axx, i64 2 ; 2 uses
  %i.axz = load i16, ptr %i.axy, align 2, !tbaa !239
  %i.aya = sdiv i16 %i.axz, 2
  store i16 %i.aya, ptr %i.axy, align 2, !tbaa !239
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn, %.thread
  %indvars.iv.next900 = add nuw nsw i64 %indvars.iv899, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next900, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge859.split, label %bb.cl, !llvm.loop !318

._crit_edge859.split:                             ; preds = %bb.co
  %indvars.iv.next903 = add nuw nsw i64 %indvars.iv902, 1 ; 2 uses
  %exitcond906.not = icmp eq i64 %indvars.iv.next903, %wide.trip.count905
  br i1 %exitcond906.not, label %.preheader818, label %.preheader819, !llvm.loop !319

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge865
  %i.ayb = phi i32 [ %3, %.preheader.lr.ph ], [ %i.azt, %._crit_edge865 ]
  %indvars.iv930 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next931, %._crit_edge865 ] ; 6 uses
  %i.ayc = getelementptr inbounds nuw [4 x i8], ptr @listXsize, i64 %indvars.iv930 ; 2 uses
  %i.ayd = load i32, ptr %i.ayc, align 8, !tbaa !4
  %i.aye = icmp sgt i32 %i.ayd, 0
  br i1 %i.aye, label %.lr.ph864, label %._crit_edge865

.lr.ph864:                                        ; preds = %.preheader
  %i.ayf = load ptr, ptr @enc_picture, align 8    ; 3 uses
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayf, i64 8
  %i.ayh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv930 ; 2 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayf, i64 4
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayf, i64 12
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayh, i64 8
  %i.ayl = load ptr, ptr %i.ayk, align 8, !tbaa !53
  %i.aym = load ptr, ptr %i.ayl, align 8, !tbaa !58
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.aym, i64 4
  %i.ayo = load ptr, ptr %i.ayh, align 8, !tbaa !53 ; 2 uses
  %i.ayp = getelementptr inbounds nuw [128 x i8], ptr %4, i64 %indvars.iv930
  %i.ayq = trunc nuw nsw i64 %indvars.iv930 to i32
  br label %bb.cp

bb.cp:                                            ; preds = %.lr.ph864, %bb.cu
  %indvars.iv927 = phi i64 [ 0, %.lr.ph864 ], [ %indvars.iv.next928, %bb.cu ] ; 4 uses
  %i.ayr = getelementptr inbounds nuw [8 x i8], ptr %i.ayo, i64 %indvars.iv927
  %i.ays = load ptr, ptr %i.ayr, align 8, !tbaa !58
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ays, i64 4
  %i.ayu = load i32, ptr %i.ayt, align 4, !tbaa !132
  switch i32 %i.ayq, label %bb.cr [
    i32 0, label %bb.cs
    i32 2, label %bb.cq
  ]

bb.cq:                                            ; preds = %bb.cp
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cp, %bb.cq, %bb.cr
  %.sink1056.in = phi ptr [ %i.ayg, %bb.cq ], [ %i.ayj, %bb.cr ], [ %i.ayi, %bb.cp ]
  %i.ayv = load i32, ptr %i.ayn, align 4, !tbaa !132 ; 2 uses
  %i.ayw = getelementptr inbounds nuw [8 x i8], ptr %i.ayo, i64 %indvars.iv927
  %i.ayx = load ptr, ptr %i.ayw, align 8, !tbaa !58
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayx, i64 4
  %i.ayz = load i32, ptr %i.ayy, align 4, !tbaa !132 ; 2 uses
  %.not795 = icmp eq i32 %i.ayv, %i.ayz
  br i1 %.not795, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.sink1056 = load i32, ptr %.sink1056.in, align 4, !tbaa !4
  %i.aza = sub nsw i32 %.sink1056, %i.ayu
  %i.azb = tail call noundef i32 @llvm.smax.i32(i32 %i.aza, i32 -128)
  %i.azc = tail call noundef i32 @llvm.smin.i32(i32 %i.azb, i32 127)
  %i.azd = sub nsw i32 %i.ayv, %i.ayz
  %i.aze = tail call noundef i32 @llvm.smax.i32(i32 %i.azd, i32 -128)
  %i.azf = tail call noundef i32 @llvm.smin.i32(i32 %i.aze, i32 127) ; 2 uses
  %.lhs.trunc = trunc nsw i32 %i.azf to i8
  %i.azg = sdiv i8 %.lhs.trunc, 2
  %i.azh = tail call i8 @llvm.abs.i8(i8 %i.azg, i1 true)
  %i.azi = zext nneg i8 %i.azh to i16
  %.lhs.trunc816 = or disjoint i16 %i.azi, 16384
  %.rhs.trunc = trunc nsw i32 %i.azf to i16
  %i.azj = sdiv i16 %.lhs.trunc816, %.rhs.trunc
  %.sext817 = sext i16 %i.azj to i32
  %i.azk = mul nsw i32 %i.azc, %.sext817
  %i.azl = add nsw i32 %i.azk, 32
  %i.azm = ashr i32 %i.azl, 6
  %i.azn = tail call noundef i32 @llvm.smax.i32(i32 %i.azm, i32 -1024)
  %i.azo = tail call noundef i32 @llvm.smin.i32(i32 %i.azn, i32 1023)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  %.sink1057 = phi i32 [ %i.azo, %bb.ct ], [ 9999, %bb.cs ]
  %i.azp = getelementptr inbounds nuw [4 x i8], ptr %i.ayp, i64 %indvars.iv927
  store i32 %.sink1057, ptr %i.azp, align 4, !tbaa !4
  %indvars.iv.next928 = add nuw nsw i64 %indvars.iv927, 1 ; 2 uses
  %i.azq = load i32, ptr %i.ayc, align 8, !tbaa !4
  %i.azr = sext i32 %i.azq to i64
  %i.azs = icmp slt i64 %indvars.iv.next928, %i.azr
  br i1 %i.azs, label %bb.cp, label %._crit_edge865.loopexit, !llvm.loop !320

._crit_edge865.loopexit:                          ; preds = %bb.cu
  %.pre987 = load i32, ptr %2, align 4, !tbaa !304
  br label %._crit_edge865

._crit_edge865:                                   ; preds = %._crit_edge865.loopexit, %.preheader
  %i.azt = phi i32 [ %.pre987, %._crit_edge865.loopexit ], [ %i.ayb, %.preheader ] ; 2 uses
  %indvars.iv.next931 = add nuw nsw i64 %indvars.iv930, 2
  %i.azu = shl nsw i32 %i.azt, 2
  %i.azv = sext i32 %i.azu to i64
  %.not794.not = icmp slt i64 %indvars.iv930, %i.azv
  br i1 %.not794.not, label %.preheader, label %.loopexit, !llvm.loop !321

.loopexit:                                        ; preds = %._crit_edge865, %.preheader818, %.loopexit821
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @unmark_long_term_field_for_reference_by_frame_idx(i32 noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 36), align 4, !tbaa !19 ; 3 uses
  %.not114 = icmp eq i32 %i.a, 0
  br i1 %.not114, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp slt i32 %4, 0
  %i.c = load i32, ptr @log2_max_frame_num_minus4, align 4
  %i.d = add i32 %i.c, 4
  %i.e = shl i32 2, %i.d
  %i.f = select i1 %i.b, i32 %i.e, i32 0
  %.0 = add nsw i32 %i.f, %4
  %.not43 = icmp eq i32 %2, 0                     ; 2 uses
  %i.g = sdiv i32 %.0, 2                          ; 2 uses
  switch i32 %0, label %._crit_edge [
    i32 1, label %.lr.ph.split.us
    i32 2, label %.lr.ph.split.us112
  ]

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 16), align 8, !tbaa !52
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 56), align 8 ; 3 uses
  %.not40.us = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %wide.trip.count122 = zext i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.bb, %.lr.ph.split.us
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %bb.bb ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv118
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55   ; 31 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !155
  %i.o = icmp eq i32 %i.n, %1
  br i1 %i.o, label %bb.c, label %bb.bb

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !114
  switch i32 %i.q, label %bb.v [
    i32 3, label %bb.m
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.l, align 8, !tbaa !103  ; 3 uses
  %i.s = and i32 %i.r, 1
  %.not.i48.us = icmp eq i32 %i.s, 0
  br i1 %.not.i48.us, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !64   ; 3 uses
  %.not21.i49.us = icmp eq ptr %i.u, null
  br i1 %.not21.i49.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 6380
  store i32 0, ptr %i.v, align 4, !tbaa !101
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 6376
  store i32 0, ptr %i.w, align 8, !tbaa !102
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.x = and i32 %i.r, 2
  %.not22.i50.us = icmp eq i32 %i.x, 0
  br i1 %.not22.i50.us, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !65   ; 3 uses
  %.not23.i51.us = icmp eq ptr %i.z, null
  br i1 %.not23.i51.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 6380
  store i32 0, ptr %i.aa, align 4, !tbaa !101
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 6376
  store i32 0, ptr %i.ab, align 8, !tbaa !102
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ac = icmp eq i32 %i.r, 3
  br i1 %i.ac, label %bb.k, label %.sink.split

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !64 ; 2 uses
  %.not24.i52.us = icmp eq ptr %i.ae, null
  br i1 %.not24.i52.us, label %.sink.split.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !65 ; 2 uses
  %.not25.i53.us = icmp eq ptr %i.ag, null
  br i1 %.not25.i53.us, label %.sink.split.sink.split, label %.sink.split.sink.split.sink.split

bb.m:                                             ; preds = %bb.c
  %i.ah = load i32, ptr %i.l, align 8, !tbaa !103 ; 3 uses
end_hunk_1
