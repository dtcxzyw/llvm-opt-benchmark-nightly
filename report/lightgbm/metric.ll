Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/metric?download=true
inline.NumInlined: 3370
inline.NumDeleted: 931
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZNK8LightGBM9AUCMetric4EvalEPKdPKNS_17ObjectiveFunctionE:bb.a

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i.i, %.lr.ph.i.i
  %i.al = phi i64 [ %i.av, %.lr.ph.i.i ], [ %i.aj, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i.i ]
  %i.am = phi i64 [ %i.au, %.lr.ph.i.i ], [ %i.ai, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.an = shl i64 %i.am, 1                        ; 2 uses
  %i.ao = add i64 %i.al, -1
  %i.ap = add i64 %i.ao, %i.an
  %i.aq = udiv i64 %i.ap, %i.an
  %i.ar = trunc i64 %i.aq to i32
  store i32 %i.ar, ptr %i.e, align 4, !tbaa !117
  %i.as = load i32, ptr %i.b, align 4, !tbaa !117
  call void @__kmpc_push_num_threads(ptr nonnull @3, i32 %i.i, i32 %i.as)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 6, ptr nonnull @_ZN8LightGBM6CommonL12ParallelSortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNKS_9AUCMetric4EvalEPKdPKNS_17ObjectiveFunctionEEUliiE_iEEvT_SG_T0_PT1_.omp_outlined.54, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %4, ptr nonnull %6, ptr nonnull %5)
  %i.at = load i64, ptr %i.d, align 8, !tbaa !41
  %i.au = shl i64 %i.at, 1                        ; 3 uses
  store i64 %i.au, ptr %i.d, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  %i.av = load i64, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %i.aw = icmp ult i64 %i.au, %i.av
  br i1 %i.aw, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !328

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.01.0.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ax = ptrtoint ptr %.sroa.9.0.i.i to i64
  %i.ay = ptrtoint ptr %.sroa.01.0.i.i to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01.0.i.i, i64 noundef %i.az) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i:                ; preds = %bb.e, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.k

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit
  %storemerge136 = phi i32 [ %i.bo, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ], [ 0, %bb.a ] ; 3 uses
  %.sroa.096.0135 = phi ptr [ %.sroa.096.1, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ], [ null, %bb.a ] ; 7 uses
  %.sroa.19.0134 = phi ptr [ %.sroa.19.1, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ], [ null, %bb.a ] ; 5 uses
  %.sroa.15.0133 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ], [ null, %bb.a ] ; 3 uses
  %.not.i = icmp eq ptr %.sroa.15.0133, %.sroa.19.0134
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store i32 %storemerge136, ptr %.sroa.15.0133, align 4, !tbaa !117
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit

bb.g:                                             ; preds = %.lr.ph
  %i.ba = ptrtoint ptr %.sroa.19.0134 to i64
  %i.bb = ptrtoint ptr %.sroa.096.0135 to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 6 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775804
  br i1 %i.bd, label %bb.h, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #32
          to label %.noexc88 unwind label %.loopexit.split-lp

.noexc88:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.be = ashr exact i64 %i.bc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 2305843009213693951)
  %i.bi = select i1 %i.bg, i64 2305843009213693951, i64 %i.bh ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #30
          to label %.noexc89 unwind label %.loopexit118 ; 4 uses

.noexc89:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bc ; 2 uses
  store i32 %storemerge136, ptr %i.bl, align 4, !tbaa !117
  %i.bm = icmp sgt i64 %i.bc, 0
  br i1 %i.bm, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %.noexc89
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr align 4 %.sroa.096.0135, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %.noexc89
  %.not.i17.i.i = icmp eq ptr %.sroa.096.0135, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.096.0135, i64 noundef %i.bc) #31
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bi
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit

