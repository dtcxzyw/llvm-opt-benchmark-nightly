Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_ops_main?download=true
inline.NumInlined: 21423
inline.NumDeleted: 1880
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 368
loop-unroll.NumUnrolled: 512
begin_hunk_0_@_ZN6duckdb14ScalarFunction14BinaryFunctionIdNS_10interval_tES2_NS_16MultiplyOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ScalarFunction14BinaryFunctionIlNS_10interval_tES2_NS_16MultiplyOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #2 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  %i.b = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !97
  tail call void @_ZN6duckdb14BinaryExecutor13ExecuteSwitchIlNS_10interval_tES2_NS_29BinaryStandardOperatorWrapperENS_16MultiplyOperatorEbEEvRNS_6VectorES6_S6_mT4_(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.d, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ScalarFunction14BinaryFunctionINS_10interval_tElS2_NS_16MultiplyOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #2 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  %i.b = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !97
  tail call void @_ZN6duckdb14BinaryExecutor13ExecuteSwitchINS_10interval_tElS2_NS_29BinaryStandardOperatorWrapperENS_16MultiplyOperatorEbEEvRNS_6VectorES6_S6_mT4_(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.d, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
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
  %i.h = load ptr, ptr %6, align 8, !tbaa !38     ; 2 uses
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
  %i.f = load ptr, ptr %4, align 8, !tbaa !38     ; 2 uses
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
  %i.c = fmul double %2, %i.b                     ; 3 uses
  %or.cond = fcmp ult double %i.c, f0xC1E0000000000000
  %i.d = fcmp ogt double %i.c, f0x41DFFFFFFFC00000
  %or.cond21 = or i1 %or.cond, %i.d
  br i1 %or.cond21, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.e = fptosi double %i.c to i32                ; 2 uses
  store i32 %i.e, ptr %3, align 8, !tbaa !183
  %i.f = sitofp i32 %.sroa.3.0.extract.trunc to double ; 2 uses
  %i.g = fmul double %2, %i.f                     ; 4 uses
  store double %i.g, ptr %i.a, align 8, !tbaa !185
  %or.cond22 = fcmp ult double %i.g, f0xC1E0000000000000
  %i.h = fcmp ogt double %i.g, f0x41DFFFFFFFC00000
  %or.cond23 = or i1 %or.cond22, %i.h
  br i1 %or.cond23, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fptosi double %i.g to i32                ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.k = insertelement <2 x i32> poison, i32 %i.e, i64 0
  %i.l = insertelement <2 x i32> %i.k, i32 %i.i, i64 1
  %i.m = sitofp <2 x i32> %i.l to <2 x double>
  %i.n = fneg <2 x double> %i.m
  %i.o = insertelement <2 x double> poison, double %i.b, i64 0
  %i.p = insertelement <2 x double> %i.o, double %i.f, i64 1
  %i.q = insertelement <2 x double> poison, double %2, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.r, <2 x double> %i.n) ; 2 uses
  %i.t = extractelement <2 x double> %i.s, i64 0
  %i.u = fmul double %i.t, 3.000000e+01
  %i.v = fmul double %i.u, 1.000000e+06
  %i.w = tail call double @llvm.nearbyint.f64(double %i.v)
  %i.x = fdiv double %i.w, 1.000000e+06           ; 2 uses
  %i.y = fptosi double %i.x to i32                ; 2 uses
  %i.z = extractelement <2 x double> %i.s, i64 1
  %i.aa = fadd double %i.z, %i.x
  %i.ab = sitofp i32 %i.y to double
  %i.ac = fsub double %i.aa, %i.ab
  %i.ad = fmul double %i.ac, 8.640000e+04
  %i.ae = fmul double %i.ad, 1.000000e+06
  %i.af = tail call double @llvm.nearbyint.f64(double %i.ae)
  %i.ag = fdiv double %i.af, 1.000000e+06         ; 4 uses
  %i.ah = tail call double @llvm.fabs.f64(double %i.ag)
  %i.ai = fcmp ult double %i.ah, 8.640000e+04
  br i1 %i.ai, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = fdiv double %i.ag, 8.640000e+04
  %i.ak = fptosi double %i.aj to i32              ; 2 uses
  %i.al = add nsw i32 %i.ak, %i.i
  %i.am = mul nsw i32 %i.ak, 86400
  %i.an = sitofp i32 %i.am to double
  %i.ao = fsub nnan double %i.ag, %i.an
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ap = phi i32 [ %i.i, %bb.c ], [ %i.al, %bb.d ]
  %.020 = phi double [ %i.ag, %bb.c ], [ %i.ao, %bb.d ]
  %i.aq = add nsw i32 %i.ap, %i.y
  store i32 %i.aq, ptr %i.j, align 4, !tbaa !186
  %i.ar = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
  br i1 %i.ar, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.as = load double, ptr %i.a, align 8, !tbaa !185
  %i.at = fmul double %.020, 1.000000e+06
  %i.au = call double @llvm.fmuladd.f64(double %i.as, double %2, double %i.at)
  %i.av = call double @llvm.nearbyint.f64(double %i.au) ; 3 uses
  store double %i.av, ptr %i.a, align 8, !tbaa !185
  %i.aw = fcmp uno double %i.av, 0.000000e+00
  br i1 %i.aw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i1 noundef zeroext false)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.f ], [ %i.ay, %bb.g ], [ false, %bb.e ]
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
  store ptr %i.a, ptr %1, align 8, !tbaa !61
  store i8 47, ptr %i.a, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !41
  invoke void @_ZN6duckdb17ScalarFunctionSetC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1)
          to label %bb.a unwind label %bb.bv

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
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
  br label %.loopexit175

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 noundef zeroext 22)
          to label %bb.c unwind label %.loopexit175.loopexit186

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.h = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28
          to label %.noexc127 unwind label %bb.g  ; 6 uses

.noexc127:                                        ; preds = %bb.c
  store ptr %i.h, ptr %3, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !66
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %.thread230

.thread230:                                       ; preds = %.noexc127
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
  store ptr %i.o, ptr %i.p, align 8, !tbaa !67
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 noundef zeroext 22)
          to label %bb.i unwind label %bb.bw

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #25 ; 0 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #25
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.thread230
  invoke void @__cxa_rethrow() #26
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
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

bb.g:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body128

.body128:                                         ; preds = %bb.d, %bb.g
  %eh.lpad-body129 = phi { ptr, i32 } [ %i.w, %bb.g ], [ %i.t, %bb.d ] ; 2 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !65     ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.h

bb.h:                                             ; preds = %.body128
  call void @_ZdlPv(ptr noundef nonnull %i.x) #27
  br label %.body

end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_130BinaryScalarFunctionIgnoreZeroINS_10interval_tEdS2_NS_14DivideOperatorENS0_23BinaryZeroIsNullWrapperEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.af = phi ptr [ %.pre.i.i.i.i.i, %bb.e ], [ %i.ac, %bb.d ] ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !44
  %i.ah = and i64 %i.ag, -2
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !44
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
  store i64 %i.al, ptr %i.q, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.am, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !44
  br label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit

bb.g:                                             ; preds = %bb.a
  %i.an = icmp eq i8 %i.h, 0
  %or.cond3.i.i = and i1 %i.an, %i.k
  br i1 %or.cond3.i.i, label %bb.h, label %bb.ac

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.d)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !112 ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.e)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !112 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i40.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i40.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i41.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i41.i.i: ; preds = %bb.h
  %i.au = load i64, ptr %i.at, align 8, !tbaa !44
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
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !112 ; 5 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 10 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.d)
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 noundef %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !113, !noalias !486
  %.not.i.i18.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i18.i.i.i, label %.preheader.i.i.i.i, label %bb.k

.preheader.i.i.i.i:                               ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i42.i.i
  %.not106.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not106.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %.lr.ph104.i.i.i.i

.lr.ph104.i.i.i.i:                                ; preds = %.preheader.i.i.i.i
  %i.bb = load double, ptr %i.ar, align 8, !tbaa !185, !alias.scope !484 ; 2 uses
  %i.bc = fcmp oeq double %i.bb, 0.000000e+00
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 64
  br i1 %i.bc, label %.lr.ph104.split.us.split.i.i.i.i, label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i.i.i

.lr.ph104.split.us.split.i.i.i.i:                 ; preds = %.lr.ph104.i.i.i.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i79.us.i.i.i.i
  %i.be = phi ptr [ %i.bi, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i79.us.i.i.i.i ], [ null, %.lr.ph104.i.i.i.i ] ; 2 uses
  %.070103.us.i.i.i.i = phi i64 [ %i.br, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i79.us.i.i.i.i ], [ 0, %.lr.ph104.i.i.i.i ] ; 5 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %.070103.us.i.i.i.i
  %i.bg = load <2 x i64>, ptr %i.bf, align 8, !tbaa !41, !alias.scope !483
  %.not.i.i78.us.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i78.us.i.i.i.i, label %bb.j, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i79.us.i.i.i.i

bb.j:                                             ; preds = %.lr.ph104.split.us.split.i.i.i.i
  %i.bh = load i64, ptr %i.bd, align 8, !tbaa !114, !noalias !486
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 noundef %i.bh), !noalias !486
  %.pre.i.i80.us.i.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !113, !noalias !486
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i79.us.i.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i79.us.i.i.i.i: ; preds = %bb.j, %.lr.ph104.split.us.split.i.i.i.i
  %i.bi = phi ptr [ %.pre.i.i80.us.i.i.i.i, %bb.j ], [ %i.be, %.lr.ph104.split.us.split.i.i.i.i ] ; 2 uses
  %i.bj = lshr i64 %.070103.us.i.i.i.i, 6
  %i.bk = and i64 %.070103.us.i.i.i.i, 63
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = xor i64 %i.bl, -1
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !44, !noalias !486
  %i.bp = and i64 %i.bo, %i.bm
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !44, !noalias !486
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %.070103.us.i.i.i.i
  store <2 x i64> %i.bg, ptr %i.bq, align 8, !tbaa !41, !alias.scope !485
  %i.br = add nuw i64 %.070103.us.i.i.i.i, 1      ; 2 uses
  %exitcond119.not.i.i.i.i = icmp eq i64 %i.br, %i.g
  br i1 %exitcond119.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %.lr.ph104.split.us.split.i.i.i.i, !llvm.loop !452

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
  %.069100.i.i.i.i = phi i64 [ 0, %.lr.ph102.i.i.i.i ], [ %i.gb, %.loopexit89.i.i.i.i ] ; 2 uses
  %i.bx = load ptr, ptr %i.ay, align 8, !tbaa !113, !noalias !486 ; 3 uses
  %.not.i71.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i71.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i.i.i: ; preds = %bb.l
  %i.by = add i64 %.0101.i.i.i.i, 64
  %i.bz = call noundef i64 @llvm.umin.i64(i64 %i.by, i64 %i.g)
  br label %.preheader90.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i: ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.069100.i.i.i.i
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !44, !noalias !486 ; 2 uses
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
  %i.cg = load double, ptr %i.ar, align 8, !tbaa !185, !alias.scope !484 ; 2 uses
  %i.ch = fcmp oeq double %i.cg, 0.000000e+00
  %i.ci = fdiv double 1.000000e+00, %i.cg         ; 4 uses
  br i1 %i.ch, label %.lr.ph.split.us.i.i.i.i, label %.lr.ph.split.i.i.i.i.preheader

.lr.ph.split.i.i.i.i.preheader:                   ; preds = %.lr.ph.i.i.i.i
  %i.cj = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.us.i.i.i.i
  %i.cl = phi ptr [ %i.cp, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.us.i.i.i.i ], [ %i.bx, %.lr.ph.i.i.i.i ] ; 2 uses
  %.196.us.i.i.i.i = phi i64 [ %i.cy, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.us.i.i.i.i ], [ %.0101.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %.196.us.i.i.i.i
  %i.cn = load <2 x i64>, ptr %i.cm, align 8, !tbaa !41, !alias.scope !483
  %.not.i.i.us.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.us.i.i.i.i, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.us.i.i.i.i

bb.m:                                             ; preds = %.lr.ph.split.us.i.i.i.i
  %i.co = load i64, ptr %i.bw, align 8, !tbaa !114, !noalias !486
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 noundef %i.co), !noalias !486
  %.pre.i.i.us.i.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !113, !noalias !486
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.us.i.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.us.i.i.i.i: ; preds = %bb.m, %.lr.ph.split.us.i.i.i.i
  %i.cp = phi ptr [ %.pre.i.i.us.i.i.i.i, %bb.m ], [ %i.cl, %.lr.ph.split.us.i.i.i.i ] ; 2 uses
  %i.cq = lshr i64 %.196.us.i.i.i.i, 6
  %i.cr = and i64 %.196.us.i.i.i.i, 63
  %i.cs = shl nuw i64 1, %i.cr
  %i.ct = xor i64 %i.cs, -1
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cq ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !44, !noalias !486
  %i.cw = and i64 %i.cv, %i.ct
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !44, !noalias !486
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %.196.us.i.i.i.i
  store <2 x i64> %i.cn, ptr %i.cx, align 8, !tbaa !41, !alias.scope !485
  %i.cy = add nuw i64 %.196.us.i.i.i.i, 1         ; 2 uses
  %exitcond114.not.i.i.i.i = icmp eq i64 %i.cy, %i.ce
  br i1 %exitcond114.not.i.i.i.i, label %.loopexit89.i.i.i.i, label %.lr.ph.split.us.i.i.i.i, !llvm.loop !453

.preheader88.i.i.i.i:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %i.cz = icmp ult i64 %.0101.i.i.i.i, %i.cd
  br i1 %i.cz, label %.lr.ph98.i.i.i.i, label %.loopexit89.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i.preheader, %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i.i.i
  %.196.i.i.i.i = phi i64 [ %i.fd, %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i.i.i ], [ %.0101.i.i.i.i, %.lr.ph.split.i.i.i.i.preheader ] ; 3 uses
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %.196.i.i.i.i ; 2 uses
  %.sroa.021.0.copyload.i.i.i.i = load i64, ptr %i.da, align 8, !tbaa !32, !alias.scope !483 ; 2 uses
  %.sroa.422.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.sroa.422.0.copyload.i.i.i.i = load i64, ptr %.sroa.422.0..sroa_idx.i.i.i.i, align 8, !tbaa !44, !alias.scope !483
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !486
  %.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.021.0.copyload.i.i.i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25, !noalias !486
  %i.db = sitofp i32 %.sroa.0.0.extract.trunc.i.i.i.i.i to double ; 2 uses
  %i.dc = fmul double %i.ci, %i.db                ; 3 uses
  %or.cond.i.i.i.i.i = fcmp ult double %i.dc, f0xC1E0000000000000
  %i.dd = fcmp ogt double %i.dc, f0x41DFFFFFFFC00000
  %or.cond21.i.i.i.i.i = or i1 %or.cond.i.i.i.i.i, %i.dd
  br i1 %or.cond21.i.i.i.i.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.i.i.i.i
  %.sroa.3.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.021.0.copyload.i.i.i.i, 32
  %.sroa.3.0.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i.i.i to i32
  %i.de = fptosi double %i.dc to i32              ; 2 uses
  store i32 %i.de, ptr %11, align 16, !tbaa !183, !noalias !486
  %i.df = sitofp i32 %.sroa.3.0.extract.trunc.i.i.i.i.i to double ; 2 uses
  %i.dg = fmul double %i.ci, %i.df                ; 4 uses
  store double %i.dg, ptr %i.c, align 8, !tbaa !185, !noalias !486
  %or.cond22.i.i.i.i.i = fcmp ult double %i.dg, f0xC1E0000000000000
  %i.dh = fcmp ogt double %i.dg, f0x41DFFFFFFFC00000
  %or.cond23.i.i.i.i.i = or i1 %or.cond22.i.i.i.i.i, %i.dh
  br i1 %or.cond23.i.i.i.i.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.di = fptosi double %i.dg to i32              ; 3 uses
  %i.dj = insertelement <2 x i32> poison, i32 %i.de, i64 0
  %i.dk = insertelement <2 x i32> %i.dj, i32 %i.di, i64 1
  %i.dl = sitofp <2 x i32> %i.dk to <2 x double>
  %i.dm = fneg <2 x double> %i.dl
  %i.dn = insertelement <2 x double> poison, double %i.db, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %i.df, i64 1
  %i.dp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.ck, <2 x double> %i.dm) ; 2 uses
  %i.dq = extractelement <2 x double> %i.dp, i64 0
  %i.dr = fmul double %i.dq, 3.000000e+01
  %i.ds = fmul double %i.dr, 1.000000e+06
  %i.dt = call double @llvm.nearbyint.f64(double %i.ds)
  %i.du = fdiv double %i.dt, 1.000000e+06         ; 2 uses
  %i.dv = fptosi double %i.du to i32              ; 2 uses
  %i.dw = extractelement <2 x double> %i.dp, i64 1
  %i.dx = fadd double %i.dw, %i.du
  %i.dy = sitofp i32 %i.dv to double
  %i.dz = fsub double %i.dx, %i.dy
  %i.ea = fmul double %i.dz, 8.640000e+04
  %i.eb = fmul double %i.ea, 1.000000e+06
  %i.ec = call double @llvm.nearbyint.f64(double %i.eb)
  %i.ed = fdiv double %i.ec, 1.000000e+06         ; 4 uses
  %i.ee = call double @llvm.fabs.f64(double %i.ed)
  %i.ef = fcmp ult double %i.ee, 8.640000e+04
  br i1 %i.ef, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eg = fdiv double %i.ed, 8.640000e+04
  %i.eh = fptosi double %i.eg to i32              ; 2 uses
  %i.ei = add nsw i32 %i.eh, %i.di
  %i.ej = mul nsw i32 %i.eh, 86400
  %i.ek = sitofp i32 %i.ej to double
  %i.el = fsub nnan double %i.ed, %i.ek
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.em = phi i32 [ %i.di, %bb.o ], [ %i.ei, %bb.p ]
  %.020.i.i.i.i.i = phi double [ %i.ed, %bb.o ], [ %i.el, %bb.p ]
  %i.en = add nsw i32 %i.em, %i.dv
  store i32 %i.en, ptr %i.bu, align 4, !tbaa !186, !noalias !486
  %i.eo = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.422.0.copyload.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i1 noundef zeroext false), !noalias !486
  br i1 %i.eo, label %bb.r, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.ep = load double, ptr %i.c, align 8, !tbaa !185, !noalias !486
  %i.eq = fmul double %.020.i.i.i.i.i, 1.000000e+06
  %i.er = call double @llvm.fmuladd.f64(double %i.ep, double %i.ci, double %i.eq)
  %i.es = call double @llvm.nearbyint.f64(double %i.er) ; 3 uses
  store double %i.es, ptr %i.c, align 8, !tbaa !185, !noalias !486
  %i.et = fcmp uno double %i.es, 0.000000e+00
  br i1 %i.et, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i.i.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i.i.i

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.n, %.lr.ph.split.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !486
  br label %.loopexit92.i.i.i.i

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i.i.i: ; preds = %bb.r
  %i.eu = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.es, ptr noundef nonnull align 8 dereferenceable(8) %i.bv, i1 noundef zeroext false), !noalias !486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !486
  br i1 %i.eu, label %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i.i.i, label %.loopexit92.i.i.i.i

.loopexit92.i.i.i.i:                              ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i.i.i, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i.i.i
  %i.ev = call ptr @__cxa_allocate_exception(i64 16) #25, !noalias !486 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !486
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !486
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.s unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i, !noalias !486

bb.s:                                             ; preds = %.loopexit92.i.i.i.i
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.t unwind label %bb.u, !noalias !486

bb.t:                                             ; preds = %bb.s
  invoke void @__cxa_throw(ptr nonnull %i.ev, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.w unwind label %bb.u, !noalias !486

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i: ; preds = %.loopexit92.i.i.i.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !486
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !486
  br label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0.i82.i.i.i.i = phi i1 [ false, %bb.t ], [ true, %bb.s ] ; 2 uses
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ey = load ptr, ptr %12, align 8, !tbaa !38, !noalias !486 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.ey) #27, !noalias !486
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !486
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !486
  br i1 %.0.i82.i.i.i.i, label %bb.v, label %common.resume.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !486
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !486
  br i1 %.0.i82.i.i.i.i, label %bb.v, label %common.resume.i.i

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i
  %.pn11.i.i.i.i.i = phi { ptr, i32 } [ %i.ew, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i.i ], [ %i.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i ], [ %i.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.ev) #25, !noalias !486
  br label %common.resume.i.i

