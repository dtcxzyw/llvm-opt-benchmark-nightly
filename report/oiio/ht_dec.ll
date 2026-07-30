inline.NumInlined: 55
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@rev_fetch:bb.a

bb.h:                                             ; preds = %bb.f
  %i.cj = icmp sgt i32 %i.ai, 0
  br i1 %i.cj, label %.preheader.i7, label %rev_read.exit12

.preheader.i7:                                    ; preds = %bb.h
  %.promoted.i8 = load ptr, ptr %0, align 8, !tbaa !123 ; 2 uses
  %xtraiter27 = and i32 %i.ai, 1
  %i.ck = icmp eq i32 %i.ai, 1
  br i1 %i.ck, label %.epil.preheader26, label %.preheader.i7.new

.preheader.i7.new:                                ; preds = %.preheader.i7
  %unroll_iter35 = and i32 %i.ai, 2147483646
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader.i7.new
  %i.cl = phi ptr [ %.promoted.i8, %.preheader.i7.new ], [ %i.cu, %bb.i ] ; 3 uses
  %.047.i9 = phi i32 [ 0, %.preheader.i7.new ], [ %i.cy, %bb.i ]
  %.04446.i10 = phi i32 [ 24, %.preheader.i7.new ], [ %i.da, %bb.i ] ; 3 uses
  %i.cm = phi i32 [ %i.ai, %.preheader.i7.new ], [ %i.cz, %bb.i ] ; 2 uses
  %niter36 = phi i32 [ 0, %.preheader.i7.new ], [ %niter36.next.1, %bb.i ]
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 -1 ; 2 uses
  store ptr %i.cn, ptr %0, align 8, !tbaa !123
  %i.co = load i8, ptr %i.cl, align 1, !tbaa !46
  %i.cp = zext i8 %i.co to i32
  %i.cq = shl i32 %i.cp, %.04446.i10
  %i.cr = or i32 %i.cq, %.047.i9
  %i.cs = add nsw i32 %i.cm, -1
  store i32 %i.cs, ptr %i.d, align 4, !tbaa !122
  %i.ct = add nsw i32 %.04446.i10, -8
  %i.cu = getelementptr inbounds i8, ptr %i.cl, i64 -2 ; 3 uses
  store ptr %i.cu, ptr %0, align 8, !tbaa !123
  %i.cv = load i8, ptr %i.cn, align 1, !tbaa !46
  %i.cw = zext i8 %i.cv to i32
  %i.cx = shl i32 %i.cw, %i.ct
  %i.cy = or i32 %i.cx, %i.cr                     ; 3 uses
  %i.cz = add nsw i32 %i.cm, -2                   ; 3 uses
  store i32 %i.cz, ptr %i.d, align 4, !tbaa !122
  %i.da = add nsw i32 %.04446.i10, -16            ; 2 uses
  %niter36.next.1 = add nuw nsw i32 %niter36, 2   ; 2 uses
  %niter36.ncmp.1.not = icmp eq i32 %niter36.next.1, %unroll_iter35
  br i1 %niter36.ncmp.1.not, label %rev_read.exit12.loopexit.unr-lcssa, label %bb.i, !llvm.loop !125

rev_read.exit12.loopexit.unr-lcssa:               ; preds = %bb.i
  %lcmp.mod32.not = icmp eq i32 %xtraiter27, 0
  br i1 %lcmp.mod32.not, label %rev_read.exit12, label %.epil.preheader26

