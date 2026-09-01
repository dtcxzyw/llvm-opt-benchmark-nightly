Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ivi_dsp?download=true
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 51
begin_hunk_0_@ff_ivi_inverse_haar_8x8:bb.a
  %i.ms = ashr i32 %i.mr, 1                       ; 2 uses
  %i.mt = add nsw i32 %i.mq, %i.mi
  %i.mu = ashr i32 %i.mt, 1                       ; 2 uses
  %i.mv = sub nsw i32 %i.mo, %i.mk
  %i.mw = ashr i32 %i.mv, 1                       ; 2 uses
  %i.mx = add nsw i32 %i.mo, %i.mk
  %i.my = ashr i32 %i.mx, 1                       ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !36 ; 2 uses
  %i.nb = sub nsw i32 %i.mu, %i.na
  %i.nc = ashr i32 %i.nb, 1
  %i.nd = add nsw i32 %i.mu, %i.na
  %i.ne = ashr i32 %i.nd, 1
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !36 ; 2 uses
  %i.nh = sub nsw i32 %i.ms, %i.ng
  %i.ni = ashr i32 %i.nh, 1
  %i.nj = add nsw i32 %i.ms, %i.ng
  %i.nk = ashr i32 %i.nj, 1
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !36 ; 2 uses
  %i.nn = sub nsw i32 %i.my, %i.nm
  %i.no = ashr i32 %i.nn, 1
  %i.np = add nsw i32 %i.my, %i.nm
  %i.nq = ashr i32 %i.np, 1
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !36 ; 2 uses
  %i.nt = sub nsw i32 %i.mw, %i.ns
  %i.nu = ashr i32 %i.nt, 1
  %i.nv = add nsw i32 %i.mw, %i.ns
  %i.nw = ashr i32 %i.nv, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink180.6 = phi i64 [ 96, %bb.n ], [ 224, %bb.m ]
  %.sink178.6 = phi i32 [ %i.ni, %bb.n ], [ 0, %bb.m ]
  %.sink177.6 = phi i64 [ 128, %bb.n ], [ 192, %bb.m ]
  %.sink175.6 = phi i32 [ %i.nq, %bb.n ], [ 0, %bb.m ]
  %.sink173.6 = phi i32 [ %i.no, %bb.n ], [ 0, %bb.m ]
  %.sink172.6 = phi i64 [ 192, %bb.n ], [ 128, %bb.m ]
  %.sink170.6 = phi i32 [ %i.nw, %bb.n ], [ 0, %bb.m ]
  %.sink169.6 = phi i64 [ 224, %bb.n ], [ 96, %bb.m ]
  %.sink167.6 = phi i32 [ %i.nu, %bb.n ], [ 0, %bb.m ]
  %.sink165.6 = phi i32 [ %i.nk, %bb.n ], [ 0, %bb.m ]
  %.sink164.6 = phi i32 [ %i.nc, %bb.n ], [ 0, %bb.m ]
  %.sink.6 = phi i32 [ %i.ne, %bb.n ], [ 0, %bb.m ]
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ma, i64 %.sink180.6
  store i32 %.sink178.6, ptr %i.nx, align 4, !tbaa !36
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ma, i64 %.sink177.6
  store i32 %.sink175.6, ptr %i.ny, align 4, !tbaa !36
  %i.nz = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i32 %.sink173.6, ptr %i.nz, align 4, !tbaa !36
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ma, i64 %.sink172.6
  store i32 %.sink170.6, ptr %i.oa, align 4, !tbaa !36
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ma, i64 %.sink169.6
  store i32 %.sink167.6, ptr %i.ob, align 4, !tbaa !36
  %i.oc = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 %.sink165.6, ptr %i.oc, align 4, !tbaa !36
  %i.od = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 %.sink164.6, ptr %i.od, align 4, !tbaa !36
  store i32 %.sink.6, ptr %i.ma, align 4, !tbaa !36
  %i.oe = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 5 uses
  %i.of = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.og = load i8, ptr %i.of, align 1, !tbaa !30
  %.not154.7 = icmp eq i8 %i.og, 0
  br i1 %.not154.7, label %.preheader.preheader, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !36
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !36
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !36 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !36 ; 2 uses
  %i.op = shl nsw i32 %i.oi, 1                    ; 2 uses
  %i.oq = shl nsw i32 %i.ok, 1                    ; 2 uses
  %i.or = sub nsw i32 %i.op, %i.oq
  %i.os = ashr exact i32 %i.or, 1                 ; 2 uses
  %i.ot = add nsw i32 %i.oq, %i.op
  %i.ou = ashr exact i32 %i.ot, 1                 ; 2 uses
  %i.ov = sub nsw i32 %i.ou, %i.om
  %i.ow = ashr i32 %i.ov, 1                       ; 2 uses
  %i.ox = add nsw i32 %i.ou, %i.om
  %i.oy = ashr i32 %i.ox, 1                       ; 2 uses
  %i.oz = sub nsw i32 %i.os, %i.oo
  %i.pa = ashr i32 %i.oz, 1                       ; 2 uses
  %i.pb = add nsw i32 %i.os, %i.oo
  %i.pc = ashr i32 %i.pb, 1                       ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !36 ; 2 uses
  %i.pf = sub nsw i32 %i.oy, %i.pe
  %i.pg = ashr i32 %i.pf, 1
  %i.ph = add nsw i32 %i.oy, %i.pe
  %i.pi = ashr i32 %i.ph, 1
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !36 ; 2 uses
  %i.pl = sub nsw i32 %i.ow, %i.pk
  %i.pm = ashr i32 %i.pl, 1
  %i.pn = add nsw i32 %i.ow, %i.pk
  %i.po = ashr i32 %i.pn, 1
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !36 ; 2 uses
  %i.pr = sub nsw i32 %i.pc, %i.pq
  %i.ps = ashr i32 %i.pr, 1
  %i.pt = add nsw i32 %i.pc, %i.pq
  %i.pu = ashr i32 %i.pt, 1
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !36 ; 2 uses
  %i.px = sub nsw i32 %i.pa, %i.pw
  %i.py = ashr i32 %i.px, 1
  %i.pz = add nsw i32 %i.pa, %i.pw
  %i.qa = ashr i32 %i.pz, 1
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.p, %bb.o
  %.sink180.7 = phi i64 [ 96, %bb.p ], [ 224, %bb.o ]
  %.sink178.7 = phi i32 [ %i.pm, %bb.p ], [ 0, %bb.o ]
  %.sink177.7 = phi i64 [ 128, %bb.p ], [ 192, %bb.o ]
  %.sink175.7 = phi i32 [ %i.pu, %bb.p ], [ 0, %bb.o ]
  %.sink173.7 = phi i32 [ %i.ps, %bb.p ], [ 0, %bb.o ]
  %.sink172.7 = phi i64 [ 192, %bb.p ], [ 128, %bb.o ]
  %.sink170.7 = phi i32 [ %i.qa, %bb.p ], [ 0, %bb.o ]
  %.sink169.7 = phi i64 [ 224, %bb.p ], [ 96, %bb.o ]
  %.sink167.7 = phi i32 [ %i.py, %bb.p ], [ 0, %bb.o ]
  %.sink165.7 = phi i32 [ %i.po, %bb.p ], [ 0, %bb.o ]
  %.sink164.7 = phi i32 [ %i.pg, %bb.p ], [ 0, %bb.o ]
  %.sink.7 = phi i32 [ %i.pi, %bb.p ], [ 0, %bb.o ]
  %i.qb = getelementptr inbounds nuw i8, ptr %i.oe, i64 %.sink180.7
  store i32 %.sink178.7, ptr %i.qb, align 4, !tbaa !36
  %i.qc = getelementptr inbounds nuw i8, ptr %i.oe, i64 %.sink177.7
  store i32 %.sink175.7, ptr %i.qc, align 4, !tbaa !36
  %i.qd = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i32 %.sink173.7, ptr %i.qd, align 4, !tbaa !36
  %i.qe = getelementptr inbounds nuw i8, ptr %i.oe, i64 %.sink172.7
  store i32 %.sink170.7, ptr %i.qe, align 4, !tbaa !36
  %i.qf = getelementptr inbounds nuw i8, ptr %i.oe, i64 %.sink169.7
  store i32 %.sink167.7, ptr %i.qf, align 4, !tbaa !36
  %i.qg = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  store i32 %.sink165.7, ptr %i.qg, align 4, !tbaa !36
  %i.qh = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i32 %.sink164.7, ptr %i.qh, align 4, !tbaa !36
  store i32 %.sink.7, ptr %i.oe, align 4, !tbaa !36
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.x
  %.1161 = phi ptr [ %i.rs, %bb.x ], [ %i.a, %.preheader.preheader ] ; 11 uses
  %.1145160 = phi i32 [ %i.ru, %bb.x ], [ 0, %.preheader.preheader ]
  %.0146159 = phi ptr [ %i.rt, %bb.x ], [ %1, %.preheader.preheader ] ; 3 uses
  %i.qi = load i32, ptr %.1161, align 4, !tbaa !36 ; 2 uses
  %.not = icmp eq i32 %i.qi, 0
  %i.qj = getelementptr inbounds nuw i8, ptr %.1161, i64 4
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !36 ; 2 uses
  %.not147 = icmp eq i32 %i.qk, 0
  %or.cond = select i1 %.not, i1 %.not147, i1 false
  br i1 %or.cond, label %bb.q, label %.preheader._crit_edge

