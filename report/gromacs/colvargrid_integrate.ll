Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvargrid_integrate?download=true
inline.NumInlined: 1192
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN20colvargrid_integrate7set_divEv:bb.a

; Function Attrs: mustprogress uwtable
define void @_ZN20colvargrid_integrate16update_div_localERKSt6vectorIiSaIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(760) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca [2 x double], align 16            ; 5 uses
  %i.b = alloca [2 x double], align 16            ; 5 uses
  %i.c = alloca [2 x double], align 16            ; 5 uses
  %i.d = alloca [2 x double], align 16            ; 5 uses
  %i.e = alloca [24 x double], align 16           ; 21 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !104  ; 4 uses
  %.not2125.not.i = icmp eq i64 %i.g, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !111   ; 8 uses
  br i1 %.not2125.not.i, label %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !111  ; 5 uses
  %xtraiter = and i64 %i.g, 3                     ; 3 uses
  %i.j = icmp ult i64 %i.g, 4
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.g, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.01627.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.at, %bb.b ] ; 6 uses
  %.01726.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.as, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.b ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.01627.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !23
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.01627.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !23
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.p, %i.m
  %i.r = add i64 %i.q, %.01726.i
  %i.s = or disjoint i64 %.01627.i, 1             ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !23
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.s
  %i.x = load i32, ptr %i.w, align 4, !tbaa !23
  %i.y = sext i32 %i.x to i64
  %i.z = mul nsw i64 %i.y, %i.v
  %i.aa = add i64 %i.z, %i.r
  %i.ab = or disjoint i64 %.01627.i, 2            ; 2 uses
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
  %lcmp.mod112 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod112)
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
  %.pre46 = load ptr, ptr %1, align 8, !tbaa !133 ; 2 uses
  %.pre47 = load ptr, ptr %i.bd, align 8, !tbaa !133
  %.pre48 = ptrtoint ptr %.pre47 to i64
  %.pre49 = ptrtoint ptr %.pre46 to i64
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit
  %.pre-phi50 = phi i64 [ %.pre49, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.bg, %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit ]
  %.pre-phi = phi i64 [ %.pre48, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.bg, %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit ]
  %i.bk = phi ptr [ %.pre46, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %.pre, %_ZNK11colvar_gridIdE7addressERKSt6vectorIiSaIiEE.exit ] ; 5 uses
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
  %3 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.cr)
  %i.cs = fmul double %3, 5.000000e-01
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !108
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.017.lcssa.i
  store double %i.cs, ptr %i.cv, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.thread

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.cw = load i32, ptr %i.bk, align 4, !tbaa !23
  %i.cx = add nsw i32 %i.cw, -1
  store i32 %i.cx, ptr %i.bl, align 4, !tbaa !23
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !20 ; 9 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 320
  %i.df = load i64, ptr %i.de, align 8, !tbaa !104 ; 11 uses
  %.not20.i.i = icmp eq i64 %i.df, 0              ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 576 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 328 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 704 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 724 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 720 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 464 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 352 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 448 ; 2 uses
  %xtraiter125 = and i64 %i.df, 3                 ; 3 uses
  %i.dp = icmp ult i64 %i.df, 4
  %unroll_iter130 = and i64 %i.df, -4
  %lcmp.mod127.not = icmp eq i64 %xtraiter125, 0
  %lcmp.mod129 = icmp ne i64 %xtraiter125, 0
  %xtraiter144 = and i64 %i.df, 3                 ; 3 uses
  %i.dq = icmp ult i64 %i.df, 4
  %unroll_iter149 = and i64 %i.df, -4
  %lcmp.mod146.not = icmp eq i64 %xtraiter144, 0
  %lcmp.mod148 = icmp ne i64 %xtraiter144, 0
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.aq
  %.039 = phi i64 [ 0, %bb.j ], [ %indvars.iv.next.1, %bb.aq ]
  %i.dr = phi i1 [ true, %bb.j ], [ false, %bb.aq ]
  %i.ds = load i32, ptr %i.cy, align 4, !tbaa !23
  %i.dt = add nsw i32 %i.ds, -1
  store i32 %i.dt, ptr %i.cz, align 4, !tbaa !23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit.1
  %.137 = phi i64 [ %.039, %bb.k ], [ %indvars.iv.next.1, %_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit.1 ] ; 4 uses
  %i.du = phi i1 [ true, %bb.k ], [ false, %_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit.1 ]
  %i.dv = load i32, ptr %i.da, align 4, !tbaa !23
  %i.dw = add nsw i32 %i.dv, -1
  store i32 %i.dw, ptr %i.db, align 4, !tbaa !23
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.137 ; 3 uses
  br i1 %.not20.i.i, label %_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l
  %i.dy = load ptr, ptr %i.dg, align 8, !tbaa !118
  %i.dz = load ptr, ptr %i.dh, align 8            ; 2 uses
  br label %.outer.i