common.resume.i.i:                                ; preds = %bb.ei, %bb.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i123.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122.i.i, %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i76.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i75.i.i, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i, %bb.ei ], [ %i.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.ke, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i75.i.i ], [ %i.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i ], [ %.pn11.i.i.i.i.i, %bb.v ], [ %i.ke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i76.i.i ], [ %.pn11.i.i.i72.i.i, %bb.at ], [ %i.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i123.i.i ], [ %.pn11.i.i.i120.i.i, %bb.bw ], [ %i.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.w:                                             ; preds = %bb.t
  unreachable

_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i.i.i: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i.i.i
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %.196.i.i.i.i
  %i.fc = load <2 x i64>, ptr %11, align 16, !noalias !486
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !486
  store <2 x i64> %i.fc, ptr %i.fb, align 8, !tbaa !41, !alias.scope !485
  %i.fd = add nuw i64 %.196.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fd, %i.ce
  br i1 %exitcond.not.i.i.i.i, label %.loopexit89.i.i.i.i, label %.lr.ph.split.i.i.i.i, !llvm.loop !453

.lr.ph98.i.i.i.i:                                 ; preds = %.preheader88.i.i.i.i, %bb.ab
  %.297.i.i.i.i = phi i64 [ %i.ga, %bb.ab ], [ %.0101.i.i.i.i, %.preheader88.i.i.i.i ] ; 6 uses
  %i.fe = sub nuw i64 %.297.i.i.i.i, %.0101.i.i.i.i
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = and i64 %i.ff, %i.cb
  %.not.i.i.i.i = icmp eq i64 %i.fg, 0
  br i1 %.not.i.i.i.i, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %.lr.ph98.i.i.i.i
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %.297.i.i.i.i ; 2 uses
  %.sroa.013.0.copyload.i.i.i.i = load i64, ptr %i.fh, align 8, !tbaa !32, !alias.scope !483 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.sroa.414.0.copyload.i.i.i.i = load i64, ptr %.sroa.414.0..sroa_idx.i.i.i.i, align 8, !tbaa !44, !alias.scope !483 ; 2 uses
  %i.fi = load double, ptr %i.ar, align 8, !tbaa !185, !alias.scope !484 ; 2 uses
  %i.fj = fcmp oeq double %i.fi, 0.000000e+00
  br i1 %i.fj, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.fk = load ptr, ptr %i.ay, align 8, !tbaa !113, !noalias !486 ; 2 uses
  %.not.i.i73.i.i.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i.i73.i.i.i.i, label %bb.z, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.fl = load i64, ptr %i.bw, align 8, !tbaa !114, !noalias !486
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 noundef %i.fl), !noalias !486
  %.pre.i.i75.i.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !113, !noalias !486
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i.i.i: ; preds = %bb.z, %bb.y
  %i.fm = phi ptr [ %.pre.i.i75.i.i.i.i, %bb.z ], [ %i.fk, %bb.y ]
  %i.fn = lshr i64 %.297.i.i.i.i, 6
  %i.fo = and i64 %.297.i.i.i.i, 63
  %i.fp = shl nuw i64 1, %i.fo
  %i.fq = xor i64 %i.fp, -1
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fn ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !44, !noalias !486
  %i.ft = and i64 %i.fs, %i.fq
  store i64 %i.ft, ptr %i.fr, align 8, !tbaa !44, !noalias !486
  %i.fu = insertvalue { i64, i64 } poison, i64 %.sroa.013.0.copyload.i.i.i.i, 0
  %i.fv = insertvalue { i64, i64 } %i.fu, i64 %.sroa.414.0.copyload.i.i.i.i, 1
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit76.i.i.i.i

bb.aa:                                            ; preds = %bb.x
  %i.fw = call { i64, i64 } @_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.013.0.copyload.i.i.i.i, i64 %.sroa.414.0.copyload.i.i.i.i, double noundef %i.fi), !noalias !486
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit76.i.i.i.i

_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit76.i.i.i.i: ; preds = %bb.aa, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i.i.i
  %.fca.1.insert.merged.i72.i.i.i.i = phi { i64, i64 } [ %i.fv, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i.i.i ], [ %i.fw, %bb.aa ] ; 2 uses
  %i.fx = extractvalue { i64, i64 } %.fca.1.insert.merged.i72.i.i.i.i, 0
  %i.fy = extractvalue { i64, i64 } %.fca.1.insert.merged.i72.i.i.i.i, 1
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %.297.i.i.i.i ; 2 uses
  store i64 %i.fx, ptr %i.fz, align 8, !tbaa !32, !alias.scope !485
  %.sroa.411.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i64 %i.fy, ptr %.sroa.411.0..sroa_idx.i.i.i.i, align 8, !tbaa !44, !alias.scope !485
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit76.i.i.i.i, %.lr.ph98.i.i.i.i
  %i.ga = add nuw i64 %.297.i.i.i.i, 1            ; 2 uses
  %exitcond115.not.i.i.i.i = icmp eq i64 %i.ga, %i.cd
  br i1 %exitcond115.not.i.i.i.i, label %.loopexit89.i.i.i.i, label %.lr.ph98.i.i.i.i, !llvm.loop !454

.loopexit89.i.i.i.i:                              ; preds = %bb.ab, %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i.i.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.us.i.i.i.i, %.preheader88.i.i.i.i, %.preheader90.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i
  %.4.i.i.i.i = phi i64 [ %i.cd, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.i ], [ %i.ce, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.us.i.i.i.i ], [ %.0101.i.i.i.i, %.preheader88.i.i.i.i ], [ %.0101.i.i.i.i, %.preheader90.i.i.i.i ], [ %i.ce, %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i.i.i ], [ %i.cd, %bb.ab ]
  %i.gb = add nuw nsw i64 %.069100.i.i.i.i, 1     ; 2 uses
  %exitcond116.not.i.i.i.i = icmp eq i64 %i.gb, %i.bt
  br i1 %exitcond116.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %bb.l, !llvm.loop !455

_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i.i.i: ; preds = %.lr.ph104.i.i.i.i, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i.i.i
  %.070103.i.i.i.i = phi i64 [ %i.gh, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i.i.i ], [ 0, %.lr.ph104.i.i.i.i ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %.070103.i.i.i.i ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.gc, align 8, !tbaa !32, !alias.scope !483
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %.sroa.43.0.copyload.i.i.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !tbaa !44, !alias.scope !483
  %i.gd = tail call { i64, i64 } @_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.02.0.copyload.i.i.i.i, i64 %.sroa.43.0.copyload.i.i.i.i, double noundef %i.bb), !noalias !486 ; 2 uses
  %i.ge = extractvalue { i64, i64 } %i.gd, 0
  %i.gf = extractvalue { i64, i64 } %i.gd, 1
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %.070103.i.i.i.i ; 2 uses
  store i64 %i.ge, ptr %i.gg, align 8, !tbaa !32, !alias.scope !485
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i64 %i.gf, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !44, !alias.scope !485
  %i.gh = add nuw i64 %.070103.i.i.i.i, 1         ; 2 uses
  %exitcond117.not.i.i.i.i = icmp eq i64 %i.gh, %i.g
  br i1 %exitcond117.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i.i.i, !llvm.loop !456

bb.ac:                                            ; preds = %bb.g
  %i.gi = icmp eq i8 %i.i, 0
  %or.cond5.i.i = and i1 %i.j, %i.gi
  br i1 %or.cond5.i.i, label %bb.ad, label %bb.be

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.d)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !112 ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.e)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !112 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i43.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i43.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i: ; preds = %bb.ad
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !44
  %i.gq = trunc i64 %i.gp to i1
  br i1 %i.gq, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i44.i.i, %bb.ad
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !112 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 12 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.e)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %i.gt, ptr noundef nonnull align 8 dereferenceable(32) %i.gu, i64 noundef %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !489)
  %i.gv = load ptr, ptr %i.gt, align 8, !tbaa !113, !noalias !490
  %.not.i.i18.i46.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i18.i46.i.i, label %.preheader.i.i96.i.i, label %bb.af

.preheader.i.i96.i.i:                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i
  %.not106.i.i97.i.i = icmp eq i64 %i.g, 0
  br i1 %.not106.i.i97.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %.lr.ph104.i.i98.i.i

.lr.ph104.i.i98.i.i:                              ; preds = %.preheader.i.i96.i.i
  %.sroa.02.0.copyload.i.i99.i.i = load i64, ptr %i.gk, align 8, !tbaa !32, !alias.scope !487 ; 2 uses
  %.sroa.43.0..sroa_idx.i.i100.i.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %.sroa.43.0.copyload.i.i101.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i100.i.i, align 8, !tbaa !44, !alias.scope !487 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.gx = insertvalue { i64, i64 } poison, i64 %.sroa.02.0.copyload.i.i99.i.i, 0
  %i.gy = insertvalue { i64, i64 } %i.gx, i64 %.sroa.43.0.copyload.i.i101.i.i, 1
  br label %bb.ba

bb.af:                                            ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i45.i.i
  %i.gz = add i64 %i.g, 63
  %i.ha = lshr i64 %i.gz, 6                       ; 2 uses
  %.not105.i.i47.i.i = icmp eq i64 %i.ha, 0
  br i1 %.not105.i.i47.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %.lr.ph102.i.i48.i.i

.lr.ph102.i.i48.i.i:                              ; preds = %bb.af
  %.sroa.422.0..sroa_idx.i.i49.i.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.hc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit89.i.i54.i.i, %.lr.ph102.i.i48.i.i
  %.0101.i.i50.i.i = phi i64 [ 0, %.lr.ph102.i.i48.i.i ], [ %.4.i.i55.i.i, %.loopexit89.i.i54.i.i ] ; 9 uses
  %.069100.i.i51.i.i = phi i64 [ 0, %.lr.ph102.i.i48.i.i ], [ %i.lj, %.loopexit89.i.i54.i.i ] ; 2 uses
  %i.he = load ptr, ptr %i.gt, align 8, !tbaa !113, !noalias !490 ; 2 uses
  %.not.i71.i.i52.i.i = icmp eq ptr %i.he, null
  br i1 %.not.i71.i.i52.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i95.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i53.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i95.i.i: ; preds = %bb.ag
  %i.hf = add i64 %.0101.i.i50.i.i, 64
  %i.hg = call noundef i64 @llvm.umin.i64(i64 %i.hf, i64 %i.g)
  br label %.preheader90.i.i56.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i53.i.i: ; preds = %bb.ag
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %.069100.i.i51.i.i
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !44, !noalias !490 ; 2 uses
  %i.hj = add i64 %.0101.i.i50.i.i, 64
  %i.hk = call noundef i64 @llvm.umin.i64(i64 %i.hj, i64 %i.g) ; 5 uses
  switch i64 %i.hi, label %.preheader88.i.i83.i.i [
    i64 -1, label %.preheader90.i.i56.i.i
    i64 0, label %.loopexit89.i.i54.i.i
  ]

.preheader90.i.i56.i.i:                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i53.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i95.i.i
  %i.hl = phi i64 [ %i.hg, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i95.i.i ], [ %i.hk, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i53.i.i ] ; 3 uses
  %i.hm = icmp ult i64 %.0101.i.i50.i.i, %i.hl
  br i1 %i.hm, label %.lr.ph.i.i57.i.i, label %.loopexit89.i.i54.i.i

.lr.ph.i.i57.i.i:                                 ; preds = %.preheader90.i.i56.i.i
  %i.hn = load <2 x i64>, ptr %i.gk, align 8, !tbaa !41, !alias.scope !487 ; 3 uses
  %i.ho = extractelement <2 x i64> %i.hn, i64 0
  %i.hp = bitcast i64 %i.ho to <2 x i32>
  %i.hq = sitofp <2 x i32> %i.hp to <2 x double>  ; 3 uses
  %i.hr = extractelement <2 x i64> %i.hn, i64 1
  %i.hs = extractelement <2 x double> %i.hq, i64 0
  %i.ht = extractelement <2 x double> %i.hq, i64 1
  br label %bb.ah

.preheader88.i.i83.i.i:                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i53.i.i
  %i.hu = icmp ult i64 %.0101.i.i50.i.i, %i.hk
  br i1 %i.hu, label %.lr.ph98.i.i84.i.i, label %.loopexit89.i.i54.i.i

bb.ah:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i, %.lr.ph.i.i57.i.i
  %.196.i.i63.i.i = phi i64 [ %.0101.i.i50.i.i, %.lr.ph.i.i57.i.i ], [ %i.kl, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i ] ; 5 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.196.i.i63.i.i
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !185, !alias.scope !488 ; 2 uses
  %i.hx = fcmp oeq double %i.hw, 0.000000e+00
  br i1 %i.hx, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.hy = load ptr, ptr %i.gt, align 8, !tbaa !113, !noalias !490 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.i.i.i.i, label %bb.aj, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.hz = load i64, ptr %i.hd, align 8, !tbaa !114, !noalias !490
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.gt, i64 noundef %i.hz), !noalias !490
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.gt, align 8, !tbaa !113, !noalias !490
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %i.ia = phi ptr [ %.pre.i.i.i.i.i.i, %bb.aj ], [ %i.hy, %bb.ai ]
  %i.ib = lshr i64 %.196.i.i63.i.i, 6
  %i.ic = and i64 %.196.i.i63.i.i, 63
  %i.id = shl nuw i64 1, %i.ic
  %i.ie = xor i64 %i.id, -1
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.ib ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !44, !noalias !490
  %i.ih = and i64 %i.ig, %i.ie
  store i64 %i.ih, ptr %i.if, align 8, !tbaa !44, !noalias !490
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !490
  %i.ii = fdiv double 1.000000e+00, %i.hw         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !490
  %i.ij = fmul double %i.ii, %i.hs                ; 3 uses
  %or.cond.i.i.i64.i.i = fcmp ult double %i.ij, f0xC1E0000000000000
  %i.ik = fcmp ogt double %i.ij, f0x41DFFFFFFFC00000
  %or.cond21.i.i.i65.i.i = or i1 %or.cond.i.i.i64.i.i, %i.ik
  br i1 %or.cond21.i.i.i65.i.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i69.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.il = fptosi double %i.ij to i32              ; 2 uses
  store i32 %i.il, ptr %8, align 16, !tbaa !183, !noalias !490
  %i.im = fmul double %i.ii, %i.ht                ; 4 uses
  store double %i.im, ptr %i.b, align 8, !tbaa !185, !noalias !490
  %or.cond22.i.i.i66.i.i = fcmp ult double %i.im, f0xC1E0000000000000
  %i.in = fcmp ogt double %i.im, f0x41DFFFFFFFC00000
  %or.cond23.i.i.i67.i.i = or i1 %or.cond22.i.i.i66.i.i, %i.in
  br i1 %or.cond23.i.i.i67.i.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i69.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.io = fptosi double %i.im to i32              ; 3 uses
  %i.ip = sitofp i32 %i.il to double
  %i.iq = sitofp i32 %i.io to double
  %i.ir = insertelement <2 x double> poison, double %i.ip, i64 0
  %i.is = insertelement <2 x double> %i.ir, double %i.iq, i64 1
  %i.it = fneg <2 x double> %i.is
  %i.iu = insertelement <2 x double> poison, double %i.ii, i64 0
  %i.iv = shufflevector <2 x double> %i.iu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hq, <2 x double> %i.iv, <2 x double> %i.it) ; 2 uses
  %i.ix = extractelement <2 x double> %i.iw, i64 0
  %i.iy = fmul double %i.ix, 3.000000e+01
  %i.iz = fmul double %i.iy, 1.000000e+06
  %i.ja = call double @llvm.nearbyint.f64(double %i.iz)
  %i.jb = fdiv double %i.ja, 1.000000e+06         ; 2 uses
  %i.jc = fptosi double %i.jb to i32              ; 2 uses
  %i.jd = extractelement <2 x double> %i.iw, i64 1
  %i.je = fadd double %i.jd, %i.jb
  %i.jf = sitofp i32 %i.jc to double
  %i.jg = fsub double %i.je, %i.jf
  %i.jh = fmul double %i.jg, 8.640000e+04
  %i.ji = fmul double %i.jh, 1.000000e+06
  %i.jj = call double @llvm.nearbyint.f64(double %i.ji)
  %i.jk = fdiv double %i.jj, 1.000000e+06         ; 4 uses
  %i.jl = call double @llvm.fabs.f64(double %i.jk)
  %i.jm = fcmp ult double %i.jl, 8.640000e+04
  br i1 %i.jm, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jn = fdiv double %i.jk, 8.640000e+04
  %i.jo = fptosi double %i.jn to i32              ; 2 uses
  %i.jp = add nsw i32 %i.jo, %i.io
  %i.jq = mul nsw i32 %i.jo, 86400
  %i.jr = sitofp i32 %i.jq to double
  %i.js = fsub nnan double %i.jk, %i.jr
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.jt = phi i32 [ %i.io, %bb.am ], [ %i.jp, %bb.an ]
  %.020.i.i.i68.i.i = phi double [ %i.jk, %bb.am ], [ %i.js, %bb.an ]
  %i.ju = add nsw i32 %i.jt, %i.jc
  store i32 %i.ju, ptr %i.hb, align 4, !tbaa !186, !noalias !490
  %i.jv = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %i.hr, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false), !noalias !490
  br i1 %i.jv, label %bb.ap, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i69.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.jw = load double, ptr %i.b, align 8, !tbaa !185, !noalias !490
  %i.jx = fmul double %.020.i.i.i68.i.i, 1.000000e+06
  %i.jy = call double @llvm.fmuladd.f64(double %i.jw, double %i.ii, double %i.jx)
  %i.jz = call double @llvm.nearbyint.f64(double %i.jy) ; 3 uses
  store double %i.jz, ptr %i.b, align 8, !tbaa !185, !noalias !490
  %i.ka = fcmp uno double %i.jz, 0.000000e+00
  br i1 %i.ka, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i69.i.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i77.i.i

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i69.i.i: ; preds = %bb.ap, %bb.ao, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !490
  br label %.loopexit92.i.i70.i.i

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i77.i.i: ; preds = %bb.ap
  %i.kb = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.jz, ptr noundef nonnull align 8 dereferenceable(8) %i.hc, i1 noundef zeroext false), !noalias !490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !490
  br i1 %i.kb, label %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i78.i.i, label %.loopexit92.i.i70.i.i

.loopexit92.i.i70.i.i:                            ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i77.i.i, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i69.i.i
  %i.kc = call ptr @__cxa_allocate_exception(i64 16) #25, !noalias !490 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !490
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !490
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.aq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i71.i.i, !noalias !490

bb.aq:                                            ; preds = %.loopexit92.i.i70.i.i
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.kc, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ar unwind label %bb.as, !noalias !490

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.kc, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.au unwind label %bb.as, !noalias !490

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i71.i.i: ; preds = %.loopexit92.i.i70.i.i
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !490
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !490
  br label %bb.at

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.0.i82.i.i74.i.i = phi i1 [ false, %bb.ar ], [ true, %bb.aq ] ; 2 uses
  %i.ke = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.kf = load ptr, ptr %9, align 8, !tbaa !38, !noalias !490 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.kh = icmp eq ptr %i.kf, %i.kg
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i76.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i75.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i75.i.i: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.kf) #27, !noalias !490
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !490
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !490
  br i1 %.0.i82.i.i74.i.i, label %bb.at, label %common.resume.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i76.i.i: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !490
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !490
  br i1 %.0.i82.i.i74.i.i, label %bb.at, label %common.resume.i.i

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i76.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i75.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i71.i.i
  %.pn11.i.i.i72.i.i = phi { ptr, i32 } [ %i.kd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i71.i.i ], [ %i.ke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i76.i.i ], [ %i.ke, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i75.i.i ]
  call void @__cxa_free_exception(ptr %i.kc) #25, !noalias !490
  br label %common.resume.i.i

bb.au:                                            ; preds = %bb.ar
  unreachable

_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i78.i.i: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i77.i.i
  %i.ki = load <2 x i64>, ptr %8, align 16, !noalias !490
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !490
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i

