inline.NumInlined: 21423
inline.NumDeleted: 1880
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 417
loop-unroll.NumUnrolled: 561
begin_hunk_0_@_ZN6duckdb14DivideOperator9OperationIfffEET1_T_T0_
define noundef float @_ZN6duckdb14DivideOperator9OperationIfffEET1_T_T0_(float noundef %0, float noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = fdiv float %0, %1
  ret float %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef double @_ZN6duckdb14DivideOperator9OperationIdddEET1_T_T0_(double noundef %0, double noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = fdiv double %0, %1
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN6duckdb14DivideOperator9OperationINS_9hugeint_tES2_S2_EET1_T_T0_(i64 %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::hugeint_t", align 8 ; 3 uses
  %5 = alloca %"struct.duckdb::hugeint_t", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  store i64 %0, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %1, ptr %i.a, align 8
  store i64 %2, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %3, ptr %i.b, align 8
  %i.c = icmp eq i64 %2, 0
  %i.d = icmp eq i64 %3, 0
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %6, align 8, !tbaa !7      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.k = call { i64, i64 } @_ZNK6duckdb9hugeint_tdvERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
  ret { i64, i64 } %i.k

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

declare { i64, i64 } @_ZNK6duckdb9hugeint_tdvERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %0, i64 %1, double noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::interval_t", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = fdiv double 1.000000e+00, %2
  %i.b = call noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_(i64 %0, i64 %1, double noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn11 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %.fca.0.load = load i64, ptr %3, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn10 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn11, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn10

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_(i64 %0, i64 %1, double noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = sitofp i32 %.sroa.0.0.extract.trunc to double ; 2 uses
  %i.c = fmul double %2, %i.b                     ; 4 uses
  %i.d = fcmp uno double %i.c, 0.000000e+00
  %i.e = fcmp olt double %i.c, f0xC1E0000000000000
  %or.cond = or i1 %i.d, %i.e
  %i.f = fcmp ogt double %i.c, f0x41DFFFFFFFC00000
  %or.cond21 = or i1 %i.f, %or.cond
  br i1 %or.cond21, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.g = fptosi double %i.c to i32                ; 2 uses
  store i32 %i.g, ptr %3, align 8, !tbaa !437
  %i.h = sitofp i32 %.sroa.3.0.extract.trunc to double ; 2 uses
  %i.i = fmul double %2, %i.h                     ; 5 uses
  store double %i.i, ptr %i.a, align 8, !tbaa !439
  %i.j = fcmp uno double %i.i, 0.000000e+00
  %i.k = fcmp olt double %i.i, f0xC1E0000000000000
  %or.cond22 = or i1 %i.j, %i.k
  %i.l = fcmp ogt double %i.i, f0x41DFFFFFFFC00000
  %or.cond23 = or i1 %i.l, %or.cond22
  br i1 %or.cond23, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = fptosi double %i.i to i32                ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %4 = insertelement <2 x i32> poison, i32 %i.g, i64 0
  %5 = insertelement <2 x i32> %4, i32 %i.m, i64 1
  %6 = sitofp <2 x i32> %5 to <2 x double>
  %7 = fneg <2 x double> %6
  %8 = insertelement <2 x double> poison, double %i.b, i64 0
  %9 = insertelement <2 x double> %8, double %i.h, i64 1
  %10 = insertelement <2 x double> poison, double %2, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %12 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %11, <2 x double> %7) ; 2 uses
  %13 = extractelement <2 x double> %12, i64 0
  %i.o = fmul double %13, 3.000000e+01
  %i.p = fmul double %i.o, 1.000000e+06
  %i.q = tail call double @llvm.nearbyint.f64(double %i.p)
  %i.r = fdiv double %i.q, 1.000000e+06           ; 2 uses
  %i.s = fptosi double %i.r to i32                ; 2 uses
  %14 = extractelement <2 x double> %12, i64 1
  %i.t = fadd double %14, %i.r
  %i.u = sitofp i32 %i.s to double
  %i.v = fsub double %i.t, %i.u
  %i.w = fmul double %i.v, 8.640000e+04
  %i.x = fmul double %i.w, 1.000000e+06
  %i.y = tail call double @llvm.nearbyint.f64(double %i.x)
  %i.z = fdiv double %i.y, 1.000000e+06           ; 4 uses
  %i.aa = tail call double @llvm.fabs.f64(double %i.z)
  %i.ab = fcmp ult double %i.aa, 8.640000e+04
  br i1 %i.ab, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = fdiv double %i.z, 8.640000e+04
  %i.ad = fptosi double %i.ac to i32              ; 2 uses
  %i.ae = add nsw i32 %i.ad, %i.m
  %i.af = mul nsw i32 %i.ad, 86400
  %i.ag = sitofp i32 %i.af to double
  %i.ah = fsub nnan double %i.z, %i.ag
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ai = phi i32 [ %i.m, %bb.c ], [ %i.ae, %bb.d ]
  %.020 = phi double [ %i.z, %bb.c ], [ %i.ah, %bb.d ]
  %i.aj = add nsw i32 %i.ai, %i.s
  store i32 %i.aj, ptr %i.n, align 4, !tbaa !441
  %i.ak = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
  br i1 %i.ak, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.al = load double, ptr %i.a, align 8, !tbaa !439
  %i.am = fmul double %.020, 1.000000e+06
  %i.an = call double @llvm.fmuladd.f64(double %i.al, double %2, double %i.am)
  %i.ao = call double @llvm.nearbyint.f64(double %i.an) ; 3 uses
  store double %i.ao, ptr %i.a, align 8, !tbaa !439
  %i.ap = fcmp uno double %i.ao, 0.000000e+00
  br i1 %i.ap, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i1 noundef zeroext false)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.f ], [ %i.ar, %bb.g ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb22OperatorFloatDivideFun12GetFunctionsEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.duckdb::ScalarFunctionSet") align 8 %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %2 = alloca %"class.duckdb::ScalarFunction", align 8 ; 15 uses
  %3 = alloca %"class.duckdb::vector", align 8    ; 9 uses
  %4 = alloca [2 x %"struct.duckdb::LogicalType"], align 8 ; 11 uses
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %6 = alloca %"class.std::function", align 8     ; 8 uses
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %8 = alloca %"class.duckdb::ScalarFunction", align 8 ; 15 uses
  %9 = alloca %"class.duckdb::vector", align 8    ; 9 uses
  %10 = alloca [2 x %"struct.duckdb::LogicalType"], align 8 ; 11 uses
  %11 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %12 = alloca %"class.std::function", align 8    ; 8 uses
  %13 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %14 = alloca %"class.duckdb::ScalarFunction", align 8 ; 15 uses
  %15 = alloca %"class.duckdb::vector", align 8   ; 9 uses
  %16 = alloca [2 x %"struct.duckdb::LogicalType"], align 8 ; 11 uses
  %17 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %18 = alloca %"class.std::function", align 8    ; 9 uses
  %19 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !39
  store i8 47, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !15
  invoke void @_ZN6duckdb17ScalarFunctionSetC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1)
          to label %bb.a unwind label %bb.bs

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  call void @_ZdlPv(ptr noundef %i.d) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef zeroext 22)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit177

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 noundef zeroext 22)
          to label %bb.c unwind label %.loopexit177.loopexit188

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.h = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28
          to label %.noexc127 unwind label %.body128.thread ; 6 uses

.noexc127:                                        ; preds = %bb.c
  store ptr %i.h, ptr %3, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !44
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %.thread232

.thread232:                                       ; preds = %.noexc127
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = call ptr @__cxa_begin_catch(ptr %i.l) #25 ; 0 uses
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc127
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !45
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 noundef zeroext 22)
          to label %bb.h unwind label %bb.bt

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #25 ; 0 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #25
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.thread232
  invoke void @__cxa_rethrow() #26
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body128 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #29
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  unreachable

.body128.thread:                                  ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body128:                                         ; preds = %bb.d
  %.pr = load ptr, ptr %3, align 8, !tbaa !41     ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.g

bb.g:                                             ; preds = %.body128
  call void @_ZdlPv(ptr noundef nonnull %.pr) #27
  br label %.body

bb.h:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 noundef zeroext 0)
          to label %bb.i unwind label %bb.bu

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6duckdb14ScalarFunctionC1ENS_6vectorINS_11LogicalTypeELb1ESaIS2_EEES2_St8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEEPFNS_10unique_ptrINS_12FunctionDataESt14default_deleteISF_ELb1EEERNS_13ClientContextERS0_RNS1_INSE_INS_10ExpressionESG_ISM_ELb1EEELb1ESaISO_EEEEPFSI_RNS_23ScalarFunctionBindInputESL_SR_EPFNSE_INS_14BaseStatisticsESG_ISY_ELb1EEESK_RNS_23FunctionStatisticsInputEEPFNSE_INS_18FunctionLocalStateESG_IS15_ELb1EEES9_RKNS_23BoundFunctionExpressionEPSF_ES2_NS_17FunctionStabilityENS_20FunctionNullHandlingEPFS2_SK_RKS4_mE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull @_ZN6duckdb12_GLOBAL__N_123BindBinaryFloatingPointINS_14DivideOperatorEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS4_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS3_INS_10ExpressionES5_ISD_ELb1EEELb1ESaISF_EEE, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %7, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null)
          to label %bb.j unwind label %bb.bv

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !357  ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !360
  %.not.i.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6duckdb18BaseScalarFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(360) %i.y, ptr noundef nonnull align 8 dereferenceable(360) %2)
          to label %.noexc54 unwind label %bb.bw

.noexc54:                                         ; preds = %bb.k
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %i.y, align 8, !tbaa !57
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_130BinaryScalarFunctionIgnoreZeroINS_10interval_tEdS2_NS_14DivideOperatorENS0_23BinaryZeroIsNullWrapperEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.e)
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !92
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !92   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !93   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i.i: ; preds = %bb.b
  %i.t = load i64, ptr %i.s, align 8, !tbaa !18
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i.i, label %bb.c

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i.i, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !93   ; 2 uses
  %.not.i.i12.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i12.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit14.thread.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit14.i.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit14.i.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i.i
  %i.x = load i64, ptr %i.w, align 8, !tbaa !18
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit14.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit14.i.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit14.thread.i.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit14.i.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.m, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !18 ; 2 uses
  %i.z = load double, ptr %i.o, align 8, !tbaa !439 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.ab = fcmp oeq double %i.z, 0.000000e+00
  br i1 %i.ab, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit14.thread.i.i.i
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !93 ; 2 uses
  %.not.i.i15.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i15.i.i.i, label %bb.e, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !95
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 noundef %i.ae)
  %.pre.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !93
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.af = phi ptr [ %.pre.i.i.i.i.i, %bb.e ], [ %i.ac, %bb.d ] ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !18
  %i.ah = and i64 %i.ag, -2
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !18
  %i.ai = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.copyload.i.i.i, 0
  %i.aj = insertvalue { i64, i64 } %i.ai, i64 %.sroa.2.0.copyload.i.i.i, 1
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i

bb.f:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit14.thread.i.i.i
  %i.ak = tail call { i64, i64 } @_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.0.0.copyload.i.i.i, i64 %.sroa.2.0.copyload.i.i.i, double noundef %i.z)
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i

_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i: ; preds = %bb.f, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i
  %.fca.1.insert.merged.i.i.i.i = phi { i64, i64 } [ %i.aj, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i ], [ %i.ak, %bb.f ] ; 2 uses
  %i.al = extractvalue { i64, i64 } %.fca.1.insert.merged.i.i.i.i, 0
  %i.am = extractvalue { i64, i64 } %.fca.1.insert.merged.i.i.i.i, 1
  store i64 %i.al, ptr %i.q, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.am, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !18
  br label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit

bb.g:                                             ; preds = %bb.a
  %i.an = icmp eq i8 %i.h, 0
  %or.cond3.i.i = and i1 %i.an, %i.k
  br i1 %or.cond3.i.i, label %bb.h, label %bb.ac

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.d)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !92 ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.e)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !92 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !93 ; 2 uses
  %.not.i.i.i40.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i40.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i41.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i41.i.i: ; preds = %bb.h
  %i.au = load i64, ptr %i.at, align 8, !tbaa !18
  %i.av = trunc i64 %i.au to i1
  br i1 %i.av, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i41.i.i
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i41.i.i, %bb.h
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !92 ; 5 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 10 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.d)
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 noundef %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !93, !noalias !454
  %.not.i.i18.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i18.i.i.i, label %.preheader.i.i.i.i, label %bb.k

.preheader.i.i.i.i:                               ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i
  %.not106.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not106.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %.lr.ph104.i.i.i.i

.lr.ph104.i.i.i.i:                                ; preds = %.preheader.i.i.i.i
  %i.bb = load double, ptr %i.ar, align 8, !tbaa !439, !alias.scope !450, !noalias !455 ; 2 uses
  %i.bc = fcmp oeq double %i.bb, 0.000000e+00
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 64
  br i1 %i.bc, label %.lr.ph104.split.us.split.i.i.i.i, label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i.i.i

.lr.ph104.split.us.split.i.i.i.i:                 ; preds = %.lr.ph104.i.i.i.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i79.us.i.i.i.i
  %i.be = phi ptr [ %i.bi, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i79.us.i.i.i.i ], [ null, %.lr.ph104.i.i.i.i ] ; 2 uses
  %.070103.us.i.i.i.i = phi i64 [ %i.br, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i79.us.i.i.i.i ], [ 0, %.lr.ph104.i.i.i.i ] ; 5 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %.070103.us.i.i.i.i
  %i.bg = load <2 x i64>, ptr %i.bf, align 8, !alias.scope !447, !noalias !456
  %.not.i.i78.us.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i78.us.i.i.i.i, label %bb.j, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i79.us.i.i.i.i

bb.j:                                             ; preds = %.lr.ph104.split.us.split.i.i.i.i
  %i.bh = load i64, ptr %i.bd, align 8, !tbaa !95, !noalias !454
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 noundef %i.bh), !noalias !454
  %.pre.i.i80.us.i.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !93, !noalias !454
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i79.us.i.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i79.us.i.i.i.i: ; preds = %bb.j, %.lr.ph104.split.us.split.i.i.i.i
  %i.bi = phi ptr [ %.pre.i.i80.us.i.i.i.i, %bb.j ], [ %i.be, %.lr.ph104.split.us.split.i.i.i.i ] ; 2 uses
  %i.bj = lshr i64 %.070103.us.i.i.i.i, 6
  %i.bk = and i64 %.070103.us.i.i.i.i, 63
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = xor i64 %i.bl, -1
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !18, !noalias !454
  %i.bp = and i64 %i.bo, %i.bm
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !18, !noalias !454
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %.070103.us.i.i.i.i
  store <2 x i64> %i.bg, ptr %i.bq, align 8, !alias.scope !452, !noalias !457
  %i.br = add nuw i64 %.070103.us.i.i.i.i, 1      ; 2 uses
  %exitcond119.not.i.i.i.i = icmp eq i64 %i.br, %i.g
  br i1 %exitcond119.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %.lr.ph104.split.us.split.i.i.i.i, !llvm.loop !458

bb.k:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i
  %i.bs = add i64 %i.g, 63
  %i.bt = lshr i64 %i.bs, 6                       ; 2 uses
  %.not105.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not105.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %.lr.ph102.i.i.i.i

.lr.ph102.i.i.i.i:                                ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.loopexit89.i.i.i.i, %.lr.ph102.i.i.i.i
  %.0101.i.i.i.i = phi i64 [ 0, %.lr.ph102.i.i.i.i ], [ %.4.i.i.i.i, %.loopexit89.i.i.i.i ] ; 10 uses
  %.069100.i.i.i.i = phi i64 [ 0, %.lr.ph102.i.i.i.i ], [ %i.fu, %.loopexit89.i.i.i.i ] ; 2 uses
  %i.bx = load ptr, ptr %i.ay, align 8, !tbaa !93, !noalias !454 ; 3 uses
  %.not.i71.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i71.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i: ; preds = %bb.l
  %i.by = add i64 %.0101.i.i.i.i, 64
  %i.bz = call noundef i64 @llvm.umin.i64(i64 %i.by, i64 %i.g)
  br label %.preheader90.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i: ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.069100.i.i.i.i
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !18, !noalias !454 ; 2 uses
  %i.cc = add i64 %.0101.i.i.i.i, 64
  %i.cd = call noundef i64 @llvm.umin.i64(i64 %i.cc, i64 %i.g) ; 5 uses
  switch i64 %i.cb, label %.preheader88.i.i.i.i [
    i64 -1, label %.preheader90.i.i.i.i
    i64 0, label %.loopexit89.i.i.i.i
  ]

.preheader90.i.i.i.i:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i
  %i.ce = phi i64 [ %i.bz, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i ], [ %i.cd, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i ] ; 5 uses
  %i.cf = icmp ult i64 %.0101.i.i.i.i, %i.ce
  br i1 %i.cf, label %.lr.ph.i.i.i.i, label %.loopexit89.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader90.i.i.i.i
  %i.cg = load double, ptr %i.ar, align 8, !tbaa !439, !alias.scope !450, !noalias !455 ; 2 uses
  %i.ch = fcmp oeq double %i.cg, 0.000000e+00
  %i.ci = fdiv double 1.000000e+00, %i.cg         ; 4 uses
  br i1 %i.ch, label %.lr.ph.split.us.i.i.i.i, label %.lr.ph.split.i.i.i.i.preheader

.lr.ph.split.i.i.i.i.preheader:                   ; preds = %.lr.ph.i.i.i.i
  %14 = insertelement <2 x double> poison, double %i.ci, i64 0
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.us.i.i.i.i
  %i.cj = phi ptr [ %i.cn, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.us.i.i.i.i ], [ %i.bx, %.lr.ph.i.i.i.i ] ; 2 uses
  %.196.us.i.i.i.i = phi i64 [ %i.cw, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.us.i.i.i.i ], [ %.0101.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %.196.us.i.i.i.i
  %i.cl = load <2 x i64>, ptr %i.ck, align 8, !alias.scope !447, !noalias !456
  %.not.i.i.us.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.us.i.i.i.i, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.us.i.i.i.i

bb.m:                                             ; preds = %.lr.ph.split.us.i.i.i.i
  %i.cm = load i64, ptr %i.bw, align 8, !tbaa !95, !noalias !454
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 noundef %i.cm), !noalias !454
  %.pre.i.i.us.i.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !93, !noalias !454
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.us.i.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.us.i.i.i.i: ; preds = %bb.m, %.lr.ph.split.us.i.i.i.i
  %i.cn = phi ptr [ %.pre.i.i.us.i.i.i.i, %bb.m ], [ %i.cj, %.lr.ph.split.us.i.i.i.i ] ; 2 uses
  %i.co = lshr i64 %.196.us.i.i.i.i, 6
  %i.cp = and i64 %.196.us.i.i.i.i, 63
  %i.cq = shl nuw i64 1, %i.cp
  %i.cr = xor i64 %i.cq, -1
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.co ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !18, !noalias !454
  %i.cu = and i64 %i.ct, %i.cr
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !18, !noalias !454
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %.196.us.i.i.i.i
  store <2 x i64> %i.cl, ptr %i.cv, align 8, !alias.scope !452, !noalias !457
  %i.cw = add i64 %.196.us.i.i.i.i, 1             ; 2 uses
  %exitcond114.not.i.i.i.i = icmp eq i64 %i.cw, %i.ce
  br i1 %exitcond114.not.i.i.i.i, label %.loopexit89.i.i.i.i, label %.lr.ph.split.us.i.i.i.i, !llvm.loop !460

.preheader88.i.i.i.i:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %i.cx = icmp ult i64 %.0101.i.i.i.i, %i.cd
  br i1 %i.cx, label %.lr.ph98.i.i.i.i, label %.loopexit89.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i.preheader, %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i.i.i
  %.196.i.i.i.i = phi i64 [ %i.ew, %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i.i.i ], [ %.0101.i.i.i.i, %.lr.ph.split.i.i.i.i.preheader ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %.196.i.i.i.i ; 2 uses
  %.sroa.021.0.copyload.i.i.i.i = load i64, ptr %i.cy, align 8, !alias.scope !447, !noalias !456 ; 2 uses
  %.sroa.422.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.sroa.422.0.copyload.i.i.i.i = load i64, ptr %.sroa.422.0..sroa_idx.i.i.i.i, align 8, !tbaa !18, !alias.scope !447, !noalias !456
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !454
  %.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.021.0.copyload.i.i.i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25, !noalias !454
  %i.cz = sitofp i32 %.sroa.0.0.extract.trunc.i.i.i.i.i to double ; 2 uses
  %i.da = fmul double %i.ci, %i.cz                ; 4 uses
  %i.db = fcmp uno double %i.da, 0.000000e+00
  %i.dc = fcmp olt double %i.da, f0xC1E0000000000000
  %or.cond.i.i.i.i.i = or i1 %i.db, %i.dc
  %i.dd = fcmp ogt double %i.da, f0x41DFFFFFFFC00000
  %or.cond21.i.i.i.i.i = or i1 %i.dd, %or.cond.i.i.i.i.i
  br i1 %or.cond21.i.i.i.i.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.i.i.i.i
  %.sroa.3.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.021.0.copyload.i.i.i.i, 32
  %.sroa.3.0.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i.i.i to i32
  %i.de = fptosi double %i.da to i32              ; 2 uses
  store i32 %i.de, ptr %11, align 16, !tbaa !437, !noalias !454
  %i.df = sitofp i32 %.sroa.3.0.extract.trunc.i.i.i.i.i to double ; 2 uses
  %i.dg = fmul double %i.ci, %i.df                ; 5 uses
  store double %i.dg, ptr %i.c, align 8, !tbaa !439, !noalias !454
  %i.dh = fcmp uno double %i.dg, 0.000000e+00
  %i.di = fcmp olt double %i.dg, f0xC1E0000000000000
  %or.cond22.i.i.i.i.i = or i1 %i.dh, %i.di
  %i.dj = fcmp ogt double %i.dg, f0x41DFFFFFFFC00000
  %or.cond23.i.i.i.i.i = or i1 %i.dj, %or.cond22.i.i.i.i.i
  br i1 %or.cond23.i.i.i.i.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dk = fptosi double %i.dg to i32              ; 3 uses
  %16 = insertelement <2 x i32> poison, i32 %i.de, i64 0
  %17 = insertelement <2 x i32> %16, i32 %i.dk, i64 1
  %18 = sitofp <2 x i32> %17 to <2 x double>
  %19 = fneg <2 x double> %18
  %20 = insertelement <2 x double> poison, double %i.cz, i64 0
  %21 = insertelement <2 x double> %20, double %i.df, i64 1
  %22 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %21, <2 x double> %15, <2 x double> %19) ; 2 uses
  %23 = extractelement <2 x double> %22, i64 0
  %i.dl = fmul double %23, 3.000000e+01
  %i.dm = fmul double %i.dl, 1.000000e+06
  %i.dn = call double @llvm.nearbyint.f64(double %i.dm)
  %i.do = fdiv double %i.dn, 1.000000e+06         ; 2 uses
  %i.dp = fptosi double %i.do to i32              ; 2 uses
  %24 = extractelement <2 x double> %22, i64 1
  %i.dq = fadd double %24, %i.do
  %i.dr = sitofp i32 %i.dp to double
  %i.ds = fsub double %i.dq, %i.dr
  %i.dt = fmul double %i.ds, 8.640000e+04
  %i.du = fmul double %i.dt, 1.000000e+06
  %i.dv = call double @llvm.nearbyint.f64(double %i.du)
  %i.dw = fdiv double %i.dv, 1.000000e+06         ; 4 uses
  %i.dx = call double @llvm.fabs.f64(double %i.dw)
  %i.dy = fcmp ult double %i.dx, 8.640000e+04
  br i1 %i.dy, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dz = fdiv double %i.dw, 8.640000e+04
  %i.ea = fptosi double %i.dz to i32              ; 2 uses
  %i.eb = add nsw i32 %i.ea, %i.dk
  %i.ec = mul nsw i32 %i.ea, 86400
  %i.ed = sitofp i32 %i.ec to double
  %i.ee = fsub nnan double %i.dw, %i.ed
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ef = phi i32 [ %i.dk, %bb.o ], [ %i.eb, %bb.p ]
  %.020.i.i.i.i.i = phi double [ %i.dw, %bb.o ], [ %i.ee, %bb.p ]
  %i.eg = add nsw i32 %i.ef, %i.dp
  store i32 %i.eg, ptr %i.bu, align 4, !tbaa !441, !noalias !454
  %i.eh = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.422.0.copyload.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i1 noundef zeroext false), !noalias !454
  br i1 %i.eh, label %bb.r, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.ei = load double, ptr %i.c, align 8, !tbaa !439, !noalias !454
  %i.ej = fmul double %.020.i.i.i.i.i, 1.000000e+06
  %i.ek = call double @llvm.fmuladd.f64(double %i.ei, double %i.ci, double %i.ej)
  %i.el = call double @llvm.nearbyint.f64(double %i.ek) ; 3 uses
  store double %i.el, ptr %i.c, align 8, !tbaa !439, !noalias !454
  %i.em = fcmp uno double %i.el, 0.000000e+00
  br i1 %i.em, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i.i.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i.i.i

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.n, %.lr.ph.split.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !454
  br label %.loopexit92.i.i.i.i

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i.i.i: ; preds = %bb.r
  %i.en = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.el, ptr noundef nonnull align 8 dereferenceable(8) %i.bv, i1 noundef zeroext false), !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !454
  br i1 %i.en, label %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i.i.i, label %.loopexit92.i.i.i.i