.outer.i:                                         ; preds = %.thread.i, %.lr.ph.i.i
  %.018.i.ph.i = phi i64 [ %i.es, %.thread.i ], [ 0, %.lr.ph.i.i ]
  %.01517.i.ph.i = phi i1 [ true, %.thread.i ], [ false, %.lr.ph.i.i ]
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.outer.i
  %.018.i.i = phi i64 [ %i.er, %bb.q ], [ %.018.i.ph.i, %.outer.i ] ; 8 uses
  %i.ea = sdiv i64 %.018.i.i, 64
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.ea
  %i.ec = and i64 %.018.i.i, -9223372036854775745
  %i.ed = icmp ugt i64 %i.ec, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i.i = select i1 %i.ed, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.eb, i64 %storemerge.idx.i.i.i.i.i.i.i
  %i.ee = and i64 %.018.i.i, 63
  %i.ef = shl nuw i64 1, %i.ee
  %i.eg = load i64, ptr %storemerge.i.i.i.i.i.i.i, align 8, !tbaa !105
  %i.eh = and i64 %i.ef, %i.eg
  %.not16.i.i = icmp eq i64 %i.eh, 0
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.018.i.i ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !23 ; 3 uses
  br i1 %.not16.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.018.i.i
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !23 ; 2 uses
  %i.em = add nsw i32 %i.el, %i.ej
  %i.en = srem i32 %i.em, %i.el
  store i32 %i.en, ptr %i.ei, align 4, !tbaa !23
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.eo = icmp slt i32 %i.ej, 0
  br i1 %i.eo, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.018.i.i
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !23
  %.not.i.i = icmp slt i32 %i.ej, %i.eq
  br i1 %.not.i.i, label %bb.q, label %.thread.i

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.er = add nuw i64 %.018.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.er, %i.df
  br i1 %exitcond.not.i.i, label %_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.i, label %bb.m, !llvm.loop !5

.thread.i:                                        ; preds = %bb.p, %bb.o
  %i.es = add nuw i64 %.018.i.i, 1                ; 2 uses
  %exitcond.not.i25.i = icmp eq i64 %i.es, %i.df
  br i1 %exitcond.not.i25.i, label %_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit.thread, label %.outer.i, !llvm.loop !5

_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.i: ; preds = %bb.q
  br i1 %.01517.i.ph.i, label %_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit.thread, label %_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.thread.i

_ZN20colvargrid_integrate8get_gradEPdRSt6vectorIiSaIiEE.exit.thread: ; preds = %.thread.i, %_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i8 0, i64 24, i1 false), !tbaa !116
  %i.et = load i32, ptr %i.db, align 4, !tbaa !23
  %i.eu = add nsw i32 %i.et, 1
  store i32 %i.eu, ptr %i.db, align 4, !tbaa !23
  %i.ev = getelementptr [8 x i8], ptr %i.e, i64 %.137
  %i.ew = getelementptr i8, ptr %i.ev, i64 24
  br label %.lr.ph.i.i.1