bb.q:                                             ; preds = %.preheader
  %i.ql = getelementptr inbounds nuw i8, ptr %.1161, i64 8
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !36
  %.not148 = icmp eq i32 %i.qm, 0
  br i1 %.not148, label %bb.r, label %.preheader._crit_edge

bb.r:                                             ; preds = %bb.q
  %i.qn = getelementptr inbounds nuw i8, ptr %.1161, i64 12
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !36
  %.not149 = icmp eq i32 %i.qo, 0
  br i1 %.not149, label %bb.s, label %.preheader._crit_edge

bb.s:                                             ; preds = %bb.r
  %i.qp = getelementptr inbounds nuw i8, ptr %.1161, i64 16
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !36
  %.not150 = icmp eq i32 %i.qq, 0
  br i1 %.not150, label %bb.t, label %.preheader._crit_edge

bb.t:                                             ; preds = %bb.s
  %i.qr = getelementptr inbounds nuw i8, ptr %.1161, i64 20
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !36
  %.not151 = icmp eq i32 %i.qs, 0
  br i1 %.not151, label %bb.u, label %.preheader._crit_edge

bb.u:                                             ; preds = %bb.t
  %i.qt = getelementptr inbounds nuw i8, ptr %.1161, i64 24
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !36
  %.not152 = icmp eq i32 %i.qu, 0
  br i1 %.not152, label %bb.v, label %.preheader._crit_edge