.loopexit92.i.i.i.i:                              ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i.i.i, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i.i.i
  %i.eo = call ptr @__cxa_allocate_exception(i64 16) #25, !noalias !454 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !454
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !454
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.s unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i, !noalias !454

bb.s:                                             ; preds = %.loopexit92.i.i.i.i
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.t unwind label %bb.u, !noalias !454

bb.t:                                             ; preds = %bb.s
  invoke void @__cxa_throw(ptr nonnull %i.eo, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.w unwind label %bb.u, !noalias !454

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i: ; preds = %.loopexit92.i.i.i.i
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !454
  br label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0.i82.i.i.i.i = phi i1 [ false, %bb.t ], [ true, %bb.s ] ; 2 uses
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.er = load ptr, ptr %12, align 8, !tbaa !7, !noalias !454 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.er) #27, !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !454
  br i1 %.0.i82.i.i.i.i, label %bb.v, label %common.resume.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !454
  br i1 %.0.i82.i.i.i.i, label %bb.v, label %common.resume.i.i

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i
  %.pn11.i.i.i.i.i = phi { ptr, i32 } [ %i.ep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i ], [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.eo) #25, !noalias !454
  br label %common.resume.i.i

common.resume.i.i:                                ; preds = %bb.ej, %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i123.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122.i.i, %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i76.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i75.i.i, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i, %bb.ej ], [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.jm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i75.i.i ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i ], [ %.pn11.i.i.i.i.i, %bb.v ], [ %i.jm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i76.i.i ], [ %.pn11.i.i.i72.i.i, %bb.at ], [ %i.os, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i123.i.i ], [ %.pn11.i.i.i120.i.i, %bb.bw ], [ %i.os, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.w:                                             ; preds = %bb.t
  unreachable

_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i.i.i: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i.i.i
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %.196.i.i.i.i
  %i.ev = load <2 x i64>, ptr %11, align 16, !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !454
  store <2 x i64> %i.ev, ptr %i.eu, align 8, !alias.scope !452, !noalias !457
  %i.ew = add i64 %.196.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ew, %i.ce
  br i1 %exitcond.not.i.i.i.i, label %.loopexit89.i.i.i.i, label %.lr.ph.split.i.i.i.i, !llvm.loop !460

.lr.ph98.i.i.i.i:                                 ; preds = %.preheader88.i.i.i.i, %bb.ab
  %.297.i.i.i.i = phi i64 [ %i.ft, %bb.ab ], [ %.0101.i.i.i.i, %.preheader88.i.i.i.i ] ; 6 uses
  %i.ex = sub nuw i64 %.297.i.i.i.i, %.0101.i.i.i.i
  %i.ey = shl nuw i64 1, %i.ex
  %i.ez = and i64 %i.ey, %i.cb
  %.not.i.i.i.i = icmp eq i64 %i.ez, 0
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %.lr.ph98.i.i.i.i
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %.297.i.i.i.i ; 2 uses
  %.sroa.013.0.copyload.i.i.i.i = load i64, ptr %i.fa, align 8, !alias.scope !447, !noalias !456 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %.sroa.414.0.copyload.i.i.i.i = load i64, ptr %.sroa.414.0..sroa_idx.i.i.i.i, align 8, !tbaa !18, !alias.scope !447, !noalias !456 ; 2 uses
  %i.fb = load double, ptr %i.ar, align 8, !tbaa !439, !alias.scope !450, !noalias !455 ; 2 uses
  %i.fc = fcmp oeq double %i.fb, 0.000000e+00
  br i1 %i.fc, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.fd = load ptr, ptr %i.ay, align 8, !tbaa !93, !noalias !454 ; 2 uses
  %.not.i.i73.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i73.i.i.i.i, label %bb.z, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.fe = load i64, ptr %i.bw, align 8, !tbaa !95, !noalias !454
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 noundef %i.fe), !noalias !454
  %.pre.i.i75.i.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !93, !noalias !454
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i.i.i: ; preds = %bb.z, %bb.y
  %i.ff = phi ptr [ %.pre.i.i75.i.i.i.i, %bb.z ], [ %i.fd, %bb.y ]
  %i.fg = lshr i64 %.297.i.i.i.i, 6
  %i.fh = and i64 %.297.i.i.i.i, 63
  %i.fi = shl nuw i64 1, %i.fh
  %i.fj = xor i64 %i.fi, -1
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fg ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !18, !noalias !454
  %i.fm = and i64 %i.fl, %i.fj
  store i64 %i.fm, ptr %i.fk, align 8, !tbaa !18, !noalias !454
  %i.fn = insertvalue { i64, i64 } poison, i64 %.sroa.013.0.copyload.i.i.i.i, 0
  %i.fo = insertvalue { i64, i64 } %i.fn, i64 %.sroa.414.0.copyload.i.i.i.i, 1
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit76.i.i.i.i

bb.aa:                                            ; preds = %bb.x
  %i.fp = call { i64, i64 } @_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.013.0.copyload.i.i.i.i, i64 %.sroa.414.0.copyload.i.i.i.i, double noundef %i.fb), !noalias !454
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit76.i.i.i.i

_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit76.i.i.i.i: ; preds = %bb.aa, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i.i.i
  %.fca.1.insert.merged.i72.i.i.i.i = phi { i64, i64 } [ %i.fo, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i.i.i ], [ %i.fp, %bb.aa ] ; 2 uses
  %i.fq = extractvalue { i64, i64 } %.fca.1.insert.merged.i72.i.i.i.i, 0
  %i.fr = extractvalue { i64, i64 } %.fca.1.insert.merged.i72.i.i.i.i, 1
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %.297.i.i.i.i ; 2 uses
  store i64 %i.fq, ptr %i.fs, align 8, !alias.scope !452, !noalias !457
  %.sroa.411.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i64 %i.fr, ptr %.sroa.411.0..sroa_idx.i.i.i.i, align 8, !tbaa !18, !alias.scope !452, !noalias !457
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit76.i.i.i.i, %.lr.ph98.i.i.i.i
  %i.ft = add i64 %.297.i.i.i.i, 1                ; 2 uses
  %exitcond115.not.i.i.i.i = icmp eq i64 %i.ft, %i.cd
  br i1 %exitcond115.not.i.i.i.i, label %.loopexit89.i.i.i.i, label %.lr.ph98.i.i.i.i, !llvm.loop !461

.loopexit89.i.i.i.i:                              ; preds = %bb.ab, %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i.i.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.us.i.i.i.i, %.preheader88.i.i.i.i, %.preheader90.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %.4.i.i.i.i = phi i64 [ %i.cd, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i ], [ %i.ce, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.us.i.i.i.i ], [ %.0101.i.i.i.i, %.preheader88.i.i.i.i ], [ %.0101.i.i.i.i, %.preheader90.i.i.i.i ], [ %i.ce, %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i.i.i ], [ %i.cd, %bb.ab ]
  %i.fu = add nuw nsw i64 %.069100.i.i.i.i, 1     ; 2 uses
  %exitcond116.not.i.i.i.i = icmp eq i64 %i.fu, %i.bt
  br i1 %exitcond116.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %bb.l, !llvm.loop !462

_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i.i.i: ; preds = %.lr.ph104.i.i.i.i, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i.i.i
  %.070103.i.i.i.i = phi i64 [ %i.ga, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i.i.i ], [ 0, %.lr.ph104.i.i.i.i ] ; 3 uses
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %.070103.i.i.i.i ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.fv, align 8, !alias.scope !447, !noalias !456
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %.sroa.43.0.copyload.i.i.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !tbaa !18, !alias.scope !447, !noalias !456
  %i.fw = tail call { i64, i64 } @_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.02.0.copyload.i.i.i.i, i64 %.sroa.43.0.copyload.i.i.i.i, double noundef %i.bb), !noalias !454 ; 2 uses
  %i.fx = extractvalue { i64, i64 } %i.fw, 0
  %i.fy = extractvalue { i64, i64 } %i.fw, 1
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %.070103.i.i.i.i ; 2 uses
  store i64 %i.fx, ptr %i.fz, align 8, !alias.scope !452, !noalias !457
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i64 %i.fy, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !18, !alias.scope !452, !noalias !457
  %i.ga = add nuw i64 %.070103.i.i.i.i, 1         ; 2 uses
  %exitcond117.not.i.i.i.i = icmp eq i64 %i.ga, %i.g
  br i1 %exitcond117.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i.i.i, !llvm.loop !463

bb.ac:                                            ; preds = %bb.g
  %i.gb = icmp eq i8 %i.i, 0
  %or.cond5.i.i = and i1 %i.j, %i.gb
  br i1 %or.cond5.i.i, label %bb.ad, label %bb.be

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.d)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !92 ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.e)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !92 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !93 ; 2 uses
  %.not.i.i.i43.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i43.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i: ; preds = %bb.ad
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !18
  %i.gj = trunc i64 %i.gi to i1
  br i1 %i.gj, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i, %bb.ad
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !92 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 12 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.e)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %i.gm, ptr noundef nonnull align 8 dereferenceable(32) %i.gn, i64 noundef %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.go = load ptr, ptr %i.gm, align 8, !tbaa !93, !noalias !471
  %.not.i.i18.i46.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i18.i46.i.i, label %.preheader.i.i96.i.i, label %bb.af

.preheader.i.i96.i.i:                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i
  %.not106.i.i97.i.i = icmp eq i64 %i.g, 0
  br i1 %.not106.i.i97.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %.lr.ph104.i.i98.i.i

.lr.ph104.i.i98.i.i:                              ; preds = %.preheader.i.i96.i.i
  %.sroa.02.0.copyload.i.i99.i.i = load i64, ptr %i.gd, align 8, !alias.scope !464, !noalias !472 ; 2 uses
  %.sroa.43.0..sroa_idx.i.i100.i.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %.sroa.43.0.copyload.i.i101.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i100.i.i, align 8, !tbaa !18, !alias.scope !464, !noalias !472 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.gq = insertvalue { i64, i64 } poison, i64 %.sroa.02.0.copyload.i.i99.i.i, 0
  %i.gr = insertvalue { i64, i64 } %i.gq, i64 %.sroa.43.0.copyload.i.i101.i.i, 1
  br label %bb.ba

bb.af:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i
  %i.gs = add i64 %i.g, 63
  %i.gt = lshr i64 %i.gs, 6                       ; 2 uses
  %.not105.i.i47.i.i = icmp eq i64 %i.gt, 0
  br i1 %.not105.i.i47.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %.lr.ph102.i.i48.i.i

.lr.ph102.i.i48.i.i:                              ; preds = %bb.af
  %.sroa.422.0..sroa_idx.i.i49.i.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.gv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit89.i.i54.i.i, %.lr.ph102.i.i48.i.i
  %.0101.i.i50.i.i = phi i64 [ 0, %.lr.ph102.i.i48.i.i ], [ %.4.i.i55.i.i, %.loopexit89.i.i54.i.i ] ; 9 uses
  %.069100.i.i51.i.i = phi i64 [ 0, %.lr.ph102.i.i48.i.i ], [ %i.kr, %.loopexit89.i.i54.i.i ] ; 2 uses
  %i.gx = load ptr, ptr %i.gm, align 8, !tbaa !93, !noalias !471 ; 2 uses
  %.not.i71.i.i52.i.i = icmp eq ptr %i.gx, null
  br i1 %.not.i71.i.i52.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i95.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i53.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i95.i.i: ; preds = %bb.ag
  %i.gy = add i64 %.0101.i.i50.i.i, 64
  %i.gz = call noundef i64 @llvm.umin.i64(i64 %i.gy, i64 %i.g)
  br label %.preheader90.i.i56.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i53.i.i: ; preds = %bb.ag
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %.069100.i.i51.i.i
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !18, !noalias !471 ; 2 uses
  %i.hc = add i64 %.0101.i.i50.i.i, 64
  %i.hd = call noundef i64 @llvm.umin.i64(i64 %i.hc, i64 %i.g) ; 5 uses
  switch i64 %i.hb, label %.preheader88.i.i83.i.i [
    i64 -1, label %.preheader90.i.i56.i.i
    i64 0, label %.loopexit89.i.i54.i.i
  ]

.preheader90.i.i56.i.i:                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i53.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i95.i.i
  %i.he = phi i64 [ %i.gz, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i95.i.i ], [ %i.hd, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i53.i.i ] ; 3 uses
  %i.hf = icmp ult i64 %.0101.i.i50.i.i, %i.he
  br i1 %i.hf, label %.lr.ph.i.i57.i.i, label %.loopexit89.i.i54.i.i

.lr.ph.i.i57.i.i:                                 ; preds = %.preheader90.i.i56.i.i
  %i.hg = load <2 x i64>, ptr %i.gd, align 8, !alias.scope !464, !noalias !472 ; 4 uses
  %25 = trunc <2 x i64> %i.hg to <2 x i32>
  %i.hh = bitcast <2 x i64> %i.hg to <4 x i32>
  %.sroa.0.0.extract.trunc.i.i.i60.i.i = extractelement <4 x i32> %i.hh, i64 1
  %26 = insertelement <2 x i32> %25, i32 %.sroa.0.0.extract.trunc.i.i.i60.i.i, i64 1
  %27 = sitofp <2 x i32> %26 to <2 x double>      ; 3 uses
  %28 = extractelement <2 x i64> %i.hg, i64 1
  %29 = extractelement <2 x double> %27, i64 0
  %30 = extractelement <2 x double> %27, i64 1
  br label %bb.ah

.preheader88.i.i83.i.i:                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i53.i.i
  %i.hi = icmp ult i64 %.0101.i.i50.i.i, %i.hd
  br i1 %i.hi, label %.lr.ph98.i.i84.i.i, label %.loopexit89.i.i54.i.i

bb.ah:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i, %.lr.ph.i.i57.i.i
  %.196.i.i63.i.i = phi i64 [ %.0101.i.i50.i.i, %.lr.ph.i.i57.i.i ], [ %i.jt, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i ] ; 5 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %.196.i.i63.i.i
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !439, !alias.scope !467, !noalias !473 ; 2 uses
  %i.hl = fcmp oeq double %i.hk, 0.000000e+00
  br i1 %i.hl, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.hm = load ptr, ptr %i.gm, align 8, !tbaa !93, !noalias !471 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i.i.i.i, label %bb.aj, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.hn = load i64, ptr %i.gw, align 8, !tbaa !95, !noalias !471
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.gm, i64 noundef %i.hn), !noalias !471
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.gm, align 8, !tbaa !93, !noalias !471
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %i.ho = phi ptr [ %.pre.i.i.i.i.i.i, %bb.aj ], [ %i.hm, %bb.ai ]
  %i.hp = lshr i64 %.196.i.i63.i.i, 6
  %i.hq = and i64 %.196.i.i63.i.i, 63
  %i.hr = shl nuw i64 1, %i.hq
  %i.hs = xor i64 %i.hr, -1
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hp ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !18, !noalias !471
  %i.hv = and i64 %i.hu, %i.hs
  store i64 %i.hv, ptr %i.ht, align 8, !tbaa !18, !noalias !471
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !471
  %i.hw = fdiv double 1.000000e+00, %i.hk         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !471
  %i.hx = fmul double %i.hw, %29                  ; 4 uses
  %i.hy = fcmp uno double %i.hx, 0.000000e+00
  %i.hz = fcmp olt double %i.hx, f0xC1E0000000000000
  %or.cond.i.i.i64.i.i = or i1 %i.hy, %i.hz
  %i.ia = fcmp ogt double %i.hx, f0x41DFFFFFFFC00000
  %or.cond21.i.i.i65.i.i = or i1 %i.ia, %or.cond.i.i.i64.i.i
  br i1 %or.cond21.i.i.i65.i.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i69.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ib = fptosi double %i.hx to i32              ; 2 uses
  store i32 %i.ib, ptr %8, align 16, !tbaa !437, !noalias !471
  %i.ic = fmul double %i.hw, %30                  ; 5 uses
  store double %i.ic, ptr %i.b, align 8, !tbaa !439, !noalias !471
  %i.id = fcmp uno double %i.ic, 0.000000e+00
  %i.ie = fcmp olt double %i.ic, f0xC1E0000000000000
  %or.cond22.i.i.i66.i.i = or i1 %i.id, %i.ie
  %i.if = fcmp ogt double %i.ic, f0x41DFFFFFFFC00000
  %or.cond23.i.i.i67.i.i = or i1 %i.if, %or.cond22.i.i.i66.i.i
  br i1 %or.cond23.i.i.i67.i.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i69.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ig = fptosi double %i.ic to i32              ; 3 uses
  %31 = insertelement <2 x i32> poison, i32 %i.ib, i64 0
  %32 = insertelement <2 x i32> %31, i32 %i.ig, i64 1
  %33 = sitofp <2 x i32> %32 to <2 x double>
  %34 = fneg <2 x double> %33
  %35 = insertelement <2 x double> poison, double %i.hw, i64 0
  %36 = shufflevector <2 x double> %35, <2 x double> poison, <2 x i32> zeroinitializer
  %37 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %27, <2 x double> %36, <2 x double> %34) ; 2 uses
  %38 = extractelement <2 x double> %37, i64 0
  %i.ih = fmul double %38, 3.000000e+01
  %i.ii = fmul double %i.ih, 1.000000e+06
  %i.ij = call double @llvm.nearbyint.f64(double %i.ii)
  %i.ik = fdiv double %i.ij, 1.000000e+06         ; 2 uses
  %i.il = fptosi double %i.ik to i32              ; 2 uses
  %39 = extractelement <2 x double> %37, i64 1
  %i.im = fadd double %39, %i.ik
  %i.in = sitofp i32 %i.il to double
  %i.io = fsub double %i.im, %i.in
  %i.ip = fmul double %i.io, 8.640000e+04
  %i.iq = fmul double %i.ip, 1.000000e+06
  %i.ir = call double @llvm.nearbyint.f64(double %i.iq)
  %i.is = fdiv double %i.ir, 1.000000e+06         ; 4 uses
  %i.it = call double @llvm.fabs.f64(double %i.is)
  %i.iu = fcmp ult double %i.it, 8.640000e+04
  br i1 %i.iu, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iv = fdiv double %i.is, 8.640000e+04
  %i.iw = fptosi double %i.iv to i32              ; 2 uses
  %i.ix = add nsw i32 %i.iw, %i.ig
  %i.iy = mul nsw i32 %i.iw, 86400
  %i.iz = sitofp i32 %i.iy to double
  %i.ja = fsub nnan double %i.is, %i.iz
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.jb = phi i32 [ %i.ig, %bb.am ], [ %i.ix, %bb.an ]
  %.020.i.i.i68.i.i = phi double [ %i.is, %bb.am ], [ %i.ja, %bb.an ]
  %i.jc = add nsw i32 %i.jb, %i.il
  store i32 %i.jc, ptr %i.gu, align 4, !tbaa !441, !noalias !471
  %i.jd = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %28, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false), !noalias !471
  br i1 %i.jd, label %bb.ap, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i69.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.je = load double, ptr %i.b, align 8, !tbaa !439, !noalias !471
  %i.jf = fmul double %.020.i.i.i68.i.i, 1.000000e+06
  %i.jg = call double @llvm.fmuladd.f64(double %i.je, double %i.hw, double %i.jf)
  %i.jh = call double @llvm.nearbyint.f64(double %i.jg) ; 3 uses
  store double %i.jh, ptr %i.b, align 8, !tbaa !439, !noalias !471
  %i.ji = fcmp uno double %i.jh, 0.000000e+00
  br i1 %i.ji, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i69.i.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i77.i.i

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i69.i.i: ; preds = %bb.ap, %bb.ao, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !471
  br label %.loopexit92.i.i70.i.i

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i77.i.i: ; preds = %bb.ap
  %i.jj = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.jh, ptr noundef nonnull align 8 dereferenceable(8) %i.gv, i1 noundef zeroext false), !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !471
  br i1 %i.jj, label %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i78.i.i, label %.loopexit92.i.i70.i.i

.loopexit92.i.i70.i.i:                            ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i77.i.i, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i69.i.i
  %i.jk = call ptr @__cxa_allocate_exception(i64 16) #25, !noalias !471 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !471
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.aq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i71.i.i, !noalias !471

bb.aq:                                            ; preds = %.loopexit92.i.i70.i.i
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.jk, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ar unwind label %bb.as, !noalias !471

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.jk, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.au unwind label %bb.as, !noalias !471

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i71.i.i: ; preds = %.loopexit92.i.i70.i.i
  %i.jl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !471
  br label %bb.at

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.0.i82.i.i74.i.i = phi i1 [ false, %bb.ar ], [ true, %bb.aq ] ; 2 uses
  %i.jm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jn = load ptr, ptr %9, align 8, !tbaa !7, !noalias !471 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jp = icmp eq ptr %i.jn, %i.jo
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i76.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i75.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i75.i.i: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.jn) #27, !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !471
  br i1 %.0.i82.i.i74.i.i, label %bb.at, label %common.resume.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i76.i.i: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !471
  br i1 %.0.i82.i.i74.i.i, label %bb.at, label %common.resume.i.i

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i76.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i75.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i71.i.i
  %.pn11.i.i.i72.i.i = phi { ptr, i32 } [ %i.jl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i71.i.i ], [ %i.jm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i76.i.i ], [ %i.jm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i75.i.i ]
  call void @__cxa_free_exception(ptr %i.jk) #25, !noalias !471
  br label %common.resume.i.i

bb.au:                                            ; preds = %bb.ar
  unreachable

_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i78.i.i: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i77.i.i
  %i.jq = load <2 x i64>, ptr %8, align 16, !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !471
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i

_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i: ; preds = %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i78.i.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i.i
  %i.jr = phi <2 x i64> [ %i.hg, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i.i ], [ %i.jq, %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i78.i.i ]
  %i.js = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %.196.i.i63.i.i
  store <2 x i64> %i.jr, ptr %i.js, align 8, !alias.scope !469, !noalias !474
  %i.jt = add i64 %.196.i.i63.i.i, 1              ; 2 uses
  %exitcond.not.i.i82.i.i = icmp eq i64 %i.jt, %i.he
  br i1 %exitcond.not.i.i82.i.i, label %.loopexit89.i.i54.i.i, label %bb.ah, !llvm.loop !475

.lr.ph98.i.i84.i.i:                               ; preds = %.preheader88.i.i83.i.i, %bb.az
  %.297.i.i85.i.i = phi i64 [ %i.kq, %bb.az ], [ %.0101.i.i50.i.i, %.preheader88.i.i83.i.i ] ; 6 uses
  %i.ju = sub nuw i64 %.297.i.i85.i.i, %.0101.i.i50.i.i
  %i.jv = shl nuw i64 1, %i.ju
  %i.jw = and i64 %i.jv, %i.hb
  %.not.i.i86.i.i = icmp eq i64 %i.jw, 0
  br i1 %.not.i.i86.i.i, label %bb.az, label %bb.av

