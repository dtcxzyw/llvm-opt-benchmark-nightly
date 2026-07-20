inline.NumInlined: 1031
inline.NumDeleted: 356
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZN6duckdb17AggregateFunction12BinaryUpdateINS_12_GLOBAL__N_118RegrInterceptStateEddNS2_22RegrInterceptOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i19.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #21
  br label %_ZN6duckdb17AggregateExecutor12BinaryUpdateINS_12_GLOBAL__N_118RegrInterceptStateEddNS2_22RegrInterceptOperationEEEvRNS_18AggregateInputDataERNS_6VectorES8_Phm.exit

bb.aj:                                            ; preds = %bb.a
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %6) #21
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn.i = phi { ptr, i32 } [ %i.jb, %bb.ak ], [ %i.ja, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn.i

_ZN6duckdb17AggregateExecutor12BinaryUpdateINS_12_GLOBAL__N_118RegrInterceptStateEddNS2_22RegrInterceptOperationEEEvRNS_18AggregateInputDataERNS_6VectorES8_Phm.exit: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i16.i, %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i19.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fma.f64(double, double, double) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18RegrSlopeOperation8FinalizeIdNS_14RegrSlopeStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !248    ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !249  ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6duckdb21AggregateFinalizeData10ReturnNullEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load double, ptr %i.f, align 8, !tbaa !250
  %.not = icmp eq i64 %i.d, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load double, ptr %i.h, align 8
  %i.j = uitofp i64 %i.d to double
  %i.k = fdiv double %i.i, %i.j
  %i.l = select i1 %.not, double 0.000000e+00, double %i.k ; 3 uses
  %i.m = tail call noundef zeroext i1 @_ZN6duckdb5Value14DoubleIsFiniteEd(double noundef %i.l)
  br i1 %i.m, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.m unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.f ]  ; 2 uses
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !23     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.q) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %.0, label %bb.i, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %.0, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn23 = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.n) #21
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn22 = phi { ptr, i32 } [ %.pn23, %bb.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn22

bb.k:                                             ; preds = %bb.d
  %i.t = uitofp i64 %i.a to double
  %i.u = fdiv double %i.g, %i.t
  %i.v = fcmp une double %i.l, 0.000000e+00
  %i.w = fdiv double %i.u, %i.l
  %i.x = select i1 %i.v, double %i.w, double +qnan
  store double %i.x, ptr %1, align 8, !tbaa !106
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.c
  ret void

bb.m:                                             ; preds = %bb.g
  unreachable
}

declare noundef zeroext i1 @_ZN6duckdb5Value5IsNanIdEEbT_(double noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb5Value14DoubleIsFiniteEd(double noundef) local_unnamed_addr #2

declare void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN6duckdb17AggregateFunction9StateSizeImEEmRKS0_(ptr noundef nonnull align 8 dereferenceable(368) %0) #11 comdat align 2 {
bb.a:
  ret i64 8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction15StateInitializeImNS_17RegrCountFunctionELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %1) #11 comdat align 2 {
bb.a:
  store i64 0, ptr %1, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction19BinaryScatterUpdateImddNS_17RegrCountFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmRS3_m(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN6duckdb17AggregateExecutor13BinaryScatterImddNS_17RegrCountFunctionEEEvRNS_18AggregateInputDataERNS_6VectorES6_S6_m(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction12StateCombineImNS_17RegrCountFunctionEEEvRNS_6VectorES4_RNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(17) %2, i64 noundef %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 3 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118  ; 3 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7CombineImNS_17RegrCountFunctionEEEvRNS_6VectorES4_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %3, 1
  %i.e = icmp eq i64 %3, 1
  br i1 %i.e, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %3, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.09.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.u, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.09.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !251
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.09.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !251  ; 2 uses
  %i.j = load i64, ptr %i.g, align 8, !tbaa !102
  %i.k = load i64, ptr %i.i, align 8, !tbaa !102
  %i.l = add i64 %i.k, %i.j
  store i64 %i.l, ptr %i.i, align 8, !tbaa !102
  %i.m = or disjoint i64 %.09.i, 1                ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !251
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.m
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !251  ; 2 uses
  %i.r = load i64, ptr %i.o, align 8, !tbaa !102
  %i.s = load i64, ptr %i.q, align 8, !tbaa !102
  %i.t = add i64 %i.s, %i.r
  store i64 %i.t, ptr %i.q, align 8, !tbaa !102
  %i.u = add nuw i64 %.09.i, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb17AggregateExecutor7CombineImNS_17RegrCountFunctionEEEvRNS_6VectorES4_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !252

_ZN6duckdb17AggregateExecutor7CombineImNS_17RegrCountFunctionEEEvRNS_6VectorES4_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb17AggregateExecutor7CombineImNS_17RegrCountFunctionEEEvRNS_6VectorES4_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb17AggregateExecutor7CombineImNS_17RegrCountFunctionEEEvRNS_6VectorES4_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.09.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.u, %_ZN6duckdb17AggregateExecutor7CombineImNS_17RegrCountFunctionEEEvRNS_6VectorES4_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.09.i.epil.init
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !251
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.09.i.epil.init
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !251  ; 2 uses
  %i.z = load i64, ptr %i.w, align 8, !tbaa !102
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !102
  %i.ab = add i64 %i.aa, %i.z
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !102
  br label %_ZN6duckdb17AggregateExecutor7CombineImNS_17RegrCountFunctionEEEvRNS_6VectorES4_RNS_18AggregateInputDataEm.exit

_ZN6duckdb17AggregateExecutor7CombineImNS_17RegrCountFunctionEEEvRNS_6VectorES4_RNS_18AggregateInputDataEm.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZN6duckdb17AggregateExecutor7CombineImNS_17RegrCountFunctionEEEvRNS_6VectorES4_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction13StateFinalizeImjNS_17RegrCountFunctionEEEvRNS_6VectorERNS_18AggregateInputDataES4_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb17AggregateExecutor8FinalizeImjNS_17RegrCountFunctionEEEvRNS_6VectorERNS_18AggregateInputDataES4_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunction12BinaryUpdateImddNS_17RegrCountFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN6duckdb17AggregateExecutor12BinaryUpdateImddNS_17RegrCountFunctionEEEvRNS_18AggregateInputDataERNS_6VectorES6_Phm(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef %3, i64 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor13BinaryScatterImddNS_17RegrCountFunctionEEEvRNS_18AggregateInputDataERNS_6VectorES6_S6_m(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %6 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.b unwind label %bb.at

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.d unwind label %bb.av

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.e unwind label %bb.av

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.f unwind label %bb.av

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.g unwind label %bb.av

bb.g:                                             ; preds = %bb.f
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.h unwind label %bb.av

bb.h:                                             ; preds = %bb.g
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  %i.g = load ptr, ptr %5, align 8, !tbaa !92
  %i.h = load ptr, ptr %6, align 8, !tbaa !92
  %i.i = load ptr, ptr %7, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  invoke void @_ZN6duckdb17AggregateExecutor17BinaryScatterLoopImddNS_17RegrCountFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESG_SG_RNS_12ValidityMaskESI_(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.i unwind label %bb.av

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.n, align 8, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !55
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #21, !inline_history !253
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #21, !inline_history !253
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.q, %bb.m ], [ %i.aa, %bb.n ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.o, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !57

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #21
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.k, %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ae, align 8, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !55
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !50
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #21, !inline_history !254
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !50
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #21, !inline_history !254
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.t:                                             ; preds = %bb.r
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ah, %bb.s ], [ %i.ar, %bb.t ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.as, label %bb.u, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !57

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #21
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i14 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i14, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i18, label %bb.v

bb.v:                                             ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN6duckdb17AggregateExecutor17BinaryScatterLoopImddNS_17RegrCountFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESG_SG_RNS_12ValidityMaskESI_:bb.a
.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %.058.us = phi i64 [ %i.x, %bb.d ], [ 0, %.lr.ph ] ; 5 uses
  br i1 %.not.i35, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.058.us
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3
  %i.h = zext i32 %i.g to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us: ; preds = %bb.b, %.lr.ph.split.us
  %i.i = phi i64 [ %i.h, %bb.b ], [ %.058.us, %.lr.ph.split.us ] ; 2 uses
  br i1 %.not.i37, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us, label %bb.c

bb.c:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.058.us
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %i.l = zext i32 %i.k to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us: ; preds = %bb.c, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us
  %i.m = phi i64 [ %i.l, %bb.c ], [ %.058.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us ]
  br i1 %.not.i40, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit42.thread.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit42.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit42.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us
  %i.n = lshr i64 %i.i, 6
  %i.o = and i64 %i.i, 63
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.n
  %i.q = load i64, ptr %i.p, align 8, !tbaa !102
  %i.r = shl nuw i64 1, %i.o
  %i.s = and i64 %i.q, %i.r
  %.not55.us = icmp eq i64 %i.s, 0
  br i1 %.not55.us, label %bb.d, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit42.thread.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit42.thread.us: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit42.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.m
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !251  ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !102
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !102
  br label %bb.d

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit42.thread.us, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit42.us
  %i.x = add nuw i64 %.058.us, 1                  ; 2 uses
  %exitcond83.not = icmp eq i64 %i.x, %4
  br i1 %exitcond83.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !256

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i40, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %.not.i34, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us60.us, label %.lr.ph.split.split.us.split

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us60.us: ; preds = %.lr.ph.split.split.us, %bb.f
  %.058.us59.us = phi i64 [ %i.am, %bb.f ], [ 0, %.lr.ph.split.split.us ] ; 5 uses
  br i1 %.not.i37, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us62.us, label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us60.us
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.058.us59.us
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = zext i32 %i.z to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us62.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us62.us: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us60.us
  %i.ab = phi i64 [ %i.aa, %bb.e ], [ %.058.us59.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us60.us ]
  %i.ac = lshr i64 %.058.us59.us, 6
  %i.ad = and i64 %.058.us59.us, 63
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ac
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !102
  %i.ag = shl nuw i64 1, %i.ad
  %i.ah = and i64 %i.af, %i.ag
  %.not.us.us = icmp eq i64 %i.ah, 0
  br i1 %.not.us.us, label %bb.f, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us63.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us63.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us62.us
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ab
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !251 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !102
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !102
  br label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us63.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us62.us
  %i.am = add nuw i64 %.058.us59.us, 1            ; 2 uses
  %exitcond82.not = icmp eq i64 %i.am, %4
  br i1 %exitcond82.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us60.us, !llvm.loop !256

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us
  br i1 %.not.i37, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us60.us65, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us60

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us60.us65: ; preds = %.lr.ph.split.split.us.split, %bb.g
  %.058.us59.us66 = phi i64 [ %i.ba, %bb.g ], [ 0, %.lr.ph.split.split.us.split ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.058.us59.us66
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = lshr i64 %i.ap, 6
  %i.ar = and i64 %i.ap, 63
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aq
  %i.at = load i64, ptr %i.as, align 8, !tbaa !102
  %i.au = shl nuw i64 1, %i.ar
  %i.av = and i64 %i.at, %i.au
  %.not.us.us69 = icmp eq i64 %i.av, 0
  br i1 %.not.us.us69, label %bb.g, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us63.us70

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us63.us70: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us60.us65
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.058.us59.us66
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !251 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !102
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !102
  br label %bb.g

bb.g:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us63.us70, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us60.us65
  %i.ba = add nuw i64 %.058.us59.us66, 1          ; 2 uses
  %exitcond81.not = icmp eq i64 %i.ba, %4
  br i1 %exitcond81.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us60.us65, !llvm.loop !256

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us60: ; preds = %.lr.ph.split.split.us.split, %bb.h
  %.058.us59 = phi i64 [ %i.br, %bb.h ], [ 0, %.lr.ph.split.split.us.split ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.058.us59
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = lshr i64 %i.bd, 6
  %i.bf = and i64 %i.bd, 63
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.be
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !102
  %i.bi = shl nuw i64 1, %i.bf
  %i.bj = and i64 %i.bh, %i.bi
  %.not.us = icmp eq i64 %i.bj, 0
  br i1 %.not.us, label %bb.h, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us63

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us63: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us60
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.058.us59
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !251 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !102
  %i.bq = add i64 %i.bp, 1
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !102
  br label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us63, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us60
  %i.br = add nuw i64 %.058.us59, 1               ; 2 uses
  %exitcond80.not = icmp eq i64 %i.br, %4
  br i1 %exitcond80.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us60, !llvm.loop !256

.preheader:                                       ; preds = %bb.a
  br i1 %.not73, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.lr.ph

_ZNK6duckdb15SelectionVector9get_indexEm.exit44.lr.ph: ; preds = %.preheader
  %i.bs = load ptr, ptr %7, align 8, !tbaa !255   ; 6 uses
  %.not.i47 = icmp eq ptr %i.bs, null
  br i1 %.not.i47, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit44.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.lr.ph
  %xtraiter = and i64 %4, 3                       ; 3 uses
  %i.bt = icmp ult i64 %4, 4
  br i1 %i.bt, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit44.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.preheader
  %unroll_iter = and i64 %4, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit44

_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.lr.ph
  %xtraiter118 = and i64 %4, 3                    ; 3 uses
  %i.bu = icmp ult i64 %4, 4
  br i1 %i.bu, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us.preheader
  %unroll_iter122 = and i64 %4, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us.preheader.new
  %.03271.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us.preheader.new ], [ %i.co, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us ] ; 5 uses
  %niter123 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us.preheader.new ], [ %niter123.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03271.us
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !251 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !102
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !102
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03271.us
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !251 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !102
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !102
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03271.us
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !251 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !102
  %i.ci = add i64 %i.ch, 1
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !102
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03271.us
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !251 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !102
  %i.cn = add i64 %i.cm, 1
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !102
  %i.co = add nuw i64 %.03271.us, 4               ; 2 uses
  %niter123.next.3 = add nuw i64 %niter123, 4     ; 2 uses
  %niter123.ncmp.3 = icmp eq i64 %niter123.next.3, %unroll_iter122
  br i1 %niter123.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us, !llvm.loop !257

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.l
  %.058 = phi i64 [ %i.dr, %bb.l ], [ 0, %.lr.ph.split ] ; 7 uses
  br i1 %.not.i34, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.split
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.058
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cr = zext i32 %i.cq to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph.split.split, %bb.i
  %i.cs = phi i64 [ %i.cr, %bb.i ], [ %.058, %.lr.ph.split.split ] ; 2 uses
  br i1 %.not.i35, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36, label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.058
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = zext i32 %i.cu to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36

_ZNK6duckdb15SelectionVector9get_indexEm.exit36:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.j
  %i.cw = phi i64 [ %i.cv, %bb.j ], [ %.058, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  br i1 %.not.i37, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit38, label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.058
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = zext i32 %i.cy to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit38

_ZNK6duckdb15SelectionVector9get_indexEm.exit38:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36, %bb.k
  %i.da = phi i64 [ %i.cz, %bb.k ], [ %.058, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ]
  %i.db = lshr i64 %i.cs, 6
  %i.dc = and i64 %i.cs, 63
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.db
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !102
  %i.df = shl nuw i64 1, %i.dc
  %i.dg = and i64 %i.de, %i.df
  %.not = icmp eq i64 %i.dg, 0
  br i1 %.not, label %bb.l, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit38
  %i.dh = lshr i64 %i.cw, 6
  %i.di = and i64 %i.cw, 63
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.dh
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !102
  %i.dl = shl nuw i64 1, %i.di
  %i.dm = and i64 %i.dk, %i.dl
  %.not55 = icmp eq i64 %i.dm, 0
  br i1 %.not55, label %bb.l, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit42.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit42.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.da
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !251 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !102
  %i.dq = add i64 %i.dp, 1
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !102
  br label %bb.l

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit42.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %_ZNK6duckdb15SelectionVector9get_indexEm.exit38
  %i.dr = add nuw i64 %.058, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.dr, %4
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split.split, !llvm.loop !256

_ZNK6duckdb15SelectionVector9get_indexEm.exit44:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit44, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.preheader.new
  %.03271 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.preheader.new ], [ %i.ex, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44 ] ; 5 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.preheader.new ], [ %niter.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44 ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.03271
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !3
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !251 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !102
  %i.dy = add i64 %i.dx, 1
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !102
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.03271
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !3
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !251 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !102
  %i.eg = add i64 %i.ef, 1
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !102
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.03271
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !3
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !251 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !102
  %i.eo = add i64 %i.en, 1
  store i64 %i.eo, ptr %i.em, align 8, !tbaa !102
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.03271
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !251 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !102
  %i.ew = add i64 %i.ev, 1
  store i64 %i.ew, ptr %i.eu, align 8, !tbaa !102
  %i.ex = add nuw i64 %.03271, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit111.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit44, !llvm.loop !257

.loopexit.loopexit.unr-lcssa:                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us
  %lcmp.mod120.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod120.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us.epil.preheader: ; preds = %.loopexit.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us.preheader
  %.03271.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us.preheader ], [ %i.co, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod121 = icmp ne i64 %xtraiter118, 0
  tail call void @llvm.assume(i1 %lcmp.mod121)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us.epil.preheader
  %.03271.us.epil = phi i64 [ %i.fc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us.epil ], [ %.03271.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us.epil.preheader ] ; 2 uses
  %epil.iter119 = phi i64 [ %epil.iter119.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us.epil.preheader ]
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03271.us.epil
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !251 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !102
  %i.fb = add i64 %i.fa, 1
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !102
  %i.fc = add nuw i64 %.03271.us.epil, 1
  %epil.iter119.next = add i64 %epil.iter119, 1   ; 2 uses
  %epil.iter119.cmp.not = icmp eq i64 %epil.iter119.next, %xtraiter118
  br i1 %epil.iter119.cmp.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us.epil, !llvm.loop !258

.loopexit.loopexit111.unr-lcssa:                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit44
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit44.epil.preheader: ; preds = %.loopexit.loopexit111.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.preheader
  %.03271.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.preheader ], [ %i.ex, %.loopexit.loopexit111.unr-lcssa ]
  %lcmp.mod117 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod117)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit44.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.epil.preheader
  %.03271.epil = phi i64 [ %i.fk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.epil ], [ %.03271.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.epil.preheader ]
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.03271.epil
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !3
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ff
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !251 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !102
  %i.fj = add i64 %i.fi, 1
  store i64 %i.fj, ptr %i.fh, align 8, !tbaa !102
  %i.fk = add nuw i64 %.03271.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.epil, !llvm.loop !260

.loopexit:                                        ; preds = %bb.l, %bb.h, %bb.g, %bb.f, %bb.d, %.loopexit.loopexit111.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.epil, %.loopexit.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit44.us.epil, %.preheader56, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !116
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 8, ptr %i.a, align 1, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.g = load i8, ptr %i.c, align 1, !tbaa !116
  store i8 %i.g, ptr %i.b, align 1, !tbaa !117
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.j = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #21
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !116
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 8, ptr %i.a, align 1, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.g = load i8, ptr %i.c, align 1, !tbaa !116
  store i8 %i.g, ptr %i.b, align 1, !tbaa !117
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.j = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #21
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor8FinalizeImjNS_17RegrCountFunctionEEEvRNS_6VectorERNS_18AggregateInputDataES4_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !128
  %i.b = icmp eq i8 %i.a, 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !118
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !118
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !251
  %i.h = load i64, ptr %i.g, align 8, !tbaa !102
  %i.i = trunc i64 %i.h to i32
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !118  ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !118
  %invariant.gep = getelementptr [4 x i8], ptr %i.k, i64 %4 ; 5 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.l = icmp ult i64 %3, 4
  br i1 %i.l, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %3, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.023 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.af, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.023
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !251
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.023
  %i.o = load i64, ptr %i.n, align 8, !tbaa !102
  %i.p = trunc i64 %i.o to i32
  store i32 %i.p, ptr %gep, align 4, !tbaa !3
  %i.q = or disjoint i64 %.023, 1                 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !251
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.q
  %i.t = load i64, ptr %i.s, align 8, !tbaa !102
  %i.u = trunc i64 %i.t to i32
  store i32 %i.u, ptr %gep.1, align 4, !tbaa !3
  %i.v = or disjoint i64 %.023, 2                 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !251
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !102
  %i.z = trunc i64 %i.y to i32
  store i32 %i.z, ptr %gep.2, align 4, !tbaa !3
  %i.aa = or disjoint i64 %.023, 3                ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !251
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.aa
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !102
  %i.ae = trunc i64 %i.ad to i32
  store i32 %i.ae, ptr %gep.3, align 4, !tbaa !3
  %i.af = add nuw i64 %.023, 4                    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !261

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.023.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.af, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod24 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.023.epil = phi i64 [ %i.ak, %.lr.ph.epil ], [ %.023.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.023.epil
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !251
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %.023.epil
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !102
  %i.aj = trunc i64 %i.ai to i32
  store i32 %i.aj, ptr %gep.epil, align 4, !tbaa !3
  %i.ak = add nuw i64 %.023.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !262

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !116
  %i.e = icmp eq i8 %i.d, 6
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 6, ptr %i.a, align 1, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.g = load i8, ptr %i.c, align 1, !tbaa !116
  store i8 %i.g, ptr %i.b, align 1, !tbaa !117
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.j = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #21
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor12BinaryUpdateImddNS_17RegrCountFunctionEEEvRNS_18AggregateInputDataERNS_6VectorES6_Phm(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %6 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.b unwind label %bb.af

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.c unwind label %bb.ag

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.d unwind label %bb.ag

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.e unwind label %bb.ag

bb.e:                                             ; preds = %bb.d
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.f unwind label %bb.ag

bb.f:                                             ; preds = %bb.e
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.e = load ptr, ptr %5, align 8, !tbaa !92
  %i.f = load ptr, ptr %6, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  invoke void @_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopImddNS_17RegrCountFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESF_RNS_12ValidityMaskESH_(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef %i.d, ptr noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.g unwind label %bb.ag

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.k, align 8, !tbaa !53
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !55
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #21, !inline_history !253
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #21, !inline_history !253
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.j:                                             ; preds = %bb.h
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.k ], [ %i.x, %bb.l ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.m, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !57

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #21
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.i, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !52  ; 8 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdb17AggregateExecutor12BinaryUpdateImddNS_17RegrCountFunctionEEEvRNS_18AggregateInputDataERNS_6VectorES6_Phm:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i13: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i.i14 = phi i32 [ %i.av, %bb.w ], [ %i.bf, %bb.x ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i.i.i14, 1
  br i1 %i.bg, label %bb.y, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i15, !prof !57

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i13
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #21
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i15

_ZN6duckdb15SelectionVectorD2Ev.exit.i15:         ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i13, %bb.u, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i1.i16 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i1.i16, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit20, label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i15
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 4 uses
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 4294967297
  %i.bm = trunc i64 %i.bk to i32                  ; 2 uses
  br i1 %i.bl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.bj, align 8, !tbaa !53
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 0, ptr %i.bn, align 4, !tbaa !55
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !50
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #21, !inline_history !254
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !50
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #21, !inline_history !254
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit20

bb.ab:                                            ; preds = %bb.z
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i17 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i.i2.i17, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bv = add nsw i32 %i.bm, -1
  store i32 %i.bv, ptr %i.bj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i18

bb.ad:                                            ; preds = %bb.ab
  %i.bw = atomicrmw volatile add ptr %i.bj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i18

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i18: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i4.i19 = phi i32 [ %i.bm, %bb.ac ], [ %i.bw, %bb.ad ]
  %i.bx = icmp eq i32 %.0.i.i.i.i.i.i4.i19, 1
  br i1 %i.bx, label %bb.ae, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit20, !prof !57

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i18
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #21
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit20

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit20:       ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i15, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i18, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

bb.af:                                            ; preds = %bb.a
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.e, %bb.d, %bb.f, %bb.c, %bb.b
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %6) #21
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.ag ], [ %i.by, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopImddNS_17RegrCountFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESF_RNS_12ValidityMaskESH_(ptr noalias noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %7, align 8, !tbaa !100    ; 12 uses
  %.not.i = icmp eq ptr %i.a, null                ; 2 uses
  %i.b = load ptr, ptr %8, align 8
  %.fr = freeze ptr %i.b                          ; 4 uses
  %.not.i27 = icmp eq ptr %.fr, null
  %or.cond = and i1 %.not.i, %.not.i27
  %.not68 = icmp eq i64 %4, 0                     ; 2 uses
  br i1 %or.cond, label %.preheader, label %.preheader45

.preheader45:                                     ; preds = %bb.a
  br i1 %.not68, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader45
  %i.c = load ptr, ptr %5, align 8, !tbaa !255    ; 8 uses
  %.not.i28 = icmp eq ptr %i.c, null              ; 2 uses
  %i.d = load ptr, ptr %6, align 8, !tbaa !255    ; 3 uses
  %.not.i29 = icmp eq ptr %i.d, null              ; 4 uses
  %.not.i32 = icmp eq ptr %.fr, null              ; 2 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not.i32, label %.loopexit.sink.split, label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.c
  %.02647.us = phi i64 [ %i.q, %bb.c ], [ 0, %.lr.ph.split.us ] ; 3 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit30.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.split
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.02647.us
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %i.g = zext i32 %i.f to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit30.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit30.us: ; preds = %bb.b, %.lr.ph.split.us.split
  %i.h = phi i64 [ %i.g, %bb.b ], [ %.02647.us, %.lr.ph.split.us.split ] ; 2 uses
  %i.i = lshr i64 %i.h, 6
  %i.j = and i64 %i.h, 63
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !102
  %i.m = shl nuw i64 1, %i.j
  %i.n = and i64 %i.l, %i.m
  %.not44.us = icmp eq i64 %i.n, 0
  br i1 %.not44.us, label %bb.c, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit34.thread.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit34.thread.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit30.us
  %i.o = load i64, ptr %3, align 8, !tbaa !102
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %3, align 8, !tbaa !102
  br label %bb.c

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit34.thread.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit30.us
  %i.q = add nuw i64 %.02647.us, 1                ; 2 uses
  %exitcond85.not = icmp eq i64 %i.q, %4
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph.split.us.split, !llvm.loop !263

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i32, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %.not.i28, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.preheader: ; preds = %.lr.ph.split.split.us.split.us
  %xtraiter118 = and i64 %4, 1
  %i.r = icmp eq i64 %4, 1
  br i1 %i.r, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.preheader
  %unroll_iter121 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.us.preheader: ; preds = %.lr.ph.split.split.us.split.us
  %xtraiter123 = and i64 %4, 1
  %i.s = icmp eq i64 %4, 1
  br i1 %i.s, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.us.preheader
  %unroll_iter126 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.us: ; preds = %bb.d, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.us.preheader.new
  %.02647.us48.us.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.us.preheader.new ], [ %i.ag, %bb.d ] ; 4 uses
  %niter127 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.us.preheader.new ], [ %niter127.next.1, %bb.d ]
  %i.t = lshr i64 %.02647.us48.us.us, 6
  %i.u = and i64 %.02647.us48.us.us, 62
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.w = load i64, ptr %i.v, align 8, !tbaa !102  ; 2 uses
  %i.x = shl nuw nsw i64 1, %i.u
  %i.y = and i64 %i.w, %i.x
  %.not.us.us.us = icmp eq i64 %i.y, 0
  br i1 %.not.us.us.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.us.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.us
  %i.z = load i64, ptr %3, align 8, !tbaa !102
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %3, align 8, !tbaa !102
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.us.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.us
  %i.ab = and i64 %.02647.us48.us.us, 62
  %i.ac = shl nuw i64 2, %i.ab
  %i.ad = and i64 %i.w, %i.ac
  %.not.us.us.us.1 = icmp eq i64 %i.ad, 0
  br i1 %.not.us.us.us.1, label %bb.d, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us.us.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us.us.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.us.1
  %i.ae = load i64, ptr %3, align 8, !tbaa !102
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %3, align 8, !tbaa !102
  br label %bb.d

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us.us.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.us.1
  %i.ag = add nuw i64 %.02647.us48.us.us, 2       ; 2 uses
  %niter127.next.1 = add nuw i64 %niter127, 2     ; 2 uses
  %niter127.ncmp.1 = icmp eq i64 %niter127.next.1, %unroll_iter126
  br i1 %niter127.ncmp.1, label %.loopexit.loopexit107.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.us, !llvm.loop !263

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us: ; preds = %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.preheader.new
  %.02647.us48.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.preheader.new ], [ %i.au, %bb.e ] ; 4 uses
  %niter122 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.preheader.new ], [ %niter122.next.1, %bb.e ]
  %i.ah = lshr i64 %.02647.us48.us, 6
  %i.ai = and i64 %.02647.us48.us, 62
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ah
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !102 ; 2 uses
  %i.al = shl nuw nsw i64 1, %i.ai
  %i.am = and i64 %i.ak, %i.al
  %.not.us.us = icmp eq i64 %i.am, 0
  br i1 %.not.us.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us
  %i.an = load i64, ptr %3, align 8, !tbaa !102
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %3, align 8, !tbaa !102
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us
  %i.ap = and i64 %.02647.us48.us, 62
  %i.aq = shl nuw i64 2, %i.ap
  %i.ar = and i64 %i.ak, %i.aq
  %.not.us.us.1 = icmp eq i64 %i.ar, 0
  br i1 %.not.us.us.1, label %bb.e, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.1
  %i.as = load i64, ptr %3, align 8, !tbaa !102
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %3, align 8, !tbaa !102
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.1
  %i.au = add nuw i64 %.02647.us48.us, 2          ; 2 uses
  %niter122.next.1 = add nuw i64 %niter122, 2     ; 2 uses
  %niter122.ncmp.1 = icmp eq i64 %niter122.next.1, %unroll_iter121
  br i1 %niter122.ncmp.1, label %.loopexit.loopexit108.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us, !llvm.loop !263

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us53.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.preheader: ; preds = %.lr.ph.split.split.us.split
  %xtraiter = and i64 %4, 1
  %i.av = icmp eq i64 %4, 1
  br i1 %i.av, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.preheader
  %unroll_iter = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us53.preheader: ; preds = %.lr.ph.split.split.us.split
  %xtraiter113 = and i64 %4, 1
  %i.aw = icmp eq i64 %4, 1
  br i1 %i.aw, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us53.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us53.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us53.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us53.preheader
  %unroll_iter116 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us53

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us53: ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us53.preheader.new
  %.02647.us48.us54 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us53.preheader.new ], [ %i.bu, %bb.f ] ; 3 uses
  %niter117 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us53.preheader.new ], [ %niter117.next.1, %bb.f ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.02647.us48.us54
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = lshr i64 %i.az, 6
  %i.bb = and i64 %i.az, 63
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ba
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !102
  %i.be = shl nuw i64 1, %i.bb
  %i.bf = and i64 %i.bd, %i.be
  %.not.us.us56 = icmp eq i64 %i.bf, 0
  br i1 %.not.us.us56, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us53.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us57

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us57: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us53
  %i.bg = load i64, ptr %3, align 8, !tbaa !102
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %3, align 8, !tbaa !102
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us53.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us53.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us57, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us53
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.02647.us48.us54
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %i.bm = lshr i64 %i.bl, 6
  %i.bn = and i64 %i.bl, 63
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bm
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !102
  %i.bq = shl nuw i64 1, %i.bn
  %i.br = and i64 %i.bp, %i.bq
  %.not.us.us56.1 = icmp eq i64 %i.br, 0
  br i1 %.not.us.us56.1, label %bb.f, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us57.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us57.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us53.1
  %i.bs = load i64, ptr %3, align 8, !tbaa !102
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %3, align 8, !tbaa !102
  br label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us57.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us53.1
  %i.bu = add nuw i64 %.02647.us48.us54, 2        ; 2 uses
  %niter117.next.1 = add nuw i64 %niter117, 2     ; 2 uses
  %niter117.ncmp.1 = icmp eq i64 %niter117.next.1, %unroll_iter116
  br i1 %niter117.ncmp.1, label %.loopexit.loopexit109.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us53, !llvm.loop !263

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49: ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.preheader.new
  %.02647.us48 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.preheader.new ], [ %i.cs, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.preheader.new ], [ %niter.next.1, %bb.g ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.02647.us48
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.bx = zext i32 %i.bw to i64                   ; 2 uses
  %i.by = lshr i64 %i.bx, 6
  %i.bz = and i64 %i.bx, 63
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.by
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !102
  %i.cc = shl nuw i64 1, %i.bz
  %i.cd = and i64 %i.cb, %i.cc
  %.not.us = icmp eq i64 %i.cd, 0
  br i1 %.not.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49
  %i.ce = load i64, ptr %3, align 8, !tbaa !102
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %3, align 8, !tbaa !102
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.02647.us48
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = lshr i64 %i.cj, 6
  %i.cl = and i64 %i.cj, 63
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ck
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !102
  %i.co = shl nuw i64 1, %i.cl
  %i.cp = and i64 %i.cn, %i.co
  %.not.us.1 = icmp eq i64 %i.cp, 0
  br i1 %.not.us.1, label %bb.g, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.1
  %i.cq = load i64, ptr %3, align 8, !tbaa !102
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %3, align 8, !tbaa !102
  br label %bb.g

bb.g:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.1
  %i.cs = add nuw i64 %.02647.us48, 2             ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit110.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49, !llvm.loop !263

.preheader:                                       ; preds = %bb.a
  br i1 %.not68, label %.loopexit, label %.loopexit.sink.split

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.j
  %.02647 = phi i64 [ %i.dp, %bb.j ], [ 0, %.lr.ph.split ] ; 5 uses
  br i1 %.not.i28, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.split
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.02647
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = zext i32 %i.cu to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph.split.split, %bb.h
  %i.cw = phi i64 [ %i.cv, %bb.h ], [ %.02647, %.lr.ph.split.split ] ; 2 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit30, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.02647
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = zext i32 %i.cy to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit30

_ZNK6duckdb15SelectionVector9get_indexEm.exit30:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.i
  %i.da = phi i64 [ %i.cz, %bb.i ], [ %.02647, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.db = lshr i64 %i.cw, 6
  %i.dc = and i64 %i.cw, 63
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.db
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !102
  %i.df = shl nuw i64 1, %i.dc
  %i.dg = and i64 %i.de, %i.df
  %.not = icmp eq i64 %i.dg, 0
  br i1 %.not, label %bb.j, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit30
  %i.dh = lshr i64 %i.da, 6
  %i.di = and i64 %i.da, 63
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.dh
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !102
  %i.dl = shl nuw i64 1, %i.di
  %i.dm = and i64 %i.dk, %i.dl
  %.not44 = icmp eq i64 %i.dm, 0
  br i1 %.not44, label %bb.j, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit34.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit34.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.dn = load i64, ptr %3, align 8, !tbaa !102
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %3, align 8, !tbaa !102
  br label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit30, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit34.thread
  %i.dp = add nuw i64 %.02647, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.dp, %4
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split.split, !llvm.loop !263

.loopexit.sink.split:                             ; preds = %.preheader, %.lr.ph.split.us
  %.promoted = load i64, ptr %3, align 8, !tbaa !102
  %.us-phi = add i64 %.promoted, %4
  store i64 %.us-phi, ptr %3, align 8, !tbaa !102
  br label %.loopexit

.loopexit.loopexit107.unr-lcssa:                  ; preds = %bb.d
  %lcmp.mod124.not = icmp eq i64 %xtraiter123, 0
  br i1 %lcmp.mod124.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.us.epil.preheader: ; preds = %.loopexit.loopexit107.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.us.preheader
  %.02647.us48.us.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.us.preheader ], [ %i.ag, %.loopexit.loopexit107.unr-lcssa ] ; 2 uses
  %lcmp.mod125 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod125)
  %i.dq = lshr i64 %.02647.us48.us.us.epil.init, 6
  %i.dr = and i64 %.02647.us48.us.us.epil.init, 63
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dq
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !102
  %i.du = shl nuw i64 1, %i.dr
  %i.dv = and i64 %i.dt, %i.du
  %.not.us.us.us.epil = icmp eq i64 %i.dv, 0
  br i1 %.not.us.us.us.epil, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us.us.epil

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us.us.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.us.epil.preheader
  %i.dw = load i64, ptr %3, align 8, !tbaa !102
  %i.dx = add i64 %i.dw, 1
  store i64 %i.dx, ptr %3, align 8, !tbaa !102
  br label %.loopexit

.loopexit.loopexit108.unr-lcssa:                  ; preds = %bb.e
  %lcmp.mod119.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod119.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.epil.preheader: ; preds = %.loopexit.loopexit108.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.preheader
  %.02647.us48.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.preheader ], [ %i.au, %.loopexit.loopexit108.unr-lcssa ] ; 2 uses
  %lcmp.mod120 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod120)
  %i.dy = lshr i64 %.02647.us48.us.epil.init, 6
  %i.dz = and i64 %.02647.us48.us.epil.init, 63
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dy
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !102
  %i.ec = shl nuw i64 1, %i.dz
  %i.ed = and i64 %i.eb, %i.ec
  %.not.us.us.epil = icmp eq i64 %i.ed, 0
  br i1 %.not.us.us.epil, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us.epil

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.epil.preheader
  %i.ee = load i64, ptr %3, align 8, !tbaa !102
  %i.ef = add i64 %i.ee, 1
  store i64 %i.ef, ptr %3, align 8, !tbaa !102
  br label %.loopexit

