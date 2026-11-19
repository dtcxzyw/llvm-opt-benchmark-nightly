Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvargrid_integrate?download=true
inline.NumInlined: 1192
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN20colvargrid_integrate16update_div_localERKSt6vectorIiSaIiEE:bb.a
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !23
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ab
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !23
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul nsw i64 %i.ah, %i.ae
  %i.aj = add i64 %i.ai, %i.aa
  %i.ak = or disjoint i64 %.01627.i, 3            ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !23
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ak
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !23
  %i.aq = sext i32 %i.ap to i64
  %i.ar = mul nsw i64 %i.aq, %i.an
  %i.as = add i64 %i.ar, %i.aj                    ; 3 uses
  %i.at = add nuw i64 %.01627.i, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !2

_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.01627.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.at, %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.loopexit.unr-lcssa ]
  %.01726.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.as, %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod111 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod111)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.01627.i.epil = phi i64 [ %.01627.i.epil.init, %.epil.preheader ], [ %i.bc, %bb.c ] ; 3 uses
  %.01726.i.epil = phi i64 [ %.01726.i.epil.init, %.epil.preheader ], [ %i.bb, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.01627.i.epil
  %i.av = load i32, ptr %i.au, align 4, !tbaa !23
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.01627.i.epil
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !23
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.az, %i.aw
  %i.bb = add i64 %i.ba, %.01726.i.epil           ; 2 uses
  %i.bc = add nuw i64 %.01627.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit, label %bb.c, !llvm.loop !237

_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit: ; preds = %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.loopexit.unr-lcssa, %bb.c, %bb.a
  %.017.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.as, %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.loopexit.unr-lcssa ], [ %i.bb, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !126 ; 2 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %.pre to i64               ; 3 uses
  %i.bh = sub i64 %i.bf, %i.bg                    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.be, %.pre
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit
  %i.bi = icmp ugt i64 %i.bh, 9223372036854775804
  br i1 %i.bi, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !36

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #24
  %.pre46.a = load ptr, ptr %1, align 8, !tbaa !133 ; 2 uses
  %.pre47.a = load ptr, ptr %i.bd, align 8, !tbaa !133
  %.pre48.a = ptrtoint ptr %.pre47.a to i64
  %.pre49 = ptrtoint ptr %.pre46.a to i64
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit
  %.pre-phi50 = phi i64 [ %.pre49, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.bg, %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit ]
  %.pre-phi = phi i64 [ %.pre48.a, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.bg, %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit ]
  %i.bk = phi ptr [ %.pre46.a, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %.pre, %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit ] ; 5 uses
  %i.bl = phi ptr [ %i.bj, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit ] ; 37 uses
  store ptr %i.bl, ptr %2, align 8, !tbaa !111
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bh
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !123
  %i.bp = sub i64 %.pre-phi, %.pre-phi50          ; 4 uses
  %i.bq = icmp sgt i64 %i.bp, 4
  br i1 %i.bq, label %bb.f, label %bb.g, !prof !127

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bl, ptr align 4 %i.bk, i64 %i.bp, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.g:                                             ; preds = %bb.e
  %i.br = icmp eq i64 %i.bp, 4
  br i1 %i.br, label %bb.h, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.h:                                             ; preds = %bb.g
  %i.bs = load i32, ptr %i.bk, align 4, !tbaa !23
  store i32 %i.bs, ptr %i.bl, align 4, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.bt = getelementptr inbounds i8, ptr %i.bl, i64 %i.bp
  store ptr %i.bt, ptr %i.bm, align 8, !tbaa !126
  %i.bu = load i64, ptr %i.f, align 8, !tbaa !104
  switch i64 %i.bu, label %bb.as [
    i64 2, label %bb.i
    i64 3, label %bb.j
  ]

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  call void @_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.bv = load ptr, ptr %1, align 8, !tbaa !111
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !23
  %i.bx = add nsw i32 %i.bw, -1
  store i32 %i.bx, ptr %i.bl, align 4, !tbaa !23
  call void @_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.by = load ptr, ptr %1, align 8, !tbaa !111
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !23
  %i.cb = add nsw i32 %i.ca, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !23
  call void @_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.cd = load ptr, ptr %1, align 8, !tbaa !111
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !23
  store i32 %i.ce, ptr %i.bl, align 4, !tbaa !23
  call void @_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !108
  %i.ch = load <2 x double>, ptr %i.b, align 16, !tbaa !116 ; 2 uses
  %i.ci = load <2 x double>, ptr %i.a, align 16, !tbaa !116
  %i.cj = load <2 x double>, ptr %i.c, align 16, !tbaa !116 ; 2 uses
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> %i.ch, <2 x i32> <i32 0, i32 3>
  %i.cl = fsub <2 x double> %i.ck, %i.ci
  %i.cm = load <2 x double>, ptr %i.d, align 16, !tbaa !116
  %i.cn = fadd <2 x double> %i.cl, %i.cm
  %i.co = shufflevector <2 x double> %i.ch, <2 x double> %i.cj, <2 x i32> <i32 0, i32 3>
  %i.cp = fsub <2 x double> %i.cn, %i.co
  %i.cq = load <2 x double>, ptr %i.cg, align 8, !tbaa !116
  %i.cr = fdiv <2 x double> %i.cp, %i.cq
  %i.cs = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.cr)
  %i.ct = fmul double %i.cs, 5.000000e-01
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !108
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.017.lcssa.i
  store double %i.ct, ptr %i.cw, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.thread

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.cx = load i32, ptr %i.bk, align 4, !tbaa !23
  %i.cy = add nsw i32 %i.cx, -1
  store i32 %i.cy, ptr %i.bl, align 4, !tbaa !23
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !20 ; 9 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 320
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !104 ; 11 uses
  %.not20.i.i = icmp eq i64 %i.dg, 0              ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 576 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 328 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 704 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 724 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 720 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 464 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 352 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.de, i64 448 ; 2 uses
  %xtraiter124 = and i64 %i.dg, 3                 ; 3 uses
  %i.dq = icmp ult i64 %i.dg, 4
  %unroll_iter129 = and i64 %i.dg, -4
  %lcmp.mod126.not = icmp eq i64 %xtraiter124, 0
  %lcmp.mod128 = icmp ne i64 %xtraiter124, 0
  %xtraiter143 = and i64 %i.dg, 3                 ; 3 uses
  %i.dr = icmp ult i64 %i.dg, 4
  %unroll_iter148 = and i64 %i.dg, -4
  %lcmp.mod145.not = icmp eq i64 %xtraiter143, 0
  %lcmp.mod147 = icmp ne i64 %xtraiter143, 0
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.aq
  %.039 = phi i32 [ 0, %bb.j ], [ %6, %bb.aq ]
  %i.ds = phi i1 [ true, %bb.j ], [ false, %bb.aq ]
  %i.dt = load i32, ptr %i.cz, align 4, !tbaa !23
  %i.du = add nsw i32 %i.dt, -1
  store i32 %i.du, ptr %i.da, align 4, !tbaa !23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit.1
  %.137 = phi i32 [ %.039, %bb.k ], [ %6, %_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit.1 ] ; 4 uses
  %i.dv = phi i1 [ true, %bb.k ], [ false, %_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit.1 ]
  %i.dw = load i32, ptr %i.db, align 4, !tbaa !23
  %i.dx = add nsw i32 %i.dw, -1
  store i32 %i.dx, ptr %i.dc, align 4, !tbaa !23
  %3 = sext i32 %.137 to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.e, i64 %3 ; 3 uses
  br i1 %.not20.i.i, label %_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l
  %i.dz = load ptr, ptr %i.dh, align 8, !tbaa !118
  %i.ea = load ptr, ptr %i.di, align 8            ; 2 uses
  br label %.outer.i