bb.av:                                            ; preds = %.lr.ph98.i.i84.i.i
  %.sroa.013.0.copyload.i.i87.i.i = load i64, ptr %i.gd, align 8, !alias.scope !464, !noalias !472 ; 2 uses
  %.sroa.414.0.copyload.i.i88.i.i = load i64, ptr %.sroa.422.0..sroa_idx.i.i49.i.i, align 8, !tbaa !18, !alias.scope !464, !noalias !472 ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %.297.i.i85.i.i
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !439, !alias.scope !467, !noalias !473 ; 2 uses
  %i.jz = fcmp oeq double %i.jy, 0.000000e+00
  br i1 %i.jz, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.ka = load ptr, ptr %i.gm, align 8, !tbaa !93, !noalias !471 ; 2 uses
  %.not.i.i73.i.i92.i.i = icmp eq ptr %i.ka, null
  br i1 %.not.i.i73.i.i92.i.i, label %bb.ax, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i93.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.kb = load i64, ptr %i.gw, align 8, !tbaa !95, !noalias !471
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.gm, i64 noundef %i.kb), !noalias !471
  %.pre.i.i75.i.i94.i.i = load ptr, ptr %i.gm, align 8, !tbaa !93, !noalias !471
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i93.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i93.i.i: ; preds = %bb.ax, %bb.aw
  %i.kc = phi ptr [ %.pre.i.i75.i.i94.i.i, %bb.ax ], [ %i.ka, %bb.aw ]
  %i.kd = lshr i64 %.297.i.i85.i.i, 6
  %i.ke = and i64 %.297.i.i85.i.i, 63
  %i.kf = shl nuw i64 1, %i.ke
  %i.kg = xor i64 %i.kf, -1
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.kd ; 2 uses
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !18, !noalias !471
  %i.kj = and i64 %i.ki, %i.kg
  store i64 %i.kj, ptr %i.kh, align 8, !tbaa !18, !noalias !471
  %i.kk = insertvalue { i64, i64 } poison, i64 %.sroa.013.0.copyload.i.i87.i.i, 0
  %i.kl = insertvalue { i64, i64 } %i.kk, i64 %.sroa.414.0.copyload.i.i88.i.i, 1
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit76.i.i89.i.i

bb.ay:                                            ; preds = %bb.av
  %i.km = call { i64, i64 } @_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.013.0.copyload.i.i87.i.i, i64 %.sroa.414.0.copyload.i.i88.i.i, double noundef %i.jy), !noalias !471
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit76.i.i89.i.i

_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit76.i.i89.i.i: ; preds = %bb.ay, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i93.i.i
  %.fca.1.insert.merged.i72.i.i90.i.i = phi { i64, i64 } [ %i.kl, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i93.i.i ], [ %i.km, %bb.ay ] ; 2 uses
  %i.kn = extractvalue { i64, i64 } %.fca.1.insert.merged.i72.i.i90.i.i, 0
  %i.ko = extractvalue { i64, i64 } %.fca.1.insert.merged.i72.i.i90.i.i, 1
  %i.kp = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %.297.i.i85.i.i ; 2 uses
  store i64 %i.kn, ptr %i.kp, align 8, !alias.scope !469, !noalias !474
  %.sroa.411.0..sroa_idx.i.i91.i.i = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store i64 %i.ko, ptr %.sroa.411.0..sroa_idx.i.i91.i.i, align 8, !tbaa !18, !alias.scope !469, !noalias !474
  br label %bb.az

bb.az:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit76.i.i89.i.i, %.lr.ph98.i.i84.i.i
  %i.kq = add i64 %.297.i.i85.i.i, 1              ; 2 uses
  %exitcond110.not.i.i.i.i = icmp eq i64 %i.kq, %i.hd
  br i1 %exitcond110.not.i.i.i.i, label %.loopexit89.i.i54.i.i, label %.lr.ph98.i.i84.i.i, !llvm.loop !476

.loopexit89.i.i54.i.i:                            ; preds = %bb.az, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i, %.preheader88.i.i83.i.i, %.preheader90.i.i56.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i53.i.i
  %.4.i.i55.i.i = phi i64 [ %i.hd, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i53.i.i ], [ %i.he, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i ], [ %.0101.i.i50.i.i, %.preheader88.i.i83.i.i ], [ %.0101.i.i50.i.i, %.preheader90.i.i56.i.i ], [ %i.hd, %bb.az ]
  %i.kr = add nuw nsw i64 %.069100.i.i51.i.i, 1   ; 2 uses
  %exitcond111.not.i.i.i.i = icmp eq i64 %i.kr, %i.gt
  br i1 %exitcond111.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %bb.ag, !llvm.loop !477

bb.ba:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i103.i.i, %.lr.ph104.i.i98.i.i
  %.070103.i.i102.i.i = phi i64 [ 0, %.lr.ph104.i.i98.i.i ], [ %i.lj, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i103.i.i ] ; 5 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %.070103.i.i102.i.i
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !439, !alias.scope !467, !noalias !473 ; 2 uses
  %i.ku = fcmp oeq double %i.kt, 0.000000e+00
  br i1 %i.ku, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.kv = load ptr, ptr %i.gm, align 8, !tbaa !93, !noalias !471 ; 2 uses
  %.not.i.i78.i.i.i.i = icmp eq ptr %i.kv, null
  br i1 %.not.i.i78.i.i.i.i, label %bb.bc, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i79.i.i.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.kw = load i64, ptr %i.gp, align 8, !tbaa !95, !noalias !471
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.gm, i64 noundef %i.kw), !noalias !471
  %.pre.i.i80.i.i.i.i = load ptr, ptr %i.gm, align 8, !tbaa !93, !noalias !471
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i79.i.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i79.i.i.i.i: ; preds = %bb.bc, %bb.bb
  %i.kx = phi ptr [ %.pre.i.i80.i.i.i.i, %bb.bc ], [ %i.kv, %bb.bb ]
  %i.ky = lshr i64 %.070103.i.i102.i.i, 6
  %i.kz = and i64 %.070103.i.i102.i.i, 63
  %i.la = shl nuw i64 1, %i.kz
  %i.lb = xor i64 %i.la, -1
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.ky ; 2 uses
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !18, !noalias !471
  %i.le = and i64 %i.ld, %i.lb
  store i64 %i.le, ptr %i.lc, align 8, !tbaa !18, !noalias !471
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i103.i.i

bb.bd:                                            ; preds = %bb.ba
  %i.lf = tail call { i64, i64 } @_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.02.0.copyload.i.i99.i.i, i64 %.sroa.43.0.copyload.i.i101.i.i, double noundef %i.kt), !noalias !471
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i103.i.i

_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i103.i.i: ; preds = %bb.bd, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i79.i.i.i.i
  %.fca.1.insert.merged.i77.i.i.i.i = phi { i64, i64 } [ %i.gr, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i79.i.i.i.i ], [ %i.lf, %bb.bd ] ; 2 uses
  %i.lg = extractvalue { i64, i64 } %.fca.1.insert.merged.i77.i.i.i.i, 0
  %i.lh = extractvalue { i64, i64 } %.fca.1.insert.merged.i77.i.i.i.i, 1
  %i.li = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %.070103.i.i102.i.i ; 2 uses
  store i64 %i.lg, ptr %i.li, align 8, !alias.scope !469, !noalias !474
  %.sroa.4.0..sroa_idx.i.i104.i.i = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  store i64 %i.lh, ptr %.sroa.4.0..sroa_idx.i.i104.i.i, align 8, !tbaa !18, !alias.scope !469, !noalias !474
  %i.lj = add nuw i64 %.070103.i.i102.i.i, 1      ; 2 uses
  %exitcond112.not.i.i.i.i = icmp eq i64 %i.lj, %i.g
  br i1 %exitcond112.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %bb.ba, !llvm.loop !478

bb.be:                                            ; preds = %bb.ac
  %i.lk = or i8 %i.i, %i.h
  %or.cond7.i.i = icmp eq i8 %i.lk, 0
  br i1 %or.cond7.i.i, label %bb.bf, label %bb.ch

bb.bf:                                            ; preds = %bb.be
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.d)
  %i.ll = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !92 ; 3 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.e)
  %i.ln = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !92 ; 3 uses
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.lp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !92 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.lr = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 15 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.d)
  %i.ls = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %i.lr, ptr noundef nonnull align 8 dereferenceable(32) %i.ls, i64 noundef %i.g)
  %i.lt = load ptr, ptr %i.lr, align 8, !tbaa !93
  %.not.i.i105.i.i = icmp eq ptr %i.lt, null
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.e)
  %i.lu = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  br i1 %.not.i.i105.i.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %i.lr, ptr noundef nonnull align 8 dereferenceable(32) %i.lu, i64 noundef %i.g)
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  tail call void @_ZN6duckdb12ValidityMask7CombineERKS0_m(ptr noundef nonnull align 8 dereferenceable(32) %i.lr, ptr noundef nonnull align 8 dereferenceable(32) %i.lu, i64 noundef %i.g)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %i.lv = load ptr, ptr %i.lr, align 8, !tbaa !93, !noalias !486
  %.not.i.i.i106.i.i = icmp eq ptr %i.lv, null
  br i1 %.not.i.i.i106.i.i, label %.preheader.i.i135.i.i, label %bb.bj

.preheader.i.i135.i.i:                            ; preds = %bb.bi
  %.not115.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not115.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %.lr.ph113.i.i.i.i

.lr.ph113.i.i.i.i:                                ; preds = %.preheader.i.i135.i.i
  %i.lw = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.cd

bb.bj:                                            ; preds = %bb.bi
  %i.lx = add i64 %i.g, 63
  %i.ly = lshr i64 %i.lx, 6                       ; 2 uses
  %.not114.i.i.i.i = icmp eq i64 %i.ly, 0
  br i1 %.not114.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %.lr.ph111.i.i.i.i

.lr.ph111.i.i.i.i:                                ; preds = %bb.bj
  %i.lz = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ma = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br label %bb.bk

bb.bk:                                            ; preds = %.loopexit98.i.i.i.i, %.lr.ph111.i.i.i.i
  %.0110.i.i.i.i = phi i64 [ 0, %.lr.ph111.i.i.i.i ], [ %.4.i.i108.i.i, %.loopexit98.i.i.i.i ] ; 9 uses
  %.078109.i.i.i.i = phi i64 [ 0, %.lr.ph111.i.i.i.i ], [ %i.pw, %.loopexit98.i.i.i.i ] ; 2 uses
  %i.mc = load ptr, ptr %i.lr, align 8, !tbaa !93, !noalias !486 ; 2 uses
  %.not.i80.i.i.i.i = icmp eq ptr %i.mc, null
  br i1 %.not.i80.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i134.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i107.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i134.i.i: ; preds = %bb.bk
  %i.md = add i64 %.0110.i.i.i.i, 64
  %i.me = call noundef i64 @llvm.umin.i64(i64 %i.md, i64 %i.g)
  br label %.preheader99.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i107.i.i: ; preds = %bb.bk
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %.078109.i.i.i.i
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !18, !noalias !486 ; 2 uses
  %i.mh = add i64 %.0110.i.i.i.i, 64
  %i.mi = call noundef i64 @llvm.umin.i64(i64 %i.mh, i64 %i.g) ; 5 uses
  switch i64 %i.mg, label %.preheader97.i.i.i.i [
    i64 -1, label %.preheader99.i.i.i.i
    i64 0, label %.loopexit98.i.i.i.i
  ]

.preheader99.i.i.i.i:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i107.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i134.i.i
  %i.mj = phi i64 [ %i.me, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i134.i.i ], [ %i.mi, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i107.i.i ] ; 3 uses
  %i.mk = icmp ult i64 %.0110.i.i.i.i, %i.mj
  br i1 %i.mk, label %.lr.ph.i.i109.i.i, label %.loopexit98.i.i.i.i

.preheader97.i.i.i.i:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i107.i.i
  %i.ml = icmp ult i64 %.0110.i.i.i.i, %i.mi
  br i1 %i.ml, label %.lr.ph107.i.i.i.i, label %.loopexit98.i.i.i.i

.lr.ph.i.i109.i.i:                                ; preds = %.preheader99.i.i.i.i, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i128.i.i
  %.1105.i.i.i.i = phi i64 [ %i.ox, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i128.i.i ], [ %.0110.i.i.i.i, %.preheader99.i.i.i.i ] ; 6 uses
  %i.mm = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %.1105.i.i.i.i ; 2 uses
  %.sroa.022.0.copyload.i.i.i.i = load i64, ptr %i.mm, align 8, !alias.scope !479, !noalias !487 ; 3 uses
  %.sroa.423.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %.sroa.423.0.copyload.i.i.i.i = load i64, ptr %.sroa.423.0..sroa_idx.i.i.i.i, align 8, !tbaa !18, !alias.scope !479, !noalias !487 ; 2 uses
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %.1105.i.i.i.i
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !439, !alias.scope !482, !noalias !488 ; 2 uses
  %i.mp = fcmp oeq double %i.mo, 0.000000e+00
  br i1 %i.mp, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %.lr.ph.i.i109.i.i
  %i.mq = load ptr, ptr %i.lr, align 8, !tbaa !93, !noalias !486 ; 2 uses
  %.not.i.i.i.i130.i.i = icmp eq ptr %i.mq, null
  br i1 %.not.i.i.i.i130.i.i, label %bb.bm, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i131.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.mr = load i64, ptr %i.mb, align 8, !tbaa !95, !noalias !486
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.lr, i64 noundef %i.mr), !noalias !486
  %.pre.i.i.i.i132.i.i = load ptr, ptr %i.lr, align 8, !tbaa !93, !noalias !486
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i131.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i131.i.i: ; preds = %bb.bm, %bb.bl
  %i.ms = phi ptr [ %.pre.i.i.i.i132.i.i, %bb.bm ], [ %i.mq, %bb.bl ]
  %i.mt = lshr i64 %.1105.i.i.i.i, 6
  %i.mu = and i64 %.1105.i.i.i.i, 63
  %i.mv = shl nuw i64 1, %i.mu
  %i.mw = xor i64 %i.mv, -1
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.mt ; 2 uses
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !18, !noalias !486
  %i.mz = and i64 %i.my, %i.mw
  store i64 %i.mz, ptr %i.mx, align 8, !tbaa !18, !noalias !486
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i128.i.i

bb.bn:                                            ; preds = %.lr.ph.i.i109.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !486
  %i.na = fdiv double 1.000000e+00, %i.mo         ; 4 uses
  %.sroa.0.0.extract.trunc.i.i.i110.i.i = trunc i64 %.sroa.022.0.copyload.i.i.i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !486
  %i.nb = sitofp i32 %.sroa.0.0.extract.trunc.i.i.i110.i.i to double ; 2 uses
  %i.nc = fmul double %i.na, %i.nb                ; 4 uses
  %i.nd = fcmp uno double %i.nc, 0.000000e+00
  %i.ne = fcmp olt double %i.nc, f0xC1E0000000000000
  %or.cond.i.i.i111.i.i = or i1 %i.nd, %i.ne
  %i.nf = fcmp ogt double %i.nc, f0x41DFFFFFFFC00000
  %or.cond21.i.i.i112.i.i = or i1 %i.nf, %or.cond.i.i.i111.i.i
  br i1 %or.cond21.i.i.i112.i.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i118.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.sroa.3.0.extract.shift.i.i.i113.i.i = lshr i64 %.sroa.022.0.copyload.i.i.i.i, 32
  %.sroa.3.0.extract.trunc.i.i.i114.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i113.i.i to i32
  %i.ng = fptosi double %i.nc to i32              ; 2 uses
  store i32 %i.ng, ptr %5, align 8, !tbaa !437, !noalias !486
  %i.nh = sitofp i32 %.sroa.3.0.extract.trunc.i.i.i114.i.i to double ; 2 uses
  %i.ni = fmul double %i.na, %i.nh                ; 5 uses
  store double %i.ni, ptr %i.a, align 8, !tbaa !439, !noalias !486
  %i.nj = fcmp uno double %i.ni, 0.000000e+00
  %i.nk = fcmp olt double %i.ni, f0xC1E0000000000000
  %or.cond22.i.i.i115.i.i = or i1 %i.nj, %i.nk
  %i.nl = fcmp ogt double %i.ni, f0x41DFFFFFFFC00000
  %or.cond23.i.i.i116.i.i = or i1 %i.nl, %or.cond22.i.i.i115.i.i
  br i1 %or.cond23.i.i.i116.i.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i118.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nm = fptosi double %i.ni to i32              ; 3 uses
  %40 = insertelement <2 x i32> poison, i32 %i.ng, i64 0
  %41 = insertelement <2 x i32> %40, i32 %i.nm, i64 1
  %42 = sitofp <2 x i32> %41 to <2 x double>
  %43 = fneg <2 x double> %42
  %44 = insertelement <2 x double> poison, double %i.nb, i64 0
  %45 = insertelement <2 x double> %44, double %i.nh, i64 1
  %46 = insertelement <2 x double> poison, double %i.na, i64 0
  %47 = shufflevector <2 x double> %46, <2 x double> poison, <2 x i32> zeroinitializer
  %48 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %45, <2 x double> %47, <2 x double> %43) ; 2 uses
  %49 = extractelement <2 x double> %48, i64 0
  %i.nn = fmul double %49, 3.000000e+01
  %i.no = fmul double %i.nn, 1.000000e+06
  %i.np = call double @llvm.nearbyint.f64(double %i.no)
  %i.nq = fdiv double %i.np, 1.000000e+06         ; 2 uses
  %i.nr = fptosi double %i.nq to i32              ; 2 uses
  %50 = extractelement <2 x double> %48, i64 1
  %i.ns = fadd double %50, %i.nq
  %i.nt = sitofp i32 %i.nr to double
  %i.nu = fsub double %i.ns, %i.nt
  %i.nv = fmul double %i.nu, 8.640000e+04
  %i.nw = fmul double %i.nv, 1.000000e+06
  %i.nx = call double @llvm.nearbyint.f64(double %i.nw)
  %i.ny = fdiv double %i.nx, 1.000000e+06         ; 4 uses
  %i.nz = call double @llvm.fabs.f64(double %i.ny)
  %i.oa = fcmp ult double %i.nz, 8.640000e+04
  br i1 %i.oa, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ob = fdiv double %i.ny, 8.640000e+04
  %i.oc = fptosi double %i.ob to i32              ; 2 uses
  %i.od = add nsw i32 %i.oc, %i.nm
  %i.oe = mul nsw i32 %i.oc, 86400
  %i.of = sitofp i32 %i.oe to double
  %i.og = fsub nnan double %i.ny, %i.of
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.oh = phi i32 [ %i.nm, %bb.bp ], [ %i.od, %bb.bq ]
  %.020.i.i.i117.i.i = phi double [ %i.ny, %bb.bp ], [ %i.og, %bb.bq ]
  %i.oi = add nsw i32 %i.oh, %i.nr
  store i32 %i.oi, ptr %i.lz, align 4, !tbaa !441, !noalias !486
  %i.oj = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.423.0.copyload.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false), !noalias !486
  br i1 %i.oj, label %bb.bs, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i118.i.i

bb.bs:                                            ; preds = %bb.br
  %i.ok = load double, ptr %i.a, align 8, !tbaa !439, !noalias !486
  %i.ol = fmul double %.020.i.i.i117.i.i, 1.000000e+06
  %i.om = call double @llvm.fmuladd.f64(double %i.ok, double %i.na, double %i.ol)
  %i.on = call double @llvm.nearbyint.f64(double %i.om) ; 3 uses
  store double %i.on, ptr %i.a, align 8, !tbaa !439, !noalias !486
  %i.oo = fcmp uno double %i.on, 0.000000e+00
  br i1 %i.oo, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i118.i.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i124.i.i

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i118.i.i: ; preds = %bb.bs, %bb.br, %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !486
  br label %.loopexit101.i.i.i.i

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i124.i.i: ; preds = %bb.bs
  %i.op = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.on, ptr noundef nonnull align 8 dereferenceable(8) %i.ma, i1 noundef zeroext false), !noalias !486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !486
  br i1 %i.op, label %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i125.i.i, label %.loopexit101.i.i.i.i

.loopexit101.i.i.i.i:                             ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i124.i.i, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i118.i.i
  %i.oq = call ptr @__cxa_allocate_exception(i64 16) #25, !noalias !486 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !486
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !486
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.bt unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i119.i.i, !noalias !486

bb.bt:                                            ; preds = %.loopexit101.i.i.i.i
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.oq, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.bu unwind label %bb.bv, !noalias !486

bb.bu:                                            ; preds = %bb.bt
  invoke void @__cxa_throw(ptr nonnull %i.oq, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.bx unwind label %bb.bv, !noalias !486

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i119.i.i: ; preds = %.loopexit101.i.i.i.i
  %i.or = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !486
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !486
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.0.i91.i.i.i.i = phi i1 [ false, %bb.bu ], [ true, %bb.bt ] ; 2 uses
  %i.os = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ot = load ptr, ptr %6, align 8, !tbaa !7, !noalias !486 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ov = icmp eq ptr %i.ot, %i.ou
  br i1 %i.ov, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i123.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122.i.i: ; preds = %bb.bv
  call void @_ZdlPv(ptr noundef %i.ot) #27, !noalias !486
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !486
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !486
  br i1 %.0.i91.i.i.i.i, label %bb.bw, label %common.resume.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i123.i.i: ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !486
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !486
  br i1 %.0.i91.i.i.i.i, label %bb.bw, label %common.resume.i.i

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i123.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i119.i.i
  %.pn11.i.i.i120.i.i = phi { ptr, i32 } [ %i.or, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i119.i.i ], [ %i.os, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i123.i.i ], [ %i.os, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122.i.i ]
  call void @__cxa_free_exception(ptr %i.oq) #25, !noalias !486
  br label %common.resume.i.i

bb.bx:                                            ; preds = %bb.bu
  unreachable

_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i125.i.i: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i124.i.i
  %.fca.0.load.i.i.i126.i.i = load i64, ptr %5, align 8, !noalias !486
  %.fca.1.load.i.i.i127.i.i = load i64, ptr %i.ma, align 8, !noalias !486
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !486
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i128.i.i

_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i128.i.i: ; preds = %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i125.i.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i131.i.i
  %.sroa.022.0.copyload.pn.i.i.i.i = phi i64 [ %.sroa.022.0.copyload.i.i.i.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i131.i.i ], [ %.fca.0.load.i.i.i126.i.i, %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i125.i.i ]
  %.sroa.423.0.copyload.pn.i.i.i.i = phi i64 [ %.sroa.423.0.copyload.i.i.i.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i131.i.i ], [ %.fca.1.load.i.i.i127.i.i, %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i125.i.i ]
  %i.ow = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %.1105.i.i.i.i ; 2 uses
  store i64 %.sroa.022.0.copyload.pn.i.i.i.i, ptr %i.ow, align 8, !alias.scope !484, !noalias !489
  %.sroa.420.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  store i64 %.sroa.423.0.copyload.pn.i.i.i.i, ptr %.sroa.420.0..sroa_idx.i.i.i.i, align 8, !tbaa !18, !alias.scope !484, !noalias !489
  %i.ox = add i64 %.1105.i.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i129.i.i = icmp eq i64 %i.ox, %i.mj
  br i1 %exitcond.not.i.i129.i.i, label %.loopexit98.i.i.i.i, label %.lr.ph.i.i109.i.i, !llvm.loop !490

.lr.ph107.i.i.i.i:                                ; preds = %.preheader97.i.i.i.i, %bb.cc
  %.2106.i.i.i.i = phi i64 [ %i.pv, %bb.cc ], [ %.0110.i.i.i.i, %.preheader97.i.i.i.i ] ; 7 uses
  %i.oy = sub nuw i64 %.2106.i.i.i.i, %.0110.i.i.i.i
  %i.oz = shl nuw i64 1, %i.oy
  %i.pa = and i64 %i.oz, %i.mg
  %.not.i25.i.i.i = icmp eq i64 %i.pa, 0
  br i1 %.not.i25.i.i.i, label %bb.cc, label %bb.by

bb.by:                                            ; preds = %.lr.ph107.i.i.i.i
  %i.pb = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %.2106.i.i.i.i ; 2 uses
  %.sroa.014.0.copyload.i.i.i.i = load i64, ptr %i.pb, align 8, !alias.scope !479, !noalias !487 ; 2 uses
  %.sroa.415.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %.sroa.415.0.copyload.i.i.i.i = load i64, ptr %.sroa.415.0..sroa_idx.i.i.i.i, align 8, !tbaa !18, !alias.scope !479, !noalias !487 ; 2 uses
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %.2106.i.i.i.i
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !439, !alias.scope !482, !noalias !488 ; 2 uses
  %i.pe = fcmp oeq double %i.pd, 0.000000e+00
  br i1 %i.pe, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.pf = load ptr, ptr %i.lr, align 8, !tbaa !93, !noalias !486 ; 2 uses
  %.not.i.i82.i.i.i.i = icmp eq ptr %i.pf, null
  br i1 %.not.i.i82.i.i.i.i, label %bb.ca, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i83.i.i.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.pg = load i64, ptr %i.mb, align 8, !tbaa !95, !noalias !486
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.lr, i64 noundef %i.pg), !noalias !486
  %.pre.i.i84.i.i.i.i = load ptr, ptr %i.lr, align 8, !tbaa !93, !noalias !486
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i83.i.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i83.i.i.i.i: ; preds = %bb.ca, %bb.bz
  %i.ph = phi ptr [ %.pre.i.i84.i.i.i.i, %bb.ca ], [ %i.pf, %bb.bz ]
  %i.pi = lshr i64 %.2106.i.i.i.i, 6
  %i.pj = and i64 %.2106.i.i.i.i, 63
  %i.pk = shl nuw i64 1, %i.pj
  %i.pl = xor i64 %i.pk, -1
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %i.pi ; 2 uses
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !18, !noalias !486
  %i.po = and i64 %i.pn, %i.pl
  store i64 %i.po, ptr %i.pm, align 8, !tbaa !18, !noalias !486
  %i.pp = insertvalue { i64, i64 } poison, i64 %.sroa.014.0.copyload.i.i.i.i, 0
  %i.pq = insertvalue { i64, i64 } %i.pp, i64 %.sroa.415.0.copyload.i.i.i.i, 1
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit85.i.i.i.i