_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.thread.i: ; preds = %_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.i, %bb.l
  %i.ex = load i8, ptr %i.di, align 8, !tbaa !102, !range !129, !noundef !130
  %i.ey = trunc nuw i8 %i.ex to i1
  %i.ez = load ptr, ptr %i.dj, align 8, !tbaa !135 ; 4 uses
  %.not.i8.i = icmp eq ptr %i.ez, null
  br i1 %.not.i8.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %_ZNK11colvar_gridIdE16wrap_detect_edgeERSt6vectorIiSaIiEE.exit.thread.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 320
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !104 ; 4 uses
  %.not2125.not.i.i.i.i = icmp eq i64 %i.fb, 0
  br i1 %.not2125.not.i.i.i.i, label %_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.r
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 352
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !111 ; 5 uses
  %xtraiter114 = and i64 %i.fb, 3                 ; 3 uses
  %i.fe = icmp ult i64 %i.fb, 4
  br i1 %i.fe, label %.epil.preheader113, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter119 = and i64 %i.fb, -4
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i.i.i.new
  %.01627.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %i.go, %bb.s ] ; 6 uses
  %.01726.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %i.gn, %bb.s ]
  %niter120 = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter120.next.3, %bb.s ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.01627.i.i.i.i
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !23
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %.01627.i.i.i.i
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !23
  %i.fk = sext i32 %i.fj to i64
  %i.fl = mul nsw i64 %i.fk, %i.fh
  %i.fm = add i64 %i.fl, %.01726.i.i.i.i
  %i.fn = or disjoint i64 %.01627.i.i.i.i, 1      ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !23
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.fn
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !23
  %i.ft = sext i32 %i.fs to i64
  %i.fu = mul nsw i64 %i.ft, %i.fq
  %i.fv = add i64 %i.fu, %i.fm
  %i.fw = or disjoint i64 %.01627.i.i.i.i, 2      ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !23
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.fw
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !23
  %i.gc = sext i32 %i.gb to i64
  %i.gd = mul nsw i64 %i.gc, %i.fz
  %i.ge = add i64 %i.gd, %i.fv
  %i.gf = or disjoint i64 %.01627.i.i.i.i, 3      ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !23
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.gf
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !23
  %i.gl = sext i32 %i.gk to i64
  %i.gm = mul nsw i64 %i.gl, %i.gi
  %i.gn = add i64 %i.gm, %i.ge                    ; 3 uses
  %i.go = add nuw i64 %.01627.i.i.i.i, 4          ; 2 uses
  %niter120.next.3 = add nuw i64 %niter120, 4     ; 2 uses
  %niter120.ncmp.3 = icmp eq i64 %niter120.next.3, %unroll_iter119
  br i1 %niter120.ncmp.3, label %_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i.loopexit.unr-lcssa, label %bb.s, !llvm.loop !1

_ZNK11colvar_gridImE5valueERKSt6vectorIiSaIiEERKm.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.s
  %lcmp.mod116.not = icmp eq i64 %xtraiter114, 0
end_hunk_0
begin_hunk_1_@_ZN20colvargrid_integrate6atimesERKSt6vectorIdSaIdEERS2_:bb.a
  br label %vector.body2356

vector.body2356:                                  ; preds = %vector.body2356, %vector.ph2352
  %index2357 = phi i64 [ 0, %vector.ph2352 ], [ %index.next2364, %vector.body2356 ] ; 3 uses
  %i.bpf = add i64 %.2211721532, %index2357       ; 2 uses
  %i.bpg = add i64 %.1111491531, %index2357       ; 2 uses
  %i.bph = getelementptr [8 x i8], ptr %i.bjp, i64 %i.bpf ; 2 uses
  %i.bpi = getelementptr i8, ptr %i.bph, i64 8
  %wide.load2358 = load <2 x double>, ptr %i.bpi, align 8, !tbaa !116, !alias.scope !398
  %wide.load2359 = load <2 x double>, ptr %i.bph, align 8, !tbaa !116, !alias.scope !398
  %i.bpj = fsub <2 x double> %wide.load2358, %wide.load2359
  %i.bpk = getelementptr inbounds nuw [8 x i8], ptr %i.bjz, i64 %i.bpf ; 2 uses
  %wide.load2360 = load <2 x double>, ptr %i.bpk, align 8, !tbaa !116, !alias.scope !399, !noalias !400
  %i.bpl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2355, <2 x double> %i.bpj, <2 x double> %wide.load2360)
  store <2 x double> %i.bpl, ptr %i.bpk, align 8, !tbaa !116, !alias.scope !399, !noalias !400
  %i.bpm = getelementptr [8 x i8], ptr %i.bjp, i64 %i.bpg ; 2 uses
  %i.bpn = getelementptr i8, ptr %i.bpm, i64 -8
  %wide.load2361 = load <2 x double>, ptr %i.bpn, align 8, !tbaa !116, !alias.scope !401
  %wide.load2362 = load <2 x double>, ptr %i.bpm, align 8, !tbaa !116, !alias.scope !401
  %i.bpo = fsub <2 x double> %wide.load2361, %wide.load2362
  %i.bpp = getelementptr inbounds nuw [8 x i8], ptr %i.bjz, i64 %i.bpg ; 2 uses
  %wide.load2363 = load <2 x double>, ptr %i.bpp, align 8, !tbaa !116, !alias.scope !402, !noalias !403
  %i.bpq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat2355, <2 x double> %i.bpo, <2 x double> %wide.load2363)
  store <2 x double> %i.bpq, ptr %i.bpp, align 8, !tbaa !116, !alias.scope !402, !noalias !403
  %index.next2364 = add nuw i64 %index2357, 2     ; 2 uses
  %i.bpr = icmp eq i64 %index.next2364, %n.vec2353
  br i1 %i.bpr, label %middle.block2365, label %vector.body2356, !llvm.loop !353

