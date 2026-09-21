Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/cubicsplinetable?download=true
inline.NumInlined: 478
inline.NumDeleted: 256
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3gmx16CubicSplineTableC2ESt16initializer_listINS_26AnalyticalSplineTableInputEERKSt4pairIffEf:bb.a

bb.ac:                                            ; preds = %bb.aa
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.ad:                                            ; preds = %._crit_edge
  %i.cd = tail call ptr @__cxa_allocate_exception(i64 24) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull @.str.5)
          to label %bb.ae unwind label %.thread182

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(56) %14)
          to label %bb.af unwind label %.thread189

bb.af:                                            ; preds = %bb.ae
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx14ToleranceErrorE, i64 16), ptr %13, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %15, align 8, !tbaa !23
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx16CubicSplineTableC2ESt16initializer_listINS_26AnalyticalSplineTableInputEERKSt4pairIffEf, ptr %i.ce, align 8, !tbaa !25
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr @.str.1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !25
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 363, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !26
  invoke void @_ZN3gmxlsINS_14ToleranceErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::ToleranceError") align 8 %i.cd, ptr noundef nonnull align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @__cxa_throw(ptr %i.cd, ptr nonnull @_ZTIN3gmx14ToleranceErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #23
          to label %bb.bl unwind label %bb.ah

.thread182:                                       ; preds = %bb.ad
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split363

.thread189:                                       ; preds = %bb.ae
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %14) #22
  br label %.sink.split363

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.038 = phi i1 [ false, %bb.ag ], [ true, %bb.af ]
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #22
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %.038, label %bb.ai, label %bb.bj

.sink.split363:                                   ; preds = %.thread182, %.thread189
  %.merged199.ph = phi { ptr, i32 } [ %i.cg, %.thread189 ], [ %i.cf, %.thread182 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split363, %bb.ah
  %.merged199 = phi { ptr, i32 } [ %i.ch, %bb.ah ], [ %.merged199.ph, %.sink.split363 ]
  call void @__cxa_free_exception(ptr %i.cd) #22
  br label %bb.bj

._crit_edge243:                                   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit114, %.preheader
  ret void

bb.aj:                                            ; preds = %.lr.ph242, %_ZNSt6vectorIfSaIfEED2Ev.exit114
  %.0241 = phi ptr [ %1, %.lr.ph242 ], [ %i.ho, %_ZNSt6vectorIfSaIfEED2Ev.exit114 ] ; 8 uses
  %.037239 = phi i64 [ 0, %.lr.ph242 ], [ %i.hn, %_ZNSt6vectorIfSaIfEED2Ev.exit114 ] ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0241, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0241, i64 40 ; 2 uses
  %i.ck = load float, ptr %i.n, align 4, !tbaa !33
  %i.cl = fpext float %i.ck to double
  %i.cm = fdiv double %i.cl, %i.ai
  %i.cn = fadd double %i.cm, 2.000000e+00
  %i.co = fptosi double %i.cn to i32              ; 5 uses
  %i.cp = shl nsw i32 %i.co, 2
  %i.cq = sext i32 %i.cp to i64                   ; 3 uses
  %.not196 = icmp eq i32 %i.co, 0
  br i1 %.not196, label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cr = icmp slt i32 %i.co, 0
  br i1 %i.cr, label %bb.al, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #23
          to label %.noexc133 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc133:                                        ; preds = %bb.al
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.ak
  %i.cs = shl nuw nsw i64 %i.cq, 2                ; 2 uses
  %i.ct = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #26
          to label %.lr.ph.i unwind label %.loopexit.split-lp.loopexit ; 10 uses

.lr.ph.i:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  store float 0.000000e+00, ptr %i.ct, align 4, !tbaa !34
  %i.cu = getelementptr i8, ptr %i.ct, i64 4
  %.idx.i.i.i.i.i31.i = add nsw i64 %i.cs, -4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cu, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !34
  %.idx365 = shl nuw nsw i64 %i.cq, 2
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx365 ; 4 uses
  %i.cw = add nsw i32 %i.co, -1
  %i.cx = zext nneg i32 %i.cw to i64              ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0241, i64 24 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0241, i64 32 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0241, i64 56 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0241, i64 64 ; 2 uses
  %i.dc = zext nneg i32 %i.co to i64
  %invariant.op.i = add nsw i64 %i.dc, -1
  br label %bb.am

bb.am:                                            ; preds = %bb.as, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.cx, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.as ] ; 7 uses
  %.05988.i = phi i64 [ %i.cx, %.lr.ph.i ], [ %.1.i, %bb.as ] ; 4 uses
  %.06087.i = phi i1 [ true, %.lr.ph.i ], [ %.282.i, %bb.as ]
  %i.dd = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.de = uitofp nneg i32 %i.dd to double
  %i.df = fmul double %i.ai, %i.de                ; 3 uses
  %i.dg = load float, ptr %i.e, align 8, !tbaa !35
  %i.dh = fcmp ule float %i.dg, 0.000000e+00
  %i.di = icmp ne i64 %indvars.iv.i, 0
  %or.cond.not.i = or i1 %i.di, %i.dh
  %i.dj = and i1 %.06087.i, %or.cond.not.i
  br i1 %i.dj, label %bb.an, label %._crit_edge90.i

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store double %i.df, ptr %i.d, align 8, !tbaa !37
  %i.dk = load ptr, ptr %i.cy, align 8, !tbaa !67
  %.not.i.i62.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i62.i, label %.invoke, label %_ZNKSt8functionIFddEEclEd.exit.i