.loopexit.loopexit109.unr-lcssa:                  ; preds = %bb.f
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us53.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us53.epil.preheader: ; preds = %.loopexit.loopexit109.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us53.preheader
  %.02647.us48.us54.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us53.preheader ], [ %i.bu, %.loopexit.loopexit109.unr-lcssa ]
  %lcmp.mod115 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod115)
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.02647.us48.us54.epil.init
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3
  %i.ei = zext i32 %i.eh to i64                   ; 2 uses
  %i.ej = lshr i64 %i.ei, 6
  %i.ek = and i64 %i.ei, 63
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ej
  %i.em = load i64, ptr %i.el, align 8, !tbaa !102
  %i.en = shl nuw i64 1, %i.ek
  %i.eo = and i64 %i.em, %i.en
  %.not.us.us56.epil = icmp eq i64 %i.eo, 0
  br i1 %.not.us.us56.epil, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us57.epil

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us57.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us53.epil.preheader
  %i.ep = load i64, ptr %3, align 8, !tbaa !102
  %i.eq = add i64 %i.ep, 1
  store i64 %i.eq, ptr %3, align 8, !tbaa !102
  br label %.loopexit

.loopexit.loopexit110.unr-lcssa:                  ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.epil.preheader: ; preds = %.loopexit.loopexit110.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.preheader
  %.02647.us48.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.preheader ], [ %i.cs, %.loopexit.loopexit110.unr-lcssa ]
  %lcmp.mod112 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.02647.us48.epil.init
  %i.es = load i32, ptr %i.er, align 4, !tbaa !3
  %i.et = zext i32 %i.es to i64                   ; 2 uses
  %i.eu = lshr i64 %i.et, 6
  %i.ev = and i64 %i.et, 63
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.eu
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !102
  %i.ey = shl nuw i64 1, %i.ev
  %i.ez = and i64 %i.ex, %i.ey
  %.not.us.epil = icmp eq i64 %i.ez, 0
  br i1 %.not.us.epil, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.epil

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.epil.preheader
  %i.fa = load i64, ptr %3, align 8, !tbaa !102
  %i.fb = add i64 %i.fa, 1
  store i64 %i.fb, ptr %3, align 8, !tbaa !102
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %.loopexit.loopexit110.unr-lcssa, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.epil.preheader, %.loopexit.loopexit109.unr-lcssa, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us57.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us53.epil.preheader, %.loopexit.loopexit108.unr-lcssa, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.epil.preheader, %.loopexit.loopexit107.unr-lcssa, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us51.us.us.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us49.us.us.epil.preheader, %bb.c, %.loopexit.sink.split, %.preheader45, %.preheader
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZN6duckdb17AggregateFunction9StateSizeINS_12_GLOBAL__N_111RegrR2StateEEEmRKS0_(ptr nofree nonnull readnone align 8 captures(none) %0) #9 align 2 {
bb.a:
  ret i64 128
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_111RegrR2StateENS2_15RegrR2OperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 128)) %1) #10 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction19BinaryScatterUpdateINS_12_GLOBAL__N_111RegrR2StateEddNS2_15RegrR2OperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS5_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %6 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.b unwind label %bb.bb

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.bc

bb.c:                                             ; preds = %bb.b
end_hunk_2
begin_hunk_3_@_ZN6duckdb13CorrOperation8FinalizeIdNS_9CorrStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE:bb.a
bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.v unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread: ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.sink.split

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0 = phi i1 [ false, %bb.q ], [ true, %bb.p ]  ; 2 uses
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.al = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.al) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %.0, label %.sink.split, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %.0, label %.sink.split, label %bb.t

