Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/coplanar?download=true
inline.NumInlined: 1327
inline.NumDeleted: 506
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4CGAL8internal25Static_filters_predicates13Orientation_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES6_EEEEEclERKNS_7Point_3IS6_EESE_SE_SE_:bb.a
  %.0103 = select i1 %i.an, double %i.ak, double %i.j ; 2 uses
  %i.ao = fcmp olt double %.0103, %i.am
  %.1104 = select i1 %i.ao, double %i.am, double %.0103 ; 4 uses
  %i.ap = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x double> %i.ai, %i.aq
  %i.as = insertelement <2 x double> poison, double %i.i, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = shufflevector <2 x double> %i.p, <2 x double> %i.q, <2 x i32> <i32 0, i32 2>
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.au, <2 x double> %i.ar) ; 2 uses
  %i.aw = fneg <2 x double> %i.p
  %i.ax = shufflevector <2 x double> %i.ai, <2 x double> %i.av, <2 x i32> <i32 1, i32 3>
  %i.ay = fmul <2 x double> %i.ax, %i.aw
  %i.az = shufflevector <2 x double> %i.ai, <2 x double> %i.av, <2 x i32> <i32 0, i32 2>
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.q, <2 x double> %i.ay) ; 2 uses
  %i.bb = extractelement <2 x double> %i.o, i64 1
  %i.bc = extractelement <2 x double> %i.ba, i64 0
  %i.bd = extractelement <2 x double> %i.ba, i64 1
  %i.be = tail call noundef double @llvm.fmuladd.f64(double %i.bc, double %i.bb, double %i.bd) ; 2 uses
  %i.bf = fmul double %.1104, f0x3CF704402C00000A
  %i.bg = fmul double %i.bf, %.1102
  %i.bh = fmul double %i.bg, %.1100               ; 2 uses
  %i.bi = fcmp ogt double %.1104, %.1100          ; 2 uses
  %.2105 = select i1 %i.bi, double %.1100, double %.1104 ; 3 uses
  %.2 = select i1 %i.bi, double %.1104, double %.1100 ; 3 uses
  %i.bj = fcmp ogt double %.1102, %.2
  br i1 %i.bj, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bk = fcmp olt double %.1102, %.2105
  br i1 %i.bk, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.3106 = phi double [ %.2105, %bb.b ], [ %.1102, %bb.c ], [ %.2105, %bb.a ] ; 2 uses
  %.3 = phi double [ %.2, %bb.b ], [ %.2, %bb.c ], [ %.1102, %bb.a ]
  %i.bl = fcmp olt double %.3106, 1.000000e-97
  br i1 %i.bl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bm = fcmp oeq double %.3106, 0.000000e+00
  br i1 %i.bm, label %.thread, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.bn = fcmp olt double %.3, f0x551C931E8AB87173
  br i1 %i.bn, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bo = fcmp ogt double %i.be, %i.bh
  br i1 %i.bo, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = fneg double %i.bh
  %i.bq = fcmp olt double %i.be, %i.bp
  br i1 %i.bq, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.e
  %i.br = tail call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_3IST_EES16_S16_S16_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.e, %bb.g, %bb.i
  %.1 = phi i32 [ %i.br, %bb.i ], [ -1, %bb.h ], [ 0, %bb.e ], [ 1, %bb.g ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EEclIJNS_7Point_3IST_EES16_S16_S16_EEENS_4SignEDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %6 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %7 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %8 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %9 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %10 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %11 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %12 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %13 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.j = load i32, ptr %i.e, align 4
  %i.k = and i32 %i.j, -24577
  %i.l = or disjoint i32 %i.k, 16384
  store i32 %i.l, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.m = load <2 x double>, ptr %1, align 8, !tbaa !15, !noalias !205 ; 3 uses
  %i.n = fneg <2 x double> %i.m                   ; 2 uses
  %i.o = shufflevector <2 x double> %i.n, <2 x double> %i.m, <2 x i32> <i32 2, i32 0>
  %i.p = shufflevector <2 x double> %i.n, <2 x double> %i.m, <2 x i32> <i32 3, i32 1>
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !15, !noalias !205 ; 2 uses
  %i.s = fneg double %i.r
  %i.t = insertelement <2 x double> poison, double %i.r, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.s, i64 1
  %i.v = load double, ptr %2, align 8, !tbaa !15, !noalias !208 ; 2 uses
  %i.w = fneg double %i.v
  %i.x = insertelement <2 x double> poison, double %i.w, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.v, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load <2 x double>, ptr %i.z, align 8, !tbaa !15, !noalias !208 ; 3 uses
  %i.ab = fneg <2 x double> %i.aa                 ; 2 uses
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> %i.aa, <2 x i32> <i32 0, i32 2>
  %i.ad = shufflevector <2 x double> %i.ab, <2 x double> %i.aa, <2 x i32> <i32 1, i32 3>
  %i.ae = load <2 x double>, ptr %3, align 8, !tbaa !15, !noalias !211 ; 3 uses
  %i.af = fneg <2 x double> %i.ae                 ; 2 uses
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.ah = shufflevector <2 x double> %i.af, <2 x double> %i.ae, <2 x i32> <i32 1, i32 3>
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !15, !noalias !211 ; 2 uses
  %i.ak = fneg double %i.aj
  %i.al = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.aj, i64 1
  %i.an = load double, ptr %4, align 8, !tbaa !15, !noalias !214 ; 2 uses
  %i.ao = fneg double %i.an
  %i.ap = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.an, i64 1
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load <2 x double>, ptr %i.ar, align 8, !tbaa !15, !noalias !214 ; 3 uses
  %i.at = fneg <2 x double> %i.as                 ; 2 uses
  %i.au = shufflevector <2 x double> %i.at, <2 x double> %i.as, <2 x i32> <i32 0, i32 2>
  %i.av = shufflevector <2 x double> %i.at, <2 x double> %i.as, <2 x i32> <i32 1, i32 3>
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.aw = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.y) #26, !srcloc !122
  %i.ax = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.o) #25, !srcloc !123 ; 3 uses
  %i.ay = fadd <2 x double> %i.aw, %i.ax
  %i.az = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ay) #26, !srcloc !122
  store <2 x double> %i.az, ptr %5, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ba = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ag) #26, !srcloc !122
  %i.bb = fadd <2 x double> %i.ax, %i.ba
  %i.bc = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bb) #26, !srcloc !122
  store <2 x double> %i.bc, ptr %6, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.bd = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.aq) #26, !srcloc !122
  %i.be = fadd <2 x double> %i.ax, %i.bd
  %i.bf = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.be) #26, !srcloc !122
  store <2 x double> %i.bf, ptr %7, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.bg = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ac) #26, !srcloc !122
  %i.bh = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.p) #25, !srcloc !123 ; 3 uses
  %i.bi = fadd <2 x double> %i.bg, %i.bh
  %i.bj = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bi) #26, !srcloc !122
  store <2 x double> %i.bj, ptr %8, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.bk = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ah) #26, !srcloc !122
  %i.bl = fadd <2 x double> %i.bh, %i.bk
  %i.bm = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bl) #26, !srcloc !122
  store <2 x double> %i.bm, ptr %9, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.bn = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.au) #26, !srcloc !122
  %i.bo = fadd <2 x double> %i.bh, %i.bn
  %i.bp = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bo) #26, !srcloc !122
  store <2 x double> %i.bp, ptr %10, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.bq = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ad) #26, !srcloc !122
  %i.br = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.u) #25, !srcloc !123 ; 3 uses
  %i.bs = fadd <2 x double> %i.bq, %i.br
  %i.bt = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bs) #26, !srcloc !122
  store <2 x double> %i.bt, ptr %11, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.bu = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.am) #26, !srcloc !122
  %i.bv = fadd <2 x double> %i.br, %i.bu
  %i.bw = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bv) #26, !srcloc !122
  store <2 x double> %i.bw, ptr %12, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.bx = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.av) #26, !srcloc !122
  %i.by = fadd <2 x double> %i.br, %i.bx
  %i.bz = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.by) #26, !srcloc !122
  store <2 x double> %i.bz, ptr %13, align 16
  %i.ca = invoke <2 x double> @_ZN4CGAL11determinantINS_11Interval_ntILb0EEEEET_RKS3_S5_S5_S5_S5_S5_S5_S5_S5_(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %13)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.cb = extractelement <2 x double> %i.ca, i64 0 ; 2 uses
  %i.cc = fneg double %i.cb
  %i.cd = fcmp olt double %i.cb, 0.000000e+00
  %i.ce = extractelement <2 x double> %i.ca, i64 1 ; 2 uses
  br i1 %i.cd, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.cf = fcmp olt double %i.ce, 0.000000e+00
  br i1 %i.cf, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %14 = fcmp une double %i.ce, %i.cc
  %15 = select i1 %14, i64 8589934591, i64 0
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.b, %bb.c
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %15, %bb.c ], [ 4294967297, %.noexc ], [ -1, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.5.0.i.i.i.i.i.i to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.5.0.i.i.i.i.i.i, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.cg = icmp ne i32 %.sroa.0.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.ch = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.323 = extractvalue { ptr, i32 } %i.ch, 1
  %i.ci = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #26
  %i.cj = icmp eq i32 %.323, %i.ci
  br i1 %i.cj, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %.327 = extractvalue { ptr, i32 } %i.ch, 0
  %i.ck = call ptr @__cxa_begin_catch(ptr %.327) #26 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.d, %bb.f
  %.2 = phi i32 [ undef, %bb.f ], [ %.sroa.0.0.extract.trunc.i, %bb.d ]
  %.1 = phi i1 [ true, %bb.f ], [ %i.cg, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.cl = load i32, ptr %i.c, align 4
  %i.cm = and i32 %i.cl, -24577
  %i.cn = or disjoint i32 %i.cm, %i.i
  store i32 %i.cn, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.1, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.co = call noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_3IST_EES16_S16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEENS_4SignEDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %.merged = phi { ptr, i32 } [ %i.cp, %bb.i ], [ %i.ch, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.cq = load i32, ptr %i.a, align 4
  %i.cr = and i32 %i.cq, -24577
  %i.cs = or disjoint i32 %i.cr, %i.i
  store i32 %i.cs, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %.merged

bb.k:                                             ; preds = %bb.g, %bb.h
  %.3 = phi i32 [ %i.co, %bb.h ], [ %.2, %bb.g ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_3IST_EES16_S16_S16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEENS_4SignEDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.CGAL::Point_3.101", align 16 ; 18 uses
  %6 = alloca %"class.CGAL::Point_3.101", align 16 ; 18 uses
  %7 = alloca %"class.CGAL::Point_3.101", align 16 ; 18 uses
  %8 = alloca %"class.CGAL::Point_3.101", align 16 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.101") align 16 %5, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.101") align 16 %6, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.101") align 16 %7, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.r

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.101") align 16 %8, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 192 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 192 ; 2 uses
  %i.i = invoke noundef i32 @_ZN4CGAL13orientationC3INS_9cpp_floatEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS4_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_S8_(ptr noundef nonnull align 16 dereferenceable(288) %5, ptr noundef nonnull align 16 dereferenceable(84) %i.a, ptr noundef nonnull align 16 dereferenceable(84) %i.b, ptr noundef nonnull align 16 dereferenceable(288) %6, ptr noundef nonnull align 16 dereferenceable(84) %i.c, ptr noundef nonnull align 16 dereferenceable(84) %i.d, ptr noundef nonnull align 16 dereferenceable(288) %7, ptr noundef nonnull align 16 dereferenceable(84) %i.e, ptr noundef nonnull align 16 dereferenceable(84) %i.f, ptr noundef nonnull align 16 dereferenceable(288) %8, ptr noundef nonnull align 16 dereferenceable(84) %i.g, ptr noundef nonnull align 16 dereferenceable(84) %i.h)
          to label %_ZNK4CGAL23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_3IS4_EES9_S9_S9_.exit unwind label %bb.t

_ZNK4CGAL23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_3IS4_EES9_S9_S9_.exit: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 265
  %i.k = load i8, ptr %i.j, align 1, !tbaa !72, !range !78, !noundef !79
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 266
  %i.n = load i8, ptr %i.m, align 2, !range !78
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond.i.i.i.i.i.i = select i1 %i.l, i1 true, i1 %i.o
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK4CGAL23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_3IS4_EES9_S9_S9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 200
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load i64, ptr %i.h, align 16
  %i.s = shl i64 %i.r, 3
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.s) #31
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i:                ; preds = %bb.e, %_ZNK4CGAL23CartesianKernelFunctors13Orientation_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_3IS4_EES9_S9_S9_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 169
  %i.u = load i8, ptr %i.t, align 1, !tbaa !72, !range !78, !noundef !79
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 170
  %i.x = load i8, ptr %i.w, align 2, !range !78
  %i.y = trunc nuw i8 %i.x to i1
  %or.cond.i.i.i.1.i.i.i = select i1 %i.v, i1 true, i1 %i.y
  br i1 %or.cond.i.i.i.1.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load i64, ptr %i.g, align 16
  %i.ac = shl i64 %i.ab, 3
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ac) #31
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i

_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i:              ; preds = %bb.f, %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 73
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !72, !range !78, !noundef !79
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 74
  %i.ah = load i8, ptr %i.ag, align 2, !range !78
  %i.ai = trunc nuw i8 %i.ah to i1
  %or.cond.i.i.i.2.i.i.i = select i1 %i.af, i1 true, i1 %i.ai
  br i1 %or.cond.i.i.i.2.i.i.i, label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = load i64, ptr %8, align 16
  %i.am = shl i64 %i.al, 3
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.am) #31
  br label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit

_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 265
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !72, !range !78, !noundef !79
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 266
  %i.ar = load i8, ptr %i.aq, align 2, !range !78
  %i.as = trunc nuw i8 %i.ar to i1
  %or.cond.i.i.i.i.i.i12 = select i1 %i.ap, i1 true, i1 %i.as
  br i1 %or.cond.i.i.i.i.i.i12, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i13, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 200
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = load i64, ptr %i.f, align 16
  %i.aw = shl i64 %i.av, 3
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.aw) #31
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i13

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i13:              ; preds = %bb.h, %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 169
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !72, !range !78, !noundef !79
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 170
  %i.bb = load i8, ptr %i.ba, align 2, !range !78
  %i.bc = trunc nuw i8 %i.bb to i1
  %or.cond.i.i.i.1.i.i.i14 = select i1 %i.az, i1 true, i1 %i.bc
  br i1 %or.cond.i.i.i.1.i.i.i14, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i15, label %bb.i

bb.i:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i13
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = load i64, ptr %i.e, align 16
  %i.bg = shl i64 %i.bf, 3
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bg) #31
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i15

_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i15:            ; preds = %bb.i, %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i13
end_hunk_0