bb.v:                                             ; preds = %bb.u
  %i.qv = getelementptr inbounds nuw i8, ptr %.1161, i64 28
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !36
  %.not153 = icmp eq i32 %i.qw, 0
  br i1 %.not153, label %bb.w, label %.preheader._crit_edge

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.0146159, i8 0, i64 16, i1 false)
  br label %bb.x

.preheader._crit_edge:                            ; preds = %.preheader, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %i.qx = phi i32 [ %i.qk, %.preheader ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ]
  %4 = shl nsw i32 %i.qi, 1
  %5 = shl nsw i32 %i.qx, 1
  %i.qy = getelementptr inbounds nuw i8, ptr %.1161, i64 8
  %i.qz = getelementptr inbounds nuw i8, ptr %.1161, i64 16
  %6 = insertelement <2 x i32> poison, i32 %4, i64 0
  %i.ra = shufflevector <2 x i32> %6, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %7 = insertelement <2 x i32> poison, i32 %5, i64 0
  %8 = shufflevector <2 x i32> %7, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.rb = add nsw <2 x i32> %i.ra, %8
  %i.rc = sub nsw <2 x i32> %i.ra, %8
  %i.rd = shufflevector <2 x i32> %i.rb, <2 x i32> %i.rc, <4 x i32> <i32 0, i32 0, i32 3, i32 3>
  %i.re = ashr exact <4 x i32> %i.rd, splat (i32 1) ; 2 uses
  %i.rf = load <2 x i32>, ptr %i.qy, align 4, !tbaa !36
  %i.rg = shufflevector <2 x i32> %i.rf, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.rh = add nsw <4 x i32> %i.re, %i.rg
  %i.ri = sub nsw <4 x i32> %i.re, %i.rg
  %i.rj = shufflevector <4 x i32> %i.rh, <4 x i32> %i.ri, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.rk = ashr <4 x i32> %i.rj, splat (i32 1)     ; 2 uses
  %i.rl = load <4 x i32>, ptr %i.qz, align 4, !tbaa !36 ; 2 uses
  %i.rm = sub nsw <4 x i32> %i.rk, %i.rl
  %i.rn = add nsw <4 x i32> %i.rl, %i.rk
  %i.ro = shufflevector <4 x i32> %i.rn, <4 x i32> %i.rm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.rp = lshr <8 x i32> %i.ro, splat (i32 1)
  %i.rq = trunc <8 x i32> %i.rp to <8 x i16>
  %i.rr = shufflevector <8 x i16> %i.rq, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.rr, ptr %.0146159, align 2, !tbaa !29
  br label %bb.x