bb.s:                                             ; preds = %bb.n
  %i.ao = fmul double %i.r, %i.ag                 ; 2 uses
  %i.ap = fcmp une double %i.ao, 0.000000e+00
  %i.aq = fdiv double %i.l, %i.ao
  %i.ar = select i1 %i.ap, double %i.aq, double +qnan
  store double %i.ar, ptr %1, align 8, !tbaa !106
  br label %bb.u

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sink = phi ptr [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  %.pn35.pn.ph = phi { ptr, i32 } [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @__cxa_free_exception(ptr %.sink) #21
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn35.pn = phi { ptr, i32 } [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %.pn35.pn.ph, %.sink.split ]
  resume { ptr, i32 } %.pn35.pn

bb.u:                                             ; preds = %bb.s, %bb.d
  ret void

bb.v:                                             ; preds = %bb.q, %bb.j
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZN6duckdb17AggregateFunction9StateSizeINS_12_GLOBAL__N_19RegrStateEEEmRKS0_(ptr nofree nonnull readnone align 8 captures(none) %0) #9 align 2 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_19RegrStateENS2_16RegrAvgXFunctionELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) #10 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction19BinaryScatterUpdateINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmRS5_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 11 uses
  %6 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.b unwind label %bb.bf

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.bg

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.d unwind label %bb.bh

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.e unwind label %bb.bh

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.f unwind label %bb.bh

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.g unwind label %bb.bh

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.h unwind label %bb.bh

bb.h:                                             ; preds = %bb.g
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76   ; 19 uses
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76   ; 19 uses
  %i.f = load ptr, ptr %5, align 8, !tbaa !92
  %i.g = load ptr, ptr %6, align 8, !tbaa !92
  %i.h = load ptr, ptr %7, align 8, !tbaa !92
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val.i = load ptr, ptr %i.f, align 8           ; 3 uses
  %.val13.i = load ptr, ptr %i.g, align 8         ; 15 uses
  %.val14.i = load ptr, ptr %i.h, align 8         ; 15 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !100, !noalias !314 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.k, null            ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !noalias !314
  %.fr.i.i = freeze ptr %i.l                      ; 3 uses
  %.not.i34.i.i = icmp eq ptr %.fr.i.i, null      ; 3 uses
  %or.cond.i.i = and i1 %.not.i.i.i, %.not.i34.i.i
  %.not29.i.i = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %or.cond.i.i, label %.preheader.i.i, label %.preheader10.i.i

.preheader10.i.i:                                 ; preds = %bb.h
  br i1 %.not29.i.i, label %_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader10.i.i
  %.not.i35.i.i = icmp eq ptr %.val.i, null       ; 3 uses
  %.not.i36.i.i = icmp eq ptr %.val13.i, null     ; 4 uses
  %.not.i38.i.i = icmp eq ptr %.val14.i, null     ; 5 uses
  br i1 %.not.i.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  br i1 %.not.i34.i.i, label %.lr.ph.split.us.split.us.i.i, label %.lr.ph.split.us.split.i.i

.lr.ph.split.us.split.us.i.i:                     ; preds = %.lr.ph.split.us.i.i
  br i1 %.not.i36.i.i, label %.lr.ph.split.us.split.us.split.us.i.preheader.i, label %.lr.ph.split.us.split.us.split.i.i

.lr.ph.split.us.split.us.split.us.i.preheader.i:  ; preds = %.lr.ph.split.us.split.us.i.i
  br i1 %.not.i38.i.i, label %.lr.ph.split.us.split.us.split.us.i.us.i.preheader, label %.lr.ph.split.us.split.us.split.us.i.i.preheader

.lr.ph.split.us.split.us.split.us.i.i.preheader:  ; preds = %.lr.ph.split.us.split.us.split.us.i.preheader.i
  %xtraiter66 = and i64 %4, 1
  %i.m = icmp eq i64 %4, 1
  br i1 %i.m, label %.lr.ph.split.us.split.us.split.us.i.i.epil.preheader, label %.lr.ph.split.us.split.us.split.us.i.i.preheader.new

.lr.ph.split.us.split.us.split.us.i.i.preheader.new: ; preds = %.lr.ph.split.us.split.us.split.us.i.i.preheader
  %unroll_iter69 = and i64 %4, -2
  br label %.lr.ph.split.us.split.us.split.us.i.i

.lr.ph.split.us.split.us.split.us.i.us.i.preheader: ; preds = %.lr.ph.split.us.split.us.split.us.i.preheader.i
  %xtraiter71 = and i64 %4, 1
  %i.n = icmp eq i64 %4, 1
  br i1 %i.n, label %.lr.ph.split.us.split.us.split.us.i.us.i.epil.preheader, label %.lr.ph.split.us.split.us.split.us.i.us.i.preheader.new

.lr.ph.split.us.split.us.split.us.i.us.i.preheader.new: ; preds = %.lr.ph.split.us.split.us.split.us.i.us.i.preheader
  %unroll_iter74 = and i64 %4, -2
  br label %.lr.ph.split.us.split.us.split.us.i.us.i

.lr.ph.split.us.split.us.split.us.i.us.i:         ; preds = %.lr.ph.split.us.split.us.split.us.i.us.i, %.lr.ph.split.us.split.us.split.us.i.us.i.preheader.new
  %.012.us.us.us.i.us.i = phi i64 [ 0, %.lr.ph.split.us.split.us.split.us.i.us.i.preheader.new ], [ %i.af, %.lr.ph.split.us.split.us.split.us.i.us.i ] ; 4 uses
  %niter75 = phi i64 [ 0, %.lr.ph.split.us.split.us.split.us.i.us.i.preheader.new ], [ %niter75.next.1, %.lr.ph.split.us.split.us.split.us.i.us.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.012.us.us.us.i.us.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !315, !alias.scope !312, !noalias !309 ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.012.us.us.us.i.us.i
  %.val33.us.us.us.i.us.i = load double, ptr %i.q, align 8, !tbaa !106, !alias.scope !309, !noalias !312
  %i.r = load double, ptr %i.p, align 8, !tbaa !317, !noalias !314
  %i.s = fadd double %.val33.us.us.us.i.us.i, %i.r
  store double %i.s, ptr %i.p, align 8, !tbaa !317, !noalias !314
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !319, !noalias !314
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !319, !noalias !314
  %i.w = or disjoint i64 %.012.us.us.us.i.us.i, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !315, !alias.scope !312, !noalias !309 ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.w
  %.val33.us.us.us.i.us.i.1 = load double, ptr %i.z, align 8, !tbaa !106, !alias.scope !309, !noalias !312
  %i.aa = load double, ptr %i.y, align 8, !tbaa !317, !noalias !314
  %i.ab = fadd double %.val33.us.us.us.i.us.i.1, %i.aa
  store double %i.ab, ptr %i.y, align 8, !tbaa !317, !noalias !314
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !319, !noalias !314
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !319, !noalias !314
  %i.af = add nuw i64 %.012.us.us.us.i.us.i, 2    ; 2 uses
  %niter75.next.1 = add nuw i64 %niter75, 2       ; 2 uses
  %niter75.ncmp.1 = icmp eq i64 %niter75.next.1, %unroll_iter74
  br i1 %niter75.ncmp.1, label %_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_.exit.i.loopexit47.unr-lcssa, label %.lr.ph.split.us.split.us.split.us.i.us.i, !llvm.loop !320

.lr.ph.split.us.split.us.split.us.i.i:            ; preds = %.lr.ph.split.us.split.us.split.us.i.i, %.lr.ph.split.us.split.us.split.us.i.i.preheader.new
  %.012.us.us.us.i.i = phi i64 [ 0, %.lr.ph.split.us.split.us.split.us.i.i.preheader.new ], [ %i.bd, %.lr.ph.split.us.split.us.split.us.i.i ] ; 4 uses
  %niter70 = phi i64 [ 0, %.lr.ph.split.us.split.us.split.us.i.i.preheader.new ], [ %niter70.next.1, %.lr.ph.split.us.split.us.split.us.i.i ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %.012.us.us.us.i.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3, !noalias !314
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !315, !alias.scope !312, !noalias !309 ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.012.us.us.us.i.i
  %.val33.us.us.us.i.i = load double, ptr %i.al, align 8, !tbaa !106, !alias.scope !309, !noalias !312
  %i.am = load double, ptr %i.ak, align 8, !tbaa !317, !noalias !314
  %i.an = fadd double %.val33.us.us.us.i.i, %i.am
  store double %i.an, ptr %i.ak, align 8, !tbaa !317, !noalias !314
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !319, !noalias !314
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !319, !noalias !314
  %i.ar = or disjoint i64 %.012.us.us.us.i.i, 1   ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3, !noalias !314
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !315, !alias.scope !312, !noalias !309 ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ar
  %.val33.us.us.us.i.i.1 = load double, ptr %i.ax, align 8, !tbaa !106, !alias.scope !309, !noalias !312
  %i.ay = load double, ptr %i.aw, align 8, !tbaa !317, !noalias !314
  %i.az = fadd double %.val33.us.us.us.i.i.1, %i.ay
  store double %i.az, ptr %i.aw, align 8, !tbaa !317, !noalias !314
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !319, !noalias !314
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !319, !noalias !314
  %i.bd = add nuw i64 %.012.us.us.us.i.i, 2       ; 2 uses
  %niter70.next.1 = add nuw i64 %niter70, 2       ; 2 uses
  %niter70.ncmp.1 = icmp eq i64 %niter70.next.1, %unroll_iter69
  br i1 %niter70.ncmp.1, label %_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_.exit.i.loopexit48.unr-lcssa, label %.lr.ph.split.us.split.us.split.us.i.i, !llvm.loop !320

.lr.ph.split.us.split.us.split.i.i:               ; preds = %.lr.ph.split.us.split.us.i.i
  br i1 %.not.i38.i.i, label %.lr.ph.split.us.split.us.split.split.us.i.i.preheader, label %.lr.ph.split.us.split.us.split.split.i.i

.lr.ph.split.us.split.us.split.split.us.i.i.preheader: ; preds = %.lr.ph.split.us.split.us.split.i.i
  %xtraiter61 = and i64 %4, 1
  %i.be = icmp eq i64 %4, 1
  br i1 %i.be, label %.lr.ph.split.us.split.us.split.split.us.i.i.epil.preheader, label %.lr.ph.split.us.split.us.split.split.us.i.i.preheader.new

.lr.ph.split.us.split.us.split.split.us.i.i.preheader.new: ; preds = %.lr.ph.split.us.split.us.split.split.us.i.i.preheader
  %unroll_iter64 = and i64 %4, -2
  br label %.lr.ph.split.us.split.us.split.split.us.i.i

.lr.ph.split.us.split.us.split.split.us.i.i:      ; preds = %.lr.ph.split.us.split.us.split.split.us.i.i, %.lr.ph.split.us.split.us.split.split.us.i.i.preheader.new
  %.012.us.us.us20.i.i = phi i64 [ 0, %.lr.ph.split.us.split.us.split.split.us.i.i.preheader.new ], [ %i.cc, %.lr.ph.split.us.split.us.split.split.us.i.i ] ; 4 uses
  %niter65 = phi i64 [ 0, %.lr.ph.split.us.split.us.split.split.us.i.i.preheader.new ], [ %niter65.next.1, %.lr.ph.split.us.split.us.split.split.us.i.i ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.val13.i, i64 %.012.us.us.us20.i.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3, !noalias !314
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.012.us.us.us20.i.i
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !315, !alias.scope !312, !noalias !309 ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bh
  %.val33.us.us.us23.i.i = load double, ptr %i.bk, align 8, !tbaa !106, !alias.scope !309, !noalias !312
  %i.bl = load double, ptr %i.bj, align 8, !tbaa !317, !noalias !314
  %i.bm = fadd double %.val33.us.us.us23.i.i, %i.bl
  store double %i.bm, ptr %i.bj, align 8, !tbaa !317, !noalias !314
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !319, !noalias !314
  %i.bp = add i64 %i.bo, 1
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !319, !noalias !314
  %i.bq = or disjoint i64 %.012.us.us.us20.i.i, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.val13.i, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3, !noalias !314
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.bq
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !315, !alias.scope !312, !noalias !309 ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bt
  %.val33.us.us.us23.i.i.1 = load double, ptr %i.bw, align 8, !tbaa !106, !alias.scope !309, !noalias !312
  %i.bx = load double, ptr %i.bv, align 8, !tbaa !317, !noalias !314
  %i.by = fadd double %.val33.us.us.us23.i.i.1, %i.bx
  store double %i.by, ptr %i.bv, align 8, !tbaa !317, !noalias !314
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !319, !noalias !314
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !319, !noalias !314
  %i.cc = add nuw i64 %.012.us.us.us20.i.i, 2     ; 2 uses
  %niter65.next.1 = add nuw i64 %niter65, 2       ; 2 uses
  %niter65.ncmp.1 = icmp eq i64 %niter65.next.1, %unroll_iter64
  br i1 %niter65.ncmp.1, label %_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_.exit.i.loopexit49.unr-lcssa, label %.lr.ph.split.us.split.us.split.split.us.i.i, !llvm.loop !320

.lr.ph.split.us.split.us.split.split.i.i:         ; preds = %.lr.ph.split.us.split.us.split.i.i
  br i1 %.not.i35.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i.preheader: ; preds = %.lr.ph.split.us.split.us.split.split.i.i
  %xtraiter = and i64 %4, 1
  %i.cd = icmp eq i64 %4, 1
  br i1 %i.cd, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i.preheader
  %unroll_iter = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i.preheader: ; preds = %.lr.ph.split.us.split.us.split.split.i.i
  %xtraiter56 = and i64 %4, 1
  %i.ce = icmp eq i64 %4, 1
  br i1 %i.ce, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i.preheader
  %unroll_iter59 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i.preheader.new
  %.012.us.us.us24.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i.preheader.new ], [ %i.di, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i ] ; 4 uses
  %niter60 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i.preheader.new ], [ %niter60.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.val13.i, i64 %.012.us.us.us24.i.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3, !noalias !314
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %.012.us.us.us24.i.i
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3, !noalias !314
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !315, !alias.scope !312, !noalias !309 ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ch
  %.val33.us.us.us26.i.i = load double, ptr %i.cn, align 8, !tbaa !106, !alias.scope !309, !noalias !312
  %i.co = load double, ptr %i.cm, align 8, !tbaa !317, !noalias !314
  %i.cp = fadd double %.val33.us.us.us26.i.i, %i.co
  store double %i.cp, ptr %i.cm, align 8, !tbaa !317, !noalias !314
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !319, !noalias !314
  %i.cs = add i64 %i.cr, 1
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !319, !noalias !314
  %i.ct = or disjoint i64 %.012.us.us.us24.i.i, 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.val13.i, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3, !noalias !314
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %i.ct
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3, !noalias !314
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !315, !alias.scope !312, !noalias !309 ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.cw
  %.val33.us.us.us26.i.i.1 = load double, ptr %i.dc, align 8, !tbaa !106, !alias.scope !309, !noalias !312
  %i.dd = load double, ptr %i.db, align 8, !tbaa !317, !noalias !314
  %i.de = fadd double %.val33.us.us.us26.i.i.1, %i.dd
  store double %i.de, ptr %i.db, align 8, !tbaa !317, !noalias !314
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !319, !noalias !314
  %i.dh = add i64 %i.dg, 1
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !319, !noalias !314
  %i.di = add nuw i64 %.012.us.us.us24.i.i, 2     ; 2 uses
  %niter60.next.1 = add nuw i64 %niter60, 2       ; 2 uses
  %niter60.ncmp.1 = icmp eq i64 %niter60.next.1, %unroll_iter59
  br i1 %niter60.ncmp.1, label %_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_.exit.i.loopexit50.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i, !llvm.loop !320

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i.preheader.new
  %.012.us.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i.preheader.new ], [ %i.em, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i.preheader.new ], [ %niter.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.val13.i, i64 %.012.us.us.i.i
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3, !noalias !314
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %.012.us.us.i.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3, !noalias !314
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !315, !alias.scope !312, !noalias !309 ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.dl
  %.val33.us.us.i.i = load double, ptr %i.dr, align 8, !tbaa !106, !alias.scope !309, !noalias !312
  %i.ds = load double, ptr %i.dq, align 8, !tbaa !317, !noalias !314
  %i.dt = fadd double %.val33.us.us.i.i, %i.ds
  store double %i.dt, ptr %i.dq, align 8, !tbaa !317, !noalias !314
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !319, !noalias !314
  %i.dw = add i64 %i.dv, 1
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !319, !noalias !314
  %i.dx = or disjoint i64 %.012.us.us.i.i, 1      ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.val13.i, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3, !noalias !314
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %i.dx
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !3, !noalias !314
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !315, !alias.scope !312, !noalias !309 ; 3 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ea
  %.val33.us.us.i.i.1 = load double, ptr %i.eg, align 8, !tbaa !106, !alias.scope !309, !noalias !312
  %i.eh = load double, ptr %i.ef, align 8, !tbaa !317, !noalias !314
  %i.ei = fadd double %.val33.us.us.i.i.1, %i.eh
  store double %i.ei, ptr %i.ef, align 8, !tbaa !317, !noalias !314
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !319, !noalias !314
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !319, !noalias !314
  %i.em = add nuw i64 %.012.us.us.i.i, 2          ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_.exit.i.loopexit51.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i, !llvm.loop !320

.lr.ph.split.us.split.i.i:                        ; preds = %.lr.ph.split.us.i.i, %bb.k
  %.012.us.i.i = phi i64 [ %i.fj, %bb.k ], [ 0, %.lr.ph.split.us.i.i ] ; 5 uses
  br i1 %.not.i36.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us.split.i.i
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.val13.i, i64 %.012.us.i.i
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3, !noalias !314
  %i.ep = zext i32 %i.eo to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i: ; preds = %bb.i, %.lr.ph.split.us.split.i.i
  %i.eq = phi i64 [ %i.ep, %bb.i ], [ %.012.us.i.i, %.lr.ph.split.us.split.i.i ] ; 3 uses
  br i1 %.not.i38.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.us.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %.012.us.i.i
  %i.es = load i32, ptr %i.er, align 4, !tbaa !3, !noalias !314
  %i.et = zext i32 %i.es to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit39.us.i.i: ; preds = %bb.j, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i
  %i.eu = phi i64 [ %i.et, %bb.j ], [ %.012.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i ]
  %i.ev = lshr i64 %i.eq, 6
  %i.ew = and i64 %i.eq, 63
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.fr.i.i, i64 %i.ev
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !102
  %i.ez = shl nuw i64 1, %i.ew
  %i.fa = and i64 %i.ey, %i.ez
  %.not9.us.i.i = icmp eq i64 %i.fa, 0
  br i1 %.not9.us.i.i, label %bb.k, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit43.thread.us.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit43.thread.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.us.i.i
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.eu
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !315, !alias.scope !312, !noalias !309 ; 3 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.eq
  %.val33.us.i.i = load double, ptr %i.fd, align 8, !tbaa !106, !alias.scope !309, !noalias !312
  %i.fe = load double, ptr %i.fc, align 8, !tbaa !317, !noalias !314
  %i.ff = fadd double %.val33.us.i.i, %i.fe
  store double %i.ff, ptr %i.fc, align 8, !tbaa !317, !noalias !314
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !319, !noalias !314
  %i.fi = add i64 %i.fh, 1
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !319, !noalias !314
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit43.thread.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.us.i.i
  %i.fj = add nuw i64 %.012.us.i.i, 1             ; 2 uses
  %exitcond38.not.i.i = icmp eq i64 %i.fj, %4
  br i1 %exitcond38.not.i.i, label %_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_.exit.i, label %.lr.ph.split.us.split.i.i, !llvm.loop !320

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  br i1 %.not.i34.i.i, label %.lr.ph.split.split.us.i.i, label %.lr.ph.split.split.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.i.i, %bb.o
  %.012.us13.i.i = phi i64 [ %i.gk, %bb.o ], [ 0, %.lr.ph.split.i.i ] ; 7 uses
  br i1 %.not.i35.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us14.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.split.us.i.i
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.012.us13.i.i
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3, !noalias !314
  %i.fm = zext i32 %i.fl to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us14.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us14.i.i: ; preds = %bb.l, %.lr.ph.split.split.us.i.i
  %i.fn = phi i64 [ %i.fm, %bb.l ], [ %.012.us13.i.i, %.lr.ph.split.split.us.i.i ] ; 2 uses
  br i1 %.not.i36.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us15.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us14.i.i
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.val13.i, i64 %.012.us13.i.i
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !3, !noalias !314
  %i.fq = zext i32 %i.fp to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us15.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us15.i.i: ; preds = %bb.m, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us14.i.i
  %i.fr = phi i64 [ %i.fq, %bb.m ], [ %.012.us13.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us14.i.i ]
  br i1 %.not.i38.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.us16.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us15.i.i
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %.012.us13.i.i
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3, !noalias !314
  %i.fu = zext i32 %i.ft to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.us16.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit39.us16.i.i: ; preds = %bb.n, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us15.i.i
  %i.fv = phi i64 [ %i.fu, %bb.n ], [ %.012.us13.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us15.i.i ]
  %i.fw = lshr i64 %i.fn, 6
  %i.fx = and i64 %i.fn, 63
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fw
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !102, !noalias !314
  %i.ga = shl nuw i64 1, %i.fx
  %i.gb = and i64 %i.fz, %i.ga
  %.not.us.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not.us.i.i, label %bb.o, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us17.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us17.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.us16.i.i
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fv
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !315, !alias.scope !312, !noalias !309 ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fr
  %.val33.us19.i.i = load double, ptr %i.ge, align 8, !tbaa !106, !alias.scope !309, !noalias !312
  %i.gf = load double, ptr %i.gd, align 8, !tbaa !317, !noalias !314
  %i.gg = fadd double %.val33.us19.i.i, %i.gf
  store double %i.gg, ptr %i.gd, align 8, !tbaa !317, !noalias !314
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !319, !noalias !314
  %i.gj = add i64 %i.gi, 1
  store i64 %i.gj, ptr %i.gh, align 8, !tbaa !319, !noalias !314
  br label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us17.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.us16.i.i
  %i.gk = add nuw i64 %.012.us13.i.i, 1           ; 2 uses
  %exitcond37.not.i.i = icmp eq i64 %i.gk, %4
  br i1 %exitcond37.not.i.i, label %_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_.exit.i, label %.lr.ph.split.split.us.i.i, !llvm.loop !320

.preheader.i.i:                                   ; preds = %bb.h
  br i1 %.not29.i.i, label %_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit45.lr.ph.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit45.lr.ph.i.i: ; preds = %.preheader.i.i
  %.not.i46.i.i = icmp eq ptr %.val13.i, null
  %.not.i48.i.i = icmp eq ptr %.val14.i, null
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit45.i.i

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.i.i, %bb.s
  %.012.i.i = phi i64 [ %i.hr, %bb.s ], [ 0, %.lr.ph.split.i.i ] ; 7 uses
  br i1 %.not.i35.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.split.i.i
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.012.i.i
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !3, !noalias !314
  %i.gn = zext i32 %i.gm to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.p, %.lr.ph.split.split.i.i
  %i.go = phi i64 [ %i.gn, %bb.p ], [ %.012.i.i, %.lr.ph.split.split.i.i ] ; 2 uses
  br i1 %.not.i36.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.val13.i, i64 %.012.i.i
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !3, !noalias !314
  %i.gr = zext i32 %i.gq to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i: ; preds = %bb.q, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.gs = phi i64 [ %i.gr, %bb.q ], [ %.012.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i ] ; 3 uses
  br i1 %.not.i38.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %.012.i.i
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !3, !noalias !314
  %i.gv = zext i32 %i.gu to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit39.i.i: ; preds = %bb.r, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i
  %i.gw = phi i64 [ %i.gv, %bb.r ], [ %.012.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i ]
  %i.gx = lshr i64 %i.go, 6
  %i.gy = and i64 %i.go, 63
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gx
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !102, !noalias !314
  %i.hb = shl nuw i64 1, %i.gy
  %i.hc = and i64 %i.ha, %i.hb
  %.not.i.i = icmp eq i64 %i.hc, 0
  br i1 %.not.i.i, label %bb.s, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.i.i
  %i.hd = lshr i64 %i.gs, 6
  %i.he = and i64 %i.gs, 63
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.fr.i.i, i64 %i.hd
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !102
  %i.hh = shl nuw i64 1, %i.he
  %i.hi = and i64 %i.hg, %i.hh
  %.not9.i.i = icmp eq i64 %i.hi, 0
  br i1 %.not9.i.i, label %bb.s, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit43.thread.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit43.thread.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.gw
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !315, !alias.scope !312, !noalias !309 ; 3 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.gs
  %.val33.i.i = load double, ptr %i.hl, align 8, !tbaa !106, !alias.scope !309, !noalias !312
  %i.hm = load double, ptr %i.hk, align 8, !tbaa !317, !noalias !314
  %i.hn = fadd double %.val33.i.i, %i.hm
  store double %i.hn, ptr %i.hk, align 8, !tbaa !317, !noalias !314
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !319, !noalias !314
  %i.hq = add i64 %i.hp, 1
  store i64 %i.hq, ptr %i.ho, align 8, !tbaa !319, !noalias !314
  br label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit43.thread.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.i.i
  %i.hr = add nuw i64 %.012.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.hr, %4
  br i1 %exitcond.not.i.i, label %_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_.exit.i, label %.lr.ph.split.split.i.i, !llvm.loop !320

_ZNK6duckdb15SelectionVector9get_indexEm.exit45.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit49.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit45.lr.ph.i.i
  %.03227.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit45.lr.ph.i.i ], [ %i.ii, %_ZNK6duckdb15SelectionVector9get_indexEm.exit49.i.i ] ; 5 uses
  br i1 %.not.i46.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit47.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit45.i.i
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.val13.i, i64 %.03227.i.i
end_hunk_3
begin_hunk_4_@_ZN6duckdb17AggregateFunction19BinaryScatterUpdateINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmRS5_m:bb.a
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bf
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.bi ], [ %i.on, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn.pn.i

_ZN6duckdb17AggregateExecutor13BinaryScatterINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvRNS_18AggregateInputDataERNS_6VectorES8_S8_m.exit: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i30.i, %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i33.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateCombineINS_12_GLOBAL__N_19RegrStateENS2_16RegrAvgXFunctionEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, ptr nofree nonnull readnone align 8 captures(none) %2, i64 noundef %3) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !116
  %i.g = icmp eq i8 %i.f, 8
  br i1 %i.g, label %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i8 8, ptr %i.c, align 1, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.i = load i8, ptr %i.e, align 1, !tbaa !116
  store i8 %i.i, ptr %i.d, align 1, !tbaa !117
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.f unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %common.resume.sink.split.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.l = load ptr, ptr %6, align 8, !tbaa !23     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.l) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

common.resume.sink.split.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i10.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.sink.i = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i10.i ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i10.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #21
  br label %common.resume.i

common.resume.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i, %common.resume.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !118 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !116
  %i.r = icmp eq i8 %i.q, 8
  br i1 %i.r, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i10.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 8, ptr %i.a, align 1, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.t = load i8, ptr %i.p, align 1, !tbaa !116
  store i8 %i.t, ptr %i.b, align 1, !tbaa !117
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.k unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i10.i: ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume.sink.split.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.i.i13.i = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.w = load ptr, ptr %4, align 8, !tbaa !23     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.w) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %.0.i.i.i13.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %.0.i.i.i13.i, label %common.resume.sink.split.i, label %common.resume.i

bb.k:                                             ; preds = %bb.i
  unreachable

_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i: ; preds = %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i16.i = load ptr, ptr %i.z, align 8, !tbaa !118 ; 3 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_19RegrStateENS2_16RegrAvgXFunctionEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i
  %xtraiter = and i64 %3, 1
  %i.aa = icmp eq i64 %3, 1
  br i1 %i.aa, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %3, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.01.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.aw, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.01.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !315 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i16.i, i64 %.01.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !315 ; 3 uses
  %.val.i = load double, ptr %i.ac, align 8, !tbaa !317
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  %.val9.i = load i64, ptr %i.af, align 8, !tbaa !319
  %i.ag = load double, ptr %i.ae, align 8, !tbaa !317
  %i.ah = fadd double %.val.i, %i.ag
  store double %i.ah, ptr %i.ae, align 8, !tbaa !317
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !319
  %i.ak = add i64 %i.aj, %.val9.i
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !319
  %i.al = or disjoint i64 %.01.i, 1               ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !315 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i16.i, i64 %i.al
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !315 ; 3 uses
  %.val.i.1 = load double, ptr %i.an, align 8, !tbaa !317
  %i.aq = getelementptr i8, ptr %i.an, i64 8
  %.val9.i.1 = load i64, ptr %i.aq, align 8, !tbaa !319
  %i.ar = load double, ptr %i.ap, align 8, !tbaa !317
  %i.as = fadd double %.val.i.1, %i.ar
  store double %i.as, ptr %i.ap, align 8, !tbaa !317
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !319
  %i.av = add i64 %i.au, %.val9.i.1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !319
  %i.aw = add nuw i64 %.01.i, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_19RegrStateENS2_16RegrAvgXFunctionEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !324

_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_19RegrStateENS2_16RegrAvgXFunctionEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_19RegrStateENS2_16RegrAvgXFunctionEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_19RegrStateENS2_16RegrAvgXFunctionEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.01.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.aw, %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_19RegrStateENS2_16RegrAvgXFunctionEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod5 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.01.i.epil.init
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !315 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i16.i, i64 %.01.i.epil.init
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !315 ; 3 uses
  %.val.i.epil = load double, ptr %i.ay, align 8, !tbaa !317
  %i.bb = getelementptr i8, ptr %i.ay, i64 8
  %.val9.i.epil = load i64, ptr %i.bb, align 8, !tbaa !319
  %i.bc = load double, ptr %i.ba, align 8, !tbaa !317
  %i.bd = fadd double %.val.i.epil, %i.bc
  store double %i.bd, ptr %i.ba, align 8, !tbaa !317
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !319
  %i.bg = add i64 %i.bf, %.val9.i.epil
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !319
  br label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_19RegrStateENS2_16RegrAvgXFunctionEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm.exit

_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_19RegrStateENS2_16RegrAvgXFunctionEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_19RegrStateENS2_16RegrAvgXFunctionEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction13StateFinalizeINS_12_GLOBAL__N_19RegrStateEdNS2_16RegrAvgXFunctionEEEvRNS_6VectorERNS_18AggregateInputDataES6_mm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::AggregateFinalizeData", align 8 ; 6 uses
  %10 = alloca %"struct.duckdb::AggregateFinalizeData", align 8 ; 6 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !128
  %i.f = icmp eq i8 %i.e, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 4 uses
  br i1 %i.f, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  %i.h = load i8, ptr %i.g, align 1, !tbaa !116
  %i.i = icmp eq i8 %i.h, 8
  br i1 %i.i, label %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i8 8, ptr %i.c, align 1, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.k = load i8, ptr %i.g, align 1, !tbaa !116
  store i8 %i.k, ptr %i.d, align 1, !tbaa !117
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %common.resume.sink.split.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.n = load ptr, ptr %7, align 8, !tbaa !23     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.n) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br i1 %.0.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br i1 %.0.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

common.resume.sink.split.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.sink.i = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #21
  br label %common.resume.i

common.resume.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %common.resume.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.g:                                             ; preds = %bb.e
  unreachable

_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i = load ptr, ptr %i.q, align 8, !tbaa !118
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr %2, ptr %9, align 8, !tbaa !129
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %1, ptr %i.t, align 8, !tbaa !131
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.u, align 8, !tbaa !133
  %i.v = load ptr, ptr %.val.i.i, align 8, !tbaa !315 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val22.i = load i64, ptr %i.w, align 8, !tbaa !319 ; 2 uses
  %i.x = icmp eq i64 %.val22.i, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i
  call void @_ZN6duckdb21AggregateFinalizeData10ReturnNullEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZN6duckdb12_GLOBAL__N_115RegrAvgFunction8FinalizeIdNS0_9RegrStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit.i

bb.i:                                             ; preds = %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i
  %.val21.i = load double, ptr %i.v, align 8
  %i.y = uitofp i64 %.val22.i to double
  %i.z = fdiv double %.val21.i, %i.y
  store double %i.z, ptr %i.s, align 8, !tbaa !106
  br label %_ZN6duckdb12_GLOBAL__N_115RegrAvgFunction8FinalizeIdNS0_9RegrStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit.i

_ZN6duckdb12_GLOBAL__N_115RegrAvgFunction8FinalizeIdNS0_9RegrStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %_ZN6duckdb17AggregateExecutor8FinalizeINS_12_GLOBAL__N_19RegrStateEdNS2_16RegrAvgXFunctionEEEvRNS_6VectorERNS_18AggregateInputDataES6_mm.exit

bb.j:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  %i.aa = load i8, ptr %i.g, align 1, !tbaa !116
  %i.ab = icmp eq i8 %i.aa, 8
  br i1 %i.ab, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 8, ptr %i.a, align 1, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.ad = load i8, ptr %i.g, align 1, !tbaa !116
  store i8 %i.ad, ptr %i.b, align 1, !tbaa !117
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.o unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %common.resume.sink.split.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i1 [ false, %bb.m ], [ true, %bb.l ] ; 2 uses
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ag = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.ag) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.o:                                             ; preds = %bb.m
  unreachable

_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !118
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr %2, ptr %10, align 8, !tbaa !129
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %1, ptr %i.am, align 8, !tbaa !131
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN6duckdb12_GLOBAL__N_115RegrAvgFunction8FinalizeIdNS0_9RegrStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit23.i, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %_ZN6duckdb17AggregateExecutor8FinalizeINS_12_GLOBAL__N_19RegrStateEdNS2_16RegrAvgXFunctionEEEvRNS_6VectorERNS_18AggregateInputDataES6_mm.exit

.lr.ph.i:                                         ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_115RegrAvgFunction8FinalizeIdNS0_9RegrStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit23.i
  %.024.i = phi i64 [ %i.aw, %_ZN6duckdb12_GLOBAL__N_115RegrAvgFunction8FinalizeIdNS0_9RegrStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit23.i ], [ 0, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i ] ; 3 uses
  %i.ao = add i64 %.024.i, %4                     ; 2 uses
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !133
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.024.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !315 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val20.i = load i64, ptr %i.ar, align 8, !tbaa !319 ; 2 uses
  %i.as = icmp eq i64 %.val20.i, 0
  br i1 %i.as, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i
  call void @_ZN6duckdb21AggregateFinalizeData10ReturnNullEv(ptr noundef nonnull align 8 dereferenceable(24) %10)
  br label %_ZN6duckdb12_GLOBAL__N_115RegrAvgFunction8FinalizeIdNS0_9RegrStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit23.i

bb.q:                                             ; preds = %.lr.ph.i
  %.val.i = load double, ptr %i.aq, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ao
  %i.au = uitofp i64 %.val20.i to double
  %i.av = fdiv double %.val.i, %i.au
  store double %i.av, ptr %i.at, align 8, !tbaa !106
  br label %_ZN6duckdb12_GLOBAL__N_115RegrAvgFunction8FinalizeIdNS0_9RegrStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit23.i

_ZN6duckdb12_GLOBAL__N_115RegrAvgFunction8FinalizeIdNS0_9RegrStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit23.i: ; preds = %bb.q, %bb.p
  %i.aw = add nuw i64 %.024.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aw, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !325

_ZN6duckdb17AggregateExecutor8FinalizeINS_12_GLOBAL__N_19RegrStateEdNS2_16RegrAvgXFunctionEEEvRNS_6VectorERNS_18AggregateInputDataES6_mm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_115RegrAvgFunction8FinalizeIdNS0_9RegrStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit.i, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12BinaryUpdateINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr nofree noundef captures(none) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 11 uses
  %6 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.b unwind label %bb.an

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.c unwind label %bb.ao

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.d unwind label %bb.ao

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.e unwind label %bb.ao

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.f unwind label %bb.ao

bb.f:                                             ; preds = %bb.e
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76   ; 33 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !92
  %i.e = load ptr, ptr %6, align 8, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val.i = load ptr, ptr %i.d, align 8           ; 4 uses
  %.val10.i = load ptr, ptr %i.e, align 8         ; 16 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !100, !noalias !331 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.h, null            ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !noalias !331
  %.fr.i.i = freeze ptr %i.i                      ; 3 uses
  %.not.i28.i.i = icmp eq ptr %.fr.i.i, null      ; 3 uses
  %or.cond.i.i = and i1 %.not.i.i.i, %.not.i28.i.i
  %.not27.i.i = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %or.cond.i.i, label %.preheader.i.i, label %.preheader7.i.i

.preheader7.i.i:                                  ; preds = %bb.f
  br i1 %.not27.i.i, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader7.i.i
  %.not.i29.i.i = icmp eq ptr %.val.i, null       ; 2 uses
  %.not.i30.i.i = icmp eq ptr %.val10.i, null     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 12 uses
  br i1 %.not.i.i.i, label %.lr.ph.split.us.i.preheader.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.preheader.i:                    ; preds = %.lr.ph.i.i
  br i1 %.not.i28.i.i, label %.lr.ph.split.us.i.preheader.split.us.i, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.preheader.split.us.i:           ; preds = %.lr.ph.split.us.i.preheader.i
  %.promoted.i = load double, ptr %3, align 8, !tbaa !317, !alias.scope !329, !noalias !326 ; 4 uses
  %.promoted8.i = load i64, ptr %i.j, align 8, !tbaa !319, !alias.scope !329, !noalias !326
  br i1 %.not.i30.i.i, label %.lr.ph.split.us.i.us.us.i.preheader, label %.lr.ph.split.us.i.us.i.preheader

.lr.ph.split.us.i.us.i.preheader:                 ; preds = %.lr.ph.split.us.i.preheader.split.us.i
  %i.k = add i64 %4, -1
  %xtraiter = and i64 %4, 3                       ; 3 uses
  %i.l = icmp ult i64 %i.k, 3
  br i1 %i.l, label %.lr.ph.split.us.i.us.i.epil.preheader, label %.lr.ph.split.us.i.us.i.preheader.new