_ZNKSt8functionIFddEEclEd.exit.i:                 ; preds = %bb.an
  %i.dl = load ptr, ptr %i.cz, align 8, !tbaa !68
  %i.dm = invoke noundef double %i.dl(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc101 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit116.thread, !inline_history !58 ; 3 uses

.noexc101:                                        ; preds = %_ZNKSt8functionIFddEEclEd.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store double %i.df, ptr %i.c, align 8, !tbaa !37
  %i.dn = load ptr, ptr %i.da, align 8, !tbaa !67
  %.not.i.i63.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i63.i, label %.invoke, label %_ZNKSt8functionIFddEEclEd.exit64.i

_ZNKSt8functionIFddEEclEd.exit64.i:               ; preds = %.noexc101
  %i.do = load ptr, ptr %i.db, align 8, !tbaa !68
  %i.dp = invoke noundef double %i.do(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc103 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit116.thread, !inline_history !58 ; 4 uses

.noexc103:                                        ; preds = %_ZNKSt8functionIFddEEclEd.exit64.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dq = icmp slt i64 %indvars.iv.i, %invariant.op.i
  br i1 %i.dq, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %.noexc103
  %i.dr = fadd double %i.ai, %i.df                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double %i.dr, ptr %i.b, align 8, !tbaa !37
  %i.ds = load ptr, ptr %i.cy, align 8, !tbaa !67
  %.not.i.i65.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i65.i, label %.invoke, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dt = load ptr, ptr %i.cz, align 8, !tbaa !68
  %i.du = invoke noundef double %i.dt(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc105 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit116.thread, !inline_history !58

.noexc105:                                        ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %i.dr, ptr %i.a, align 8, !tbaa !37
  %i.dv = load ptr, ptr %i.da, align 8, !tbaa !67
  %.not.i.i67.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i67.i, label %.invoke, label %_ZNKSt8functionIFddEEclEd.exit68.i

.invoke:                                          ; preds = %.noexc105, %bb.ao, %.noexc101, %bb.an
  invoke void @_ZSt25__throw_bad_function_callv() #23
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt8functionIFddEEclEd.exit68.i:               ; preds = %.noexc105
  %i.dw = load ptr, ptr %i.db, align 8, !tbaa !68
  %i.dx = invoke noundef double %i.dw(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc107 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit116.thread, !inline_history !58

.noexc107:                                        ; preds = %_ZNKSt8functionIFddEEclEd.exit68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aq

bb.aq:                                            ; preds = %.noexc107, %.noexc103
  %i.dy = phi double [ %i.du, %.noexc107 ], [ 0.000000e+00, %.noexc103 ]
  %i.dz = phi double [ %i.dx, %.noexc107 ], [ 0.000000e+00, %.noexc103 ] ; 2 uses
  %18 = insertelement <2 x double> poison, double %i.dm, i64 0
  %19 = insertelement <2 x double> %18, double %i.dp, i64 1
  %20 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %19)
  %21 = fcmp ogt <2 x double> %20, splat (double f0x471A36E2D0E56042)
  %22 = bitcast <2 x i1> %21 to i2
  %.not395 = icmp eq i2 %22, 0
  br i1 %.not395, label %bb.ar, label %._crit_edge90.i

bb.ar:                                            ; preds = %bb.aq
  %i.ea = fmul double %i.ai, %i.dp
  %i.eb = fsub double %i.dy, %i.dm
  %i.ec = call double @llvm.fmuladd.f64(double %i.dp, double 2.000000e+00, double %i.dz)
  %i.ed = fneg double %i.ec
  %i.ee = fadd double %i.dp, %i.dz
  %i.ef = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.eg = insertelement <2 x double> %i.ef, double %i.ee, i64 1
  %i.eh = fmul <2 x double> %i.aq, %i.eg
  %i.ei = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ek = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> <double 3.000000e+00, double -2.000000e+00>, <2 x double> %i.eh)
  %i.el = add i64 %.05988.i, -1
  %i.em = fptrunc double %i.ea to float
  %i.en = fptrunc <2 x double> %i.ek to <2 x float>
  br label %bb.as

._crit_edge90.i:                                  ; preds = %bb.am, %bb.aq
  %.idx.i = shl i64 %.05988.i, 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx.i ; 2 uses
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !34
  %i.eq = fpext float %i.ep to double
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.es = load float, ptr %i.er, align 4, !tbaa !34 ; 2 uses
  %i.et = fpext float %i.es to double
  %i.eu = sub i64 %indvars.iv.i, %.05988.i
  %i.ev = uitofp i64 %i.eu to double
  %i.ew = call double @llvm.fmuladd.f64(double %i.et, double %i.ev, double %i.eq)
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge90.i, %bb.ar
  %.282.i = phi i1 [ true, %bb.ar ], [ false, %._crit_edge90.i ]
  %.075.i = phi double [ %i.dm, %bb.ar ], [ %i.ew, %._crit_edge90.i ]
  %.074.i = phi float [ %i.em, %bb.ar ], [ %i.es, %._crit_edge90.i ]
  %.1.i = phi i64 [ %i.el, %bb.ar ], [ %.05988.i, %._crit_edge90.i ]
  %i.ex = phi <2 x float> [ %i.en, %bb.ar ], [ zeroinitializer, %._crit_edge90.i ]
  %i.ey = fptrunc double %.075.i to float
  %.idx98.i = shl nuw nsw i64 %indvars.iv.i, 4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx98.i ; 3 uses
  store float %i.ey, ptr %i.ez, align 4, !tbaa !34
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  store float %.074.i, ptr %i.fa, align 4, !tbaa !34
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store <2 x float> %i.ex, ptr %i.fb, align 4, !tbaa !34
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.fc = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.fc, label %bb.am, label %_ZN3gmx12_GLOBAL__N_130fillSingleCubicSplineTableDataERKSt8functionIFddEES5_RKSt4pairIffEdPSt6vectorIfSaIfEE.exit, !llvm.loop !59

_ZN3gmx12_GLOBAL__N_130fillSingleCubicSplineTableDataERKSt8functionIFddEES5_RKSt4pairIffEdPSt6vectorIfSaIfEE.exit: ; preds = %bb.as
  %.idx364 = shl nuw nsw i64 %i.cq, 2             ; 4 uses
  %i.fd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx364) #26
          to label %.noexc109 unwind label %.loopexit.split-lp.loopexit ; 3 uses

.noexc109:                                        ; preds = %_ZN3gmx12_GLOBAL__N_130fillSingleCubicSplineTableDataERKSt8functionIFddEES5_RKSt4pairIffEdPSt6vectorIfSaIfEE.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.idx364
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fd, ptr nonnull align 4 %i.ct, i64 %.idx364, i1 false)
  %i.ff = ptrtoint ptr %i.fe to i64
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