.outer.i:                                         ; preds = %.thread.i, %.lr.ph.i.i
  %.018.i.ph.i = phi i64 [ %i.et, %.thread.i ], [ 0, %.lr.ph.i.i ]
  %.01517.i.ph.i = phi i1 [ true, %.thread.i ], [ false, %.lr.ph.i.i ]
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.outer.i
  %.018.i.i = phi i64 [ %i.es, %bb.q ], [ %.018.i.ph.i, %.outer.i ] ; 8 uses
  %i.eb = sdiv i64 %.018.i.i, 64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.eb
  %i.ed = and i64 %.018.i.i, -9223372036854775745
  %i.ee = icmp ugt i64 %i.ed, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i.i = select i1 %i.ee, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ec, i64 %storemerge.idx.i.i.i.i.i.i.i
  %i.ef = and i64 %.018.i.i, 63
  %i.eg = shl nuw i64 1, %i.ef
  %i.eh = load i64, ptr %storemerge.i.i.i.i.i.i.i, align 8, !tbaa !105
  %i.ei = and i64 %i.eg, %i.eh
  %.not16.i.i = icmp eq i64 %i.ei, 0
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.018.i.i ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !23 ; 3 uses
  br i1 %.not16.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.018.i.i
  %i.em = load i32, ptr %i.el, align 4, !tbaa !23 ; 2 uses
  %i.en = add nsw i32 %i.em, %i.ek
  %i.eo = srem i32 %i.en, %i.em
  store i32 %i.eo, ptr %i.ej, align 4, !tbaa !23
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.ep = icmp slt i32 %i.ek, 0
  br i1 %i.ep, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.018.i.i
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !23
  %.not.i.i = icmp slt i32 %i.ek, %i.er
  br i1 %.not.i.i, label %bb.q, label %.thread.i

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.es = add nuw i64 %.018.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.es, %i.dg
  br i1 %exitcond.not.i.i, label %_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.i, label %bb.m, !llvm.loop !5

.thread.i:                                        ; preds = %bb.p, %bb.o
  %i.et = add nuw i64 %.018.i.i, 1                ; 2 uses
  %exitcond.not.i25.i = icmp eq i64 %i.et, %i.dg
  br i1 %exitcond.not.i25.i, label %_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit.thread, label %.outer.i, !llvm.loop !5

_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.i: ; preds = %bb.q
  br i1 %.01517.i.ph.i, label %_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit.thread, label %_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.thread.i

_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit.thread: ; preds = %.thread.i, %_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i8 0, i64 24, i1 false), !tbaa !116
  %i.eu = load i32, ptr %i.dc, align 4, !tbaa !23
  %i.ev = add nsw i32 %i.eu, 1
  store i32 %i.ev, ptr %i.dc, align 4, !tbaa !23
  %4 = sext i32 %.137 to i64
  %i.ew = getelementptr [8 x i8], ptr %i.e, i64 %4
  %i.ex = getelementptr i8, ptr %i.ew, i64 24
  br label %.lr.ph.i.i.1

_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.thread.i: ; preds = %_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.i, %bb.l
  %i.ey = load i8, ptr %i.dj, align 8, !tbaa !102, !range !129, !noundef !130
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = load ptr, ptr %i.dk, align 8, !tbaa !135 ; 4 uses
  %.not.i8.i = icmp eq ptr %i.fa, null
  br i1 %.not.i8.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.thread.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 320
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !104 ; 4 uses
  %.not2125.not.i.i.i.i = icmp eq i64 %i.fc, 0
  br i1 %.not2125.not.i.i.i.i, label %_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.r
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 352
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !111 ; 5 uses
  %xtraiter113 = and i64 %i.fc, 3                 ; 3 uses
  %i.ff = icmp ult i64 %i.fc, 4
  br i1 %i.ff, label %.epil.preheader112, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter118 = and i64 %i.fc, -4
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i.i.i.new
  %.01627.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %i.gp, %bb.s ] ; 6 uses
  %.01726.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %i.go, %bb.s ]
  %niter119 = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter119.next.3, %bb.s ]
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.01627.i.i.i.i
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !23
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %.01627.i.i.i.i
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !23
  %i.fl = sext i32 %i.fk to i64
  %i.fm = mul nsw i64 %i.fl, %i.fi
  %i.fn = add i64 %i.fm, %.01726.i.i.i.i
  %i.fo = or disjoint i64 %.01627.i.i.i.i, 1      ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !23
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fo
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !23
  %i.fu = sext i32 %i.ft to i64
  %i.fv = mul nsw i64 %i.fu, %i.fr
  %i.fw = add i64 %i.fv, %i.fn
  %i.fx = or disjoint i64 %.01627.i.i.i.i, 2      ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !23
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fx
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !23
  %i.gd = sext i32 %i.gc to i64
  %i.ge = mul nsw i64 %i.gd, %i.ga
  %i.gf = add i64 %i.ge, %i.fw
  %i.gg = or disjoint i64 %.01627.i.i.i.i, 3      ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !23
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.gg
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !23
  %i.gm = sext i32 %i.gl to i64
  %i.gn = mul nsw i64 %i.gm, %i.gj
  %i.go = add i64 %i.gn, %i.gf                    ; 3 uses
  %i.gp = add nuw i64 %.01627.i.i.i.i, 4          ; 2 uses
  %niter119.next.3 = add nuw i64 %niter119, 4     ; 2 uses
  %niter119.ncmp.3 = icmp eq i64 %niter119.next.3, %unroll_iter118
  br i1 %niter119.ncmp.3, label %_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i.loopexit.unr-lcssa, label %bb.s, !llvm.loop !1

_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.s
  %lcmp.mod115.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod115.not, label %_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i, label %.epil.preheader112