bb.cb:                                            ; preds = %bb.by
  %i.pr = call { i64, i64 } @_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.014.0.copyload.i.i.i.i, i64 %.sroa.415.0.copyload.i.i.i.i, double noundef %i.pd), !noalias !486
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit85.i.i.i.i

_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit85.i.i.i.i: ; preds = %bb.cb, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i83.i.i.i.i
  %.fca.1.insert.merged.i81.i.i.i.i = phi { i64, i64 } [ %i.pq, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i83.i.i.i.i ], [ %i.pr, %bb.cb ] ; 2 uses
  %i.ps = extractvalue { i64, i64 } %.fca.1.insert.merged.i81.i.i.i.i, 0
  %i.pt = extractvalue { i64, i64 } %.fca.1.insert.merged.i81.i.i.i.i, 1
  %i.pu = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %.2106.i.i.i.i ; 2 uses
  store i64 %i.ps, ptr %i.pu, align 8, !alias.scope !484, !noalias !489
  %.sroa.412.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  store i64 %i.pt, ptr %.sroa.412.0..sroa_idx.i.i.i.i, align 8, !tbaa !18, !alias.scope !484, !noalias !489
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit85.i.i.i.i, %.lr.ph107.i.i.i.i
  %i.pv = add i64 %.2106.i.i.i.i, 1               ; 2 uses
  %exitcond119.not.i.i133.i.i = icmp eq i64 %i.pv, %i.mi
  br i1 %exitcond119.not.i.i133.i.i, label %.loopexit98.i.i.i.i, label %.lr.ph107.i.i.i.i, !llvm.loop !491

.loopexit98.i.i.i.i:                              ; preds = %bb.cc, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i128.i.i, %.preheader97.i.i.i.i, %.preheader99.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i107.i.i
  %.4.i.i108.i.i = phi i64 [ %i.mi, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i107.i.i ], [ %i.mj, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i128.i.i ], [ %.0110.i.i.i.i, %.preheader97.i.i.i.i ], [ %.0110.i.i.i.i, %.preheader99.i.i.i.i ], [ %i.mi, %bb.cc ]
  %i.pw = add nuw nsw i64 %.078109.i.i.i.i, 1     ; 2 uses
  %exitcond120.not.i.i.i.i = icmp eq i64 %i.pw, %i.ly
  br i1 %exitcond120.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %bb.bk, !llvm.loop !492

bb.cd:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit90.i.i.i.i, %.lr.ph113.i.i.i.i
  %.079112.i.i.i.i = phi i64 [ 0, %.lr.ph113.i.i.i.i ], [ %i.qr, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit90.i.i.i.i ] ; 6 uses
  %i.px = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %.079112.i.i.i.i ; 2 uses
  %.sroa.02.0.copyload.i.i136.i.i = load i64, ptr %i.px, align 8, !alias.scope !479, !noalias !487 ; 2 uses
  %.sroa.43.0..sroa_idx.i.i137.i.i = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %.sroa.43.0.copyload.i.i138.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i137.i.i, align 8, !tbaa !18, !alias.scope !479, !noalias !487 ; 2 uses
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %.079112.i.i.i.i
  %i.pz = load double, ptr %i.py, align 8, !tbaa !439, !alias.scope !482, !noalias !488 ; 2 uses
  %i.qa = fcmp oeq double %i.pz, 0.000000e+00
  br i1 %i.qa, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.qb = load ptr, ptr %i.lr, align 8, !tbaa !93, !noalias !486 ; 2 uses
  %.not.i.i87.i.i.i.i = icmp eq ptr %i.qb, null
  br i1 %.not.i.i87.i.i.i.i, label %bb.cf, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i88.i.i.i.i

bb.cf:                                            ; preds = %bb.ce
  %i.qc = load i64, ptr %i.lw, align 8, !tbaa !95, !noalias !486
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.lr, i64 noundef %i.qc), !noalias !486
  %.pre.i.i89.i.i.i.i = load ptr, ptr %i.lr, align 8, !tbaa !93, !noalias !486
end_hunk_1
begin_hunk_2_@_ZN6duckdb14BinaryExecutor14ExecuteGenericINS_10interval_tEdS2_NS_29BinaryStandardOperatorWrapperENS_16MultiplyOperatorEbEEvRNS_6VectorES6_S6_mT4_:bb.a
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !53 ; 8 uses
  %.not.i.i.i.i.i15 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i15, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i19, label %bb.w

bb.w:                                             ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.av, align 8, !tbaa !54
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !56
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !57
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !568
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !57
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !568
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i19

bb.y:                                             ; preds = %bb.w
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i.i.i16 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i16, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i17

bb.aa:                                            ; preds = %bb.y
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i17

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i17: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i18 = phi i32 [ %i.ay, %bb.z ], [ %i.bi, %bb.aa ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i.i.i18, 1
  br i1 %i.bj, label %bb.ab, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i19, !prof !60

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i17
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i19

_ZN6duckdb15SelectionVectorD2Ev.exit.i19:         ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i17, %bb.x, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !53 ; 8 uses
  %.not.i.i.i.i1.i20 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i1.i20, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit24, label %bb.ac

bb.ac:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.bm, align 8, !tbaa !54
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !56
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !57
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25, !inline_history !569
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !57
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25, !inline_history !569
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit24

bb.ae:                                            ; preds = %bb.ac
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i.i2.i21 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i2.i21, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i22

bb.ag:                                            ; preds = %bb.ae
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i22

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i22: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i4.i23 = phi i32 [ %i.bp, %bb.af ], [ %i.bz, %bb.ag ]
  %i.ca = icmp eq i32 %.0.i.i.i.i.i.i4.i23, 1
  br i1 %i.ca, label %bb.ah, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit24, !prof !60

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i22
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit24

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit24:       ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i19, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i22, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void

bb.ai:                                            ; preds = %bb.a
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aj:                                            ; preds = %bb.d, %bb.c, %bb.b
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.ak ], [ %i.cc, %bb.aj ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %6) #25
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.al ], [ %i.cb, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_10interval_tEdS2_NS_29BinaryStandardOperatorWrapperENS_16MultiplyOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 7 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %6 = alloca %"struct.duckdb::interval_t", align 16 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"struct.duckdb::interval_t", align 16 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !93
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not121 = icmp eq i64 %3, 0
  br i1 %.not121, label %.loopexit, label %.lr.ph119

.lr.ph119:                                        ; preds = %.preheader
  %i.d = load double, ptr %1, align 8, !tbaa !439
  br label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %3, 63
  %i.f = lshr i64 %i.e, 6                         ; 2 uses
  %.not120 = icmp eq i64 %i.f, 0
  br i1 %.not120, label %.loopexit, label %.lr.ph117

.lr.ph117:                                        ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph117, %.loopexit101
  %.0116 = phi i64 [ 0, %.lr.ph117 ], [ %.4, %.loopexit101 ] ; 9 uses
  %.069115 = phi i64 [ 0, %.lr.ph117 ], [ %i.dx, %.loopexit101 ] ; 2 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !93     ; 2 uses
  %.not.i71 = icmp eq ptr %i.k, null
  br i1 %.not.i71, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread: ; preds = %bb.c
  %i.l = add i64 %.0116, 64
  %i.m = call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %3)
  br label %.preheader103

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.069115
  %i.o = load i64, ptr %i.n, align 8, !tbaa !18   ; 2 uses
  %i.p = add i64 %.0116, 64
  %i.q = call noundef i64 @llvm.umin.i64(i64 %i.p, i64 %3) ; 5 uses
  switch i64 %i.o, label %.preheader100 [
    i64 -1, label %.preheader103
    i64 0, label %.loopexit101
  ]

.preheader103:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.r = phi i64 [ %i.m, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread ], [ %i.q, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ] ; 3 uses
  %i.s = icmp ult i64 %.0116, %i.r
  br i1 %i.s, label %.lr.ph, label %.loopexit101

.lr.ph:                                           ; preds = %.preheader103
  %i.t = load double, ptr %1, align 8, !tbaa !439 ; 4 uses
  %12 = insertelement <2 x double> poison, double %i.t, i64 0
  %13 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.d

.preheader100:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.u = icmp ult i64 %.0116, %i.q
  br i1 %i.u, label %.lr.ph113, label %.loopexit101

bb.d:                                             ; preds = %.lr.ph, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit
  %.1111 = phi i64 [ %.0116, %.lr.ph ], [ %i.bt, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ] ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.1111 ; 2 uses
  %.sroa.021.0.copyload = load i64, ptr %i.v, align 8 ; 2 uses
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.422.0.copyload = load i64, ptr %.sroa.422.0..sroa_idx, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.021.0.copyload to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.w = sitofp i32 %.sroa.0.0.extract.trunc.i to double ; 2 uses
  %i.x = fmul double %i.t, %i.w                   ; 4 uses
  %i.y = fcmp uno double %i.x, 0.000000e+00
  %i.z = fcmp olt double %i.x, f0xC1E0000000000000
  %or.cond.i = or i1 %i.y, %i.z
  %i.aa = fcmp ogt double %i.x, f0x41DFFFFFFFC00000
  %or.cond21.i = or i1 %i.aa, %or.cond.i
  br i1 %or.cond21.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.3.0.extract.shift.i = lshr i64 %.sroa.021.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %i.ab = fptosi double %i.x to i32               ; 2 uses
  store i32 %i.ab, ptr %9, align 16, !tbaa !437
  %i.ac = sitofp i32 %.sroa.3.0.extract.trunc.i to double ; 2 uses
  %i.ad = fmul double %i.t, %i.ac                 ; 5 uses
  store double %i.ad, ptr %i.b, align 8, !tbaa !439
  %i.ae = fcmp uno double %i.ad, 0.000000e+00
  %i.af = fcmp olt double %i.ad, f0xC1E0000000000000
  %or.cond22.i = or i1 %i.ae, %i.af
  %i.ag = fcmp ogt double %i.ad, f0x41DFFFFFFFC00000
  %or.cond23.i = or i1 %i.ag, %or.cond22.i
  br i1 %or.cond23.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = fptosi double %i.ad to i32              ; 3 uses
  %14 = insertelement <2 x i32> poison, i32 %i.ab, i64 0
  %15 = insertelement <2 x i32> %14, i32 %i.ah, i64 1
  %16 = sitofp <2 x i32> %15 to <2 x double>
  %17 = fneg <2 x double> %16
  %18 = insertelement <2 x double> poison, double %i.w, i64 0
  %19 = insertelement <2 x double> %18, double %i.ac, i64 1
  %20 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %19, <2 x double> %13, <2 x double> %17) ; 2 uses
  %21 = extractelement <2 x double> %20, i64 0
  %i.ai = fmul double %21, 3.000000e+01
  %i.aj = fmul double %i.ai, 1.000000e+06
  %i.ak = call double @llvm.nearbyint.f64(double %i.aj)
  %i.al = fdiv double %i.ak, 1.000000e+06         ; 2 uses
  %i.am = fptosi double %i.al to i32              ; 2 uses
  %22 = extractelement <2 x double> %20, i64 1
  %i.an = fadd double %22, %i.al
  %i.ao = sitofp i32 %i.am to double
  %i.ap = fsub double %i.an, %i.ao
  %i.aq = fmul double %i.ap, 8.640000e+04
  %i.ar = fmul double %i.aq, 1.000000e+06
  %i.as = call double @llvm.nearbyint.f64(double %i.ar)
  %i.at = fdiv double %i.as, 1.000000e+06         ; 4 uses
  %i.au = call double @llvm.fabs.f64(double %i.at)
  %i.av = fcmp ult double %i.au, 8.640000e+04
  br i1 %i.av, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = fdiv double %i.at, 8.640000e+04
  %i.ax = fptosi double %i.aw to i32              ; 2 uses
  %i.ay = add nsw i32 %i.ax, %i.ah
  %i.az = mul nsw i32 %i.ax, 86400
  %i.ba = sitofp i32 %i.az to double
  %i.bb = fsub nnan double %i.at, %i.ba
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bc = phi i32 [ %i.ah, %bb.f ], [ %i.ay, %bb.g ]
  %.020.i = phi double [ %i.at, %bb.f ], [ %i.bb, %bb.g ]
  %i.bd = add nsw i32 %i.bc, %i.am
  store i32 %i.bd, ptr %i.g, align 4, !tbaa !441
  %i.be = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.422.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false)
  br i1 %i.be, label %bb.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bf = load double, ptr %i.b, align 8, !tbaa !439
  %i.bg = fmul double %.020.i, 1.000000e+06
  %i.bh = call double @llvm.fmuladd.f64(double %i.bf, double %i.t, double %i.bg)
  %i.bi = call double @llvm.nearbyint.f64(double %i.bh) ; 3 uses
  store double %i.bi, ptr %i.b, align 8, !tbaa !439
  %i.bj = fcmp uno double %i.bi, 0.000000e+00
  br i1 %i.bj, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread: ; preds = %bb.e, %bb.d, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit105

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit: ; preds = %bb.i
  %i.bk = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br i1 %i.bk, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, label %.loopexit105

.loopexit105:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread
  %i.bl = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.j:                                             ; preds = %.loopexit105
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.bl, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.m unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %.loopexit105
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i72 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bo = load ptr, ptr %10, align 8, !tbaa !7    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.bo) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i72, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i72, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78
  %.sink = phi ptr [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73 ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73 ], [ %i.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @__cxa_free_exception(ptr %.sink) #25
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.k
  unreachable

_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.1111
  %i.bs = load <2 x i64>, ptr %9, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store <2 x i64> %i.bs, ptr %i.br, align 8
  %i.bt = add i64 %.1111, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %i.r
  br i1 %exitcond.not, label %.loopexit101, label %bb.d, !llvm.loop !3831

.lr.ph113:                                        ; preds = %.preheader100, %bb.x
  %.2112 = phi i64 [ %i.dw, %bb.x ], [ %.0116, %.preheader100 ] ; 4 uses
  %i.bu = sub nuw i64 %.2112, %.0116
  %i.bv = shl nuw i64 1, %i.bu
  %i.bw = and i64 %i.bv, %i.o
  %.not = icmp eq i64 %i.bw, 0
  br i1 %.not, label %bb.x, label %bb.n

bb.n:                                             ; preds = %.lr.ph113
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.2112 ; 2 uses
  %.sroa.013.0.copyload = load i64, ptr %i.bx, align 8 ; 2 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.414.0.copyload = load i64, ptr %.sroa.414.0..sroa_idx, align 8, !tbaa !18
  %i.by = load double, ptr %1, align 8, !tbaa !439 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.sroa.0.0.extract.trunc.i85 = trunc i64 %.sroa.013.0.copyload to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bz = sitofp i32 %.sroa.0.0.extract.trunc.i85 to double ; 2 uses
  %i.ca = fmul double %i.by, %i.bz                ; 4 uses
  %i.cb = fcmp uno double %i.ca, 0.000000e+00
  %i.cc = fcmp olt double %i.ca, f0xC1E0000000000000
  %or.cond.i86 = or i1 %i.cb, %i.cc
  %i.cd = fcmp ogt double %i.ca, f0x41DFFFFFFFC00000
  %or.cond21.i87 = or i1 %i.cd, %or.cond.i86
  br i1 %or.cond21.i87, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.3.0.extract.shift.i88 = lshr i64 %.sroa.013.0.copyload, 32
  %.sroa.3.0.extract.trunc.i89 = trunc nuw i64 %.sroa.3.0.extract.shift.i88 to i32
  %i.ce = fptosi double %i.ca to i32              ; 2 uses
  store i32 %i.ce, ptr %6, align 16, !tbaa !437
  %i.cf = sitofp i32 %.sroa.3.0.extract.trunc.i89 to double ; 2 uses
  %i.cg = fmul double %i.by, %i.cf                ; 5 uses
  store double %i.cg, ptr %i.a, align 8, !tbaa !439
  %i.ch = fcmp uno double %i.cg, 0.000000e+00
  %i.ci = fcmp olt double %i.cg, f0xC1E0000000000000
  %or.cond22.i90 = or i1 %i.ch, %i.ci
  %i.cj = fcmp ogt double %i.cg, f0x41DFFFFFFFC00000
  %or.cond23.i91 = or i1 %i.cj, %or.cond22.i90
  br i1 %or.cond23.i91, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = fptosi double %i.cg to i32              ; 3 uses
  %23 = insertelement <2 x i32> poison, i32 %i.ce, i64 0
  %24 = insertelement <2 x i32> %23, i32 %i.ck, i64 1
  %25 = sitofp <2 x i32> %24 to <2 x double>
  %26 = fneg <2 x double> %25
  %27 = insertelement <2 x double> poison, double %i.bz, i64 0
  %28 = insertelement <2 x double> %27, double %i.cf, i64 1
  %29 = insertelement <2 x double> poison, double %i.by, i64 0
  %30 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> zeroinitializer
  %31 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> %30, <2 x double> %26) ; 2 uses
  %32 = extractelement <2 x double> %31, i64 0
  %i.cl = fmul double %32, 3.000000e+01
  %i.cm = fmul double %i.cl, 1.000000e+06
  %i.cn = call double @llvm.nearbyint.f64(double %i.cm)
  %i.co = fdiv double %i.cn, 1.000000e+06         ; 2 uses
  %i.cp = fptosi double %i.co to i32              ; 2 uses
  %33 = extractelement <2 x double> %31, i64 1
  %i.cq = fadd double %33, %i.co
  %i.cr = sitofp i32 %i.cp to double
  %i.cs = fsub double %i.cq, %i.cr
  %i.ct = fmul double %i.cs, 8.640000e+04
  %i.cu = fmul double %i.ct, 1.000000e+06
  %i.cv = call double @llvm.nearbyint.f64(double %i.cu)
  %i.cw = fdiv double %i.cv, 1.000000e+06         ; 4 uses
  %i.cx = call double @llvm.fabs.f64(double %i.cw)
  %i.cy = fcmp ult double %i.cx, 8.640000e+04
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = fdiv double %i.cw, 8.640000e+04
  %i.da = fptosi double %i.cz to i32              ; 2 uses
  %i.db = add nsw i32 %i.da, %i.ck
  %i.dc = mul nsw i32 %i.da, 86400
  %i.dd = sitofp i32 %i.dc to double
  %i.de = fsub nnan double %i.cw, %i.dd
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.df = phi i32 [ %i.ck, %bb.p ], [ %i.db, %bb.q ]
  %.020.i92 = phi double [ %i.cw, %bb.p ], [ %i.de, %bb.q ]
  %i.dg = add nsw i32 %i.df, %i.cp
  store i32 %i.dg, ptr %i.i, align 4, !tbaa !441
  %i.dh = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.414.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
  br i1 %i.dh, label %bb.s, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread

bb.s:                                             ; preds = %bb.r
  %i.di = load double, ptr %i.a, align 8, !tbaa !439
  %i.dj = fmul double %.020.i92, 1.000000e+06
  %i.dk = call double @llvm.fmuladd.f64(double %i.di, double %i.by, double %i.dj)
  %i.dl = call double @llvm.nearbyint.f64(double %i.dk) ; 3 uses
  store double %i.dl, ptr %i.a, align 8, !tbaa !439
  %i.dm = fcmp uno double %i.dl, 0.000000e+00
  br i1 %i.dm, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread: ; preds = %bb.o, %bb.n, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit102

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94: ; preds = %bb.s
  %i.dn = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.dl, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.dn, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit84, label %.loopexit102

.loopexit102:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread
  %i.do = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.t unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73

bb.t:                                             ; preds = %.loopexit102
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.do, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.w unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73: ; preds = %.loopexit102
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume.sink.split

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i76 = phi i1 [ false, %bb.u ], [ true, %bb.t ] ; 2 uses
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dr = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.dr) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.0.i76, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.0.i76, label %common.resume.sink.split, label %common.resume

bb.w:                                             ; preds = %bb.u
  unreachable

_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit84: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.2112
  %i.dv = load <2 x i64>, ptr %6, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store <2 x i64> %i.dv, ptr %i.du, align 8
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph113, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit84
  %i.dw = add i64 %.2112, 1                       ; 2 uses
  %exitcond125.not = icmp eq i64 %i.dw, %i.q
  br i1 %exitcond125.not, label %.loopexit101, label %.lr.ph113, !llvm.loop !3832

.loopexit101:                                     ; preds = %bb.x, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, %.preheader103, %.preheader100, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.q, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.r, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ], [ %.0116, %.preheader100 ], [ %.0116, %.preheader103 ], [ %i.q, %bb.x ]
  %i.dx = add nuw nsw i64 %.069115, 1             ; 2 uses
  %exitcond126.not = icmp eq i64 %i.dx, %i.f
  br i1 %exitcond126.not, label %.loopexit, label %bb.c, !llvm.loop !3833

bb.y:                                             ; preds = %.lr.ph119, %bb.y
  %.070118 = phi i64 [ 0, %.lr.ph119 ], [ %i.ed, %bb.y ] ; 3 uses
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.070118 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.dy, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !18
  %i.dz = tail call { i64, i64 } @_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.02.0.copyload, i64 %.sroa.43.0.copyload, double noundef %i.d) ; 2 uses
  %i.ea = extractvalue { i64, i64 } %i.dz, 0
  %i.eb = extractvalue { i64, i64 } %i.dz, 1
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.070118 ; 2 uses
  store i64 %i.ea, ptr %i.ec, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 %i.eb, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !18
  %i.ed = add nuw i64 %.070118, 1                 ; 2 uses
  %exitcond127.not = icmp eq i64 %i.ed, %3
  br i1 %exitcond127.not, label %.loopexit, label %bb.y, !llvm.loop !3834

.loopexit:                                        ; preds = %.loopexit101, %bb.y, %bb.b, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_10interval_tEdS2_NS_29BinaryStandardOperatorWrapperENS_16MultiplyOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 7 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %6 = alloca %"struct.duckdb::interval_t", align 16 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"struct.duckdb::interval_t", align 16 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !93
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not121 = icmp eq i64 %3, 0
  br i1 %.not121, label %.loopexit, label %.lr.ph119

.lr.ph119:                                        ; preds = %.preheader
  %.sroa.02.0.copyload = load i64, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !18
  br label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %3, 63
  %i.e = lshr i64 %i.d, 6                         ; 2 uses
  %.not120 = icmp eq i64 %i.e, 0
  br i1 %.not120, label %.loopexit, label %.lr.ph117

.lr.ph117:                                        ; preds = %bb.b
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph117, %.loopexit101
  %.0116 = phi i64 [ 0, %.lr.ph117 ], [ %.4, %.loopexit101 ] ; 9 uses
  %.069115 = phi i64 [ 0, %.lr.ph117 ], [ %i.du, %.loopexit101 ] ; 2 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !93     ; 2 uses
  %.not.i71 = icmp eq ptr %i.j, null
  br i1 %.not.i71, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread: ; preds = %bb.c
  %i.k = add i64 %.0116, 64
  %i.l = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %3)
  br label %.preheader103

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.069115
  %i.n = load i64, ptr %i.m, align 8, !tbaa !18   ; 2 uses
  %i.o = add i64 %.0116, 64
  %i.p = call noundef i64 @llvm.umin.i64(i64 %i.o, i64 %3) ; 5 uses
  switch i64 %i.n, label %.preheader100 [
    i64 -1, label %.preheader103
    i64 0, label %.loopexit101
  ]

.preheader103:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.q = phi i64 [ %i.l, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread ], [ %i.p, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ] ; 3 uses
  %i.r = icmp ult i64 %.0116, %i.q
  br i1 %i.r, label %.lr.ph, label %.loopexit101