_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i: ; preds = %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i78.i.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i.i
  %i.kj = phi <2 x i64> [ %i.hn, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i.i.i ], [ %i.ki, %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i78.i.i ]
  %i.kk = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %.196.i.i63.i.i
  store <2 x i64> %i.kj, ptr %i.kk, align 8, !tbaa !41, !alias.scope !489
  %i.kl = add nuw i64 %.196.i.i63.i.i, 1          ; 2 uses
  %exitcond.not.i.i82.i.i = icmp eq i64 %i.kl, %i.hl
  br i1 %exitcond.not.i.i82.i.i, label %.loopexit89.i.i54.i.i, label %bb.ah, !llvm.loop !461

.lr.ph98.i.i84.i.i:                               ; preds = %.preheader88.i.i83.i.i, %bb.az
  %.297.i.i85.i.i = phi i64 [ %i.li, %bb.az ], [ %.0101.i.i50.i.i, %.preheader88.i.i83.i.i ] ; 6 uses
  %i.km = sub nuw i64 %.297.i.i85.i.i, %.0101.i.i50.i.i
  %i.kn = shl nuw i64 1, %i.km
  %i.ko = and i64 %i.kn, %i.hi
  %.not.i.i86.i.i = icmp eq i64 %i.ko, 0
  br i1 %.not.i.i86.i.i, label %bb.az, label %bb.av

bb.av:                                            ; preds = %.lr.ph98.i.i84.i.i
  %.sroa.013.0.copyload.i.i87.i.i = load i64, ptr %i.gk, align 8, !tbaa !32, !alias.scope !487 ; 2 uses
  %.sroa.414.0.copyload.i.i88.i.i = load i64, ptr %.sroa.422.0..sroa_idx.i.i49.i.i, align 8, !tbaa !44, !alias.scope !487 ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.297.i.i85.i.i
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !185, !alias.scope !488 ; 2 uses
  %i.kr = fcmp oeq double %i.kq, 0.000000e+00
  br i1 %i.kr, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.ks = load ptr, ptr %i.gt, align 8, !tbaa !113, !noalias !490 ; 2 uses
  %.not.i.i73.i.i92.i.i = icmp eq ptr %i.ks, null
  br i1 %.not.i.i73.i.i92.i.i, label %bb.ax, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i93.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.kt = load i64, ptr %i.hd, align 8, !tbaa !114, !noalias !490
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.gt, i64 noundef %i.kt), !noalias !490
  %.pre.i.i75.i.i94.i.i = load ptr, ptr %i.gt, align 8, !tbaa !113, !noalias !490
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i93.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i93.i.i: ; preds = %bb.ax, %bb.aw
  %i.ku = phi ptr [ %.pre.i.i75.i.i94.i.i, %bb.ax ], [ %i.ks, %bb.aw ]
  %i.kv = lshr i64 %.297.i.i85.i.i, 6
  %i.kw = and i64 %.297.i.i85.i.i, 63
  %i.kx = shl nuw i64 1, %i.kw
  %i.ky = xor i64 %i.kx, -1
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.kv ; 2 uses
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !44, !noalias !490
  %i.lb = and i64 %i.la, %i.ky
  store i64 %i.lb, ptr %i.kz, align 8, !tbaa !44, !noalias !490
  %i.lc = insertvalue { i64, i64 } poison, i64 %.sroa.013.0.copyload.i.i87.i.i, 0
  %i.ld = insertvalue { i64, i64 } %i.lc, i64 %.sroa.414.0.copyload.i.i88.i.i, 1
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit76.i.i89.i.i

bb.ay:                                            ; preds = %bb.av
  %i.le = call { i64, i64 } @_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.013.0.copyload.i.i87.i.i, i64 %.sroa.414.0.copyload.i.i88.i.i, double noundef %i.kq), !noalias !490
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit76.i.i89.i.i

_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit76.i.i89.i.i: ; preds = %bb.ay, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i93.i.i
  %.fca.1.insert.merged.i72.i.i90.i.i = phi { i64, i64 } [ %i.ld, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i74.i.i93.i.i ], [ %i.le, %bb.ay ] ; 2 uses
  %i.lf = extractvalue { i64, i64 } %.fca.1.insert.merged.i72.i.i90.i.i, 0
  %i.lg = extractvalue { i64, i64 } %.fca.1.insert.merged.i72.i.i90.i.i, 1
  %i.lh = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %.297.i.i85.i.i ; 2 uses
  store i64 %i.lf, ptr %i.lh, align 8, !tbaa !32, !alias.scope !489
  %.sroa.411.0..sroa_idx.i.i91.i.i = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store i64 %i.lg, ptr %.sroa.411.0..sroa_idx.i.i91.i.i, align 8, !tbaa !44, !alias.scope !489
  br label %bb.az

bb.az:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit76.i.i89.i.i, %.lr.ph98.i.i84.i.i
  %i.li = add nuw i64 %.297.i.i85.i.i, 1          ; 2 uses
  %exitcond110.not.i.i.i.i = icmp eq i64 %i.li, %i.hk
  br i1 %exitcond110.not.i.i.i.i, label %.loopexit89.i.i54.i.i, label %.lr.ph98.i.i84.i.i, !llvm.loop !462

.loopexit89.i.i54.i.i:                            ; preds = %bb.az, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i, %.preheader88.i.i83.i.i, %.preheader90.i.i56.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i53.i.i
  %.4.i.i55.i.i = phi i64 [ %i.hk, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i53.i.i ], [ %i.hl, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i.i.i ], [ %.0101.i.i50.i.i, %.preheader88.i.i83.i.i ], [ %.0101.i.i50.i.i, %.preheader90.i.i56.i.i ], [ %i.hk, %bb.az ]
  %i.lj = add nuw nsw i64 %.069100.i.i51.i.i, 1   ; 2 uses
  %exitcond111.not.i.i.i.i = icmp eq i64 %i.lj, %i.ha
  br i1 %exitcond111.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %bb.ag, !llvm.loop !463

bb.ba:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i103.i.i, %.lr.ph104.i.i98.i.i
  %.070103.i.i102.i.i = phi i64 [ 0, %.lr.ph104.i.i98.i.i ], [ %i.mb, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i103.i.i ] ; 5 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.070103.i.i102.i.i
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !185, !alias.scope !488 ; 2 uses
  %i.lm = fcmp oeq double %i.ll, 0.000000e+00
  br i1 %i.lm, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.ln = load ptr, ptr %i.gt, align 8, !tbaa !113, !noalias !490 ; 2 uses
  %.not.i.i78.i.i.i.i = icmp eq ptr %i.ln, null
  br i1 %.not.i.i78.i.i.i.i, label %bb.bc, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i79.i.i.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.lo = load i64, ptr %i.gw, align 8, !tbaa !114, !noalias !490
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.gt, i64 noundef %i.lo), !noalias !490
  %.pre.i.i80.i.i.i.i = load ptr, ptr %i.gt, align 8, !tbaa !113, !noalias !490
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i79.i.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i79.i.i.i.i: ; preds = %bb.bc, %bb.bb
  %i.lp = phi ptr [ %.pre.i.i80.i.i.i.i, %bb.bc ], [ %i.ln, %bb.bb ]
  %i.lq = lshr i64 %.070103.i.i102.i.i, 6
  %i.lr = and i64 %.070103.i.i102.i.i, 63
  %i.ls = shl nuw i64 1, %i.lr
  %i.lt = xor i64 %i.ls, -1
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %i.lq ; 2 uses
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !44, !noalias !490
  %i.lw = and i64 %i.lv, %i.lt
  store i64 %i.lw, ptr %i.lu, align 8, !tbaa !44, !noalias !490
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i103.i.i

bb.bd:                                            ; preds = %bb.ba
  %i.lx = tail call { i64, i64 } @_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.02.0.copyload.i.i99.i.i, i64 %.sroa.43.0.copyload.i.i101.i.i, double noundef %i.ll), !noalias !490
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i103.i.i

_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit81.i.i103.i.i: ; preds = %bb.bd, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i79.i.i.i.i
  %.fca.1.insert.merged.i77.i.i.i.i = phi { i64, i64 } [ %i.gy, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i79.i.i.i.i ], [ %i.lx, %bb.bd ] ; 2 uses
  %i.ly = extractvalue { i64, i64 } %.fca.1.insert.merged.i77.i.i.i.i, 0
  %i.lz = extractvalue { i64, i64 } %.fca.1.insert.merged.i77.i.i.i.i, 1
  %i.ma = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %.070103.i.i102.i.i ; 2 uses
  store i64 %i.ly, ptr %i.ma, align 8, !tbaa !32, !alias.scope !489
  %.sroa.4.0..sroa_idx.i.i104.i.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store i64 %i.lz, ptr %.sroa.4.0..sroa_idx.i.i104.i.i, align 8, !tbaa !44, !alias.scope !489
  %i.mb = add nuw i64 %.070103.i.i102.i.i, 1      ; 2 uses
  %exitcond112.not.i.i.i.i = icmp eq i64 %i.mb, %i.g
  br i1 %exitcond112.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %bb.ba, !llvm.loop !464

bb.be:                                            ; preds = %bb.ac
  %i.mc = or i8 %i.i, %i.h
  %or.cond7.i.i = icmp eq i8 %i.mc, 0
  br i1 %or.cond7.i.i, label %bb.bf, label %bb.ch

bb.bf:                                            ; preds = %bb.be
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.d)
  %i.md = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !112 ; 3 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.e)
  %i.mf = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !112 ; 3 uses
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.mh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !112 ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.mj = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 15 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.d)
  %i.mk = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %i.mj, ptr noundef nonnull align 8 dereferenceable(32) %i.mk, i64 noundef %i.g)
  %i.ml = load ptr, ptr %i.mj, align 8, !tbaa !113
  %.not.i.i105.i.i = icmp eq ptr %i.ml, null
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.e)
  %i.mm = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  br i1 %.not.i.i105.i.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %i.mj, ptr noundef nonnull align 8 dereferenceable(32) %i.mm, i64 noundef %i.g)
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  tail call void @_ZN6duckdb12ValidityMask7CombineERKS0_m(ptr noundef nonnull align 8 dereferenceable(32) %i.mj, ptr noundef nonnull align 8 dereferenceable(32) %i.mm, i64 noundef %i.g)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %i.mn = load ptr, ptr %i.mj, align 8, !tbaa !113, !noalias !494
  %.not.i.i.i106.i.i = icmp eq ptr %i.mn, null
  br i1 %.not.i.i.i106.i.i, label %.preheader.i.i135.i.i, label %bb.bj

.preheader.i.i135.i.i:                            ; preds = %bb.bi
  %.not115.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not115.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %.lr.ph113.i.i.i.i

.lr.ph113.i.i.i.i:                                ; preds = %.preheader.i.i135.i.i
  %i.mo = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.cd

bb.bj:                                            ; preds = %bb.bi
  %i.mp = add i64 %i.g, 63
  %i.mq = lshr i64 %i.mp, 6                       ; 2 uses
  %.not114.i.i.i.i = icmp eq i64 %i.mq, 0
  br i1 %.not114.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %.lr.ph111.i.i.i.i

.lr.ph111.i.i.i.i:                                ; preds = %bb.bj
  %i.mr = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ms = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br label %bb.bk

bb.bk:                                            ; preds = %.loopexit98.i.i.i.i, %.lr.ph111.i.i.i.i
  %.0110.i.i.i.i = phi i64 [ 0, %.lr.ph111.i.i.i.i ], [ %.4.i.i108.i.i, %.loopexit98.i.i.i.i ] ; 9 uses
  %.078109.i.i.i.i = phi i64 [ 0, %.lr.ph111.i.i.i.i ], [ %i.qv, %.loopexit98.i.i.i.i ] ; 2 uses
  %i.mu = load ptr, ptr %i.mj, align 8, !tbaa !113, !noalias !494 ; 2 uses
  %.not.i80.i.i.i.i = icmp eq ptr %i.mu, null
  br i1 %.not.i80.i.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i134.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i107.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i134.i.i: ; preds = %bb.bk
  %i.mv = add i64 %.0110.i.i.i.i, 64
  %i.mw = call noundef i64 @llvm.umin.i64(i64 %i.mv, i64 %i.g)
  br label %.preheader99.i.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i107.i.i: ; preds = %bb.bk
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %.078109.i.i.i.i
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !44, !noalias !494 ; 2 uses
  %i.mz = add i64 %.0110.i.i.i.i, 64
  %i.na = call noundef i64 @llvm.umin.i64(i64 %i.mz, i64 %i.g) ; 5 uses
  switch i64 %i.my, label %.preheader97.i.i.i.i [
    i64 -1, label %.preheader99.i.i.i.i
    i64 0, label %.loopexit98.i.i.i.i
  ]

.preheader99.i.i.i.i:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i107.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i134.i.i
  %i.nb = phi i64 [ %i.mw, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.i.i134.i.i ], [ %i.na, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i107.i.i ] ; 3 uses
  %i.nc = icmp ult i64 %.0110.i.i.i.i, %i.nb
  br i1 %i.nc, label %.lr.ph.i.i109.i.i, label %.loopexit98.i.i.i.i

.preheader97.i.i.i.i:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i107.i.i
  %i.nd = icmp ult i64 %.0110.i.i.i.i, %i.na
  br i1 %i.nd, label %.lr.ph107.i.i.i.i, label %.loopexit98.i.i.i.i

.lr.ph.i.i109.i.i:                                ; preds = %.preheader99.i.i.i.i, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i128.i.i
  %.1105.i.i.i.i = phi i64 [ %i.pw, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i128.i.i ], [ %.0110.i.i.i.i, %.preheader99.i.i.i.i ] ; 6 uses
  %i.ne = getelementptr inbounds nuw [16 x i8], ptr %i.me, i64 %.1105.i.i.i.i ; 2 uses
  %.sroa.022.0.copyload.i.i.i.i = load i64, ptr %i.ne, align 8, !tbaa !32, !alias.scope !491 ; 3 uses
  %.sroa.423.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %.sroa.423.0.copyload.i.i.i.i = load i64, ptr %.sroa.423.0..sroa_idx.i.i.i.i, align 8, !tbaa !44, !alias.scope !491 ; 2 uses
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %.1105.i.i.i.i
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !185, !alias.scope !492 ; 2 uses
  %i.nh = fcmp oeq double %i.ng, 0.000000e+00
  br i1 %i.nh, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %.lr.ph.i.i109.i.i
  %i.ni = load ptr, ptr %i.mj, align 8, !tbaa !113, !noalias !494 ; 2 uses
  %.not.i.i.i.i130.i.i = icmp eq ptr %i.ni, null
  br i1 %.not.i.i.i.i130.i.i, label %bb.bm, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i131.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.nj = load i64, ptr %i.mt, align 8, !tbaa !114, !noalias !494
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.mj, i64 noundef %i.nj), !noalias !494
  %.pre.i.i.i.i132.i.i = load ptr, ptr %i.mj, align 8, !tbaa !113, !noalias !494
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i131.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i131.i.i: ; preds = %bb.bm, %bb.bl
  %i.nk = phi ptr [ %.pre.i.i.i.i132.i.i, %bb.bm ], [ %i.ni, %bb.bl ]
  %i.nl = lshr i64 %.1105.i.i.i.i, 6
  %i.nm = and i64 %.1105.i.i.i.i, 63
  %i.nn = shl nuw i64 1, %i.nm
  %i.no = xor i64 %i.nn, -1
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.nl ; 2 uses
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !44, !noalias !494
  %i.nr = and i64 %i.nq, %i.no
  store i64 %i.nr, ptr %i.np, align 8, !tbaa !44, !noalias !494
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i128.i.i

bb.bn:                                            ; preds = %.lr.ph.i.i109.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !494
  %i.ns = fdiv double 1.000000e+00, %i.ng         ; 4 uses
  %.sroa.0.0.extract.trunc.i.i.i110.i.i = trunc i64 %.sroa.022.0.copyload.i.i.i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !494
  %i.nt = sitofp i32 %.sroa.0.0.extract.trunc.i.i.i110.i.i to double ; 2 uses
  %i.nu = fmul double %i.ns, %i.nt                ; 3 uses
  %or.cond.i.i.i111.i.i = fcmp ult double %i.nu, f0xC1E0000000000000
  %i.nv = fcmp ogt double %i.nu, f0x41DFFFFFFFC00000
  %or.cond21.i.i.i112.i.i = or i1 %or.cond.i.i.i111.i.i, %i.nv
  br i1 %or.cond21.i.i.i112.i.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i118.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.sroa.3.0.extract.shift.i.i.i113.i.i = lshr i64 %.sroa.022.0.copyload.i.i.i.i, 32
  %.sroa.3.0.extract.trunc.i.i.i114.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i113.i.i to i32
  %i.nw = fptosi double %i.nu to i32              ; 2 uses
  store i32 %i.nw, ptr %5, align 8, !tbaa !183, !noalias !494
  %i.nx = sitofp i32 %.sroa.3.0.extract.trunc.i.i.i114.i.i to double ; 2 uses
  %i.ny = fmul double %i.ns, %i.nx                ; 4 uses
  store double %i.ny, ptr %i.a, align 8, !tbaa !185, !noalias !494
  %or.cond22.i.i.i115.i.i = fcmp ult double %i.ny, f0xC1E0000000000000
  %i.nz = fcmp ogt double %i.ny, f0x41DFFFFFFFC00000
  %or.cond23.i.i.i116.i.i = or i1 %or.cond22.i.i.i115.i.i, %i.nz
  br i1 %or.cond23.i.i.i116.i.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i118.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.oa = fptosi double %i.ny to i32              ; 3 uses
  %i.ob = insertelement <2 x i32> poison, i32 %i.nw, i64 0
  %i.oc = insertelement <2 x i32> %i.ob, i32 %i.oa, i64 1
  %i.od = sitofp <2 x i32> %i.oc to <2 x double>
  %i.oe = fneg <2 x double> %i.od
  %i.of = insertelement <2 x double> poison, double %i.nt, i64 0
  %i.og = insertelement <2 x double> %i.of, double %i.nx, i64 1
  %i.oh = insertelement <2 x double> poison, double %i.ns, i64 0
  %i.oi = shufflevector <2 x double> %i.oh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.og, <2 x double> %i.oi, <2 x double> %i.oe) ; 2 uses
  %i.ok = extractelement <2 x double> %i.oj, i64 0
  %i.ol = fmul double %i.ok, 3.000000e+01
  %i.om = fmul double %i.ol, 1.000000e+06
  %i.on = call double @llvm.nearbyint.f64(double %i.om)
  %i.oo = fdiv double %i.on, 1.000000e+06         ; 2 uses
  %i.op = fptosi double %i.oo to i32              ; 2 uses
  %i.oq = extractelement <2 x double> %i.oj, i64 1
  %i.or = fadd double %i.oq, %i.oo
  %i.os = sitofp i32 %i.op to double
  %i.ot = fsub double %i.or, %i.os
  %i.ou = fmul double %i.ot, 8.640000e+04
  %i.ov = fmul double %i.ou, 1.000000e+06
  %i.ow = call double @llvm.nearbyint.f64(double %i.ov)
  %i.ox = fdiv double %i.ow, 1.000000e+06         ; 4 uses
  %i.oy = call double @llvm.fabs.f64(double %i.ox)
  %i.oz = fcmp ult double %i.oy, 8.640000e+04
  br i1 %i.oz, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.pa = fdiv double %i.ox, 8.640000e+04
  %i.pb = fptosi double %i.pa to i32              ; 2 uses
  %i.pc = add nsw i32 %i.pb, %i.oa
  %i.pd = mul nsw i32 %i.pb, 86400
  %i.pe = sitofp i32 %i.pd to double
  %i.pf = fsub nnan double %i.ox, %i.pe
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.pg = phi i32 [ %i.oa, %bb.bp ], [ %i.pc, %bb.bq ]
  %.020.i.i.i117.i.i = phi double [ %i.ox, %bb.bp ], [ %i.pf, %bb.bq ]
  %i.ph = add nsw i32 %i.pg, %i.op
  store i32 %i.ph, ptr %i.mr, align 4, !tbaa !186, !noalias !494
  %i.pi = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.423.0.copyload.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false), !noalias !494
  br i1 %i.pi, label %bb.bs, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i118.i.i