middle.block2365:                                 ; preds = %vector.body2356
  br i1 %cmp.n2366, label %._crit_edge1538, label %scalar.ph2350.preheader

scalar.ph2350.preheader:                          ; preds = %vector.memcheck2315, %.lr.ph1537, %middle.block2365
  %.2211721535.ph = phi i64 [ %.2211721532, %vector.memcheck2315 ], [ %.2211721532, %.lr.ph1537 ], [ %i.bpd, %middle.block2365 ]
  %.1111491534.ph = phi i64 [ %.1111491531, %vector.memcheck2315 ], [ %.1111491531, %.lr.ph1537 ], [ %i.bpe, %middle.block2365 ]
  %.611881533.ph = phi i32 [ 1, %vector.memcheck2315 ], [ 1, %.lr.ph1537 ], [ %i.bkg, %middle.block2365 ]
  br label %scalar.ph2350

scalar.ph2350:                                    ; preds = %scalar.ph2350.preheader, %scalar.ph2350
  %.2211721535 = phi i64 [ %.221172, %scalar.ph2350 ], [ %.2211721535.ph, %scalar.ph2350.preheader ] ; 3 uses
  %.1111491534 = phi i64 [ %.111149, %scalar.ph2350 ], [ %.1111491534.ph, %scalar.ph2350.preheader ] ; 3 uses
  %.611881533 = phi i32 [ %i.bqi, %scalar.ph2350 ], [ %.611881533.ph, %scalar.ph2350.preheader ]
  %i.bps = getelementptr [8 x i8], ptr %i.bjp, i64 %.2211721535 ; 2 uses
  %i.bpt = getelementptr i8, ptr %i.bps, i64 8
  %i.bpu = load double, ptr %i.bpt, align 8, !tbaa !116
  %i.bpv = load double, ptr %i.bps, align 8, !tbaa !116
  %i.bpw = fsub double %i.bpu, %i.bpv
  %i.bpx = getelementptr inbounds nuw [8 x i8], ptr %i.bjz, i64 %.2211721535 ; 2 uses
  %i.bpy = load double, ptr %i.bpx, align 8, !tbaa !116
  %i.bpz = tail call double @llvm.fmuladd.f64(double %i.bpa, double %i.bpw, double %i.bpy)
  store double %i.bpz, ptr %i.bpx, align 8, !tbaa !116
  %i.bqa = getelementptr [8 x i8], ptr %i.bjp, i64 %.1111491534 ; 2 uses
  %i.bqb = getelementptr i8, ptr %i.bqa, i64 -8
  %i.bqc = load double, ptr %i.bqb, align 8, !tbaa !116
  %i.bqd = load double, ptr %i.bqa, align 8, !tbaa !116
  %i.bqe = fsub double %i.bqc, %i.bqd
  %i.bqf = getelementptr inbounds nuw [8 x i8], ptr %i.bjz, i64 %.1111491534 ; 2 uses
  %i.bqg = load double, ptr %i.bqf, align 8, !tbaa !116
  %i.bqh = tail call double @llvm.fmuladd.f64(double %i.bpa, double %i.bqe, double %i.bqg)
  store double %i.bqh, ptr %i.bqf, align 8, !tbaa !116
  %i.bqi = add nuw nsw i32 %.611881533, 1         ; 2 uses
  %.111149 = add i64 %.1111491534, %i.wb          ; 2 uses
  %.221172 = add i64 %.2211721535, %i.wb          ; 2 uses
  %exitcond1701.not = icmp eq i32 %i.bqi, %i.ane
  br i1 %exitcond1701.not, label %._crit_edge1538, label %scalar.ph2350, !llvm.loop !354