.epil.preheader112:                               ; preds = %_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i
  %.01627.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.gp, %_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i.loopexit.unr-lcssa ]
  %.01726.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.go, %_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod117 = icmp ne i64 %xtraiter113, 0
  call void @llvm.assume(i1 %lcmp.mod117)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader112
  %.01627.i.i.i.i.epil = phi i64 [ %.01627.i.i.i.i.epil.init, %.epil.preheader112 ], [ %i.gy, %bb.t ] ; 3 uses
  %.01726.i.i.i.i.epil = phi i64 [ %.01726.i.i.i.i.epil.init, %.epil.preheader112 ], [ %i.gx, %bb.t ]
  %epil.iter114 = phi i64 [ 0, %.epil.preheader112 ], [ %epil.iter114.next, %bb.t ]
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.01627.i.i.i.i.epil
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !23
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %.01627.i.i.i.i.epil
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !23
  %i.gv = sext i32 %i.gu to i64
  %i.gw = mul nsw i64 %i.gv, %i.gs
  %i.gx = add i64 %i.gw, %.01726.i.i.i.i.epil     ; 2 uses
  %i.gy = add nuw i64 %.01627.i.i.i.i.epil, 1
  %epil.iter114.next = add i64 %epil.iter114, 1   ; 2 uses
  %epil.iter114.cmp.not = icmp eq i64 %epil.iter114.next, %xtraiter113
  br i1 %epil.iter114.cmp.not, label %_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i, label %bb.t, !llvm.loop !238

_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i: ; preds = %_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i.loopexit.unr-lcssa, %bb.t, %bb.r
  %.017.lcssa.i.i.i.i = phi i64 [ 0, %bb.r ], [ %i.go, %_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i.loopexit.unr-lcssa ], [ %i.gx, %bb.t ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fa, i64 464
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !114
  %i.hb = getelementptr [8 x i8], ptr %i.ha, i64 %.017.lcssa.i.i.i.i
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !105
  %i.hd = uitofp i64 %i.hc to double
  br label %bb.u

bb.u:                                             ; preds = %_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i, %_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.thread.i
  %.014.i.i = phi double [ %i.hd, %_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i ], [ 1.000000e+00, %_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.thread.i ] ; 7 uses
  br i1 %i.ez, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.he = load i32, ptr %i.dl, align 4, !tbaa !138 ; 2 uses
  %i.hf = sitofp i32 %i.he to double              ; 2 uses
  %i.hg = fcmp ugt double %.014.i.i, %i.hf
  br i1 %i.hg, label %bb.w, label %_ZN20colvar_grid_gradient21smooth_inverse_weightEd.exit.i.i

bb.w:                                             ; preds = %bb.v
  %i.hh = load i32, ptr %i.dm, align 8, !tbaa !139 ; 2 uses
  %i.hi = sitofp i32 %i.hh to double
  %i.hj = fcmp olt double %.014.i.i, %i.hi
  br i1 %i.hj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.hk = fsub double %.014.i.i, %i.hf
  %i.hl = sub nsw i32 %i.hh, %i.he
  %i.hm = sitofp i32 %i.hl to double
  %i.hn = fmul nnan double %.014.i.i, %i.hm
  %i.ho = fdiv double %i.hk, %i.hn
  br label %_ZN20colvar_grid_gradient21smooth_inverse_weightEd.exit.i.i

bb.y:                                             ; preds = %bb.w
  %i.hp = fdiv double 1.000000e+00, %.014.i.i
  br label %_ZN20colvar_grid_gradient21smooth_inverse_weightEd.exit.i.i

bb.z:                                             ; preds = %bb.u
  %i.hq = fcmp ogt double %.014.i.i, 0.000000e+00
  %i.hr = fdiv double 1.000000e+00, %.014.i.i
  %i.hs = select i1 %i.hq, double %i.hr, double 0.000000e+00
  br label %_ZN20colvar_grid_gradient21smooth_inverse_weightEd.exit.i.i

_ZN20colvar_grid_gradient21smooth_inverse_weightEd.exit.i.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.v
  %.013.i.i = phi double [ %i.hs, %bb.z ], [ %i.hp, %bb.y ], [ %i.ho, %bb.x ], [ 0.000000e+00, %bb.v ] ; 2 uses
  br i1 %.not20.i.i, label %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20colvar_grid_gradient21smooth_inverse_weightEd.exit.i.i
  %i.ht = load ptr, ptr %i.do, align 8, !tbaa !111 ; 5 uses
  br i1 %i.dq, label %.epil.preheader123, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.new
  %.01627.i.i.i = phi i64 [ %i.jd, %.lr.ph.i.i.i.new ], [ 0, %.lr.ph.i.i.i ] ; 6 uses
  %.01726.i.i.i = phi i64 [ %i.jc, %.lr.ph.i.i.i.new ], [ 0, %.lr.ph.i.i.i ]
  %niter130 = phi i64 [ %niter130.next.3, %.lr.ph.i.i.i.new ], [ 0, %.lr.ph.i.i.i ]
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.01627.i.i.i
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !23
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %.01627.i.i.i
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !23
  %i.hz = sext i32 %i.hy to i64
  %i.ia = mul nsw i64 %i.hz, %i.hw
  %i.ib = add i64 %i.ia, %.01726.i.i.i
  %i.ic = or disjoint i64 %.01627.i.i.i, 1        ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !23
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.ic
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !23
  %i.ii = sext i32 %i.ih to i64
  %i.ij = mul nsw i64 %i.ii, %i.if
  %i.ik = add i64 %i.ij, %i.ib
  %i.il = or disjoint i64 %.01627.i.i.i, 2        ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !23
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.il
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !23
  %i.ir = sext i32 %i.iq to i64
  %i.is = mul nsw i64 %i.ir, %i.io
  %i.it = add i64 %i.is, %i.ik
  %i.iu = or disjoint i64 %.01627.i.i.i, 3        ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !23
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.iu
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !23
  %i.ja = sext i32 %i.iz to i64
  %i.jb = mul nsw i64 %i.ja, %i.ix
  %i.jc = add i64 %i.jb, %i.it                    ; 3 uses
  %i.jd = add nuw i64 %.01627.i.i.i, 4            ; 2 uses
  %niter130.next.3 = add nuw i64 %niter130, 4     ; 2 uses
  %niter130.ncmp.3 = icmp eq i64 %niter130.next.3, %unroll_iter129
  br i1 %niter130.ncmp.3, label %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.new, !llvm.loop !2

_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.new
  br i1 %lcmp.mod126.not, label %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i, label %.epil.preheader123

.epil.preheader123:                               ; preds = %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %.01627.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.jd, %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i.loopexit.unr-lcssa ]
  %.01726.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.jc, %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod128)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader123
  %.01627.i.i.i.epil = phi i64 [ %.01627.i.i.i.epil.init, %.epil.preheader123 ], [ %i.jm, %bb.aa ] ; 3 uses
  %.01726.i.i.i.epil = phi i64 [ %.01726.i.i.i.epil.init, %.epil.preheader123 ], [ %i.jl, %bb.aa ]
  %epil.iter125 = phi i64 [ 0, %.epil.preheader123 ], [ %epil.iter125.next, %bb.aa ]
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.01627.i.i.i.epil
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !23
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %.01627.i.i.i.epil
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !23
  %i.jj = sext i32 %i.ji to i64
  %i.jk = mul nsw i64 %i.jj, %i.jg
  %i.jl = add i64 %i.jk, %.01726.i.i.i.epil       ; 2 uses
  %i.jm = add nuw i64 %.01627.i.i.i.epil, 1
  %epil.iter125.next = add i64 %epil.iter125, 1   ; 2 uses
  %epil.iter125.cmp.not = icmp eq i64 %epil.iter125.next, %xtraiter124
  br i1 %epil.iter125.cmp.not, label %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i, label %bb.aa, !llvm.loop !239