.epil.preheader26:                                ; preds = %rev_read.exit12.loopexit.unr-lcssa, %.preheader.i7
  %.epil.init29 = phi ptr [ %.promoted.i8, %.preheader.i7 ], [ %i.cu, %rev_read.exit12.loopexit.unr-lcssa ] ; 2 uses
  %.047.i9.epil.init = phi i32 [ 0, %.preheader.i7 ], [ %i.cy, %rev_read.exit12.loopexit.unr-lcssa ]
  %.04446.i10.epil.init = phi i32 [ 24, %.preheader.i7 ], [ %i.da, %rev_read.exit12.loopexit.unr-lcssa ]
  %.epil.init31 = phi i32 [ %i.ai, %.preheader.i7 ], [ %i.cz, %rev_read.exit12.loopexit.unr-lcssa ]
  %lcmp.mod34 = trunc i32 %i.ai to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.db = getelementptr inbounds i8, ptr %.epil.init29, i64 -1
  store ptr %i.db, ptr %0, align 8, !tbaa !123
  %i.dc = load i8, ptr %.epil.init29, align 1, !tbaa !46
  %i.dd = zext i8 %i.dc to i32
  %i.de = shl i32 %i.dd, %.04446.i10.epil.init
  %i.df = or i32 %i.de, %.047.i9.epil.init
  %i.dg = add nsw i32 %.epil.init31, -1
  store i32 %i.dg, ptr %i.d, align 4, !tbaa !122
  br label %rev_read.exit12