.lr.ph.split.us.i.us.i.preheader.new:             ; preds = %.lr.ph.split.us.i.us.i.preheader
  %unroll_iter = and i64 %4, -4
  br label %.lr.ph.split.us.i.us.i

.lr.ph.split.us.i.us.us.i.preheader:              ; preds = %.lr.ph.split.us.i.preheader.split.us.i
  %i.m = add i64 %4, -1
  %xtraiter61 = and i64 %4, 7                     ; 3 uses
  %i.n = icmp ult i64 %i.m, 7
  br i1 %i.n, label %.lr.ph.split.us.i.us.us.i.epil.preheader, label %.lr.ph.split.us.i.us.us.i.preheader.new

.lr.ph.split.us.i.us.us.i.preheader.new:          ; preds = %.lr.ph.split.us.i.us.us.i.preheader
  %unroll_iter68 = and i64 %4, -8
  br label %.lr.ph.split.us.i.us.us.i

.lr.ph.split.us.i.us.us.i:                        ; preds = %.lr.ph.split.us.i.us.us.i, %.lr.ph.split.us.i.us.us.i.preheader.new
  %i.o = phi double [ %.promoted.i, %.lr.ph.split.us.i.us.us.i.preheader.new ], [ %i.al, %.lr.ph.split.us.i.us.us.i ]
  %.0269.us.i.us.us.i = phi i64 [ 0, %.lr.ph.split.us.i.us.us.i.preheader.new ], [ %i.am, %.lr.ph.split.us.i.us.us.i ] ; 9 uses
  %niter69 = phi i64 [ 0, %.lr.ph.split.us.i.us.us.i.preheader.new ], [ %niter69.next.7, %.lr.ph.split.us.i.us.us.i ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0269.us.i.us.us.i
  %.val27.us.i.us.us.i = load double, ptr %i.p, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.q = fadd double %i.o, %.val27.us.i.us.us.i
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0269.us.i.us.us.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val27.us.i.us.us.i.1 = load double, ptr %i.s, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.t = fadd double %i.q, %.val27.us.i.us.us.i.1
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0269.us.i.us.us.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.val27.us.i.us.us.i.2 = load double, ptr %i.v, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.w = fadd double %i.t, %.val27.us.i.us.us.i.2
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0269.us.i.us.us.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.val27.us.i.us.us.i.3 = load double, ptr %i.y, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.z = fadd double %i.w, %.val27.us.i.us.us.i.3
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0269.us.i.us.us.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.val27.us.i.us.us.i.4 = load double, ptr %i.ab, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.ac = fadd double %i.z, %.val27.us.i.us.us.i.4
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0269.us.i.us.us.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %.val27.us.i.us.us.i.5 = load double, ptr %i.ae, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.af = fadd double %i.ac, %.val27.us.i.us.us.i.5
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0269.us.i.us.us.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %.val27.us.i.us.us.i.6 = load double, ptr %i.ah, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.ai = fadd double %i.af, %.val27.us.i.us.us.i.6
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0269.us.i.us.us.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %.val27.us.i.us.us.i.7 = load double, ptr %i.ak, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.al = fadd double %i.ai, %.val27.us.i.us.us.i.7 ; 3 uses
  %i.am = add nuw i64 %.0269.us.i.us.us.i, 8      ; 2 uses
  %niter69.next.7 = add nuw i64 %niter69, 8       ; 2 uses
  %niter69.ncmp.7 = icmp eq i64 %niter69.next.7, %unroll_iter68
  br i1 %niter69.ncmp.7, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.loopexit.split.us.i.loopexit.unr-lcssa, label %.lr.ph.split.us.i.us.us.i, !llvm.loop !332

.lr.ph.split.us.i.us.i:                           ; preds = %.lr.ph.split.us.i.us.i, %.lr.ph.split.us.i.us.i.preheader.new
  %i.an = phi double [ %.promoted.i, %.lr.ph.split.us.i.us.i.preheader.new ], [ %i.bk, %.lr.ph.split.us.i.us.i ]
  %.0269.us.i.us.i = phi i64 [ 0, %.lr.ph.split.us.i.us.i.preheader.new ], [ %i.bl, %.lr.ph.split.us.i.us.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.i.us.i.preheader.new ], [ %niter.next.3, %.lr.ph.split.us.i.us.i ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %.0269.us.i.us.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3, !noalias !331
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.aq
  %.val27.us.i.us.i = load double, ptr %i.ar, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.as = fadd double %i.an, %.val27.us.i.us.i
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %.0269.us.i.us.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3, !noalias !331
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.aw
  %.val27.us.i.us.i.1 = load double, ptr %i.ax, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.ay = fadd double %i.as, %.val27.us.i.us.i.1
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %.0269.us.i.us.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3, !noalias !331
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bc
  %.val27.us.i.us.i.2 = load double, ptr %i.bd, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.be = fadd double %i.ay, %.val27.us.i.us.i.2
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %.0269.us.i.us.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3, !noalias !331
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bi
  %.val27.us.i.us.i.3 = load double, ptr %i.bj, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.bk = fadd double %i.be, %.val27.us.i.us.i.3  ; 3 uses
  %i.bl = add nuw i64 %.0269.us.i.us.i, 4         ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.loopexit.split.us.i.loopexit53.unr-lcssa, label %.lr.ph.split.us.i.us.i, !llvm.loop !332

_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.loopexit.split.us.i.loopexit.unr-lcssa: ; preds = %.lr.ph.split.us.i.us.us.i
  %lcmp.mod65.not = icmp eq i64 %xtraiter61, 0
  br i1 %lcmp.mod65.not, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.loopexit.split.us.i, label %.lr.ph.split.us.i.us.us.i.epil.preheader

.lr.ph.split.us.i.us.us.i.epil.preheader:         ; preds = %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.loopexit.split.us.i.loopexit.unr-lcssa, %.lr.ph.split.us.i.us.us.i.preheader
  %.epil.init64 = phi double [ %.promoted.i, %.lr.ph.split.us.i.us.us.i.preheader ], [ %i.al, %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.loopexit.split.us.i.loopexit.unr-lcssa ]
  %.0269.us.i.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i.us.us.i.preheader ], [ %i.am, %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.loopexit.split.us.i.loopexit.unr-lcssa ]
  %lcmp.mod67 = icmp ne i64 %xtraiter61, 0
  call void @llvm.assume(i1 %lcmp.mod67)
  br label %.lr.ph.split.us.i.us.us.i.epil

.lr.ph.split.us.i.us.us.i.epil:                   ; preds = %.lr.ph.split.us.i.us.us.i.epil, %.lr.ph.split.us.i.us.us.i.epil.preheader
  %i.bm = phi double [ %i.bo, %.lr.ph.split.us.i.us.us.i.epil ], [ %.epil.init64, %.lr.ph.split.us.i.us.us.i.epil.preheader ]
  %.0269.us.i.us.us.i.epil = phi i64 [ %i.bp, %.lr.ph.split.us.i.us.us.i.epil ], [ %.0269.us.i.us.us.i.epil.init, %.lr.ph.split.us.i.us.us.i.epil.preheader ] ; 2 uses
  %epil.iter62 = phi i64 [ %epil.iter62.next, %.lr.ph.split.us.i.us.us.i.epil ], [ 0, %.lr.ph.split.us.i.us.us.i.epil.preheader ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0269.us.i.us.us.i.epil
  %.val27.us.i.us.us.i.epil = load double, ptr %i.bn, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.bo = fadd double %i.bm, %.val27.us.i.us.us.i.epil ; 2 uses
  %i.bp = add nuw i64 %.0269.us.i.us.us.i.epil, 1
  %epil.iter62.next = add i64 %epil.iter62, 1     ; 2 uses
  %epil.iter62.cmp.not = icmp eq i64 %epil.iter62.next, %xtraiter61
  br i1 %epil.iter62.cmp.not, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.loopexit.split.us.i, label %.lr.ph.split.us.i.us.us.i.epil, !llvm.loop !333

_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.loopexit.split.us.i.loopexit53.unr-lcssa: ; preds = %.lr.ph.split.us.i.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.loopexit.split.us.i, label %.lr.ph.split.us.i.us.i.epil.preheader

.lr.ph.split.us.i.us.i.epil.preheader:            ; preds = %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.loopexit.split.us.i.loopexit53.unr-lcssa, %.lr.ph.split.us.i.us.i.preheader
  %.epil.init = phi double [ %.promoted.i, %.lr.ph.split.us.i.us.i.preheader ], [ %i.bk, %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.loopexit.split.us.i.loopexit53.unr-lcssa ]
  %.0269.us.i.us.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i.us.i.preheader ], [ %i.bl, %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.loopexit.split.us.i.loopexit53.unr-lcssa ]
  %lcmp.mod60 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod60)
  br label %.lr.ph.split.us.i.us.i.epil

.lr.ph.split.us.i.us.i.epil:                      ; preds = %.lr.ph.split.us.i.us.i.epil, %.lr.ph.split.us.i.us.i.epil.preheader
  %i.bq = phi double [ %i.bv, %.lr.ph.split.us.i.us.i.epil ], [ %.epil.init, %.lr.ph.split.us.i.us.i.epil.preheader ]
  %.0269.us.i.us.i.epil = phi i64 [ %i.bw, %.lr.ph.split.us.i.us.i.epil ], [ %.0269.us.i.us.i.epil.init, %.lr.ph.split.us.i.us.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.us.i.us.i.epil ], [ 0, %.lr.ph.split.us.i.us.i.epil.preheader ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %.0269.us.i.us.i.epil
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3, !noalias !331
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bt
  %.val27.us.i.us.i.epil = load double, ptr %i.bu, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.bv = fadd double %i.bq, %.val27.us.i.us.i.epil ; 2 uses
  %i.bw = add nuw i64 %.0269.us.i.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.loopexit.split.us.i, label %.lr.ph.split.us.i.us.i.epil, !llvm.loop !334

_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.loopexit.split.us.i: ; preds = %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.loopexit.split.us.i.loopexit53.unr-lcssa, %.lr.ph.split.us.i.us.i.epil, %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.loopexit.split.us.i.loopexit.unr-lcssa, %.lr.ph.split.us.i.us.us.i.epil
  %.us-phi10.i = phi double [ %i.bo, %.lr.ph.split.us.i.us.us.i.epil ], [ %i.al, %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.loopexit.split.us.i.loopexit.unr-lcssa ], [ %i.bk, %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.loopexit.split.us.i.loopexit53.unr-lcssa ], [ %i.bv, %.lr.ph.split.us.i.us.i.epil ]
  %.us-phi.i = add i64 %.promoted8.i, %4
  store double %.us-phi10.i, ptr %3, align 8, !tbaa !317, !alias.scope !329, !noalias !326
  store i64 %.us-phi.i, ptr %i.j, align 8, !tbaa !319, !alias.scope !329, !noalias !326
  br label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.preheader.i, %bb.h
  %.0269.us.i.i = phi i64 [ %i.cm, %bb.h ], [ 0, %.lr.ph.split.us.i.preheader.i ] ; 3 uses
  br i1 %.not.i30.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.i.i
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %.0269.us.i.i
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3, !noalias !331
  %i.bz = zext i32 %i.by to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us.i.i: ; preds = %bb.g, %.lr.ph.split.us.i.i
  %i.ca = phi i64 [ %i.bz, %bb.g ], [ %.0269.us.i.i, %.lr.ph.split.us.i.i ] ; 3 uses
  %i.cb = lshr i64 %i.ca, 6
  %i.cc = and i64 %i.ca, 63
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.fr.i.i, i64 %i.cb
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !102
  %i.cf = shl nuw i64 1, %i.cc
  %i.cg = and i64 %i.cf, %i.ce
  %.not6.us.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not6.us.i.i, label %bb.h, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.us.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us.i.i
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ca
  %.val27.us.i.i = load double, ptr %i.ch, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.ci = load double, ptr %3, align 8, !tbaa !317, !alias.scope !329, !noalias !326
  %i.cj = fadd double %.val27.us.i.i, %i.ci
  store double %i.cj, ptr %3, align 8, !tbaa !317, !alias.scope !329, !noalias !326
  %i.ck = load i64, ptr %i.j, align 8, !tbaa !319, !alias.scope !329, !noalias !326
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.j, align 8, !tbaa !319, !alias.scope !329, !noalias !326
  br label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us.i.i
  %i.cm = add nuw i64 %.0269.us.i.i, 1            ; 2 uses
  %exitcond39.not.i.i = icmp eq i64 %i.cm, %4
  br i1 %exitcond39.not.i.i, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !332

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  br i1 %.not.i28.i.i, label %.lr.ph.split.split.us.i.i, label %.lr.ph.split.split.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.i.i
  br i1 %.not.i29.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us11.us.i.i, label %.lr.ph.split.split.us.split.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us11.us.i.i: ; preds = %.lr.ph.split.split.us.i.i, %bb.j
  %.0269.us10.us.i.i = phi i64 [ %i.dc, %bb.j ], [ 0, %.lr.ph.split.split.us.i.i ] ; 5 uses
  br i1 %.not.i30.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us12.us.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us11.us.i.i
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %.0269.us10.us.i.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3, !noalias !331
  %i.cp = zext i32 %i.co to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us12.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us12.us.i.i: ; preds = %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us11.us.i.i
  %i.cq = phi i64 [ %i.cp, %bb.i ], [ %.0269.us10.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us11.us.i.i ]
  %i.cr = lshr i64 %.0269.us10.us.i.i, 6
  %i.cs = and i64 %.0269.us10.us.i.i, 63
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cr
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !102, !noalias !331
  %i.cv = shl nuw i64 1, %i.cs
  %i.cw = and i64 %i.cu, %i.cv
  %.not.us.us.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not.us.us.i.i, label %bb.j, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us13.us.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us13.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us12.us.i.i
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.cq
  %.val27.us15.us.i.i = load double, ptr %i.cx, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.cy = load double, ptr %3, align 8, !tbaa !317, !alias.scope !329, !noalias !326
  %i.cz = fadd double %.val27.us15.us.i.i, %i.cy
  store double %i.cz, ptr %3, align 8, !tbaa !317, !alias.scope !329, !noalias !326
  %i.da = load i64, ptr %i.j, align 8, !tbaa !319, !alias.scope !329, !noalias !326
  %i.db = add i64 %i.da, 1
  store i64 %i.db, ptr %i.j, align 8, !tbaa !319, !alias.scope !329, !noalias !326
  br label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us13.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us12.us.i.i
  %i.dc = add nuw i64 %.0269.us10.us.i.i, 1       ; 2 uses
  %exitcond38.not.i.i = icmp eq i64 %i.dc, %4
  br i1 %exitcond38.not.i.i, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us11.us.i.i, !llvm.loop !332

.lr.ph.split.split.us.split.i.i:                  ; preds = %.lr.ph.split.split.us.i.i
  br i1 %.not.i30.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us11.us16.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us11.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us11.us16.i.i: ; preds = %.lr.ph.split.split.us.split.i.i, %bb.k
  %.0269.us10.us17.i.i = phi i64 [ %i.dr, %bb.k ], [ 0, %.lr.ph.split.split.us.split.i.i ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0269.us10.us17.i.i
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3, !noalias !331
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = lshr i64 %i.df, 6
  %i.dh = and i64 %i.df, 63
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.dg
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !102, !noalias !331
  %i.dk = shl nuw i64 1, %i.dh
  %i.dl = and i64 %i.dk, %i.dj
  %.not.us.us19.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not.us.us19.i.i, label %bb.k, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us13.us20.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us13.us20.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us11.us16.i.i
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0269.us10.us17.i.i
  %.val27.us15.us21.i.i = load double, ptr %i.dm, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.dn = load double, ptr %3, align 8, !tbaa !317, !alias.scope !329, !noalias !326
  %i.do = fadd double %.val27.us15.us21.i.i, %i.dn
  store double %i.do, ptr %3, align 8, !tbaa !317, !alias.scope !329, !noalias !326
  %i.dp = load i64, ptr %i.j, align 8, !tbaa !319, !alias.scope !329, !noalias !326
  %i.dq = add i64 %i.dp, 1
  store i64 %i.dq, ptr %i.j, align 8, !tbaa !319, !alias.scope !329, !noalias !326
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us13.us20.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us11.us16.i.i
  %i.dr = add nuw i64 %.0269.us10.us17.i.i, 1     ; 2 uses
  %exitcond37.not.i.i = icmp eq i64 %i.dr, %4
  br i1 %exitcond37.not.i.i, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us11.us16.i.i, !llvm.loop !332

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us11.i.i: ; preds = %.lr.ph.split.split.us.split.i.i, %bb.l
  %.0269.us10.i.i = phi i64 [ %i.ej, %bb.l ], [ 0, %.lr.ph.split.split.us.split.i.i ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0269.us10.i.i
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !3, !noalias !331
  %i.du = zext i32 %i.dt to i64                   ; 2 uses
  %i.dv = lshr i64 %i.du, 6
  %i.dw = and i64 %i.du, 63
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.dv
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !102, !noalias !331
  %i.dz = shl nuw i64 1, %i.dw
  %i.ea = and i64 %i.dz, %i.dy
  %.not.us.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not.us.i.i, label %bb.l, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us13.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us13.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us11.i.i
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %.0269.us10.i.i
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !3, !noalias !331
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ed
  %.val27.us15.i.i = load double, ptr %i.ee, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.ef = load double, ptr %3, align 8, !tbaa !317, !alias.scope !329, !noalias !326
  %i.eg = fadd double %.val27.us15.i.i, %i.ef
  store double %i.eg, ptr %3, align 8, !tbaa !317, !alias.scope !329, !noalias !326
  %i.eh = load i64, ptr %i.j, align 8, !tbaa !319, !alias.scope !329, !noalias !326
  %i.ei = add i64 %i.eh, 1
  store i64 %i.ei, ptr %i.j, align 8, !tbaa !319, !alias.scope !329, !noalias !326
  br label %bb.l

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us13.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us11.i.i
  %i.ej = add nuw i64 %.0269.us10.i.i, 1          ; 2 uses
  %exitcond36.not.i.i = icmp eq i64 %i.ej, %4
  br i1 %exitcond36.not.i.i, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us11.i.i, !llvm.loop !332

.preheader.i.i:                                   ; preds = %bb.f
  br i1 %.not27.i.i, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.lr.ph.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.lr.ph.i.i: ; preds = %.preheader.i.i
  %.not.i38.i.i = icmp eq ptr %.val10.i, null
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted.i.i = load double, ptr %3, align 8, !tbaa !317, !alias.scope !329, !noalias !326 ; 4 uses
  %.promoted23.i.i = load i64, ptr %i.ek, align 8, !tbaa !319, !alias.scope !329, !noalias !326
  br i1 %.not.i38.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.lr.ph.i.i
  %i.el = add i64 %4, -1
  %xtraiter70 = and i64 %4, 3                     ; 3 uses
  %i.em = icmp ult i64 %i.el, 3
  br i1 %i.em, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader
  %unroll_iter77 = and i64 %4, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.lr.ph.i.i
  %i.en = add i64 %4, -1
  %xtraiter79 = and i64 %4, 7                     ; 3 uses
  %i.eo = icmp ult i64 %i.en, 7
  br i1 %i.eo, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader
  %unroll_iter86 = and i64 %4, -8
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new
  %i.ep = phi double [ %.promoted.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new ], [ %i.fm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i ]
  %.022.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new ], [ %i.fn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i ] ; 9 uses
  %niter87 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new ], [ %niter87.next.7, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i ]
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.022.us.i.i
  %.val.us.i.i = load double, ptr %i.eq, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.er = fadd double %i.ep, %.val.us.i.i
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.022.us.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %.val.us.i.i.1 = load double, ptr %i.et, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.eu = fadd double %i.er, %.val.us.i.i.1
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.022.us.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %.val.us.i.i.2 = load double, ptr %i.ew, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.ex = fadd double %i.eu, %.val.us.i.i.2
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.022.us.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %.val.us.i.i.3 = load double, ptr %i.ez, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.fa = fadd double %i.ex, %.val.us.i.i.3
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.022.us.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %.val.us.i.i.4 = load double, ptr %i.fc, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.fd = fadd double %i.fa, %.val.us.i.i.4
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.022.us.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  %.val.us.i.i.5 = load double, ptr %i.ff, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.fg = fadd double %i.fd, %.val.us.i.i.5
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.022.us.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  %.val.us.i.i.6 = load double, ptr %i.fi, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.fj = fadd double %i.fg, %.val.us.i.i.6
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.022.us.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 56
  %.val.us.i.i.7 = load double, ptr %i.fl, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.fm = fadd double %i.fj, %.val.us.i.i.7       ; 3 uses
  %i.fn = add nuw i64 %.022.us.i.i, 8             ; 2 uses
  %niter87.next.7 = add nuw i64 %niter87, 8       ; 2 uses
  %niter87.ncmp.7 = icmp eq i64 %niter87.next.7, %unroll_iter86
  br i1 %niter87.ncmp.7, label %..loopexit_crit_edge.i.i.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i, !llvm.loop !335

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.i.i, %bb.o
  %.0269.i.i = phi i64 [ %i.gn, %bb.o ], [ 0, %.lr.ph.split.i.i ] ; 5 uses
  br i1 %.not.i29.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.split.i.i
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0269.i.i
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !3, !noalias !331
  %i.fq = zext i32 %i.fp to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.m, %.lr.ph.split.split.i.i
  %i.fr = phi i64 [ %i.fq, %bb.m ], [ %.0269.i.i, %.lr.ph.split.split.i.i ] ; 2 uses
  br i1 %.not.i30.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %.0269.i.i
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3, !noalias !331
  %i.fu = zext i32 %i.ft to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit31.i.i: ; preds = %bb.n, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.fv = phi i64 [ %i.fu, %bb.n ], [ %.0269.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i ] ; 3 uses
  %i.fw = lshr i64 %i.fr, 6
  %i.fx = and i64 %i.fr, 63
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.fw
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !102, !noalias !331
  %i.ga = shl nuw i64 1, %i.fx
  %i.gb = and i64 %i.fz, %i.ga
  %.not.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not.i.i, label %bb.o, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.i.i
  %i.gc = lshr i64 %i.fv, 6
  %i.gd = and i64 %i.fv, 63
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.fr.i.i, i64 %i.gc
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !102
  %i.gg = shl nuw i64 1, %i.gd
  %i.gh = and i64 %i.gf, %i.gg
  %.not6.i.i = icmp eq i64 %i.gh, 0
  br i1 %.not6.i.i, label %bb.o, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fv
  %.val27.i.i = load double, ptr %i.gi, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.gj = load double, ptr %3, align 8, !tbaa !317, !alias.scope !329, !noalias !326
  %i.gk = fadd double %.val27.i.i, %i.gj
  store double %i.gk, ptr %3, align 8, !tbaa !317, !alias.scope !329, !noalias !326
  %i.gl = load i64, ptr %i.j, align 8, !tbaa !319, !alias.scope !329, !noalias !326
  %i.gm = add i64 %i.gl, 1
  store i64 %i.gm, ptr %i.j, align 8, !tbaa !319, !alias.scope !329, !noalias !326
  br label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.i.i
  %i.gn = add nuw i64 %.0269.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gn, %4
  br i1 %exitcond.not.i.i, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i, label %.lr.ph.split.split.i.i, !llvm.loop !332

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new
  %i.go = phi double [ %.promoted.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new ], [ %i.hl, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i ]
  %.022.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new ], [ %i.hm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i ] ; 5 uses
  %niter78 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new ], [ %niter78.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i ]
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %.022.i.i
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !3, !noalias !331
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.gr
  %.val.i.i = load double, ptr %i.gs, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.gt = fadd double %i.go, %.val.i.i
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %.022.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !3, !noalias !331
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.gx
  %.val.i.i.1 = load double, ptr %i.gy, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.gz = fadd double %i.gt, %.val.i.i.1
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %.022.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !3, !noalias !331
  %i.hd = zext i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.hd
  %.val.i.i.2 = load double, ptr %i.he, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.hf = fadd double %i.gz, %.val.i.i.2
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %.022.i.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !3, !noalias !331
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.hj
  %.val.i.i.3 = load double, ptr %i.hk, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.hl = fadd double %i.hf, %.val.i.i.3          ; 3 uses
  %i.hm = add nuw i64 %.022.i.i, 4                ; 2 uses
  %niter78.next.3 = add nuw i64 %niter78, 4       ; 2 uses
  %niter78.ncmp.3 = icmp eq i64 %niter78.next.3, %unroll_iter77
  br i1 %niter78.ncmp.3, label %..loopexit_crit_edge.i.i.loopexit50.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i, !llvm.loop !335

..loopexit_crit_edge.i.i.loopexit.unr-lcssa:      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i
  %lcmp.mod83.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod83.not, label %..loopexit_crit_edge.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader
  %.epil.init82 = phi double [ %.promoted.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader ], [ %i.fm, %..loopexit_crit_edge.i.i.loopexit.unr-lcssa ]
  %.022.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader ], [ %i.fn, %..loopexit_crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod85 = icmp ne i64 %xtraiter79, 0
  call void @llvm.assume(i1 %lcmp.mod85)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader
  %i.hn = phi double [ %i.hp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil ], [ %.epil.init82, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader ]
  %.022.us.i.i.epil = phi i64 [ %i.hq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil ], [ %.022.us.i.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader ] ; 2 uses
  %epil.iter80 = phi i64 [ %epil.iter80.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader ]
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.022.us.i.i.epil
  %.val.us.i.i.epil = load double, ptr %i.ho, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.hp = fadd double %i.hn, %.val.us.i.i.epil    ; 2 uses
  %i.hq = add nuw i64 %.022.us.i.i.epil, 1
  %epil.iter80.next = add i64 %epil.iter80, 1     ; 2 uses
  %epil.iter80.cmp.not = icmp eq i64 %epil.iter80.next, %xtraiter79
  br i1 %epil.iter80.cmp.not, label %..loopexit_crit_edge.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil, !llvm.loop !336

..loopexit_crit_edge.i.i.loopexit50.unr-lcssa:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i
  %lcmp.mod74.not = icmp eq i64 %xtraiter70, 0
  br i1 %lcmp.mod74.not, label %..loopexit_crit_edge.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i.i.loopexit50.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader
  %.epil.init73 = phi double [ %.promoted.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader ], [ %i.hl, %..loopexit_crit_edge.i.i.loopexit50.unr-lcssa ]
  %.022.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader ], [ %i.hm, %..loopexit_crit_edge.i.i.loopexit50.unr-lcssa ]
  %lcmp.mod76 = icmp ne i64 %xtraiter70, 0
  call void @llvm.assume(i1 %lcmp.mod76)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader
  %i.hr = phi double [ %i.hw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil ], [ %.epil.init73, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader ]
  %.022.i.i.epil = phi i64 [ %i.hx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil ], [ %.022.i.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader ] ; 2 uses
  %epil.iter71 = phi i64 [ %epil.iter71.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader ]
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %.022.i.i.epil
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !3, !noalias !331
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.hu
  %.val.i.i.epil = load double, ptr %i.hv, align 8, !tbaa !106, !alias.scope !326, !noalias !329
  %i.hw = fadd double %i.hr, %.val.i.i.epil       ; 2 uses
  %i.hx = add nuw i64 %.022.i.i.epil, 1
  %epil.iter71.next = add i64 %epil.iter71, 1     ; 2 uses
  %epil.iter71.cmp.not = icmp eq i64 %epil.iter71.next, %xtraiter70
  br i1 %epil.iter71.cmp.not, label %..loopexit_crit_edge.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil, !llvm.loop !337