_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i: ; preds = %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i.loopexit.unr-lcssa, %bb.aa, %_ZN20colvar_grid_gradient21smooth_inverse_weightEd.exit.i.i
  %.017.lcssa.i.i.i = phi i64 [ 0, %_ZN20colvar_grid_gradient21smooth_inverse_weightEd.exit.i.i ], [ %i.jc, %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i.loopexit.unr-lcssa ], [ %i.jl, %bb.aa ]
  %i.jn = load ptr, ptr %i.dn, align 8, !tbaa !108
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %.017.lcssa.i.i.i ; 2 uses
  %i.jp = load i64, ptr %i.dp, align 8, !tbaa !128 ; 5 uses
  %.not17.i.i = icmp eq i64 %i.jp, 0
  br i1 %.not17.i.i, label %_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit, label %.lr.ph.i9.i.preheader

.lr.ph.i9.i.preheader:                            ; preds = %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i
  %min.iters.check87 = icmp ult i64 %i.jp, 4
  br i1 %min.iters.check87, label %.lr.ph.i9.i.preheader101, label %vector.ph88

vector.ph88:                                      ; preds = %.lr.ph.i9.i.preheader
  %n.vec89 = and i64 %i.jp, -4                    ; 3 uses
  %broadcast.splatinsert90 = insertelement <2 x double> poison, double %.013.i.i, i64 0
  %broadcast.splat91 = shufflevector <2 x double> %broadcast.splatinsert90, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph88
  %index93 = phi i64 [ 0, %vector.ph88 ], [ %index.next96, %vector.body92 ] ; 3 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %index93 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %wide.load94 = load <2 x double>, ptr %i.jq, align 8, !tbaa !116
  %wide.load95 = load <2 x double>, ptr %i.jr, align 8, !tbaa !116
  %i.js = fmul <2 x double> %broadcast.splat91, %wide.load94
  %i.jt = fmul <2 x double> %broadcast.splat91, %wide.load95
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %index93 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  store <2 x double> %i.js, ptr %i.ju, align 8, !tbaa !116
  store <2 x double> %i.jt, ptr %i.jv, align 8, !tbaa !116
  %index.next96 = add nuw i64 %index93, 4         ; 2 uses
  %i.jw = icmp eq i64 %index.next96, %n.vec89
  br i1 %i.jw, label %middle.block97, label %vector.body92, !llvm.loop !240

middle.block97:                                   ; preds = %vector.body92
  %cmp.n98 = icmp eq i64 %i.jp, %n.vec89
  br i1 %cmp.n98, label %_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit, label %.lr.ph.i9.i.preheader101

.lr.ph.i9.i.preheader101:                         ; preds = %.lr.ph.i9.i.preheader, %middle.block97
  %.016.i.i.ph = phi i64 [ 0, %.lr.ph.i9.i.preheader ], [ %n.vec89, %middle.block97 ]
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader101, %.lr.ph.i9.i
  %.016.i.i = phi i64 [ %i.kb, %.lr.ph.i9.i ], [ %.016.i.i.ph, %.lr.ph.i9.i.preheader101 ] ; 3 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %.016.i.i
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !116
  %i.jz = fmul double %.013.i.i, %i.jy
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.016.i.i
  store double %i.jz, ptr %i.ka, align 8, !tbaa !116
  %i.kb = add nuw i64 %.016.i.i, 1                ; 2 uses
  %exitcond.not.i10.i = icmp eq i64 %i.kb, %i.jp
  br i1 %exitcond.not.i10.i, label %_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit, label %.lr.ph.i9.i, !llvm.loop !241

_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit: ; preds = %.lr.ph.i9.i, %middle.block97, %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i
  %i.kc = load i32, ptr %i.dc, align 4, !tbaa !23
  %i.kd = add nsw i32 %i.kc, 1
  store i32 %i.kd, ptr %i.dc, align 4, !tbaa !23
  %5 = sext i32 %.137 to i64
  %i.ke = getelementptr [8 x i8], ptr %i.e, i64 %5
  %i.kf = getelementptr i8, ptr %i.ke, i64 24     ; 2 uses
  br i1 %.not20.i.i, label %_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.thread.i.1, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit.thread, %_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit
  %i.kg = phi ptr [ %i.ex, %_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit.thread ], [ %i.kf, %_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit ] ; 2 uses
  %i.kh = load ptr, ptr %i.dh, align 8, !tbaa !118
  %i.ki = load ptr, ptr %i.di, align 8            ; 2 uses
  br label %.outer.i.1

.outer.i.1:                                       ; preds = %.thread.i.1, %.lr.ph.i.i.1
  %.018.i.ph.i.1 = phi i64 [ %i.lb, %.thread.i.1 ], [ 0, %.lr.ph.i.i.1 ]
  %.01517.i.ph.i.1 = phi i1 [ true, %.thread.i.1 ], [ false, %.lr.ph.i.i.1 ]
  br label %bb.ab

bb.ab:                                            ; preds = %bb.af, %.outer.i.1
  %.018.i.i.1 = phi i64 [ %i.la, %bb.af ], [ %.018.i.ph.i.1, %.outer.i.1 ] ; 8 uses
  %i.kj = sdiv i64 %.018.i.i.1, 64
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.kh, i64 %i.kj
  %i.kl = and i64 %.018.i.i.1, -9223372036854775745
  %i.km = icmp ugt i64 %i.kl, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i.i.1 = select i1 %i.km, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i.i.1 = getelementptr inbounds i8, ptr %i.kk, i64 %storemerge.idx.i.i.i.i.i.i.i.1
  %i.kn = and i64 %.018.i.i.1, 63
  %i.ko = shl nuw i64 1, %i.kn
  %i.kp = load i64, ptr %storemerge.i.i.i.i.i.i.i.1, align 8, !tbaa !105
  %i.kq = and i64 %i.ko, %i.kp
  %.not16.i.i.1 = icmp eq i64 %i.kq, 0
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.018.i.i.1 ; 2 uses
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !23 ; 3 uses
  br i1 %.not16.i.i.1, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %.018.i.i.1
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !23 ; 2 uses
  %i.kv = add nsw i32 %i.ku, %i.ks
  %i.kw = srem i32 %i.kv, %i.ku
  store i32 %i.kw, ptr %i.kr, align 4, !tbaa !23
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.kx = icmp slt i32 %i.ks, 0
  br i1 %i.kx, label %.thread.i.1, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %.018.i.i.1
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !23
  %.not.i.i.1 = icmp slt i32 %i.ks, %i.kz
  br i1 %.not.i.i.1, label %bb.af, label %.thread.i.1

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %i.la = add nuw i64 %.018.i.i.1, 1              ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.la, %i.dg
  br i1 %exitcond.not.i.i.1, label %_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.i.1, label %bb.ab, !llvm.loop !5