_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.f
  %.pn115 = phi ptr [ %i.bl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.15.0133, %bb.f ]
  %.sroa.19.1 = phi ptr [ %i.bn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.19.0134, %bb.f ] ; 2 uses
  %.sroa.096.1 = phi ptr [ %i.bk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.096.0135, %bb.f ] ; 2 uses
  %.sroa.15.1 = getelementptr inbounds nuw i8, ptr %.pn115, i64 4 ; 2 uses
  %i.bo = add nuw nsw i32 %storemerge136, 1       ; 2 uses
  %i.bp = load i32, ptr %i.f, align 8, !tbaa !179
  %i.bq = icmp slt i32 %i.bo, %i.bp
  br i1 %i.bq, label %.lr.ph, label %._crit_edge, !llvm.loop !329

.loopexit118:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, %bb.b, %.noexc84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.br = load i32, ptr %.sroa.096.0.lcssa, align 4, !tbaa !117
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !88 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !181 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  %i.by = load i32, ptr %i.f, align 8, !tbaa !179 ; 3 uses
  %i.bz = icmp sgt i32 %i.by, 0                   ; 2 uses
  br i1 %i.bx, label %.preheader, label %.preheader116

.preheader116:                                    ; preds = %bb.k
  br i1 %i.bz, label %.lr.ph145, label %.loopexit

.lr.ph145:                                        ; preds = %.preheader116
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !180
  %wide.trip.count = zext nneg i32 %i.by to i64
  br label %bb.p

.preheader:                                       ; preds = %bb.k
  br i1 %i.bz, label %.lr.ph156, label %.loopexit

.lr.ph156:                                        ; preds = %.preheader
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !180
  %wide.trip.count173 = zext nneg i32 %i.by to i64
  br label %bb.m