..loopexit_crit_edge.i.i:                         ; preds = %..loopexit_crit_edge.i.i.loopexit50.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil, %..loopexit_crit_edge.i.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil
  %.us-phi25.i.i = phi double [ %i.hp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil ], [ %i.fm, %..loopexit_crit_edge.i.i.loopexit.unr-lcssa ], [ %i.hl, %..loopexit_crit_edge.i.i.loopexit50.unr-lcssa ], [ %i.hw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil ]
  %.us-phi.i.i = add i64 %.promoted23.i.i, %4
  store double %.us-phi25.i.i, ptr %3, align 8, !tbaa !317, !alias.scope !329, !noalias !326
  store i64 %.us-phi.i.i, ptr %i.ek, align 8, !tbaa !319, !alias.scope !329, !noalias !326
  br label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i

_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i: ; preds = %bb.o, %bb.l, %bb.k, %bb.j, %bb.h, %..loopexit_crit_edge.i.i, %.preheader.i.i, %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.loopexit.split.us.i, %.preheader7.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 4 uses
  %i.ib = load atomic i64, ptr %i.ia acquire, align 8 ; 2 uses
  %i.ic = icmp eq i64 %i.ib, 4294967297
  %i.id = trunc i64 %i.ib to i32                  ; 2 uses
  br i1 %i.ic, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ia, align 8, !tbaa !53
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  store i32 0, ptr %i.ie, align 4, !tbaa !55
  %i.if = load ptr, ptr %i.hz, align 8, !tbaa !50
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(16) %i.hz) #21, !inline_history !338
  %i.ii = load ptr, ptr %i.hz, align 8, !tbaa !50
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(16) %i.hz) #21, !inline_history !338
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.il = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.il, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.im = add nsw i32 %i.id, -1
  store i32 %i.im, ptr %i.ia, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.in = atomicrmw volatile add ptr %i.ia, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.id, %bb.s ], [ %i.in, %bb.t ]
  %i.io = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.io, label %bb.u, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !57

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hz) #21
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.q, %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i
  %i.ip = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 4 uses
  %i.is = load atomic i64, ptr %i.ir acquire, align 8 ; 2 uses
  %i.it = icmp eq i64 %i.is, 4294967297
  %i.iu = trunc i64 %i.is to i32                  ; 2 uses
  br i1 %i.it, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.ir, align 8, !tbaa !53
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  store i32 0, ptr %i.iv, align 4, !tbaa !55
  %i.iw = load ptr, ptr %i.iq, align 8, !tbaa !50
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #21, !inline_history !339
  %i.iz = load ptr, ptr %i.iq, align 8, !tbaa !50
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #21, !inline_history !339
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.x:                                             ; preds = %bb.v
  %i.jc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.jc, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.jd = add nsw i32 %i.iu, -1
  store i32 %i.jd, ptr %i.ir, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.z:                                             ; preds = %bb.x
  %i.je = atomicrmw volatile add ptr %i.ir, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.iu, %bb.y ], [ %i.je, %bb.z ]
  %i.jf = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.jf, label %bb.aa, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !57

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iq) #21
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.w, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.jg = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i12.i = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i.i.i12.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i16.i, label %bb.ab

bb.ab:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8 ; 4 uses
  %i.jj = load atomic i64, ptr %i.ji acquire, align 8 ; 2 uses
  %i.jk = icmp eq i64 %i.jj, 4294967297
  %i.jl = trunc i64 %i.jj to i32                  ; 2 uses
  br i1 %i.jk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.ji, align 8, !tbaa !53
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 12
  store i32 0, ptr %i.jm, align 4, !tbaa !55
  %i.jn = load ptr, ptr %i.jh, align 8, !tbaa !50
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8
  call void %i.jp(ptr noundef nonnull align 8 dereferenceable(16) %i.jh) #21, !inline_history !338
  %i.jq = load ptr, ptr %i.jh, align 8, !tbaa !50
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.js = load ptr, ptr %i.jr, align 8
  call void %i.js(ptr noundef nonnull align 8 dereferenceable(16) %i.jh) #21, !inline_history !338
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i16.i

bb.ad:                                            ; preds = %bb.ab
  %i.jt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i13.i = icmp eq i8 %i.jt, 0
  br i1 %.not.i.i.i.i.i.i13.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ju = add nsw i32 %i.jl, -1
  store i32 %i.ju, ptr %i.ji, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i14.i

bb.af:                                            ; preds = %bb.ad
  %i.jv = atomicrmw volatile add ptr %i.ji, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i14.i
end_hunk_4
begin_hunk_5_@_ZN6duckdb17AggregateFunction12BinaryUpdateINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

bb.ah:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i16.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 4 uses
  %i.ka = load atomic i64, ptr %i.jz acquire, align 8 ; 2 uses
  %i.kb = icmp eq i64 %i.ka, 4294967297
  %i.kc = trunc i64 %i.ka to i32                  ; 2 uses
  br i1 %i.kb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.jz, align 8, !tbaa !53
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 12
  store i32 0, ptr %i.kd, align 4, !tbaa !55
  %i.ke = load ptr, ptr %i.jy, align 8, !tbaa !50
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #21, !inline_history !339
  %i.kh = load ptr, ptr %i.jy, align 8, !tbaa !50
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  %i.kj = load ptr, ptr %i.ki, align 8
  call void %i.kj(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #21, !inline_history !339
  br label %_ZN6duckdb17AggregateExecutor12BinaryUpdateINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvRNS_18AggregateInputDataERNS_6VectorES8_Phm.exit

bb.aj:                                            ; preds = %bb.ah
  %i.kk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i18.i = icmp eq i8 %i.kk, 0
  br i1 %.not.i.i.i.i.i2.i18.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kl = add nsw i32 %i.kc, -1
  store i32 %i.kl, ptr %i.jz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i19.i

bb.al:                                            ; preds = %bb.aj
  %i.km = atomicrmw volatile add ptr %i.jz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i19.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i19.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i.i4.i20.i = phi i32 [ %i.kc, %bb.ak ], [ %i.km, %bb.al ]
  %i.kn = icmp eq i32 %.0.i.i.i.i.i.i4.i20.i, 1
  br i1 %i.kn, label %bb.am, label %_ZN6duckdb17AggregateExecutor12BinaryUpdateINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvRNS_18AggregateInputDataERNS_6VectorES8_Phm.exit, !prof !57

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i19.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #21
  br label %_ZN6duckdb17AggregateExecutor12BinaryUpdateINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvRNS_18AggregateInputDataERNS_6VectorES8_Phm.exit

bb.an:                                            ; preds = %bb.a
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.kp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %6) #21
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn.i = phi { ptr, i32 } [ %i.kp, %bb.ao ], [ %i.ko, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn.i

_ZN6duckdb17AggregateExecutor12BinaryUpdateINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgXFunctionEEEvRNS_18AggregateInputDataERNS_6VectorES8_Phm.exit: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i16.i, %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i19.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_19RegrStateENS2_16RegrAvgYFunctionELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) #10 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction19BinaryScatterUpdateINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgYFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmRS5_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %6 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 11 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.b unwind label %bb.bg

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.bh

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.d unwind label %bb.bi

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.e unwind label %bb.bi

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.f unwind label %bb.bi

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.g unwind label %bb.bi

bb.g:                                             ; preds = %bb.f
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76   ; 19 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.h unwind label %bb.bi

bb.h:                                             ; preds = %bb.g
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76   ; 19 uses
  %i.f = load ptr, ptr %5, align 8, !tbaa !92
  %i.g = load ptr, ptr %6, align 8, !tbaa !92
  %i.h = load ptr, ptr %7, align 8, !tbaa !92
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val.i = load ptr, ptr %i.f, align 8           ; 15 uses
  %.val13.i = load ptr, ptr %i.g, align 8         ; 3 uses
  %.val14.i = load ptr, ptr %i.h, align 8         ; 15 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !100, !noalias !345 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.k, null            ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !noalias !345
  %.fr.i.i = freeze ptr %i.l                      ; 3 uses
  %.not.i34.i.i = icmp eq ptr %.fr.i.i, null      ; 3 uses
  %or.cond.i.i = and i1 %.not.i.i.i, %.not.i34.i.i
  %.not32.i.i = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %or.cond.i.i, label %.preheader.i.i, label %.preheader10.i.i

.preheader10.i.i:                                 ; preds = %bb.h
  br i1 %.not32.i.i, label %_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgYFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader10.i.i
  %.not.i35.i.i = icmp eq ptr %.val.i, null       ; 4 uses
  %.not.i36.i.i = icmp eq ptr %.val13.i, null     ; 3 uses
  %.not.i38.i.i = icmp eq ptr %.val14.i, null     ; 5 uses
  br i1 %.not.i.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  br i1 %.not.i34.i.i, label %.lr.ph.split.us.split.us.i.i, label %.lr.ph.split.us.split.i.i

.lr.ph.split.us.split.us.i.i:                     ; preds = %.lr.ph.split.us.i.i
  br i1 %.not.i35.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader.i, label %.lr.ph.split.us.split.us.split.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader.i: ; preds = %.lr.ph.split.us.split.us.i.i
  br i1 %.not.i38.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.us.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader.i
  %xtraiter66 = and i64 %4, 1
  %i.m = icmp eq i64 %4, 1
  br i1 %i.m, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i.preheader
  %unroll_iter69 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.us.i.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader.i
  %xtraiter71 = and i64 %4, 1
  %i.n = icmp eq i64 %4, 1
  br i1 %i.n, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.us.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.us.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.us.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.us.i.preheader
  %unroll_iter74 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.us.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.us.i.preheader.new
  %.012.us.us.us.i.us.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.us.i.preheader.new ], [ %i.af, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.us.i ] ; 4 uses
  %niter75 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.us.i.preheader.new ], [ %niter75.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.us.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.012.us.us.us.i.us.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !315, !alias.scope !343, !noalias !340 ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.012.us.us.us.i.us.i
  %.val33.us.us.us.i.us.i = load double, ptr %i.q, align 8, !tbaa !106, !alias.scope !340, !noalias !343
  %i.r = load double, ptr %i.p, align 8, !tbaa !317, !noalias !345
  %i.s = fadd double %.val33.us.us.us.i.us.i, %i.r
  store double %i.s, ptr %i.p, align 8, !tbaa !317, !noalias !345
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !319, !noalias !345
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !319, !noalias !345
  %i.w = or disjoint i64 %.012.us.us.us.i.us.i, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !315, !alias.scope !343, !noalias !340 ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.w
  %.val33.us.us.us.i.us.i.1 = load double, ptr %i.z, align 8, !tbaa !106, !alias.scope !340, !noalias !343
  %i.aa = load double, ptr %i.y, align 8, !tbaa !317, !noalias !345
  %i.ab = fadd double %.val33.us.us.us.i.us.i.1, %i.aa
  store double %i.ab, ptr %i.y, align 8, !tbaa !317, !noalias !345
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !319, !noalias !345
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !319, !noalias !345
  %i.af = add nuw i64 %.012.us.us.us.i.us.i, 2    ; 2 uses
  %niter75.next.1 = add nuw i64 %niter75, 2       ; 2 uses
  %niter75.ncmp.1 = icmp eq i64 %niter75.next.1, %unroll_iter74
  br i1 %niter75.ncmp.1, label %_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgYFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_.exit.i.loopexit47.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.us.i, !llvm.loop !346

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i.preheader.new
  %.012.us.us.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i.preheader.new ], [ %i.bd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i ] ; 4 uses
  %niter70 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i.preheader.new ], [ %niter70.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %.012.us.us.us.i.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3, !noalias !345
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !315, !alias.scope !343, !noalias !340 ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.012.us.us.us.i.i
  %.val33.us.us.us.i.i = load double, ptr %i.al, align 8, !tbaa !106, !alias.scope !340, !noalias !343
  %i.am = load double, ptr %i.ak, align 8, !tbaa !317, !noalias !345
  %i.an = fadd double %.val33.us.us.us.i.i, %i.am
  store double %i.an, ptr %i.ak, align 8, !tbaa !317, !noalias !345
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !319, !noalias !345
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !319, !noalias !345
  %i.ar = or disjoint i64 %.012.us.us.us.i.i, 1   ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3, !noalias !345
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !315, !alias.scope !343, !noalias !340 ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ar
  %.val33.us.us.us.i.i.1 = load double, ptr %i.ax, align 8, !tbaa !106, !alias.scope !340, !noalias !343
  %i.ay = load double, ptr %i.aw, align 8, !tbaa !317, !noalias !345
  %i.az = fadd double %.val33.us.us.us.i.i.1, %i.ay
  store double %i.az, ptr %i.aw, align 8, !tbaa !317, !noalias !345
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !319, !noalias !345
  %i.bc = add i64 %i.bb, 1
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !319, !noalias !345
  %i.bd = add nuw i64 %.012.us.us.us.i.i, 2       ; 2 uses
  %niter70.next.1 = add nuw i64 %niter70, 2       ; 2 uses
  %niter70.ncmp.1 = icmp eq i64 %niter70.next.1, %unroll_iter69
  br i1 %niter70.ncmp.1, label %_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgYFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_.exit.i.loopexit48.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.i, !llvm.loop !346

.lr.ph.split.us.split.us.split.i.i:               ; preds = %.lr.ph.split.us.split.us.i.i
  br i1 %.not.i38.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us20.i.i.preheader, label %.lr.ph.split.us.split.us.split.split.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us20.i.i.preheader: ; preds = %.lr.ph.split.us.split.us.split.i.i
  %xtraiter61 = and i64 %4, 1
  %i.be = icmp eq i64 %4, 1
  br i1 %i.be, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us20.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us20.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us20.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us20.i.i.preheader
  %unroll_iter64 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us20.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us20.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us20.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us20.i.i.preheader.new
  %.012.us.us.us21.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us20.i.i.preheader.new ], [ %i.cc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us20.i.i ] ; 4 uses
  %niter65 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us20.i.i.preheader.new ], [ %niter65.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us20.i.i ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.012.us.us.us21.i.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3, !noalias !345
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.012.us.us.us21.i.i
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !315, !alias.scope !343, !noalias !340 ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bh
  %.val33.us.us.us24.i.i = load double, ptr %i.bk, align 8, !tbaa !106, !alias.scope !340, !noalias !343
  %i.bl = load double, ptr %i.bj, align 8, !tbaa !317, !noalias !345
  %i.bm = fadd double %.val33.us.us.us24.i.i, %i.bl
  store double %i.bm, ptr %i.bj, align 8, !tbaa !317, !noalias !345
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !319, !noalias !345
  %i.bp = add i64 %i.bo, 1
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !319, !noalias !345
  %i.bq = or disjoint i64 %.012.us.us.us21.i.i, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3, !noalias !345
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.bq
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !315, !alias.scope !343, !noalias !340 ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bt
  %.val33.us.us.us24.i.i.1 = load double, ptr %i.bw, align 8, !tbaa !106, !alias.scope !340, !noalias !343
  %i.bx = load double, ptr %i.bv, align 8, !tbaa !317, !noalias !345
  %i.by = fadd double %.val33.us.us.us24.i.i.1, %i.bx
  store double %i.by, ptr %i.bv, align 8, !tbaa !317, !noalias !345
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !319, !noalias !345
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !319, !noalias !345
  %i.cc = add nuw i64 %.012.us.us.us21.i.i, 2     ; 2 uses
  %niter65.next.1 = add nuw i64 %niter65, 2       ; 2 uses
  %niter65.ncmp.1 = icmp eq i64 %niter65.next.1, %unroll_iter64
  br i1 %niter65.ncmp.1, label %_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgYFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_.exit.i.loopexit49.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us20.i.i, !llvm.loop !346

.lr.ph.split.us.split.us.split.split.i.i:         ; preds = %.lr.ph.split.us.split.us.split.i.i
  br i1 %.not.i36.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i.preheader: ; preds = %.lr.ph.split.us.split.us.split.split.i.i
  %xtraiter = and i64 %4, 1
  %i.cd = icmp eq i64 %4, 1
  br i1 %i.cd, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i.preheader
  %unroll_iter = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i.preheader: ; preds = %.lr.ph.split.us.split.us.split.split.i.i
  %xtraiter56 = and i64 %4, 1
  %i.ce = icmp eq i64 %4, 1
  br i1 %i.ce, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i.preheader
  %unroll_iter59 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i.preheader.new
  %.012.us.us.us26.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i.preheader.new ], [ %i.di, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i ] ; 4 uses
  %niter60 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i.preheader.new ], [ %niter60.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.012.us.us.us26.i.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3, !noalias !345
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %.012.us.us.us26.i.i
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3, !noalias !345
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !315, !alias.scope !343, !noalias !340 ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ch
  %.val33.us.us.us28.i.i = load double, ptr %i.cn, align 8, !tbaa !106, !alias.scope !340, !noalias !343
  %i.co = load double, ptr %i.cm, align 8, !tbaa !317, !noalias !345
  %i.cp = fadd double %.val33.us.us.us28.i.i, %i.co
  store double %i.cp, ptr %i.cm, align 8, !tbaa !317, !noalias !345
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !319, !noalias !345
  %i.cs = add i64 %i.cr, 1
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !319, !noalias !345
  %i.ct = or disjoint i64 %.012.us.us.us26.i.i, 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3, !noalias !345
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %i.ct
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3, !noalias !345
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !315, !alias.scope !343, !noalias !340 ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.cw
  %.val33.us.us.us28.i.i.1 = load double, ptr %i.dc, align 8, !tbaa !106, !alias.scope !340, !noalias !343
  %i.dd = load double, ptr %i.db, align 8, !tbaa !317, !noalias !345
  %i.de = fadd double %.val33.us.us.us28.i.i.1, %i.dd
  store double %i.de, ptr %i.db, align 8, !tbaa !317, !noalias !345
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !319, !noalias !345
  %i.dh = add i64 %i.dg, 1
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !319, !noalias !345
  %i.di = add nuw i64 %.012.us.us.us26.i.i, 2     ; 2 uses
  %niter60.next.1 = add nuw i64 %niter60, 2       ; 2 uses
  %niter60.ncmp.1 = icmp eq i64 %niter60.next.1, %unroll_iter59
  br i1 %niter60.ncmp.1, label %_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgYFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_.exit.i.loopexit50.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us25.i.i, !llvm.loop !346

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i.preheader.new
  %.012.us.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i.preheader.new ], [ %i.em, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i.preheader.new ], [ %niter.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.012.us.us.i.i
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3, !noalias !345
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %.012.us.us.i.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3, !noalias !345
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !315, !alias.scope !343, !noalias !340 ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.dl
  %.val33.us.us.i.i = load double, ptr %i.dr, align 8, !tbaa !106, !alias.scope !340, !noalias !343
  %i.ds = load double, ptr %i.dq, align 8, !tbaa !317, !noalias !345
  %i.dt = fadd double %.val33.us.us.i.i, %i.ds
  store double %i.dt, ptr %i.dq, align 8, !tbaa !317, !noalias !345
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !319, !noalias !345
  %i.dw = add i64 %i.dv, 1
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !319, !noalias !345
  %i.dx = or disjoint i64 %.012.us.us.i.i, 1      ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3, !noalias !345
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %i.dx
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !3, !noalias !345
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !315, !alias.scope !343, !noalias !340 ; 3 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ea
  %.val33.us.us.i.i.1 = load double, ptr %i.eg, align 8, !tbaa !106, !alias.scope !340, !noalias !343
  %i.eh = load double, ptr %i.ef, align 8, !tbaa !317, !noalias !345
  %i.ei = fadd double %.val33.us.us.i.i.1, %i.eh
  store double %i.ei, ptr %i.ef, align 8, !tbaa !317, !noalias !345
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !319, !noalias !345
  %i.el = add i64 %i.ek, 1
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !319, !noalias !345
  %i.em = add nuw i64 %.012.us.us.i.i, 2          ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgYFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_.exit.i.loopexit51.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.i, !llvm.loop !346

.lr.ph.split.us.split.i.i:                        ; preds = %.lr.ph.split.us.i.i, %bb.l
  %.012.us.i.i = phi i64 [ %i.fn, %bb.l ], [ 0, %.lr.ph.split.us.i.i ] ; 7 uses
  br i1 %.not.i35.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us.split.i.i
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.012.us.i.i
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3, !noalias !345
  %i.ep = zext i32 %i.eo to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i: ; preds = %bb.i, %.lr.ph.split.us.split.i.i
  %i.eq = phi i64 [ %i.ep, %bb.i ], [ %.012.us.i.i, %.lr.ph.split.us.split.i.i ]
  br i1 %.not.i36.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.val13.i, i64 %.012.us.i.i
  %i.es = load i32, ptr %i.er, align 4, !tbaa !3, !noalias !345
  %i.et = zext i32 %i.es to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i: ; preds = %bb.j, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i
  %i.eu = phi i64 [ %i.et, %bb.j ], [ %.012.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i ] ; 2 uses
  br i1 %.not.i38.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.us.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %.012.us.i.i
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3, !noalias !345
  %i.ex = zext i32 %i.ew to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit39.us.i.i: ; preds = %bb.k, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i
  %i.ey = phi i64 [ %i.ex, %bb.k ], [ %.012.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i ]
  %i.ez = lshr i64 %i.eu, 6
  %i.fa = and i64 %i.eu, 63
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.fr.i.i, i64 %i.ez
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !102
  %i.fd = shl nuw i64 1, %i.fa
  %i.fe = and i64 %i.fc, %i.fd
  %.not9.us.i.i = icmp eq i64 %i.fe, 0
  br i1 %.not9.us.i.i, label %bb.l, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit43.thread.us.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit43.thread.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.us.i.i
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ey
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !315, !alias.scope !343, !noalias !340 ; 3 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.eq
  %.val33.us.i.i = load double, ptr %i.fh, align 8, !tbaa !106, !alias.scope !340, !noalias !343
  %i.fi = load double, ptr %i.fg, align 8, !tbaa !317, !noalias !345
  %i.fj = fadd double %.val33.us.i.i, %i.fi
  store double %i.fj, ptr %i.fg, align 8, !tbaa !317, !noalias !345
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !319, !noalias !345
  %i.fm = add i64 %i.fl, 1
  store i64 %i.fm, ptr %i.fk, align 8, !tbaa !319, !noalias !345
  br label %bb.l

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit43.thread.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.us.i.i
  %i.fn = add nuw i64 %.012.us.i.i, 1             ; 2 uses
  %exitcond41.not.i.i = icmp eq i64 %i.fn, %4
  br i1 %exitcond41.not.i.i, label %_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgYFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_.exit.i, label %.lr.ph.split.us.split.i.i, !llvm.loop !346

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  br i1 %.not.i34.i.i, label %.lr.ph.split.split.us.i.i, label %.lr.ph.split.split.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.i.i, %bb.o
  %.012.us13.i.i = phi i64 [ %i.gk, %bb.o ], [ 0, %.lr.ph.split.i.i ] ; 5 uses
  br i1 %.not.i35.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us14.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.split.us.i.i
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.012.us13.i.i
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !3, !noalias !345
  %i.fq = zext i32 %i.fp to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us14.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us14.i.i: ; preds = %bb.m, %.lr.ph.split.split.us.i.i
  %i.fr = phi i64 [ %i.fq, %bb.m ], [ %.012.us13.i.i, %.lr.ph.split.split.us.i.i ] ; 3 uses
  br i1 %.not.i38.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.us16.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us14.i.i
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %.012.us13.i.i
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3, !noalias !345
  %i.fu = zext i32 %i.ft to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.us16.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit39.us16.i.i: ; preds = %bb.n, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us14.i.i
  %i.fv = phi i64 [ %i.fu, %bb.n ], [ %.012.us13.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us14.i.i ]
  %i.fw = lshr i64 %i.fr, 6
  %i.fx = and i64 %i.fr, 63
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fw
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !102, !noalias !345
  %i.ga = shl nuw i64 1, %i.fx
  %i.gb = and i64 %i.fz, %i.ga
  %.not.us.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not.us.i.i, label %bb.o, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us17.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us17.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.us16.i.i
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fv
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !315, !alias.scope !343, !noalias !340 ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fr
  %.val33.us19.i.i = load double, ptr %i.ge, align 8, !tbaa !106, !alias.scope !340, !noalias !343
  %i.gf = load double, ptr %i.gd, align 8, !tbaa !317, !noalias !345
  %i.gg = fadd double %.val33.us19.i.i, %i.gf
  store double %i.gg, ptr %i.gd, align 8, !tbaa !317, !noalias !345
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !319, !noalias !345
  %i.gj = add i64 %i.gi, 1
  store i64 %i.gj, ptr %i.gh, align 8, !tbaa !319, !noalias !345
  br label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us17.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.us16.i.i
  %i.gk = add nuw i64 %.012.us13.i.i, 1           ; 2 uses
  %exitcond40.not.i.i = icmp eq i64 %i.gk, %4
  br i1 %exitcond40.not.i.i, label %_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgYFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_.exit.i, label %.lr.ph.split.split.us.i.i, !llvm.loop !346

.preheader.i.i:                                   ; preds = %bb.h
  br i1 %.not32.i.i, label %_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgYFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_.exit.i, label %.lr.ph30.i.i

.lr.ph30.i.i:                                     ; preds = %.preheader.i.i
  %.not.i44.i.i = icmp eq ptr %.val.i, null
  %.not.i48.i.i = icmp eq ptr %.val14.i, null
  br label %bb.t

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.i.i, %bb.s
  %.012.i.i = phi i64 [ %i.hr, %bb.s ], [ 0, %.lr.ph.split.i.i ] ; 7 uses
  br i1 %.not.i35.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.split.i.i
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.012.i.i
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !3, !noalias !345
  %i.gn = zext i32 %i.gm to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.p, %.lr.ph.split.split.i.i
  %i.go = phi i64 [ %i.gn, %bb.p ], [ %.012.i.i, %.lr.ph.split.split.i.i ] ; 3 uses
  br i1 %.not.i36.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.val13.i, i64 %.012.i.i
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !3, !noalias !345
  %i.gr = zext i32 %i.gq to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i: ; preds = %bb.q, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.gs = phi i64 [ %i.gr, %bb.q ], [ %.012.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i ] ; 2 uses
  br i1 %.not.i38.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %.012.i.i
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !3, !noalias !345
  %i.gv = zext i32 %i.gu to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit39.i.i: ; preds = %bb.r, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i
  %i.gw = phi i64 [ %i.gv, %bb.r ], [ %.012.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i ]
  %i.gx = lshr i64 %i.go, 6
  %i.gy = and i64 %i.go, 63
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gx
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !102, !noalias !345
  %i.hb = shl nuw i64 1, %i.gy
  %i.hc = and i64 %i.ha, %i.hb
  %.not.i.i = icmp eq i64 %i.hc, 0
  br i1 %.not.i.i, label %bb.s, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.i.i
  %i.hd = lshr i64 %i.gs, 6
  %i.he = and i64 %i.gs, 63
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.fr.i.i, i64 %i.hd
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !102
  %i.hh = shl nuw i64 1, %i.he
  %i.hi = and i64 %i.hg, %i.hh
  %.not9.i.i = icmp eq i64 %i.hi, 0
  br i1 %.not9.i.i, label %bb.s, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit43.thread.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit43.thread.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.gw
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !315, !alias.scope !343, !noalias !340 ; 3 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.go
  %.val33.i.i = load double, ptr %i.hl, align 8, !tbaa !106, !alias.scope !340, !noalias !343
  %i.hm = load double, ptr %i.hk, align 8, !tbaa !317, !noalias !345
  %i.hn = fadd double %.val33.i.i, %i.hm
  store double %i.hn, ptr %i.hk, align 8, !tbaa !317, !noalias !345
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !319, !noalias !345
  %i.hq = add i64 %i.hp, 1
  store i64 %i.hq, ptr %i.ho, align 8, !tbaa !319, !noalias !345
  br label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit43.thread.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit39.i.i
  %i.hr = add nuw i64 %.012.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.hr, %4
  br i1 %exitcond.not.i.i, label %_ZN6duckdb17AggregateExecutor17BinaryScatterLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgYFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PPT_mRKNS_15SelectionVectorESI_SI_RNS_12ValidityMaskESK_.exit.i, label %.lr.ph.split.split.i.i, !llvm.loop !346

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit49.i.i, %.lr.ph30.i.i
  %.03229.i.i = phi i64 [ 0, %.lr.ph30.i.i ], [ %i.ii, %_ZNK6duckdb15SelectionVector9get_indexEm.exit49.i.i ] ; 5 uses
  br i1 %.not.i44.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit45.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.03229.i.i
end_hunk_5
begin_hunk_6_@_ZN6duckdb17AggregateFunction19BinaryScatterUpdateINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgYFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmRS5_m:bb.a
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bg
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.bj ], [ %i.on, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %.pn.pn.i

_ZN6duckdb17AggregateExecutor13BinaryScatterINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgYFunctionEEEvRNS_18AggregateInputDataERNS_6VectorES8_S8_m.exit: ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i30.i, %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i33.i, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction12StateCombineINS_12_GLOBAL__N_19RegrStateENS2_16RegrAvgYFunctionEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1, ptr nofree nonnull readnone align 8 captures(none) %2, i64 noundef %3) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !116
  %i.g = icmp eq i8 %i.f, 8
  br i1 %i.g, label %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i8 8, ptr %i.c, align 1, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.i = load i8, ptr %i.e, align 1, !tbaa !116
  store i8 %i.i, ptr %i.d, align 1, !tbaa !117
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.f unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %common.resume.sink.split.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.l = load ptr, ptr %6, align 8, !tbaa !23     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.l) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