_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.i.1: ; preds = %bb.af
  br i1 %.01517.i.ph.i.1, label %.preheader.i.1, label %_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.thread.i.1

.thread.i.1:                                      ; preds = %bb.ae, %bb.ad
  %i.lb = add nuw i64 %.018.i.i.1, 1              ; 2 uses
  %exitcond.not.i25.i.1 = icmp eq i64 %i.lb, %i.dg
  br i1 %exitcond.not.i25.i.1, label %.preheader.i.1, label %.outer.i.1, !llvm.loop !5

.preheader.i.1:                                   ; preds = %.thread.i.1, %_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.i.1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kg, i8 0, i64 24, i1 false), !tbaa !116
  br label %_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit.1

_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.thread.i.1: ; preds = %_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.i.1, %_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit
  %i.lc = phi ptr [ %i.kg, %_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.i.1 ], [ %i.kf, %_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit ] ; 7 uses
  %i.ld = ptrtoaddr ptr %i.lc to i64
  %i.le = load i8, ptr %i.dj, align 8, !tbaa !102, !range !129, !noundef !130
  %i.lf = trunc nuw i8 %i.le to i1
  %i.lg = load ptr, ptr %i.dk, align 8, !tbaa !135 ; 4 uses
  %.not.i8.i.1 = icmp eq ptr %i.lg, null
  br i1 %.not.i8.i.1, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.thread.i.1
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 320
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !104 ; 4 uses
  %.not2125.not.i.i.i.i.1 = icmp eq i64 %i.li, 0
  br i1 %.not2125.not.i.i.i.i.1, label %_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i.1, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %bb.ag
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 352
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !111 ; 5 uses
  %xtraiter135 = and i64 %i.li, 3                 ; 3 uses
  %i.ll = icmp ult i64 %i.li, 4
  br i1 %i.ll, label %.epil.preheader134, label %.lr.ph.i.i.i.i.1.new

.lr.ph.i.i.i.i.1.new:                             ; preds = %.lr.ph.i.i.i.i.1
  %unroll_iter140 = and i64 %i.li, -4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph.i.i.i.i.1.new
  %.01627.i.i.i.i.1 = phi i64 [ 0, %.lr.ph.i.i.i.i.1.new ], [ %i.mv, %bb.ah ] ; 6 uses
  %.01726.i.i.i.i.1 = phi i64 [ 0, %.lr.ph.i.i.i.i.1.new ], [ %i.mu, %bb.ah ]
  %niter141 = phi i64 [ 0, %.lr.ph.i.i.i.i.1.new ], [ %niter141.next.3, %bb.ah ]
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.01627.i.i.i.i.1
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !23
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %.01627.i.i.i.i.1
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !23
  %i.lr = sext i32 %i.lq to i64
  %i.ls = mul nsw i64 %i.lr, %i.lo
  %i.lt = add i64 %i.ls, %.01726.i.i.i.i.1
  %i.lu = or disjoint i64 %.01627.i.i.i.i.1, 1    ; 2 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.lu
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !23
  %i.lx = sext i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.lu
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !23
  %i.ma = sext i32 %i.lz to i64
  %i.mb = mul nsw i64 %i.ma, %i.lx
  %i.mc = add i64 %i.mb, %i.lt
  %i.md = or disjoint i64 %.01627.i.i.i.i.1, 2    ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.md
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !23
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.md
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !23
  %i.mj = sext i32 %i.mi to i64
  %i.mk = mul nsw i64 %i.mj, %i.mg
  %i.ml = add i64 %i.mk, %i.mc
  %i.mm = or disjoint i64 %.01627.i.i.i.i.1, 3    ; 2 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.mm
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !23
  %i.mp = sext i32 %i.mo to i64
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.mm
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !23
  %i.ms = sext i32 %i.mr to i64
  %i.mt = mul nsw i64 %i.ms, %i.mp
  %i.mu = add i64 %i.mt, %i.ml                    ; 3 uses
  %i.mv = add nuw i64 %.01627.i.i.i.i.1, 4        ; 2 uses
  %niter141.next.3 = add nuw i64 %niter141, 4     ; 2 uses
  %niter141.ncmp.3 = icmp eq i64 %niter141.next.3, %unroll_iter140
  br i1 %niter141.ncmp.3, label %_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i.1.loopexit.unr-lcssa, label %bb.ah, !llvm.loop !1

_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i.1.loopexit.unr-lcssa: ; preds = %bb.ah
  %lcmp.mod137.not = icmp eq i64 %xtraiter135, 0
  br i1 %lcmp.mod137.not, label %_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i.1, label %.epil.preheader134

.epil.preheader134:                               ; preds = %_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i.1.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.1
  %.01627.i.i.i.i.1.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.1 ], [ %i.mv, %_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i.1.loopexit.unr-lcssa ]
  %.01726.i.i.i.i.1.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.1 ], [ %i.mu, %_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i.1.loopexit.unr-lcssa ]
  %lcmp.mod139 = icmp ne i64 %xtraiter135, 0
  call void @llvm.assume(i1 %lcmp.mod139)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.epil.preheader134
  %.01627.i.i.i.i.1.epil = phi i64 [ %.01627.i.i.i.i.1.epil.init, %.epil.preheader134 ], [ %i.ne, %bb.ai ] ; 3 uses
  %.01726.i.i.i.i.1.epil = phi i64 [ %.01726.i.i.i.i.1.epil.init, %.epil.preheader134 ], [ %i.nd, %bb.ai ]
  %epil.iter136 = phi i64 [ 0, %.epil.preheader134 ], [ %epil.iter136.next, %bb.ai ]
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.01627.i.i.i.i.1.epil
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !23
  %i.my = sext i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %.01627.i.i.i.i.1.epil
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !23
  %i.nb = sext i32 %i.na to i64
  %i.nc = mul nsw i64 %i.nb, %i.my
  %i.nd = add i64 %i.nc, %.01726.i.i.i.i.1.epil   ; 2 uses
  %i.ne = add nuw i64 %.01627.i.i.i.i.1.epil, 1
  %epil.iter136.next = add i64 %epil.iter136, 1   ; 2 uses
  %epil.iter136.cmp.not = icmp eq i64 %epil.iter136.next, %xtraiter135
  br i1 %epil.iter136.cmp.not, label %_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i.1, label %bb.ai, !llvm.loop !242