bb.l:                                             ; preds = %.noexc4.i.i, %.noexc.i.i, %.noexc84, %bb.c, %._crit_edge
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.m:                                             ; preds = %.lr.ph156, %bb.o
  %indvars.iv170 = phi i64 [ 0, %.lr.ph156 ], [ %indvars.iv.next171, %bb.o ] ; 2 uses
  %.057154 = phi double [ %i.bu, %.lr.ph156 ], [ %.1, %bb.o ] ; 2 uses
  %.058153 = phi double [ 0.000000e+00, %.lr.ph156 ], [ %i.cs, %bb.o ] ; 2 uses
  %.062152 = phi double [ 0.000000e+00, %.lr.ph156 ], [ %.163, %bb.o ] ; 2 uses
  %.067151 = phi double [ 0.000000e+00, %.lr.ph156 ], [ %.168, %bb.o ] ; 3 uses
  %.072150 = phi double [ 0.000000e+00, %.lr.ph156 ], [ %i.cv, %bb.o ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.096.0.lcssa, i64 %indvars.iv170
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !117
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !108 ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ch
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !88 ; 2 uses
  %i.cm = fcmp une double %i.cl, %.057154
  br i1 %i.cm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cn = call double @llvm.fmuladd.f64(double %.072150, double 5.000000e-01, double %.067151)
  %i.co = call double @llvm.fmuladd.f64(double %.058153, double %i.cn, double %.062152)
  %i.cp = fadd double %.072150, %.067151
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.173 = phi double [ 0.000000e+00, %bb.n ], [ %.072150, %bb.m ]
  %.168 = phi double [ %i.cp, %bb.n ], [ %.067151, %bb.m ] ; 2 uses
  %.163 = phi double [ %i.co, %bb.n ], [ %.062152, %bb.m ] ; 2 uses
  %.159 = phi double [ 0.000000e+00, %bb.n ], [ %.058153, %bb.m ]
  %.1 = phi double [ %i.cl, %bb.n ], [ %.057154, %bb.m ]
  %i.cq = fcmp ole float %i.cj, 0.000000e+00
  %i.cr = uitofp i1 %i.cq to double
  %i.cs = fadd double %.159, %i.cr                ; 2 uses
  %i.ct = fcmp ogt float %i.cj, 0.000000e+00
  %i.cu = uitofp i1 %i.ct to double
  %i.cv = fadd double %.173, %i.cu                ; 2 uses
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %exitcond174.not = icmp eq i64 %indvars.iv.next171, %wide.trip.count173
  br i1 %exitcond174.not, label %.loopexit, label %bb.m, !llvm.loop !330

bb.p:                                             ; preds = %.lr.ph145, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %.2143 = phi double [ %i.bu, %.lr.ph145 ], [ %.3, %bb.r ] ; 2 uses
  %.260142 = phi double [ 0.000000e+00, %.lr.ph145 ], [ %9, %bb.r ] ; 2 uses
  %.264141 = phi double [ 0.000000e+00, %.lr.ph145 ], [ %.365, %bb.r ] ; 2 uses
  %.269140 = phi double [ 0.000000e+00, %.lr.ph145 ], [ %.370, %bb.r ] ; 3 uses
  %.274139 = phi double [ 0.000000e+00, %.lr.ph145 ], [ %14, %bb.r ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.096.0.lcssa, i64 %indvars.iv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !117
  %i.cy = sext i32 %i.cx to i64                   ; 3 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !108 ; 2 uses
  %i.db = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cy
  %i.dc = load double, ptr %i.db, align 8, !tbaa !88 ; 2 uses
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.cy
  %i.de = load float, ptr %i.dd, align 4, !tbaa !108 ; 2 uses
  %i.df = fcmp une double %i.dc, %.2143
  br i1 %i.df, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dg = call double @llvm.fmuladd.f64(double %.274139, double 5.000000e-01, double %.269140)
  %i.dh = call double @llvm.fmuladd.f64(double %.260142, double %i.dg, double %.264141)
  %i.di = fadd double %.274139, %.269140
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.375 = phi double [ 0.000000e+00, %bb.q ], [ %.274139, %bb.p ]
  %.370 = phi double [ %i.di, %bb.q ], [ %.269140, %bb.p ] ; 2 uses
  %.365 = phi double [ %i.dh, %bb.q ], [ %.264141, %bb.p ] ; 2 uses
  %.361 = phi double [ 0.000000e+00, %bb.q ], [ %.260142, %bb.p ]
  %.3 = phi double [ %i.dc, %bb.q ], [ %.2143, %bb.p ]
  %i.dj = fcmp ole float %i.da, 0.000000e+00
  %i.dk = uitofp i1 %i.dj to float
  %7 = fmul float %i.de, %i.dk
  %8 = fpext float %7 to double
  %9 = fadd double %.361, %8                      ; 2 uses
  %10 = fcmp ogt float %i.da, 0.000000e+00
  %11 = uitofp i1 %10 to float
  %12 = fmul float %i.de, %11
  %13 = fpext float %12 to double
  %14 = fadd double %.375, %13                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.p, !llvm.loop !331

.loopexit:                                        ; preds = %bb.r, %bb.o, %.preheader116, %.preheader
  %.476 = phi double [ %i.cv, %bb.o ], [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %.preheader116 ], [ %14, %bb.r ] ; 2 uses
  %.471 = phi double [ %.168, %bb.o ], [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %.preheader116 ], [ %.370, %bb.r ] ; 2 uses
  %.466 = phi double [ %.163, %bb.o ], [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %.preheader116 ], [ %.365, %bb.r ]
  %.4 = phi double [ %i.cs, %bb.o ], [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %.preheader116 ], [ %9, %bb.r ]
  %i.dl = call double @llvm.fmuladd.f64(double %.476, double 5.000000e-01, double %.471)
  %i.dm = call double @llvm.fmuladd.f64(double %.4, double %i.dl, double %.466)
  %i.dn = fadd double %.476, %.471                ; 4 uses
  %i.do = fcmp ogt double %i.dn, 0.000000e+00
  br i1 %i.do, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.loopexit
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !182 ; 2 uses
  %i.dr = fcmp une double %i.dn, %i.dq
  br i1 %i.dr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ds = fsub double %i.dq, %i.dn
  %i.dt = fmul double %i.dn, %i.ds
  %i.du = fdiv double %i.dm, %i.dt
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.loopexit
  %.0110 = phi double [ %i.du, %bb.t ], [ 1.000000e+00, %bb.s ], [ 1.000000e+00, %.loopexit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.dv = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %.noexc90 unwind label %.thread ; 3 uses

.noexc90:                                         ; preds = %bb.u
  store ptr %i.dv, ptr %0, align 8, !tbaa !82
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !83
  store double %.0110, ptr %i.dv, align 8, !tbaa !88
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dw, ptr %i.dy, align 8, !tbaa !84
  %i.dz = ptrtoint ptr %.sroa.19.0.lcssa to i64
  %i.ea = sub i64 %i.dz, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.096.0.lcssa, i64 noundef %i.ea) #31
  ret void

.thread:                                          ; preds = %bb.u
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %.loopexit118, %.loopexit.split-lp, %bb.l
  %.sroa.19.0129 = phi ptr [ %.sroa.19.0.lcssa, %bb.l ], [ %.sroa.19.0134, %.loopexit118 ], [ %.sroa.19.0134, %.loopexit.split-lp ]
  %.sroa.096.0123 = phi ptr [ %.sroa.096.0.lcssa, %bb.l ], [ %.sroa.096.0135, %.loopexit118 ], [ %.sroa.096.0135, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.l ], [ %lpad.loopexit, %.loopexit118 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i92 = icmp eq ptr %.sroa.096.0123, null
  br i1 %.not.i.i.i92, label %_ZNSt6vectorIiSaIiEED2Ev.exit93, label %._crit_edge175

._crit_edge175:                                   ; preds = %bb.v
  %.pre = ptrtoint ptr %.sroa.096.0123 to i64
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge175, %.thread
  %.pre-phi = phi i64 [ %.pre, %._crit_edge175 ], [ %i.k, %.thread ]
  %.sroa.19.0128 = phi ptr [ %.sroa.19.0129, %._crit_edge175 ], [ %.sroa.19.0.lcssa, %.thread ]
  %.sroa.096.0125 = phi ptr [ %.sroa.096.0123, %._crit_edge175 ], [ %.sroa.096.0.lcssa, %.thread ]
  %.pn113 = phi { ptr, i32 } [ %.pn, %._crit_edge175 ], [ %i.eb, %.thread ]
  %i.ec = ptrtoint ptr %.sroa.19.0128 to i64
  %i.ed = sub i64 %i.ec, %.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.096.0125, i64 noundef %i.ed) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit93

_ZNSt6vectorIiSaIiEED2Ev.exit93:                  ; preds = %bb.v, %bb.w
  %.pn114 = phi { ptr, i32 } [ %.pn, %bb.v ], [ %.pn113, %bb.w ]
  resume { ptr, i32 } %.pn114
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA4_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !93     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #32
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743)
  %i.m = select i1 %i.k, i64 288230376151711743, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 5                  ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #30 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !33
  %i.t = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(4) %2) #13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.t, ptr %i.a, align 8, !tbaa !41
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.v, ptr %i.r, align 8, !tbaa !38
  %i.w = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.w, ptr %i.s, align 8, !tbaa !37
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.x = phi ptr [ %i.v, %.noexc ], [ %i.s, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.t, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.y = load i8, ptr %2, align 1, !tbaa !37
  store i8 %i.y, ptr %i.x, align 1, !tbaa !37
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr nonnull align 1 dereferenceable(4) %2, i64 %i.t, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.z = load i64, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !36
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !33, !alias.scope !338, !noalias !339
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !38, !alias.scope !339, !noalias !338 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !36, !alias.scope !339, !noalias !338 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !340
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !38, !alias.scope !338, !noalias !339
  %i.al = load i64, ptr %i.af, align 8, !tbaa !37, !alias.scope !339, !noalias !338
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !37, !alias.scope !338, !noalias !339
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !36, !alias.scope !339, !noalias !338
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.am = phi i64 [ %i.ai, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !36, !alias.scope !338, !noalias !339
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !38, !alias.scope !339, !noalias !338
  store i64 0, ptr %i.an, align 8, !tbaa !36, !alias.scope !339, !noalias !338
  store i8 0, ptr %i.af, align 8, !tbaa !37, !alias.scope !339, !noalias !338
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i28, align 8, !tbaa !33, !alias.scope !341, !noalias !342
  %i.at = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !38, !alias.scope !342, !noalias !341 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK8LightGBM22AveragePrecisionMetric4EvalEPKdPKNS_17ObjectiveFunctionE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.an = shl i64 %i.am, 1                        ; 2 uses
  %i.ao = add i64 %i.al, -1
  %i.ap = add i64 %i.ao, %i.an
  %i.aq = udiv i64 %i.ap, %i.an
  %i.ar = trunc i64 %i.aq to i32
  store i32 %i.ar, ptr %i.e, align 4, !tbaa !117
  %i.as = load i32, ptr %i.b, align 4, !tbaa !117
  call void @__kmpc_push_num_threads(ptr nonnull @3, i32 %i.i, i32 %i.as)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 6, ptr nonnull @_ZN8LightGBM6CommonL12ParallelSortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZNKS_22AveragePrecisionMetric4EvalEPKdPKNS_17ObjectiveFunctionEEUliiE_iEEvT_SG_T0_PT1_.omp_outlined.55, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %4, ptr nonnull %6, ptr nonnull %5)
  %i.at = load i64, ptr %i.d, align 8, !tbaa !41
  %i.au = shl i64 %i.at, 1                        ; 3 uses
  store i64 %i.au, ptr %i.d, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  %i.av = load i64, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %i.aw = icmp ult i64 %i.au, %i.av
  br i1 %i.aw, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !357

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.01.0.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ax = ptrtoint ptr %.sroa.9.0.i.i to i64
  %i.ay = ptrtoint ptr %.sroa.01.0.i.i to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01.0.i.i, i64 noundef %i.az) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i:                ; preds = %bb.e, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.k

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit
  %storemerge151 = phi i32 [ %i.bo, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ], [ 0, %bb.a ] ; 3 uses
  %.sroa.0111.0150 = phi ptr [ %.sroa.0111.1, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ], [ null, %bb.a ] ; 7 uses
  %.sroa.19.0149 = phi ptr [ %.sroa.19.1, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ], [ null, %bb.a ] ; 5 uses
  %.sroa.15.0148 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit ], [ null, %bb.a ] ; 3 uses
  %.not.i = icmp eq ptr %.sroa.15.0148, %.sroa.19.0149
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store i32 %storemerge151, ptr %.sroa.15.0148, align 4, !tbaa !117
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit

bb.g:                                             ; preds = %.lr.ph
  %i.ba = ptrtoint ptr %.sroa.19.0149 to i64
  %i.bb = ptrtoint ptr %.sroa.0111.0150 to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 6 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775804
  br i1 %i.bd, label %bb.h, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #32
          to label %.noexc103 unwind label %.loopexit.split-lp

.noexc103:                                        ; preds = %bb.h
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.be = ashr exact i64 %i.bc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 2305843009213693951)
  %i.bi = select i1 %i.bg, i64 2305843009213693951, i64 %i.bh ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #30
          to label %.noexc104 unwind label %.loopexit133 ; 4 uses

.noexc104:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bc ; 2 uses
  store i32 %storemerge151, ptr %i.bl, align 4, !tbaa !117
  %i.bm = icmp sgt i64 %i.bc, 0
  br i1 %i.bm, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %.noexc104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr align 4 %.sroa.0111.0150, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %.noexc104
  %.not.i17.i.i = icmp eq ptr %.sroa.0111.0150, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0111.0150, i64 noundef %i.bc) #31
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bi
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit

_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.f
  %.pn130 = phi ptr [ %i.bl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.15.0148, %bb.f ]
  %.sroa.19.1 = phi ptr [ %i.bn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.19.0149, %bb.f ] ; 2 uses
  %.sroa.0111.1 = phi ptr [ %i.bk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0111.0150, %bb.f ] ; 2 uses
  %.sroa.15.1 = getelementptr inbounds nuw i8, ptr %.pn130, i64 4 ; 2 uses
  %i.bo = add nuw nsw i32 %storemerge151, 1       ; 2 uses
  %i.bp = load i32, ptr %i.f, align 8, !tbaa !186
  %i.bq = icmp slt i32 %i.bo, %i.bp
  br i1 %i.bq, label %.lr.ph, label %._crit_edge, !llvm.loop !358