common.resume.sink.split.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i10.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.sink.i = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i10.i ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i10.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #21
  br label %common.resume.i

common.resume.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i, %common.resume.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !118 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !116
  %i.r = icmp eq i8 %i.q, 8
  br i1 %i.r, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i10.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 8, ptr %i.a, align 1, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.t = load i8, ptr %i.p, align 1, !tbaa !116
  store i8 %i.t, ptr %i.b, align 1, !tbaa !117
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.k unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i10.i: ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume.sink.split.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.i.i13.i = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.w = load ptr, ptr %4, align 8, !tbaa !23     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i14.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.w) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %.0.i.i.i13.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i15.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %.0.i.i.i13.i, label %common.resume.sink.split.i, label %common.resume.i

bb.k:                                             ; preds = %bb.i
  unreachable

_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i: ; preds = %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i16.i = load ptr, ptr %i.z, align 8, !tbaa !118 ; 3 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_19RegrStateENS2_16RegrAvgYFunctionEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i
  %xtraiter = and i64 %3, 1
  %i.aa = icmp eq i64 %3, 1
  br i1 %i.aa, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %3, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.01.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.aw, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.01.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !315 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i16.i, i64 %.01.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !315 ; 3 uses
  %.val.i = load double, ptr %i.ac, align 8, !tbaa !317
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  %.val9.i = load i64, ptr %i.af, align 8, !tbaa !319
  %i.ag = load double, ptr %i.ae, align 8, !tbaa !317
  %i.ah = fadd double %.val.i, %i.ag
  store double %i.ah, ptr %i.ae, align 8, !tbaa !317
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !319
  %i.ak = add i64 %i.aj, %.val9.i
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !319
  %i.al = or disjoint i64 %.01.i, 1               ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !315 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i16.i, i64 %i.al
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !315 ; 3 uses
  %.val.i.1 = load double, ptr %i.an, align 8, !tbaa !317
  %i.aq = getelementptr i8, ptr %i.an, i64 8
  %.val9.i.1 = load i64, ptr %i.aq, align 8, !tbaa !319
  %i.ar = load double, ptr %i.ap, align 8, !tbaa !317
  %i.as = fadd double %.val.i.1, %i.ar
  store double %i.as, ptr %i.ap, align 8, !tbaa !317
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !319
  %i.av = add i64 %i.au, %.val9.i.1
  store i64 %i.av, ptr %i.at, align 8, !tbaa !319
  %i.aw = add nuw i64 %.01.i, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_19RegrStateENS2_16RegrAvgYFunctionEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !350

_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_19RegrStateENS2_16RegrAvgYFunctionEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_19RegrStateENS2_16RegrAvgYFunctionEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_19RegrStateENS2_16RegrAvgYFunctionEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.01.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.aw, %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_19RegrStateENS2_16RegrAvgYFunctionEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod5 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.01.i.epil.init
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !315 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i16.i, i64 %.01.i.epil.init
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !315 ; 3 uses
  %.val.i.epil = load double, ptr %i.ay, align 8, !tbaa !317
  %i.bb = getelementptr i8, ptr %i.ay, i64 8
  %.val9.i.epil = load i64, ptr %i.bb, align 8, !tbaa !319
  %i.bc = load double, ptr %i.ba, align 8, !tbaa !317
  %i.bd = fadd double %.val.i.epil, %i.bc
  store double %i.bd, ptr %i.ba, align 8, !tbaa !317
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !319
  %i.bg = add i64 %i.bf, %.val9.i.epil
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !319
  br label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_19RegrStateENS2_16RegrAvgYFunctionEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm.exit

_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_19RegrStateENS2_16RegrAvgYFunctionEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_19RegrStateENS2_16RegrAvgYFunctionEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm.exit.loopexit.unr-lcssa, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction13StateFinalizeINS_12_GLOBAL__N_19RegrStateEdNS2_16RegrAvgYFunctionEEEvRNS_6VectorERNS_18AggregateInputDataES6_mm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::AggregateFinalizeData", align 8 ; 6 uses
  %10 = alloca %"struct.duckdb::AggregateFinalizeData", align 8 ; 6 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !128
  %i.f = icmp eq i8 %i.e, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 4 uses
  br i1 %i.f, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  %i.h = load i8, ptr %i.g, align 1, !tbaa !116
  %i.i = icmp eq i8 %i.h, 8
  br i1 %i.i, label %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i8 8, ptr %i.c, align 1, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.k = load i8, ptr %i.g, align 1, !tbaa !116
  store i8 %i.k, ptr %i.d, align 1, !tbaa !117
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %common.resume.sink.split.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.n = load ptr, ptr %7, align 8, !tbaa !23     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.n) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br i1 %.0.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br i1 %.0.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

common.resume.sink.split.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.sink.i = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #21
  br label %common.resume.i

common.resume.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %common.resume.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.g:                                             ; preds = %bb.e
  unreachable

_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i = load ptr, ptr %i.q, align 8, !tbaa !118
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr %2, ptr %9, align 8, !tbaa !129
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %1, ptr %i.t, align 8, !tbaa !131
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.u, align 8, !tbaa !133
  %i.v = load ptr, ptr %.val.i.i, align 8, !tbaa !315 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val22.i = load i64, ptr %i.w, align 8, !tbaa !319 ; 2 uses
  %i.x = icmp eq i64 %.val22.i, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i
  call void @_ZN6duckdb21AggregateFinalizeData10ReturnNullEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZN6duckdb12_GLOBAL__N_115RegrAvgFunction8FinalizeIdNS0_9RegrStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit.i

bb.i:                                             ; preds = %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i
  %.val21.i = load double, ptr %i.v, align 8
  %i.y = uitofp i64 %.val22.i to double
  %i.z = fdiv double %.val21.i, %i.y
  store double %i.z, ptr %i.s, align 8, !tbaa !106
  br label %_ZN6duckdb12_GLOBAL__N_115RegrAvgFunction8FinalizeIdNS0_9RegrStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit.i

_ZN6duckdb12_GLOBAL__N_115RegrAvgFunction8FinalizeIdNS0_9RegrStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %_ZN6duckdb17AggregateExecutor8FinalizeINS_12_GLOBAL__N_19RegrStateEdNS2_16RegrAvgYFunctionEEEvRNS_6VectorERNS_18AggregateInputDataES6_mm.exit

bb.j:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  %i.aa = load i8, ptr %i.g, align 1, !tbaa !116
  %i.ab = icmp eq i8 %i.aa, 8
  br i1 %i.ab, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_19RegrStateEEEPT_RNS_6VectorE.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 8, ptr %i.a, align 1, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.ad = load i8, ptr %i.g, align 1, !tbaa !116
  store i8 %i.ad, ptr %i.b, align 1, !tbaa !117
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.o unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %common.resume.sink.split.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i1 [ false, %bb.m ], [ true, %bb.l ] ; 2 uses
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ag = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.ag) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

end_hunk_6
begin_hunk_7_@_ZN6duckdb17AggregateFunction12BinaryUpdateINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgYFunctionEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i: ; preds = %bb.g, %.lr.ph.split.us.i.i
  %i.n = phi i64 [ %i.m, %bb.g ], [ %.02610.us.i.i, %.lr.ph.split.us.i.i ]
  br i1 %.not.i30.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %.02610.us.i.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3, !noalias !357
  %i.q = zext i32 %i.p to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us.i.i: ; preds = %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i
  %i.r = phi i64 [ %i.q, %bb.h ], [ %.02610.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i ] ; 2 uses
  br i1 %.not.i28.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.us.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.us.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us.i.i
  %i.s = lshr i64 %i.r, 6
  %i.t = and i64 %i.r, 63
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.fr.i.i, i64 %i.s
  %i.v = load i64, ptr %i.u, align 8, !tbaa !102
  %i.w = shl nuw i64 1, %i.t
  %i.x = and i64 %i.v, %i.w
  %.not7.us.i.i = icmp eq i64 %i.x, 0
  br i1 %.not7.us.i.i, label %bb.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.us.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.us.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us.i.i
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.n
  %.val27.us.i.i = load double, ptr %i.y, align 8, !tbaa !106, !alias.scope !352, !noalias !355
  %i.z = load double, ptr %3, align 8, !tbaa !317, !alias.scope !355, !noalias !352
  %i.aa = fadd double %.val27.us.i.i, %i.z
  store double %i.aa, ptr %3, align 8, !tbaa !317, !alias.scope !355, !noalias !352
  %i.ab = load i64, ptr %i.j, align 8, !tbaa !319, !alias.scope !355, !noalias !352
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.j, align 8, !tbaa !319, !alias.scope !355, !noalias !352
  br label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.us.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.us.i.i
  %i.ad = add nuw i64 %.02610.us.i.i, 1           ; 2 uses
  %exitcond41.not.i.i = icmp eq i64 %i.ad, %4
  br i1 %exitcond41.not.i.i, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgYFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !358

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  br i1 %.not.i28.i.i, label %.lr.ph.split.split.us.i.i, label %.lr.ph.split.split.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.i.i
  br i1 %.not.i29.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us12.us.i.i, label %.lr.ph.split.split.us.split.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us12.us.i.i: ; preds = %.lr.ph.split.split.us.i.i, %bb.j
  %.02610.us11.us.i.i = phi i64 [ %i.ap, %bb.j ], [ 0, %.lr.ph.split.split.us.i.i ] ; 4 uses
  %i.ae = lshr i64 %.02610.us11.us.i.i, 6
  %i.af = and i64 %.02610.us11.us.i.i, 63
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ae
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !102, !noalias !357
  %i.ai = shl nuw i64 1, %i.af
  %i.aj = and i64 %i.ai, %i.ah
  %.not.us.us.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.us.us.i.i, label %bb.j, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us14.us.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us14.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us12.us.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.02610.us11.us.i.i
  %.val27.us16.us.i.i = load double, ptr %i.ak, align 8, !tbaa !106, !alias.scope !352, !noalias !355
  %i.al = load double, ptr %3, align 8, !tbaa !317, !alias.scope !355, !noalias !352
  %i.am = fadd double %.val27.us16.us.i.i, %i.al
  store double %i.am, ptr %3, align 8, !tbaa !317, !alias.scope !355, !noalias !352
  %i.an = load i64, ptr %i.j, align 8, !tbaa !319, !alias.scope !355, !noalias !352
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.j, align 8, !tbaa !319, !alias.scope !355, !noalias !352
  br label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us14.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us12.us.i.i
  %i.ap = add nuw i64 %.02610.us11.us.i.i, 1      ; 2 uses
  %exitcond40.not.i.i = icmp eq i64 %i.ap, %4
  br i1 %exitcond40.not.i.i, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgYFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us12.us.i.i, !llvm.loop !358

.lr.ph.split.split.us.split.i.i:                  ; preds = %.lr.ph.split.split.us.i.i
  br i1 %.not.i30.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us12.us17.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us12.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us12.us17.i.i: ; preds = %.lr.ph.split.split.us.split.i.i, %bb.k
  %.02610.us11.us18.i.i = phi i64 [ %i.be, %bb.k ], [ 0, %.lr.ph.split.split.us.split.i.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.02610.us11.us18.i.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3, !noalias !357
  %i.as = zext i32 %i.ar to i64                   ; 3 uses
  %i.at = lshr i64 %i.as, 6
  %i.au = and i64 %i.as, 63
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.at
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !102, !noalias !357
  %i.ax = shl nuw i64 1, %i.au
  %i.ay = and i64 %i.ax, %i.aw
  %.not.us.us20.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.us.us20.i.i, label %bb.k, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us14.us21.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us14.us21.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us12.us17.i.i
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.as
  %.val27.us16.us22.i.i = load double, ptr %i.az, align 8, !tbaa !106, !alias.scope !352, !noalias !355
  %i.ba = load double, ptr %3, align 8, !tbaa !317, !alias.scope !355, !noalias !352
  %i.bb = fadd double %.val27.us16.us22.i.i, %i.ba
  store double %i.bb, ptr %3, align 8, !tbaa !317, !alias.scope !355, !noalias !352
  %i.bc = load i64, ptr %i.j, align 8, !tbaa !319, !alias.scope !355, !noalias !352
  %i.bd = add i64 %i.bc, 1
  store i64 %i.bd, ptr %i.j, align 8, !tbaa !319, !alias.scope !355, !noalias !352
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us14.us21.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us12.us17.i.i
  %i.be = add nuw i64 %.02610.us11.us18.i.i, 1    ; 2 uses
  %exitcond39.not.i.i = icmp eq i64 %i.be, %4
  br i1 %exitcond39.not.i.i, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgYFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us12.us17.i.i, !llvm.loop !358

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us12.i.i: ; preds = %.lr.ph.split.split.us.split.i.i, %bb.l
  %.02610.us11.i.i = phi i64 [ %i.bt, %bb.l ], [ 0, %.lr.ph.split.split.us.split.i.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.02610.us11.i.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3, !noalias !357
  %i.bh = zext i32 %i.bg to i64                   ; 3 uses
  %i.bi = lshr i64 %i.bh, 6
  %i.bj = and i64 %i.bh, 63
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bi
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !102, !noalias !357
  %i.bm = shl nuw i64 1, %i.bj
  %i.bn = and i64 %i.bm, %i.bl
  %.not.us.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.us.i.i, label %bb.l, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us14.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us14.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us12.i.i
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bh
  %.val27.us16.i.i = load double, ptr %i.bo, align 8, !tbaa !106, !alias.scope !352, !noalias !355
  %i.bp = load double, ptr %3, align 8, !tbaa !317, !alias.scope !355, !noalias !352
  %i.bq = fadd double %.val27.us16.i.i, %i.bp
  store double %i.bq, ptr %3, align 8, !tbaa !317, !alias.scope !355, !noalias !352
  %i.br = load i64, ptr %i.j, align 8, !tbaa !319, !alias.scope !355, !noalias !352
  %i.bs = add i64 %i.br, 1
  store i64 %i.bs, ptr %i.j, align 8, !tbaa !319, !alias.scope !355, !noalias !352
  br label %bb.l

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us14.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us12.i.i
  %i.bt = add nuw i64 %.02610.us11.i.i, 1         ; 2 uses
  %exitcond38.not.i.i = icmp eq i64 %i.bt, %4
  br i1 %exitcond38.not.i.i, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgYFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us12.i.i, !llvm.loop !358

.preheader.i.i:                                   ; preds = %bb.f
  br i1 %.not29.i.i, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgYFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i, label %.lr.ph24.i.i

.lr.ph24.i.i:                                     ; preds = %.preheader.i.i
  %.not.i36.i.i = icmp eq ptr %.val.i, null
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted.i.i = load double, ptr %3, align 8, !tbaa !317, !alias.scope !355, !noalias !352 ; 4 uses
  %.promoted25.i.i = load i64, ptr %i.bu, align 8, !tbaa !319, !alias.scope !355, !noalias !352
  br i1 %.not.i36.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader: ; preds = %.lr.ph24.i.i
  %xtraiter = and i64 %4, 3                       ; 3 uses
  %i.bv = icmp ult i64 %4, 4
  br i1 %i.bv, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader
  %unroll_iter = and i64 %4, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader: ; preds = %.lr.ph24.i.i
  %xtraiter46 = and i64 %4, 7                     ; 3 uses
  %i.bw = icmp ult i64 %4, 8
  br i1 %i.bw, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader
  %unroll_iter53 = and i64 %4, -8
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new
  %i.bx = phi double [ %.promoted.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new ], [ %i.cu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i ]
  %.023.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new ], [ %i.cv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i ] ; 9 uses
  %niter54 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new ], [ %niter54.next.7, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.023.us.i.i
  %.val.us.i.i = load double, ptr %i.by, align 8, !tbaa !106, !alias.scope !352, !noalias !355
  %i.bz = fadd double %i.bx, %.val.us.i.i
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.023.us.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.val.us.i.i.1 = load double, ptr %i.cb, align 8, !tbaa !106, !alias.scope !352, !noalias !355
  %i.cc = fadd double %i.bz, %.val.us.i.i.1
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.023.us.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %.val.us.i.i.2 = load double, ptr %i.ce, align 8, !tbaa !106, !alias.scope !352, !noalias !355
  %i.cf = fadd double %i.cc, %.val.us.i.i.2
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.023.us.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %.val.us.i.i.3 = load double, ptr %i.ch, align 8, !tbaa !106, !alias.scope !352, !noalias !355
  %i.ci = fadd double %i.cf, %.val.us.i.i.3
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.023.us.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %.val.us.i.i.4 = load double, ptr %i.ck, align 8, !tbaa !106, !alias.scope !352, !noalias !355
  %i.cl = fadd double %i.ci, %.val.us.i.i.4
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.023.us.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %.val.us.i.i.5 = load double, ptr %i.cn, align 8, !tbaa !106, !alias.scope !352, !noalias !355
  %i.co = fadd double %i.cl, %.val.us.i.i.5
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.023.us.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %.val.us.i.i.6 = load double, ptr %i.cq, align 8, !tbaa !106, !alias.scope !352, !noalias !355
  %i.cr = fadd double %i.co, %.val.us.i.i.6
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.023.us.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %.val.us.i.i.7 = load double, ptr %i.ct, align 8, !tbaa !106, !alias.scope !352, !noalias !355
  %i.cu = fadd double %i.cr, %.val.us.i.i.7       ; 3 uses
  %i.cv = add nuw i64 %.023.us.i.i, 8             ; 2 uses
  %niter54.next.7 = add nuw i64 %niter54, 8       ; 2 uses
  %niter54.ncmp.7 = icmp eq i64 %niter54.next.7, %unroll_iter53
  br i1 %niter54.ncmp.7, label %..loopexit_crit_edge.i.i.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i, !llvm.loop !359

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.i.i, %bb.o
  %.02610.i.i = phi i64 [ %i.dv, %bb.o ], [ 0, %.lr.ph.split.i.i ] ; 5 uses
  br i1 %.not.i29.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.split.i.i
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.02610.i.i
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3, !noalias !357
  %i.cy = zext i32 %i.cx to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.m, %.lr.ph.split.split.i.i
  %i.cz = phi i64 [ %i.cy, %bb.m ], [ %.02610.i.i, %.lr.ph.split.split.i.i ] ; 3 uses
  br i1 %.not.i30.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %.02610.i.i
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3, !noalias !357
  %i.dc = zext i32 %i.db to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit31.i.i: ; preds = %bb.n, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.dd = phi i64 [ %i.dc, %bb.n ], [ %.02610.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i ] ; 2 uses
  %i.de = lshr i64 %i.cz, 6
  %i.df = and i64 %i.cz, 63
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.de
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !102, !noalias !357
  %i.di = shl nuw i64 1, %i.df
  %i.dj = and i64 %i.dh, %i.di
  %.not.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i, label %bb.o, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.i.i
  %i.dk = lshr i64 %i.dd, 6
  %i.dl = and i64 %i.dd, 63
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.fr.i.i, i64 %i.dk
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !102
  %i.do = shl nuw i64 1, %i.dl
  %i.dp = and i64 %i.dn, %i.do
  %.not7.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not7.i.i, label %bb.o, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.cz
  %.val27.i.i = load double, ptr %i.dq, align 8, !tbaa !106, !alias.scope !352, !noalias !355
  %i.dr = load double, ptr %3, align 8, !tbaa !317, !alias.scope !355, !noalias !352
  %i.ds = fadd double %.val27.i.i, %i.dr
  store double %i.ds, ptr %3, align 8, !tbaa !317, !alias.scope !355, !noalias !352
  %i.dt = load i64, ptr %i.j, align 8, !tbaa !319, !alias.scope !355, !noalias !352
  %i.du = add i64 %i.dt, 1
  store i64 %i.du, ptr %i.j, align 8, !tbaa !319, !alias.scope !355, !noalias !352
  br label %bb.o

bb.o:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.i.i
  %i.dv = add nuw i64 %.02610.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dv, %4
  br i1 %exitcond.not.i.i, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgYFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i, label %.lr.ph.split.split.i.i, !llvm.loop !358

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new
  %i.dw = phi double [ %.promoted.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new ], [ %i.et, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i ]
  %.023.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new ], [ %i.eu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new ], [ %niter.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i ]
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.023.i.i
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !3, !noalias !357
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.dz
  %.val.i.i = load double, ptr %i.ea, align 8, !tbaa !106, !alias.scope !352, !noalias !355
  %i.eb = fadd double %i.dw, %.val.i.i
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.023.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3, !noalias !357
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ef
  %.val.i.i.1 = load double, ptr %i.eg, align 8, !tbaa !106, !alias.scope !352, !noalias !355
  %i.eh = fadd double %i.eb, %.val.i.i.1
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.023.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !357
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.el
  %.val.i.i.2 = load double, ptr %i.em, align 8, !tbaa !106, !alias.scope !352, !noalias !355
  %i.en = fadd double %i.eh, %.val.i.i.2
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.023.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3, !noalias !357
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.er
  %.val.i.i.3 = load double, ptr %i.es, align 8, !tbaa !106, !alias.scope !352, !noalias !355
  %i.et = fadd double %i.en, %.val.i.i.3          ; 3 uses
  %i.eu = add nuw i64 %.023.i.i, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..loopexit_crit_edge.i.i.loopexit38.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i, !llvm.loop !359