_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i.1: ; preds = %_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i.1.loopexit.unr-lcssa, %bb.ai, %bb.ag
  %.017.lcssa.i.i.i.i.1 = phi i64 [ 0, %bb.ag ], [ %i.mu, %_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i.1.loopexit.unr-lcssa ], [ %i.nd, %bb.ai ]
  %i.nf = getelementptr inbounds nuw i8, ptr %i.lg, i64 464
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !114
  %i.nh = getelementptr [8 x i8], ptr %i.ng, i64 %.017.lcssa.i.i.i.i.1
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !105
  %i.nj = uitofp i64 %i.ni to double
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i.1, %_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.thread.i.1
  %.014.i.i.1 = phi double [ %i.nj, %_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i.1 ], [ 1.000000e+00, %_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.thread.i.1 ] ; 7 uses
  br i1 %i.lf, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.nk = fcmp ogt double %.014.i.i.1, 0.000000e+00
  %i.nl = fdiv double 1.000000e+00, %.014.i.i.1
  %i.nm = select i1 %i.nk, double %i.nl, double 0.000000e+00
  br label %_ZN20colvar_grid_gradient21smooth_inverse_weightEd.exit.i.i.1

bb.al:                                            ; preds = %bb.aj
  %i.nn = load i32, ptr %i.dl, align 4, !tbaa !138 ; 2 uses
  %i.no = sitofp i32 %i.nn to double              ; 2 uses
  %i.np = fcmp ugt double %.014.i.i.1, %i.no
  br i1 %i.np, label %bb.am, label %_ZN20colvar_grid_gradient21smooth_inverse_weightEd.exit.i.i.1

bb.am:                                            ; preds = %bb.al
  %i.nq = load i32, ptr %i.dm, align 8, !tbaa !139 ; 2 uses
  %i.nr = sitofp i32 %i.nq to double
  %i.ns = fcmp olt double %.014.i.i.1, %i.nr
  br i1 %i.ns, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.nt = fdiv double 1.000000e+00, %.014.i.i.1
  br label %_ZN20colvar_grid_gradient21smooth_inverse_weightEd.exit.i.i.1

bb.ao:                                            ; preds = %bb.am
  %i.nu = fsub double %.014.i.i.1, %i.no
  %i.nv = sub nsw i32 %i.nq, %i.nn
  %i.nw = sitofp i32 %i.nv to double
  %i.nx = fmul nnan double %.014.i.i.1, %i.nw
  %i.ny = fdiv double %i.nu, %i.nx
  br label %_ZN20colvar_grid_gradient21smooth_inverse_weightEd.exit.i.i.1

_ZN20colvar_grid_gradient21smooth_inverse_weightEd.exit.i.i.1: ; preds = %bb.ao, %bb.an, %bb.al, %bb.ak
  %.013.i.i.1 = phi double [ %i.nm, %bb.ak ], [ %i.nt, %bb.an ], [ %i.ny, %bb.ao ], [ 0.000000e+00, %bb.al ] ; 6 uses
  br i1 %.not20.i.i, label %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i.1, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %_ZN20colvar_grid_gradient21smooth_inverse_weightEd.exit.i.i.1
  %i.nz = load ptr, ptr %i.do, align 8, !tbaa !111 ; 5 uses
  br i1 %i.dr, label %.epil.preheader142, label %.lr.ph.i.i.i.1.new

.lr.ph.i.i.i.1.new:                               ; preds = %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.1.new
  %.01627.i.i.i.1 = phi i64 [ %i.pj, %.lr.ph.i.i.i.1.new ], [ 0, %.lr.ph.i.i.i.1 ] ; 6 uses
  %.01726.i.i.i.1 = phi i64 [ %i.pi, %.lr.ph.i.i.i.1.new ], [ 0, %.lr.ph.i.i.i.1 ]
  %niter149 = phi i64 [ %niter149.next.3, %.lr.ph.i.i.i.1.new ], [ 0, %.lr.ph.i.i.i.1 ]
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.01627.i.i.i.1
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !23
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %.01627.i.i.i.1
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !23
  %i.of = sext i32 %i.oe to i64
  %i.og = mul nsw i64 %i.of, %i.oc
  %i.oh = add i64 %i.og, %.01726.i.i.i.1
  %i.oi = or disjoint i64 %.01627.i.i.i.1, 1      ; 2 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.oi
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !23
  %i.ol = sext i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %i.oi
  %i.on = load i32, ptr %i.om, align 4, !tbaa !23
  %i.oo = sext i32 %i.on to i64
  %i.op = mul nsw i64 %i.oo, %i.ol
  %i.oq = add i64 %i.op, %i.oh
  %i.or = or disjoint i64 %.01627.i.i.i.1, 2      ; 2 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.or
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !23
  %i.ou = sext i32 %i.ot to i64
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %i.or
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !23
  %i.ox = sext i32 %i.ow to i64
  %i.oy = mul nsw i64 %i.ox, %i.ou
  %i.oz = add i64 %i.oy, %i.oq
  %i.pa = or disjoint i64 %.01627.i.i.i.1, 3      ; 2 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.pa
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !23
  %i.pd = sext i32 %i.pc to i64
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %i.pa
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !23
  %i.pg = sext i32 %i.pf to i64
  %i.ph = mul nsw i64 %i.pg, %i.pd
  %i.pi = add i64 %i.ph, %i.oz                    ; 3 uses
  %i.pj = add nuw i64 %.01627.i.i.i.1, 4          ; 2 uses
  %niter149.next.3 = add nuw i64 %niter149, 4     ; 2 uses
  %niter149.ncmp.3 = icmp eq i64 %niter149.next.3, %unroll_iter148
  br i1 %niter149.ncmp.3, label %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i.1.loopexit.unr-lcssa, label %.lr.ph.i.i.i.1.new, !llvm.loop !2

_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i.1.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.1.new
  br i1 %lcmp.mod145.not, label %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i.1, label %.epil.preheader142

.epil.preheader142:                               ; preds = %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i.1.loopexit.unr-lcssa, %.lr.ph.i.i.i.1
  %.01627.i.i.i.1.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.1 ], [ %i.pj, %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i.1.loopexit.unr-lcssa ]
  %.01726.i.i.i.1.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.1 ], [ %i.pi, %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i.1.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod147)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.epil.preheader142
  %.01627.i.i.i.1.epil = phi i64 [ %.01627.i.i.i.1.epil.init, %.epil.preheader142 ], [ %i.ps, %bb.ap ] ; 3 uses
  %.01726.i.i.i.1.epil = phi i64 [ %.01726.i.i.i.1.epil.init, %.epil.preheader142 ], [ %i.pr, %bb.ap ]
  %epil.iter144 = phi i64 [ 0, %.epil.preheader142 ], [ %epil.iter144.next, %bb.ap ]
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.01627.i.i.i.1.epil
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !23
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %.01627.i.i.i.1.epil
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !23
  %i.pp = sext i32 %i.po to i64
  %i.pq = mul nsw i64 %i.pp, %i.pm
  %i.pr = add i64 %i.pq, %.01726.i.i.i.1.epil     ; 2 uses
  %i.ps = add nuw i64 %.01627.i.i.i.1.epil, 1
  %epil.iter144.next = add i64 %epil.iter144, 1   ; 2 uses
  %epil.iter144.cmp.not = icmp eq i64 %epil.iter144.next, %xtraiter143
  br i1 %epil.iter144.cmp.not, label %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i.1, label %bb.ap, !llvm.loop !243

