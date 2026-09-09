Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/grids?download=true
inline.NumInlined: 4615
inline.NumDeleted: 2090
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5osgeo4proj14pj_hgrid_applyEP6pj_ctxRKSt6vectorISt10unique_ptrINS0_22HorizontalShiftGridSetESt14default_deleteIS5_EESaIS8_EE5PJ_LP12PJ_DIRECTION:bb.a

; Function Attrs: mustprogress uwtable
define hidden { double, double } @_ZN5osgeo4proj14pj_hgrid_valueEP8PJconstsRKSt6vectorISt10unique_ptrINS0_22HorizontalShiftGridSetESt14default_deleteIS5_EESaIS8_EE5PJ_LP(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, double %2, double %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %union.PJ_COORD, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %4)
  %.sroa.018.0.copyload = load double, ptr %4, align 8, !tbaa !51 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.9.0.copyload = load double, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !51 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %.val = load ptr, ptr %1, align 8, !tbaa !382   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val37 = load ptr, ptr %i.a, align 8, !tbaa !382 ; 2 uses
  %.not1315.i = icmp eq ptr %.val, %.val37
  br i1 %.not1315.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.05.016.i = phi ptr [ %i.d, %bb.b ], [ %.val, %bb.a ] ; 3 uses
  %i.b = load ptr, ptr %.sroa.05.016.i, align 8, !tbaa !316
  %i.c = call noundef ptr @_ZNK5osgeo4proj22HorizontalShiftGridSet6gridAtEdd(ptr noundef nonnull align 8 dereferenceable(96) %i.b, double noundef %2, double noundef %3) ; 10 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.05.016.i, i64 8 ; 2 uses
  %.not13.i = icmp eq ptr %i.d, %.val37
  br i1 %.not13.i, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !367
  call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %i.e, i32 noundef 2052)
  %i.f = insertvalue { double, double } poison, double %.sroa.018.0.copyload, 0
  %i.g = insertvalue { double, double } %i.f, double %.sroa.9.0.copyload, 1
  br label %bb.m

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = load ptr, ptr %.sroa.05.016.i, align 8, !tbaa !316 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.j = load i8, ptr %i.i, align 8, !tbaa !54, !range !55, !noundef !56
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %0, align 8, !tbaa !367
  call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %i.l, i32 noundef 1, ptr noundef nonnull @.str.93)
  %i.m = load ptr, ptr %0, align 8, !tbaa !367
  call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %i.m, i32 noundef 1029)
  %i.n = insertvalue { double, double } poison, double %.sroa.018.0.copyload, 0
  %i.o = insertvalue { double, double } %i.n, double %.sroa.9.0.copyload, 1
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.q = load double, ptr %i.p, align 8, !tbaa !59
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.s = load double, ptr %i.r, align 8, !tbaa !240
  %i.t = fadd double %i.q, %i.s
  %i.u = fmul double %i.t, 1.000000e-05           ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.w = load double, ptr %i.v, align 8, !tbaa !58 ; 2 uses
  %i.x = fsub double %2, %i.w                     ; 5 uses
  %i.y = fadd double %i.x, %i.u
  %i.z = fcmp olt double %i.y, 0.000000e+00
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = fadd double %i.x, f0x401921FB54442D18
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ab = fsub double %i.x, %i.u
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !57
  %i.ae = fsub double %i.ad, %i.w
  %i.af = fcmp ogt double %i.ab, %i.ae
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = fadd double %i.x, f0xC01921FB54442D18
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sroa.0.0 = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.h ], [ %i.x, %bb.g ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !60
  %i.aj = fsub double %3, %i.ai                   ; 2 uses
  %i.ak = call fastcc { double, double } @_ZN5osgeo4projL20pj_hgrid_interpolateE5PJ_LPPKNS0_19HorizontalShiftGridEb(double %.sroa.0.0, double %i.aj, ptr noundef %i.c, i1 noundef zeroext false) ; 3 uses
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(120) %i.c)
  br i1 %i.ao, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %0, align 8, !tbaa !367
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef %i.ap)
  br i1 %i.at, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.au = call { double, double } @_ZN5osgeo4proj14pj_hgrid_valueEP8PJconstsRKSt6vectorISt10unique_ptrINS0_22HorizontalShiftGridSetESt14default_deleteIS5_EESaIS8_EE5PJ_LP(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double %.sroa.0.0, double %i.aj)
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.av = extractvalue { double, double } %i.ak, 1 ; 2 uses
  %i.aw = extractvalue { double, double } %i.ak, 0 ; 2 uses
  %i.ax = fcmp oeq double %i.aw, +inf
  %i.ay = fcmp oeq double %i.av, +inf
  %or.cond = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %or.cond, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.j, %bb.l
  %.sroa.9.046 = phi double [ %i.av, %bb.l ], [ +inf, %bb.j ]
  %.sroa.018.045 = phi double [ %i.aw, %bb.l ], [ +inf, %bb.j ]
  %i.az = load ptr, ptr %0, align 8, !tbaa !367
  call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %i.az, i32 noundef 2052)
  %i.ba = insertvalue { double, double } poison, double %.sroa.018.045, 0
  %i.bb = insertvalue { double, double } %i.ba, double %.sroa.9.046, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %.thread, %bb.l, %bb.k, %.loopexit
  %.fca.1.insert.merged = phi { double, double } [ %i.g, %.loopexit ], [ %i.o, %bb.d ], [ %i.au, %bb.k ], [ %i.ak, %bb.l ], [ %i.bb, %.thread ]
  ret { double, double } %.fca.1.insert.merged
}