.loopexit133:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, %bb.b, %.noexc99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.br = load i32, ptr %.sroa.0111.0.lcssa, align 4, !tbaa !117
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !88 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !188 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  %i.by = load i32, ptr %i.f, align 8, !tbaa !186 ; 3 uses
  %i.bz = icmp sgt i32 %i.by, 0                   ; 2 uses
  br i1 %i.bx, label %.preheader, label %.preheader131

.preheader131:                                    ; preds = %bb.k
  br i1 %i.bz, label %.lr.ph161, label %.loopexit

.lr.ph161:                                        ; preds = %.preheader131
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !187
  %wide.trip.count = zext nneg i32 %i.by to i64
  br label %bb.p

.preheader:                                       ; preds = %bb.k
  br i1 %i.bz, label %.lr.ph174, label %.loopexit

.lr.ph174:                                        ; preds = %.preheader
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !187
  %wide.trip.count192 = zext nneg i32 %i.by to i64
  br label %bb.m

bb.l:                                             ; preds = %.noexc4.i.i, %.noexc.i.i, %.noexc99, %bb.c, %._crit_edge
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.m:                                             ; preds = %.lr.ph174, %bb.o
  %indvars.iv189 = phi i64 [ 0, %.lr.ph174 ], [ %indvars.iv.next190, %bb.o ] ; 2 uses
  %.068172 = phi double [ %i.bu, %.lr.ph174 ], [ %.1, %bb.o ] ; 2 uses
  %.069171 = phi double [ 0.000000e+00, %.lr.ph174 ], [ %i.cu, %bb.o ] ; 2 uses
  %.073170 = phi double [ 0.000000e+00, %.lr.ph174 ], [ %.174, %bb.o ] ; 2 uses
  %.078169 = phi double [ 0.000000e+00, %.lr.ph174 ], [ %.179, %bb.o ] ; 2 uses
  %.083168 = phi double [ 0.000000e+00, %.lr.ph174 ], [ %.184, %bb.o ] ; 2 uses
  %.088167 = phi double [ 0.000000e+00, %.lr.ph174 ], [ %i.cx, %bb.o ] ; 4 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0111.0.lcssa, i64 %indvars.iv189
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !117
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !108 ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ch
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !88 ; 2 uses
  %i.cm = fcmp une double %i.cl, %.068172
  br i1 %i.cm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cn = fadd double %.088167, %.083168          ; 2 uses
  %i.co = fadd double %.088167, %.069171
  %i.cp = fadd double %.078169, %i.co             ; 2 uses
  %i.cq = fdiv double %i.cn, %i.cp
  %i.cr = call double @llvm.fmuladd.f64(double %.088167, double %i.cq, double %.073170)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.189 = phi double [ 0.000000e+00, %bb.n ], [ %.088167, %bb.m ]
  %.184 = phi double [ %i.cn, %bb.n ], [ %.083168, %bb.m ] ; 2 uses
  %.179 = phi double [ %i.cp, %bb.n ], [ %.078169, %bb.m ] ; 2 uses
  %.174 = phi double [ %i.cr, %bb.n ], [ %.073170, %bb.m ] ; 2 uses
  %.170 = phi double [ 0.000000e+00, %bb.n ], [ %.069171, %bb.m ]
  %.1 = phi double [ %i.cl, %bb.n ], [ %.068172, %bb.m ]
  %i.cs = fcmp ole float %i.cj, 0.000000e+00
  %i.ct = uitofp i1 %i.cs to double
  %i.cu = fadd double %.170, %i.ct                ; 2 uses
  %i.cv = fcmp ogt float %i.cj, 0.000000e+00
  %i.cw = uitofp i1 %i.cv to double
  %i.cx = fadd double %.189, %i.cw                ; 2 uses
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count192
  br i1 %exitcond193.not, label %.loopexit, label %bb.m, !llvm.loop !359