_ZNSt6vectorIfSaIfEEC2ERKS1_.exit:                ; preds = %bb.aj, %.noexc109
  %i.fg = phi i64 [ %.idx364, %.noexc109 ], [ 0, %bb.aj ]
  %.sroa.0138.2306315 = phi ptr [ %i.ct, %.noexc109 ], [ null, %bb.aj ] ; 4 uses
  %.sroa.13.0308313 = phi ptr [ %i.cv, %.noexc109 ], [ null, %bb.aj ] ; 2 uses
  %i.fh = phi i64 [ %i.ff, %.noexc109 ], [ 0, %bb.aj ]
  %i.fi = phi ptr [ %i.fd, %.noexc109 ], [ null, %bb.aj ] ; 8 uses
  %i.fj = load i64, ptr %0, align 8, !tbaa !21    ; 4 uses
  %i.fk = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.fl = load ptr, ptr %i.ao, align 8, !tbaa !39
  %i.fm = icmp eq ptr %i.fk, %i.fl
  %i.fn = ptrtoint ptr %i.fi to i64
  %i.fo = sub i64 %i.fh, %i.fn                    ; 4 uses
  %i.fp = ashr exact i64 %i.fo, 2                 ; 3 uses
  br i1 %i.fm, label %bb.at, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit.i