bb.x:                                             ; preds = %.preheader._crit_edge, %bb.w
  %i.rs = getelementptr inbounds nuw i8, ptr %.1161, i64 32
  %i.rt = getelementptr inbounds [2 x i8], ptr %.0146159, i64 %2
  %i.ru = add nuw nsw i32 %.1145160, 1            ; 2 uses
  %exitcond163.not = icmp eq i32 %i.ru, 8
  br i1 %exitcond163.not, label %bb.y, label %.preheader, !llvm.loop !37

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_ivi_row_haar8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.j
  %.077 = phi i32 [ 0, %bb.a ], [ %i.am, %bb.j ]
  %.06676 = phi ptr [ %0, %bb.a ], [ %i.ak, %bb.j ] ; 11 uses
  %.06775 = phi ptr [ %1, %bb.a ], [ %i.al, %bb.j ] ; 3 uses
  %i.a = load i32, ptr %.06676, align 4, !tbaa !36 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %.06676, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !36   ; 2 uses
  %.not68 = icmp eq i32 %i.c, 0
  %or.cond = select i1 %.not, i1 %.not68, i1 false
  br i1 %or.cond, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.06676, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36
  %.not69 = icmp eq i32 %i.e, 0
  br i1 %.not69, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.06676, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !36
  %.not70 = icmp eq i32 %i.g, 0
  br i1 %.not70, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.06676, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !36
  %.not71 = icmp eq i32 %i.i, 0
  br i1 %.not71, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.06676, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !36
  %.not72 = icmp eq i32 %i.k, 0
  br i1 %.not72, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.06676, i64 24
  %i.m = load i32, ptr %i.l, align 4, !tbaa !36
  %.not73 = icmp eq i32 %i.m, 0
  br i1 %.not73, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %.06676, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !36
  %.not74 = icmp eq i32 %i.o, 0
  br i1 %.not74, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.06775, i8 0, i64 16, i1 false)
  br label %bb.j