bb.bs:                                            ; preds = %bb.br
  %i.pj = load double, ptr %i.a, align 8, !tbaa !185, !noalias !494
  %i.pk = fmul double %.020.i.i.i117.i.i, 1.000000e+06
  %i.pl = call double @llvm.fmuladd.f64(double %i.pj, double %i.ns, double %i.pk)
  %i.pm = call double @llvm.nearbyint.f64(double %i.pl) ; 3 uses
  store double %i.pm, ptr %i.a, align 8, !tbaa !185, !noalias !494
  %i.pn = fcmp uno double %i.pm, 0.000000e+00
  br i1 %i.pn, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i118.i.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i124.i.i

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i118.i.i: ; preds = %bb.bs, %bb.br, %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !494
  br label %.loopexit101.i.i.i.i

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i124.i.i: ; preds = %bb.bs
  %i.po = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.pm, ptr noundef nonnull align 8 dereferenceable(8) %i.ms, i1 noundef zeroext false), !noalias !494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !494
  br i1 %i.po, label %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i125.i.i, label %.loopexit101.i.i.i.i

.loopexit101.i.i.i.i:                             ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i124.i.i, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread.i.i118.i.i
  %i.pp = call ptr @__cxa_allocate_exception(i64 16) #25, !noalias !494 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !494
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !494
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.bt unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i119.i.i, !noalias !494

bb.bt:                                            ; preds = %.loopexit101.i.i.i.i
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.pp, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.bu unwind label %bb.bv, !noalias !494

bb.bu:                                            ; preds = %bb.bt
  invoke void @__cxa_throw(ptr nonnull %i.pp, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.bx unwind label %bb.bv, !noalias !494

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i119.i.i: ; preds = %.loopexit101.i.i.i.i
  %i.pq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !494
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !494
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.0.i91.i.i.i.i = phi i1 [ false, %bb.bu ], [ true, %bb.bt ] ; 2 uses
  %i.pr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ps = load ptr, ptr %6, align 8, !tbaa !38, !noalias !494 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.pu = icmp eq ptr %i.ps, %i.pt
  br i1 %i.pu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i123.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122.i.i: ; preds = %bb.bv
  call void @_ZdlPv(ptr noundef %i.ps) #27, !noalias !494
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !494
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !494
  br i1 %.0.i91.i.i.i.i, label %bb.bw, label %common.resume.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i123.i.i: ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !494
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !494
  br i1 %.0.i91.i.i.i.i, label %bb.bw, label %common.resume.i.i

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i123.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i119.i.i
  %.pn11.i.i.i120.i.i = phi { ptr, i32 } [ %i.pq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i119.i.i ], [ %i.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i123.i.i ], [ %i.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i122.i.i ]
  call void @__cxa_free_exception(ptr %i.pp) #25, !noalias !494
  br label %common.resume.i.i

bb.bx:                                            ; preds = %bb.bu
  unreachable

_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i125.i.i: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.i.i124.i.i
  %.fca.0.load.i.i.i126.i.i = load i64, ptr %5, align 8, !noalias !494
  %.fca.1.load.i.i.i127.i.i = load i64, ptr %i.ms, align 8, !noalias !494
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !494
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i128.i.i

_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i128.i.i: ; preds = %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i125.i.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i131.i.i
  %.sroa.022.0.copyload.pn.i.i.i.i = phi i64 [ %.sroa.022.0.copyload.i.i.i.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i131.i.i ], [ %.fca.0.load.i.i.i126.i.i, %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i125.i.i ]
  %.sroa.423.0.copyload.pn.i.i.i.i = phi i64 [ %.sroa.423.0.copyload.i.i.i.i, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i.i131.i.i ], [ %.fca.1.load.i.i.i127.i.i, %_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit.i.i125.i.i ]
  %i.pv = getelementptr inbounds nuw [16 x i8], ptr %i.mi, i64 %.1105.i.i.i.i ; 2 uses
  store i64 %.sroa.022.0.copyload.pn.i.i.i.i, ptr %i.pv, align 8, !tbaa !32, !alias.scope !493
  %.sroa.420.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  store i64 %.sroa.423.0.copyload.pn.i.i.i.i, ptr %.sroa.420.0..sroa_idx.i.i.i.i, align 8, !tbaa !44, !alias.scope !493
  %i.pw = add nuw i64 %.1105.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i129.i.i = icmp eq i64 %i.pw, %i.nb
  br i1 %exitcond.not.i.i129.i.i, label %.loopexit98.i.i.i.i, label %.lr.ph.i.i109.i.i, !llvm.loop !469

.lr.ph107.i.i.i.i:                                ; preds = %.preheader97.i.i.i.i, %bb.cc
  %.2106.i.i.i.i = phi i64 [ %i.qu, %bb.cc ], [ %.0110.i.i.i.i, %.preheader97.i.i.i.i ] ; 7 uses
  %i.px = sub nuw i64 %.2106.i.i.i.i, %.0110.i.i.i.i
  %i.py = shl nuw i64 1, %i.px
  %i.pz = and i64 %i.py, %i.my
  %.not.i25.i.i.i = icmp eq i64 %i.pz, 0
  br i1 %.not.i25.i.i.i, label %bb.cc, label %bb.by

bb.by:                                            ; preds = %.lr.ph107.i.i.i.i
  %i.qa = getelementptr inbounds nuw [16 x i8], ptr %i.me, i64 %.2106.i.i.i.i ; 2 uses
  %.sroa.014.0.copyload.i.i.i.i = load i64, ptr %i.qa, align 8, !tbaa !32, !alias.scope !491 ; 2 uses
  %.sroa.415.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  %.sroa.415.0.copyload.i.i.i.i = load i64, ptr %.sroa.415.0..sroa_idx.i.i.i.i, align 8, !tbaa !44, !alias.scope !491 ; 2 uses
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %.2106.i.i.i.i
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !185, !alias.scope !492 ; 2 uses
  %i.qd = fcmp oeq double %i.qc, 0.000000e+00
  br i1 %i.qd, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.qe = load ptr, ptr %i.mj, align 8, !tbaa !113, !noalias !494 ; 2 uses
  %.not.i.i82.i.i.i.i = icmp eq ptr %i.qe, null
  br i1 %.not.i.i82.i.i.i.i, label %bb.ca, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i83.i.i.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.qf = load i64, ptr %i.mt, align 8, !tbaa !114, !noalias !494
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.mj, i64 noundef %i.qf), !noalias !494
  %.pre.i.i84.i.i.i.i = load ptr, ptr %i.mj, align 8, !tbaa !113, !noalias !494
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i83.i.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i83.i.i.i.i: ; preds = %bb.ca, %bb.bz
  %i.qg = phi ptr [ %.pre.i.i84.i.i.i.i, %bb.ca ], [ %i.qe, %bb.bz ]
  %i.qh = lshr i64 %.2106.i.i.i.i, 6
  %i.qi = and i64 %.2106.i.i.i.i, 63
  %i.qj = shl nuw i64 1, %i.qi
  %i.qk = xor i64 %i.qj, -1
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %i.qh ; 2 uses
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !44, !noalias !494
  %i.qn = and i64 %i.qm, %i.qk
  store i64 %i.qn, ptr %i.ql, align 8, !tbaa !44, !noalias !494
  %i.qo = insertvalue { i64, i64 } poison, i64 %.sroa.014.0.copyload.i.i.i.i, 0
  %i.qp = insertvalue { i64, i64 } %i.qo, i64 %.sroa.415.0.copyload.i.i.i.i, 1
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit85.i.i.i.i

bb.cb:                                            ; preds = %bb.by
  %i.qq = call { i64, i64 } @_ZN6duckdb14DivideOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.014.0.copyload.i.i.i.i, i64 %.sroa.415.0.copyload.i.i.i.i, double noundef %i.qc), !noalias !494
  br label %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit85.i.i.i.i

_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit85.i.i.i.i: ; preds = %bb.cb, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i83.i.i.i.i
  %.fca.1.insert.merged.i81.i.i.i.i = phi { i64, i64 } [ %i.qp, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i83.i.i.i.i ], [ %i.qq, %bb.cb ] ; 2 uses
  %i.qr = extractvalue { i64, i64 } %.fca.1.insert.merged.i81.i.i.i.i, 0
  %i.qs = extractvalue { i64, i64 } %.fca.1.insert.merged.i81.i.i.i.i, 1
  %i.qt = getelementptr inbounds nuw [16 x i8], ptr %i.mi, i64 %.2106.i.i.i.i ; 2 uses
  store i64 %i.qr, ptr %i.qt, align 8, !tbaa !32, !alias.scope !493
  %.sroa.412.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  store i64 %i.qs, ptr %.sroa.412.0..sroa_idx.i.i.i.i, align 8, !tbaa !44, !alias.scope !493
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit85.i.i.i.i, %.lr.ph107.i.i.i.i
  %i.qu = add nuw i64 %.2106.i.i.i.i, 1           ; 2 uses
  %exitcond119.not.i.i133.i.i = icmp eq i64 %i.qu, %i.na
  br i1 %exitcond119.not.i.i133.i.i, label %.loopexit98.i.i.i.i, label %.lr.ph107.i.i.i.i, !llvm.loop !470

.loopexit98.i.i.i.i:                              ; preds = %bb.cc, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i128.i.i, %.preheader97.i.i.i.i, %.preheader99.i.i.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i107.i.i
  %.4.i.i108.i.i = phi i64 [ %i.na, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i107.i.i ], [ %i.nb, %_ZN6duckdb12_GLOBAL__N_123BinaryZeroIsNullWrapper9OperationIbNS_14DivideOperatorENS_10interval_tEdS4_EET3_T_T1_T2_RNS_12ValidityMaskEm.exit.i.i128.i.i ], [ %.0110.i.i.i.i, %.preheader97.i.i.i.i ], [ %.0110.i.i.i.i, %.preheader99.i.i.i.i ], [ %i.na, %bb.cc ]
  %i.qv = add nuw nsw i64 %.078109.i.i.i.i, 1     ; 2 uses
  %exitcond120.not.i.i.i.i = icmp eq i64 %i.qv, %i.mq
  br i1 %exitcond120.not.i.i.i.i, label %_ZN6duckdb14BinaryExecutor7ExecuteINS_10interval_tEdS2_NS_14DivideOperatorENS_12_GLOBAL__N_123BinaryZeroIsNullWrapperEEEvRNS_6VectorES7_S7_m.exit, label %bb.bk, !llvm.loop !471
end_hunk_1
begin_hunk_2_@_ZN6duckdb14BinaryExecutor14ExecuteGenericINS_10interval_tEdS2_NS_29BinaryStandardOperatorWrapperENS_16MultiplyOperatorEbEEvRNS_6VectorES6_S6_mT4_:bb.a
bb.w:                                             ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.av, align 8, !tbaa !76
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !77
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !79
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !16
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !79
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !16
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i19

bb.y:                                             ; preds = %bb.w
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i16 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i16, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i17

bb.aa:                                            ; preds = %bb.y
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i17

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i17: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i18 = phi i32 [ %i.ay, %bb.z ], [ %i.bi, %bb.aa ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i.i.i18, 1
  br i1 %i.bj, label %bb.ab, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i19, !prof !80

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i17
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i19

_ZN6duckdb15SelectionVectorD2Ev.exit.i19:         ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i17, %bb.x, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !74 ; 8 uses
  %.not.i.i.i.i1.i20 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i1.i20, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit24, label %bb.ac

bb.ac:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.bm, align 8, !tbaa !76
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !77
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !79
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25, !inline_history !17
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !79
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25, !inline_history !17
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit24

bb.ae:                                            ; preds = %bb.ac
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i2.i21 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i2.i21, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i22

bb.ag:                                            ; preds = %bb.ae
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i22

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i22: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i4.i23 = phi i32 [ %i.bp, %bb.af ], [ %i.bz, %bb.ag ]
  %i.ca = icmp eq i32 %.0.i.i.i.i.i.i4.i23, 1
  br i1 %i.ca, label %bb.ah, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit24, !prof !80

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i22
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit24

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit24:       ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i19, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i22, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void

bb.ai:                                            ; preds = %bb.a
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.b, %bb.c, %bb.d, %bb.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %6) #25
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn.pn = phi { ptr, i32 } [ %i.cc, %bb.aj ], [ %i.cb, %bb.ai ]
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
  %i.c = load ptr, ptr %4, align 8, !tbaa !113
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not121 = icmp eq i64 %3, 0
  br i1 %.not121, label %.loopexit, label %.lr.ph119

.lr.ph119:                                        ; preds = %.preheader
  %i.d = load double, ptr %1, align 8, !tbaa !185
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
  %.069115 = phi i64 [ 0, %.lr.ph117 ], [ %i.el, %.loopexit101 ] ; 2 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !113    ; 2 uses
  %.not.i71 = icmp eq ptr %i.k, null
  br i1 %.not.i71, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread: ; preds = %bb.c
  %i.l = add i64 %.0116, 64
  %i.m = call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %3)
  br label %.preheader103

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.069115
  %i.o = load i64, ptr %i.n, align 8, !tbaa !44   ; 2 uses
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
  %i.t = load double, ptr %1, align 8, !tbaa !185 ; 4 uses
  %i.u = insertelement <2 x double> poison, double %i.t, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.d

.preheader100:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.w = icmp ult i64 %.0116, %i.q
  br i1 %i.w, label %.lr.ph113, label %.loopexit101

bb.d:                                             ; preds = %.lr.ph, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit
  %.1111 = phi i64 [ %.0116, %.lr.ph ], [ %i.ca, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ] ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.1111 ; 2 uses
  %.sroa.021.0.copyload = load i64, ptr %i.x, align 8, !tbaa !32 ; 2 uses
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.422.0.copyload = load i64, ptr %.sroa.422.0..sroa_idx, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.021.0.copyload to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.y = sitofp i32 %.sroa.0.0.extract.trunc.i to double ; 2 uses
  %i.z = fmul double %i.t, %i.y                   ; 3 uses
  %or.cond.i = fcmp ult double %i.z, f0xC1E0000000000000
  %i.aa = fcmp ogt double %i.z, f0x41DFFFFFFFC00000
  %or.cond21.i = or i1 %or.cond.i, %i.aa
  br i1 %or.cond21.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.3.0.extract.shift.i = lshr i64 %.sroa.021.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %i.ab = fptosi double %i.z to i32               ; 2 uses
  store i32 %i.ab, ptr %9, align 16, !tbaa !183
  %i.ac = sitofp i32 %.sroa.3.0.extract.trunc.i to double ; 2 uses
  %i.ad = fmul double %i.t, %i.ac                 ; 4 uses
  store double %i.ad, ptr %i.b, align 8, !tbaa !185
  %or.cond22.i = fcmp ult double %i.ad, f0xC1E0000000000000
  %i.ae = fcmp ogt double %i.ad, f0x41DFFFFFFFC00000
  %or.cond23.i = or i1 %or.cond22.i, %i.ae
  br i1 %or.cond23.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = fptosi double %i.ad to i32              ; 3 uses
  %i.ag = insertelement <2 x i32> poison, i32 %i.ab, i64 0
  %i.ah = insertelement <2 x i32> %i.ag, i32 %i.af, i64 1
  %i.ai = sitofp <2 x i32> %i.ah to <2 x double>
  %i.aj = fneg <2 x double> %i.ai
  %i.ak = insertelement <2 x double> poison, double %i.y, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.ac, i64 1
  %i.am = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.v, <2 x double> %i.aj) ; 2 uses
  %i.an = extractelement <2 x double> %i.am, i64 0
  %i.ao = fmul double %i.an, 3.000000e+01
  %i.ap = fmul double %i.ao, 1.000000e+06
  %i.aq = call double @llvm.nearbyint.f64(double %i.ap)
  %i.ar = fdiv double %i.aq, 1.000000e+06         ; 2 uses
  %i.as = fptosi double %i.ar to i32              ; 2 uses
  %i.at = extractelement <2 x double> %i.am, i64 1
  %i.au = fadd double %i.at, %i.ar
  %i.av = sitofp i32 %i.as to double
  %i.aw = fsub double %i.au, %i.av
  %i.ax = fmul double %i.aw, 8.640000e+04
  %i.ay = fmul double %i.ax, 1.000000e+06
  %i.az = call double @llvm.nearbyint.f64(double %i.ay)
  %i.ba = fdiv double %i.az, 1.000000e+06         ; 4 uses
  %i.bb = call double @llvm.fabs.f64(double %i.ba)
  %i.bc = fcmp ult double %i.bb, 8.640000e+04
  br i1 %i.bc, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = fdiv double %i.ba, 8.640000e+04
  %i.be = fptosi double %i.bd to i32              ; 2 uses
  %i.bf = add nsw i32 %i.be, %i.af
  %i.bg = mul nsw i32 %i.be, 86400
  %i.bh = sitofp i32 %i.bg to double
  %i.bi = fsub nnan double %i.ba, %i.bh
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bj = phi i32 [ %i.af, %bb.f ], [ %i.bf, %bb.g ]
  %.020.i = phi double [ %i.ba, %bb.f ], [ %i.bi, %bb.g ]
  %i.bk = add nsw i32 %i.bj, %i.as
  store i32 %i.bk, ptr %i.g, align 4, !tbaa !186
  %i.bl = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.422.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false)
  br i1 %i.bl, label %bb.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bm = load double, ptr %i.b, align 8, !tbaa !185
  %i.bn = fmul double %.020.i, 1.000000e+06
  %i.bo = call double @llvm.fmuladd.f64(double %i.bm, double %i.t, double %i.bn)
  %i.bp = call double @llvm.nearbyint.f64(double %i.bo) ; 3 uses
  store double %i.bp, ptr %i.b, align 8, !tbaa !185
  %i.bq = fcmp uno double %i.bp, 0.000000e+00
  br i1 %i.bq, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread: ; preds = %bb.e, %bb.d, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit105

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit: ; preds = %bb.i
  %i.br = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br i1 %i.br, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, label %.loopexit105