rev_read.exit12:                                  ; preds = %.epil.preheader26, %rev_read.exit12.loopexit.unr-lcssa, %bb.g, %bb.h
  %.1.i6 = phi i32 [ %.val.i11, %bb.g ], [ 0, %bb.h ], [ %i.cy, %rev_read.exit12.loopexit.unr-lcssa ], [ %i.df, %.epil.preheader26 ] ; 9 uses
  %i.dh = lshr i32 %.1.i6, 24
  %i.di = and i32 %.1.i6, 2130706432
  %i.dj = icmp eq i32 %i.di, 2130706432
  %i.dk = select i1 %i.bt, i1 %i.dj, i1 false
  %i.dl = select i1 %i.dk, i32 7, i32 8           ; 2 uses
  %i.dm = icmp ugt i32 %.1.i6, -1879048193
  %i.dn = lshr i32 %.1.i6, 16
  %i.do = and i32 %i.dn, 255                      ; 2 uses
  %i.dp = shl nuw nsw i32 %i.do, %i.dl
  %i.dq = or i32 %i.dp, %i.dh
  %i.dr = and i32 %.1.i6, 8323072
  %i.ds = icmp eq i32 %i.dr, 8323072
  %i.dt = and i1 %i.dm, %i.ds
  %i.du = select i1 %i.dt, i32 7, i32 8
  %i.dv = add nuw nsw i32 %i.dl, %i.du            ; 2 uses
  %i.dw = icmp samesign ugt i32 %i.do, 143
  %i.dx = lshr i32 %.1.i6, 8
  %i.dy = and i32 %i.dx, 255                      ; 2 uses
  %i.dz = shl nuw nsw i32 %i.dy, %i.dv
  %i.ea = or i32 %i.dq, %i.dz
  %i.eb = and i32 %.1.i6, 32512
  %i.ec = icmp eq i32 %i.eb, 32512
  %i.ed = select i1 %i.dw, i1 %i.ec, i1 false
  %i.ee = select i1 %i.ed, i32 7, i32 8
  %i.ef = add nuw nsw i32 %i.dv, %i.ee            ; 2 uses
  %i.eg = icmp samesign ugt i32 %i.dy, 143
  %i.eh = and i32 %.1.i6, 255                     ; 2 uses
  %i.ei = shl nuw i32 %i.eh, %i.ef
  %i.ej = or i32 %i.ea, %i.ei
  %i.ek = and i32 %.1.i6, 127
  %i.el = icmp eq i32 %i.ek, 127
  %i.em = select i1 %i.eg, i1 %i.el, i1 false
  %i.en = select i1 %i.em, i32 7, i32 8
  %i.eo = icmp samesign ugt i32 %i.eh, 143
  %i.ep = zext i1 %i.eo to i32
  %i.eq = zext i32 %i.ej to i64
  %i.er = zext nneg i32 %i.cc to i64
  %i.es = shl nuw nsw i64 %i.eq, %i.er
  %i.et = or i64 %i.es, %i.ca                     ; 2 uses
  store i64 %i.et, ptr %i.by, align 8, !tbaa !49
  %i.eu = add nuw nsw i32 %i.en, %i.cc
  %i.ev = add nuw nsw i32 %i.eu, %i.ef
  store i32 %i.ev, ptr %i.a, align 8, !tbaa !52
  store i32 %i.ep, ptr %i.ak, align 8, !tbaa !124
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %rev_read.exit, %rev_read.exit12
  %i.ew = phi i64 [ %.pre, %._crit_edge ], [ %i.ca, %rev_read.exit ], [ %i.et, %rev_read.exit12 ]
  %i.ex = trunc i64 %i.ew to i32
  ret i32 %i.ex
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc range(i32 0, 21) i32 @decode_init_uvlc(i32 noundef %0, i32 noundef range(i32 0, 5) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 1, ptr %i.b, align 4, !tbaa !3
  store i32 1, ptr %2, align 4, !tbaa !3
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 3
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = and i32 %0, 7
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr @decode_noninit_uvlc.dec, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !46
  %i.h = zext i8 %i.g to i32                      ; 3 uses
  %i.i = and i32 %i.h, 3                          ; 2 uses
  %i.j = lshr i32 %0, %i.i
  %i.k = lshr i32 %i.h, 2
  %i.l = and i32 %i.k, 7                          ; 2 uses
  %i.m = add nuw nsw i32 %i.l, %i.i
  %i.n = lshr i32 %i.h, 5
  %notmask99 = shl nsw i32 -1, %i.l
  %i.o = xor i32 %notmask99, -1
  %i.p = and i32 %i.j, %i.o
  %i.q = icmp eq i32 %1, 1                        ; 2 uses
  %i.r = add nuw nsw i32 %i.n, 1
  %i.s = add nuw nsw i32 %i.r, %i.p               ; 2 uses
  %i.t = select i1 %i.q, i32 %i.s, i32 1
  store i32 %i.t, ptr %2, align 4, !tbaa !3
  %i.u = select i1 %i.q, i32 1, i32 %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.u, ptr %i.v, align 4, !tbaa !3
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.w = icmp eq i32 %1, 3
  %i.x = and i32 %0, 7
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @decode_noninit_uvlc.dec, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !46
  %i.ab = zext i8 %i.aa to i32                    ; 7 uses
  %i.ac = and i32 %i.ab, 3                        ; 4 uses
  %i.ad = lshr i32 %0, %i.ac                      ; 6 uses
  br i1 %i.w, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp eq i32 %i.ac, 3
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = and i32 %i.ad, 1
  %i.ag = or disjoint i32 %i.af, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !3
  %i.ai = lshr i32 %i.ad, 1
  %i.aj = lshr i32 %i.ab, 2
  %i.ak = and i32 %i.aj, 7                        ; 2 uses
  %i.al = add nuw nsw i32 %i.ak, 4
  %i.am = lshr i32 %i.ab, 5
  %notmask98 = shl nsw i32 -1, %i.ak
  %i.an = xor i32 %notmask98, -1
  %i.ao = and i32 %i.ai, %i.an
  %i.ap = add nuw nsw i32 %i.am, 1
  %i.aq = add nuw nsw i32 %i.ap, %i.ao
  store i32 %i.aq, ptr %2, align 4, !tbaa !3
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ar = and i32 %i.ad, 7
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @decode_noninit_uvlc.dec, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !46
  %i.av = zext i8 %i.au to i32                    ; 3 uses
  %i.aw = and i32 %i.av, 3                        ; 2 uses
  %i.ax = lshr i32 %i.ad, %i.aw                   ; 2 uses
  %i.ay = lshr i32 %i.av, 2
  %i.az = lshr i32 %i.ab, 2
  %3 = and i32 %i.ay, 7                           ; 2 uses
  %4 = and i32 %i.az, 7                           ; 3 uses
  %5 = lshr i32 %i.ax, %4
  %i.ba = add nuw nsw i32 %4, %i.ac
  %i.bb = add nuw nsw i32 %i.ba, %i.aw
  %6 = add nuw nsw i32 %i.bb, %3
  %7 = insertelement <2 x i32> poison, i32 %i.ab, i64 0
  %8 = insertelement <2 x i32> %7, i32 %i.av, i64 1
  %9 = lshr <2 x i32> %8, splat (i32 5)
  %notmask97 = shl nsw i32 -1, %3
  %notmask96 = shl nsw i32 -1, %4
  %10 = xor i32 %notmask97, -1
  %11 = xor i32 %notmask96, -1
  %12 = and i32 %5, %10
  %13 = and i32 %i.ax, %11
  %14 = add nuw nsw <2 x i32> %9, splat (i32 1)
  %15 = insertelement <2 x i32> poison, i32 %13, i64 0
  %16 = insertelement <2 x i32> %15, i32 %12, i64 1
  %17 = add nuw nsw <2 x i32> %14, %16
  store <2 x i32> %17, ptr %2, align 4, !tbaa !3
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.bc = and i32 %i.ad, 7
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @decode_noninit_uvlc.dec, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !46
  %i.bg = zext i8 %i.bf to i32                    ; 3 uses
  %i.bh = and i32 %i.bg, 3                        ; 2 uses
  %i.bi = add nuw nsw i32 %i.bh, %i.ac
  %i.bj = lshr i32 %i.ad, %i.bh                   ; 2 uses
  %18 = lshr i32 %i.bg, 2
  %19 = lshr i32 %i.ab, 2
  %20 = and i32 %18, 7                            ; 2 uses
  %21 = and i32 %19, 7                            ; 3 uses
  %22 = add nuw nsw i32 %i.bi, %21
  %23 = lshr i32 %i.bj, %21
  %i.bk = add nuw nsw i32 %22, %20
  %24 = insertelement <2 x i32> poison, i32 %i.ab, i64 0
  %25 = insertelement <2 x i32> %24, i32 %i.bg, i64 1
  %26 = lshr <2 x i32> %25, splat (i32 5)
  %notmask95 = shl nsw i32 -1, %20
  %notmask = shl nsw i32 -1, %21
  %27 = xor i32 %notmask95, -1
  %28 = xor i32 %notmask, -1
  %29 = and i32 %23, %27
  %30 = and i32 %i.bj, %28
  %31 = add nuw nsw <2 x i32> %26, splat (i32 3)
  %32 = insertelement <2 x i32> poison, i32 %30, i64 0
  %33 = insertelement <2 x i32> %32, i32 %29, i64 1
  %34 = add nuw nsw <2 x i32> %31, %33
  store <2 x i32> %34, ptr %2, align 4, !tbaa !3
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.d, %bb.i, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ %i.m, %bb.d ], [ %i.bk, %bb.i ], [ %i.al, %bb.g ], [ %6, %bb.h ]
  ret i32 %.1
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @frwd_fetch(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.c = icmp ult i32 %i.b, 32
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !53
  br label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !128  ; 10 uses
  %i.f = icmp sgt i32 %i.e, 3
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !126    ; 2 uses
  %.val.i = load i32, ptr %i.g, align 4, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.h, ptr %0, align 8, !tbaa !126
  %i.i = add nsw i32 %i.e, -4                     ; 2 uses
  store i32 %i.i, ptr %i.d, align 8, !tbaa !128
  br label %frwd_read.exit

bb.d:                                             ; preds = %bb.b
  %i.j = icmp sgt i32 %i.e, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !127
  %.not44.i = icmp ne i32 %i.l, 0
  %i.m = sext i1 %.not44.i to i32                 ; 3 uses
  br i1 %i.j, label %.lr.ph.i, label %frwd_read.exit

.lr.ph.i:                                         ; preds = %bb.d
  %.promoted.i = load ptr, ptr %0, align 8, !tbaa !126 ; 2 uses
  %xtraiter = and i32 %i.e, 1
  %i.n = icmp eq i32 %i.e, 1
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i32 %i.e, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.new
  %i.o = phi ptr [ %.promoted.i, %.lr.ph.i.new ], [ %i.aa, %bb.e ] ; 3 uses
  %.047.i = phi i32 [ %i.m, %.lr.ph.i.new ], [ %i.ah, %bb.e ]
  %.04246.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.aj, %bb.e ] ; 5 uses
  %i.p = phi i32 [ %i.e, %.lr.ph.i.new ], [ %i.ai, %bb.e ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !126
  %i.r = load i8, ptr %i.o, align 1, !tbaa !46
  %i.s = zext i8 %i.r to i32
  %i.t = shl i32 255, %.04246.i
  %i.u = xor i32 %i.t, -1
  %i.v = and i32 %.047.i, %i.u
  %i.w = shl i32 %i.s, %.04246.i
  %i.x = or i32 %i.w, %i.v
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.d, align 8, !tbaa !128
  %i.z = or disjoint i32 %.04246.i, 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 3 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !126
  %i.ab = load i8, ptr %i.q, align 1, !tbaa !46
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl i32 65280, %.04246.i
  %i.ae = xor i32 %i.ad, -1
  %i.af = and i32 %i.x, %i.ae
  %i.ag = shl i32 %i.ac, %i.z
  %i.ah = or i32 %i.ag, %i.af                     ; 3 uses
  %i.ai = add nsw i32 %i.p, -2                    ; 3 uses
  store i32 %i.ai, ptr %i.d, align 8, !tbaa !128
  %i.aj = add nuw nsw i32 %.04246.i, 16           ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %frwd_read.exit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !130

frwd_read.exit.loopexit.unr-lcssa:                ; preds = %bb.e
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %frwd_read.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %frwd_read.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.epil.init = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.aa, %frwd_read.exit.loopexit.unr-lcssa ] ; 2 uses
  %.047.i.epil.init = phi i32 [ %i.m, %.lr.ph.i ], [ %i.ah, %frwd_read.exit.loopexit.unr-lcssa ]
  %.04246.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.aj, %frwd_read.exit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init24 = phi i32 [ %i.e, %.lr.ph.i ], [ %i.ai, %frwd_read.exit.loopexit.unr-lcssa ]
  %lcmp.mod26 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.ak = getelementptr inbounds nuw i8, ptr %.epil.init, i64 1
  store ptr %i.ak, ptr %0, align 8, !tbaa !126
  %i.al = load i8, ptr %.epil.init, align 1, !tbaa !46
  %i.am = zext i8 %i.al to i32
  %i.an = shl i32 255, %.04246.i.epil.init
  %i.ao = xor i32 %i.an, -1
  %i.ap = and i32 %.047.i.epil.init, %i.ao
  %i.aq = shl i32 %i.am, %.04246.i.epil.init
  %i.ar = or i32 %i.aq, %i.ap
  %i.as = add nsw i32 %.epil.init24, -1
  store i32 %i.as, ptr %i.d, align 8, !tbaa !128
  br label %frwd_read.exit