.lr.ph:                                           ; preds = %.preheader103
  %.sroa.021.0.copyload147 = load <2 x i32>, ptr %0, align 8
  %.sroa.422.0.copyload = load i64, ptr %.sroa.422.0..sroa_idx, align 8, !tbaa !18
  %12 = sitofp <2 x i32> %.sroa.021.0.copyload147 to <2 x double> ; 3 uses
  %13 = extractelement <2 x double> %12, i64 0
  %14 = extractelement <2 x double> %12, i64 1
  br label %bb.d

.preheader100:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.s = icmp ult i64 %.0116, %i.p
  br i1 %i.s, label %.lr.ph113, label %.loopexit101

bb.d:                                             ; preds = %.lr.ph, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit
  %.1111 = phi i64 [ %.0116, %.lr.ph ], [ %i.bq, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.1111
  %i.u = load double, ptr %i.t, align 8, !tbaa !439 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.v = fmul double %i.u, %13                    ; 4 uses
  %i.w = fcmp uno double %i.v, 0.000000e+00
  %i.x = fcmp olt double %i.v, f0xC1E0000000000000
  %or.cond.i = or i1 %i.w, %i.x
  %i.y = fcmp ogt double %i.v, f0x41DFFFFFFFC00000
  %or.cond21.i = or i1 %i.y, %or.cond.i
  br i1 %or.cond21.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = fptosi double %i.v to i32                ; 2 uses
  store i32 %i.z, ptr %9, align 16, !tbaa !437
  %i.aa = fmul double %i.u, %14                   ; 5 uses
  store double %i.aa, ptr %i.b, align 8, !tbaa !439
  %i.ab = fcmp uno double %i.aa, 0.000000e+00
  %i.ac = fcmp olt double %i.aa, f0xC1E0000000000000
  %or.cond22.i = or i1 %i.ab, %i.ac
  %i.ad = fcmp ogt double %i.aa, f0x41DFFFFFFFC00000
  %or.cond23.i = or i1 %i.ad, %or.cond22.i
  br i1 %or.cond23.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = fptosi double %i.aa to i32              ; 3 uses
  %15 = insertelement <2 x i32> poison, i32 %i.z, i64 0
  %16 = insertelement <2 x i32> %15, i32 %i.ae, i64 1
  %17 = sitofp <2 x i32> %16 to <2 x double>
  %18 = fneg <2 x double> %17
  %19 = insertelement <2 x double> poison, double %i.u, i64 0
  %20 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer
  %21 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> %20, <2 x double> %18) ; 2 uses
  %22 = extractelement <2 x double> %21, i64 0
  %i.af = fmul double %22, 3.000000e+01
  %i.ag = fmul double %i.af, 1.000000e+06
  %i.ah = call double @llvm.nearbyint.f64(double %i.ag)
  %i.ai = fdiv double %i.ah, 1.000000e+06         ; 2 uses
  %i.aj = fptosi double %i.ai to i32              ; 2 uses
  %23 = extractelement <2 x double> %21, i64 1
  %i.ak = fadd double %23, %i.ai
  %i.al = sitofp i32 %i.aj to double
  %i.am = fsub double %i.ak, %i.al
  %i.an = fmul double %i.am, 8.640000e+04
  %i.ao = fmul double %i.an, 1.000000e+06
  %i.ap = call double @llvm.nearbyint.f64(double %i.ao)
  %i.aq = fdiv double %i.ap, 1.000000e+06         ; 4 uses
  %i.ar = call double @llvm.fabs.f64(double %i.aq)
  %i.as = fcmp ult double %i.ar, 8.640000e+04
  br i1 %i.as, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = fdiv double %i.aq, 8.640000e+04
  %i.au = fptosi double %i.at to i32              ; 2 uses
  %i.av = add nsw i32 %i.au, %i.ae
  %i.aw = mul nsw i32 %i.au, 86400
  %i.ax = sitofp i32 %i.aw to double
  %i.ay = fsub nnan double %i.aq, %i.ax
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.az = phi i32 [ %i.ae, %bb.f ], [ %i.av, %bb.g ]
  %.020.i = phi double [ %i.aq, %bb.f ], [ %i.ay, %bb.g ]
  %i.ba = add nsw i32 %i.az, %i.aj
  store i32 %i.ba, ptr %i.f, align 4, !tbaa !441
  %i.bb = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.422.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false)
  br i1 %i.bb, label %bb.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bc = load double, ptr %i.b, align 8, !tbaa !439
  %i.bd = fmul double %.020.i, 1.000000e+06
  %i.be = call double @llvm.fmuladd.f64(double %i.bc, double %i.u, double %i.bd)
  %i.bf = call double @llvm.nearbyint.f64(double %i.be) ; 3 uses
  store double %i.bf, ptr %i.b, align 8, !tbaa !439
  %i.bg = fcmp uno double %i.bf, 0.000000e+00
  br i1 %i.bg, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread: ; preds = %bb.e, %bb.d, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit105

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit: ; preds = %bb.i
  %i.bh = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br i1 %i.bh, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, label %.loopexit105

.loopexit105:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread
  %i.bi = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.j:                                             ; preds = %.loopexit105
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.bi, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.m unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %.loopexit105
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i72 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bl = load ptr, ptr %10, align 8, !tbaa !7    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.bl) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i72, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i72, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78
  %.sink = phi ptr [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73 ], [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73 ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @__cxa_free_exception(ptr %.sink) #25
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.k
  unreachable

_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.1111
  %i.bp = load <2 x i64>, ptr %9, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store <2 x i64> %i.bp, ptr %i.bo, align 8
  %i.bq = add i64 %.1111, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.bq, %i.q
  br i1 %exitcond.not, label %.loopexit101, label %bb.d, !llvm.loop !3835

.lr.ph113:                                        ; preds = %.preheader100, %bb.x
  %.2112 = phi i64 [ %i.dt, %bb.x ], [ %.0116, %.preheader100 ] ; 4 uses
  %i.br = sub nuw i64 %.2112, %.0116
  %i.bs = shl nuw i64 1, %i.br
  %i.bt = and i64 %i.bs, %i.n
  %.not = icmp eq i64 %i.bt, 0
  br i1 %.not, label %bb.x, label %bb.n

bb.n:                                             ; preds = %.lr.ph113
  %.sroa.013.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  %.sroa.414.0.copyload = load i64, ptr %.sroa.422.0..sroa_idx, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.2112
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !439 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.sroa.0.0.extract.trunc.i85 = trunc i64 %.sroa.013.0.copyload to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bw = sitofp i32 %.sroa.0.0.extract.trunc.i85 to double ; 2 uses
  %i.bx = fmul double %i.bv, %i.bw                ; 4 uses
  %i.by = fcmp uno double %i.bx, 0.000000e+00
  %i.bz = fcmp olt double %i.bx, f0xC1E0000000000000
  %or.cond.i86 = or i1 %i.by, %i.bz
  %i.ca = fcmp ogt double %i.bx, f0x41DFFFFFFFC00000
  %or.cond21.i87 = or i1 %i.ca, %or.cond.i86
  br i1 %or.cond21.i87, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.3.0.extract.shift.i88 = lshr i64 %.sroa.013.0.copyload, 32
  %.sroa.3.0.extract.trunc.i89 = trunc nuw i64 %.sroa.3.0.extract.shift.i88 to i32
  %i.cb = fptosi double %i.bx to i32              ; 2 uses
  store i32 %i.cb, ptr %6, align 16, !tbaa !437
  %i.cc = sitofp i32 %.sroa.3.0.extract.trunc.i89 to double ; 2 uses
  %i.cd = fmul double %i.bv, %i.cc                ; 5 uses
  store double %i.cd, ptr %i.a, align 8, !tbaa !439
  %i.ce = fcmp uno double %i.cd, 0.000000e+00
  %i.cf = fcmp olt double %i.cd, f0xC1E0000000000000
  %or.cond22.i90 = or i1 %i.ce, %i.cf
  %i.cg = fcmp ogt double %i.cd, f0x41DFFFFFFFC00000
  %or.cond23.i91 = or i1 %i.cg, %or.cond22.i90
  br i1 %or.cond23.i91, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = fptosi double %i.cd to i32              ; 3 uses
  %24 = insertelement <2 x i32> poison, i32 %i.cb, i64 0
  %25 = insertelement <2 x i32> %24, i32 %i.ch, i64 1
  %26 = sitofp <2 x i32> %25 to <2 x double>
  %27 = fneg <2 x double> %26
  %28 = insertelement <2 x double> poison, double %i.bw, i64 0
  %29 = insertelement <2 x double> %28, double %i.cc, i64 1
  %30 = insertelement <2 x double> poison, double %i.bv, i64 0
  %31 = shufflevector <2 x double> %30, <2 x double> poison, <2 x i32> zeroinitializer
  %32 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %29, <2 x double> %31, <2 x double> %27) ; 2 uses
  %33 = extractelement <2 x double> %32, i64 0
  %i.ci = fmul double %33, 3.000000e+01
  %i.cj = fmul double %i.ci, 1.000000e+06
  %i.ck = call double @llvm.nearbyint.f64(double %i.cj)
  %i.cl = fdiv double %i.ck, 1.000000e+06         ; 2 uses
  %i.cm = fptosi double %i.cl to i32              ; 2 uses
  %34 = extractelement <2 x double> %32, i64 1
  %i.cn = fadd double %34, %i.cl
  %i.co = sitofp i32 %i.cm to double
  %i.cp = fsub double %i.cn, %i.co
  %i.cq = fmul double %i.cp, 8.640000e+04
  %i.cr = fmul double %i.cq, 1.000000e+06
  %i.cs = call double @llvm.nearbyint.f64(double %i.cr)
  %i.ct = fdiv double %i.cs, 1.000000e+06         ; 4 uses
  %i.cu = call double @llvm.fabs.f64(double %i.ct)
  %i.cv = fcmp ult double %i.cu, 8.640000e+04
  br i1 %i.cv, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cw = fdiv double %i.ct, 8.640000e+04
  %i.cx = fptosi double %i.cw to i32              ; 2 uses
  %i.cy = add nsw i32 %i.cx, %i.ch
  %i.cz = mul nsw i32 %i.cx, 86400
  %i.da = sitofp i32 %i.cz to double
  %i.db = fsub nnan double %i.ct, %i.da
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dc = phi i32 [ %i.ch, %bb.p ], [ %i.cy, %bb.q ]
  %.020.i92 = phi double [ %i.ct, %bb.p ], [ %i.db, %bb.q ]
  %i.dd = add nsw i32 %i.dc, %i.cm
  store i32 %i.dd, ptr %i.h, align 4, !tbaa !441
  %i.de = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.414.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
  br i1 %i.de, label %bb.s, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread

bb.s:                                             ; preds = %bb.r
  %i.df = load double, ptr %i.a, align 8, !tbaa !439
  %i.dg = fmul double %.020.i92, 1.000000e+06
  %i.dh = call double @llvm.fmuladd.f64(double %i.df, double %i.bv, double %i.dg)
  %i.di = call double @llvm.nearbyint.f64(double %i.dh) ; 3 uses
  store double %i.di, ptr %i.a, align 8, !tbaa !439
  %i.dj = fcmp uno double %i.di, 0.000000e+00
  br i1 %i.dj, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread: ; preds = %bb.o, %bb.n, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit102

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94: ; preds = %bb.s
  %i.dk = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.di, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.dk, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit84, label %.loopexit102

.loopexit102:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread
  %i.dl = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.t unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73

bb.t:                                             ; preds = %.loopexit102
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.dl, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.w unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73: ; preds = %.loopexit102
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume.sink.split

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i76 = phi i1 [ false, %bb.u ], [ true, %bb.t ] ; 2 uses
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.do = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.do) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.0.i76, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.0.i76, label %common.resume.sink.split, label %common.resume

bb.w:                                             ; preds = %bb.u
  unreachable

_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit84: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.2112
  %i.ds = load <2 x i64>, ptr %6, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store <2 x i64> %i.ds, ptr %i.dr, align 8
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph113, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit84
  %i.dt = add i64 %.2112, 1                       ; 2 uses
  %exitcond125.not = icmp eq i64 %i.dt, %i.p
  br i1 %exitcond125.not, label %.loopexit101, label %.lr.ph113, !llvm.loop !3836

.loopexit101:                                     ; preds = %bb.x, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, %.preheader103, %.preheader100, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.p, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.q, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ], [ %.0116, %.preheader100 ], [ %.0116, %.preheader103 ], [ %i.p, %bb.x ]
  %i.du = add nuw nsw i64 %.069115, 1             ; 2 uses
  %exitcond126.not = icmp eq i64 %i.du, %i.e
  br i1 %exitcond126.not, label %.loopexit, label %bb.c, !llvm.loop !3837

bb.y:                                             ; preds = %.lr.ph119, %bb.y
  %.070118 = phi i64 [ 0, %.lr.ph119 ], [ %i.eb, %bb.y ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.070118
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !439
  %i.dx = tail call { i64, i64 } @_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.02.0.copyload, i64 %.sroa.43.0.copyload, double noundef %i.dw) ; 2 uses
  %i.dy = extractvalue { i64, i64 } %i.dx, 0
  %i.dz = extractvalue { i64, i64 } %i.dx, 1
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.070118 ; 2 uses
  store i64 %i.dy, ptr %i.ea, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i64 %i.dz, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !18
  %i.eb = add nuw i64 %.070118, 1                 ; 2 uses
  %exitcond127.not = icmp eq i64 %i.eb, %3
  br i1 %exitcond127.not, label %.loopexit, label %bb.y, !llvm.loop !3838

.loopexit:                                        ; preds = %.loopexit101, %bb.y, %bb.b, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_10interval_tEdS2_NS_29BinaryStandardOperatorWrapperENS_16MultiplyOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 7 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %6 = alloca %"struct.duckdb::interval_t", align 16 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"struct.duckdb::interval_t", align 16 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !93
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not130 = icmp eq i64 %3, 0
  br i1 %.not130, label %.loopexit, label %.lr.ph128

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %3, 63
  %i.e = lshr i64 %i.d, 6                         ; 2 uses
  %.not129 = icmp eq i64 %i.e, 0
  br i1 %.not129, label %.loopexit, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph126, %.loopexit110
  %.0125 = phi i64 [ 0, %.lr.ph126 ], [ %.4, %.loopexit110 ] ; 9 uses
  %.078124 = phi i64 [ 0, %.lr.ph126 ], [ %i.dy, %.loopexit110 ] ; 2 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !93     ; 2 uses
  %.not.i80 = icmp eq ptr %i.j, null
  br i1 %.not.i80, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread: ; preds = %bb.c
  %i.k = add i64 %.0125, 64
  %i.l = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %3)
  br label %.preheader112

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.078124
  %i.n = load i64, ptr %i.m, align 8, !tbaa !18   ; 2 uses
  %i.o = add i64 %.0125, 64
  %i.p = call noundef i64 @llvm.umin.i64(i64 %i.o, i64 %3) ; 5 uses
  switch i64 %i.n, label %.preheader109 [
    i64 -1, label %.preheader112
    i64 0, label %.loopexit110
  ]

.preheader112:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.q = phi i64 [ %i.l, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread ], [ %i.p, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ] ; 3 uses
  %i.r = icmp ult i64 %.0125, %i.q
  br i1 %i.r, label %.lr.ph, label %.loopexit110

.preheader109:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.s = icmp ult i64 %.0125, %i.p
  br i1 %i.s, label %.lr.ph122, label %.loopexit110

.lr.ph:                                           ; preds = %.preheader112, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit
  %.1120 = phi i64 [ %i.bt, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ], [ %.0125, %.preheader112 ] ; 4 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.1120 ; 2 uses
  %.sroa.022.0.copyload = load i64, ptr %i.t, align 8 ; 2 uses
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.423.0.copyload = load i64, ptr %.sroa.423.0..sroa_idx, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.1120
  %i.v = load double, ptr %i.u, align 8, !tbaa !439 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.022.0.copyload to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.w = sitofp i32 %.sroa.0.0.extract.trunc.i to double ; 2 uses
  %i.x = fmul double %i.v, %i.w                   ; 4 uses
  %i.y = fcmp uno double %i.x, 0.000000e+00
  %i.z = fcmp olt double %i.x, f0xC1E0000000000000
  %or.cond.i = or i1 %i.y, %i.z
  %i.aa = fcmp ogt double %i.x, f0x41DFFFFFFFC00000
  %or.cond21.i = or i1 %i.aa, %or.cond.i
  br i1 %or.cond21.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %.sroa.3.0.extract.shift.i = lshr i64 %.sroa.022.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %i.ab = fptosi double %i.x to i32               ; 2 uses
  store i32 %i.ab, ptr %9, align 16, !tbaa !437
  %i.ac = sitofp i32 %.sroa.3.0.extract.trunc.i to double ; 2 uses
  %i.ad = fmul double %i.v, %i.ac                 ; 5 uses
  store double %i.ad, ptr %i.b, align 8, !tbaa !439
  %i.ae = fcmp uno double %i.ad, 0.000000e+00
  %i.af = fcmp olt double %i.ad, f0xC1E0000000000000
  %or.cond22.i = or i1 %i.ae, %i.af
  %i.ag = fcmp ogt double %i.ad, f0x41DFFFFFFFC00000
  %or.cond23.i = or i1 %i.ag, %or.cond22.i
  br i1 %or.cond23.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = fptosi double %i.ad to i32              ; 3 uses
  %12 = insertelement <2 x i32> poison, i32 %i.ab, i64 0
  %13 = insertelement <2 x i32> %12, i32 %i.ah, i64 1
  %14 = sitofp <2 x i32> %13 to <2 x double>
  %15 = fneg <2 x double> %14
  %16 = insertelement <2 x double> poison, double %i.w, i64 0
  %17 = insertelement <2 x double> %16, double %i.ac, i64 1
  %18 = insertelement <2 x double> poison, double %i.v, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %20 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %19, <2 x double> %15) ; 2 uses
  %21 = extractelement <2 x double> %20, i64 0
  %i.ai = fmul double %21, 3.000000e+01
  %i.aj = fmul double %i.ai, 1.000000e+06
  %i.ak = call double @llvm.nearbyint.f64(double %i.aj)
  %i.al = fdiv double %i.ak, 1.000000e+06         ; 2 uses
  %i.am = fptosi double %i.al to i32              ; 2 uses
  %22 = extractelement <2 x double> %20, i64 1
  %i.an = fadd double %22, %i.al
  %i.ao = sitofp i32 %i.am to double
  %i.ap = fsub double %i.an, %i.ao
  %i.aq = fmul double %i.ap, 8.640000e+04
  %i.ar = fmul double %i.aq, 1.000000e+06
  %i.as = call double @llvm.nearbyint.f64(double %i.ar)
  %i.at = fdiv double %i.as, 1.000000e+06         ; 4 uses
  %i.au = call double @llvm.fabs.f64(double %i.at)
  %i.av = fcmp ult double %i.au, 8.640000e+04
  br i1 %i.av, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = fdiv double %i.at, 8.640000e+04
  %i.ax = fptosi double %i.aw to i32              ; 2 uses
  %i.ay = add nsw i32 %i.ax, %i.ah
  %i.az = mul nsw i32 %i.ax, 86400
  %i.ba = sitofp i32 %i.az to double
  %i.bb = fsub nnan double %i.at, %i.ba
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bc = phi i32 [ %i.ah, %bb.e ], [ %i.ay, %bb.f ]
  %.020.i = phi double [ %i.at, %bb.e ], [ %i.bb, %bb.f ]
  %i.bd = add nsw i32 %i.bc, %i.am
  store i32 %i.bd, ptr %i.f, align 4, !tbaa !441
  %i.be = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.423.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false)
  br i1 %i.be, label %bb.h, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.bf = load double, ptr %i.b, align 8, !tbaa !439
  %i.bg = fmul double %.020.i, 1.000000e+06
  %i.bh = call double @llvm.fmuladd.f64(double %i.bf, double %i.v, double %i.bg)
  %i.bi = call double @llvm.nearbyint.f64(double %i.bh) ; 3 uses
  store double %i.bi, ptr %i.b, align 8, !tbaa !439
  %i.bj = fcmp uno double %i.bi, 0.000000e+00
  br i1 %i.bj, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread: ; preds = %bb.d, %.lr.ph, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit114

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit: ; preds = %bb.h
  %i.bk = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br i1 %i.bk, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, label %.loopexit114

.loopexit114:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread
  %i.bl = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.i:                                             ; preds = %.loopexit114
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.bl, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.l unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %.loopexit114
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume.sink.split

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i81 = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bo = load ptr, ptr %10, align 8, !tbaa !7    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.bo) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i81, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i81, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87
  %.sink = phi ptr [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82 ], [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87 ], [ %i.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86 ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82 ], [ %i.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87 ], [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86 ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @__cxa_free_exception(ptr %.sink) #25
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86 ], [ %i.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.j
  unreachable

_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.1120
  %i.bs = load <2 x i64>, ptr %9, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store <2 x i64> %i.bs, ptr %i.br, align 8
  %i.bt = add i64 %.1120, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %i.q
  br i1 %exitcond.not, label %.loopexit110, label %.lr.ph, !llvm.loop !3839

.lr.ph122:                                        ; preds = %.preheader109, %bb.w
  %.2121 = phi i64 [ %i.dx, %bb.w ], [ %.0125, %.preheader109 ] ; 5 uses
  %i.bu = sub nuw i64 %.2121, %.0125
  %i.bv = shl nuw i64 1, %i.bu
  %i.bw = and i64 %i.bv, %i.n
  %.not = icmp eq i64 %i.bw, 0
  br i1 %.not, label %bb.w, label %bb.m

bb.m:                                             ; preds = %.lr.ph122
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.2121 ; 2 uses
  %.sroa.014.0.copyload = load i64, ptr %i.bx, align 8 ; 2 uses
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.415.0.copyload = load i64, ptr %.sroa.415.0..sroa_idx, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.2121
  %i.bz = load double, ptr %i.by, align 8, !tbaa !439 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.sroa.0.0.extract.trunc.i94 = trunc i64 %.sroa.014.0.copyload to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ca = sitofp i32 %.sroa.0.0.extract.trunc.i94 to double ; 2 uses
  %i.cb = fmul double %i.bz, %i.ca                ; 4 uses
  %i.cc = fcmp uno double %i.cb, 0.000000e+00
  %i.cd = fcmp olt double %i.cb, f0xC1E0000000000000
  %or.cond.i95 = or i1 %i.cc, %i.cd
  %i.ce = fcmp ogt double %i.cb, f0x41DFFFFFFFC00000
  %or.cond21.i96 = or i1 %i.ce, %or.cond.i95
  br i1 %or.cond21.i96, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.3.0.extract.shift.i97 = lshr i64 %.sroa.014.0.copyload, 32
  %.sroa.3.0.extract.trunc.i98 = trunc nuw i64 %.sroa.3.0.extract.shift.i97 to i32
  %i.cf = fptosi double %i.cb to i32              ; 2 uses
  store i32 %i.cf, ptr %6, align 16, !tbaa !437
  %i.cg = sitofp i32 %.sroa.3.0.extract.trunc.i98 to double ; 2 uses
  %i.ch = fmul double %i.bz, %i.cg                ; 5 uses
  store double %i.ch, ptr %i.a, align 8, !tbaa !439
  %i.ci = fcmp uno double %i.ch, 0.000000e+00
  %i.cj = fcmp olt double %i.ch, f0xC1E0000000000000
  %or.cond22.i99 = or i1 %i.ci, %i.cj
  %i.ck = fcmp ogt double %i.ch, f0x41DFFFFFFFC00000
  %or.cond23.i100 = or i1 %i.ck, %or.cond22.i99
  br i1 %or.cond23.i100, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = fptosi double %i.ch to i32              ; 3 uses
  %23 = insertelement <2 x i32> poison, i32 %i.cf, i64 0
  %24 = insertelement <2 x i32> %23, i32 %i.cl, i64 1
  %25 = sitofp <2 x i32> %24 to <2 x double>
  %26 = fneg <2 x double> %25
  %27 = insertelement <2 x double> poison, double %i.ca, i64 0
  %28 = insertelement <2 x double> %27, double %i.cg, i64 1
  %29 = insertelement <2 x double> poison, double %i.bz, i64 0
  %30 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> zeroinitializer
  %31 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> %30, <2 x double> %26) ; 2 uses
  %32 = extractelement <2 x double> %31, i64 0
  %i.cm = fmul double %32, 3.000000e+01
  %i.cn = fmul double %i.cm, 1.000000e+06
  %i.co = call double @llvm.nearbyint.f64(double %i.cn)
  %i.cp = fdiv double %i.co, 1.000000e+06         ; 2 uses
  %i.cq = fptosi double %i.cp to i32              ; 2 uses
  %33 = extractelement <2 x double> %31, i64 1
  %i.cr = fadd double %33, %i.cp
  %i.cs = sitofp i32 %i.cq to double
  %i.ct = fsub double %i.cr, %i.cs
  %i.cu = fmul double %i.ct, 8.640000e+04
  %i.cv = fmul double %i.cu, 1.000000e+06
  %i.cw = call double @llvm.nearbyint.f64(double %i.cv)
  %i.cx = fdiv double %i.cw, 1.000000e+06         ; 4 uses
  %i.cy = call double @llvm.fabs.f64(double %i.cx)
  %i.cz = fcmp ult double %i.cy, 8.640000e+04
  br i1 %i.cz, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.da = fdiv double %i.cx, 8.640000e+04
  %i.db = fptosi double %i.da to i32              ; 2 uses
  %i.dc = add nsw i32 %i.db, %i.cl
  %i.dd = mul nsw i32 %i.db, 86400
  %i.de = sitofp i32 %i.dd to double
  %i.df = fsub nnan double %i.cx, %i.de
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dg = phi i32 [ %i.cl, %bb.o ], [ %i.dc, %bb.p ]
  %.020.i101 = phi double [ %i.cx, %bb.o ], [ %i.df, %bb.p ]
  %i.dh = add nsw i32 %i.dg, %i.cq
  store i32 %i.dh, ptr %i.h, align 4, !tbaa !441
  %i.di = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.415.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
  br i1 %i.di, label %bb.r, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103.thread