.loopexit105:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread
  %i.bs = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.j:                                             ; preds = %.loopexit105
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.bs, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.m unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %.loopexit105
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i72 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bv = load ptr, ptr %10, align 8, !tbaa !38   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.bv) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i72, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i72, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78
  %.sink = phi ptr [ %i.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73 ], [ %i.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %i.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73 ], [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %i.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @__cxa_free_exception(ptr %.sink) #25
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.k
  unreachable

_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.1111
  %i.bz = load <2 x i64>, ptr %9, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store <2 x i64> %i.bz, ptr %i.by, align 8, !tbaa !41
  %i.ca = add i64 %.1111, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %i.r
  br i1 %exitcond.not, label %.loopexit101, label %bb.d, !llvm.loop !3507

.lr.ph113:                                        ; preds = %.preheader100, %bb.x
  %.2112 = phi i64 [ %i.ek, %bb.x ], [ %.0116, %.preheader100 ] ; 4 uses
  %i.cb = sub nuw i64 %.2112, %.0116
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.cc, %i.o
  %.not = icmp eq i64 %i.cd, 0
  br i1 %.not, label %bb.x, label %bb.n

bb.n:                                             ; preds = %.lr.ph113
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.2112 ; 2 uses
  %.sroa.013.0.copyload = load i64, ptr %i.ce, align 8, !tbaa !32 ; 2 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.414.0.copyload = load i64, ptr %.sroa.414.0..sroa_idx, align 8, !tbaa !44
  %i.cf = load double, ptr %1, align 8, !tbaa !185 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.sroa.0.0.extract.trunc.i85 = trunc i64 %.sroa.013.0.copyload to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.cg = sitofp i32 %.sroa.0.0.extract.trunc.i85 to double ; 2 uses
  %i.ch = fmul double %i.cf, %i.cg                ; 3 uses
  %or.cond.i86 = fcmp ult double %i.ch, f0xC1E0000000000000
  %i.ci = fcmp ogt double %i.ch, f0x41DFFFFFFFC00000
  %or.cond21.i87 = or i1 %or.cond.i86, %i.ci
  br i1 %or.cond21.i87, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.3.0.extract.shift.i88 = lshr i64 %.sroa.013.0.copyload, 32
  %.sroa.3.0.extract.trunc.i89 = trunc nuw i64 %.sroa.3.0.extract.shift.i88 to i32
  %i.cj = fptosi double %i.ch to i32              ; 2 uses
  store i32 %i.cj, ptr %6, align 16, !tbaa !183
  %i.ck = sitofp i32 %.sroa.3.0.extract.trunc.i89 to double ; 2 uses
  %i.cl = fmul double %i.cf, %i.ck                ; 4 uses
  store double %i.cl, ptr %i.a, align 8, !tbaa !185
  %or.cond22.i90 = fcmp ult double %i.cl, f0xC1E0000000000000
  %i.cm = fcmp ogt double %i.cl, f0x41DFFFFFFFC00000
  %or.cond23.i91 = or i1 %or.cond22.i90, %i.cm
  br i1 %or.cond23.i91, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = fptosi double %i.cl to i32              ; 3 uses
  %i.co = insertelement <2 x i32> poison, i32 %i.cj, i64 0
  %i.cp = insertelement <2 x i32> %i.co, i32 %i.cn, i64 1
  %i.cq = sitofp <2 x i32> %i.cp to <2 x double>
  %i.cr = fneg <2 x double> %i.cq
  %i.cs = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %i.ck, i64 1
  %i.cu = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.cv, <2 x double> %i.cr) ; 2 uses
  %i.cx = extractelement <2 x double> %i.cw, i64 0
  %i.cy = fmul double %i.cx, 3.000000e+01
  %i.cz = fmul double %i.cy, 1.000000e+06
  %i.da = call double @llvm.nearbyint.f64(double %i.cz)
  %i.db = fdiv double %i.da, 1.000000e+06         ; 2 uses
  %i.dc = fptosi double %i.db to i32              ; 2 uses
  %i.dd = extractelement <2 x double> %i.cw, i64 1
  %i.de = fadd double %i.dd, %i.db
  %i.df = sitofp i32 %i.dc to double
  %i.dg = fsub double %i.de, %i.df
  %i.dh = fmul double %i.dg, 8.640000e+04
  %i.di = fmul double %i.dh, 1.000000e+06
  %i.dj = call double @llvm.nearbyint.f64(double %i.di)
  %i.dk = fdiv double %i.dj, 1.000000e+06         ; 4 uses
  %i.dl = call double @llvm.fabs.f64(double %i.dk)
  %i.dm = fcmp ult double %i.dl, 8.640000e+04
  br i1 %i.dm, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dn = fdiv double %i.dk, 8.640000e+04
  %i.do = fptosi double %i.dn to i32              ; 2 uses
  %i.dp = add nsw i32 %i.do, %i.cn
  %i.dq = mul nsw i32 %i.do, 86400
  %i.dr = sitofp i32 %i.dq to double
  %i.ds = fsub nnan double %i.dk, %i.dr
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dt = phi i32 [ %i.cn, %bb.p ], [ %i.dp, %bb.q ]
  %.020.i92 = phi double [ %i.dk, %bb.p ], [ %i.ds, %bb.q ]
  %i.du = add nsw i32 %i.dt, %i.dc
  store i32 %i.du, ptr %i.i, align 4, !tbaa !186
  %i.dv = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.414.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
  br i1 %i.dv, label %bb.s, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread

bb.s:                                             ; preds = %bb.r
  %i.dw = load double, ptr %i.a, align 8, !tbaa !185
  %i.dx = fmul double %.020.i92, 1.000000e+06
  %i.dy = call double @llvm.fmuladd.f64(double %i.dw, double %i.cf, double %i.dx)
  %i.dz = call double @llvm.nearbyint.f64(double %i.dy) ; 3 uses
  store double %i.dz, ptr %i.a, align 8, !tbaa !185
  %i.ea = fcmp uno double %i.dz, 0.000000e+00
  br i1 %i.ea, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread: ; preds = %bb.o, %bb.n, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit102

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94: ; preds = %bb.s
  %i.eb = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.dz, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.eb, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit84, label %.loopexit102

.loopexit102:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread
  %i.ec = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.t unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73

bb.t:                                             ; preds = %.loopexit102
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.ec, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.w unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73: ; preds = %.loopexit102
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume.sink.split

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i76 = phi i1 [ false, %bb.u ], [ true, %bb.t ] ; 2 uses
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ef = load ptr, ptr %7, align 8, !tbaa !38    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.ef) #27
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
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.2112
  %i.ej = load <2 x i64>, ptr %6, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store <2 x i64> %i.ej, ptr %i.ei, align 8, !tbaa !41
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph113, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit84
  %i.ek = add i64 %.2112, 1                       ; 2 uses
  %exitcond125.not = icmp eq i64 %i.ek, %i.q
  br i1 %exitcond125.not, label %.loopexit101, label %.lr.ph113, !llvm.loop !3508

.loopexit101:                                     ; preds = %bb.x, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, %.preheader103, %.preheader100, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.q, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.r, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ], [ %.0116, %.preheader100 ], [ %.0116, %.preheader103 ], [ %i.q, %bb.x ]
  %i.el = add nuw nsw i64 %.069115, 1             ; 2 uses
  %exitcond126.not = icmp eq i64 %i.el, %i.f
  br i1 %exitcond126.not, label %.loopexit, label %bb.c, !llvm.loop !3509

bb.y:                                             ; preds = %.lr.ph119, %bb.y
  %.070118 = phi i64 [ 0, %.lr.ph119 ], [ %i.er, %bb.y ] ; 3 uses
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.070118 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.em, align 8, !tbaa !32
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !44
  %i.en = tail call { i64, i64 } @_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.02.0.copyload, i64 %.sroa.43.0.copyload, double noundef %i.d) ; 2 uses
  %i.eo = extractvalue { i64, i64 } %i.en, 0
  %i.ep = extractvalue { i64, i64 } %i.en, 1
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.070118 ; 2 uses
  store i64 %i.eo, ptr %i.eq, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i64 %i.ep, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !44
  %i.er = add nuw i64 %.070118, 1                 ; 2 uses
  %exitcond127.not = icmp eq i64 %i.er, %3
  br i1 %exitcond127.not, label %.loopexit, label %bb.y, !llvm.loop !3510

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
  %i.c = load ptr, ptr %4, align 8, !tbaa !113
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not121 = icmp eq i64 %3, 0
  br i1 %.not121, label %.loopexit, label %.lr.ph119

.lr.ph119:                                        ; preds = %.preheader
  %.sroa.02.0.copyload = load i64, ptr %0, align 8, !tbaa !32
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !44
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
  %.069115 = phi i64 [ 0, %.lr.ph117 ], [ %i.ek, %.loopexit101 ] ; 2 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !113    ; 2 uses
  %.not.i71 = icmp eq ptr %i.j, null
  br i1 %.not.i71, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread: ; preds = %bb.c
  %i.k = add i64 %.0116, 64
  %i.l = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %3)
  br label %.preheader103

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.069115
  %i.n = load i64, ptr %i.m, align 8, !tbaa !44   ; 2 uses
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
  %.sroa.021.0.copyload147 = load <2 x i32>, ptr %0, align 8, !tbaa !32
  %.sroa.422.0.copyload = load i64, ptr %.sroa.422.0..sroa_idx, align 8, !tbaa !44
  %i.s = sitofp <2 x i32> %.sroa.021.0.copyload147 to <2 x double> ; 3 uses
  %i.t = extractelement <2 x double> %i.s, i64 0
  %i.u = extractelement <2 x double> %i.s, i64 1
  br label %bb.d

.preheader100:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.v = icmp ult i64 %.0116, %i.p
  br i1 %i.v, label %.lr.ph113, label %.loopexit101

bb.d:                                             ; preds = %.lr.ph, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit
  %.1111 = phi i64 [ %.0116, %.lr.ph ], [ %i.bz, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.1111
  %i.x = load double, ptr %i.w, align 8, !tbaa !185 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.y = fmul double %i.x, %i.t                   ; 3 uses
  %or.cond.i = fcmp ult double %i.y, f0xC1E0000000000000
  %i.z = fcmp ogt double %i.y, f0x41DFFFFFFFC00000
  %or.cond21.i = or i1 %or.cond.i, %i.z
  br i1 %or.cond21.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = fptosi double %i.y to i32               ; 2 uses
  store i32 %i.aa, ptr %9, align 16, !tbaa !183
  %i.ab = fmul double %i.x, %i.u                  ; 4 uses
  store double %i.ab, ptr %i.b, align 8, !tbaa !185
  %or.cond22.i = fcmp ult double %i.ab, f0xC1E0000000000000
  %i.ac = fcmp ogt double %i.ab, f0x41DFFFFFFFC00000
  %or.cond23.i = or i1 %or.cond22.i, %i.ac
  br i1 %or.cond23.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = fptosi double %i.ab to i32              ; 3 uses
  %i.ae = sitofp i32 %i.aa to double
  %i.af = sitofp i32 %i.ad to double
  %i.ag = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.af, i64 1
  %i.ai = fneg <2 x double> %i.ah
  %i.aj = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %i.ak, <2 x double> %i.ai) ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 0
  %i.an = fmul double %i.am, 3.000000e+01
  %i.ao = fmul double %i.an, 1.000000e+06
  %i.ap = call double @llvm.nearbyint.f64(double %i.ao)
  %i.aq = fdiv double %i.ap, 1.000000e+06         ; 2 uses
  %i.ar = fptosi double %i.aq to i32              ; 2 uses
  %i.as = extractelement <2 x double> %i.al, i64 1
  %i.at = fadd double %i.as, %i.aq
  %i.au = sitofp i32 %i.ar to double
  %i.av = fsub double %i.at, %i.au
  %i.aw = fmul double %i.av, 8.640000e+04
  %i.ax = fmul double %i.aw, 1.000000e+06
  %i.ay = call double @llvm.nearbyint.f64(double %i.ax)
  %i.az = fdiv double %i.ay, 1.000000e+06         ; 4 uses
  %i.ba = call double @llvm.fabs.f64(double %i.az)
  %i.bb = fcmp ult double %i.ba, 8.640000e+04
  br i1 %i.bb, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = fdiv double %i.az, 8.640000e+04
  %i.bd = fptosi double %i.bc to i32              ; 2 uses
  %i.be = add nsw i32 %i.bd, %i.ad
  %i.bf = mul nsw i32 %i.bd, 86400
  %i.bg = sitofp i32 %i.bf to double
  %i.bh = fsub nnan double %i.az, %i.bg
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bi = phi i32 [ %i.ad, %bb.f ], [ %i.be, %bb.g ]
  %.020.i = phi double [ %i.az, %bb.f ], [ %i.bh, %bb.g ]
  %i.bj = add nsw i32 %i.bi, %i.ar
  store i32 %i.bj, ptr %i.f, align 4, !tbaa !186
  %i.bk = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.422.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false)
  br i1 %i.bk, label %bb.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bl = load double, ptr %i.b, align 8, !tbaa !185
  %i.bm = fmul double %.020.i, 1.000000e+06
  %i.bn = call double @llvm.fmuladd.f64(double %i.bl, double %i.x, double %i.bm)
  %i.bo = call double @llvm.nearbyint.f64(double %i.bn) ; 3 uses
  store double %i.bo, ptr %i.b, align 8, !tbaa !185
  %i.bp = fcmp uno double %i.bo, 0.000000e+00
  br i1 %i.bp, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread: ; preds = %bb.e, %bb.d, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit105

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit: ; preds = %bb.i
  %i.bq = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br i1 %i.bq, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, label %.loopexit105

.loopexit105:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread
  %i.br = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.j:                                             ; preds = %.loopexit105
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.br, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.m unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %.loopexit105
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i72 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bu = load ptr, ptr %10, align 8, !tbaa !38   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.bu) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i72, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i72, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78
  %.sink = phi ptr [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73 ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73 ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %i.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @__cxa_free_exception(ptr %.sink) #25
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.k
  unreachable

_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.1111
  %i.by = load <2 x i64>, ptr %9, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store <2 x i64> %i.by, ptr %i.bx, align 8, !tbaa !41
  %i.bz = add i64 %.1111, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.bz, %i.q
  br i1 %exitcond.not, label %.loopexit101, label %bb.d, !llvm.loop !3511

.lr.ph113:                                        ; preds = %.preheader100, %bb.x
  %.2112 = phi i64 [ %i.ej, %bb.x ], [ %.0116, %.preheader100 ] ; 4 uses
  %i.ca = sub nuw i64 %.2112, %.0116
  %i.cb = shl nuw i64 1, %i.ca
  %i.cc = and i64 %i.cb, %i.n
  %.not = icmp eq i64 %i.cc, 0
  br i1 %.not, label %bb.x, label %bb.n

bb.n:                                             ; preds = %.lr.ph113
  %.sroa.013.0.copyload = load i64, ptr %0, align 8, !tbaa !32 ; 2 uses
  %.sroa.414.0.copyload = load i64, ptr %.sroa.422.0..sroa_idx, align 8, !tbaa !44
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.2112
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !185 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.sroa.0.0.extract.trunc.i85 = trunc i64 %.sroa.013.0.copyload to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.cf = sitofp i32 %.sroa.0.0.extract.trunc.i85 to double ; 2 uses
  %i.cg = fmul double %i.ce, %i.cf                ; 3 uses
  %or.cond.i86 = fcmp ult double %i.cg, f0xC1E0000000000000
  %i.ch = fcmp ogt double %i.cg, f0x41DFFFFFFFC00000
  %or.cond21.i87 = or i1 %or.cond.i86, %i.ch
  br i1 %or.cond21.i87, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.3.0.extract.shift.i88 = lshr i64 %.sroa.013.0.copyload, 32
  %.sroa.3.0.extract.trunc.i89 = trunc nuw i64 %.sroa.3.0.extract.shift.i88 to i32
  %i.ci = fptosi double %i.cg to i32              ; 2 uses
  store i32 %i.ci, ptr %6, align 16, !tbaa !183
  %i.cj = sitofp i32 %.sroa.3.0.extract.trunc.i89 to double ; 2 uses
  %i.ck = fmul double %i.ce, %i.cj                ; 4 uses
  store double %i.ck, ptr %i.a, align 8, !tbaa !185
  %or.cond22.i90 = fcmp ult double %i.ck, f0xC1E0000000000000
  %i.cl = fcmp ogt double %i.ck, f0x41DFFFFFFFC00000
  %or.cond23.i91 = or i1 %or.cond22.i90, %i.cl
  br i1 %or.cond23.i91, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = fptosi double %i.ck to i32              ; 3 uses
  %i.cn = insertelement <2 x i32> poison, i32 %i.ci, i64 0
  %i.co = insertelement <2 x i32> %i.cn, i32 %i.cm, i64 1
  %i.cp = sitofp <2 x i32> %i.co to <2 x double>
  %i.cq = fneg <2 x double> %i.cp
  %i.cr = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.cj, i64 1
  %i.ct = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.cu, <2 x double> %i.cq) ; 2 uses
  %i.cw = extractelement <2 x double> %i.cv, i64 0
  %i.cx = fmul double %i.cw, 3.000000e+01
  %i.cy = fmul double %i.cx, 1.000000e+06
  %i.cz = call double @llvm.nearbyint.f64(double %i.cy)
  %i.da = fdiv double %i.cz, 1.000000e+06         ; 2 uses
  %i.db = fptosi double %i.da to i32              ; 2 uses
  %i.dc = extractelement <2 x double> %i.cv, i64 1
  %i.dd = fadd double %i.dc, %i.da
  %i.de = sitofp i32 %i.db to double
  %i.df = fsub double %i.dd, %i.de
  %i.dg = fmul double %i.df, 8.640000e+04
  %i.dh = fmul double %i.dg, 1.000000e+06
  %i.di = call double @llvm.nearbyint.f64(double %i.dh)
  %i.dj = fdiv double %i.di, 1.000000e+06         ; 4 uses
  %i.dk = call double @llvm.fabs.f64(double %i.dj)
  %i.dl = fcmp ult double %i.dk, 8.640000e+04
  br i1 %i.dl, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dm = fdiv double %i.dj, 8.640000e+04
  %i.dn = fptosi double %i.dm to i32              ; 2 uses
  %i.do = add nsw i32 %i.dn, %i.cm
  %i.dp = mul nsw i32 %i.dn, 86400
  %i.dq = sitofp i32 %i.dp to double
  %i.dr = fsub nnan double %i.dj, %i.dq
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ds = phi i32 [ %i.cm, %bb.p ], [ %i.do, %bb.q ]
  %.020.i92 = phi double [ %i.dj, %bb.p ], [ %i.dr, %bb.q ]
  %i.dt = add nsw i32 %i.ds, %i.db
  store i32 %i.dt, ptr %i.h, align 4, !tbaa !186
  %i.du = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.414.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
  br i1 %i.du, label %bb.s, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread

bb.s:                                             ; preds = %bb.r
  %i.dv = load double, ptr %i.a, align 8, !tbaa !185
  %i.dw = fmul double %.020.i92, 1.000000e+06
  %i.dx = call double @llvm.fmuladd.f64(double %i.dv, double %i.ce, double %i.dw)
  %i.dy = call double @llvm.nearbyint.f64(double %i.dx) ; 3 uses
  store double %i.dy, ptr %i.a, align 8, !tbaa !185
  %i.dz = fcmp uno double %i.dy, 0.000000e+00
  br i1 %i.dz, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread: ; preds = %bb.o, %bb.n, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit102

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94: ; preds = %bb.s
  %i.ea = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.dy, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.ea, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit84, label %.loopexit102

.loopexit102:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread
  %i.eb = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.t unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73

bb.t:                                             ; preds = %.loopexit102
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.eb, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.w unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73: ; preds = %.loopexit102
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume.sink.split

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i76 = phi i1 [ false, %bb.u ], [ true, %bb.t ] ; 2 uses
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ee = load ptr, ptr %7, align 8, !tbaa !38    ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.ee) #27
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
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.2112
  %i.ei = load <2 x i64>, ptr %6, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store <2 x i64> %i.ei, ptr %i.eh, align 8, !tbaa !41
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph113, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit84
  %i.ej = add i64 %.2112, 1                       ; 2 uses
  %exitcond125.not = icmp eq i64 %i.ej, %i.p
  br i1 %exitcond125.not, label %.loopexit101, label %.lr.ph113, !llvm.loop !3512

.loopexit101:                                     ; preds = %bb.x, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, %.preheader103, %.preheader100, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.p, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.q, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ], [ %.0116, %.preheader100 ], [ %.0116, %.preheader103 ], [ %i.p, %bb.x ]
  %i.ek = add nuw nsw i64 %.069115, 1             ; 2 uses
  %exitcond126.not = icmp eq i64 %i.ek, %i.e
  br i1 %exitcond126.not, label %.loopexit, label %bb.c, !llvm.loop !3513