bb.p:                                             ; preds = %.lr.ph161, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph161 ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %.2159 = phi double [ %i.bu, %.lr.ph161 ], [ %.3, %bb.r ] ; 2 uses
  %.271158 = phi double [ 0.000000e+00, %.lr.ph161 ], [ %9, %bb.r ] ; 2 uses
  %.275157 = phi double [ 0.000000e+00, %.lr.ph161 ], [ %.376, %bb.r ] ; 2 uses
  %.280156 = phi double [ 0.000000e+00, %.lr.ph161 ], [ %.381, %bb.r ] ; 2 uses
  %.285155 = phi double [ 0.000000e+00, %.lr.ph161 ], [ %.386, %bb.r ] ; 2 uses
  %.290154 = phi double [ 0.000000e+00, %.lr.ph161 ], [ %14, %bb.r ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0111.0.lcssa, i64 %indvars.iv
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !117
  %i.da = sext i32 %i.cz to i64                   ; 3 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.da
  %i.dc = load float, ptr %i.db, align 4, !tbaa !108 ; 2 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %2, i64 %i.da
  %i.de = load double, ptr %i.dd, align 8, !tbaa !88 ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.da
  %i.dg = load float, ptr %i.df, align 4, !tbaa !108 ; 2 uses
  %i.dh = fcmp une double %i.de, %.2159
  br i1 %i.dh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.di = fadd double %.290154, %.285155          ; 2 uses
  %i.dj = fadd double %.290154, %.271158
  %i.dk = fadd double %.280156, %i.dj             ; 2 uses
  %i.dl = fdiv double %i.di, %i.dk
  %i.dm = call double @llvm.fmuladd.f64(double %.290154, double %i.dl, double %.275157)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.391 = phi double [ 0.000000e+00, %bb.q ], [ %.290154, %bb.p ]
  %.386 = phi double [ %i.di, %bb.q ], [ %.285155, %bb.p ] ; 2 uses
  %.381 = phi double [ %i.dk, %bb.q ], [ %.280156, %bb.p ] ; 2 uses
  %.376 = phi double [ %i.dm, %bb.q ], [ %.275157, %bb.p ] ; 2 uses
  %.372 = phi double [ 0.000000e+00, %bb.q ], [ %.271158, %bb.p ]
  %.3 = phi double [ %i.de, %bb.q ], [ %.2159, %bb.p ]
  %i.dn = fcmp ole float %i.dc, 0.000000e+00
  %i.do = uitofp i1 %i.dn to float
  %7 = fmul float %i.dg, %i.do
  %8 = fpext float %7 to double
  %9 = fadd double %.372, %8                      ; 2 uses
  %10 = fcmp ogt float %i.dc, 0.000000e+00
  %11 = uitofp i1 %10 to float
  %12 = fmul float %i.dg, %11
  %13 = fpext float %12 to double
  %14 = fadd double %.391, %13                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.p, !llvm.loop !360

.loopexit:                                        ; preds = %bb.r, %bb.o, %.preheader131, %.preheader
  %.492 = phi double [ %i.cx, %bb.o ], [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %.preheader131 ], [ %14, %bb.r ] ; 3 uses
  %.487 = phi double [ %.184, %bb.o ], [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %.preheader131 ], [ %.386, %bb.r ]
  %.482 = phi double [ %.179, %bb.o ], [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %.preheader131 ], [ %.381, %bb.r ]
  %.477 = phi double [ %.174, %bb.o ], [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %.preheader131 ], [ %.376, %bb.r ]
  %.4 = phi double [ %i.cu, %bb.o ], [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %.preheader131 ], [ %9, %bb.r ]
  %i.dp = fadd double %.492, %.487                ; 4 uses
  %i.dq = fadd double %.492, %.4
  %i.dr = fadd double %.482, %i.dq
  %i.ds = fdiv double %i.dp, %i.dr
  %i.dt = call double @llvm.fmuladd.f64(double %.492, double %i.ds, double %.477)
  %i.du = fcmp ogt double %i.dp, 0.000000e+00
  br i1 %i.du, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.loopexit
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !189
  %i.dx = fcmp une double %i.dp, %i.dw
  br i1 %i.dx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dy = fdiv double %i.dt, %i.dp
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.loopexit
  %.0125 = phi double [ %i.dy, %bb.t ], [ 1.000000e+00, %bb.s ], [ 1.000000e+00, %.loopexit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.dz = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %.noexc105 unwind label %.thread ; 3 uses

.noexc105:                                        ; preds = %bb.u
  store ptr %i.dz, ptr %0, align 8, !tbaa !82
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !83
  store double %.0125, ptr %i.dz, align 8, !tbaa !88
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ea, ptr %i.ec, align 8, !tbaa !84
  %i.ed = ptrtoint ptr %.sroa.19.0.lcssa to i64
  %i.ee = sub i64 %i.ed, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0111.0.lcssa, i64 noundef %i.ee) #31
  ret void

.thread:                                          ; preds = %bb.u
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %.loopexit133, %.loopexit.split-lp, %bb.l
  %.sroa.19.0144 = phi ptr [ %.sroa.19.0.lcssa, %bb.l ], [ %.sroa.19.0149, %.loopexit133 ], [ %.sroa.19.0149, %.loopexit.split-lp ]
  %.sroa.0111.0138 = phi ptr [ %.sroa.0111.0.lcssa, %bb.l ], [ %.sroa.0111.0150, %.loopexit133 ], [ %.sroa.0111.0150, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.l ], [ %lpad.loopexit, %.loopexit133 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i107 = icmp eq ptr %.sroa.0111.0138, null
  br i1 %.not.i.i.i107, label %_ZNSt6vectorIiSaIiEED2Ev.exit108, label %._crit_edge194

._crit_edge194:                                   ; preds = %bb.v
  %.pre = ptrtoint ptr %.sroa.0111.0138 to i64
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge194, %.thread
  %.pre-phi = phi i64 [ %.pre, %._crit_edge194 ], [ %i.k, %.thread ]
  %.sroa.19.0143 = phi ptr [ %.sroa.19.0144, %._crit_edge194 ], [ %.sroa.19.0.lcssa, %.thread ]
  %.sroa.0111.0140 = phi ptr [ %.sroa.0111.0138, %._crit_edge194 ], [ %.sroa.0111.0.lcssa, %.thread ]
  %.pn128 = phi { ptr, i32 } [ %.pn, %._crit_edge194 ], [ %i.ef, %.thread ]
  %i.eg = ptrtoint ptr %.sroa.19.0143 to i64
  %i.eh = sub i64 %i.eg, %.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0111.0140, i64 noundef %i.eh) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit108

_ZNSt6vectorIiSaIiEED2Ev.exit108:                 ; preds = %bb.v, %bb.w
  %.pn129 = phi { ptr, i32 } [ %.pn, %bb.v ], [ %.pn128, %bb.w ]
  resume { ptr, i32 } %.pn129
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA18_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(18) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !93     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #32
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743)
  %i.m = select i1 %i.k, i64 288230376151711743, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 5                  ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #30 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !33
  %i.t = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %2) #13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.t, ptr %i.a, align 8, !tbaa !41
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.v, ptr %i.r, align 8, !tbaa !38
  %i.w = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.w, ptr %i.s, align 8, !tbaa !37
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.x = phi ptr [ %i.v, %.noexc ], [ %i.s, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.t, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.y = load i8, ptr %2, align 1, !tbaa !37
  store i8 %i.y, ptr %i.x, align 1, !tbaa !37
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr nonnull align 1 dereferenceable(18) %2, i64 %i.t, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.z = load i64, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !36
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !33, !alias.scope !367, !noalias !368
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !38, !alias.scope !368, !noalias !367 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !36, !alias.scope !368, !noalias !367 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !369
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !38, !alias.scope !367, !noalias !368
  %i.al = load i64, ptr %i.af, align 8, !tbaa !37, !alias.scope !368, !noalias !367
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !37, !alias.scope !367, !noalias !368
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !36, !alias.scope !368, !noalias !367
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.am = phi i64 [ %i.ai, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !36, !alias.scope !367, !noalias !368
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !38, !alias.scope !368, !noalias !367
  store i64 0, ptr %i.an, align 8, !tbaa !36, !alias.scope !368, !noalias !367
  store i8 0, ptr %i.af, align 8, !tbaa !37, !alias.scope !368, !noalias !367
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i28, align 8, !tbaa !33, !alias.scope !370, !noalias !371
  %i.at = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !38, !alias.scope !371, !noalias !370 ; 2 uses
end_hunk_1