declare void @_Z16proj_coord_errorv(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define internal fastcc { double, double } @_ZN5osgeo4projL20pj_hgrid_interpolateE5PJ_LPPKNS0_19HorizontalShiftGridEb(double %0, double %1, ptr noundef nonnull %2, i1 noundef zeroext %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %i.f = alloca float, align 4                    ; 5 uses
  %i.g = alloca float, align 4                    ; 5 uses
  %i.h = alloca float, align 4                    ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.j = load double, ptr %i.i, align 8, !tbaa !59
  %i.k = fdiv double %0, %i.j                     ; 3 uses
  %i.l = fcmp uno double %i.k, 0.000000e+00
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call double @llvm.floor.f64(double %i.k)
  %i.n = tail call i64 @lround(double noundef %i.m) #31
  %i.o = trunc i64 %i.n to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.p = phi i32 [ %i.o, %bb.b ], [ 0, %bb.a ]    ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.r = load double, ptr %i.q, align 8, !tbaa !240
  %i.s = fdiv double %1, %i.r                     ; 3 uses
  %i.t = fcmp uno double %i.s, 0.000000e+00
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call double @llvm.floor.f64(double %i.s)
  %i.v = tail call i64 @lround(double noundef %i.u) #31
  %i.w = trunc i64 %i.v to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.x = phi i32 [ %i.w, %bb.d ], [ 0, %bb.c ]    ; 6 uses
  %i.y = sitofp i32 %i.p to double
  %i.z = fsub double %i.k, %i.y                   ; 3 uses
  %i.aa = sitofp i32 %i.x to double
  %i.ab = fsub double %i.s, %i.aa                 ; 3 uses
  %i.ac = icmp slt i32 %i.p, 0
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq i32 %i.p, -1
  %i.ae = fcmp ogt double %i.z, 9.999000e-01
  %or.cond = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.j, label %bb.u

bb.g:                                             ; preds = %bb.e
  %i.af = add nuw nsw i32 %i.p, 1                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !75 ; 2 uses
  %.not = icmp slt i32 %i.af, %i.ah
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp eq i32 %i.af, %i.ah
  %i.aj = fcmp olt double %i.z, 1.000000e-04
  %or.cond5 = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond5, label %bb.i, label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.ak = add nsw i32 %i.p, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.i
  %.sroa.046.0 = phi double [ %i.z, %bb.g ], [ 1.000000e+00, %bb.i ], [ 0.000000e+00, %bb.f ] ; 3 uses
  %.sroa.0.0 = phi i32 [ %i.p, %bb.g ], [ %i.ak, %bb.i ], [ 0, %bb.f ] ; 3 uses
  %i.al = icmp slt i32 %i.x, 0
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = icmp eq i32 %i.x, -1
  %i.an = fcmp ogt double %i.ab, 9.999000e-01
  %or.cond8 = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond8, label %bb.o, label %bb.u

bb.l:                                             ; preds = %bb.j
  %i.ao = add nuw nsw i32 %i.x, 1                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !76 ; 2 uses
  %.not81 = icmp slt i32 %i.ao, %i.aq
  br i1 %.not81, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = icmp eq i32 %i.ao, %i.aq
  %i.as = fcmp olt double %i.ab, 1.000000e-04
  %or.cond11 = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond11, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.at = add nsw i32 %i.x, -1
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.l, %bb.n
  %.sroa.9.0 = phi double [ %i.ab, %bb.l ], [ 1.000000e+00, %bb.n ], [ 0.000000e+00, %bb.k ] ; 3 uses
  %.sroa.15.0 = phi i32 [ %i.x, %bb.l ], [ %i.at, %bb.n ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !80
  %i.au = load ptr, ptr %2, align 8, !tbaa !63
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(144) %2, i32 noundef %.sroa.0.0, i32 noundef %.sroa.15.0, i1 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.ax, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ay = add nsw i32 %.sroa.0.0, 1               ; 2 uses
  %i.az = load ptr, ptr %2, align 8, !tbaa !63
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(144) %2, i32 noundef %i.ay, i32 noundef %.sroa.15.0, i1 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  br i1 %i.bc, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bd = add nsw i32 %.sroa.15.0, 1              ; 2 uses
  %i.be = load ptr, ptr %2, align 8, !tbaa !63
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(144) %2, i32 noundef %.sroa.0.0, i32 noundef %i.bd, i1 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  br i1 %i.bh, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bi = load ptr, ptr %2, align 8, !tbaa !63
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = call noundef zeroext i1 %i.bk(ptr noundef nonnull align 8 dereferenceable(144) %2, i32 noundef %i.ay, i32 noundef %i.bd, i1 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  br i1 %i.bl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bm = fsub double 1.000000e+00, %.sroa.046.0  ; 2 uses
  %i.bn = fsub double 1.000000e+00, %.sroa.9.0    ; 2 uses
  %i.bo = load float, ptr %i.a, align 4, !tbaa !80
  %i.bp = load float, ptr %i.c, align 4, !tbaa !80
  %i.bq = load float, ptr %i.e, align 4, !tbaa !80
  %i.br = load float, ptr %i.g, align 4, !tbaa !80
  %i.bs = load float, ptr %i.b, align 4, !tbaa !80
  %i.bt = load float, ptr %i.d, align 4, !tbaa !80
  %i.bu = load float, ptr %i.f, align 4, !tbaa !80
  %i.bv = load float, ptr %i.h, align 4, !tbaa !80
  %4 = fmul double %.sroa.046.0, %i.bn
  %5 = fmul double %i.bm, %i.bn
  %6 = fmul double %i.bm, %.sroa.9.0
  %7 = fmul double %.sroa.046.0, %.sroa.9.0
  %8 = insertelement <2 x float> poison, float %i.bo, i64 0
  %9 = insertelement <2 x float> %8, float %i.bs, i64 1
  %10 = fpext <2 x float> %9 to <2 x double>
  %i.bw = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %i.bt, i64 1
  %i.by = fpext <2 x float> %i.bx to <2 x double>
  %11 = insertelement <2 x double> poison, double %4, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = fmul <2 x double> %12, %i.by
  %14 = insertelement <2 x double> poison, double %5, i64 0
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %10, <2 x double> %13)
  %i.ca = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %i.bu, i64 1
  %i.cc = fpext <2 x float> %i.cb to <2 x double>
  %16 = insertelement <2 x double> poison, double %6, i64 0
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %i.cc, <2 x double> %i.bz)
  %i.ce = insertelement <2 x float> poison, float %i.br, i64 0
  %i.cf = insertelement <2 x float> %i.ce, float %i.bv, i64 1
  %i.cg = fpext <2 x float> %i.cf to <2 x double>
  %18 = insertelement <2 x double> poison, double %7, i64 0
  %i.ch = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.cg, <2 x double> %i.cd)
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %i.cj = phi <2 x double> [ %i.ci, %bb.s ], [ splat (double +inf), %bb.r ], [ splat (double +inf), %bb.q ], [ splat (double +inf), %bb.p ], [ splat (double +inf), %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.u

bb.u:                                             ; preds = %bb.m, %bb.k, %bb.h, %bb.f, %bb.t
  %i.ck = phi <2 x double> [ %i.cj, %bb.t ], [ splat (double +inf), %bb.h ], [ splat (double +inf), %bb.k ], [ splat (double +inf), %bb.f ], [ splat (double +inf), %bb.m ] ; 2 uses
  %i.cl = extractelement <2 x double> %i.ck, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.cl, 0
  %i.cm = extractelement <2 x double> %i.ck, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.cm, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj13pj_vgrid_initEP8PJconstsPKc(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.283") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::vector.199", align 8   ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::vector.283", align 8   ; 8 uses
  %7 = alloca %"class.std::unique_ptr.107", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !67
  store i8 115, ptr %i.c, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.d, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.e, align 1, !tbaa !73
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #31 ; 2 uses
  %i.g = icmp ugt i64 %i.f, 4611686018427387902
  br i1 %i.g, label %bb.a, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.a:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #36
          to label %.noexc45 unwind label %bb.d

.noexc45:                                         ; preds = %bb.a
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %._crit_edge.i.i
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %2, i64 noundef %i.f)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.i = load ptr, ptr %1, align 8, !tbaa !367
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !368
  %i.l = load ptr, ptr %3, align 8, !tbaa !70
  %i.m = invoke i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.l)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.ah

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.f:                                             ; preds = %bb.b
  %i.q = inttoptr i64 %i.m to ptr                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.r, ptr %5, align 8, !tbaa !67
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 %i.s, ptr %i.b, align 8, !tbaa !72
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i48, label %._crit_edge.i.i47

.noexc.i48:                                       ; preds = %bb.f
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc50 unwind label %bb.k   ; 2 uses

.noexc50:                                         ; preds = %.noexc.i48
  store ptr %i.u, ptr %5, align 8, !tbaa !70
  %i.v = load i64, ptr %i.b, align 8, !tbaa !72
  store i64 %i.v, ptr %i.r, align 8, !tbaa !73
  br label %._crit_edge.i.i47

._crit_edge.i.i47:                                ; preds = %.noexc50, %bb.f
  %i.w = phi ptr [ %i.u, %.noexc50 ], [ %i.r, %bb.f ] ; 2 uses
  switch i64 %i.s, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i47
  %i.x = load i8, ptr %i.q, align 1, !tbaa !73
  store i8 %i.x, ptr %i.w, align 1, !tbaa !73
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i47
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %i.q, i64 %i.s, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i47
  %i.y = load i64, ptr %i.b, align 8, !tbaa !72   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !71
  %i.aa = load ptr, ptr %5, align 8, !tbaa !70
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  invoke void @_ZN5osgeo4proj8internal5splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.199") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef signext 44)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %5, align 8, !tbaa !70    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.r
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ae = load i64, ptr %i.r, align 8, !tbaa !73
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ag = load ptr, ptr %4, align 8, !tbaa !303   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !303 ; 2 uses
  %.not98118 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not98118, label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.m

bb.k:                                             ; preds = %.noexc.i48
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

bb.l:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !70    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.r
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.l
  %i.ar = load i64, ptr %i.r, align 8, !tbaa !73
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.k
  %.pn = phi { ptr, i32 } [ %i.an, %bb.k ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %i.ao, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.ag

bb.m:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit73
  %i.at = phi ptr [ null, %.lr.ph ], [ %i.dl, %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit73 ] ; 17 uses
  %i.au = phi ptr [ null, %.lr.ph ], [ %i.dm, %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit73 ] ; 7 uses
  %i.av = phi ptr [ null, %.lr.ph ], [ %i.dn, %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit73 ] ; 6 uses
  %.sroa.089.0119 = phi ptr [ %i.ag, %.lr.ph ], [ %i.do, %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit73 ] ; 2 uses
  %i.aw = load ptr, ptr %.sroa.089.0119, align 8, !tbaa !70 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !73
  %i.ay = icmp eq i8 %i.ax, 64                    ; 2 uses
  %spec.select.idx = zext i1 %i.ay to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.aw, i64 %spec.select.idx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.az = load ptr, ptr %1, align 8, !tbaa !367
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  store ptr %i.aj, ptr %8, align 8, !tbaa !67
  %i.ba = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
end_hunk_0
begin_hunk_1_@_ZN5osgeo4proj39pj_bilinear_interpolation_three_samplesEP6pj_ctxPKNS0_16GenericShiftGridERK5PJ_LPiiiRdS9_S9_Rb:bb.a
  %i.i = alloca float, align 4                    ; 5 uses
  %i.j = alloca float, align 4                    ; 5 uses
  %i.k = alloca float, align 4                    ; 5 uses
  %i.l = alloca float, align 4                    ; 5 uses
  store i8 0, ptr %9, align 1, !tbaa !77
  %i.m = load ptr, ptr %1, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(120) %1)
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store double 0.000000e+00, ptr %6, align 8, !tbaa !51
  store double 0.000000e+00, ptr %7, align 8, !tbaa !51
  store double 0.000000e+00, ptr %8, align 8, !tbaa !51
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load i8, ptr %i.q, align 8, !tbaa !54, !range !55, !noundef !56
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.93)
  tail call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %0, i32 noundef 1029)
  br label %bb.z