._crit_edge:                                      ; preds = %bb.b, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.p = phi i32 [ %i.c, %bb.b ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  %4 = shl nsw i32 %i.a, 1
  %5 = shl nsw i32 %i.p, 1
  %i.q = getelementptr inbounds nuw i8, ptr %.06676, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.06676, i64 16
  %6 = insertelement <2 x i32> poison, i32 %4, i64 0
  %i.s = shufflevector <2 x i32> %6, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %7 = insertelement <2 x i32> poison, i32 %5, i64 0
  %8 = shufflevector <2 x i32> %7, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.t = add nsw <2 x i32> %i.s, %8
  %i.u = sub nsw <2 x i32> %i.s, %8
  %i.v = shufflevector <2 x i32> %i.t, <2 x i32> %i.u, <4 x i32> <i32 0, i32 0, i32 3, i32 3>
  %i.w = ashr exact <4 x i32> %i.v, splat (i32 1) ; 2 uses
  %i.x = load <2 x i32>, ptr %i.q, align 4, !tbaa !36
  %i.y = shufflevector <2 x i32> %i.x, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.z = add nsw <4 x i32> %i.w, %i.y
  %i.aa = sub nsw <4 x i32> %i.w, %i.y
  %i.ab = shufflevector <4 x i32> %i.z, <4 x i32> %i.aa, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ac = ashr <4 x i32> %i.ab, splat (i32 1)     ; 2 uses
  %i.ad = load <4 x i32>, ptr %i.r, align 4, !tbaa !36 ; 2 uses
  %i.ae = sub nsw <4 x i32> %i.ac, %i.ad
  %i.af = add nsw <4 x i32> %i.ad, %i.ac
  %i.ag = shufflevector <4 x i32> %i.af, <4 x i32> %i.ae, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ah = lshr <8 x i32> %i.ag, splat (i32 1)
  %i.ai = trunc <8 x i32> %i.ah to <8 x i16>
  %i.aj = shufflevector <8 x i16> %i.ai, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.aj, ptr %.06775, align 2, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.06676, i64 32
  %i.al = getelementptr inbounds [2 x i8], ptr %.06775, i64 %2
  %i.am = add nuw nsw i32 %.077, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.am, 8
  br i1 %exitcond.not, label %bb.k, label %bb.b, !llvm.loop !38

bb.k:                                             ; preds = %bb.j
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_ivi_col_haar8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %.idx89 = shl nsw i64 %2, 2                     ; 2 uses
  %.idx90 = mul nsw i64 %2, 6                     ; 2 uses
  %.idx91 = shl nsw i64 %2, 3                     ; 2 uses
  %.idx92 = mul nsw i64 %2, 10                    ; 2 uses
  %.idx93 = mul nsw i64 %2, 12                    ; 2 uses
  %.idx94 = mul nsw i64 %2, 14                    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.08296 = phi ptr [ %0, %bb.a ], [ %i.br, %bb.e ] ; 9 uses
  %.08395 = phi ptr [ %1, %bb.a ], [ %i.bs, %bb.e ] ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.b = load i8, ptr %i.a, align 1, !tbaa !30
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %.08296, align 4, !tbaa !36
  %i.d = shl nsw i32 %i.c, 1                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.08296, i64 32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !36
  %i.g = shl nsw i32 %i.f, 1                      ; 2 uses
  %i.h = sub nsw i32 %i.d, %i.g
  %i.i = ashr exact i32 %i.h, 1                   ; 2 uses
  %i.j = add nsw i32 %i.g, %i.d
  %i.k = ashr exact i32 %i.j, 1                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.08296, i64 64
  %i.m = load i32, ptr %i.l, align 4, !tbaa !36   ; 2 uses
  %i.n = sub nsw i32 %i.k, %i.m
  %i.o = ashr i32 %i.n, 1                         ; 2 uses
  %i.p = add nsw i32 %i.k, %i.m
  %i.q = ashr i32 %i.p, 1                         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08296, i64 96
  %i.s = load i32, ptr %i.r, align 4, !tbaa !36   ; 2 uses
  %i.t = sub nsw i32 %i.i, %i.s
  %i.u = ashr i32 %i.t, 1                         ; 2 uses
  %i.v = add nsw i32 %i.i, %i.s
  %i.w = ashr i32 %i.v, 1                         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.08296, i64 128
  %i.y = load i32, ptr %i.x, align 4, !tbaa !36   ; 2 uses
  %i.z = sub nsw i32 %i.q, %i.y
  %i.aa = lshr i32 %i.z, 1
  %i.ab = add nsw i32 %i.q, %i.y
  %i.ac = lshr i32 %i.ab, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.08296, i64 160
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !36 ; 2 uses
  %i.af = sub nsw i32 %i.o, %i.ae
  %i.ag = lshr i32 %i.af, 1
  %i.ah = add nsw i32 %i.o, %i.ae
  %i.ai = lshr i32 %i.ah, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.08296, i64 192
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !36 ; 2 uses
  %i.al = sub nsw i32 %i.w, %i.ak
  %i.am = lshr i32 %i.al, 1
  %i.an = add nsw i32 %i.w, %i.ak
  %i.ao = lshr i32 %i.an, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.08296, i64 224
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !36 ; 2 uses
  %i.ar = sub nsw i32 %i.u, %i.aq
  %i.as = lshr i32 %i.ar, 1
  %i.at = add nsw i32 %i.aq, %i.u
  %i.au = lshr i32 %i.at, 1
  %i.av = trunc i32 %i.ac to i16
  store i16 %i.av, ptr %.08395, align 2, !tbaa !29
  %i.aw = trunc i32 %i.aa to i16
  %i.ax = getelementptr inbounds [2 x i8], ptr %.08395, i64 %2
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !29
  %i.ay = trunc i32 %i.ai to i16
  %i.az = getelementptr inbounds i8, ptr %.08395, i64 %.idx89
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !29
  %i.ba = trunc i32 %i.ag to i16
  %i.bb = getelementptr inbounds i8, ptr %.08395, i64 %.idx90
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !29
  %i.bc = trunc i32 %i.ao to i16
  %i.bd = getelementptr inbounds i8, ptr %.08395, i64 %.idx91
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !29
  %i.be = trunc i32 %i.am to i16
  %i.bf = getelementptr inbounds i8, ptr %.08395, i64 %.idx92
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !29
  %i.bg = trunc i32 %i.au to i16
  %i.bh = getelementptr inbounds i8, ptr %.08395, i64 %.idx93
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !29
  %i.bi = trunc i32 %i.as to i16
  %i.bj = getelementptr inbounds i8, ptr %.08395, i64 %.idx94
  store i16 %i.bi, ptr %i.bj, align 2, !tbaa !29
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bk = getelementptr inbounds i8, ptr %.08395, i64 %.idx94
  store i16 0, ptr %i.bk, align 2, !tbaa !29
  %i.bl = getelementptr inbounds i8, ptr %.08395, i64 %.idx93
  store i16 0, ptr %i.bl, align 2, !tbaa !29
  %i.bm = getelementptr inbounds i8, ptr %.08395, i64 %.idx92
  store i16 0, ptr %i.bm, align 2, !tbaa !29
  %i.bn = getelementptr inbounds i8, ptr %.08395, i64 %.idx91
  store i16 0, ptr %i.bn, align 2, !tbaa !29
  %i.bo = getelementptr inbounds i8, ptr %.08395, i64 %.idx90
  store i16 0, ptr %i.bo, align 2, !tbaa !29
  %i.bp = getelementptr inbounds i8, ptr %.08395, i64 %.idx89
  store i16 0, ptr %i.bp, align 2, !tbaa !29
  %i.bq = getelementptr inbounds [2 x i8], ptr %.08395, i64 %2
  store i16 0, ptr %i.bq, align 2, !tbaa !29
  store i16 0, ptr %.08395, align 2, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.br = getelementptr inbounds nuw i8, ptr %.08296, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.08395, i64 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !39

bb.f:                                             ; preds = %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ff_ivi_inverse_haar_4x4(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !30
  %.not78 = icmp eq i8 %i.a, 0
  br i1 %.not78, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !36
  %i.c = shl nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36
  %i.f = shl nsw i32 %i.e, 1                      ; 2 uses
  %i.g = sub nsw i32 %i.c, %i.f
  %i.h = ashr exact i32 %i.g, 1                   ; 2 uses
  %i.i = add nsw i32 %i.f, %i.c
  %i.j = ashr exact i32 %i.i, 1                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i32, ptr %i.k, align 4, !tbaa !36   ; 2 uses
  %i.m = sub nsw i32 %i.j, %i.l
  %i.n = ashr i32 %i.m, 1
  %i.o = add nsw i32 %i.j, %i.l
  %i.p = ashr i32 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i32, ptr %i.q, align 4, !tbaa !36   ; 2 uses
  %i.s = sub nsw i32 %i.h, %i.r
  %i.t = ashr i32 %i.s, 1
  %i.u = add nsw i32 %i.r, %i.h
  %i.v = ashr i32 %i.u, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.47.0 = phi i32 [ %i.t, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.sroa.32.0 = phi i32 [ %i.v, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.sroa.17.0 = phi i32 [ %i.n, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi i32 [ %i.p, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !30
  %.not78.1 = icmp eq i8 %i.x, 0
  br i1 %.not78.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !36
  %i.aa = shl nsw i32 %i.z, 1                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !36
  %i.ad = shl nsw i32 %i.ac, 1                    ; 2 uses
  %i.ae = sub nsw i32 %i.aa, %i.ad
  %i.af = ashr exact i32 %i.ae, 1                 ; 2 uses
  %i.ag = add nsw i32 %i.ad, %i.aa
end_hunk_0