bb.at:                                            ; preds = %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit
  %i.fq = mul i64 %i.fp, %i.fj                    ; 2 uses
  %.not28.i = icmp eq i64 %i.fq, 0
  br i1 %.not28.i, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.fq)
          to label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit.i unwind label %bb.ax

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit.i: ; preds = %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit, %bb.au, %bb.at
  %i.fr = lshr i64 %i.fp, 2                       ; 3 uses
  %.not.i = icmp ult i64 %i.fp, 4
  br i1 %.not.i, label %_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit, label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit.i
  %i.fs = load ptr, ptr %i.g, align 8, !tbaa !40  ; 3 uses
  %i.ft = icmp eq i64 %i.fr, 1
  br i1 %i.ft, label %.epil.preheader, label %.lr.ph.i110.new

.lr.ph.i110.new:                                  ; preds = %.lr.ph.i110
  %unroll_iter = and i64 %i.fr, 4611686018427387902
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph.i110.new
  %.02022.i = phi i64 [ 0, %.lr.ph.i110.new ], [ %i.gx, %bb.av ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i110.new ], [ %niter.next.1, %bb.av ]
  %i.fu = mul i64 %.02022.i, %i.fj
  %i.fv = add i64 %i.fu, %.037239
  %.idx = shl i64 %.02022.i, 4
  %i.fw = getelementptr i8, ptr %i.fi, i64 %.idx  ; 4 uses
  %.idx197 = shl i64 %i.fv, 4
  %i.fx = getelementptr i8, ptr %i.fs, i64 %.idx197 ; 4 uses
  %i.fy = load float, ptr %i.fw, align 4, !tbaa !34
  store float %i.fy, ptr %i.fx, align 4, !tbaa !34
  %i.fz = getelementptr i8, ptr %i.fw, i64 4
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !34
  %i.gb = getelementptr i8, ptr %i.fx, i64 4
  store float %i.ga, ptr %i.gb, align 4, !tbaa !34
  %i.gc = getelementptr i8, ptr %i.fw, i64 8
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !34
  %i.ge = getelementptr i8, ptr %i.fx, i64 8
  store float %i.gd, ptr %i.ge, align 4, !tbaa !34
  %i.gf = getelementptr i8, ptr %i.fw, i64 12
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !34
  %i.gh = getelementptr i8, ptr %i.fx, i64 12
  store float %i.gg, ptr %i.gh, align 4, !tbaa !34
  %i.gi = or disjoint i64 %.02022.i, 1            ; 2 uses
  %i.gj = mul i64 %i.gi, %i.fj
  %i.gk = add i64 %i.gj, %.037239
  %.idx.1 = shl i64 %i.gi, 4
  %i.gl = getelementptr i8, ptr %i.fi, i64 %.idx.1 ; 4 uses
  %.idx197.1 = shl i64 %i.gk, 4
  %i.gm = getelementptr i8, ptr %i.fs, i64 %.idx197.1 ; 4 uses
  %i.gn = load float, ptr %i.gl, align 4, !tbaa !34
  store float %i.gn, ptr %i.gm, align 4, !tbaa !34
  %i.go = getelementptr i8, ptr %i.gl, i64 4
  %i.gp = load float, ptr %i.go, align 4, !tbaa !34
  %i.gq = getelementptr i8, ptr %i.gm, i64 4
  store float %i.gp, ptr %i.gq, align 4, !tbaa !34
  %i.gr = getelementptr i8, ptr %i.gl, i64 8
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !34
  %i.gt = getelementptr i8, ptr %i.gm, i64 8
  store float %i.gs, ptr %i.gt, align 4, !tbaa !34
  %i.gu = getelementptr i8, ptr %i.gl, i64 12
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !34
  %i.gw = getelementptr i8, ptr %i.gm, i64 12
  store float %i.gv, ptr %i.gw, align 4, !tbaa !34
  %i.gx = add nuw nsw i64 %.02022.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit.thread.loopexit.unr-lcssa, label %bb.av, !llvm.loop !0

