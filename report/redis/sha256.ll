begin_hunk_0_@sha256_transform:.lr.ph.preheader
  %i.mf = xor i32 %i.md, %i.me
  %i.mg = tail call i32 @llvm.fshl.i32(i32 %.093101, i32 %.093101, i32 7)
  %i.mh = xor i32 %i.mf, %i.mg
  %i.mi = add i32 %.090104, %i.mh
  %i.mj = and i32 %.092102, %.093101
  %i.mk = xor i32 %.093101, -1
  %i.ml = and i32 %.091103, %i.mk
  %i.mm = or i32 %i.ml, %i.mj
  %i.mn = add i32 %i.mi, %i.mm
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr @k, i64 %indvars.iv116
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !9
  %i.mq = add i32 %i.mn, %i.mp
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv116
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !9
  %i.mt = add i32 %i.mq, %i.ms                    ; 2 uses
  %i.mu = tail call i32 @llvm.fshl.i32(i32 %.0107, i32 %.0107, i32 30)
  %i.mv = tail call i32 @llvm.fshl.i32(i32 %.0107, i32 %.0107, i32 19)
  %i.mw = xor i32 %i.mu, %i.mv
  %i.mx = tail call i32 @llvm.fshl.i32(i32 %.0107, i32 %.0107, i32 10)
  %i.my = xor i32 %i.mw, %i.mx
  %i.mz = xor i32 %.087106, %.09599
  %i.na = and i32 %.0107, %i.mz
  %i.nb = and i32 %.087106, %.09599
  %i.nc = xor i32 %i.na, %i.nb
  %i.nd = add i32 %i.my, %i.nc
  %i.ne = add i32 %i.mt, %.094100                 ; 2 uses
  %i.nf = add i32 %i.nd, %i.mt                    ; 2 uses
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next117, 64
  br i1 %exitcond119.not, label %bb.b, label %bb.a, !llvm.loop !16