..loopexit_crit_edge.i.i.loopexit.unr-lcssa:      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i
  %lcmp.mod50.not = icmp eq i64 %xtraiter46, 0
  br i1 %lcmp.mod50.not, label %..loopexit_crit_edge.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader
  %.epil.init49 = phi double [ %.promoted.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader ], [ %i.cu, %..loopexit_crit_edge.i.i.loopexit.unr-lcssa ]
  %.023.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader ], [ %i.cv, %..loopexit_crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod52 = icmp ne i64 %xtraiter46, 0
  call void @llvm.assume(i1 %lcmp.mod52)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader
  %i.ev = phi double [ %i.ex, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil ], [ %.epil.init49, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader ]
  %.023.us.i.i.epil = phi i64 [ %i.ey, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil ], [ %.023.us.i.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader ] ; 2 uses
  %epil.iter47 = phi i64 [ %epil.iter47.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader ]
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.023.us.i.i.epil
  %.val.us.i.i.epil = load double, ptr %i.ew, align 8, !tbaa !106, !alias.scope !352, !noalias !355
  %i.ex = fadd double %i.ev, %.val.us.i.i.epil    ; 2 uses
  %i.ey = add nuw i64 %.023.us.i.i.epil, 1
  %epil.iter47.next = add i64 %epil.iter47, 1     ; 2 uses
  %epil.iter47.cmp.not = icmp eq i64 %epil.iter47.next, %xtraiter46
  br i1 %epil.iter47.cmp.not, label %..loopexit_crit_edge.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil, !llvm.loop !360

..loopexit_crit_edge.i.i.loopexit38.unr-lcssa:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i.i.loopexit38.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader
  %.epil.init = phi double [ %.promoted.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader ], [ %i.et, %..loopexit_crit_edge.i.i.loopexit38.unr-lcssa ]
  %.023.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader ], [ %i.eu, %..loopexit_crit_edge.i.i.loopexit38.unr-lcssa ]
  %lcmp.mod45 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod45)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader
  %i.ez = phi double [ %i.fe, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil ], [ %.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader ]
  %.023.i.i.epil = phi i64 [ %i.ff, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil ], [ %.023.i.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader ]
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.023.i.i.epil
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !3, !noalias !357
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fc
  %.val.i.i.epil = load double, ptr %i.fd, align 8, !tbaa !106, !alias.scope !352, !noalias !355
  %i.fe = fadd double %i.ez, %.val.i.i.epil       ; 2 uses
  %i.ff = add nuw i64 %.023.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..loopexit_crit_edge.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil, !llvm.loop !361

..loopexit_crit_edge.i.i:                         ; preds = %..loopexit_crit_edge.i.i.loopexit38.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil, %..loopexit_crit_edge.i.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil
  %.us-phi27.i.i = phi double [ %i.ex, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil ], [ %i.cu, %..loopexit_crit_edge.i.i.loopexit.unr-lcssa ], [ %i.et, %..loopexit_crit_edge.i.i.loopexit38.unr-lcssa ], [ %i.fe, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil ]
  %.us-phi.i.i = add i64 %.promoted25.i.i, %4
  store double %.us-phi27.i.i, ptr %3, align 8, !tbaa !317, !alias.scope !355, !noalias !352
  store i64 %.us-phi.i.i, ptr %i.bu, align 8, !tbaa !319, !alias.scope !355, !noalias !352
  br label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgYFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i

_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgYFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i: ; preds = %bb.o, %bb.l, %bb.k, %bb.j, %bb.i, %..loopexit_crit_edge.i.i, %.preheader.i.i, %.preheader8.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgYFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 4 uses
  %i.fj = load atomic i64, ptr %i.fi acquire, align 8 ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 4294967297
  %i.fl = trunc i64 %i.fj to i32                  ; 2 uses
  br i1 %i.fk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.fi, align 8, !tbaa !53
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 12
  store i32 0, ptr %i.fm, align 4, !tbaa !55
  %i.fn = load ptr, ptr %i.fh, align 8, !tbaa !50
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(16) %i.fh) #21, !inline_history !362
  %i.fq = load ptr, ptr %i.fh, align 8, !tbaa !50
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(16) %i.fh) #21, !inline_history !362
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.ft = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ft, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fu = add nsw i32 %i.fl, -1
  store i32 %i.fu, ptr %i.fi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.fv = atomicrmw volatile add ptr %i.fi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.fl, %bb.s ], [ %i.fv, %bb.t ]
  %i.fw = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fw, label %bb.u, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !57

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fh) #21
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.q, %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_19RegrStateEddNS2_16RegrAvgYFunctionEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i
  %i.fx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 4 uses
  %i.ga = load atomic i64, ptr %i.fz acquire, align 8 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 4294967297
  %i.gc = trunc i64 %i.ga to i32                  ; 2 uses
  br i1 %i.gb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.fz, align 8, !tbaa !53
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  store i32 0, ptr %i.gd, align 4, !tbaa !55
  %i.ge = load ptr, ptr %i.fy, align 8, !tbaa !50
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #21, !inline_history !363
  %i.gh = load ptr, ptr %i.fy, align 8, !tbaa !50
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #21, !inline_history !363
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.x:                                             ; preds = %bb.v
  %i.gk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.gk, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gl = add nsw i32 %i.gc, -1
  store i32 %i.gl, ptr %i.fz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.z:                                             ; preds = %bb.x
  %i.gm = atomicrmw volatile add ptr %i.fz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.gc, %bb.y ], [ %i.gm, %bb.z ]
  %i.gn = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.gn, label %bb.aa, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !57

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #21
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.w, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i12.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i12.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i16.i, label %bb.ab

bb.ab:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 4 uses
  %i.gr = load atomic i64, ptr %i.gq acquire, align 8 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 4294967297
  %i.gt = trunc i64 %i.gr to i32                  ; 2 uses
  br i1 %i.gs, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.gq, align 8, !tbaa !53
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 0, ptr %i.gu, align 4, !tbaa !55
  %i.gv = load ptr, ptr %i.gp, align 8, !tbaa !50
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #21, !inline_history !362
  %i.gy = load ptr, ptr %i.gp, align 8, !tbaa !50
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #21, !inline_history !362
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i16.i

bb.ad:                                            ; preds = %bb.ab
  %i.hb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i13.i = icmp eq i8 %i.hb, 0
  br i1 %.not.i.i.i.i.i.i13.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hc = add nsw i32 %i.gt, -1
  store i32 %i.hc, ptr %i.gq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i14.i

bb.af:                                            ; preds = %bb.ad
  %i.hd = atomicrmw volatile add ptr %i.gq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i14.i
end_hunk_7
begin_hunk_8_@_ZN6duckdb17AggregateFunction12BinaryUpdateINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSXXOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
          to label %bb.f unwind label %bb.an

bb.f:                                             ; preds = %bb.e
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76   ; 9 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !92
  %i.e = load ptr, ptr %6, align 8, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val.i = load ptr, ptr %i.d, align 8           ; 3 uses
  %.val10.i = load ptr, ptr %i.e, align 8         ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !100, !noalias !391 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null            ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !noalias !391
  %.fr.i.i = freeze ptr %i.i                      ; 3 uses
  %.not.i28.i.i = icmp eq ptr %.fr.i.i, null      ; 3 uses
  %or.cond.i.i = and i1 %.not.i.i.i, %.not.i28.i.i
  %.not27.i.i = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %or.cond.i.i, label %.preheader.i.i, label %.preheader7.i.i

.preheader7.i.i:                                  ; preds = %bb.f
  br i1 %.not27.i.i, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSXXOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader7.i.i
  %.not.i29.i.i = icmp eq ptr %.val.i, null       ; 2 uses
  %.not.i30.i.i = icmp eq ptr %.val10.i, null     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  br i1 %.not.i.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.h
  %.0269.us.i.i = phi i64 [ %i.ai, %bb.h ], [ 0, %.lr.ph.i.i ] ; 3 uses
  br i1 %.not.i30.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.i.i
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %.0269.us.i.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3, !noalias !391
  %i.n = zext i32 %i.m to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us.i.i: ; preds = %bb.g, %.lr.ph.split.us.i.i
  %i.o = phi i64 [ %i.n, %bb.g ], [ %.0269.us.i.i, %.lr.ph.split.us.i.i ] ; 3 uses
  br i1 %.not.i28.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.us.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.us.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us.i.i
  %i.p = lshr i64 %i.o, 6
  %i.q = and i64 %i.o, 63
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr.i.i, i64 %i.p
  %i.s = load i64, ptr %i.r, align 8, !tbaa !102
  %i.t = shl nuw i64 1, %i.q
  %i.u = and i64 %i.s, %i.t
  %.not6.us.i.i = icmp eq i64 %i.u, 0
  br i1 %.not6.us.i.i, label %bb.h, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.us.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.us.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us.i.i
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.o
  %.val27.us.i.i = load double, ptr %i.v, align 8, !tbaa !106, !alias.scope !386, !noalias !389 ; 2 uses
  %i.w = load <2 x i64>, ptr %3, align 8, !tbaa !102, !alias.scope !389, !noalias !386
  %i.x = add <2 x i64> %i.w, splat (i64 1)        ; 2 uses
  store <2 x i64> %i.x, ptr %3, align 8, !tbaa !102, !alias.scope !389, !noalias !386
  %i.y = load double, ptr %i.j, align 8, !tbaa !224, !alias.scope !389, !noalias !386 ; 2 uses
  %i.z = fsub double %.val27.us.i.i, %i.y         ; 2 uses
  %i.aa = extractelement <2 x i64> %i.x, i64 1
  %i.ab = uitofp i64 %i.aa to double
  %i.ac = fdiv double %i.z, %i.ab
  %i.ad = fadd double %i.y, %i.ac                 ; 2 uses
  %i.ae = fsub double %.val27.us.i.i, %i.ad
  %i.af = fmul double %i.z, %i.ae
  %i.ag = load double, ptr %i.k, align 8, !tbaa !225, !alias.scope !389, !noalias !386
  %i.ah = fadd double %i.ag, %i.af
  store double %i.ad, ptr %i.j, align 8, !tbaa !224, !alias.scope !389, !noalias !386
  store double %i.ah, ptr %i.k, align 8, !tbaa !225, !alias.scope !389, !noalias !386
  br label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.us.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.us.i.i
  %i.ai = add nuw i64 %.0269.us.i.i, 1            ; 2 uses
  %exitcond39.not.i.i = icmp eq i64 %i.ai, %4
  br i1 %exitcond39.not.i.i, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSXXOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !392

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  br i1 %.not.i28.i.i, label %.lr.ph.split.split.us.i.i, label %.lr.ph.split.split.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.i.i, %bb.k
  %.0269.us10.i.i = phi i64 [ %i.bk, %bb.k ], [ 0, %.lr.ph.split.i.i ] ; 5 uses
  br i1 %.not.i29.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us11.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.split.us.i.i
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0269.us10.i.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3, !noalias !391
  %i.al = zext i32 %i.ak to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us11.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us11.i.i: ; preds = %bb.i, %.lr.ph.split.split.us.i.i
  %i.am = phi i64 [ %i.al, %bb.i ], [ %.0269.us10.i.i, %.lr.ph.split.split.us.i.i ] ; 2 uses
  br i1 %.not.i30.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us12.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us11.i.i
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %.0269.us10.i.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3, !noalias !391
  %i.ap = zext i32 %i.ao to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us12.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us12.i.i: ; preds = %bb.j, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us11.i.i
  %i.aq = phi i64 [ %i.ap, %bb.j ], [ %.0269.us10.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us11.i.i ]
  %i.ar = lshr i64 %i.am, 6
  %i.as = and i64 %i.am, 63
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ar
  %i.au = load i64, ptr %i.at, align 8, !tbaa !102, !noalias !391
  %i.av = shl nuw i64 1, %i.as
  %i.aw = and i64 %i.au, %i.av
  %.not.us.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.us.i.i, label %bb.k, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us13.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us13.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us12.i.i
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.aq
  %.val27.us15.i.i = load double, ptr %i.ax, align 8, !tbaa !106, !alias.scope !386, !noalias !389 ; 2 uses
  %i.ay = load <2 x i64>, ptr %3, align 8, !tbaa !102, !alias.scope !389, !noalias !386
  %i.az = add <2 x i64> %i.ay, splat (i64 1)      ; 2 uses
  store <2 x i64> %i.az, ptr %3, align 8, !tbaa !102, !alias.scope !389, !noalias !386
  %i.ba = load double, ptr %i.j, align 8, !tbaa !224, !alias.scope !389, !noalias !386 ; 2 uses
  %i.bb = fsub double %.val27.us15.i.i, %i.ba     ; 2 uses
  %i.bc = extractelement <2 x i64> %i.az, i64 1
  %i.bd = uitofp i64 %i.bc to double
  %i.be = fdiv double %i.bb, %i.bd
  %i.bf = fadd double %i.ba, %i.be                ; 2 uses
  %i.bg = fsub double %.val27.us15.i.i, %i.bf
  %i.bh = fmul double %i.bb, %i.bg
  %i.bi = load double, ptr %i.k, align 8, !tbaa !225, !alias.scope !389, !noalias !386
  %i.bj = fadd double %i.bi, %i.bh
  store double %i.bf, ptr %i.j, align 8, !tbaa !224, !alias.scope !389, !noalias !386
  store double %i.bj, ptr %i.k, align 8, !tbaa !225, !alias.scope !389, !noalias !386
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us13.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us12.i.i
  %i.bk = add nuw i64 %.0269.us10.i.i, 1          ; 2 uses
  %exitcond38.not.i.i = icmp eq i64 %i.bk, %4
  br i1 %exitcond38.not.i.i, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSXXOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i, label %.lr.ph.split.split.us.i.i, !llvm.loop !392

.preheader.i.i:                                   ; preds = %bb.f
  br i1 %.not27.i.i, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSXXOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.lr.ph.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.lr.ph.i.i: ; preds = %.preheader.i.i
  %.not.i38.i.i = icmp eq ptr %.val10.i, null
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.promoted.i.i = load i64, ptr %3, align 8, !tbaa !102, !alias.scope !389, !noalias !386
  %.promoted17.i.i = load i64, ptr %i.bl, align 8, !tbaa !223, !alias.scope !389, !noalias !386 ; 5 uses
  %.promoted19.i.i = load double, ptr %i.bm, align 8, !tbaa !224, !alias.scope !389, !noalias !386 ; 4 uses
  %.promoted21.i.i = load double, ptr %i.bn, align 8, !tbaa !225, !alias.scope !389, !noalias !386 ; 4 uses
  br i1 %.not.i38.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.lr.ph.i.i
  %xtraiter = and i64 %4, 1
  %i.bo = icmp eq i64 %4, 1
  br i1 %i.bo, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader
  %unroll_iter = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.lr.ph.i.i
  %xtraiter49 = and i64 %4, 1
  %i.bp = icmp eq i64 %4, 1
  br i1 %i.bp, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader
  %unroll_iter60 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new
  %i.bq = phi double [ %.promoted21.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new ], [ %i.cl, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i ]
  %i.br = phi double [ %.promoted19.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new ], [ %i.ci, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i ] ; 2 uses
  %i.bs = phi i64 [ %.promoted17.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new ], [ %i.ce, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i ] ; 2 uses
  %.016.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new ], [ %i.cm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i ] ; 3 uses
  %niter61 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new ], [ %niter61.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.016.us.i.i
  %.val.us.i.i = load double, ptr %i.bt, align 8, !tbaa !106, !alias.scope !386, !noalias !389 ; 2 uses
  %i.bu = add i64 %i.bs, 1
  %i.bv = fsub double %.val.us.i.i, %i.br         ; 2 uses
  %i.bw = uitofp i64 %i.bu to double
  %i.bx = fdiv double %i.bv, %i.bw
  %i.by = fadd double %i.br, %i.bx                ; 3 uses
  %i.bz = fsub double %.val.us.i.i, %i.by
  %i.ca = fmul double %i.bv, %i.bz
  %i.cb = fadd double %i.bq, %i.ca
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.016.us.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.val.us.i.i.1 = load double, ptr %i.cd, align 8, !tbaa !106, !alias.scope !386, !noalias !389 ; 2 uses
  %i.ce = add i64 %i.bs, 2                        ; 3 uses
  %i.cf = fsub double %.val.us.i.i.1, %i.by       ; 2 uses
  %i.cg = uitofp i64 %i.ce to double
  %i.ch = fdiv double %i.cf, %i.cg
  %i.ci = fadd double %i.by, %i.ch                ; 4 uses
  %i.cj = fsub double %.val.us.i.i.1, %i.ci
  %i.ck = fmul double %i.cf, %i.cj
  %i.cl = fadd double %i.cb, %i.ck                ; 3 uses
  %i.cm = add nuw i64 %.016.us.i.i, 2             ; 2 uses
  %niter61.next.1 = add nuw i64 %niter61, 2       ; 2 uses
  %niter61.ncmp.1 = icmp eq i64 %niter61.next.1, %unroll_iter60
  br i1 %niter61.ncmp.1, label %..loopexit_crit_edge.i.i.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i, !llvm.loop !393

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.i.i, %bb.n
  %.0269.i.i = phi i64 [ %i.du, %bb.n ], [ 0, %.lr.ph.split.i.i ] ; 5 uses
  br i1 %.not.i29.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.split.i.i
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0269.i.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3, !noalias !391
  %i.cp = zext i32 %i.co to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.l, %.lr.ph.split.split.i.i
  %i.cq = phi i64 [ %i.cp, %bb.l ], [ %.0269.i.i, %.lr.ph.split.split.i.i ] ; 2 uses
  br i1 %.not.i30.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %.0269.i.i
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3, !noalias !391
  %i.ct = zext i32 %i.cs to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit31.i.i: ; preds = %bb.m, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.cu = phi i64 [ %i.ct, %bb.m ], [ %.0269.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i ] ; 3 uses
  %i.cv = lshr i64 %i.cq, 6
  %i.cw = and i64 %i.cq, 63
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cv
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !102, !noalias !391
  %i.cz = shl nuw i64 1, %i.cw
  %i.da = and i64 %i.cy, %i.cz
  %.not.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.i.i, label %bb.n, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.i.i
  %i.db = lshr i64 %i.cu, 6
  %i.dc = and i64 %i.cu, 63
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.fr.i.i, i64 %i.db
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !102
  %i.df = shl nuw i64 1, %i.dc
  %i.dg = and i64 %i.de, %i.df
  %.not6.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not6.i.i, label %bb.n, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.cu
  %.val27.i.i = load double, ptr %i.dh, align 8, !tbaa !106, !alias.scope !386, !noalias !389 ; 2 uses
  %i.di = load <2 x i64>, ptr %3, align 8, !tbaa !102, !alias.scope !389, !noalias !386
  %i.dj = add <2 x i64> %i.di, splat (i64 1)      ; 2 uses
  store <2 x i64> %i.dj, ptr %3, align 8, !tbaa !102, !alias.scope !389, !noalias !386
  %i.dk = load double, ptr %i.j, align 8, !tbaa !224, !alias.scope !389, !noalias !386 ; 2 uses
  %i.dl = fsub double %.val27.i.i, %i.dk          ; 2 uses
  %i.dm = extractelement <2 x i64> %i.dj, i64 1
  %i.dn = uitofp i64 %i.dm to double
  %i.do = fdiv double %i.dl, %i.dn
  %i.dp = fadd double %i.dk, %i.do                ; 2 uses
  %i.dq = fsub double %.val27.i.i, %i.dp
  %i.dr = fmul double %i.dl, %i.dq
  %i.ds = load double, ptr %i.k, align 8, !tbaa !225, !alias.scope !389, !noalias !386
  %i.dt = fadd double %i.ds, %i.dr
  store double %i.dp, ptr %i.j, align 8, !tbaa !224, !alias.scope !389, !noalias !386
  store double %i.dt, ptr %i.k, align 8, !tbaa !225, !alias.scope !389, !noalias !386
  br label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.i.i
  %i.du = add nuw i64 %.0269.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.du, %4
  br i1 %exitcond.not.i.i, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSXXOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i, label %.lr.ph.split.split.i.i, !llvm.loop !392

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new
  %i.dv = phi double [ %.promoted21.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new ], [ %i.ew, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i ]
  %i.dw = phi double [ %.promoted19.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new ], [ %i.et, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i ] ; 2 uses
  %i.dx = phi i64 [ %.promoted17.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new ], [ %i.ep, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i ] ; 2 uses
  %.016.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new ], [ %i.ex, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new ], [ %niter.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %.016.i.i
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3, !noalias !391
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ea
  %.val.i.i = load double, ptr %i.eb, align 8, !tbaa !106, !alias.scope !386, !noalias !389 ; 2 uses
  %i.ec = add i64 %i.dx, 1
  %i.ed = fsub double %.val.i.i, %i.dw            ; 2 uses
  %i.ee = uitofp i64 %i.ec to double
  %i.ef = fdiv double %i.ed, %i.ee
  %i.eg = fadd double %i.dw, %i.ef                ; 3 uses
  %i.eh = fsub double %.val.i.i, %i.eg
  %i.ei = fmul double %i.ed, %i.eh
  %i.ej = fadd double %i.dv, %i.ei
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %.016.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3, !noalias !391
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.en
  %.val.i.i.1 = load double, ptr %i.eo, align 8, !tbaa !106, !alias.scope !386, !noalias !389 ; 2 uses
  %i.ep = add i64 %i.dx, 2                        ; 3 uses
  %i.eq = fsub double %.val.i.i.1, %i.eg          ; 2 uses
  %i.er = uitofp i64 %i.ep to double
  %i.es = fdiv double %i.eq, %i.er
  %i.et = fadd double %i.eg, %i.es                ; 4 uses
  %i.eu = fsub double %.val.i.i.1, %i.et
  %i.ev = fmul double %i.eq, %i.eu
  %i.ew = fadd double %i.ej, %i.ev                ; 3 uses
  %i.ex = add nuw i64 %.016.i.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.i.i.loopexit37.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i, !llvm.loop !393

..loopexit_crit_edge.i.i.loopexit.unr-lcssa:      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i
  %lcmp.mod56.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod56.not, label %..loopexit_crit_edge.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader
  %.epil.init51 = phi double [ %.promoted21.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader ], [ %i.cl, %..loopexit_crit_edge.i.i.loopexit.unr-lcssa ]
  %.epil.init53 = phi double [ %.promoted19.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader ], [ %i.ci, %..loopexit_crit_edge.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init55 = phi i64 [ %.promoted17.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader ], [ %i.ce, %..loopexit_crit_edge.i.i.loopexit.unr-lcssa ]
  %.016.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader ], [ %i.cm, %..loopexit_crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod59 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod59)
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.016.us.i.i.epil.init
  %.val.us.i.i.epil = load double, ptr %i.ey, align 8, !tbaa !106, !alias.scope !386, !noalias !389 ; 2 uses
  %i.ez = add i64 %.epil.init55, 1
  %i.fa = fsub double %.val.us.i.i.epil, %.epil.init53 ; 2 uses
  %i.fb = uitofp i64 %i.ez to double
  %i.fc = fdiv double %i.fa, %i.fb
  %i.fd = fadd double %.epil.init53, %i.fc        ; 2 uses
  %i.fe = fsub double %.val.us.i.i.epil, %i.fd
  %i.ff = fmul double %i.fa, %i.fe
  %i.fg = fadd double %.epil.init51, %i.ff
  br label %..loopexit_crit_edge.i.i

..loopexit_crit_edge.i.i.loopexit37.unr-lcssa:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i.i.loopexit37.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader
  %.epil.init = phi double [ %.promoted21.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader ], [ %i.ew, %..loopexit_crit_edge.i.i.loopexit37.unr-lcssa ]
  %.epil.init43 = phi double [ %.promoted19.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader ], [ %i.et, %..loopexit_crit_edge.i.i.loopexit37.unr-lcssa ] ; 2 uses
  %.epil.init45 = phi i64 [ %.promoted17.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader ], [ %i.ep, %..loopexit_crit_edge.i.i.loopexit37.unr-lcssa ]
  %.016.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader ], [ %i.ex, %..loopexit_crit_edge.i.i.loopexit37.unr-lcssa ]
  %lcmp.mod48 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod48)
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %.016.i.i.epil.init
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !3, !noalias !391
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fj
  %.val.i.i.epil = load double, ptr %i.fk, align 8, !tbaa !106, !alias.scope !386, !noalias !389 ; 2 uses
  %i.fl = add i64 %.epil.init45, 1
  %i.fm = fsub double %.val.i.i.epil, %.epil.init43 ; 2 uses
  %i.fn = uitofp i64 %i.fl to double
  %i.fo = fdiv double %i.fm, %i.fn
  %i.fp = fadd double %.epil.init43, %i.fo        ; 2 uses
  %i.fq = fsub double %.val.i.i.epil, %i.fp
  %i.fr = fmul double %i.fm, %i.fq
  %i.fs = fadd double %.epil.init, %i.fr
  br label %..loopexit_crit_edge.i.i

..loopexit_crit_edge.i.i:                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader, %..loopexit_crit_edge.i.i.loopexit37.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader, %..loopexit_crit_edge.i.i.loopexit.unr-lcssa
  %.us-phi.i.i = phi double [ %i.fg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader ], [ %i.cl, %..loopexit_crit_edge.i.i.loopexit.unr-lcssa ], [ %i.ew, %..loopexit_crit_edge.i.i.loopexit37.unr-lcssa ], [ %i.fs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader ]
  %.us-phi23.i.i = phi double [ %i.fd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader ], [ %i.ci, %..loopexit_crit_edge.i.i.loopexit.unr-lcssa ], [ %i.et, %..loopexit_crit_edge.i.i.loopexit37.unr-lcssa ], [ %i.fp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader ]
  %.us-phi25.i.i = add i64 %.promoted.i.i, %4
  %.us-phi24.i.i = add i64 %.promoted17.i.i, %4
  store i64 %.us-phi25.i.i, ptr %3, align 8, !tbaa !102, !alias.scope !389, !noalias !386
  store i64 %.us-phi24.i.i, ptr %i.bl, align 8, !tbaa !223, !alias.scope !389, !noalias !386
  store double %.us-phi23.i.i, ptr %i.bm, align 8, !tbaa !224, !alias.scope !389, !noalias !386
  store double %.us-phi.i.i, ptr %i.bn, align 8, !tbaa !225, !alias.scope !389, !noalias !386
  br label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSXXOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i