_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit: ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit.i
  %.not.i.i.i112 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i112, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit.thread

_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit.thread.loopexit.unr-lcssa: ; preds = %bb.av
  %i.gy = and i64 %i.fo, 16
  %lcmp.mod.not = icmp eq i64 %i.gy, 0
  br i1 %lcmp.mod.not, label %_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit.thread.loopexit.unr-lcssa, %.lr.ph.i110
  %.02022.i.epil.init = phi i64 [ 0, %.lr.ph.i110 ], [ %i.gx, %_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod415 = trunc i64 %i.fr to i1
  call void @llvm.assume(i1 %lcmp.mod415)
  %i.gz = mul i64 %.02022.i.epil.init, %i.fj
  %i.ha = add i64 %i.gz, %.037239
  %.idx.epil = shl i64 %.02022.i.epil.init, 4
  %i.hb = getelementptr i8, ptr %i.fi, i64 %.idx.epil ; 4 uses
  %.idx197.epil = shl i64 %i.ha, 4
  %i.hc = getelementptr i8, ptr %i.fs, i64 %.idx197.epil ; 4 uses
  %i.hd = load float, ptr %i.hb, align 4, !tbaa !34
  store float %i.hd, ptr %i.hc, align 4, !tbaa !34
  %i.he = getelementptr i8, ptr %i.hb, i64 4
  %i.hf = load float, ptr %i.he, align 4, !tbaa !34
  %i.hg = getelementptr i8, ptr %i.hc, i64 4
  store float %i.hf, ptr %i.hg, align 4, !tbaa !34
  %i.hh = getelementptr i8, ptr %i.hb, i64 8
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !34
  %i.hj = getelementptr i8, ptr %i.hc, i64 8
  store float %i.hi, ptr %i.hj, align 4, !tbaa !34
  %i.hk = getelementptr i8, ptr %i.hb, i64 12
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !34
  %i.hm = getelementptr i8, ptr %i.hc, i64 12
  store float %i.hl, ptr %i.hm, align 4, !tbaa !34
  br label %_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit.thread

_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit.thread: ; preds = %.epil.preheader, %_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit.thread.loopexit.unr-lcssa, %_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.fo) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit, %_ZN3gmx8internal24fillMultiplexedTableDataISt6vectorIfSaIfEES2_IfNS_9AllocatorIfNS_23AlignedAllocationPolicyEEEEEEvT_PT0_mmm.exit.thread
  %i.hn = add nuw nsw i64 %.037239, 1
  %.not.i.i.i113 = icmp eq ptr %.sroa.0138.2306315, null
  br i1 %.not.i.i.i113, label %_ZNSt6vectorIfSaIfEED2Ev.exit114, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0138.2306315, i64 noundef %i.fg) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit114

_ZNSt6vectorIfSaIfEED2Ev.exit114:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.aw
  %i.ho = getelementptr inbounds nuw i8, ptr %.0241, i64 72 ; 2 uses
  %.not69 = icmp eq ptr %i.ho, %i.ac
  br i1 %.not69, label %._crit_edge243, label %bb.aj