_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i.1: ; preds = %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i.1.loopexit.unr-lcssa, %bb.ap, %_ZN20colvar_grid_gradient21smooth_inverse_weightEd.exit.i.i.1
  %.017.lcssa.i.i.i.1 = phi i64 [ 0, %_ZN20colvar_grid_gradient21smooth_inverse_weightEd.exit.i.i.1 ], [ %i.pi, %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i.1.loopexit.unr-lcssa ], [ %i.pr, %bb.ap ] ; 2 uses
  %i.pt = load ptr, ptr %i.dn, align 8, !tbaa !108 ; 2 uses
  %i.pu = ptrtoaddr ptr %i.pt to i64
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %.017.lcssa.i.i.i.1 ; 6 uses
  %i.pw = load i64, ptr %i.dp, align 8, !tbaa !128 ; 7 uses
  %.not17.i.i.1 = icmp eq i64 %i.pw, 0
  br i1 %.not17.i.i.1, label %_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit.1, label %.lr.ph.i9.i.1.preheader

.lr.ph.i9.i.1.preheader:                          ; preds = %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i.1
  %min.iters.check = icmp ult i64 %i.pw, 4
  br i1 %min.iters.check, label %.lr.ph.i9.i.1.preheader100, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i9.i.1.preheader
  %i.px = shl i64 %.017.lcssa.i.i.i.1, 3
  %i.py = add i64 %i.px, %i.pu
  %i.pz = sub i64 %i.py, %i.ld
  %diff.check = icmp ugt i64 %i.pz, -32
  br i1 %diff.check, label %.lr.ph.i9.i.1.preheader100, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.pw, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.013.i.i.1, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %index ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  %wide.load = load <2 x double>, ptr %i.qa, align 8, !tbaa !116
  %wide.load85 = load <2 x double>, ptr %i.qb, align 8, !tbaa !116
  %i.qc = fmul <2 x double> %broadcast.splat, %wide.load
  %i.qd = fmul <2 x double> %broadcast.splat, %wide.load85
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %index ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  store <2 x double> %i.qc, ptr %i.qe, align 8, !tbaa !116
  store <2 x double> %i.qd, ptr %i.qf, align 8, !tbaa !116
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.qg = icmp eq i64 %index.next, %n.vec
  br i1 %i.qg, label %middle.block, label %vector.body, !llvm.loop !244

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.pw, %n.vec
  br i1 %cmp.n, label %_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit.1, label %.lr.ph.i9.i.1.preheader100

.lr.ph.i9.i.1.preheader100:                       ; preds = %vector.memcheck, %.lr.ph.i9.i.1.preheader, %middle.block
  %.016.i.i.1.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i9.i.1.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter150 = and i64 %i.pw, 3                 ; 2 uses
  %lcmp.mod151.not = icmp eq i64 %xtraiter150, 0
  br i1 %lcmp.mod151.not, label %.lr.ph.i9.i.1.prol.loopexit, label %.lr.ph.i9.i.1.prol

.lr.ph.i9.i.1.prol:                               ; preds = %.lr.ph.i9.i.1.preheader100, %.lr.ph.i9.i.1.prol
  %.016.i.i.1.prol = phi i64 [ %i.ql, %.lr.ph.i9.i.1.prol ], [ %.016.i.i.1.ph, %.lr.ph.i9.i.1.preheader100 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i9.i.1.prol ], [ 0, %.lr.ph.i9.i.1.preheader100 ]
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %.016.i.i.1.prol
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !116
  %i.qj = fmul double %.013.i.i.1, %i.qi
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %.016.i.i.1.prol
  store double %i.qj, ptr %i.qk, align 8, !tbaa !116
  %i.ql = add nuw i64 %.016.i.i.1.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter150
  br i1 %prol.iter.cmp.not, label %.lr.ph.i9.i.1.prol.loopexit, label %.lr.ph.i9.i.1.prol, !llvm.loop !245

.lr.ph.i9.i.1.prol.loopexit:                      ; preds = %.lr.ph.i9.i.1.prol, %.lr.ph.i9.i.1.preheader100
  %.016.i.i.1.unr = phi i64 [ %.016.i.i.1.ph, %.lr.ph.i9.i.1.preheader100 ], [ %i.ql, %.lr.ph.i9.i.1.prol ]
  %i.qm = sub i64 %.016.i.i.1.ph, %i.pw
  %i.qn = icmp ugt i64 %i.qm, -4
  br i1 %i.qn, label %_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit.1, label %.lr.ph.i9.i.1

.lr.ph.i9.i.1:                                    ; preds = %.lr.ph.i9.i.1.prol.loopexit, %.lr.ph.i9.i.1
  %.016.i.i.1 = phi i64 [ %i.rh, %.lr.ph.i9.i.1 ], [ %.016.i.i.1.unr, %.lr.ph.i9.i.1.prol.loopexit ] ; 6 uses
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %.016.i.i.1
  %i.qp = load double, ptr %i.qo, align 8, !tbaa !116
  %i.qq = fmul double %.013.i.i.1, %i.qp
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %.016.i.i.1
  store double %i.qq, ptr %i.qr, align 8, !tbaa !116
  %i.qs = add nuw i64 %.016.i.i.1, 1              ; 2 uses
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %i.qs
  %i.qu = load double, ptr %i.qt, align 8, !tbaa !116
  %i.qv = fmul double %.013.i.i.1, %i.qu
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.qs
  store double %i.qv, ptr %i.qw, align 8, !tbaa !116
  %i.qx = add nuw i64 %.016.i.i.1, 2              ; 2 uses
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %i.qx
  %i.qz = load double, ptr %i.qy, align 8, !tbaa !116
  %i.ra = fmul double %.013.i.i.1, %i.qz
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.qx
  store double %i.ra, ptr %i.rb, align 8, !tbaa !116
  %i.rc = add nuw i64 %.016.i.i.1, 3              ; 2 uses
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %i.rc
  %i.re = load double, ptr %i.rd, align 8, !tbaa !116
  %i.rf = fmul double %.013.i.i.1, %i.re
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.rc
  store double %i.rf, ptr %i.rg, align 8, !tbaa !116
  %i.rh = add nuw i64 %.016.i.i.1, 4              ; 2 uses
  %exitcond.not.i10.i.1.3 = icmp eq i64 %i.rh, %i.pw
  br i1 %exitcond.not.i10.i.1.3, label %_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit.1, label %.lr.ph.i9.i.1, !llvm.loop !246