bb.r:                                             ; preds = %bb.q
  %i.dj = load double, ptr %i.a, align 8, !tbaa !439
  %i.dk = fmul double %.020.i101, 1.000000e+06
  %i.dl = call double @llvm.fmuladd.f64(double %i.dj, double %i.bz, double %i.dk)
  %i.dm = call double @llvm.nearbyint.f64(double %i.dl) ; 3 uses
  store double %i.dm, ptr %i.a, align 8, !tbaa !439
  %i.dn = fcmp uno double %i.dm, 0.000000e+00
  br i1 %i.dn, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103.thread: ; preds = %bb.n, %bb.m, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit111

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103: ; preds = %bb.r
  %i.do = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.dm, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.do, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit93, label %.loopexit111

.loopexit111:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103.thread
  %i.dp = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.s unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82

bb.s:                                             ; preds = %.loopexit111
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @__cxa_throw(ptr nonnull %i.dp, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.v unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82: ; preds = %.loopexit111
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume.sink.split

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0.i85 = phi i1 [ false, %bb.t ], [ true, %bb.s ] ; 2 uses
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ds = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.ds) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.0.i85, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.0.i85, label %common.resume.sink.split, label %common.resume

bb.v:                                             ; preds = %bb.t
  unreachable

_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit93: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.2121
  %i.dw = load <2 x i64>, ptr %6, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store <2 x i64> %i.dw, ptr %i.dv, align 8
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph122, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit93
  %i.dx = add i64 %.2121, 1                       ; 2 uses
  %exitcond134.not = icmp eq i64 %i.dx, %i.p
  br i1 %exitcond134.not, label %.loopexit110, label %.lr.ph122, !llvm.loop !3840

.loopexit110:                                     ; preds = %bb.w, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, %.preheader112, %.preheader109, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.p, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.q, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ], [ %.0125, %.preheader109 ], [ %.0125, %.preheader112 ], [ %i.p, %bb.w ]
  %i.dy = add nuw nsw i64 %.078124, 1             ; 2 uses
  %exitcond135.not = icmp eq i64 %i.dy, %i.e
  br i1 %exitcond135.not, label %.loopexit, label %bb.c, !llvm.loop !3841

.lr.ph128:                                        ; preds = %.preheader, %.lr.ph128
  %.079127 = phi i64 [ %i.eg, %.lr.ph128 ], [ 0, %.preheader ] ; 4 uses
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.079127 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.dz, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !18
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.079127
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !439
  %i.ec = tail call { i64, i64 } @_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.02.0.copyload, i64 %.sroa.43.0.copyload, double noundef %i.eb) ; 2 uses
  %i.ed = extractvalue { i64, i64 } %i.ec, 0
  %i.ee = extractvalue { i64, i64 } %i.ec, 1
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.079127 ; 2 uses
  store i64 %i.ed, ptr %i.ef, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i64 %i.ee, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !18
  %i.eg = add nuw i64 %.079127, 1                 ; 2 uses
  %exitcond136.not = icmp eq i64 %i.eg, %3
  br i1 %exitcond136.not, label %.loopexit, label %.lr.ph128, !llvm.loop !3842

.loopexit:                                        ; preds = %.loopexit110, %.lr.ph128, %bb.b, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_10interval_tEdS2_NS_29BinaryStandardOperatorWrapperENS_16MultiplyOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext %9) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !93
  %.not.i = icmp eq ptr %i.a, null
  %i.b = load ptr, ptr %7, align 8
  %.not.i49 = icmp eq ptr %i.b, null
  %or.cond = select i1 %.not.i, i1 %.not.i49, i1 false
  %.not78 = icmp eq i64 %5, 0                     ; 2 uses
  br i1 %or.cond, label %.preheader, label %.preheader65

.preheader65:                                     ; preds = %bb.a
  br i1 %.not78, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader65
  %i.c = load ptr, ptr %3, align 8, !tbaa !165    ; 2 uses
  %.not.i50 = icmp eq ptr %i.c, null
  %i.d = load ptr, ptr %4, align 8, !tbaa !165    ; 2 uses
  %.not.i51 = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not78, label %.loopexit, label %.lr.ph69

.lr.ph69:                                         ; preds = %.preheader
  %i.f = load ptr, ptr %3, align 8, !tbaa !165    ; 3 uses
  %.not.i58 = icmp eq ptr %i.f, null
  %i.g = load ptr, ptr %4, align 8, !tbaa !165    ; 3 uses
  %.not.i60 = icmp eq ptr %i.g, null              ; 2 uses
  br i1 %.not.i58, label %.lr.ph69.split.us, label %.lr.ph69.split

.lr.ph69.split.us:                                ; preds = %.lr.ph69
  br i1 %.not.i60, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us.us: ; preds = %.lr.ph69.split.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us.us
  %.04868.us.us = phi i64 [ %i.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us.us ], [ 0, %.lr.ph69.split.us ] ; 4 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.04868.us.us ; 2 uses
  %.sroa.02.0.copyload.us.us = load i64, ptr %i.h, align 8
  %.sroa.43.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.43.0.copyload.us.us = load i64, ptr %.sroa.43.0..sroa_idx.us.us, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.04868.us.us
  %i.j = load double, ptr %i.i, align 8, !tbaa !439
  %i.k = tail call { i64, i64 } @_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.02.0.copyload.us.us, i64 %.sroa.43.0.copyload.us.us, double noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.04868.us.us ; 2 uses
  store i64 %i.l, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.m, ptr %.sroa.4.0..sroa_idx.us.us, align 8, !tbaa !18
  %i.o = add nuw i64 %.04868.us.us, 1             ; 2 uses
  %exitcond86.not = icmp eq i64 %i.o, %5
  br i1 %exitcond86.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us.us, !llvm.loop !3843

_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us: ; preds = %.lr.ph69.split.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us
  %.04868.us = phi i64 [ %i.z, %_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us ], [ 0, %.lr.ph69.split.us ] ; 4 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.04868.us ; 2 uses
  %.sroa.02.0.copyload.us = load i64, ptr %i.p, align 8
  %.sroa.43.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.43.0.copyload.us = load i64, ptr %.sroa.43.0..sroa_idx.us, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.04868.us
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.s
  %i.u = load double, ptr %i.t, align 8, !tbaa !439
  %i.v = tail call { i64, i64 } @_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.02.0.copyload.us, i64 %.sroa.43.0.copyload.us, double noundef %i.u) ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = extractvalue { i64, i64 } %i.v, 1
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.04868.us ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdb14BinaryExecutor14ExecuteGenericIdNS_10interval_tES2_NS_29BinaryStandardOperatorWrapperENS_16MultiplyOperatorEbEEvRNS_6VectorES6_S6_mT4_:bb.a
_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !53 ; 8 uses
  %.not.i.i.i.i.i15 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i15, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i19, label %bb.w

bb.w:                                             ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.av, align 8, !tbaa !54
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !56
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !57
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !568
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !57
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !568
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i19

bb.y:                                             ; preds = %bb.w
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i.i.i16 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i16, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i17

bb.aa:                                            ; preds = %bb.y
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i17

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i17: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i18 = phi i32 [ %i.ay, %bb.z ], [ %i.bi, %bb.aa ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i.i.i18, 1
  br i1 %i.bj, label %bb.ab, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i19, !prof !60

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i17
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i19

_ZN6duckdb15SelectionVectorD2Ev.exit.i19:         ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i17, %bb.x, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !53 ; 8 uses
  %.not.i.i.i.i1.i20 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i1.i20, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit24, label %bb.ac

bb.ac:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.bm, align 8, !tbaa !54
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !56
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !57
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25, !inline_history !569
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !57
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25, !inline_history !569
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit24

bb.ae:                                            ; preds = %bb.ac
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i.i2.i21 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i2.i21, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i22

bb.ag:                                            ; preds = %bb.ae
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i22

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i22: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i4.i23 = phi i32 [ %i.bp, %bb.af ], [ %i.bz, %bb.ag ]
  %i.ca = icmp eq i32 %.0.i.i.i.i.i.i4.i23, 1
  br i1 %i.ca, label %bb.ah, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit24, !prof !60

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i22
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit24

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit24:       ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i19, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i22, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void

bb.ai:                                            ; preds = %bb.a
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aj:                                            ; preds = %bb.d, %bb.c, %bb.b
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.ak ], [ %i.cc, %bb.aj ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %6) #25
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.al ], [ %i.cb, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIdNS_10interval_tES2_NS_29BinaryStandardOperatorWrapperENS_16MultiplyOperatorEbLb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 7 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %6 = alloca %"struct.duckdb::interval_t", align 16 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"struct.duckdb::interval_t", align 16 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !93
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not121 = icmp eq i64 %3, 0
  br i1 %.not121, label %.loopexit, label %.lr.ph119

.lr.ph119:                                        ; preds = %.preheader
  %.sroa.02.0.copyload = load i64, ptr %1, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !18
  br label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %3, 63
  %i.e = lshr i64 %i.d, 6                         ; 2 uses
  %.not120 = icmp eq i64 %i.e, 0
  br i1 %.not120, label %.loopexit, label %.lr.ph117

.lr.ph117:                                        ; preds = %bb.b
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph117, %.loopexit101
  %.0116 = phi i64 [ 0, %.lr.ph117 ], [ %.4, %.loopexit101 ] ; 9 uses
  %.069115 = phi i64 [ 0, %.lr.ph117 ], [ %i.du, %.loopexit101 ] ; 2 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !93     ; 2 uses
  %.not.i71 = icmp eq ptr %i.j, null
  br i1 %.not.i71, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread: ; preds = %bb.c
  %i.k = add i64 %.0116, 64
  %i.l = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %3)
  br label %.preheader103

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.069115
  %i.n = load i64, ptr %i.m, align 8, !tbaa !18   ; 2 uses
  %i.o = add i64 %.0116, 64
  %i.p = call noundef i64 @llvm.umin.i64(i64 %i.o, i64 %3) ; 5 uses
  switch i64 %i.n, label %.preheader100 [
    i64 -1, label %.preheader103
    i64 0, label %.loopexit101
  ]

.preheader103:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.q = phi i64 [ %i.l, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread ], [ %i.p, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ] ; 3 uses
  %i.r = icmp ult i64 %.0116, %i.q
  br i1 %i.r, label %.lr.ph, label %.loopexit101

.lr.ph:                                           ; preds = %.preheader103
  %.sroa.020.0.copyload147 = load <2 x i32>, ptr %1, align 8
  %.sroa.421.0.copyload = load i64, ptr %.sroa.421.0..sroa_idx, align 8, !tbaa !18
  %12 = sitofp <2 x i32> %.sroa.020.0.copyload147 to <2 x double> ; 3 uses
  %13 = extractelement <2 x double> %12, i64 0
  %14 = extractelement <2 x double> %12, i64 1
  br label %bb.d

.preheader100:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.s = icmp ult i64 %.0116, %i.p
  br i1 %i.s, label %.lr.ph113, label %.loopexit101

bb.d:                                             ; preds = %.lr.ph, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit
  %.1111 = phi i64 [ %.0116, %.lr.ph ], [ %i.bq, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1111
  %i.u = load double, ptr %i.t, align 8, !tbaa !439 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.v = fmul double %i.u, %13                    ; 4 uses
  %i.w = fcmp uno double %i.v, 0.000000e+00
  %i.x = fcmp olt double %i.v, f0xC1E0000000000000
  %or.cond.i = or i1 %i.w, %i.x
  %i.y = fcmp ogt double %i.v, f0x41DFFFFFFFC00000
  %or.cond21.i = or i1 %i.y, %or.cond.i
  br i1 %or.cond21.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = fptosi double %i.v to i32                ; 2 uses
  store i32 %i.z, ptr %9, align 16, !tbaa !437
  %i.aa = fmul double %i.u, %14                   ; 5 uses
  store double %i.aa, ptr %i.b, align 8, !tbaa !439
  %i.ab = fcmp uno double %i.aa, 0.000000e+00
  %i.ac = fcmp olt double %i.aa, f0xC1E0000000000000
  %or.cond22.i = or i1 %i.ab, %i.ac
  %i.ad = fcmp ogt double %i.aa, f0x41DFFFFFFFC00000
  %or.cond23.i = or i1 %i.ad, %or.cond22.i
  br i1 %or.cond23.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = fptosi double %i.aa to i32              ; 3 uses
  %15 = insertelement <2 x i32> poison, i32 %i.z, i64 0
  %16 = insertelement <2 x i32> %15, i32 %i.ae, i64 1
  %17 = sitofp <2 x i32> %16 to <2 x double>
  %18 = fneg <2 x double> %17
  %19 = insertelement <2 x double> poison, double %i.u, i64 0
  %20 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer
  %21 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> %20, <2 x double> %18) ; 2 uses
  %22 = extractelement <2 x double> %21, i64 0
  %i.af = fmul double %22, 3.000000e+01
  %i.ag = fmul double %i.af, 1.000000e+06
  %i.ah = call double @llvm.nearbyint.f64(double %i.ag)
  %i.ai = fdiv double %i.ah, 1.000000e+06         ; 2 uses
  %i.aj = fptosi double %i.ai to i32              ; 2 uses
  %23 = extractelement <2 x double> %21, i64 1
  %i.ak = fadd double %23, %i.ai
  %i.al = sitofp i32 %i.aj to double
  %i.am = fsub double %i.ak, %i.al
  %i.an = fmul double %i.am, 8.640000e+04
  %i.ao = fmul double %i.an, 1.000000e+06
  %i.ap = call double @llvm.nearbyint.f64(double %i.ao)
  %i.aq = fdiv double %i.ap, 1.000000e+06         ; 4 uses
  %i.ar = call double @llvm.fabs.f64(double %i.aq)
  %i.as = fcmp ult double %i.ar, 8.640000e+04
  br i1 %i.as, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = fdiv double %i.aq, 8.640000e+04
  %i.au = fptosi double %i.at to i32              ; 2 uses
  %i.av = add nsw i32 %i.au, %i.ae
  %i.aw = mul nsw i32 %i.au, 86400
  %i.ax = sitofp i32 %i.aw to double
  %i.ay = fsub nnan double %i.aq, %i.ax
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.az = phi i32 [ %i.ae, %bb.f ], [ %i.av, %bb.g ]
  %.020.i = phi double [ %i.aq, %bb.f ], [ %i.ay, %bb.g ]
  %i.ba = add nsw i32 %i.az, %i.aj
  store i32 %i.ba, ptr %i.f, align 4, !tbaa !441
  %i.bb = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.421.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false)
  br i1 %i.bb, label %bb.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bc = load double, ptr %i.b, align 8, !tbaa !439
  %i.bd = fmul double %.020.i, 1.000000e+06
  %i.be = call double @llvm.fmuladd.f64(double %i.bc, double %i.u, double %i.bd)
  %i.bf = call double @llvm.nearbyint.f64(double %i.be) ; 3 uses
  store double %i.bf, ptr %i.b, align 8, !tbaa !439
  %i.bg = fcmp uno double %i.bf, 0.000000e+00
  br i1 %i.bg, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread: ; preds = %bb.e, %bb.d, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit105

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit: ; preds = %bb.i
  %i.bh = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br i1 %i.bh, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, label %.loopexit105

.loopexit105:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread
  %i.bi = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.j:                                             ; preds = %.loopexit105
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.bi, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.m unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %.loopexit105
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i72 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bl = load ptr, ptr %10, align 8, !tbaa !7    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.bl) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i72, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i72, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78
  %.sink = phi ptr [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73 ], [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73 ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @__cxa_free_exception(ptr %.sink) #25
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.k
  unreachable

_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.1111
  %i.bp = load <2 x i64>, ptr %9, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store <2 x i64> %i.bp, ptr %i.bo, align 8
  %i.bq = add i64 %.1111, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.bq, %i.q
  br i1 %exitcond.not, label %.loopexit101, label %bb.d, !llvm.loop !3845

.lr.ph113:                                        ; preds = %.preheader100, %bb.x
  %.2112 = phi i64 [ %i.dt, %bb.x ], [ %.0116, %.preheader100 ] ; 4 uses
  %i.br = sub nuw i64 %.2112, %.0116
  %i.bs = shl nuw i64 1, %i.br
  %i.bt = and i64 %i.bs, %i.n
  %.not = icmp eq i64 %i.bt, 0
  br i1 %.not, label %bb.x, label %bb.n

bb.n:                                             ; preds = %.lr.ph113
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.2112
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !439 ; 4 uses
  %.sroa.012.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.413.0.copyload = load i64, ptr %.sroa.421.0..sroa_idx, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.sroa.0.0.extract.trunc.i85 = trunc i64 %.sroa.012.0.copyload to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bw = sitofp i32 %.sroa.0.0.extract.trunc.i85 to double ; 2 uses
  %i.bx = fmul double %i.bv, %i.bw                ; 4 uses
  %i.by = fcmp uno double %i.bx, 0.000000e+00
  %i.bz = fcmp olt double %i.bx, f0xC1E0000000000000
  %or.cond.i86 = or i1 %i.by, %i.bz
  %i.ca = fcmp ogt double %i.bx, f0x41DFFFFFFFC00000
  %or.cond21.i87 = or i1 %i.ca, %or.cond.i86
  br i1 %or.cond21.i87, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.3.0.extract.shift.i88 = lshr i64 %.sroa.012.0.copyload, 32
  %.sroa.3.0.extract.trunc.i89 = trunc nuw i64 %.sroa.3.0.extract.shift.i88 to i32
  %i.cb = fptosi double %i.bx to i32              ; 2 uses
  store i32 %i.cb, ptr %6, align 16, !tbaa !437
  %i.cc = sitofp i32 %.sroa.3.0.extract.trunc.i89 to double ; 2 uses
  %i.cd = fmul double %i.bv, %i.cc                ; 5 uses
  store double %i.cd, ptr %i.a, align 8, !tbaa !439
  %i.ce = fcmp uno double %i.cd, 0.000000e+00
  %i.cf = fcmp olt double %i.cd, f0xC1E0000000000000
  %or.cond22.i90 = or i1 %i.ce, %i.cf
  %i.cg = fcmp ogt double %i.cd, f0x41DFFFFFFFC00000
  %or.cond23.i91 = or i1 %i.cg, %or.cond22.i90
  br i1 %or.cond23.i91, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = fptosi double %i.cd to i32              ; 3 uses
  %24 = insertelement <2 x i32> poison, i32 %i.cb, i64 0
  %25 = insertelement <2 x i32> %24, i32 %i.ch, i64 1
  %26 = sitofp <2 x i32> %25 to <2 x double>
  %27 = fneg <2 x double> %26
  %28 = insertelement <2 x double> poison, double %i.bw, i64 0
  %29 = insertelement <2 x double> %28, double %i.cc, i64 1
  %30 = insertelement <2 x double> poison, double %i.bv, i64 0
  %31 = shufflevector <2 x double> %30, <2 x double> poison, <2 x i32> zeroinitializer
  %32 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %29, <2 x double> %31, <2 x double> %27) ; 2 uses
  %33 = extractelement <2 x double> %32, i64 0
  %i.ci = fmul double %33, 3.000000e+01
  %i.cj = fmul double %i.ci, 1.000000e+06
  %i.ck = call double @llvm.nearbyint.f64(double %i.cj)
  %i.cl = fdiv double %i.ck, 1.000000e+06         ; 2 uses
  %i.cm = fptosi double %i.cl to i32              ; 2 uses
  %34 = extractelement <2 x double> %32, i64 1
  %i.cn = fadd double %34, %i.cl
  %i.co = sitofp i32 %i.cm to double
  %i.cp = fsub double %i.cn, %i.co
  %i.cq = fmul double %i.cp, 8.640000e+04
  %i.cr = fmul double %i.cq, 1.000000e+06
  %i.cs = call double @llvm.nearbyint.f64(double %i.cr)
  %i.ct = fdiv double %i.cs, 1.000000e+06         ; 4 uses
  %i.cu = call double @llvm.fabs.f64(double %i.ct)
  %i.cv = fcmp ult double %i.cu, 8.640000e+04
  br i1 %i.cv, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cw = fdiv double %i.ct, 8.640000e+04
  %i.cx = fptosi double %i.cw to i32              ; 2 uses
  %i.cy = add nsw i32 %i.cx, %i.ch
  %i.cz = mul nsw i32 %i.cx, 86400
  %i.da = sitofp i32 %i.cz to double
  %i.db = fsub nnan double %i.ct, %i.da
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dc = phi i32 [ %i.ch, %bb.p ], [ %i.cy, %bb.q ]
  %.020.i92 = phi double [ %i.ct, %bb.p ], [ %i.db, %bb.q ]
  %i.dd = add nsw i32 %i.dc, %i.cm
  store i32 %i.dd, ptr %i.h, align 4, !tbaa !441
  %i.de = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.413.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
  br i1 %i.de, label %bb.s, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread

bb.s:                                             ; preds = %bb.r
  %i.df = load double, ptr %i.a, align 8, !tbaa !439
  %i.dg = fmul double %.020.i92, 1.000000e+06
  %i.dh = call double @llvm.fmuladd.f64(double %i.df, double %i.bv, double %i.dg)
  %i.di = call double @llvm.nearbyint.f64(double %i.dh) ; 3 uses
  store double %i.di, ptr %i.a, align 8, !tbaa !439
  %i.dj = fcmp uno double %i.di, 0.000000e+00
  br i1 %i.dj, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread: ; preds = %bb.o, %bb.n, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit102

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94: ; preds = %bb.s
  %i.dk = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.di, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.dk, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit84, label %.loopexit102

.loopexit102:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread
  %i.dl = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.t unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73

bb.t:                                             ; preds = %.loopexit102
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.dl, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.w unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73: ; preds = %.loopexit102
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume.sink.split

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i76 = phi i1 [ false, %bb.u ], [ true, %bb.t ] ; 2 uses
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.do = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.do) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.0.i76, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.0.i76, label %common.resume.sink.split, label %common.resume

bb.w:                                             ; preds = %bb.u
  unreachable

_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit84: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.2112
  %i.ds = load <2 x i64>, ptr %6, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store <2 x i64> %i.ds, ptr %i.dr, align 8
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph113, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit84
  %i.dt = add i64 %.2112, 1                       ; 2 uses
  %exitcond125.not = icmp eq i64 %i.dt, %i.p
  br i1 %exitcond125.not, label %.loopexit101, label %.lr.ph113, !llvm.loop !3846

.loopexit101:                                     ; preds = %bb.x, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, %.preheader103, %.preheader100, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.p, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.q, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ], [ %.0116, %.preheader100 ], [ %.0116, %.preheader103 ], [ %i.p, %bb.x ]
  %i.du = add nuw nsw i64 %.069115, 1             ; 2 uses
  %exitcond126.not = icmp eq i64 %i.du, %i.e
  br i1 %exitcond126.not, label %.loopexit, label %bb.c, !llvm.loop !3847