bb.e:                                             ; preds = %bb.c
  %i.t = load double, ptr %2, align 8, !tbaa !390 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = load double, ptr %i.u, align 8, !tbaa !58 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.x = load double, ptr %i.w, align 8, !tbaa !391
  %i.y = fcmp olt double %i.t, %i.v
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = fadd double %i.t, f0x401921FB54442D18
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !57
  %i.ac = fcmp ogt double %i.t, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = fadd double %i.t, f0xC01921FB54442D18
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.pn119 = phi double [ %i.z, %bb.f ], [ %i.ad, %bb.h ], [ %i.t, %bb.g ]
  %.pn = fsub double %.pn119, %i.v
  %.0114 = fmul double %i.x, %.pn                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load double, ptr %i.ae, align 8, !tbaa !389
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !60
  %i.ai = fsub double %i.af, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !392
  %i.al = fmul double %i.ai, %i.ak                ; 2 uses
  %i.am = fptosi double %.0114 to i32             ; 8 uses
  %i.an = fptosi double %i.al to i32              ; 8 uses
  %i.ao = add nsw i32 %i.am, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !75
  %i.ar = add nsw i32 %i.aq, -1
  %.sroa.speculated124 = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.ao) ; 6 uses
  %i.as = add nsw i32 %i.an, 1
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.au = load i32, ptr %i.at, align 4, !tbaa !76
  %i.av = add nsw i32 %i.au, -1
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.as) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #31
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #31
  store float 0.000000e+00, ptr %i.k, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #31
  store float 0.000000e+00, ptr %i.l, align 4, !tbaa !80
  %i.aw = load ptr, ptr %1, align 8, !tbaa !63
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %i.am, i32 noundef %i.an, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br i1 %i.az, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %1, align 8, !tbaa !63
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %i.am, i32 noundef %i.an, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.bd, label %bb.k, label %bb.u

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %1, align 8, !tbaa !63
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %i.am, i32 noundef %i.an, i32 noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  br i1 %i.bh, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.bi = load ptr, ptr %1, align 8, !tbaa !63
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = call noundef zeroext i1 %i.bk(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %.sroa.speculated124, i32 noundef %i.an, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  br i1 %i.bl, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.bm = load ptr, ptr %1, align 8, !tbaa !63
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %.sroa.speculated124, i32 noundef %i.an, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  br i1 %i.bp, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.bq = load ptr, ptr %1, align 8, !tbaa !63
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %.sroa.speculated124, i32 noundef %i.an, i32 noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  br i1 %i.bt, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.bu = load ptr, ptr %1, align 8, !tbaa !63
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %i.am, i32 noundef %.sroa.speculated, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  br i1 %i.bx, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.by = load ptr, ptr %1, align 8, !tbaa !63
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call noundef zeroext i1 %i.ca(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %i.am, i32 noundef %.sroa.speculated, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  br i1 %i.cb, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.cc = load ptr, ptr %1, align 8, !tbaa !63
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = call noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %i.am, i32 noundef %.sroa.speculated, i32 noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  br i1 %i.cf, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.cg = load ptr, ptr %1, align 8, !tbaa !63
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 72
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef zeroext i1 %i.ci(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %.sroa.speculated124, i32 noundef %.sroa.speculated, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
  br i1 %i.cj, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ck = load ptr, ptr %1, align 8, !tbaa !63
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 72
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = call noundef zeroext i1 %i.cm(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %.sroa.speculated124, i32 noundef %.sroa.speculated, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
  br i1 %i.cn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.co = load ptr, ptr %1, align 8, !tbaa !63
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 72
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = call noundef zeroext i1 %i.cq(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef %.sroa.speculated124, i32 noundef %.sroa.speculated, i32 noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  %i.cs = xor i1 %i.cr, true
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.ct = phi i1 [ true, %bb.s ], [ true, %bb.r ], [ true, %bb.q ], [ true, %bb.p ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.m ], [ true, %bb.l ], [ true, %bb.k ], [ true, %bb.j ], [ true, %bb.i ], [ %i.cs, %bb.t ]
  %i.cu = load ptr, ptr %1, align 8, !tbaa !63
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = call noundef zeroext i1 %i.cw(ptr noundef nonnull align 8 dereferenceable(120) %1)
  br i1 %i.cx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 1, ptr %9, align 1, !tbaa !77
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  br i1 %i.ct, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = sitofp i32 %i.am to double
  %i.cz = fsub double %.0114, %i.cy               ; 3 uses
  %i.da = sitofp i32 %i.an to double
  %i.db = fsub double %i.al, %i.da                ; 3 uses
  %i.dc = fsub double 1.000000e+00, %i.cz         ; 2 uses
  %i.dd = fsub double 1.000000e+00, %i.db         ; 2 uses
  %i.de = load float, ptr %i.a, align 4, !tbaa !80
  %i.df = fpext float %i.de to double
  %i.dg = load float, ptr %i.d, align 4, !tbaa !80
  %i.dh = fpext float %i.dg to double
  %i.di = load float, ptr %i.g, align 4, !tbaa !80
  %i.dj = fpext float %i.di to double
  %i.dk = load float, ptr %i.j, align 4, !tbaa !80
  %i.dl = fpext float %i.dk to double
  %i.dm = load float, ptr %i.b, align 4, !tbaa !80
  %i.dn = load float, ptr %i.e, align 4, !tbaa !80
  %i.do = load float, ptr %i.h, align 4, !tbaa !80
  %i.dp = load float, ptr %i.k, align 4, !tbaa !80
  %i.dq = load float, ptr %i.c, align 4, !tbaa !80
  %i.dr = load float, ptr %i.f, align 4, !tbaa !80
  %i.ds = load float, ptr %i.i, align 4, !tbaa !80
  %i.dt = load float, ptr %i.l, align 4, !tbaa !80
  %10 = fmul double %i.cz, %i.dd                  ; 2 uses
  %11 = fmul double %i.dc, %i.dd                  ; 2 uses
  %12 = fmul double %i.dc, %i.db                  ; 2 uses
  %i.du = fmul double %i.cz, %i.db                ; 2 uses
  %13 = fmul double %10, %i.dh
  %i.dv = call double @llvm.fmuladd.f64(double %11, double %i.df, double %13)
  %i.dw = call double @llvm.fmuladd.f64(double %12, double %i.dj, double %i.dv)
  %i.dx = call double @llvm.fmuladd.f64(double %i.du, double %i.dl, double %i.dw)
  store double %i.dx, ptr %6, align 8, !tbaa !51
  %i.dy = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %i.dq, i64 1
  %i.ea = fpext <2 x float> %i.dz to <2 x double>
  %i.eb = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.ec = insertelement <2 x float> %i.eb, float %i.dr, i64 1
  %i.ed = fpext <2 x float> %i.ec to <2 x double>
  %14 = insertelement <2 x double> poison, double %10, i64 0
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %15, %i.ed
  %16 = insertelement <2 x double> poison, double %11, i64 0
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ef = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %i.ea, <2 x double> %i.ee)
  %i.eg = insertelement <2 x float> poison, float %i.do, i64 0
  %i.eh = insertelement <2 x float> %i.eg, float %i.ds, i64 1
  %i.ei = fpext <2 x float> %i.eh to <2 x double>
  %18 = insertelement <2 x double> poison, double %12, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ej = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %19, <2 x double> %i.ei, <2 x double> %i.ef)
  %i.ek = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.el = insertelement <2 x float> %i.ek, float %i.dt, i64 1
  %i.em = fpext <2 x float> %i.el to <2 x double>
  %20 = insertelement <2 x double> poison, double %i.du, i64 0
  %i.en = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> %i.em, <2 x double> %i.ej) ; 2 uses
  %i.ep = extractelement <2 x double> %i.eo, i64 0
  store double %i.ep, ptr %7, align 8, !tbaa !51
  %i.eq = extractelement <2 x double> %i.eo, i64 1
  store double %i.eq, ptr %8, align 8, !tbaa !51
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v
  %.0 = phi i1 [ false, %bb.v ], [ true, %bb.x ], [ false, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.z

bb.z:                                             ; preds = %bb.d, %bb.y, %bb.b
  %.2 = phi i1 [ true, %bb.b ], [ %.0, %bb.y ], [ false, %bb.d ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define void @proj_grid_info(ptr dead_on_unwind noalias writable sret(%struct.PJ_GRID_INFO) align 8 initializes((0, 360)) %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::unique_ptr.107", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::unique_ptr.183", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = tail call noundef ptr @_Z18pj_get_default_ctxv() ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %0, i8 0, i64 360, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !67
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.125) #36
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 %i.f, ptr %i.b, align 8, !tbaa !72
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc43 unwind label %bb.k   ; 2 uses

.noexc43:                                         ; preds = %.noexc.i
  store ptr %i.h, ptr %3, align 8, !tbaa !70
  %i.i = load i64, ptr %i.b, align 8, !tbaa !72
  store i64 %i.i, ptr %i.d, align 8, !tbaa !73
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc43, %bb.c
  %i.j = phi ptr [ %i.h, %.noexc43 ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %1, align 1, !tbaa !73
  store i8 %i.k, ptr %i.j, align 1, !tbaa !73
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %1, i64 %i.f, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.l = load i64, ptr %i.b, align 8, !tbaa !72   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !71
  %i.n = load ptr, ptr %3, align 8, !tbaa !70
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  invoke void @_ZN5osgeo4proj20VerticalShiftGridSet4openEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.107") align 8 %2, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %3, align 8, !tbaa !70     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.r = load i64, ptr %i.d, align 8, !tbaa !73
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.t = load ptr, ptr %2, align 8, !tbaa !266    ; 10 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.critedge38.thread, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !252  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !252
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %_ZNKSt14default_deleteIN5osgeo4proj20VerticalShiftGridSetEEclEPS2_.exit.i50, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !123  ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.ab = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 31) #31 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = invoke noundef i32 @_Z12pj_find_fileP6pj_ctxPKcPcm(ptr noundef %i.c, ptr noundef nonnull %1, ptr noundef nonnull %i.ac, i64 noundef 259)
          to label %.noexc44 unwind label %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit

.noexc44:                                         ; preds = %bb.i
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.j, label %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit59

bb.j:                                             ; preds = %.noexc44
  store i8 0, ptr %i.ac, align 8, !tbaa !73
  br label %_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit59

bb.k:                                             ; preds = %.noexc.i, %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

bb.l:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %3, align 8, !tbaa !70    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.d
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.l
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !73
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.k ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %i.af, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.t

_ZNSt10unique_ptrIN5osgeo4proj20VerticalShiftGridSetESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(96) %i.t) #31, !inline_history !14
  br label %bb.t

_ZNKSt14default_deleteIN5osgeo4proj20VerticalShiftGridSetEEclEPS2_.exit.i50: ; preds = %bb.h
  %i.ao = load ptr, ptr %i.t, align 8, !tbaa !63
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(96) %i.t) #31, !inline_history !14
  br label %.critedge38.thread

.critedge38.thread:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteIN5osgeo4proj20VerticalShiftGridSetEEclEPS2_.exit.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ar, ptr %5, align 8, !tbaa !67
  %i.as = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.as, ptr %i.a, align 8, !tbaa !72
  %i.at = icmp ugt i64 %i.as, 15
  br i1 %i.at, label %.noexc.i53, label %._crit_edge.i.i52

.noexc.i53:                                       ; preds = %.critedge38.thread
  %i.au = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc55 unwind label %bb.u   ; 2 uses

.noexc55:                                         ; preds = %.noexc.i53
  store ptr %i.au, ptr %5, align 8, !tbaa !70
  %i.av = load i64, ptr %i.a, align 8, !tbaa !72
  store i64 %i.av, ptr %i.ar, align 8, !tbaa !73
  br label %._crit_edge.i.i52

._crit_edge.i.i52:                                ; preds = %.noexc55, %.critedge38.thread
end_hunk_1