_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSXXOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i: ; preds = %bb.n, %bb.k, %bb.h, %..loopexit_crit_edge.i.i, %.preheader.i.i, %.preheader7.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSXXOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 4 uses
  %i.fw = load atomic i64, ptr %i.fv acquire, align 8 ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 4294967297
  %i.fy = trunc i64 %i.fw to i32                  ; 2 uses
  br i1 %i.fx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.fv, align 8, !tbaa !53
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  store i32 0, ptr %i.fz, align 4, !tbaa !55
  %i.ga = load ptr, ptr %i.fu, align 8, !tbaa !50
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #21, !inline_history !394
  %i.gd = load ptr, ptr %i.fu, align 8, !tbaa !50
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #21, !inline_history !394
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.gg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.gg, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gh = add nsw i32 %i.fy, -1
  store i32 %i.gh, ptr %i.fv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.gi = atomicrmw volatile add ptr %i.fv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.fy, %bb.r ], [ %i.gi, %bb.s ]
  %i.gj = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.gj, label %bb.t, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !57

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #21
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.p, %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSXXOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i
  %i.gk = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 4 uses
  %i.gn = load atomic i64, ptr %i.gm acquire, align 8 ; 2 uses
  %i.go = icmp eq i64 %i.gn, 4294967297
  %i.gp = trunc i64 %i.gn to i32                  ; 2 uses
  br i1 %i.go, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.gm, align 8, !tbaa !53
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  store i32 0, ptr %i.gq, align 4, !tbaa !55
  %i.gr = load ptr, ptr %i.gl, align 8, !tbaa !50
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #21, !inline_history !395
  %i.gu = load ptr, ptr %i.gl, align 8, !tbaa !50
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #21, !inline_history !395
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.w:                                             ; preds = %bb.u
  %i.gx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.gx, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gy = add nsw i32 %i.gp, -1
  store i32 %i.gy, ptr %i.gm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.y:                                             ; preds = %bb.w
  %i.gz = atomicrmw volatile add ptr %i.gm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.gp, %bb.x ], [ %i.gz, %bb.y ]
  %i.ha = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.ha, label %bb.z, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !57

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #21
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.v, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i12.i = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i.i.i12.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i16.i, label %bb.aa

bb.aa:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 4 uses
  %i.he = load atomic i64, ptr %i.hd acquire, align 8 ; 2 uses
  %i.hf = icmp eq i64 %i.he, 4294967297
  %i.hg = trunc i64 %i.he to i32                  ; 2 uses
  br i1 %i.hf, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.hd, align 8, !tbaa !53
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  store i32 0, ptr %i.hh, align 4, !tbaa !55
  %i.hi = load ptr, ptr %i.hc, align 8, !tbaa !50
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(16) %i.hc) #21, !inline_history !394
  %i.hl = load ptr, ptr %i.hc, align 8, !tbaa !50
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(16) %i.hc) #21, !inline_history !394
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i16.i

bb.ac:                                            ; preds = %bb.aa
  %i.ho = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i13.i = icmp eq i8 %i.ho, 0
  br i1 %.not.i.i.i.i.i.i13.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hp = add nsw i32 %i.hg, -1
  store i32 %i.hp, ptr %i.hd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i14.i
end_hunk_8
begin_hunk_9_@_ZN6duckdb17AggregateFunction12BinaryUpdateINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSYYOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76   ; 9 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.f unwind label %bb.an

bb.f:                                             ; preds = %bb.e
  %i.d = load ptr, ptr %5, align 8, !tbaa !92
  %i.e = load ptr, ptr %6, align 8, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val.i = load ptr, ptr %i.d, align 8           ; 8 uses
  %.val10.i = load ptr, ptr %i.e, align 8         ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !411)
  call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !100, !noalias !416 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null            ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !noalias !416
  %.fr.i.i = freeze ptr %i.i                      ; 3 uses
  %.not.i28.i.i = icmp eq ptr %.fr.i.i, null      ; 3 uses
  %or.cond.i.i = and i1 %.not.i.i.i, %.not.i28.i.i
  %.not29.i.i = icmp eq i64 %4, 0                 ; 2 uses
  br i1 %or.cond.i.i, label %.preheader.i.i, label %.preheader8.i.i

.preheader8.i.i:                                  ; preds = %bb.f
  br i1 %.not29.i.i, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSYYOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader8.i.i
  %.not.i29.i.i = icmp eq ptr %.val.i, null       ; 3 uses
  %.not.i30.i.i = icmp eq ptr %.val10.i, null     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  br i1 %.not.i.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.i
  %.02610.us.i.i = phi i64 [ %i.am, %bb.i ], [ 0, %.lr.ph.i.i ] ; 5 uses
  br i1 %.not.i29.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.i.i
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.02610.us.i.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3, !noalias !416
  %i.n = zext i32 %i.m to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i: ; preds = %bb.g, %.lr.ph.split.us.i.i
  %i.o = phi i64 [ %i.n, %bb.g ], [ %.02610.us.i.i, %.lr.ph.split.us.i.i ]
  br i1 %.not.i30.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %.02610.us.i.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3, !noalias !416
  %i.r = zext i32 %i.q to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us.i.i: ; preds = %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i
  %i.s = phi i64 [ %i.r, %bb.h ], [ %.02610.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i ] ; 2 uses
  br i1 %.not.i28.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.us.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.us.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us.i.i
  %i.t = lshr i64 %i.s, 6
  %i.u = and i64 %i.s, 63
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.fr.i.i, i64 %i.t
  %i.w = load i64, ptr %i.v, align 8, !tbaa !102
  %i.x = shl nuw i64 1, %i.u
  %i.y = and i64 %i.w, %i.x
  %.not7.us.i.i = icmp eq i64 %i.y, 0
  br i1 %.not7.us.i.i, label %bb.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.us.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.us.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.us.i.i
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.o
  %.val27.us.i.i = load double, ptr %i.z, align 8, !tbaa !106, !alias.scope !411, !noalias !414 ; 2 uses
  %i.aa = load <2 x i64>, ptr %3, align 8, !tbaa !102, !alias.scope !414, !noalias !411
  %i.ab = add <2 x i64> %i.aa, splat (i64 1)      ; 2 uses
  store <2 x i64> %i.ab, ptr %3, align 8, !tbaa !102, !alias.scope !414, !noalias !411
  %i.ac = load double, ptr %i.j, align 8, !tbaa !224, !alias.scope !414, !noalias !411 ; 2 uses
  %i.ad = fsub double %.val27.us.i.i, %i.ac       ; 2 uses
  %i.ae = extractelement <2 x i64> %i.ab, i64 1
  %i.af = uitofp i64 %i.ae to double
  %i.ag = fdiv double %i.ad, %i.af
  %i.ah = fadd double %i.ac, %i.ag                ; 2 uses
  %i.ai = fsub double %.val27.us.i.i, %i.ah
  %i.aj = fmul double %i.ad, %i.ai
  %i.ak = load double, ptr %i.k, align 8, !tbaa !225, !alias.scope !414, !noalias !411
  %i.al = fadd double %i.ak, %i.aj
  store double %i.ah, ptr %i.j, align 8, !tbaa !224, !alias.scope !414, !noalias !411
  store double %i.al, ptr %i.k, align 8, !tbaa !225, !alias.scope !414, !noalias !411
  br label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.us.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.us.i.i
  %i.am = add nuw i64 %.02610.us.i.i, 1           ; 2 uses
  %exitcond41.not.i.i = icmp eq i64 %i.am, %4
  br i1 %exitcond41.not.i.i, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSYYOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !417

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  br i1 %.not.i28.i.i, label %.lr.ph.split.split.us.i.i, label %.lr.ph.split.split.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.i.i, %bb.k
  %.02610.us11.i.i = phi i64 [ %i.bk, %bb.k ], [ 0, %.lr.ph.split.i.i ] ; 3 uses
  br i1 %.not.i29.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us12.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.split.us.i.i
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.02610.us11.i.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3, !noalias !416
  %i.ap = zext i32 %i.ao to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us12.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us12.i.i: ; preds = %bb.j, %.lr.ph.split.split.us.i.i
  %i.aq = phi i64 [ %i.ap, %bb.j ], [ %.02610.us11.i.i, %.lr.ph.split.split.us.i.i ] ; 3 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = and i64 %i.aq, 63
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ar
  %i.au = load i64, ptr %i.at, align 8, !tbaa !102, !noalias !416
  %i.av = shl nuw i64 1, %i.as
  %i.aw = and i64 %i.av, %i.au
  %.not.us.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.us.i.i, label %bb.k, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us14.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us14.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us12.i.i
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.aq
  %.val27.us16.i.i = load double, ptr %i.ax, align 8, !tbaa !106, !alias.scope !411, !noalias !414 ; 2 uses
  %i.ay = load <2 x i64>, ptr %3, align 8, !tbaa !102, !alias.scope !414, !noalias !411
  %i.az = add <2 x i64> %i.ay, splat (i64 1)      ; 2 uses
  store <2 x i64> %i.az, ptr %3, align 8, !tbaa !102, !alias.scope !414, !noalias !411
  %i.ba = load double, ptr %i.j, align 8, !tbaa !224, !alias.scope !414, !noalias !411 ; 2 uses
  %i.bb = fsub double %.val27.us16.i.i, %i.ba     ; 2 uses
  %i.bc = extractelement <2 x i64> %i.az, i64 1
  %i.bd = uitofp i64 %i.bc to double
  %i.be = fdiv double %i.bb, %i.bd
  %i.bf = fadd double %i.ba, %i.be                ; 2 uses
  %i.bg = fsub double %.val27.us16.i.i, %i.bf
  %i.bh = fmul double %i.bb, %i.bg
  %i.bi = load double, ptr %i.k, align 8, !tbaa !225, !alias.scope !414, !noalias !411
  %i.bj = fadd double %i.bi, %i.bh
  store double %i.bf, ptr %i.j, align 8, !tbaa !224, !alias.scope !414, !noalias !411
  store double %i.bj, ptr %i.k, align 8, !tbaa !225, !alias.scope !414, !noalias !411
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us14.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us12.i.i
  %i.bk = add nuw i64 %.02610.us11.i.i, 1         ; 2 uses
  %exitcond40.not.i.i = icmp eq i64 %i.bk, %4
  br i1 %exitcond40.not.i.i, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSYYOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i, label %.lr.ph.split.split.us.i.i, !llvm.loop !417

.preheader.i.i:                                   ; preds = %bb.f
  br i1 %.not29.i.i, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSYYOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i, label %.lr.ph18.i.i

.lr.ph18.i.i:                                     ; preds = %.preheader.i.i
  %.not.i36.i.i = icmp eq ptr %.val.i, null
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.promoted.i.i = load i64, ptr %3, align 8, !tbaa !102, !alias.scope !414, !noalias !411
  %.promoted19.i.i = load i64, ptr %i.bl, align 8, !tbaa !223, !alias.scope !414, !noalias !411 ; 5 uses
  %.promoted21.i.i = load double, ptr %i.bm, align 8, !tbaa !224, !alias.scope !414, !noalias !411 ; 4 uses
  %.promoted23.i.i = load double, ptr %i.bn, align 8, !tbaa !225, !alias.scope !414, !noalias !411 ; 4 uses
  br i1 %.not.i36.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader: ; preds = %.lr.ph18.i.i
  %xtraiter = and i64 %4, 1
  %i.bo = icmp eq i64 %4, 1
  br i1 %i.bo, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader
  %unroll_iter = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader: ; preds = %.lr.ph18.i.i
  %xtraiter49 = and i64 %4, 1
  %i.bp = icmp eq i64 %4, 1
  br i1 %i.bp, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader
  %unroll_iter60 = and i64 %4, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new
  %i.bq = phi double [ %.promoted23.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new ], [ %i.cl, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i ]
  %i.br = phi double [ %.promoted21.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new ], [ %i.ci, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i ] ; 2 uses
  %i.bs = phi i64 [ %.promoted19.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new ], [ %i.ce, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i ] ; 2 uses
  %.017.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new ], [ %i.cm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i ] ; 3 uses
  %niter61 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader.new ], [ %niter61.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.017.us.i.i
  %.val.us.i.i = load double, ptr %i.bt, align 8, !tbaa !106, !alias.scope !411, !noalias !414 ; 2 uses
  %i.bu = add i64 %i.bs, 1
  %i.bv = fsub double %.val.us.i.i, %i.br         ; 2 uses
  %i.bw = uitofp i64 %i.bu to double
  %i.bx = fdiv double %i.bv, %i.bw
  %i.by = fadd double %i.br, %i.bx                ; 3 uses
  %i.bz = fsub double %.val.us.i.i, %i.by
  %i.ca = fmul double %i.bv, %i.bz
  %i.cb = fadd double %i.bq, %i.ca
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.017.us.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.val.us.i.i.1 = load double, ptr %i.cd, align 8, !tbaa !106, !alias.scope !411, !noalias !414 ; 2 uses
  %i.ce = add i64 %i.bs, 2                        ; 3 uses
  %i.cf = fsub double %.val.us.i.i.1, %i.by       ; 2 uses
  %i.cg = uitofp i64 %i.ce to double
  %i.ch = fdiv double %i.cf, %i.cg
  %i.ci = fadd double %i.by, %i.ch                ; 4 uses
  %i.cj = fsub double %.val.us.i.i.1, %i.ci
  %i.ck = fmul double %i.cf, %i.cj
  %i.cl = fadd double %i.cb, %i.ck                ; 3 uses
  %i.cm = add nuw i64 %.017.us.i.i, 2             ; 2 uses
  %niter61.next.1 = add nuw i64 %niter61, 2       ; 2 uses
  %niter61.ncmp.1 = icmp eq i64 %niter61.next.1, %unroll_iter60
  br i1 %niter61.ncmp.1, label %..loopexit_crit_edge.i.i.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i, !llvm.loop !418

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.split.i.i, %bb.n
  %.02610.i.i = phi i64 [ %i.du, %bb.n ], [ 0, %.lr.ph.split.i.i ] ; 5 uses
  br i1 %.not.i29.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.split.i.i
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.02610.i.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3, !noalias !416
  %i.cp = zext i32 %i.co to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.l, %.lr.ph.split.split.i.i
  %i.cq = phi i64 [ %i.cp, %bb.l ], [ %.02610.i.i, %.lr.ph.split.split.i.i ] ; 3 uses
  br i1 %.not.i30.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.val10.i, i64 %.02610.i.i
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3, !noalias !416
  %i.ct = zext i32 %i.cs to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit31.i.i: ; preds = %bb.m, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.cu = phi i64 [ %i.ct, %bb.m ], [ %.02610.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i ] ; 2 uses
  %i.cv = lshr i64 %i.cq, 6
  %i.cw = and i64 %i.cq, 63
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cv
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !102, !noalias !416
  %i.cz = shl nuw i64 1, %i.cw
  %i.da = and i64 %i.cy, %i.cz
  %.not.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.i.i, label %bb.n, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.i.i
  %i.db = lshr i64 %i.cu, 6
  %i.dc = and i64 %i.cu, 63
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.fr.i.i, i64 %i.db
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !102
  %i.df = shl nuw i64 1, %i.dc
  %i.dg = and i64 %i.de, %i.df
  %.not7.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not7.i.i, label %bb.n, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.i.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.cq
  %.val27.i.i = load double, ptr %i.dh, align 8, !tbaa !106, !alias.scope !411, !noalias !414 ; 2 uses
  %i.di = load <2 x i64>, ptr %3, align 8, !tbaa !102, !alias.scope !414, !noalias !411
  %i.dj = add <2 x i64> %i.di, splat (i64 1)      ; 2 uses
  store <2 x i64> %i.dj, ptr %3, align 8, !tbaa !102, !alias.scope !414, !noalias !411
  %i.dk = load double, ptr %i.j, align 8, !tbaa !224, !alias.scope !414, !noalias !411 ; 2 uses
  %i.dl = fsub double %.val27.i.i, %i.dk          ; 2 uses
  %i.dm = extractelement <2 x i64> %i.dj, i64 1
  %i.dn = uitofp i64 %i.dm to double
  %i.do = fdiv double %i.dl, %i.dn
  %i.dp = fadd double %i.dk, %i.do                ; 2 uses
  %i.dq = fsub double %.val27.i.i, %i.dp
  %i.dr = fmul double %i.dl, %i.dq
  %i.ds = load double, ptr %i.k, align 8, !tbaa !225, !alias.scope !414, !noalias !411
  %i.dt = fadd double %i.ds, %i.dr
  store double %i.dp, ptr %i.j, align 8, !tbaa !224, !alias.scope !414, !noalias !411
  store double %i.dt, ptr %i.k, align 8, !tbaa !225, !alias.scope !414, !noalias !411
  br label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit35.thread.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit31.i.i
  %i.du = add nuw i64 %.02610.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.du, %4
  br i1 %exitcond.not.i.i, label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSYYOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i, label %.lr.ph.split.split.i.i, !llvm.loop !417

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new
  %i.dv = phi double [ %.promoted23.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new ], [ %i.ew, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i ]
  %i.dw = phi double [ %.promoted21.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new ], [ %i.et, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i ] ; 2 uses
  %i.dx = phi i64 [ %.promoted19.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new ], [ %i.ep, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i ] ; 2 uses
  %.017.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new ], [ %i.ex, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader.new ], [ %niter.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.017.i.i
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3, !noalias !416
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ea
  %.val.i.i = load double, ptr %i.eb, align 8, !tbaa !106, !alias.scope !411, !noalias !414 ; 2 uses
  %i.ec = add i64 %i.dx, 1
  %i.ed = fsub double %.val.i.i, %i.dw            ; 2 uses
  %i.ee = uitofp i64 %i.ec to double
  %i.ef = fdiv double %i.ed, %i.ee
  %i.eg = fadd double %i.dw, %i.ef                ; 3 uses
  %i.eh = fsub double %.val.i.i, %i.eg
  %i.ei = fmul double %i.ed, %i.eh
  %i.ej = fadd double %i.dv, %i.ei
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.017.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3, !noalias !416
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.en
  %.val.i.i.1 = load double, ptr %i.eo, align 8, !tbaa !106, !alias.scope !411, !noalias !414 ; 2 uses
  %i.ep = add i64 %i.dx, 2                        ; 3 uses
  %i.eq = fsub double %.val.i.i.1, %i.eg          ; 2 uses
  %i.er = uitofp i64 %i.ep to double
  %i.es = fdiv double %i.eq, %i.er
  %i.et = fadd double %i.eg, %i.es                ; 4 uses
  %i.eu = fsub double %.val.i.i.1, %i.et
  %i.ev = fmul double %i.eq, %i.eu
  %i.ew = fadd double %i.ej, %i.ev                ; 3 uses
  %i.ex = add nuw i64 %.017.i.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.i.i.loopexit37.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i, !llvm.loop !418

..loopexit_crit_edge.i.i.loopexit.unr-lcssa:      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i
  %lcmp.mod56.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod56.not, label %..loopexit_crit_edge.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader
  %.epil.init51 = phi double [ %.promoted23.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader ], [ %i.cl, %..loopexit_crit_edge.i.i.loopexit.unr-lcssa ]
  %.epil.init53 = phi double [ %.promoted21.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader ], [ %i.ci, %..loopexit_crit_edge.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init55 = phi i64 [ %.promoted19.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader ], [ %i.ce, %..loopexit_crit_edge.i.i.loopexit.unr-lcssa ]
  %.017.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.preheader ], [ %i.cm, %..loopexit_crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod59 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod59)
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.017.us.i.i.epil.init
  %.val.us.i.i.epil = load double, ptr %i.ey, align 8, !tbaa !106, !alias.scope !411, !noalias !414 ; 2 uses
  %i.ez = add i64 %.epil.init55, 1
  %i.fa = fsub double %.val.us.i.i.epil, %.epil.init53 ; 2 uses
  %i.fb = uitofp i64 %i.ez to double
  %i.fc = fdiv double %i.fa, %i.fb
  %i.fd = fadd double %.epil.init53, %i.fc        ; 2 uses
  %i.fe = fsub double %.val.us.i.i.epil, %i.fd
  %i.ff = fmul double %i.fa, %i.fe
  %i.fg = fadd double %.epil.init51, %i.ff
  br label %..loopexit_crit_edge.i.i

..loopexit_crit_edge.i.i.loopexit37.unr-lcssa:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i.i.loopexit37.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader
  %.epil.init = phi double [ %.promoted23.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader ], [ %i.ew, %..loopexit_crit_edge.i.i.loopexit37.unr-lcssa ]
  %.epil.init43 = phi double [ %.promoted21.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader ], [ %i.et, %..loopexit_crit_edge.i.i.loopexit37.unr-lcssa ] ; 2 uses
  %.epil.init45 = phi i64 [ %.promoted19.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader ], [ %i.ep, %..loopexit_crit_edge.i.i.loopexit37.unr-lcssa ]
  %.017.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.preheader ], [ %i.ex, %..loopexit_crit_edge.i.i.loopexit37.unr-lcssa ]
  %lcmp.mod48 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod48)
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.017.i.i.epil.init
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !3, !noalias !416
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fj
  %.val.i.i.epil = load double, ptr %i.fk, align 8, !tbaa !106, !alias.scope !411, !noalias !414 ; 2 uses
  %i.fl = add i64 %.epil.init45, 1
  %i.fm = fsub double %.val.i.i.epil, %.epil.init43 ; 2 uses
  %i.fn = uitofp i64 %i.fl to double
  %i.fo = fdiv double %i.fm, %i.fn
  %i.fp = fadd double %.epil.init43, %i.fo        ; 2 uses
  %i.fq = fsub double %.val.i.i.epil, %i.fp
  %i.fr = fmul double %i.fm, %i.fq
  %i.fs = fadd double %.epil.init, %i.fr
  br label %..loopexit_crit_edge.i.i

..loopexit_crit_edge.i.i:                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader, %..loopexit_crit_edge.i.i.loopexit37.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader, %..loopexit_crit_edge.i.i.loopexit.unr-lcssa
  %.us-phi.i.i = phi double [ %i.fg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader ], [ %i.cl, %..loopexit_crit_edge.i.i.loopexit.unr-lcssa ], [ %i.ew, %..loopexit_crit_edge.i.i.loopexit37.unr-lcssa ], [ %i.fs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader ]
  %.us-phi25.i.i = phi double [ %i.fd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.i.i.epil.preheader ], [ %i.ci, %..loopexit_crit_edge.i.i.loopexit.unr-lcssa ], [ %i.et, %..loopexit_crit_edge.i.i.loopexit37.unr-lcssa ], [ %i.fp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.i.i.epil.preheader ]
  %.us-phi27.i.i = add i64 %.promoted.i.i, %4
  %.us-phi26.i.i = add i64 %.promoted19.i.i, %4
  store i64 %.us-phi27.i.i, ptr %3, align 8, !tbaa !102, !alias.scope !414, !noalias !411
  store i64 %.us-phi26.i.i, ptr %i.bl, align 8, !tbaa !223, !alias.scope !414, !noalias !411
  store double %.us-phi25.i.i, ptr %i.bm, align 8, !tbaa !224, !alias.scope !414, !noalias !411
  store double %.us-phi.i.i, ptr %i.bn, align 8, !tbaa !225, !alias.scope !414, !noalias !411
  br label %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSYYOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i

_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSYYOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i: ; preds = %bb.n, %bb.k, %bb.i, %..loopexit_crit_edge.i.i, %.preheader.i.i, %.preheader8.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSYYOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 4 uses
  %i.fw = load atomic i64, ptr %i.fv acquire, align 8 ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 4294967297
  %i.fy = trunc i64 %i.fw to i32                  ; 2 uses
  br i1 %i.fx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.fv, align 8, !tbaa !53
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  store i32 0, ptr %i.fz, align 4, !tbaa !55
  %i.ga = load ptr, ptr %i.fu, align 8, !tbaa !50
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #21, !inline_history !419
  %i.gd = load ptr, ptr %i.fu, align 8, !tbaa !50
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #21, !inline_history !419
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.gg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.gg, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gh = add nsw i32 %i.fy, -1
  store i32 %i.gh, ptr %i.fv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.gi = atomicrmw volatile add ptr %i.fv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.fy, %bb.r ], [ %i.gi, %bb.s ]
  %i.gj = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.gj, label %bb.t, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !57

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #21
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.p, %_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_12_GLOBAL__N_110RegrSStateEddNS2_16RegrSYYOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESH_RNS_12ValidityMaskESJ_.exit.i
  %i.gk = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 4 uses
  %i.gn = load atomic i64, ptr %i.gm acquire, align 8 ; 2 uses
  %i.go = icmp eq i64 %i.gn, 4294967297
  %i.gp = trunc i64 %i.gn to i32                  ; 2 uses
  br i1 %i.go, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.gm, align 8, !tbaa !53
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  store i32 0, ptr %i.gq, align 4, !tbaa !55
  %i.gr = load ptr, ptr %i.gl, align 8, !tbaa !50
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #21, !inline_history !420
  %i.gu = load ptr, ptr %i.gl, align 8, !tbaa !50
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #21, !inline_history !420
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.w:                                             ; preds = %bb.u
  %i.gx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.gx, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gy = add nsw i32 %i.gp, -1
  store i32 %i.gy, ptr %i.gm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.y:                                             ; preds = %bb.w
  %i.gz = atomicrmw volatile add ptr %i.gm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.gp, %bb.x ], [ %i.gz, %bb.y ]
  %i.ha = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.ha, label %bb.z, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !57

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #21
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.v, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i12.i = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i.i.i12.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i16.i, label %bb.aa

bb.aa:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 4 uses
  %i.he = load atomic i64, ptr %i.hd acquire, align 8 ; 2 uses
  %i.hf = icmp eq i64 %i.he, 4294967297
  %i.hg = trunc i64 %i.he to i32                  ; 2 uses
  br i1 %i.hf, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.hd, align 8, !tbaa !53
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  store i32 0, ptr %i.hh, align 4, !tbaa !55
  %i.hi = load ptr, ptr %i.hc, align 8, !tbaa !50
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(16) %i.hc) #21, !inline_history !419
  %i.hl = load ptr, ptr %i.hc, align 8, !tbaa !50
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(16) %i.hc) #21, !inline_history !419
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i16.i

bb.ac:                                            ; preds = %bb.aa
  %i.ho = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i13.i = icmp eq i8 %i.ho, 0
  br i1 %.not.i.i.i.i.i.i13.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hp = add nsw i32 %i.hg, -1
  store i32 %i.hp, ptr %i.hd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i14.i
end_hunk_9