bb.y:                                             ; preds = %.lr.ph119, %bb.y
  %.070118 = phi i64 [ 0, %.lr.ph119 ], [ %i.eb, %bb.y ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.070118
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !439
  %i.dx = tail call { i64, i64 } @_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.02.0.copyload, i64 %.sroa.43.0.copyload, double noundef %i.dw) ; 2 uses
  %i.dy = extractvalue { i64, i64 } %i.dx, 0
  %i.dz = extractvalue { i64, i64 } %i.dx, 1
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.070118 ; 2 uses
  store i64 %i.dy, ptr %i.ea, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i64 %i.dz, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !18
  %i.eb = add nuw i64 %.070118, 1                 ; 2 uses
  %exitcond127.not = icmp eq i64 %i.eb, %3
  br i1 %exitcond127.not, label %.loopexit, label %bb.y, !llvm.loop !3848

.loopexit:                                        ; preds = %.loopexit101, %bb.y, %bb.b, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIdNS_10interval_tES2_NS_29BinaryStandardOperatorWrapperENS_16MultiplyOperatorEbLb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 7 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %6 = alloca %"struct.duckdb::interval_t", align 16 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"struct.duckdb::interval_t", align 16 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !93
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not121 = icmp eq i64 %3, 0
  br i1 %.not121, label %.loopexit, label %.lr.ph119

.lr.ph119:                                        ; preds = %.preheader
  %i.d = load double, ptr %0, align 8, !tbaa !439
  br label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %3, 63
  %i.f = lshr i64 %i.e, 6                         ; 2 uses
  %.not120 = icmp eq i64 %i.f, 0
  br i1 %.not120, label %.loopexit, label %.lr.ph117

.lr.ph117:                                        ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph117, %.loopexit101
  %.0116 = phi i64 [ 0, %.lr.ph117 ], [ %.4, %.loopexit101 ] ; 9 uses
  %.069115 = phi i64 [ 0, %.lr.ph117 ], [ %i.dx, %.loopexit101 ] ; 2 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !93     ; 2 uses
  %.not.i71 = icmp eq ptr %i.k, null
  br i1 %.not.i71, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread: ; preds = %bb.c
  %i.l = add i64 %.0116, 64
  %i.m = call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %3)
  br label %.preheader103

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.069115
  %i.o = load i64, ptr %i.n, align 8, !tbaa !18   ; 2 uses
  %i.p = add i64 %.0116, 64
  %i.q = call noundef i64 @llvm.umin.i64(i64 %i.p, i64 %3) ; 5 uses
  switch i64 %i.o, label %.preheader100 [
    i64 -1, label %.preheader103
    i64 0, label %.loopexit101
  ]

.preheader103:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.r = phi i64 [ %i.m, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread ], [ %i.q, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ] ; 3 uses
  %i.s = icmp ult i64 %.0116, %i.r
  br i1 %i.s, label %.lr.ph, label %.loopexit101

.lr.ph:                                           ; preds = %.preheader103
  %i.t = load double, ptr %0, align 8, !tbaa !439 ; 4 uses
  %12 = insertelement <2 x double> poison, double %i.t, i64 0
  %13 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.d

.preheader100:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.u = icmp ult i64 %.0116, %i.q
  br i1 %i.u, label %.lr.ph113, label %.loopexit101

bb.d:                                             ; preds = %.lr.ph, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit
  %.1111 = phi i64 [ %.0116, %.lr.ph ], [ %i.bt, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ] ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.1111 ; 2 uses
  %.sroa.020.0.copyload = load i64, ptr %i.v, align 8 ; 2 uses
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.421.0.copyload = load i64, ptr %.sroa.421.0..sroa_idx, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.020.0.copyload to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.w = sitofp i32 %.sroa.0.0.extract.trunc.i to double ; 2 uses
  %i.x = fmul double %i.t, %i.w                   ; 4 uses
  %i.y = fcmp uno double %i.x, 0.000000e+00
  %i.z = fcmp olt double %i.x, f0xC1E0000000000000
  %or.cond.i = or i1 %i.y, %i.z
  %i.aa = fcmp ogt double %i.x, f0x41DFFFFFFFC00000
  %or.cond21.i = or i1 %i.aa, %or.cond.i
  br i1 %or.cond21.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.3.0.extract.shift.i = lshr i64 %.sroa.020.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %i.ab = fptosi double %i.x to i32               ; 2 uses
  store i32 %i.ab, ptr %9, align 16, !tbaa !437
  %i.ac = sitofp i32 %.sroa.3.0.extract.trunc.i to double ; 2 uses
  %i.ad = fmul double %i.t, %i.ac                 ; 5 uses
  store double %i.ad, ptr %i.b, align 8, !tbaa !439
  %i.ae = fcmp uno double %i.ad, 0.000000e+00
  %i.af = fcmp olt double %i.ad, f0xC1E0000000000000
  %or.cond22.i = or i1 %i.ae, %i.af
  %i.ag = fcmp ogt double %i.ad, f0x41DFFFFFFFC00000
  %or.cond23.i = or i1 %i.ag, %or.cond22.i
  br i1 %or.cond23.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = fptosi double %i.ad to i32              ; 3 uses
  %14 = insertelement <2 x i32> poison, i32 %i.ab, i64 0
  %15 = insertelement <2 x i32> %14, i32 %i.ah, i64 1
  %16 = sitofp <2 x i32> %15 to <2 x double>
  %17 = fneg <2 x double> %16
  %18 = insertelement <2 x double> poison, double %i.w, i64 0
  %19 = insertelement <2 x double> %18, double %i.ac, i64 1
  %20 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %19, <2 x double> %13, <2 x double> %17) ; 2 uses
  %21 = extractelement <2 x double> %20, i64 0
  %i.ai = fmul double %21, 3.000000e+01
  %i.aj = fmul double %i.ai, 1.000000e+06
  %i.ak = call double @llvm.nearbyint.f64(double %i.aj)
  %i.al = fdiv double %i.ak, 1.000000e+06         ; 2 uses
  %i.am = fptosi double %i.al to i32              ; 2 uses
  %22 = extractelement <2 x double> %20, i64 1
  %i.an = fadd double %22, %i.al
  %i.ao = sitofp i32 %i.am to double
  %i.ap = fsub double %i.an, %i.ao
  %i.aq = fmul double %i.ap, 8.640000e+04
  %i.ar = fmul double %i.aq, 1.000000e+06
  %i.as = call double @llvm.nearbyint.f64(double %i.ar)
  %i.at = fdiv double %i.as, 1.000000e+06         ; 4 uses
  %i.au = call double @llvm.fabs.f64(double %i.at)
  %i.av = fcmp ult double %i.au, 8.640000e+04
  br i1 %i.av, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = fdiv double %i.at, 8.640000e+04
  %i.ax = fptosi double %i.aw to i32              ; 2 uses
  %i.ay = add nsw i32 %i.ax, %i.ah
  %i.az = mul nsw i32 %i.ax, 86400
  %i.ba = sitofp i32 %i.az to double
  %i.bb = fsub nnan double %i.at, %i.ba
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bc = phi i32 [ %i.ah, %bb.f ], [ %i.ay, %bb.g ]
  %.020.i = phi double [ %i.at, %bb.f ], [ %i.bb, %bb.g ]
  %i.bd = add nsw i32 %i.bc, %i.am
  store i32 %i.bd, ptr %i.g, align 4, !tbaa !441
  %i.be = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.421.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false)
  br i1 %i.be, label %bb.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bf = load double, ptr %i.b, align 8, !tbaa !439
  %i.bg = fmul double %.020.i, 1.000000e+06
  %i.bh = call double @llvm.fmuladd.f64(double %i.bf, double %i.t, double %i.bg)
  %i.bi = call double @llvm.nearbyint.f64(double %i.bh) ; 3 uses
  store double %i.bi, ptr %i.b, align 8, !tbaa !439
  %i.bj = fcmp uno double %i.bi, 0.000000e+00
  br i1 %i.bj, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread: ; preds = %bb.e, %bb.d, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit105

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit: ; preds = %bb.i
  %i.bk = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br i1 %i.bk, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, label %.loopexit105

.loopexit105:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread
  %i.bl = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.j:                                             ; preds = %.loopexit105
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.bl, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.m unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %.loopexit105
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i72 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bo = load ptr, ptr %10, align 8, !tbaa !7    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.bo) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i72, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i72, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78
  %.sink = phi ptr [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73 ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73 ], [ %i.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @__cxa_free_exception(ptr %.sink) #25
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.k
  unreachable

_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.1111
  %i.bs = load <2 x i64>, ptr %9, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store <2 x i64> %i.bs, ptr %i.br, align 8
  %i.bt = add i64 %.1111, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %i.r
  br i1 %exitcond.not, label %.loopexit101, label %bb.d, !llvm.loop !3849

.lr.ph113:                                        ; preds = %.preheader100, %bb.x
  %.2112 = phi i64 [ %i.dw, %bb.x ], [ %.0116, %.preheader100 ] ; 4 uses
  %i.bu = sub nuw i64 %.2112, %.0116
  %i.bv = shl nuw i64 1, %i.bu
  %i.bw = and i64 %i.bv, %i.o
  %.not = icmp eq i64 %i.bw, 0
  br i1 %.not, label %bb.x, label %bb.n

bb.n:                                             ; preds = %.lr.ph113
  %i.bx = load double, ptr %0, align 8, !tbaa !439 ; 4 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.2112 ; 2 uses
  %.sroa.012.0.copyload = load i64, ptr %i.by, align 8 ; 2 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.413.0.copyload = load i64, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.sroa.0.0.extract.trunc.i85 = trunc i64 %.sroa.012.0.copyload to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bz = sitofp i32 %.sroa.0.0.extract.trunc.i85 to double ; 2 uses
  %i.ca = fmul double %i.bx, %i.bz                ; 4 uses
  %i.cb = fcmp uno double %i.ca, 0.000000e+00
  %i.cc = fcmp olt double %i.ca, f0xC1E0000000000000
  %or.cond.i86 = or i1 %i.cb, %i.cc
  %i.cd = fcmp ogt double %i.ca, f0x41DFFFFFFFC00000
  %or.cond21.i87 = or i1 %i.cd, %or.cond.i86
  br i1 %or.cond21.i87, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.3.0.extract.shift.i88 = lshr i64 %.sroa.012.0.copyload, 32
  %.sroa.3.0.extract.trunc.i89 = trunc nuw i64 %.sroa.3.0.extract.shift.i88 to i32
  %i.ce = fptosi double %i.ca to i32              ; 2 uses
  store i32 %i.ce, ptr %6, align 16, !tbaa !437
  %i.cf = sitofp i32 %.sroa.3.0.extract.trunc.i89 to double ; 2 uses
  %i.cg = fmul double %i.bx, %i.cf                ; 5 uses
  store double %i.cg, ptr %i.a, align 8, !tbaa !439
  %i.ch = fcmp uno double %i.cg, 0.000000e+00
  %i.ci = fcmp olt double %i.cg, f0xC1E0000000000000
  %or.cond22.i90 = or i1 %i.ch, %i.ci
  %i.cj = fcmp ogt double %i.cg, f0x41DFFFFFFFC00000
  %or.cond23.i91 = or i1 %i.cj, %or.cond22.i90
  br i1 %or.cond23.i91, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = fptosi double %i.cg to i32              ; 3 uses
  %23 = insertelement <2 x i32> poison, i32 %i.ce, i64 0
  %24 = insertelement <2 x i32> %23, i32 %i.ck, i64 1
  %25 = sitofp <2 x i32> %24 to <2 x double>
  %26 = fneg <2 x double> %25
  %27 = insertelement <2 x double> poison, double %i.bz, i64 0
  %28 = insertelement <2 x double> %27, double %i.cf, i64 1
  %29 = insertelement <2 x double> poison, double %i.bx, i64 0
  %30 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> zeroinitializer
  %31 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> %30, <2 x double> %26) ; 2 uses
  %32 = extractelement <2 x double> %31, i64 0
  %i.cl = fmul double %32, 3.000000e+01
  %i.cm = fmul double %i.cl, 1.000000e+06
  %i.cn = call double @llvm.nearbyint.f64(double %i.cm)
  %i.co = fdiv double %i.cn, 1.000000e+06         ; 2 uses
  %i.cp = fptosi double %i.co to i32              ; 2 uses
  %33 = extractelement <2 x double> %31, i64 1
  %i.cq = fadd double %33, %i.co
  %i.cr = sitofp i32 %i.cp to double
  %i.cs = fsub double %i.cq, %i.cr
  %i.ct = fmul double %i.cs, 8.640000e+04
  %i.cu = fmul double %i.ct, 1.000000e+06
  %i.cv = call double @llvm.nearbyint.f64(double %i.cu)
  %i.cw = fdiv double %i.cv, 1.000000e+06         ; 4 uses
  %i.cx = call double @llvm.fabs.f64(double %i.cw)
  %i.cy = fcmp ult double %i.cx, 8.640000e+04
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = fdiv double %i.cw, 8.640000e+04
  %i.da = fptosi double %i.cz to i32              ; 2 uses
  %i.db = add nsw i32 %i.da, %i.ck
  %i.dc = mul nsw i32 %i.da, 86400
  %i.dd = sitofp i32 %i.dc to double
  %i.de = fsub nnan double %i.cw, %i.dd
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.df = phi i32 [ %i.ck, %bb.p ], [ %i.db, %bb.q ]
  %.020.i92 = phi double [ %i.cw, %bb.p ], [ %i.de, %bb.q ]
  %i.dg = add nsw i32 %i.df, %i.cp
  store i32 %i.dg, ptr %i.i, align 4, !tbaa !441
  %i.dh = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.413.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
  br i1 %i.dh, label %bb.s, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread

bb.s:                                             ; preds = %bb.r
  %i.di = load double, ptr %i.a, align 8, !tbaa !439
  %i.dj = fmul double %.020.i92, 1.000000e+06
  %i.dk = call double @llvm.fmuladd.f64(double %i.di, double %i.bx, double %i.dj)
  %i.dl = call double @llvm.nearbyint.f64(double %i.dk) ; 3 uses
  store double %i.dl, ptr %i.a, align 8, !tbaa !439
  %i.dm = fcmp uno double %i.dl, 0.000000e+00
  br i1 %i.dm, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread: ; preds = %bb.o, %bb.n, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit102

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94: ; preds = %bb.s
  %i.dn = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.dl, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.dn, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit84, label %.loopexit102

.loopexit102:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread
  %i.do = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.t unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73

bb.t:                                             ; preds = %.loopexit102
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.do, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.w unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73: ; preds = %.loopexit102
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume.sink.split

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i76 = phi i1 [ false, %bb.u ], [ true, %bb.t ] ; 2 uses
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dr = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.dr) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.0.i76, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.0.i76, label %common.resume.sink.split, label %common.resume

bb.w:                                             ; preds = %bb.u
  unreachable

_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit84: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.2112
  %i.dv = load <2 x i64>, ptr %6, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store <2 x i64> %i.dv, ptr %i.du, align 8
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph113, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit84
  %i.dw = add i64 %.2112, 1                       ; 2 uses
  %exitcond125.not = icmp eq i64 %i.dw, %i.q
  br i1 %exitcond125.not, label %.loopexit101, label %.lr.ph113, !llvm.loop !3850

.loopexit101:                                     ; preds = %bb.x, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, %.preheader103, %.preheader100, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.q, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.r, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ], [ %.0116, %.preheader100 ], [ %.0116, %.preheader103 ], [ %i.q, %bb.x ]
  %i.dx = add nuw nsw i64 %.069115, 1             ; 2 uses
  %exitcond126.not = icmp eq i64 %i.dx, %i.f
  br i1 %exitcond126.not, label %.loopexit, label %bb.c, !llvm.loop !3851

bb.y:                                             ; preds = %.lr.ph119, %bb.y
  %.070118 = phi i64 [ 0, %.lr.ph119 ], [ %i.ed, %bb.y ] ; 3 uses
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.070118 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.dy, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !18
  %i.dz = tail call { i64, i64 } @_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.02.0.copyload, i64 %.sroa.43.0.copyload, double noundef %i.d) ; 2 uses
  %i.ea = extractvalue { i64, i64 } %i.dz, 0
  %i.eb = extractvalue { i64, i64 } %i.dz, 1
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.070118 ; 2 uses
  store i64 %i.ea, ptr %i.ec, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 %i.eb, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !18
  %i.ed = add nuw i64 %.070118, 1                 ; 2 uses
  %exitcond127.not = icmp eq i64 %i.ed, %3
  br i1 %exitcond127.not, label %.loopexit, label %bb.y, !llvm.loop !3852

.loopexit:                                        ; preds = %.loopexit101, %bb.y, %bb.b, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopIdNS_10interval_tES2_NS_29BinaryStandardOperatorWrapperENS_16MultiplyOperatorEbLb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 7 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %6 = alloca %"struct.duckdb::interval_t", align 16 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"struct.duckdb::interval_t", align 16 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !93
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not130 = icmp eq i64 %3, 0
  br i1 %.not130, label %.loopexit, label %.lr.ph128

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %3, 63
  %i.e = lshr i64 %i.d, 6                         ; 2 uses
  %.not129 = icmp eq i64 %i.e, 0
  br i1 %.not129, label %.loopexit, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph126, %.loopexit110
  %.0125 = phi i64 [ 0, %.lr.ph126 ], [ %.4, %.loopexit110 ] ; 9 uses
  %.078124 = phi i64 [ 0, %.lr.ph126 ], [ %i.dy, %.loopexit110 ] ; 2 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !93     ; 2 uses
  %.not.i80 = icmp eq ptr %i.j, null
  br i1 %.not.i80, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread: ; preds = %bb.c
  %i.k = add i64 %.0125, 64
  %i.l = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %3)
  br label %.preheader112

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.078124
  %i.n = load i64, ptr %i.m, align 8, !tbaa !18   ; 2 uses
  %i.o = add i64 %.0125, 64
  %i.p = call noundef i64 @llvm.umin.i64(i64 %i.o, i64 %3) ; 5 uses
  switch i64 %i.n, label %.preheader109 [
    i64 -1, label %.preheader112
    i64 0, label %.loopexit110
  ]

.preheader112:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.q = phi i64 [ %i.l, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread ], [ %i.p, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ] ; 3 uses
  %i.r = icmp ult i64 %.0125, %i.q
  br i1 %i.r, label %.lr.ph, label %.loopexit110

.preheader109:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.s = icmp ult i64 %.0125, %i.p
  br i1 %i.s, label %.lr.ph122, label %.loopexit110

.lr.ph:                                           ; preds = %.preheader112, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit
  %.1120 = phi i64 [ %i.bt, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ], [ %.0125, %.preheader112 ] ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1120
  %i.u = load double, ptr %i.t, align 8, !tbaa !439 ; 4 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.1120 ; 2 uses
  %.sroa.021.0.copyload = load i64, ptr %i.v, align 8 ; 2 uses
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.422.0.copyload = load i64, ptr %.sroa.422.0..sroa_idx, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.021.0.copyload to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.w = sitofp i32 %.sroa.0.0.extract.trunc.i to double ; 2 uses
  %i.x = fmul double %i.u, %i.w                   ; 4 uses
  %i.y = fcmp uno double %i.x, 0.000000e+00
  %i.z = fcmp olt double %i.x, f0xC1E0000000000000
  %or.cond.i = or i1 %i.y, %i.z
  %i.aa = fcmp ogt double %i.x, f0x41DFFFFFFFC00000
  %or.cond21.i = or i1 %i.aa, %or.cond.i
  br i1 %or.cond21.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %.sroa.3.0.extract.shift.i = lshr i64 %.sroa.021.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %i.ab = fptosi double %i.x to i32               ; 2 uses
  store i32 %i.ab, ptr %9, align 16, !tbaa !437
  %i.ac = sitofp i32 %.sroa.3.0.extract.trunc.i to double ; 2 uses
  %i.ad = fmul double %i.u, %i.ac                 ; 5 uses
  store double %i.ad, ptr %i.b, align 8, !tbaa !439
  %i.ae = fcmp uno double %i.ad, 0.000000e+00
  %i.af = fcmp olt double %i.ad, f0xC1E0000000000000
  %or.cond22.i = or i1 %i.ae, %i.af
  %i.ag = fcmp ogt double %i.ad, f0x41DFFFFFFFC00000
  %or.cond23.i = or i1 %i.ag, %or.cond22.i
  br i1 %or.cond23.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = fptosi double %i.ad to i32              ; 3 uses
  %12 = insertelement <2 x i32> poison, i32 %i.ab, i64 0
  %13 = insertelement <2 x i32> %12, i32 %i.ah, i64 1
  %14 = sitofp <2 x i32> %13 to <2 x double>
  %15 = fneg <2 x double> %14
  %16 = insertelement <2 x double> poison, double %i.w, i64 0
  %17 = insertelement <2 x double> %16, double %i.ac, i64 1
  %18 = insertelement <2 x double> poison, double %i.u, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %20 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %19, <2 x double> %15) ; 2 uses
  %21 = extractelement <2 x double> %20, i64 0
  %i.ai = fmul double %21, 3.000000e+01
  %i.aj = fmul double %i.ai, 1.000000e+06
  %i.ak = call double @llvm.nearbyint.f64(double %i.aj)
  %i.al = fdiv double %i.ak, 1.000000e+06         ; 2 uses
  %i.am = fptosi double %i.al to i32              ; 2 uses
  %22 = extractelement <2 x double> %20, i64 1
  %i.an = fadd double %22, %i.al
  %i.ao = sitofp i32 %i.am to double
  %i.ap = fsub double %i.an, %i.ao
  %i.aq = fmul double %i.ap, 8.640000e+04
  %i.ar = fmul double %i.aq, 1.000000e+06
  %i.as = call double @llvm.nearbyint.f64(double %i.ar)
  %i.at = fdiv double %i.as, 1.000000e+06         ; 4 uses
  %i.au = call double @llvm.fabs.f64(double %i.at)
  %i.av = fcmp ult double %i.au, 8.640000e+04
  br i1 %i.av, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = fdiv double %i.at, 8.640000e+04
  %i.ax = fptosi double %i.aw to i32              ; 2 uses
  %i.ay = add nsw i32 %i.ax, %i.ah
  %i.az = mul nsw i32 %i.ax, 86400
  %i.ba = sitofp i32 %i.az to double
  %i.bb = fsub nnan double %i.at, %i.ba
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bc = phi i32 [ %i.ah, %bb.e ], [ %i.ay, %bb.f ]
  %.020.i = phi double [ %i.at, %bb.e ], [ %i.bb, %bb.f ]
  %i.bd = add nsw i32 %i.bc, %i.am
  store i32 %i.bd, ptr %i.f, align 4, !tbaa !441
  %i.be = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.422.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false)
  br i1 %i.be, label %bb.h, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.bf = load double, ptr %i.b, align 8, !tbaa !439
  %i.bg = fmul double %.020.i, 1.000000e+06
  %i.bh = call double @llvm.fmuladd.f64(double %i.bf, double %i.u, double %i.bg)
  %i.bi = call double @llvm.nearbyint.f64(double %i.bh) ; 3 uses
  store double %i.bi, ptr %i.b, align 8, !tbaa !439
  %i.bj = fcmp uno double %i.bi, 0.000000e+00
  br i1 %i.bj, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread: ; preds = %bb.d, %.lr.ph, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit114

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit: ; preds = %bb.h
  %i.bk = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br i1 %i.bk, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, label %.loopexit114