._crit_edge1538:                                  ; preds = %scalar.ph2350, %middle.block2365, %bb.q
  %.111149.lcssa = phi i64 [ %.1111491531, %bb.q ], [ %i.bpe, %middle.block2365 ], [ %.111149, %scalar.ph2350 ] ; 3 uses
  %.221172.lcssa = phi i64 [ %.2211721532, %bb.q ], [ %i.bpd, %middle.block2365 ], [ %.221172, %scalar.ph2350 ] ; 3 uses
  %i.bqj = fmul double %i.vs, %i.boz              ; 2 uses
  %i.bqk = fmul double %i.vx, %i.bqj              ; 2 uses
  %i.bql = getelementptr [8 x i8], ptr %i.bjp, i64 %.221172.lcssa ; 2 uses
  %i.bqm = getelementptr i8, ptr %i.bql, i64 8
  %i.bqn = load double, ptr %i.bqm, align 8, !tbaa !116
  %i.bqo = load double, ptr %i.bql, align 8, !tbaa !116
  %i.bqp = fsub double %i.bqn, %i.bqo
  %i.bqq = getelementptr inbounds nuw [8 x i8], ptr %i.bjz, i64 %.221172.lcssa ; 2 uses
  %i.bqr = load double, ptr %i.bqq, align 8, !tbaa !116
  %i.bqs = tail call double @llvm.fmuladd.f64(double %i.bqk, double %i.bqp, double %i.bqr)
  store double %i.bqs, ptr %i.bqq, align 8, !tbaa !116
  %i.bqt = getelementptr [8 x i8], ptr %i.bjp, i64 %.111149.lcssa ; 2 uses
  %i.bqu = getelementptr i8, ptr %i.bqt, i64 -8
  %i.bqv = load double, ptr %i.bqu, align 8, !tbaa !116
  %i.bqw = load double, ptr %i.bqt, align 8, !tbaa !116
  %i.bqx = fsub double %i.bqv, %i.bqw
  %i.bqy = getelementptr inbounds nuw [8 x i8], ptr %i.bjz, i64 %.111149.lcssa ; 2 uses
  %i.bqz = load double, ptr %i.bqy, align 8, !tbaa !116
  %i.bra = tail call double @llvm.fmuladd.f64(double %i.bqk, double %i.bqx, double %i.bqz)
  store double %i.bra, ptr %i.bqy, align 8, !tbaa !116
  %i.brb = add i64 %.221172.lcssa, %i.wb
  %i.brc = add i64 %.111149.lcssa, %i.wb
  %i.brd = add nuw nsw i32 %.611951541, 1         ; 2 uses
  %exitcond1702.not = icmp eq i32 %i.brd, %i.vd
  br i1 %exitcond1702.not, label %.loopexit, label %bb.q, !llvm.loop !355