end_hunk_0
begin_hunk_1_@_ZN3gmx16CubicSplineTableC2ESt16initializer_listINS_25NumericalSplineTableInputEERKSt4pairIffEf:bb.a
  %i.ll = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lm = load ptr, ptr %25, align 8, !tbaa !31   ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.lo = icmp eq ptr %i.lm, %i.ln
  br i1 %i.lo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %bb.ce
  %i.lp = load i64, ptr %i.ln, align 8, !tbaa !32
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155, %bb.cd
  %.pn93 = phi { ptr, i32 } [ %i.lk, %bb.cd ], [ %i.ll, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155 ], [ %i.ll, %bb.ce ] ; 2 uses
  %i.lr = load ptr, ptr %26, align 8, !tbaa !31   ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.lt = icmp eq ptr %i.lr, %i.ls
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %i.lu = load i64, ptr %i.ls, align 8, !tbaa !32
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158, %bb.cc
  %.pn93.pn = phi { ptr, i32 } [ %i.lj, %bb.cc ], [ %.pn93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158 ], [ %.pn93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %bb.cg

bb.cf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %.pn96 = phi { ptr, i32 } [ %i.lw, %bb.cf ], [ %.pn93.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ]
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.ch:                                            ; preds = %bb.ax, %bb.ay, %bb.as, %bb.af, %_ZNSt6vectorIfSaIfEED2Ev.exit148, %bb.ap, %bb.cg, %bb.n, %bb.o, %bb.g, %bb.h
  %.merged = phi { ptr, i32 } [ %.pn117.pn237, %bb.h ], [ %i.r, %bb.g ], [ %.pn114.pn244, %bb.o ], [ %i.x, %bb.n ], [ %i.ct, %bb.as ], [ %.merged291, %bb.ay ], [ %i.cy, %bb.ax ], [ %.pn89.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit148 ], [ %.pn105.pn.pn, %bb.af ], [ %.pn112, %bb.ap ], [ %.pn96, %bb.cg ]
  call void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #22
  resume { ptr, i32 } %.merged

bb.ci:                                            ; preds = %bb.cg, %bb.ap
  %i.lx = landingpad { ptr, i32 }
          catch ptr null
  %i.ly = extractvalue { ptr, i32 } %i.lx, 0
  call void @__clang_call_terminate(ptr %i.ly) #27
  unreachable

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %bb.bd, %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %bb.ac, %bb.u, %bb.m, %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3gmxlsINS_22InconsistentInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind noalias writable sret(%"class.gmx::InconsistentInputError") align 8 %0, ptr noundef align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %4 = alloca %"struct.std::type_index", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !41
  store ptr %i.a, ptr %3, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr @_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr %4, align 8, !tbaa !46
  invoke void @_ZN3gmx16GromacsException7setInfoERKSt10type_indexOSt10unique_ptrINS_8internal14IExceptionInfoESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.d = load ptr, ptr %3, align 8, !tbaa !43     ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit, label %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #22, !inline_history !1
  br label %_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.i = load ptr, ptr %3, align 8, !tbaa !43     ; 3 uses
  %.not.i3.i = icmp eq ptr %i.i, null
  br i1 %.not.i3.i, label %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i, label %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i

_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i: ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #22, !inline_history !1
  br label %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i

_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i: ; preds = %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.h

_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load <2 x ptr>, ptr %i.n, align 8, !tbaa !47
  store ptr null, ptr %i.o, align 8, !tbaa !50
  store <2 x ptr> %i.p, ptr %i.m, align 8, !tbaa !47
  store ptr null, ptr %i.n, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx22InconsistentInputErrorE, i64 16), ptr %0, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx16GromacsExceptionE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !98
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !99
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !96
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !96
  br label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !26
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !100

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  ret void
}