_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit.1: ; preds = %.lr.ph.i9.i.1.prol.loopexit, %.lr.ph.i9.i.1, %middle.block, %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit.i.i.1, %.preheader.i.1
  %6 = add nsw i32 %.137, 6                       ; 2 uses
  %i.ri = load <2 x i32>, ptr %i.da, align 4, !tbaa !23
  %i.rj = add nsw <2 x i32> %i.ri, splat (i32 1)
  store <2 x i32> %i.rj, ptr %i.da, align 4, !tbaa !23
  br i1 %i.dv, label %bb.l, label %bb.aq, !llvm.loop !247

bb.aq:                                            ; preds = %_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit.1
  %i.rk = load i32, ptr %i.bl, align 4, !tbaa !23
  %i.rl = add nsw i32 %i.rk, 1
  store i32 %i.rl, ptr %i.bl, align 4, !tbaa !23
  br i1 %i.ds, label %bb.k, label %bb.ar, !llvm.loop !248

bb.ar:                                            ; preds = %bb.aq
  %i.rm = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.rn = load double, ptr %i.rm, align 16, !tbaa !116
  %i.ro = load double, ptr %i.e, align 16, !tbaa !116
  %i.rp = fsub double %i.rn, %i.ro
  %i.rq = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !116
  %i.rs = fadd double %i.rp, %i.rr
  %i.rt = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ru = load double, ptr %i.rt, align 8, !tbaa !116
  %i.rv = fsub double %i.rs, %i.ru
  %i.rw = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.rx = load double, ptr %i.rw, align 16, !tbaa !116
  %i.ry = fadd double %i.rv, %i.rx
  %i.rz = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.sa = load double, ptr %i.rz, align 16, !tbaa !116
  %i.sb = fsub double %i.ry, %i.sa
  %i.sc = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.sd = load double, ptr %i.sc, align 8, !tbaa !116
  %i.se = fadd double %i.sb, %i.sd
  %i.sf = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.sg = load double, ptr %i.sf, align 8, !tbaa !116
  %i.sh = fsub double %i.se, %i.sg
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !108 ; 2 uses
  %i.sk = load double, ptr %i.sj, align 8, !tbaa !116
  %i.sl = fdiv double %i.sh, %i.sk
  %i.sm = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.sn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.so = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.sp = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.sq = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.sr = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.ss = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.st = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.su = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sv = load <2 x double>, ptr %i.sp, align 16, !tbaa !116 ; 2 uses
  %i.sw = load <2 x double>, ptr %i.sn, align 8, !tbaa !116
  %i.sx = load <2 x double>, ptr %i.sm, align 8, !tbaa !116 ; 2 uses
  %i.sy = shufflevector <2 x double> %i.sx, <2 x double> %i.sv, <2 x i32> <i32 0, i32 3>
  %i.sz = fsub <2 x double> %i.sy, %i.sw
  %i.ta = load <2 x double>, ptr %i.so, align 16, !tbaa !116
  %i.tb = fadd <2 x double> %i.sz, %i.ta
  %i.tc = shufflevector <2 x double> %i.sv, <2 x double> %i.sx, <2 x i32> <i32 0, i32 3>
  %i.td = fsub <2 x double> %i.tb, %i.tc
  %i.te = load <2 x double>, ptr %i.st, align 16, !tbaa !116 ; 2 uses
  %i.tf = load <2 x double>, ptr %i.sq, align 8, !tbaa !116 ; 2 uses
  %i.tg = shufflevector <2 x double> %i.tf, <2 x double> %i.te, <2 x i32> <i32 0, i32 3>
  %i.th = fadd <2 x double> %i.td, %i.tg
  %i.ti = load <2 x double>, ptr %i.sr, align 8, !tbaa !116
  %i.tj = fsub <2 x double> %i.th, %i.ti
  %i.tk = load <2 x double>, ptr %i.ss, align 16, !tbaa !116
  %i.tl = fadd <2 x double> %i.tj, %i.tk
  %i.tm = shufflevector <2 x double> %i.te, <2 x double> %i.tf, <2 x i32> <i32 0, i32 3>
  %i.tn = fsub <2 x double> %i.tl, %i.tm
  %i.to = load <2 x double>, ptr %i.su, align 8, !tbaa !116
  %i.tp = fdiv <2 x double> %i.tn, %i.to          ; 2 uses
  %i.tq = extractelement <2 x double> %i.tp, i64 0
  %i.tr = fadd double %i.sl, %i.tq
  %i.ts = extractelement <2 x double> %i.tp, i64 1
  %i.tt = fadd double %i.tr, %i.ts
  %i.tu = fmul double %i.tt, 2.500000e-01
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !108
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %.017.lcssa.i
  store double %i.tu, ptr %i.tx, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  br label %.thread

bb.as:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %.not.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.thread

.thread:                                          ; preds = %bb.i, %bb.ar, %bb.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bh) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.as, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN20colvargrid_integrate20update_div_neighborsERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 43 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !111    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.g, align 8
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !36

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24
  %.pre = load ptr, ptr %1, align 8, !tbaa !133   ; 2 uses
  %.pre21 = load ptr, ptr %i.a, align 8, !tbaa !133
  %.pre23 = ptrtoint ptr %.pre21 to i64
  %.pre24 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi25 = phi i64 [ %.pre24, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre23, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ]
  %i.j = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 4 uses
  %i.k = phi ptr [ %i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !111
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !123
  %i.o = sub i64 %.pre-phi, %.pre-phi25           ; 4 uses
  %i.p = icmp sgt i64 %i.o, 4
  br i1 %i.p, label %bb.d, label %bb.e, !prof !127

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.q = icmp eq i64 %i.o, 4
  br i1 %i.q, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.j, align 4, !tbaa !23
  store i32 %i.r, ptr %i.k, align 4, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.s = getelementptr inbounds i8, ptr %i.k, i64 %i.o
  store ptr %i.s, ptr %i.l, align 8, !tbaa !126
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.u = load i64, ptr %i.t, align 8, !tbaa !104
  switch i64 %i.u, label %.loopexit16 [
    i64 3, label %.preheader.preheader
    i64 2, label %bb.g
  ]

.preheader.preheader:                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.w, ptr %i.x, align 4, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !23
  invoke void @_ZNK11colvar_gridIdE4wrapERSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(698) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  invoke void @_ZN20colvargrid_integrate16update_div_localERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %2, align 8, !tbaa !111   ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !23
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !23
  invoke void @_ZNK11colvar_gridIdE4wrapERSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(698) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN20colvargrid_integrate16update_div_localERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %2, align 8, !tbaa !111
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !23
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !23
  invoke void @_ZNK11colvar_gridIdE4wrapERSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(698) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
end_hunk_0