.loopexit.sink.split:                             ; preds = %._crit_edge1627, %._crit_edge1618
  %.21209.lcssa.sink = phi i64 [ %.21209.lcssa, %._crit_edge1618 ], [ %.31210.lcssa, %._crit_edge1627 ]
  %.sink1803 = phi double [ %i.rw, %._crit_edge1618 ], [ %i.um, %._crit_edge1627 ]
  %i.bre = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %.21209.lcssa.sink ; 2 uses
  %i.brf = load double, ptr %i.bre, align 8, !tbaa !116
  %i.brg = tail call double @llvm.fmuladd.f64(double %i.ok, double %.sink1803, double %i.brf)
  store double %i.brg, ptr %i.bre, align 8, !tbaa !116
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge1519, %._crit_edge1538, %.loopexit.sink.split, %.loopexit1295, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define noundef double @_ZN20colvargrid_integrate6l2normERKSt6vectorIdSaIdEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(760) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !108    ; 7 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3                   ; 3 uses
  %xtraiter = and i64 %i.g, 3                     ; 3 uses
  %i.h = icmp ult i64 %i.g, 4
  br i1 %i.h, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.g, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.010 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.w, %.lr.ph ]
  %.089 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.x, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.089
  %i.j = load double, ptr %i.i, align 8, !tbaa !116 ; 2 uses
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double %i.j, double %.010)
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.089
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load double, ptr %i.m, align 8, !tbaa !116 ; 2 uses
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %i.n, double %i.k)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.089
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !116 ; 2 uses
  %i.s = tail call double @llvm.fmuladd.f64(double %i.r, double %i.r, double %i.o)
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.089
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load double, ptr %i.u, align 8, !tbaa !116 ; 2 uses
  %i.w = tail call double @llvm.fmuladd.f64(double %i.v, double %i.v, double %i.s) ; 3 uses
  %i.x = add nuw i64 %.089, 4                     ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !4

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.010.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ]
  %.089.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.010.epil = phi double [ %i.aa, %.lr.ph.epil ], [ %.010.epil.init, %.lr.ph.epil.preheader ]
  %.089.epil = phi i64 [ %i.ab, %.lr.ph.epil ], [ %.089.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.089.epil
  %i.z = load double, ptr %i.y, align 8, !tbaa !116 ; 2 uses
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double %i.z, double %.010.epil) ; 2 uses
  %i.ab = add nuw i64 %.089.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !404

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ], [ %i.aa, %.lr.ph.epil ]
  %i.ac = tail call double @sqrt(double noundef %.0.lcssa) #21
  ret double %i.ac
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin allocsize(0) }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{null, null}
!1 = distinct !{!1, !112}
!2 = distinct !{!2, !112}
!3 = distinct !{!3, !112}
!4 = distinct !{!4, !112}
!5 = distinct !{!5, !112}
!6 = !{i32 7, !"openmp", i32 51}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"p1 _ZTS20colvar_grid_gradient", !15, i64 0}
!17 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!18 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0, !18, i64 8}
!20 = !{!19, !16, i64 0}
!21 = !{!18, !17, i64 0}
!22 = !{!11, !11, i64 0}
!23 = !{!12, !12, i64 0}
!24 = !{!"p1 omnipotent char", !15, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = !{!"long", !11, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !27, i64 8, !11, i64 16}
!29 = !{!28, !27, i64 8}
!30 = !{!28, !24, i64 0}
!31 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 8, !12, i64 12}
!32 = !{!31, !12, i64 8}
!33 = !{!31, !12, i64 12}
!34 = !{!"vtable pointer", !10, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!37 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!38 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !37, i64 0}
!39 = !{!"_ZTSSt14_Rb_tree_color", !11, i64 0}
!40 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !15, i64 0}
!41 = !{!"_ZTSSt18_Rb_tree_node_base", !39, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!42 = !{!"_ZTSSt15_Rb_tree_header", !41, i64 0, !27, i64 32}
!43 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKvESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !38, i64 0, !42, i64 8}
!44 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKvESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !43, i64 0}
!45 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvSt4lessIS5_ESaISt4pairIKS5_S7_EEE", !44, i64 0}
!46 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PK11colvarvalueESt10_Select1stISB_ESt4lessIS5_ESaISB_EE13_Rb_tree_implISF_Lb1EEE", !38, i64 0, !42, i64 8}
!47 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PK11colvarvalueESt10_Select1stISB_ESt4lessIS5_ESaISB_EE", !46, i64 0}
!48 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK11colvarvalueSt4lessIS5_ESaISt4pairIKS5_S8_EEE", !47, i64 0}
!49 = !{!"_ZTS12colvarparams", !45, i64 8, !48, i64 56}
!50 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !15, i64 0}
!51 = !{!"_ZTSNSt8__detail15_List_node_baseE", !50, i64 0, !50, i64 8}
!52 = !{!"_ZTSNSt8__detail17_List_node_headerE", !51, i64 0, !27, i64 16}
!53 = !{!"_ZTSNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implE", !52, i64 0}
!54 = !{!"_ZTSNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE", !53, i64 0}
!55 = !{!"_ZTSNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE", !54, i64 0}
!56 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N11colvarparse12key_set_modeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !38, i64 0, !42, i64 8}
!57 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N11colvarparse12key_set_modeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !56, i64 0}
!58 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11colvarparse12key_set_modeESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !57, i64 0}
!59 = !{!"_ZTSNSt7__cxx1110_List_baseImSaImEE10_List_implE", !52, i64 0}
!60 = !{!"_ZTSNSt7__cxx1110_List_baseImSaImEEE", !59, i64 0}
!61 = !{!"_ZTSNSt7__cxx114listImSaImEEE", !60, i64 0}
!62 = !{!"_ZTS11colvarparse", !49, i64 0, !28, i64 104, !28, i64 136, !55, i64 168, !58, i64 192, !61, i64 240, !61, i64 264, !28, i64 288}
!63 = !{!"p1 int", !15, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!65 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !64, i64 0}
!66 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !65, i64 0}
!67 = !{!"_ZTSSt6vectorIiSaIiEE", !66, i64 0}
!68 = !{!"p1 _ZTS11colvarvalue", !15, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseI11colvarvalueSaIS0_EE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!70 = !{!"_ZTSNSt12_Vector_baseI11colvarvalueSaIS0_EE12_Vector_implE", !69, i64 0}
!71 = !{!"_ZTSSt12_Vector_baseI11colvarvalueSaIS0_EE", !70, i64 0}
!72 = !{!"_ZTSSt6vectorI11colvarvalueSaIS0_EE", !71, i64 0}
!73 = !{!"p1 double", !15, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !73, i64 0, !73, i64 8, !73, i64 16}
!75 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !74, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !75, i64 0}
!77 = !{!"_ZTSSt6vectorIdSaIdEE", !76, i64 0}
!78 = !{!"_ZTS18colvar_grid_params", !27, i64 0, !67, i64 8, !67, i64 32, !72, i64 56, !72, i64 80, !77, i64 104}
!79 = !{!"p1 long", !15, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!81 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !80, i64 0}
!82 = !{!"_ZTSSt12_Vector_baseImSaImEE", !81, i64 0}
!83 = !{!"_ZTSSt6vectorImSaImEE", !82, i64 0}
!84 = !{!"any p2 pointer", !15, i64 0}
!85 = !{!"p2 _ZTS6colvar", !84, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseIP6colvarSaIS1_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!87 = !{!"_ZTSNSt12_Vector_baseIP6colvarSaIS1_EE12_Vector_implE", !86, i64 0}
!88 = !{!"_ZTSSt12_Vector_baseIP6colvarSaIS1_EE", !87, i64 0}
!89 = !{!"_ZTSSt6vectorIP6colvarSaIS1_EE", !88, i64 0}
!90 = !{!"_ZTSSt18_Bit_iterator_base", !79, i64 0, !12, i64 8}
!91 = !{!"_ZTSSt13_Bit_iterator", !90, i64 0}
!92 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !91, i64 0, !91, i64 16, !79, i64 32}
!93 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !92, i64 0}
!94 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !93, i64 0}
!95 = !{!"_ZTSSt6vectorIbSaIbEE", !94, i64 0}
!96 = !{!"bool", !11, i64 0}
!97 = !{!"_ZTS11colvar_gridIdE", !62, i64 0, !78, i64 320, !27, i64 448, !27, i64 456, !77, i64 464, !83, i64 488, !89, i64 512, !95, i64 536, !95, i64 576, !95, i64 616, !95, i64 656, !96, i64 696, !96, i64 697}
!98 = !{!"p1 _ZTS17colvar_grid_count", !15, i64 0}
!99 = !{!"_ZTS18colvar_grid_scalar", !97, i64 0, !98, i64 704}
!100 = !{!"_ZTSSt10shared_ptrI20colvar_grid_gradientE", !19, i64 0}
!101 = !{!"_ZTS20colvargrid_integrate", !99, i64 0, !96, i64 712, !100, i64 720, !77, i64 736}
!102 = !{!101, !96, i64 712}
!103 = !{!15, !15, i64 0}
!104 = !{!78, !27, i64 0}
!105 = !{!27, !27, i64 0}
!106 = !{!97, !27, i64 456}
!107 = !{!74, !73, i64 8}
!108 = !{!74, !73, i64 0}
!109 = !{!74, !73, i64 16}
!110 = !{!99, !98, i64 704}
!111 = !{!64, !63, i64 0}
!112 = !{!"llvm.loop.mustprogress"}
!113 = !{!"llvm.loop.unroll.disable"}
!114 = !{!80, !79, i64 0}
!115 = !{!"double", !11, i64 0}
!116 = !{!115, !115, i64 0}
!117 = !{!97, !96, i64 697}
!118 = !{!90, !79, i64 0}
!119 = !{!69, !68, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!121 = !{!69, !68, i64 8}
!122 = !{!69, !68, i64 16}
!123 = !{!64, !63, i64 16}
!124 = !{!120, !15, i64 0}
!125 = !{!120, !15, i64 16}
!126 = !{!64, !63, i64 8}
!127 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!128 = !{!97, !27, i64 448}
!129 = !{i8 0, i8 2}
!130 = !{}
!131 = !{!"llvm.loop.isvectorized", i32 1}
!132 = !{!"llvm.loop.unroll.runtime.disable"}
!133 = !{!63, !63, i64 0}
!134 = !{!"_ZTSSt12__shared_ptrI17colvar_grid_countLN9__gnu_cxx12_Lock_policyE2EE", !98, i64 0, !18, i64 8}
!135 = !{!134, !98, i64 0}
!136 = !{!"_ZTSSt10shared_ptrI17colvar_grid_countE", !134, i64 0}
!137 = !{!"_ZTS20colvar_grid_gradient", !97, i64 0, !136, i64 704, !12, i64 720, !12, i64 724}
!138 = !{!137, !12, i64 724}
!139 = !{!137, !12, i64 720}
!140 = distinct !{ptr @_ZNSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!141 = !{!"p1 _ZTS18colvar_grid_params", !15, i64 0}
!142 = !{!"_ZTSSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EE", !141, i64 0, !18, i64 8}
!143 = !{!142, !141, i64 0}
!144 = distinct !{ptr @_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!145 = distinct !{ptr @_ZN20colvargrid_integrateD2Ev, ptr @_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!146 = !{ptr @_ZN20colvargrid_integrateD2Ev}
!147 = distinct !{!147, !113}
!148 = distinct !{!148, !113}
!149 = distinct !{!149, !113}
!150 = distinct !{!150, !113}
!151 = distinct !{!151, !113}
!152 = distinct !{!152, !113}
!153 = distinct !{!153, !113}
!154 = distinct !{!154, !113}
!155 = distinct !{!155, !113}
!156 = distinct !{null}
!157 = distinct !{!157, !112}
!158 = !{!"_ZTSN11colvarvalue4TypeE", !11, i64 0}
!159 = !{!"_ZTSN12colvarmodule7rvectorE", !115, i64 0, !115, i64 8, !115, i64 16}
!160 = !{!"_ZTSN12colvarmodule10quaternionE", !115, i64 0, !115, i64 8, !115, i64 16, !115, i64 24}
!161 = !{!"_ZTSN12colvarmodule8vector1dIdEE", !77, i64 0}
!162 = !{!"_ZTSNSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE12_Vector_implE", !120, i64 0}
!163 = !{!"_ZTSSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE", !162, i64 0}
!164 = !{!"_ZTSSt6vectorIN11colvarvalue4TypeESaIS1_EE", !163, i64 0}
!165 = !{!"_ZTS11colvarvalue", !158, i64 0, !115, i64 8, !159, i64 16, !160, i64 40, !161, i64 72, !164, i64 96, !67, i64 120, !67, i64 144}
!166 = !{!165, !115, i64 8}
!167 = distinct !{!167, !112}
!168 = !{!90, !12, i64 8}
!169 = !{!92, !79, i64 32}
end_hunk_1