frwd_read.exit:                                   ; preds = %.epil.preheader, %frwd_read.exit.loopexit.unr-lcssa, %bb.c, %bb.d
  %i.at = phi i32 [ %i.i, %bb.c ], [ %i.e, %bb.d ], [ 0, %frwd_read.exit.loopexit.unr-lcssa ], [ 0, %.epil.preheader ] ; 9 uses
  %.1.i = phi i32 [ %.val.i, %bb.c ], [ %i.m, %bb.d ], [ %i.ah, %frwd_read.exit.loopexit.unr-lcssa ], [ %i.ar, %.epil.preheader ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !129
  %.not45.not.i = icmp eq i32 %i.av, 0
  %i.aw = select i1 %.not45.not.i, i32 8, i32 7   ; 2 uses
  %i.ax = and i32 %.1.i, 255                      ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 255
  %i.az = lshr i32 %.1.i, 8
  %i.ba = and i32 %i.az, 255                      ; 2 uses
  %i.bb = shl nuw nsw i32 %i.ba, %i.aw
  %i.bc = select i1 %i.ay, i32 7, i32 8
  %i.bd = add nuw nsw i32 %i.aw, %i.bc            ; 2 uses
  %i.be = icmp eq i32 %i.ba, 255
  %i.bf = lshr i32 %.1.i, 16
  %i.bg = and i32 %i.bf, 255                      ; 2 uses
  %i.bh = shl nuw nsw i32 %i.bg, %i.bd
  %i.bi = select i1 %i.be, i32 7, i32 8
  %i.bj = add nuw nsw i32 %i.bd, %i.bi            ; 2 uses
  %i.bk = icmp eq i32 %i.bg, 255
  %i.bl = lshr i32 %.1.i, 24                      ; 2 uses
  %i.bm = shl nuw i32 %i.bl, %i.bj
  %i.bn = or i32 %i.bb, %i.bh
  %i.bo = or i32 %i.bn, %i.bm
  %i.bp = or i32 %i.bo, %i.ax
  %i.bq = select i1 %i.bk, i32 7, i32 8
  %i.br = icmp eq i32 %i.bl, 255                  ; 2 uses
  %i.bs = zext i1 %i.br to i32
  store i32 %i.bs, ptr %i.au, align 4, !tbaa !129
  %i.bt = zext i32 %i.bp to i64
  %i.bu = zext nneg i32 %i.b to i64
  %i.bv = shl nuw nsw i64 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !53
  %i.by = or i64 %i.bv, %i.bx                     ; 3 uses
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !53
  %i.bz = add nuw nsw i32 %i.bq, %i.b
  %i.ca = add nuw nsw i32 %i.bz, %i.bj            ; 4 uses
  store i32 %i.ca, ptr %i.a, align 8, !tbaa !55
  %i.cb = icmp samesign ult i32 %i.ca, 32
  br i1 %i.cb, label %bb.f, label %bb.j

bb.f:                                             ; preds = %frwd_read.exit
  %i.cc = icmp sgt i32 %i.at, 3
  br i1 %i.cc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cd = load ptr, ptr %0, align 8, !tbaa !126   ; 2 uses
  %.val.i12 = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store ptr %i.ce, ptr %0, align 8, !tbaa !126
  %i.cf = add nsw i32 %i.at, -4
  store i32 %i.cf, ptr %i.d, align 8, !tbaa !128
  br label %frwd_read.exit13

bb.h:                                             ; preds = %bb.f
  %i.cg = icmp sgt i32 %i.at, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !127
  %.not44.i5 = icmp ne i32 %i.ci, 0
  %i.cj = sext i1 %.not44.i5 to i32               ; 3 uses
  br i1 %i.cg, label %.lr.ph.i8, label %frwd_read.exit13

.lr.ph.i8:                                        ; preds = %bb.h
  %.promoted.i9 = load ptr, ptr %0, align 8, !tbaa !126 ; 2 uses
  %xtraiter28 = and i32 %i.at, 1
  %i.ck = icmp eq i32 %i.at, 1
  br i1 %i.ck, label %.epil.preheader27, label %.lr.ph.i8.new

.lr.ph.i8.new:                                    ; preds = %.lr.ph.i8
  %unroll_iter36 = and i32 %i.at, 2147483646
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i8.new
  %i.cl = phi ptr [ %.promoted.i9, %.lr.ph.i8.new ], [ %i.cx, %bb.i ] ; 3 uses
  %.047.i10 = phi i32 [ %i.cj, %.lr.ph.i8.new ], [ %i.de, %bb.i ]
  %.04246.i11 = phi i32 [ 0, %.lr.ph.i8.new ], [ %i.dg, %bb.i ] ; 5 uses
  %i.cm = phi i32 [ %i.at, %.lr.ph.i8.new ], [ %i.df, %bb.i ] ; 2 uses
  %niter37 = phi i32 [ 0, %.lr.ph.i8.new ], [ %niter37.next.1, %bb.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 1 ; 2 uses
  store ptr %i.cn, ptr %0, align 8, !tbaa !126
  %i.co = load i8, ptr %i.cl, align 1, !tbaa !46
  %i.cp = zext i8 %i.co to i32
  %i.cq = shl i32 255, %.04246.i11
  %i.cr = xor i32 %i.cq, -1
  %i.cs = and i32 %.047.i10, %i.cr
  %i.ct = shl i32 %i.cp, %.04246.i11
  %i.cu = or i32 %i.ct, %i.cs
  %i.cv = add nsw i32 %i.cm, -1
  store i32 %i.cv, ptr %i.d, align 8, !tbaa !128
  %i.cw = or disjoint i32 %.04246.i11, 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 2 ; 3 uses
end_hunk_0