bb.y:                                             ; preds = %.lr.ph119, %bb.y
  %.070118 = phi i64 [ 0, %.lr.ph119 ], [ %i.er, %bb.y ] ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.070118
  %i.em = load double, ptr %i.el, align 8, !tbaa !185
  %i.en = tail call { i64, i64 } @_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.02.0.copyload, i64 %.sroa.43.0.copyload, double noundef %i.em) ; 2 uses
  %i.eo = extractvalue { i64, i64 } %i.en, 0
  %i.ep = extractvalue { i64, i64 } %i.en, 1
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.070118 ; 2 uses
  store i64 %i.eo, ptr %i.eq, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i64 %i.ep, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !44
  %i.er = add nuw i64 %.070118, 1                 ; 2 uses
  %exitcond127.not = icmp eq i64 %i.er, %3
  br i1 %exitcond127.not, label %.loopexit, label %bb.y, !llvm.loop !3514

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
  %i.c = load ptr, ptr %4, align 8, !tbaa !113
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
  %.078124 = phi i64 [ 0, %.lr.ph126 ], [ %i.em, %.loopexit110 ] ; 2 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !113    ; 2 uses
  %.not.i80 = icmp eq ptr %i.j, null
  br i1 %.not.i80, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread: ; preds = %bb.c
  %i.k = add i64 %.0125, 64
  %i.l = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %3)
  br label %.preheader112

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.078124
  %i.n = load i64, ptr %i.m, align 8, !tbaa !44   ; 2 uses
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
  %.1120 = phi i64 [ %i.ca, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ], [ %.0125, %.preheader112 ] ; 4 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.1120 ; 2 uses
  %.sroa.022.0.copyload = load i64, ptr %i.t, align 8, !tbaa !32 ; 2 uses
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.423.0.copyload = load i64, ptr %.sroa.423.0..sroa_idx, align 8, !tbaa !44
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.1120
  %i.v = load double, ptr %i.u, align 8, !tbaa !185 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.022.0.copyload to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.w = sitofp i32 %.sroa.0.0.extract.trunc.i to double ; 2 uses
  %i.x = fmul double %i.v, %i.w                   ; 3 uses
  %or.cond.i = fcmp ult double %i.x, f0xC1E0000000000000
  %i.y = fcmp ogt double %i.x, f0x41DFFFFFFFC00000
  %or.cond21.i = or i1 %or.cond.i, %i.y
  br i1 %or.cond21.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %.sroa.3.0.extract.shift.i = lshr i64 %.sroa.022.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %i.z = fptosi double %i.x to i32                ; 2 uses
  store i32 %i.z, ptr %9, align 16, !tbaa !183
  %i.aa = sitofp i32 %.sroa.3.0.extract.trunc.i to double ; 2 uses
  %i.ab = fmul double %i.v, %i.aa                 ; 4 uses
  store double %i.ab, ptr %i.b, align 8, !tbaa !185
  %or.cond22.i = fcmp ult double %i.ab, f0xC1E0000000000000
  %i.ac = fcmp ogt double %i.ab, f0x41DFFFFFFFC00000
  %or.cond23.i = or i1 %or.cond22.i, %i.ac
  br i1 %or.cond23.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = fptosi double %i.ab to i32              ; 3 uses
  %i.ae = insertelement <2 x i32> poison, i32 %i.z, i64 0
  %i.af = insertelement <2 x i32> %i.ae, i32 %i.ad, i64 1
  %i.ag = sitofp <2 x i32> %i.af to <2 x double>
  %i.ah = fneg <2 x double> %i.ag
  %i.ai = insertelement <2 x double> poison, double %i.w, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.aa, i64 1
  %i.ak = insertelement <2 x double> poison, double %i.v, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.al, <2 x double> %i.ah) ; 2 uses
  %i.an = extractelement <2 x double> %i.am, i64 0
  %i.ao = fmul double %i.an, 3.000000e+01
  %i.ap = fmul double %i.ao, 1.000000e+06
  %i.aq = call double @llvm.nearbyint.f64(double %i.ap)
  %i.ar = fdiv double %i.aq, 1.000000e+06         ; 2 uses
  %i.as = fptosi double %i.ar to i32              ; 2 uses
  %i.at = extractelement <2 x double> %i.am, i64 1
  %i.au = fadd double %i.at, %i.ar
  %i.av = sitofp i32 %i.as to double
  %i.aw = fsub double %i.au, %i.av
  %i.ax = fmul double %i.aw, 8.640000e+04
  %i.ay = fmul double %i.ax, 1.000000e+06
  %i.az = call double @llvm.nearbyint.f64(double %i.ay)
  %i.ba = fdiv double %i.az, 1.000000e+06         ; 4 uses
  %i.bb = call double @llvm.fabs.f64(double %i.ba)
  %i.bc = fcmp ult double %i.bb, 8.640000e+04
  br i1 %i.bc, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = fdiv double %i.ba, 8.640000e+04
  %i.be = fptosi double %i.bd to i32              ; 2 uses
  %i.bf = add nsw i32 %i.be, %i.ad
  %i.bg = mul nsw i32 %i.be, 86400
  %i.bh = sitofp i32 %i.bg to double
  %i.bi = fsub nnan double %i.ba, %i.bh
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bj = phi i32 [ %i.ad, %bb.e ], [ %i.bf, %bb.f ]
  %.020.i = phi double [ %i.ba, %bb.e ], [ %i.bi, %bb.f ]
  %i.bk = add nsw i32 %i.bj, %i.as
  store i32 %i.bk, ptr %i.f, align 4, !tbaa !186
  %i.bl = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.423.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false)
  br i1 %i.bl, label %bb.h, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.bm = load double, ptr %i.b, align 8, !tbaa !185
  %i.bn = fmul double %.020.i, 1.000000e+06
  %i.bo = call double @llvm.fmuladd.f64(double %i.bm, double %i.v, double %i.bn)
  %i.bp = call double @llvm.nearbyint.f64(double %i.bo) ; 3 uses
  store double %i.bp, ptr %i.b, align 8, !tbaa !185
  %i.bq = fcmp uno double %i.bp, 0.000000e+00
  br i1 %i.bq, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread: ; preds = %bb.d, %.lr.ph, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit114

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit: ; preds = %bb.h
  %i.br = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br i1 %i.br, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, label %.loopexit114

.loopexit114:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread
  %i.bs = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.i:                                             ; preds = %.loopexit114
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.bs, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.l unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %.loopexit114
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume.sink.split

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i81 = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bv = load ptr, ptr %10, align 8, !tbaa !38   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.bv) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i81, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i81, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87
  %.sink = phi ptr [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82 ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87 ], [ %i.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86 ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82 ], [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87 ], [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86 ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @__cxa_free_exception(ptr %.sink) #25
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86 ], [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.j
  unreachable

_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.1120
  %i.bz = load <2 x i64>, ptr %9, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store <2 x i64> %i.bz, ptr %i.by, align 8, !tbaa !41
  %i.ca = add i64 %.1120, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %i.q
  br i1 %exitcond.not, label %.loopexit110, label %.lr.ph, !llvm.loop !3515

.lr.ph122:                                        ; preds = %.preheader109, %bb.w
  %.2121 = phi i64 [ %i.el, %bb.w ], [ %.0125, %.preheader109 ] ; 5 uses
  %i.cb = sub nuw i64 %.2121, %.0125
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.cc, %i.n
  %.not = icmp eq i64 %i.cd, 0
  br i1 %.not, label %bb.w, label %bb.m

bb.m:                                             ; preds = %.lr.ph122
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.2121 ; 2 uses
  %.sroa.014.0.copyload = load i64, ptr %i.ce, align 8, !tbaa !32 ; 2 uses
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.415.0.copyload = load i64, ptr %.sroa.415.0..sroa_idx, align 8, !tbaa !44
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.2121
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !185 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.sroa.0.0.extract.trunc.i94 = trunc i64 %.sroa.014.0.copyload to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ch = sitofp i32 %.sroa.0.0.extract.trunc.i94 to double ; 2 uses
  %i.ci = fmul double %i.cg, %i.ch                ; 3 uses
  %or.cond.i95 = fcmp ult double %i.ci, f0xC1E0000000000000
  %i.cj = fcmp ogt double %i.ci, f0x41DFFFFFFFC00000
  %or.cond21.i96 = or i1 %or.cond.i95, %i.cj
  br i1 %or.cond21.i96, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.3.0.extract.shift.i97 = lshr i64 %.sroa.014.0.copyload, 32
  %.sroa.3.0.extract.trunc.i98 = trunc nuw i64 %.sroa.3.0.extract.shift.i97 to i32
  %i.ck = fptosi double %i.ci to i32              ; 2 uses
  store i32 %i.ck, ptr %6, align 16, !tbaa !183
  %i.cl = sitofp i32 %.sroa.3.0.extract.trunc.i98 to double ; 2 uses
  %i.cm = fmul double %i.cg, %i.cl                ; 4 uses
  store double %i.cm, ptr %i.a, align 8, !tbaa !185
  %or.cond22.i99 = fcmp ult double %i.cm, f0xC1E0000000000000
  %i.cn = fcmp ogt double %i.cm, f0x41DFFFFFFFC00000
  %or.cond23.i100 = or i1 %or.cond22.i99, %i.cn
  br i1 %or.cond23.i100, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = fptosi double %i.cm to i32              ; 3 uses
  %i.cp = insertelement <2 x i32> poison, i32 %i.ck, i64 0
  %i.cq = insertelement <2 x i32> %i.cp, i32 %i.co, i64 1
  %i.cr = sitofp <2 x i32> %i.cq to <2 x double>
  %i.cs = fneg <2 x double> %i.cr
  %i.ct = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.cl, i64 1
  %i.cv = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.cw, <2 x double> %i.cs) ; 2 uses
  %i.cy = extractelement <2 x double> %i.cx, i64 0
  %i.cz = fmul double %i.cy, 3.000000e+01
  %i.da = fmul double %i.cz, 1.000000e+06
  %i.db = call double @llvm.nearbyint.f64(double %i.da)
  %i.dc = fdiv double %i.db, 1.000000e+06         ; 2 uses
  %i.dd = fptosi double %i.dc to i32              ; 2 uses
  %i.de = extractelement <2 x double> %i.cx, i64 1
  %i.df = fadd double %i.de, %i.dc
  %i.dg = sitofp i32 %i.dd to double
  %i.dh = fsub double %i.df, %i.dg
  %i.di = fmul double %i.dh, 8.640000e+04
  %i.dj = fmul double %i.di, 1.000000e+06
  %i.dk = call double @llvm.nearbyint.f64(double %i.dj)
  %i.dl = fdiv double %i.dk, 1.000000e+06         ; 4 uses
  %i.dm = call double @llvm.fabs.f64(double %i.dl)
  %i.dn = fcmp ult double %i.dm, 8.640000e+04
  br i1 %i.dn, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.do = fdiv double %i.dl, 8.640000e+04
  %i.dp = fptosi double %i.do to i32              ; 2 uses
  %i.dq = add nsw i32 %i.dp, %i.co
  %i.dr = mul nsw i32 %i.dp, 86400
  %i.ds = sitofp i32 %i.dr to double
  %i.dt = fsub nnan double %i.dl, %i.ds
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.du = phi i32 [ %i.co, %bb.o ], [ %i.dq, %bb.p ]
  %.020.i101 = phi double [ %i.dl, %bb.o ], [ %i.dt, %bb.p ]
  %i.dv = add nsw i32 %i.du, %i.dd
  store i32 %i.dv, ptr %i.h, align 4, !tbaa !186
  %i.dw = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.415.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
  br i1 %i.dw, label %bb.r, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103.thread

bb.r:                                             ; preds = %bb.q
  %i.dx = load double, ptr %i.a, align 8, !tbaa !185
  %i.dy = fmul double %.020.i101, 1.000000e+06
  %i.dz = call double @llvm.fmuladd.f64(double %i.dx, double %i.cg, double %i.dy)
  %i.ea = call double @llvm.nearbyint.f64(double %i.dz) ; 3 uses
  store double %i.ea, ptr %i.a, align 8, !tbaa !185
  %i.eb = fcmp uno double %i.ea, 0.000000e+00
  br i1 %i.eb, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103.thread: ; preds = %bb.n, %bb.m, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit111

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103: ; preds = %bb.r
  %i.ec = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.ec, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit93, label %.loopexit111

.loopexit111:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103.thread
  %i.ed = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.s unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82

bb.s:                                             ; preds = %.loopexit111
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @__cxa_throw(ptr nonnull %i.ed, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.v unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82: ; preds = %.loopexit111
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume.sink.split

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0.i85 = phi i1 [ false, %bb.t ], [ true, %bb.s ] ; 2 uses
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.eg = load ptr, ptr %7, align 8, !tbaa !38    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.eg) #27
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
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.2121
  %i.ek = load <2 x i64>, ptr %6, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store <2 x i64> %i.ek, ptr %i.ej, align 8, !tbaa !41
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph122, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit93
  %i.el = add i64 %.2121, 1                       ; 2 uses
  %exitcond134.not = icmp eq i64 %i.el, %i.p
  br i1 %exitcond134.not, label %.loopexit110, label %.lr.ph122, !llvm.loop !3516

.loopexit110:                                     ; preds = %bb.w, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, %.preheader112, %.preheader109, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.p, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.q, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ], [ %.0125, %.preheader109 ], [ %.0125, %.preheader112 ], [ %i.p, %bb.w ]
  %i.em = add nuw nsw i64 %.078124, 1             ; 2 uses
  %exitcond135.not = icmp eq i64 %i.em, %i.e
  br i1 %exitcond135.not, label %.loopexit, label %bb.c, !llvm.loop !3517

.lr.ph128:                                        ; preds = %.preheader, %.lr.ph128
  %.079127 = phi i64 [ %i.eu, %.lr.ph128 ], [ 0, %.preheader ] ; 4 uses
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.079127 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.en, align 8, !tbaa !32
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !44
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.079127
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !185
  %i.eq = tail call { i64, i64 } @_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.02.0.copyload, i64 %.sroa.43.0.copyload, double noundef %i.ep) ; 2 uses
  %i.er = extractvalue { i64, i64 } %i.eq, 0
  %i.es = extractvalue { i64, i64 } %i.eq, 1
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.079127 ; 2 uses
  store i64 %i.er, ptr %i.et, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 %i.es, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !44
  %i.eu = add nuw i64 %.079127, 1                 ; 2 uses
  %exitcond136.not = icmp eq i64 %i.eu, %3
  br i1 %exitcond136.not, label %.loopexit, label %.lr.ph128, !llvm.loop !3518

.loopexit:                                        ; preds = %.loopexit110, %.lr.ph128, %bb.b, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopINS_10interval_tEdS2_NS_29BinaryStandardOperatorWrapperENS_16MultiplyOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext %9) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !113
  %.not.i = icmp eq ptr %i.a, null
  %i.b = load ptr, ptr %7, align 8
  %.not.i49 = icmp eq ptr %i.b, null
  %or.cond = select i1 %.not.i, i1 %.not.i49, i1 false
  %.not78 = icmp eq i64 %5, 0                     ; 2 uses
  br i1 %or.cond, label %.preheader, label %.preheader65

.preheader65:                                     ; preds = %bb.a
  br i1 %.not78, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader65
  %i.c = load ptr, ptr %3, align 8, !tbaa !125    ; 2 uses
  %.not.i50 = icmp eq ptr %i.c, null
  %i.d = load ptr, ptr %4, align 8, !tbaa !125    ; 2 uses
  %.not.i51 = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not78, label %.loopexit, label %.lr.ph69

.lr.ph69:                                         ; preds = %.preheader
  %i.f = load ptr, ptr %3, align 8, !tbaa !125    ; 3 uses
  %.not.i58 = icmp eq ptr %i.f, null
  %i.g = load ptr, ptr %4, align 8, !tbaa !125    ; 3 uses
  %.not.i60 = icmp eq ptr %i.g, null              ; 2 uses
  br i1 %.not.i58, label %.lr.ph69.split.us, label %.lr.ph69.split

.lr.ph69.split.us:                                ; preds = %.lr.ph69
  br i1 %.not.i60, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us.us: ; preds = %.lr.ph69.split.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us.us
  %.04868.us.us = phi i64 [ %i.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us.us ], [ 0, %.lr.ph69.split.us ] ; 4 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.04868.us.us ; 2 uses
  %.sroa.02.0.copyload.us.us = load i64, ptr %i.h, align 8, !tbaa !32
  %.sroa.43.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.43.0.copyload.us.us = load i64, ptr %.sroa.43.0..sroa_idx.us.us, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.04868.us.us
  %i.j = load double, ptr %i.i, align 8, !tbaa !185
  %i.k = tail call { i64, i64 } @_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.02.0.copyload.us.us, i64 %.sroa.43.0.copyload.us.us, double noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.04868.us.us ; 2 uses
  store i64 %i.l, ptr %i.n, align 8, !tbaa !32
end_hunk_2
begin_hunk_3_@_ZN6duckdb14BinaryExecutor14ExecuteGenericIdNS_10interval_tES2_NS_29BinaryStandardOperatorWrapperENS_16MultiplyOperatorEbEEvRNS_6VectorES6_S6_mT4_:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.av, align 8, !tbaa !76
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !77
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !79
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !16
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !79
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !16
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i19

bb.y:                                             ; preds = %bb.w
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i16 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i16, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i17

bb.aa:                                            ; preds = %bb.y
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i17

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i17: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i.i18 = phi i32 [ %i.ay, %bb.z ], [ %i.bi, %bb.aa ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i.i.i18, 1
  br i1 %i.bj, label %bb.ab, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i19, !prof !80

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i17
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i19

_ZN6duckdb15SelectionVectorD2Ev.exit.i19:         ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i17, %bb.x, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !74 ; 8 uses
  %.not.i.i.i.i1.i20 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i1.i20, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit24, label %bb.ac

bb.ac:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.bm, align 8, !tbaa !76
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !77
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !79
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25, !inline_history !17
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !79
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25, !inline_history !17
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit24

bb.ae:                                            ; preds = %bb.ac
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i2.i21 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i2.i21, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i22

bb.ag:                                            ; preds = %bb.ae
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i22

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i22: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i4.i23 = phi i32 [ %i.bp, %bb.af ], [ %i.bz, %bb.ag ]
  %i.ca = icmp eq i32 %.0.i.i.i.i.i.i4.i23, 1
  br i1 %i.ca, label %bb.ah, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit24, !prof !80

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i22
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #25
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit24

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit24:       ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i19, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i22, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void

bb.ai:                                            ; preds = %bb.a
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.b, %bb.c, %bb.d, %bb.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %6) #25
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn.pn = phi { ptr, i32 } [ %i.cc, %bb.aj ], [ %i.cb, %bb.ai ]
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
  %i.c = load ptr, ptr %4, align 8, !tbaa !113
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not121 = icmp eq i64 %3, 0
  br i1 %.not121, label %.loopexit, label %.lr.ph119

.lr.ph119:                                        ; preds = %.preheader
  %.sroa.02.0.copyload = load i64, ptr %1, align 8, !tbaa !32
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !44
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
  %.069115 = phi i64 [ 0, %.lr.ph117 ], [ %i.ek, %.loopexit101 ] ; 2 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !113    ; 2 uses
  %.not.i71 = icmp eq ptr %i.j, null
  br i1 %.not.i71, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread: ; preds = %bb.c
  %i.k = add i64 %.0116, 64
  %i.l = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %3)
  br label %.preheader103

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.069115
  %i.n = load i64, ptr %i.m, align 8, !tbaa !44   ; 2 uses
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
  %.sroa.020.0.copyload147 = load <2 x i32>, ptr %1, align 8, !tbaa !32
  %.sroa.421.0.copyload = load i64, ptr %.sroa.421.0..sroa_idx, align 8, !tbaa !44
  %i.s = sitofp <2 x i32> %.sroa.020.0.copyload147 to <2 x double> ; 3 uses
  %i.t = extractelement <2 x double> %i.s, i64 0
  %i.u = extractelement <2 x double> %i.s, i64 1
  br label %bb.d

.preheader100:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.v = icmp ult i64 %.0116, %i.p
  br i1 %i.v, label %.lr.ph113, label %.loopexit101

bb.d:                                             ; preds = %.lr.ph, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit
  %.1111 = phi i64 [ %.0116, %.lr.ph ], [ %i.bz, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1111
  %i.x = load double, ptr %i.w, align 8, !tbaa !185 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.y = fmul double %i.x, %i.t                   ; 3 uses
  %or.cond.i = fcmp ult double %i.y, f0xC1E0000000000000
  %i.z = fcmp ogt double %i.y, f0x41DFFFFFFFC00000
  %or.cond21.i = or i1 %or.cond.i, %i.z
  br i1 %or.cond21.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = fptosi double %i.y to i32               ; 2 uses
  store i32 %i.aa, ptr %9, align 16, !tbaa !183
  %i.ab = fmul double %i.x, %i.u                  ; 4 uses
  store double %i.ab, ptr %i.b, align 8, !tbaa !185
  %or.cond22.i = fcmp ult double %i.ab, f0xC1E0000000000000
  %i.ac = fcmp ogt double %i.ab, f0x41DFFFFFFFC00000
  %or.cond23.i = or i1 %or.cond22.i, %i.ac
  br i1 %or.cond23.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = fptosi double %i.ab to i32              ; 3 uses
  %i.ae = sitofp i32 %i.aa to double
  %i.af = sitofp i32 %i.ad to double
  %i.ag = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.af, i64 1
  %i.ai = fneg <2 x double> %i.ah
  %i.aj = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %i.ak, <2 x double> %i.ai) ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 0
  %i.an = fmul double %i.am, 3.000000e+01
  %i.ao = fmul double %i.an, 1.000000e+06
  %i.ap = call double @llvm.nearbyint.f64(double %i.ao)
  %i.aq = fdiv double %i.ap, 1.000000e+06         ; 2 uses
  %i.ar = fptosi double %i.aq to i32              ; 2 uses
  %i.as = extractelement <2 x double> %i.al, i64 1
  %i.at = fadd double %i.as, %i.aq
  %i.au = sitofp i32 %i.ar to double
  %i.av = fsub double %i.at, %i.au
  %i.aw = fmul double %i.av, 8.640000e+04
  %i.ax = fmul double %i.aw, 1.000000e+06
  %i.ay = call double @llvm.nearbyint.f64(double %i.ax)
  %i.az = fdiv double %i.ay, 1.000000e+06         ; 4 uses
  %i.ba = call double @llvm.fabs.f64(double %i.az)
  %i.bb = fcmp ult double %i.ba, 8.640000e+04
  br i1 %i.bb, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = fdiv double %i.az, 8.640000e+04
  %i.bd = fptosi double %i.bc to i32              ; 2 uses
  %i.be = add nsw i32 %i.bd, %i.ad
  %i.bf = mul nsw i32 %i.bd, 86400
  %i.bg = sitofp i32 %i.bf to double
  %i.bh = fsub nnan double %i.az, %i.bg
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bi = phi i32 [ %i.ad, %bb.f ], [ %i.be, %bb.g ]
  %.020.i = phi double [ %i.az, %bb.f ], [ %i.bh, %bb.g ]
  %i.bj = add nsw i32 %i.bi, %i.ar
  store i32 %i.bj, ptr %i.f, align 4, !tbaa !186
  %i.bk = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.421.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false)
  br i1 %i.bk, label %bb.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bl = load double, ptr %i.b, align 8, !tbaa !185
  %i.bm = fmul double %.020.i, 1.000000e+06
  %i.bn = call double @llvm.fmuladd.f64(double %i.bl, double %i.x, double %i.bm)
  %i.bo = call double @llvm.nearbyint.f64(double %i.bn) ; 3 uses
  store double %i.bo, ptr %i.b, align 8, !tbaa !185
  %i.bp = fcmp uno double %i.bo, 0.000000e+00
  br i1 %i.bp, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread: ; preds = %bb.e, %bb.d, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit105

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit: ; preds = %bb.i
  %i.bq = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br i1 %i.bq, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, label %.loopexit105