declare void @_ZN3gmx8internal45throwUnlessDerivativeIsConsistentWithFunctionENS_8ArrayRefIKdEES3_dRKSt4pairIffE(ptr, ptr, ptr, ptr, double noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #6

declare noundef float @_ZN3gmx8internal48findSmallestQuotientOfFunctionAndThirdDerivativeENS_8ArrayRefIKdEEdRKSt4pairIffE(ptr, ptr, double noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x double> @llvm.masked.load.v4f64.p0(ptr captures(none), <4 x i1>, <4 x double>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { cold noreturn }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nounwind memory(none) }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nounwind }
attributes #23 = { noreturn }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { builtin nounwind }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !38}
!1 = distinct !{null, null, null}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!"float", !7, i64 0}
!13 = !{!"_ZTSSt4pairIffE", !12, i64 0, !12, i64 4}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"p1 float", !14, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !16, i64 0}
!18 = !{!"_ZTSSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !17, i64 0}
!19 = !{!"_ZTSSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !18, i64 0}
!20 = !{!"_ZTSN3gmx16CubicSplineTableE", !11, i64 0, !13, i64 8, !12, i64 16, !19, i64 24}
!21 = !{!20, !11, i64 0}
!22 = !{!"vtable pointer", !6, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"p1 omnipotent char", !14, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!8, !8, i64 0}
!27 = !{!20, !12, i64 12}
!28 = !{!20, !12, i64 16}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !24, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !11, i64 8, !7, i64 16}
!31 = !{!30, !24, i64 0}
!32 = !{!7, !7, i64 0}
!33 = !{!13, !12, i64 4}
!34 = !{!12, !12, i64 0}
!35 = !{!13, !12, i64 0}
!36 = !{!"double", !7, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!15, !15, i64 0}
!40 = !{!16, !15, i64 0}
!41 = !{i64 0, i64 8, !25, i64 8, i64 8, !25, i64 16, i64 4, !26}
!42 = !{!"p1 _ZTSN3gmx8internal14IExceptionInfoE", !14, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"p1 _ZTSSt9type_info", !14, i64 0}
!45 = !{!"_ZTSSt10type_index", !44, i64 0}
!46 = !{!45, !44, i64 0}
!47 = !{!14, !14, i64 0}
!48 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!49 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !48, i64 0}
!50 = !{!49, !48, i64 0}
!51 = !{!"p1 _ZTSN3gmx8internal13ExceptionDataE", !14, i64 0}
!52 = !{!"_ZTSSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EE", !51, i64 0, !49, i64 8}
!53 = !{!52, !51, i64 0}
!54 = !{!29, !24, i64 0}
!55 = !{!30, !11, i64 8}
!56 = !{!"llvm.loop.isvectorized", i32 1}
!57 = !{!"llvm.loop.unroll.runtime.disable"}
!58 = distinct !{null}
!59 = distinct !{!59, !38}
!60 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!61 = !{!"_ZTSSt14_Function_base", !7, i64 0, !14, i64 16}
!62 = !{!"_ZTSSt8functionIFddEE", !61, i64 0, !14, i64 24}
!63 = !{!"_ZTSN3gmx26AnalyticalSplineTableInputE", !60, i64 0, !62, i64 8, !62, i64 40}
!64 = !{!63, !60, i64 0}
!65 = !{}
!66 = !{i64 8}
!67 = !{!61, !14, i64 16}
!68 = !{!62, !14, i64 24}
!69 = !{!11, !11, i64 0}
!70 = distinct !{!70, !38}
!71 = !{!"p1 _ZTSNSt15__exception_ptr13exception_ptrE", !14, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseINSt15__exception_ptr13exception_ptrESaIS1_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!73 = !{!72, !71, i64 0}
!74 = !{!72, !71, i64 8}
!75 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !14, i64 0}
!76 = !{!75, !14, i64 0}
!77 = !{!72, !71, i64 16}
!78 = distinct !{!78, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!79 = distinct !{!79, !78, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!80 = !{!79}
!81 = distinct !{null}
!82 = distinct !{!82, !"_ZSt19__relocate_object_aIffN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_"}
!83 = distinct !{!83, !82, !"_ZSt19__relocate_object_aIffN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_: argument 0"}
!84 = distinct !{!84, !82, !"_ZSt19__relocate_object_aIffN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEEvPT_PT0_RT1_: argument 1"}
!85 = distinct !{!85, !38, !56, !57}
!86 = distinct !{!86, !38, !56, !57}
!87 = distinct !{!87, !38, !56}
!88 = !{!16, !15, i64 8}
!89 = !{!16, !15, i64 16}
!90 = !{!83}
!91 = !{!84}
!92 = !{!"branch_weights", i32 8, i32 24}
!93 = distinct !{!93, !38, !56, !57}
!94 = distinct !{!94, !38}
!95 = distinct !{!95, !38, !57, !56}
!96 = distinct !{null, null, null}
!97 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 8, !8, i64 12}
!98 = !{!97, !8, i64 8}
!99 = !{!97, !8, i64 12}
!100 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_1