bb.b:                                             ; preds = %bb.a
  %i.ng = add i32 %i.nf, %i.lo
  store i32 %i.ng, ptr %i.ln, align 8, !tbaa !9
  %i.nh = add i32 %.0107, %i.lq
  store i32 %i.nh, ptr %i.lp, align 4, !tbaa !9
  %i.ni = add i32 %.087106, %i.ls
  store i32 %i.ni, ptr %i.lr, align 8, !tbaa !9
  %i.nj = add i32 %.09599, %i.lu
  store i32 %i.nj, ptr %i.lt, align 4, !tbaa !9
  %i.nk = add i32 %i.ne, %i.lw
  store i32 %i.nk, ptr %i.lv, align 8, !tbaa !9
  %i.nl = add i32 %.093101, %i.ly
  store i32 %i.nl, ptr %i.lx, align 4, !tbaa !9
  %i.nm = add i32 %.092102, %i.ma
  store i32 %i.nm, ptr %i.lz, align 8, !tbaa !9
  %i.nn = add i32 %.091103, %i.mc
  store i32 %i.nn, ptr %i.mb, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @sha256_init(ptr noundef writeonly captures(none) initializes((64, 68), (72, 112)) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, ptr %i.c, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, ptr %i.d, align 8, !tbaa !9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha256_update(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.pre = load i32, ptr %i.a, align 8, !tbaa !17
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.c = phi i32 [ %.pre, %.lr.ph ], [ %i.n, %bb.d ]
  %i.d = phi i64 [ 0, %.lr.ph ], [ %i.p, %bb.d ]
  %.013 = phi i32 [ 0, %.lr.ph ], [ %i.o, %bb.d ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = zext i32 %i.c to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  store i8 %i.f, ptr %i.h, align 1, !tbaa !13
  %i.i = load i32, ptr %i.a, align 8, !tbaa !17
  %i.j = add i32 %i.i, 1                          ; 3 uses
  store i32 %i.j, ptr %i.a, align 8, !tbaa !17
  %i.k = icmp eq i32 %i.j, 64
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @sha256_transform(ptr noundef nonnull %0, ptr noundef nonnull %0)
  %i.l = load i64, ptr %i.b, align 8, !tbaa !20
  %i.m = add i64 %i.l, 512
  store i64 %i.m, ptr %i.b, align 8, !tbaa !20
  store i32 0, ptr %i.a, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.n = phi i32 [ %i.j, %bb.b ], [ 0, %bb.c ]
  %i.o = add i32 %.013, 1                         ; 2 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = icmp ugt i64 %2, %i.p
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sha256_final(ptr noundef captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 32)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 6 uses
  %i.c = icmp ult i32 %i.b, 56
  %i.d = zext i32 %i.b to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  store i8 -128, ptr %i.e, align 1, !tbaa !13
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.b, 55
  br i1 %.not, label %.loopexit, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 %i.d
  %scevgep77 = getelementptr i8, ptr %i.f, i64 1
  %narrow = sub nuw nsw i32 55, %i.b
  %i.g = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep77, i8 0, i64 %i.g, i1 false), !tbaa !13
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.170 = add i32 %i.b, 1                         ; 2 uses
  %i.h = icmp ult i32 %.170, 64
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.i = zext nneg i32 %.170 to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.i
  %i.j = sub nsw i32 62, %i.b
  %i.k = zext nneg i32 %i.j to i64
  %i.l = add nuw nsw i64 %i.k, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.l, i1 false), !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.c
  tail call void @sha256_transform(ptr noundef nonnull %0, ptr noundef nonnull %0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph74.preheader, %bb.b, %._crit_edge
  %i.m = load i32, ptr %i.a, align 8, !tbaa !17
  %i.n = shl i32 %i.m, 3
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !20
  %i.r = add i64 %i.q, %i.o                       ; 9 uses
  store i64 %i.r, ptr %i.p, align 8, !tbaa !20
  %i.s = trunc i64 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 63
  store i8 %i.s, ptr %i.t, align 1, !tbaa !13
  %i.u = lshr i64 %i.r, 8
  %i.v = trunc i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 62
  store i8 %i.v, ptr %i.w, align 2, !tbaa !13
  %i.x = lshr i64 %i.r, 16
  %i.y = trunc i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 %i.y, ptr %i.z, align 1, !tbaa !13
  %i.aa = lshr i64 %i.r, 24
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.ab, ptr %i.ac, align 4, !tbaa !13
  %i.ad = lshr i64 %i.r, 32
  %i.ae = trunc i64 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 59
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !13
  %i.ag = lshr i64 %i.r, 40
  %i.ah = trunc i64 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 %i.ah, ptr %i.ai, align 2, !tbaa !13
  %i.aj = lshr i64 %i.r, 48
  %i.ak = trunc i64 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !13
  %i.am = lshr i64 %i.r, 56
  %i.an = trunc nuw i64 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.an, ptr %i.ao, align 8, !tbaa !13
  tail call void @sha256_transform(ptr noundef nonnull %0, ptr noundef nonnull %0)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %.shift = getelementptr inbounds nuw i8, ptr %0, i64 83
  %2 = load i8, ptr %.shift, align 1, !tbaa !9
  store i8 %2, ptr %1, align 1, !tbaa !13
  %.shift81 = getelementptr inbounds nuw i8, ptr %0, i64 87
  %3 = load i8, ptr %.shift81, align 1, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %3, ptr %i.ax, align 1, !tbaa !13
  %.shift82 = getelementptr inbounds nuw i8, ptr %0, i64 91
  %4 = load i8, ptr %.shift82, align 1, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %4, ptr %i.ay, align 1, !tbaa !13
  %.shift83 = getelementptr inbounds nuw i8, ptr %0, i64 95
  %5 = load i8, ptr %.shift83, align 1, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %5, ptr %i.az, align 1, !tbaa !13
  %.shift84 = getelementptr inbounds nuw i8, ptr %0, i64 99
  %6 = load i8, ptr %.shift84, align 1, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %6, ptr %i.ba, align 1, !tbaa !13
  %.shift85 = getelementptr inbounds nuw i8, ptr %0, i64 103
  %7 = load i8, ptr %.shift85, align 1, !tbaa !9
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 %7, ptr %i.bb, align 1, !tbaa !13
  %.shift86 = getelementptr inbounds nuw i8, ptr %0, i64 107
  %8 = load i8, ptr %.shift86, align 1, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 %8, ptr %i.bc, align 1, !tbaa !13
  %.shift87 = getelementptr inbounds nuw i8, ptr %0, i64 111
  %9 = load i8, ptr %.shift87, align 1, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 %9, ptr %i.bd, align 1, !tbaa !13
  %.shift88 = getelementptr inbounds nuw i8, ptr %0, i64 82
  %10 = load i16, ptr %.shift88, align 2, !tbaa !9
  %i.be = trunc i16 %10 to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !13
  %.shift89 = getelementptr inbounds nuw i8, ptr %0, i64 86
  %11 = load i16, ptr %.shift89, align 2, !tbaa !9
  %i.bg = trunc i16 %11 to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !13
  %.shift90 = getelementptr inbounds nuw i8, ptr %0, i64 90
  %12 = load i16, ptr %.shift90, align 2, !tbaa !9
  %i.bi = trunc i16 %12 to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !13
  %.shift91 = getelementptr inbounds nuw i8, ptr %0, i64 94
  %13 = load i16, ptr %.shift91, align 2, !tbaa !9
  %i.bk = trunc i16 %13 to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !13
  %.shift92 = getelementptr inbounds nuw i8, ptr %0, i64 98
  %14 = load i16, ptr %.shift92, align 2, !tbaa !9
  %i.bm = trunc i16 %14 to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !13
  %.shift93 = getelementptr inbounds nuw i8, ptr %0, i64 102
  %15 = load i16, ptr %.shift93, align 2, !tbaa !9
  %i.bo = trunc i16 %15 to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !13
  %.shift94 = getelementptr inbounds nuw i8, ptr %0, i64 106
  %16 = load i16, ptr %.shift94, align 2, !tbaa !9
  %i.bq = trunc i16 %16 to i8
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !13
  %.shift95 = getelementptr inbounds nuw i8, ptr %0, i64 110
  %17 = load i16, ptr %.shift95, align 2, !tbaa !9
  %i.bs = trunc i16 %17 to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !13
  %i.bu = load i32, ptr %i.ap, align 8, !tbaa !9
  %i.bv = lshr i32 %i.bu, 8
  %i.bw = trunc i32 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !13
  %i.by = load i32, ptr %i.aq, align 4, !tbaa !9
  %i.bz = lshr i32 %i.by, 8
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !13
  %i.cc = load i32, ptr %i.ar, align 8, !tbaa !9
  %i.cd = lshr i32 %i.cc, 8
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !13
  %i.cg = load i32, ptr %i.as, align 4, !tbaa !9
  %i.ch = lshr i32 %i.cg, 8
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !13
  %i.ck = load i32, ptr %i.at, align 8, !tbaa !9
  %i.cl = lshr i32 %i.ck, 8
  %i.cm = trunc i32 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !13
  %i.co = load i32, ptr %i.au, align 4, !tbaa !9
  %i.cp = lshr i32 %i.co, 8
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !13
  %i.cs = load i32, ptr %i.av, align 8, !tbaa !9
  %i.ct = lshr i32 %i.cs, 8
  %i.cu = trunc i32 %i.ct to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !13
  %i.cw = load i32, ptr %i.aw, align 4, !tbaa !9
  %i.cx = lshr i32 %i.cw, 8
  %i.cy = trunc i32 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !13
  %i.da = load i32, ptr %i.ap, align 8, !tbaa !9
  %i.db = trunc i32 %i.da to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !13
  %i.dd = load i32, ptr %i.aq, align 4, !tbaa !9
  %i.de = trunc i32 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.de, ptr %i.df, align 1, !tbaa !13
  %i.dg = load i32, ptr %i.ar, align 8, !tbaa !9
  %i.dh = trunc i32 %i.dg to i8
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !13
  %i.dj = load i32, ptr %i.as, align 4, !tbaa !9
  %i.dk = trunc i32 %i.dj to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !13
  %i.dm = load i32, ptr %i.at, align 8, !tbaa !9
  %i.dn = trunc i32 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !13
  %i.dp = load i32, ptr %i.au, align 4, !tbaa !9
  %i.dq = trunc i32 %i.dp to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !13
  %i.ds = load i32, ptr %i.av, align 8, !tbaa !9
  %i.dt = trunc i32 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !13
  %i.dv = load i32, ptr %i.aw, align 4, !tbaa !9
  %i.dw = trunc i32 %i.dv to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 31
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!11, !11, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = !{!18, !10, i64 64}
!18 = !{!"", !11, i64 0, !10, i64 64, !19, i64 72, !11, i64 80}
!19 = !{!"long long", !11, i64 0}
!20 = !{!18, !19, i64 72}
!21 = distinct !{!21, !15}
end_hunk_0