.loopexit105:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread
  %i.br = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.j:                                             ; preds = %.loopexit105
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.br, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.m unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %.loopexit105
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i72 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bu = load ptr, ptr %10, align 8, !tbaa !38   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.bu) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i72, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i72, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78
  %.sink = phi ptr [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73 ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73 ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %i.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @__cxa_free_exception(ptr %.sink) #25
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.k
  unreachable

_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.1111
  %i.by = load <2 x i64>, ptr %9, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store <2 x i64> %i.by, ptr %i.bx, align 8, !tbaa !41
  %i.bz = add i64 %.1111, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.bz, %i.q
  br i1 %exitcond.not, label %.loopexit101, label %bb.d, !llvm.loop !3521

.lr.ph113:                                        ; preds = %.preheader100, %bb.x
  %.2112 = phi i64 [ %i.ej, %bb.x ], [ %.0116, %.preheader100 ] ; 4 uses
  %i.ca = sub nuw i64 %.2112, %.0116
  %i.cb = shl nuw i64 1, %i.ca
  %i.cc = and i64 %i.cb, %i.n
  %.not = icmp eq i64 %i.cc, 0
  br i1 %.not, label %bb.x, label %bb.n

bb.n:                                             ; preds = %.lr.ph113
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.2112
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !185 ; 4 uses
  %.sroa.012.0.copyload = load i64, ptr %1, align 8, !tbaa !32 ; 2 uses
  %.sroa.413.0.copyload = load i64, ptr %.sroa.421.0..sroa_idx, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.sroa.0.0.extract.trunc.i85 = trunc i64 %.sroa.012.0.copyload to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.cf = sitofp i32 %.sroa.0.0.extract.trunc.i85 to double ; 2 uses
  %i.cg = fmul double %i.ce, %i.cf                ; 3 uses
  %or.cond.i86 = fcmp ult double %i.cg, f0xC1E0000000000000
  %i.ch = fcmp ogt double %i.cg, f0x41DFFFFFFFC00000
  %or.cond21.i87 = or i1 %or.cond.i86, %i.ch
  br i1 %or.cond21.i87, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.3.0.extract.shift.i88 = lshr i64 %.sroa.012.0.copyload, 32
  %.sroa.3.0.extract.trunc.i89 = trunc nuw i64 %.sroa.3.0.extract.shift.i88 to i32
  %i.ci = fptosi double %i.cg to i32              ; 2 uses
  store i32 %i.ci, ptr %6, align 16, !tbaa !183
  %i.cj = sitofp i32 %.sroa.3.0.extract.trunc.i89 to double ; 2 uses
  %i.ck = fmul double %i.ce, %i.cj                ; 4 uses
  store double %i.ck, ptr %i.a, align 8, !tbaa !185
  %or.cond22.i90 = fcmp ult double %i.ck, f0xC1E0000000000000
  %i.cl = fcmp ogt double %i.ck, f0x41DFFFFFFFC00000
  %or.cond23.i91 = or i1 %or.cond22.i90, %i.cl
  br i1 %or.cond23.i91, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = fptosi double %i.ck to i32              ; 3 uses
  %i.cn = insertelement <2 x i32> poison, i32 %i.ci, i64 0
  %i.co = insertelement <2 x i32> %i.cn, i32 %i.cm, i64 1
  %i.cp = sitofp <2 x i32> %i.co to <2 x double>
  %i.cq = fneg <2 x double> %i.cp
  %i.cr = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.cj, i64 1
  %i.ct = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.cu, <2 x double> %i.cq) ; 2 uses
  %i.cw = extractelement <2 x double> %i.cv, i64 0
  %i.cx = fmul double %i.cw, 3.000000e+01
  %i.cy = fmul double %i.cx, 1.000000e+06
  %i.cz = call double @llvm.nearbyint.f64(double %i.cy)
  %i.da = fdiv double %i.cz, 1.000000e+06         ; 2 uses
  %i.db = fptosi double %i.da to i32              ; 2 uses
  %i.dc = extractelement <2 x double> %i.cv, i64 1
  %i.dd = fadd double %i.dc, %i.da
  %i.de = sitofp i32 %i.db to double
  %i.df = fsub double %i.dd, %i.de
  %i.dg = fmul double %i.df, 8.640000e+04
  %i.dh = fmul double %i.dg, 1.000000e+06
  %i.di = call double @llvm.nearbyint.f64(double %i.dh)
  %i.dj = fdiv double %i.di, 1.000000e+06         ; 4 uses
  %i.dk = call double @llvm.fabs.f64(double %i.dj)
  %i.dl = fcmp ult double %i.dk, 8.640000e+04
  br i1 %i.dl, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dm = fdiv double %i.dj, 8.640000e+04
  %i.dn = fptosi double %i.dm to i32              ; 2 uses
  %i.do = add nsw i32 %i.dn, %i.cm
  %i.dp = mul nsw i32 %i.dn, 86400
  %i.dq = sitofp i32 %i.dp to double
  %i.dr = fsub nnan double %i.dj, %i.dq
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ds = phi i32 [ %i.cm, %bb.p ], [ %i.do, %bb.q ]
  %.020.i92 = phi double [ %i.dj, %bb.p ], [ %i.dr, %bb.q ]
  %i.dt = add nsw i32 %i.ds, %i.db
  store i32 %i.dt, ptr %i.h, align 4, !tbaa !186
  %i.du = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.413.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
  br i1 %i.du, label %bb.s, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread

bb.s:                                             ; preds = %bb.r
  %i.dv = load double, ptr %i.a, align 8, !tbaa !185
  %i.dw = fmul double %.020.i92, 1.000000e+06
  %i.dx = call double @llvm.fmuladd.f64(double %i.dv, double %i.ce, double %i.dw)
  %i.dy = call double @llvm.nearbyint.f64(double %i.dx) ; 3 uses
  store double %i.dy, ptr %i.a, align 8, !tbaa !185
  %i.dz = fcmp uno double %i.dy, 0.000000e+00
  br i1 %i.dz, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread: ; preds = %bb.o, %bb.n, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit102

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94: ; preds = %bb.s
  %i.ea = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.dy, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.ea, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit84, label %.loopexit102

.loopexit102:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread
  %i.eb = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.t unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73

bb.t:                                             ; preds = %.loopexit102
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.eb, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.w unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73: ; preds = %.loopexit102
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume.sink.split

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i76 = phi i1 [ false, %bb.u ], [ true, %bb.t ] ; 2 uses
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ee = load ptr, ptr %7, align 8, !tbaa !38    ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.ee) #27
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
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.2112
  %i.ei = load <2 x i64>, ptr %6, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store <2 x i64> %i.ei, ptr %i.eh, align 8, !tbaa !41
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph113, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit84
  %i.ej = add i64 %.2112, 1                       ; 2 uses
  %exitcond125.not = icmp eq i64 %i.ej, %i.p
  br i1 %exitcond125.not, label %.loopexit101, label %.lr.ph113, !llvm.loop !3522

.loopexit101:                                     ; preds = %bb.x, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, %.preheader103, %.preheader100, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.p, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.q, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ], [ %.0116, %.preheader100 ], [ %.0116, %.preheader103 ], [ %i.p, %bb.x ]
  %i.ek = add nuw nsw i64 %.069115, 1             ; 2 uses
  %exitcond126.not = icmp eq i64 %i.ek, %i.e
  br i1 %exitcond126.not, label %.loopexit, label %bb.c, !llvm.loop !3523

bb.y:                                             ; preds = %.lr.ph119, %bb.y
  %.070118 = phi i64 [ 0, %.lr.ph119 ], [ %i.er, %bb.y ] ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.070118
  %i.em = load double, ptr %i.el, align 8, !tbaa !185
  %i.en = tail call { i64, i64 } @_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.02.0.copyload, i64 %.sroa.43.0.copyload, double noundef %i.em) ; 2 uses
  %i.eo = extractvalue { i64, i64 } %i.en, 0
  %i.ep = extractvalue { i64, i64 } %i.en, 1
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.070118 ; 2 uses
  store i64 %i.eo, ptr %i.eq, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i64 %i.ep, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !44
  %i.er = add nuw i64 %.070118, 1                 ; 2 uses
  %exitcond127.not = icmp eq i64 %i.er, %3
  br i1 %exitcond127.not, label %.loopexit, label %bb.y, !llvm.loop !3524

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
  %i.c = load ptr, ptr %4, align 8, !tbaa !113
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not121 = icmp eq i64 %3, 0
  br i1 %.not121, label %.loopexit, label %.lr.ph119

.lr.ph119:                                        ; preds = %.preheader
  %i.d = load double, ptr %0, align 8, !tbaa !185
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
  %.069115 = phi i64 [ 0, %.lr.ph117 ], [ %i.el, %.loopexit101 ] ; 2 uses
  %i.k = load ptr, ptr %4, align 8, !tbaa !113    ; 2 uses
  %.not.i71 = icmp eq ptr %i.k, null
  br i1 %.not.i71, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread: ; preds = %bb.c
  %i.l = add i64 %.0116, 64
  %i.m = call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %3)
  br label %.preheader103

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.069115
  %i.o = load i64, ptr %i.n, align 8, !tbaa !44   ; 2 uses
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
  %i.t = load double, ptr %0, align 8, !tbaa !185 ; 4 uses
  %i.u = insertelement <2 x double> poison, double %i.t, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.d

.preheader100:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.w = icmp ult i64 %.0116, %i.q
  br i1 %i.w, label %.lr.ph113, label %.loopexit101

bb.d:                                             ; preds = %.lr.ph, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit
  %.1111 = phi i64 [ %.0116, %.lr.ph ], [ %i.ca, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ] ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.1111 ; 2 uses
  %.sroa.020.0.copyload = load i64, ptr %i.x, align 8, !tbaa !32 ; 2 uses
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.421.0.copyload = load i64, ptr %.sroa.421.0..sroa_idx, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.020.0.copyload to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.y = sitofp i32 %.sroa.0.0.extract.trunc.i to double ; 2 uses
  %i.z = fmul double %i.t, %i.y                   ; 3 uses
  %or.cond.i = fcmp ult double %i.z, f0xC1E0000000000000
  %i.aa = fcmp ogt double %i.z, f0x41DFFFFFFFC00000
  %or.cond21.i = or i1 %or.cond.i, %i.aa
  br i1 %or.cond21.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.3.0.extract.shift.i = lshr i64 %.sroa.020.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %i.ab = fptosi double %i.z to i32               ; 2 uses
  store i32 %i.ab, ptr %9, align 16, !tbaa !183
  %i.ac = sitofp i32 %.sroa.3.0.extract.trunc.i to double ; 2 uses
  %i.ad = fmul double %i.t, %i.ac                 ; 4 uses
  store double %i.ad, ptr %i.b, align 8, !tbaa !185
  %or.cond22.i = fcmp ult double %i.ad, f0xC1E0000000000000
  %i.ae = fcmp ogt double %i.ad, f0x41DFFFFFFFC00000
  %or.cond23.i = or i1 %or.cond22.i, %i.ae
  br i1 %or.cond23.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = fptosi double %i.ad to i32              ; 3 uses
  %i.ag = insertelement <2 x i32> poison, i32 %i.ab, i64 0
  %i.ah = insertelement <2 x i32> %i.ag, i32 %i.af, i64 1
  %i.ai = sitofp <2 x i32> %i.ah to <2 x double>
  %i.aj = fneg <2 x double> %i.ai
  %i.ak = insertelement <2 x double> poison, double %i.y, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.ac, i64 1
  %i.am = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.v, <2 x double> %i.aj) ; 2 uses
  %i.an = extractelement <2 x double> %i.am, i64 0
  %i.ao = fmul double %i.an, 3.000000e+01
  %i.ap = fmul double %i.ao, 1.000000e+06
  %i.aq = call double @llvm.nearbyint.f64(double %i.ap)
  %i.ar = fdiv double %i.aq, 1.000000e+06         ; 2 uses
  %i.as = fptosi double %i.ar to i32              ; 2 uses
  %i.at = extractelement <2 x double> %i.am, i64 1
  %i.au = fadd double %i.at, %i.ar
  %i.av = sitofp i32 %i.as to double
  %i.aw = fsub double %i.au, %i.av
  %i.ax = fmul double %i.aw, 8.640000e+04
  %i.ay = fmul double %i.ax, 1.000000e+06
  %i.az = call double @llvm.nearbyint.f64(double %i.ay)
  %i.ba = fdiv double %i.az, 1.000000e+06         ; 4 uses
  %i.bb = call double @llvm.fabs.f64(double %i.ba)
  %i.bc = fcmp ult double %i.bb, 8.640000e+04
  br i1 %i.bc, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = fdiv double %i.ba, 8.640000e+04
  %i.be = fptosi double %i.bd to i32              ; 2 uses
  %i.bf = add nsw i32 %i.be, %i.af
  %i.bg = mul nsw i32 %i.be, 86400
  %i.bh = sitofp i32 %i.bg to double
  %i.bi = fsub nnan double %i.ba, %i.bh
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bj = phi i32 [ %i.af, %bb.f ], [ %i.bf, %bb.g ]
  %.020.i = phi double [ %i.ba, %bb.f ], [ %i.bi, %bb.g ]
  %i.bk = add nsw i32 %i.bj, %i.as
  store i32 %i.bk, ptr %i.g, align 4, !tbaa !186
  %i.bl = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.421.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false)
  br i1 %i.bl, label %bb.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bm = load double, ptr %i.b, align 8, !tbaa !185
  %i.bn = fmul double %.020.i, 1.000000e+06
  %i.bo = call double @llvm.fmuladd.f64(double %i.bm, double %i.t, double %i.bn)
  %i.bp = call double @llvm.nearbyint.f64(double %i.bo) ; 3 uses
  store double %i.bp, ptr %i.b, align 8, !tbaa !185
  %i.bq = fcmp uno double %i.bp, 0.000000e+00
  br i1 %i.bq, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread: ; preds = %bb.e, %bb.d, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit105

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit: ; preds = %bb.i
  %i.br = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br i1 %i.br, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, label %.loopexit105

.loopexit105:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread
  %i.bs = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.j:                                             ; preds = %.loopexit105
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.bs, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.m unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %.loopexit105
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i72 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bv = load ptr, ptr %10, align 8, !tbaa !38   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.bv) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i72, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i72, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78
  %.sink = phi ptr [ %i.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73 ], [ %i.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %i.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73 ], [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %i.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @__cxa_free_exception(ptr %.sink) #25
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77 ], [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.k
  unreachable

_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.1111
  %i.bz = load <2 x i64>, ptr %9, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store <2 x i64> %i.bz, ptr %i.by, align 8, !tbaa !41
  %i.ca = add i64 %.1111, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %i.r
  br i1 %exitcond.not, label %.loopexit101, label %bb.d, !llvm.loop !3525

.lr.ph113:                                        ; preds = %.preheader100, %bb.x
  %.2112 = phi i64 [ %i.ek, %bb.x ], [ %.0116, %.preheader100 ] ; 4 uses
  %i.cb = sub nuw i64 %.2112, %.0116
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.cc, %i.o
  %.not = icmp eq i64 %i.cd, 0
  br i1 %.not, label %bb.x, label %bb.n

bb.n:                                             ; preds = %.lr.ph113
  %i.ce = load double, ptr %0, align 8, !tbaa !185 ; 4 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.2112 ; 2 uses
  %.sroa.012.0.copyload = load i64, ptr %i.cf, align 8, !tbaa !32 ; 2 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.413.0.copyload = load i64, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.sroa.0.0.extract.trunc.i85 = trunc i64 %.sroa.012.0.copyload to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.cg = sitofp i32 %.sroa.0.0.extract.trunc.i85 to double ; 2 uses
  %i.ch = fmul double %i.ce, %i.cg                ; 3 uses
  %or.cond.i86 = fcmp ult double %i.ch, f0xC1E0000000000000
  %i.ci = fcmp ogt double %i.ch, f0x41DFFFFFFFC00000
  %or.cond21.i87 = or i1 %or.cond.i86, %i.ci
  br i1 %or.cond21.i87, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.3.0.extract.shift.i88 = lshr i64 %.sroa.012.0.copyload, 32
  %.sroa.3.0.extract.trunc.i89 = trunc nuw i64 %.sroa.3.0.extract.shift.i88 to i32
  %i.cj = fptosi double %i.ch to i32              ; 2 uses
  store i32 %i.cj, ptr %6, align 16, !tbaa !183
  %i.ck = sitofp i32 %.sroa.3.0.extract.trunc.i89 to double ; 2 uses
  %i.cl = fmul double %i.ce, %i.ck                ; 4 uses
  store double %i.cl, ptr %i.a, align 8, !tbaa !185
  %or.cond22.i90 = fcmp ult double %i.cl, f0xC1E0000000000000
  %i.cm = fcmp ogt double %i.cl, f0x41DFFFFFFFC00000
  %or.cond23.i91 = or i1 %or.cond22.i90, %i.cm
  br i1 %or.cond23.i91, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = fptosi double %i.cl to i32              ; 3 uses
  %i.co = insertelement <2 x i32> poison, i32 %i.cj, i64 0
  %i.cp = insertelement <2 x i32> %i.co, i32 %i.cn, i64 1
  %i.cq = sitofp <2 x i32> %i.cp to <2 x double>
  %i.cr = fneg <2 x double> %i.cq
  %i.cs = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %i.ck, i64 1
  %i.cu = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.cv, <2 x double> %i.cr) ; 2 uses
  %i.cx = extractelement <2 x double> %i.cw, i64 0
  %i.cy = fmul double %i.cx, 3.000000e+01
  %i.cz = fmul double %i.cy, 1.000000e+06
  %i.da = call double @llvm.nearbyint.f64(double %i.cz)
  %i.db = fdiv double %i.da, 1.000000e+06         ; 2 uses
  %i.dc = fptosi double %i.db to i32              ; 2 uses
  %i.dd = extractelement <2 x double> %i.cw, i64 1
  %i.de = fadd double %i.dd, %i.db
  %i.df = sitofp i32 %i.dc to double
  %i.dg = fsub double %i.de, %i.df
  %i.dh = fmul double %i.dg, 8.640000e+04
  %i.di = fmul double %i.dh, 1.000000e+06
  %i.dj = call double @llvm.nearbyint.f64(double %i.di)
  %i.dk = fdiv double %i.dj, 1.000000e+06         ; 4 uses
  %i.dl = call double @llvm.fabs.f64(double %i.dk)
  %i.dm = fcmp ult double %i.dl, 8.640000e+04
  br i1 %i.dm, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dn = fdiv double %i.dk, 8.640000e+04
  %i.do = fptosi double %i.dn to i32              ; 2 uses
  %i.dp = add nsw i32 %i.do, %i.cn
  %i.dq = mul nsw i32 %i.do, 86400
  %i.dr = sitofp i32 %i.dq to double
  %i.ds = fsub nnan double %i.dk, %i.dr
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dt = phi i32 [ %i.cn, %bb.p ], [ %i.dp, %bb.q ]
  %.020.i92 = phi double [ %i.dk, %bb.p ], [ %i.ds, %bb.q ]
  %i.du = add nsw i32 %i.dt, %i.dc
  store i32 %i.du, ptr %i.i, align 4, !tbaa !186
  %i.dv = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.413.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
  br i1 %i.dv, label %bb.s, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread

bb.s:                                             ; preds = %bb.r
  %i.dw = load double, ptr %i.a, align 8, !tbaa !185
  %i.dx = fmul double %.020.i92, 1.000000e+06
  %i.dy = call double @llvm.fmuladd.f64(double %i.dw, double %i.ce, double %i.dx)
  %i.dz = call double @llvm.nearbyint.f64(double %i.dy) ; 3 uses
  store double %i.dz, ptr %i.a, align 8, !tbaa !185
  %i.ea = fcmp uno double %i.dz, 0.000000e+00
  br i1 %i.ea, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread: ; preds = %bb.o, %bb.n, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit102

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94: ; preds = %bb.s
  %i.eb = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.dz, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.eb, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit84, label %.loopexit102

.loopexit102:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit94.thread
  %i.ec = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.t unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73

bb.t:                                             ; preds = %.loopexit102
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.ec, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.w unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i73: ; preds = %.loopexit102
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume.sink.split

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i76 = phi i1 [ false, %bb.u ], [ true, %bb.t ] ; 2 uses
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ef = load ptr, ptr %7, align 8, !tbaa !38    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.ef) #27
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
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.2112
  %i.ej = load <2 x i64>, ptr %6, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store <2 x i64> %i.ej, ptr %i.ei, align 8, !tbaa !41
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph113, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit84
  %i.ek = add i64 %.2112, 1                       ; 2 uses
  %exitcond125.not = icmp eq i64 %i.ek, %i.q
  br i1 %exitcond125.not, label %.loopexit101, label %.lr.ph113, !llvm.loop !3526

.loopexit101:                                     ; preds = %bb.x, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, %.preheader103, %.preheader100, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.q, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.r, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ], [ %.0116, %.preheader100 ], [ %.0116, %.preheader103 ], [ %i.q, %bb.x ]
  %i.el = add nuw nsw i64 %.069115, 1             ; 2 uses
  %exitcond126.not = icmp eq i64 %i.el, %i.f
  br i1 %exitcond126.not, label %.loopexit, label %bb.c, !llvm.loop !3527

bb.y:                                             ; preds = %.lr.ph119, %bb.y
  %.070118 = phi i64 [ 0, %.lr.ph119 ], [ %i.er, %bb.y ] ; 3 uses
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.070118 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.em, align 8, !tbaa !32
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !44
  %i.en = tail call { i64, i64 } @_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.02.0.copyload, i64 %.sroa.43.0.copyload, double noundef %i.d) ; 2 uses
  %i.eo = extractvalue { i64, i64 } %i.en, 0
  %i.ep = extractvalue { i64, i64 } %i.en, 1
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.070118 ; 2 uses
  store i64 %i.eo, ptr %i.eq, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i64 %i.ep, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !44
  %i.er = add nuw i64 %.070118, 1                 ; 2 uses
  %exitcond127.not = icmp eq i64 %i.er, %3
  br i1 %exitcond127.not, label %.loopexit, label %bb.y, !llvm.loop !3528

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
  %i.c = load ptr, ptr %4, align 8, !tbaa !113
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
  %.078124 = phi i64 [ 0, %.lr.ph126 ], [ %i.em, %.loopexit110 ] ; 2 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !113    ; 2 uses
  %.not.i80 = icmp eq ptr %i.j, null
  br i1 %.not.i80, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread: ; preds = %bb.c
  %i.k = add i64 %.0125, 64
  %i.l = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %3)
  br label %.preheader112

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.078124
  %i.n = load i64, ptr %i.m, align 8, !tbaa !44   ; 2 uses
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
  %.1120 = phi i64 [ %i.ca, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ], [ %.0125, %.preheader112 ] ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1120
  %i.u = load double, ptr %i.t, align 8, !tbaa !185 ; 4 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.1120 ; 2 uses
  %.sroa.021.0.copyload = load i64, ptr %i.v, align 8, !tbaa !32 ; 2 uses
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.422.0.copyload = load i64, ptr %.sroa.422.0..sroa_idx, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.021.0.copyload to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.w = sitofp i32 %.sroa.0.0.extract.trunc.i to double ; 2 uses
  %i.x = fmul double %i.u, %i.w                   ; 3 uses
  %or.cond.i = fcmp ult double %i.x, f0xC1E0000000000000
  %i.y = fcmp ogt double %i.x, f0x41DFFFFFFFC00000
  %or.cond21.i = or i1 %or.cond.i, %i.y
  br i1 %or.cond21.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %.sroa.3.0.extract.shift.i = lshr i64 %.sroa.021.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %i.z = fptosi double %i.x to i32                ; 2 uses
  store i32 %i.z, ptr %9, align 16, !tbaa !183
  %i.aa = sitofp i32 %.sroa.3.0.extract.trunc.i to double ; 2 uses
  %i.ab = fmul double %i.u, %i.aa                 ; 4 uses
  store double %i.ab, ptr %i.b, align 8, !tbaa !185
  %or.cond22.i = fcmp ult double %i.ab, f0xC1E0000000000000
  %i.ac = fcmp ogt double %i.ab, f0x41DFFFFFFFC00000
  %or.cond23.i = or i1 %or.cond22.i, %i.ac
  br i1 %or.cond23.i, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = fptosi double %i.ab to i32              ; 3 uses
  %i.ae = insertelement <2 x i32> poison, i32 %i.z, i64 0
  %i.af = insertelement <2 x i32> %i.ae, i32 %i.ad, i64 1
  %i.ag = sitofp <2 x i32> %i.af to <2 x double>
  %i.ah = fneg <2 x double> %i.ag
  %i.ai = insertelement <2 x double> poison, double %i.w, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.aa, i64 1
  %i.ak = insertelement <2 x double> poison, double %i.u, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.al, <2 x double> %i.ah) ; 2 uses
  %i.an = extractelement <2 x double> %i.am, i64 0
  %i.ao = fmul double %i.an, 3.000000e+01
  %i.ap = fmul double %i.ao, 1.000000e+06
  %i.aq = call double @llvm.nearbyint.f64(double %i.ap)
  %i.ar = fdiv double %i.aq, 1.000000e+06         ; 2 uses
  %i.as = fptosi double %i.ar to i32              ; 2 uses
  %i.at = extractelement <2 x double> %i.am, i64 1
  %i.au = fadd double %i.at, %i.ar
  %i.av = sitofp i32 %i.as to double
  %i.aw = fsub double %i.au, %i.av
  %i.ax = fmul double %i.aw, 8.640000e+04
  %i.ay = fmul double %i.ax, 1.000000e+06
  %i.az = call double @llvm.nearbyint.f64(double %i.ay)
  %i.ba = fdiv double %i.az, 1.000000e+06         ; 4 uses
  %i.bb = call double @llvm.fabs.f64(double %i.ba)
  %i.bc = fcmp ult double %i.bb, 8.640000e+04
  br i1 %i.bc, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = fdiv double %i.ba, 8.640000e+04
  %i.be = fptosi double %i.bd to i32              ; 2 uses
  %i.bf = add nsw i32 %i.be, %i.ad
  %i.bg = mul nsw i32 %i.be, 86400
  %i.bh = sitofp i32 %i.bg to double
  %i.bi = fsub nnan double %i.ba, %i.bh
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bj = phi i32 [ %i.ad, %bb.e ], [ %i.bf, %bb.f ]
  %.020.i = phi double [ %i.ba, %bb.e ], [ %i.bi, %bb.f ]
  %i.bk = add nsw i32 %i.bj, %i.as
  store i32 %i.bk, ptr %i.f, align 4, !tbaa !186
  %i.bl = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.422.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false)
  br i1 %i.bl, label %bb.h, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.bm = load double, ptr %i.b, align 8, !tbaa !185
  %i.bn = fmul double %.020.i, 1.000000e+06
  %i.bo = call double @llvm.fmuladd.f64(double %i.bm, double %i.u, double %i.bn)
  %i.bp = call double @llvm.nearbyint.f64(double %i.bo) ; 3 uses
  store double %i.bp, ptr %i.b, align 8, !tbaa !185
  %i.bq = fcmp uno double %i.bp, 0.000000e+00
  br i1 %i.bq, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread: ; preds = %bb.d, %.lr.ph, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit114

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit: ; preds = %bb.h
  %i.br = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br i1 %i.br, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, label %.loopexit114

.loopexit114:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit.thread
  %i.bs = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.i:                                             ; preds = %.loopexit114
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.bs, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.l unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %.loopexit114
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %common.resume.sink.split

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i81 = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bv = load ptr, ptr %10, align 8, !tbaa !38   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.bv) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i81, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.0.i81, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87
  %.sink = phi ptr [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82 ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87 ], [ %i.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86 ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82 ], [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87 ], [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86 ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @__cxa_free_exception(ptr %.sink) #25
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86 ], [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.j
  unreachable

_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit: ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.1120
  %i.bz = load <2 x i64>, ptr %9, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store <2 x i64> %i.bz, ptr %i.by, align 8, !tbaa !41
  %i.ca = add i64 %.1120, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %i.q
  br i1 %exitcond.not, label %.loopexit110, label %.lr.ph, !llvm.loop !3529

.lr.ph122:                                        ; preds = %.preheader109, %bb.w
  %.2121 = phi i64 [ %i.el, %bb.w ], [ %.0125, %.preheader109 ] ; 5 uses
  %i.cb = sub nuw i64 %.2121, %.0125
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = and i64 %i.cc, %i.n
  %.not = icmp eq i64 %i.cd, 0
  br i1 %.not, label %bb.w, label %bb.m

bb.m:                                             ; preds = %.lr.ph122
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.2121
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !185 ; 4 uses
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.2121 ; 2 uses
  %.sroa.013.0.copyload = load i64, ptr %i.cg, align 8, !tbaa !32 ; 2 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.414.0.copyload = load i64, ptr %.sroa.414.0..sroa_idx, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.sroa.0.0.extract.trunc.i94 = trunc i64 %.sroa.013.0.copyload to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ch = sitofp i32 %.sroa.0.0.extract.trunc.i94 to double ; 2 uses
  %i.ci = fmul double %i.cf, %i.ch                ; 3 uses
  %or.cond.i95 = fcmp ult double %i.ci, f0xC1E0000000000000
  %i.cj = fcmp ogt double %i.ci, f0x41DFFFFFFFC00000
  %or.cond21.i96 = or i1 %or.cond.i95, %i.cj
  br i1 %or.cond21.i96, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.3.0.extract.shift.i97 = lshr i64 %.sroa.013.0.copyload, 32
  %.sroa.3.0.extract.trunc.i98 = trunc nuw i64 %.sroa.3.0.extract.shift.i97 to i32
  %i.ck = fptosi double %i.ci to i32              ; 2 uses
  store i32 %i.ck, ptr %6, align 16, !tbaa !183
  %i.cl = sitofp i32 %.sroa.3.0.extract.trunc.i98 to double ; 2 uses
  %i.cm = fmul double %i.cf, %i.cl                ; 4 uses
  store double %i.cm, ptr %i.a, align 8, !tbaa !185
  %or.cond22.i99 = fcmp ult double %i.cm, f0xC1E0000000000000
  %i.cn = fcmp ogt double %i.cm, f0x41DFFFFFFFC00000
  %or.cond23.i100 = or i1 %or.cond22.i99, %i.cn
  br i1 %or.cond23.i100, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = fptosi double %i.cm to i32              ; 3 uses
  %i.cp = insertelement <2 x i32> poison, i32 %i.ck, i64 0
  %i.cq = insertelement <2 x i32> %i.cp, i32 %i.co, i64 1
  %i.cr = sitofp <2 x i32> %i.cq to <2 x double>
  %i.cs = fneg <2 x double> %i.cr
  %i.ct = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.cl, i64 1
  %i.cv = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.cw, <2 x double> %i.cs) ; 2 uses
  %i.cy = extractelement <2 x double> %i.cx, i64 0
  %i.cz = fmul double %i.cy, 3.000000e+01
  %i.da = fmul double %i.cz, 1.000000e+06
  %i.db = call double @llvm.nearbyint.f64(double %i.da)
  %i.dc = fdiv double %i.db, 1.000000e+06         ; 2 uses
  %i.dd = fptosi double %i.dc to i32              ; 2 uses
  %i.de = extractelement <2 x double> %i.cx, i64 1
  %i.df = fadd double %i.de, %i.dc
  %i.dg = sitofp i32 %i.dd to double
  %i.dh = fsub double %i.df, %i.dg
  %i.di = fmul double %i.dh, 8.640000e+04
  %i.dj = fmul double %i.di, 1.000000e+06
  %i.dk = call double @llvm.nearbyint.f64(double %i.dj)
  %i.dl = fdiv double %i.dk, 1.000000e+06         ; 4 uses
  %i.dm = call double @llvm.fabs.f64(double %i.dl)
  %i.dn = fcmp ult double %i.dm, 8.640000e+04
  br i1 %i.dn, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.do = fdiv double %i.dl, 8.640000e+04
  %i.dp = fptosi double %i.do to i32              ; 2 uses
  %i.dq = add nsw i32 %i.dp, %i.co
  %i.dr = mul nsw i32 %i.dp, 86400
  %i.ds = sitofp i32 %i.dr to double
  %i.dt = fsub nnan double %i.dl, %i.ds
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.du = phi i32 [ %i.co, %bb.o ], [ %i.dq, %bb.p ]
  %.020.i101 = phi double [ %i.dl, %bb.o ], [ %i.dt, %bb.p ]
  %i.dv = add nsw i32 %i.du, %i.dd
  store i32 %i.dv, ptr %i.h, align 4, !tbaa !186
  %i.dw = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIldEEbT_RT0_b(i64 noundef %.sroa.414.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false)
  br i1 %i.dw, label %bb.r, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103.thread

bb.r:                                             ; preds = %bb.q
  %i.dx = load double, ptr %i.a, align 8, !tbaa !185
  %i.dy = fmul double %.020.i101, 1.000000e+06
  %i.dz = call double @llvm.fmuladd.f64(double %i.dx, double %i.cf, double %i.dy)
  %i.ea = call double @llvm.nearbyint.f64(double %i.dz) ; 3 uses
  store double %i.ea, ptr %i.a, align 8, !tbaa !185
  %i.eb = fcmp uno double %i.ea, 0.000000e+00
  br i1 %i.eb, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103.thread, label %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103.thread: ; preds = %bb.n, %bb.m, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit111

_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103: ; preds = %bb.r
  %i.ec = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIdlEEbT_RT0_b(double noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %i.ec, label %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit93, label %.loopexit111

.loopexit111:                                     ; preds = %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103, %_ZN6duckdb19TryMultiplyOperator9OperationINS_10interval_tEdS2_EEbT_T0_RT1_.exit103.thread
  %i.ed = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.s unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82

bb.s:                                             ; preds = %.loopexit111
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @__cxa_throw(ptr nonnull %i.ed, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.v unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i82: ; preds = %.loopexit111
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %common.resume.sink.split

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0.i85 = phi i1 [ false, %bb.t ], [ true, %bb.s ] ; 2 uses
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.eg = load ptr, ptr %7, align 8, !tbaa !38    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.eg) #27
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
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.2121
  %i.ek = load <2 x i64>, ptr %6, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store <2 x i64> %i.ek, ptr %i.ej, align 8, !tbaa !41
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph122, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit93
  %i.el = add i64 %.2121, 1                       ; 2 uses
  %exitcond134.not = icmp eq i64 %i.el, %i.p
  br i1 %exitcond134.not, label %.loopexit110, label %.lr.ph122, !llvm.loop !3530

.loopexit110:                                     ; preds = %bb.w, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit, %.preheader112, %.preheader109, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.p, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.q, %_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_.exit ], [ %.0125, %.preheader109 ], [ %.0125, %.preheader112 ], [ %i.p, %bb.w ]
  %i.em = add nuw nsw i64 %.078124, 1             ; 2 uses
  %exitcond135.not = icmp eq i64 %i.em, %i.e
  br i1 %exitcond135.not, label %.loopexit, label %bb.c, !llvm.loop !3531

.lr.ph128:                                        ; preds = %.preheader, %.lr.ph128
  %.079127 = phi i64 [ %i.eu, %.lr.ph128 ], [ 0, %.preheader ] ; 4 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.079127
  %i.eo = load double, ptr %i.en, align 8, !tbaa !185
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.079127 ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.ep, align 8, !tbaa !32
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !44
  %i.eq = tail call { i64, i64 } @_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.02.0.copyload, i64 %.sroa.43.0.copyload, double noundef %i.eo) ; 2 uses
  %i.er = extractvalue { i64, i64 } %i.eq, 0
  %i.es = extractvalue { i64, i64 } %i.eq, 1
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.079127 ; 2 uses
  store i64 %i.er, ptr %i.et, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 %i.es, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !44
  %i.eu = add nuw i64 %.079127, 1                 ; 2 uses
  %exitcond136.not = icmp eq i64 %i.eu, %3
  br i1 %exitcond136.not, label %.loopexit, label %.lr.ph128, !llvm.loop !3532

.loopexit:                                        ; preds = %.loopexit110, %.lr.ph128, %bb.b, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14BinaryExecutor18ExecuteGenericLoopIdNS_10interval_tES2_NS_29BinaryStandardOperatorWrapperENS_16MultiplyOperatorEbEEvPKT_PKT0_PT1_PKNS_15SelectionVectorESF_mRNS_12ValidityMaskESH_SH_T4_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext %9) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !113
  %.not.i = icmp eq ptr %i.a, null
  %i.b = load ptr, ptr %7, align 8
  %.not.i49 = icmp eq ptr %i.b, null
  %or.cond = select i1 %.not.i, i1 %.not.i49, i1 false
  %.not78 = icmp eq i64 %5, 0                     ; 2 uses
  br i1 %or.cond, label %.preheader, label %.preheader65

.preheader65:                                     ; preds = %bb.a
  br i1 %.not78, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader65
  %i.c = load ptr, ptr %3, align 8, !tbaa !125    ; 2 uses
  %.not.i50 = icmp eq ptr %i.c, null
  %i.d = load ptr, ptr %4, align 8, !tbaa !125    ; 2 uses
  %.not.i51 = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not78, label %.loopexit, label %.lr.ph69

.lr.ph69:                                         ; preds = %.preheader
  %i.f = load ptr, ptr %3, align 8, !tbaa !125    ; 3 uses
  %.not.i58 = icmp eq ptr %i.f, null
  %i.g = load ptr, ptr %4, align 8, !tbaa !125    ; 3 uses
  %.not.i60 = icmp eq ptr %i.g, null              ; 2 uses
  br i1 %.not.i58, label %.lr.ph69.split.us, label %.lr.ph69.split

.lr.ph69.split.us:                                ; preds = %.lr.ph69
  br i1 %.not.i60, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us.us: ; preds = %.lr.ph69.split.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us.us
  %.04868.us.us = phi i64 [ %i.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit59.us.us ], [ 0, %.lr.ph69.split.us ] ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.04868.us.us
  %i.i = load double, ptr %i.h, align 8, !tbaa !185
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.04868.us.us ; 2 uses
  %.sroa.02.0.copyload.us.us = load i64, ptr %i.j, align 8, !tbaa !32
  %.sroa.43.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.43.0.copyload.us.us = load i64, ptr %.sroa.43.0..sroa_idx.us.us, align 8, !tbaa !44
  %i.k = tail call { i64, i64 } @_ZN6duckdb16MultiplyOperator9OperationINS_10interval_tEdS2_EET1_T_T0_(i64 %.sroa.02.0.copyload.us.us, i64 %.sroa.43.0.copyload.us.us, double noundef %i.i) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.04868.us.us ; 2 uses
  store i64 %i.l, ptr %i.n, align 8, !tbaa !32
end_hunk_3