.loopexit114:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread
  %i.bl = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.i:                                             ; preds = %.loopexit114
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.bl, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.l unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %.loopexit114
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume.sink.split

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i81 = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bo = load ptr, ptr %10, align 8, !tbaa !7    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.bo) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i81, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i81, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87
  %.sink = phi ptr [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82 ], [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87 ], [ %i.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86 ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82 ], [ %i.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87 ], [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86 ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @__cxa_free_exception(ptr %.sink) #25
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86 ], [ %i.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.j
  unreachable

_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.1120
  %i.bs = load <2 x i64>, ptr %9, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store <2 x i64> %i.bs, ptr %i.br, align 8
  %i.bt = add i64 %.1120, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %i.q
  br i1 %exitcond.not, label %.loopexit110, label %.lr.ph, !llvm.loop !3853

.lr.ph122:                                        ; preds = %.preheader109, %bb.w
  %.2121 = phi i64 [ %i.dx, %bb.w ], [ %.0125, %.preheader109 ] ; 5 uses
  %i.bu = sub nuw i64 %.2121, %.0125
  %i.bv = shl nuw i64 1, %i.bu
  %i.bw = and i64 %i.bv, %i.n
  %.not = icmp eq i64 %i.bw, 0
  br i1 %.not, label %bb.w, label %bb.m

bb.m:                                             ; preds = %.lr.ph122
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.2121
  %i.by = load double, ptr %i.bx, align 8, !tbaa !439 ; 4 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.2121 ; 2 uses
  %.sroa.013.0.copyload = load i64, ptr %i.bz, align 8 ; 2 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.414.0.copyload = load i64, ptr %.sroa.414.0..sroa_idx, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.sroa.0.0.extract.trunc.i94 = trunc i64 %.sroa.013.0.copyload to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ca = sitofp i32 %.sroa.0.0.extract.trunc.i94 to double ; 2 uses
  %i.cb = fmul double %i.by, %i.ca                ; 4 uses
  %i.cc = fcmp uno double %i.cb, 0.000000e+00
  %i.cd = fcmp olt double %i.cb, f0xC1E0000000000000
  %or.cond.i95 = or i1 %i.cc, %i.cd
  %i.ce = fcmp ogt double %i.cb, f0x41DFFFFFFFC00000
  %or.cond21.i96 = or i1 %i.ce, %or.cond.i95
  br i1 %or.cond21.i96, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.3.0.extract.shift.i97 = lshr i64 %.sroa.013.0.copyload, 32
  %.sroa.3.0.extract.trunc.i98 = trunc nuw i64 %.sroa.3.0.extract.shift.i97 to i32
  %i.cf = fptosi double %i.cb to i32              ; 2 uses
  store i32 %i.cf, ptr %6, align 16, !tbaa !437
  %i.cg = sitofp i32 %.sroa.3.0.extract.trunc.i98 to double ; 2 uses
  %i.ch = fmul double %i.by, %i.cg                ; 5 uses
  store double %i.ch, ptr %i.a, align 8, !tbaa !439
  %i.ci = fcmp uno double %i.ch, 0.000000e+00
  %i.cj = fcmp olt double %i.ch, f0xC1E0000000000000
  %or.cond22.i99 = or i1 %i.ci, %i.cj
  %i.ck = fcmp ogt double %i.ch, f0x41DFFFFFFFC00000
  %or.cond23.i100 = or i1 %i.ck, %or.cond22.i99
  br i1 %or.cond23.i100, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = fptosi double %i.ch to i32              ; 3 uses
  %23 = insertelement <2 x i32> poison, i32 %i.cf, i64 0
  %24 = insertelement <2 x i32> %23, i32 %i.cl, i64 1
  %25 = sitofp <2 x i32> %24 to <2 x double>
  %26 = fneg <2 x double> %25
  %27 = insertelement <2 x double> poison, double %i.ca, i64 0
  %28 = insertelement <2 x double> %27, double %i.cg, i64 1
  %29 = insertelement <2 x double> poison, double %i.by, i64 0
  %30 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> zeroinitializer
  %31 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> %30, <2 x double> %26) ; 2 uses
  %32 = extractelement <2 x double> %31, i64 0
  %i.cm = fmul double %32, 3.000000e+01
  %i.cn = fmul double %i.cm, 1.000000e+06
  %i.co = call double @llvm.nearbyint.f64(double %i.cn)
  %i.cp = fdiv double %i.co, 1.000000e+06         ; 2 uses
  %i.cq = fptosi double %i.cp to i32              ; 2 uses
  %33 = extractelement <2 x double> %31, i64 1
  %i.cr = fadd double %33, %i.cp
  %i.cs = sitofp i32 %i.cq to double
  %i.ct = fsub double %i.cr, %i.cs
  %i.cu = fmul double %i.ct, 8.640000e+04
  %i.cv = fmul double %i.cu, 1.000000e+06
  %i.cw = call double @llvm.nearbyint.f64(double %i.cv)
  %i.cx = fdiv double %i.cw, 1.000000e+06         ; 4 uses
  %i.cy = call double @llvm.fabs.f64(double %i.cx)
  %i.cz = fcmp ult double %i.cy, 8.640000e+04
  br i1 %i.cz, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.da = fdiv double %i.cx, 8.640000e+04
  %i.db = fptosi double %i.da to i32              ; 2 uses
  %i.dc = add nsw i32 %i.db, %i.cl
  %i.dd = mul nsw i32 %i.db, 86400
  %i.de = sitofp i32 %i.dd to double
  %i.df = fsub nnan double %i.cx, %i.de
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dg = phi i32 [ %i.cl, %bb.o ], [ %i.dc, %bb.p ]
  %.020.i101 = phi double [ %i.cx, %bb.o ], [ %i.df, %bb.p ]
  %i.dh = add nsw i32 %i.dg, %i.cq
  store i32 %i.dh, ptr %i.h, align 4, !tbaa !441
  %i.di = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.414.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
  br i1 %i.di, label %bb.r, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103.thread

bb.r:                                             ; preds = %bb.q
  %i.dj = load double, ptr %i.a, align 8, !tbaa !439
  %i.dk = fmul double %.020.i101, 1.000000e+06
  %i.dl = call double @llvm.fmuladd.f64(double %i.dj, double %i.by, double %i.dk)
  %i.dm = call double @llvm.nearbyint.f64(double %i.dl) ; 3 uses
  store double %i.dm, ptr %i.a, align 8, !tbaa !439
  %i.dn = fcmp uno double %i.dm, 0.000000e+00
  br i1 %i.dn, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103.thread: ; preds = %bb.n, %bb.m, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit111

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103: ; preds = %bb.r
  %i.do = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.dm, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.do, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit93, label %.loopexit111

.loopexit111:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103.thread
  %i.dp = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.s unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82

bb.s:                                             ; preds = %.loopexit111
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @__cxa_throw(ptr nonnull %i.dp, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.v unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82: ; preds = %.loopexit111
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume.sink.split

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0.i85 = phi i1 [ false, %bb.t ], [ true, %bb.s ] ; 2 uses
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ds = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.ds) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.0.i85, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br i1 %.0.i85, label %common.resume.sink.split, label %common.resume

bb.v:                                             ; preds = %bb.t
  unreachable

_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit93: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.2121
  %i.dw = load <2 x i64>, ptr %6, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store <2 x i64> %i.dw, ptr %i.dv, align 8
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph122, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit93
  %i.dx = add i64 %.2121, 1                       ; 2 uses
  %exitcond134.not = icmp eq i64 %i.dx, %i.p
  br i1 %exitcond134.not, label %.loopexit110, label %.lr.ph122, !llvm.loop !3854

.loopexit110:                                     ; preds = %bb.w, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, %.preheader112, %.preheader109, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.p, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.q, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ], [ %.0125, %.preheader109 ], [ %.0125, %.preheader112 ], [ %i.p, %bb.w ]
  %i.dy = add nuw nsw i64 %.078124, 1             ; 2 uses
  %exitcond135.not = icmp eq i64 %i.dy, %i.e
  br i1 %exitcond135.not, label %.loopexit, label %bb.c, !llvm.loop !3855

.lr.ph128:                                        ; preds = %.preheader, %.lr.ph128
  %.079127 = phi i64 [ %i.eg, %.lr.ph128 ], [ 0, %.preheader ] ; 4 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.079127
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !439
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.079127 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.eb, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !18
  %i.ec = tail call { i64, i64 } @_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.02.0.copyload, i64 %.sroa.43.0.copyload, double noundef %i.ea) ; 2 uses
  %i.ed = extractvalue { i64, i64 } %i.ec, 0
  %i.ee = extractvalue { i64, i64 } %i.ec, 1
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.079127 ; 2 uses
  store i64 %i.ed, ptr %i.ef, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i64 %i.ee, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !18
  %i.eg = add nuw i64 %.079127, 1                 ; 2 uses
  %exitcond136.not = icmp eq i64 %i.eg, %3
  br i1 %exitcond136.not, label %.loopexit, label %.lr.ph128, !llvm.loop !3856

.loopexit:                                        ; preds = %.loopexit110, %.lr.ph128, %bb.b, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIdNS_10interval_tES2_NS_29BinaryStandardOperatorWrapperENS_16MultiplyOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext %9) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !93
  %.not.i = icmp eq ptr %i.a, null
  %i.b = load ptr, ptr %7, align 8
  %.not.i49 = icmp eq ptr %i.b, null
  %or.cond = select i1 %.not.i, i1 %.not.i49, i1 false
  %.not78 = icmp eq i64 %5, 0                     ; 2 uses
  br i1 %or.cond, label %.preheader, label %.preheader65

.preheader65:                                     ; preds = %bb.a
  br i1 %.not78, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader65
  %i.c = load ptr, ptr %3, align 8, !tbaa !165    ; 2 uses
  %.not.i50 = icmp eq ptr %i.c, null
  %i.d = load ptr, ptr %4, align 8, !tbaa !165    ; 2 uses
  %.not.i51 = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not78, label %.loopexit, label %.lr.ph69

.lr.ph69:                                         ; preds = %.preheader
  %i.f = load ptr, ptr %3, align 8, !tbaa !165    ; 3 uses
  %.not.i58 = icmp eq ptr %i.f, null
  %i.g = load ptr, ptr %4, align 8, !tbaa !165    ; 3 uses
  %.not.i60 = icmp eq ptr %i.g, null              ; 2 uses
  br i1 %.not.i58, label %.lr.ph69.split.us, label %.lr.ph69.split

.lr.ph69.split.us:                                ; preds = %.lr.ph69
  br i1 %.not.i60, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us.us: ; preds = %.lr.ph69.split.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us.us
  %.04868.us.us = phi i64 [ %i.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us.us ], [ 0, %.lr.ph69.split.us ] ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.04868.us.us
  %i.i = load double, ptr %i.h, align 8, !tbaa !439
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.04868.us.us ; 2 uses
  %.sroa.02.0.copyload.us.us = load i64, ptr %i.j, align 8
  %.sroa.43.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.43.0.copyload.us.us = load i64, ptr %.sroa.43.0..sroa_idx.us.us, align 8, !tbaa !18
  %i.k = tail call { i64, i64 } @_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.02.0.copyload.us.us, i64 %.sroa.43.0.copyload.us.us, double noundef %i.i) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.04868.us.us ; 2 uses
  store i64 %i.l, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.m, ptr %.sroa.4.0..sroa_idx.us.us, align 8, !tbaa !18
  %i.o = add nuw i64 %.04868.us.us, 1             ; 2 uses
  %exitcond86.not = icmp eq i64 %i.o, %5
  br i1 %exitcond86.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us.us, !llvm.loop !3857

_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us: ; preds = %.lr.ph69.split.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us
  %.04868.us = phi i64 [ %i.z, %_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us ], [ 0, %.lr.ph69.split.us ] ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.04868.us
  %i.q = load double, ptr %i.p, align 8, !tbaa !439
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.04868.us
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.t ; 2 uses
  %.sroa.02.0.copyload.us = load i64, ptr %i.u, align 8
  %.sroa.43.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.43.0.copyload.us = load i64, ptr %.sroa.43.0..sroa_idx.us, align 8, !tbaa !18
  %i.v = tail call { i64, i64 } @_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.02.0.copyload.us, i64 %.sroa.43.0.copyload.us, double noundef %i.q) ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = extractvalue { i64, i64 } %i.v, 1
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.04868.us ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6duckdbL17CastExceptionTextIliEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn22.pn.pn.pn.pn.pn
}

declare void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !40   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !40   ; 4 uses
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = load ptr, ptr %2, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.b
  %i.p = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %bb.b
  %i.q = load i64, ptr %i.n, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13 ]
  %.not = icmp ugt i64 %i.e, %i.r
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !39
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !7    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.c:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !40   ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.u, ptr %0, align 8, !tbaa !7
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !15
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !40
  store ptr %i.v, ptr %i.s, align 8, !tbaa !7
  store i64 0, ptr %i.ac, align 8, !tbaa !40
  store i8 0, ptr %i.v, align 8, !tbaa !15
  br label %bb.g

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.af = sub i64 4611686018427387903, %i.b
  %i.ag = icmp ult i64 %i.af, %i.d
  br i1 %i.ag, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d
  %i.ah = load ptr, ptr %2, align 8, !tbaa !7
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ah, i64 noundef %i.d) ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !39
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !7  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !40 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.ak, ptr %0, align 8, !tbaa !7
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !15
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !40
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !7
  store i64 0, ptr %i.as, align 8, !tbaa !40
  store i8 0, ptr %i.al, align 8, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17
  ret void
}

declare void @_ZN6duckdb15ConvertToString9OperationIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i16, i1 } @llvm.umul.with.overflow.i16(i16, i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i8, i1 } @llvm.umul.with.overflow.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin nounwind }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !10, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !12, i64 8, !5, i64 16}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!14, !4, i64 0}
!14 = !{!"_ZTSN6duckdb6date_tE", !4, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"short", !5, i64 0}
!18 = !{!12, !12, i64 0}
!19 = !{i64 0, i64 8, !18, i64 8, i64 8, !18}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_RKS7_DpRKT_: argument 0"}
!22 = distinct !{!22, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_RKS7_DpRKT_"}
!23 = !{!24, !25, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!25 = !{!"p1 _ZTSN6duckdb20ExceptionFormatValueE", !11, i64 0}
!26 = !{!24, !25, i64 8}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!30, !31, i64 0}
!30 = !{!"_ZTSN6duckdb11LogicalTypeE", !31, i64 0, !32, i64 1, !33, i64 8}
!31 = !{!"_ZTSN6duckdb13LogicalTypeIdE", !5, i64 0}
!32 = !{!"_ZTSN6duckdb12PhysicalTypeE", !5, i64 0}
!33 = !{!"_ZTSN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEE", !34, i64 0}
!34 = !{!"_ZTSSt10shared_ptrIN6duckdb13ExtraTypeInfoEE", !35, i64 0}
!35 = !{!"_ZTSSt12__shared_ptrIN6duckdb13ExtraTypeInfoELN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0, !37, i64 8}
!36 = !{!"p1 _ZTSN6duckdb13ExtraTypeInfoE", !11, i64 0}
!37 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !38, i64 0}
!38 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!39 = !{!9, !10, i64 0}
!40 = !{!8, !12, i64 8}
!41 = !{!42, !43, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!43 = !{!"p1 _ZTSN6duckdb11LogicalTypeE", !11, i64 0}
!44 = !{!42, !43, i64 16}
!45 = !{!42, !43, i64 8}
!46 = !{!11, !11, i64 0}
!47 = !{!48, !11, i64 24}
!48 = !{!"_ZTSSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEE", !49, i64 0, !11, i64 24}
!49 = !{!"_ZTSSt14_Function_base", !5, i64 0, !11, i64 16}
!50 = !{!49, !11, i64 16}
!51 = distinct !{!51, !28}
!52 = !{!30, !32, i64 1}
!53 = !{!37, !38, i64 0}
!54 = !{!55, !4, i64 8}
!55 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!56 = !{!55, !4, i64 12}
!57 = !{!58, !58, i64 0}
!58 = !{!"vtable pointer", !6, i64 0}
!59 = distinct !{null, null, null, null, null, null}
!60 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!61 = !{!62, !63, i64 0}
!62 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb12FunctionDataELb0EE", !63, i64 0}
!63 = !{!"p1 _ZTSN6duckdb12FunctionDataE", !11, i64 0}
!64 = !{!65, !12, i64 24}
!65 = !{!"_ZTSN6duckdb9DataChunkE", !66, i64 0, !12, i64 24, !12, i64 32, !12, i64 40, !72, i64 48}
!66 = !{!"_ZTSN6duckdb6vectorINS_6VectorELb1ESaIS1_EEE", !67, i64 0}
!67 = !{!"_ZTSSt6vectorIN6duckdb6VectorESaIS1_EE", !68, i64 0}
!68 = !{!"_ZTSSt12_Vector_baseIN6duckdb6VectorESaIS1_EE", !69, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIN6duckdb6VectorESaIS1_EE12_Vector_implE", !70, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseIN6duckdb6VectorESaIS1_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!71 = !{!"p1 _ZTSN6duckdb6VectorE", !11, i64 0}
!72 = !{!"_ZTSN6duckdb6vectorINS_11VectorCacheELb1ESaIS1_EEE", !73, i64 0}
!73 = !{!"_ZTSSt6vectorIN6duckdb11VectorCacheESaIS1_EE", !74, i64 0}
!74 = !{!"_ZTSSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE", !75, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE12_Vector_implE", !76, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE17_Vector_impl_dataE", !77, i64 0, !77, i64 8, !77, i64 16}
!77 = !{!"p1 _ZTSN6duckdb11VectorCacheE", !11, i64 0}
!78 = !{!79, !80, i64 0}
!79 = !{!"_ZTSN6duckdb6VectorE", !80, i64 0, !30, i64 8, !10, i64 32, !81, i64 40, !88, i64 72, !88, i64 88}
!80 = !{!"_ZTSN6duckdb10VectorTypeE", !5, i64 0}
!81 = !{!"_ZTSN6duckdb12ValidityMaskE", !82, i64 0}
!82 = !{!"_ZTSN6duckdb21TemplatedValidityMaskImEE", !83, i64 0, !84, i64 8, !12, i64 24}
!83 = !{!"p1 long", !11, i64 0}
!84 = !{!"_ZTSN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEE", !85, i64 0}
!85 = !{!"_ZTSSt10shared_ptrIN6duckdb21TemplatedValidityDataImEEE", !86, i64 0}
!86 = !{!"_ZTSSt12__shared_ptrIN6duckdb21TemplatedValidityDataImEELN9__gnu_cxx12_Lock_policyE2EE", !87, i64 0, !37, i64 8}
!87 = !{!"p1 _ZTSN6duckdb21TemplatedValidityDataImEE", !11, i64 0}
!88 = !{!"_ZTSN6duckdb10shared_ptrINS_12VectorBufferELb1EEE", !89, i64 0}
!89 = !{!"_ZTSSt10shared_ptrIN6duckdb12VectorBufferEE", !90, i64 0}
!90 = !{!"_ZTSSt12__shared_ptrIN6duckdb12VectorBufferELN9__gnu_cxx12_Lock_policyE2EE", !91, i64 0, !37, i64 8}
!91 = !{!"p1 _ZTSN6duckdb12VectorBufferE", !11, i64 0}
!92 = !{!79, !10, i64 32}
!93 = !{!82, !83, i64 0}
!94 = distinct !{null, null, null, null, null, null, null, null, null, null}
!95 = !{!82, !12, i64 24}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_8bignum_tES2_NS_8string_tENS_19BinaryLambdaWrapperEbZNS_9BignumAddERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0Lb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!98 = distinct !{!98, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_8bignum_tES2_NS_8string_tENS_19BinaryLambdaWrapperEbZNS_9BignumAddERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0Lb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!99 = !{!100}
!100 = distinct !{!100, !98, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_8bignum_tES2_NS_8string_tENS_19BinaryLambdaWrapperEbZNS_9BignumAddERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0Lb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!101 = !{!102}
!102 = distinct !{!102, !98, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_8bignum_tES2_NS_8string_tENS_19BinaryLambdaWrapperEbZNS_9BignumAddERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0Lb0ELb1EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!103 = !{!97, !100, !102}
!104 = !{!97, !102}
!105 = !{!100, !102}
!106 = !{!97, !100}
!107 = distinct !{!107, !28}
!108 = distinct !{!108, !28}
!109 = distinct !{!109, !28}
!110 = distinct !{!110, !28}
!111 = distinct !{null, null, null, null, null, null, null, null, null, null}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_8bignum_tES2_NS_8string_tENS_19BinaryLambdaWrapperEbZNS_9BignumAddERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0Lb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!114 = distinct !{!114, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_8bignum_tES2_NS_8string_tENS_19BinaryLambdaWrapperEbZNS_9BignumAddERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0Lb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!115 = !{!116}
!116 = distinct !{!116, !114, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_8bignum_tES2_NS_8string_tENS_19BinaryLambdaWrapperEbZNS_9BignumAddERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0Lb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!117 = !{!118}
!118 = distinct !{!118, !114, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_8bignum_tES2_NS_8string_tENS_19BinaryLambdaWrapperEbZNS_9BignumAddERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0Lb1ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!119 = !{!113, !116, !118}
!120 = !{!116, !118}
!121 = !{!113, !118}
!122 = !{!113, !116}
!123 = distinct !{!123, !28}
!124 = distinct !{!124, !28}
!125 = distinct !{!125, !28}
!126 = distinct !{!126, !28}
!127 = distinct !{null, null, null, null, null, null, null, null, null, null}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_8bignum_tES2_NS_8string_tENS_19BinaryLambdaWrapperEbZNS_9BignumAddERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0Lb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 0"}
!130 = distinct !{!130, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_8bignum_tES2_NS_8string_tENS_19BinaryLambdaWrapperEbZNS_9BignumAddERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0Lb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_"}
!131 = !{!132}
!132 = distinct !{!132, !130, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_8bignum_tES2_NS_8string_tENS_19BinaryLambdaWrapperEbZNS_9BignumAddERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0Lb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 1"}
!133 = !{!134}
!134 = distinct !{!134, !130, !"_ZN6duckdb14BinaryExecutor15ExecuteFlatLoopINS_8bignum_tES2_NS_8string_tENS_19BinaryLambdaWrapperEbZNS_9BignumAddERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0Lb0ELb0EEEvPKT_PKT0_PT1_mRNS_12ValidityMaskET4_: argument 2"}
!135 = !{!129, !132, !134}
!136 = !{!132, !134}
!137 = !{!129, !134}
!138 = !{!129, !132}
!139 = distinct !{!139, !28}
!140 = distinct !{!140, !28}
!141 = distinct !{!141, !28}
!142 = distinct !{!142, !28}
!143 = !{!144, !10, i64 8}
!144 = !{!"_ZTSN6duckdb19UnifiedVectorFormatE", !145, i64 0, !10, i64 8, !81, i64 16, !146, i64 48, !32, i64 72}
!145 = !{!"p1 _ZTSN6duckdb15SelectionVectorE", !11, i64 0}
!146 = !{!"_ZTSN6duckdb15SelectionVectorE", !147, i64 0, !148, i64 8}
!147 = !{!"p1 int", !11, i64 0}
!148 = !{!"_ZTSN6duckdb10shared_ptrINS_13SelectionDataELb1EEE", !149, i64 0}
!149 = !{!"_ZTSSt10shared_ptrIN6duckdb13SelectionDataEE", !150, i64 0}
!150 = !{!"_ZTSSt12__shared_ptrIN6duckdb13SelectionDataELN9__gnu_cxx12_Lock_policyE2EE", !151, i64 0, !37, i64 8}
!151 = !{!"p1 _ZTSN6duckdb13SelectionDataE", !11, i64 0}
!152 = !{!144, !145, i64 0}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_8bignum_tES2_NS_8string_tENS_19BinaryLambdaWrapperEbZNS_9BignumAddERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvPKT_PKT0_PT1_PKNS_15SelectionVectorESM_mRNS_12ValidityMaskESO_SO_T4_: argument 0"}
!155 = distinct !{!155, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_8bignum_tES2_NS_8string_tENS_19BinaryLambdaWrapperEbZNS_9BignumAddERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvPKT_PKT0_PT1_PKNS_15SelectionVectorESM_mRNS_12ValidityMaskESO_SO_T4_"}
!156 = !{!157}
!157 = distinct !{!157, !155, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_8bignum_tES2_NS_8string_tENS_19BinaryLambdaWrapperEbZNS_9BignumAddERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvPKT_PKT0_PT1_PKNS_15SelectionVectorESM_mRNS_12ValidityMaskESO_SO_T4_: argument 1"}
!158 = !{!159}
!159 = distinct !{!159, !155, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_8bignum_tES2_NS_8string_tENS_19BinaryLambdaWrapperEbZNS_9BignumAddERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvPKT_PKT0_PT1_PKNS_15SelectionVectorESM_mRNS_12ValidityMaskESO_SO_T4_: argument 2"}
!160 = !{!161}
!161 = distinct !{!161, !155, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_8bignum_tES2_NS_8string_tENS_19BinaryLambdaWrapperEbZNS_9BignumAddERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvPKT_PKT0_PT1_PKNS_15SelectionVectorESM_mRNS_12ValidityMaskESO_SO_T4_: argument 3"}
!162 = !{!163}
!163 = distinct !{!163, !155, !"_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_8bignum_tES2_NS_8string_tENS_19BinaryLambdaWrapperEbZNS_9BignumAddERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEE3$_0EEvPKT_PKT0_PT1_PKNS_15SelectionVectorESM_mRNS_12ValidityMaskESO_SO_T4_: argument 4"}
!164 = !{!154, !157, !159, !161, !163}
end_hunk_4
