Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_core_functions_distributive?download=true
inline.NumInlined: 35645
inline.NumDeleted: 8765
loop-unroll.NumCompletelyUnrolled: 340
loop-unroll.NumRuntimeUnrolled: 607
loop-unroll.NumUnrolled: 947
begin_hunk_0_@_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE:bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i8 12, ptr %i.a, align 1, !tbaa !458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.g = load i8, ptr %i.c, align 1, !tbaa !457
  store i8 %i.g, ptr %i.b, align 1, !tbaa !458
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.j = load ptr, ptr %1, align 8, !tbaa !394    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #27
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !4026 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !562
  %i.d = icmp eq i8 %i.c, 12
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i8 12, ptr %i.a, align 1, !tbaa !458
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.h = load ptr, ptr %1, align 8, !tbaa !394    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #27
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_117KurtosisOperationINS0_26KurtosisFlagBiasCorrectionEE8FinalizeIdNS0_13KurtosisStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !4027 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !628    ; 2 uses
  %i.b = uitofp i64 %i.a to double                ; 5 uses
  %i.c = icmp ult i64 %i.a, 4
  br i1 %i.c, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fdiv double 1.000000e+00, %i.b           ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !630 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !629 ; 7 uses
  %i.i = fmul double %i.h, %i.h                   ; 2 uses
  %i.j = fneg double %i.i
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double %i.d, double %i.f)
  %i.l = fcmp oeq double %i.k, 0.000000e+00
  br i1 %i.l, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = fpext double %i.d to x86_fp80
  %i.n = fpext double %i.f to x86_fp80
  %i.o = fpext double %i.i to x86_fp80
  %i.p = fneg x86_fp80 %i.o
  %i.q = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %i.p, x86_fp80 %i.m, x86_fp80 %i.n)
  %i.r = fcmp oeq x86_fp80 %i.q, 0.000000e+00
  br i1 %i.r, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load double, ptr %i.s, align 8, !tbaa !632
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load double, ptr %i.u, align 8, !tbaa !631
  %i.w = tail call double @pow(double noundef %i.h, double noundef 4.000000e+00) #27, !tbaa !178
  %i.x = tail call double @pow(double noundef %i.d, double noundef 3.000000e+00) #27, !tbaa !178
  %i.y = fneg double %i.h                         ; 2 uses
  %i.z = fmul double %i.h, %i.y
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double %i.d, double %i.f)
  %i.ab = fmul double %i.d, %i.aa                 ; 3 uses
  %i.ac = fcmp ugt double %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.ad = fmul double %i.w, -3.000000e+00
  %i.ae = fmul double %i.f, 6.000000e+00
  %i.af = fmul double %i.ae, %i.h
  %i.ag = fmul double %i.h, %i.af
  %i.ah = fmul double %i.d, %i.ag
  %i.ai = fmul double %i.v, 4.000000e+00
  %i.aj = fmul double %i.ai, %i.y
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.d, double %i.t)
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.d, double %i.ak)
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.x, double %i.al)
  %i.an = fmul double %i.d, %i.am
  %i.ao = fadd double %i.b, -1.000000e+00         ; 2 uses
  %i.ap = fadd nnan double %i.b, 1.000000e+00
  %i.aq = fmul double %i.ap, %i.an
  %i.ar = fmul double %i.ab, %i.ab
  %i.as = fdiv double %i.aq, %i.ar
  %i.at = tail call double @llvm.fmuladd.f64(double %i.ao, double -3.000000e+00, double %i.as)
  %i.au = fmul double %i.ao, %i.at
  %i.av = fadd nnan ninf double %i.b, -2.000000e+00
  %i.aw = fadd nnan ninf double %i.b, -3.000000e+00
  %i.ax = fmul nnan double %i.av, %i.aw
  %i.ay = fdiv double %i.au, %i.ax                ; 2 uses
  store double %i.ay, ptr %1, align 8, !tbaa !633
  %i.az = tail call noundef zeroext i1 @_ZN6duckdb5Value14DoubleIsFiniteEd(double noundef %i.ay)
  br i1 %i.az, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.ba, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.m unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]  ; 2 uses
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bd = load ptr, ptr %3, align 8, !tbaa !394   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.bd) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.0, label %bb.j, label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.0, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn55 = phi { ptr, i32 } [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ba) #27
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn54 = phi { ptr, i32 } [ %.pn55, %bb.j ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn54

.sink.split:                                      ; preds = %bb.a, %bb.d, %bb.b, %bb.c
  tail call void @_ZN6duckdb21AggregateFinalizeData10ReturnNullEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.e
  ret void

bb.m:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #21

declare noundef zeroext i1 @_ZN6duckdb5Value14DoubleIsFiniteEd(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_113KurtosisStateENS2_17KurtosisOperationINS2_28KurtosisFlagNoBiasCorrectionEEELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 40)) %1) #6 align 2 !guid !4028 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_113KurtosisStateEdNS2_17KurtosisOperationINS2_28KurtosisFlagNoBiasCorrectionEEEEEvPNS_6VectorERNS_18AggregateInputDataEmRS7_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 !guid !4058 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !453
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !453
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !454  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !455
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_113KurtosisStateEdNS2_17KurtosisOperationINS2_28KurtosisFlagNoBiasCorrectionEEEEEvRNS_6VectorES8_RNS_18AggregateInputDataEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !456  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !457
  %i.p = icmp eq i8 %i.o, 8
  br i1 %i.p, label %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_113KurtosisStateEEEPT_RNS_6VectorE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  %i.q = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i8 8, ptr %i.c, align 1, !tbaa !458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.r = load i8, ptr %i.n, align 1, !tbaa !457
  store i8 %i.r, ptr %i.d, align 1, !tbaa !458
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.i unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i37.i = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.u = load ptr, ptr %7, align 8, !tbaa !394    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.u) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br i1 %.0.i.i37.i, label %bb.h, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br i1 %.0.i.i37.i, label %bb.h, label %common.resume.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn10.i.i.i = phi { ptr, i32 } [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.q) #27
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.bq, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.i, %bb.bq ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn10.i.i.i, %bb.h ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %.pn10.i.i.i.i, %bb.q ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.i:                                             ; preds = %bb.f
  unreachable

_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_113KurtosisStateEEEPT_RNS_6VectorE.exit.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val.i.i = load ptr, ptr %i.x, align 8, !tbaa !456
  %i.y = load ptr, ptr %.val.i.i, align 8, !tbaa !625 ; 6 uses
  %.not.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_113KurtosisStateEdNS2_17KurtosisOperationINS2_28KurtosisFlagNoBiasCorrectionEEEEEvRNS_6VectorES8_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_113KurtosisStateEEEPT_RNS_6VectorE.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.y, align 8, !tbaa !628
end_hunk_0
begin_hunk_1_@_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_19SkewStateEdNS2_17SkewnessOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm:bb.a

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i33.i.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.preheader
  %.epil.init111 = phi double [ %.promoted10.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.preheader ], [ %i.gj, %..loopexit_crit_edge.i33.i.loopexit.unr-lcssa ]
  %.04.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.preheader ], [ %i.gk, %..loopexit_crit_edge.i33.i.loopexit.unr-lcssa ]
  %.epil.init113 = phi <2 x double> [ %i.fo, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.preheader ], [ %i.gh, %..loopexit_crit_edge.i33.i.loopexit.unr-lcssa ]
  %lcmp.mod117 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod117)
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %.04.us.i.i.epil.init
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !633, !alias.scope !10024 ; 3 uses
  %i.ij = call double @pow(double noundef %i.ii, double noundef 2.000000e+00) #27, !tbaa !178, !noalias !10026
  %i.ik = insertelement <2 x double> poison, double %i.ii, i64 0
  %i.il = insertelement <2 x double> %i.ik, double %i.ij, i64 1
  %i.im = fadd <2 x double> %.epil.init113, %i.il
  %i.in = call double @pow(double noundef %i.ii, double noundef 3.000000e+00) #27, !tbaa !178, !noalias !10026
  %i.io = fadd double %.epil.init111, %i.in
  br label %..loopexit_crit_edge.i33.i

..loopexit_crit_edge.i33.i.loopexit74.unr-lcssa:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i
  %lcmp.mod103.not = icmp eq i64 %xtraiter98, 0
  br i1 %lcmp.mod103.not, label %..loopexit_crit_edge.i33.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil.preheader: ; preds = %..loopexit_crit_edge.i33.i.loopexit74.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.preheader
  %.epil.init100 = phi double [ %.promoted10.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.preheader ], [ %i.if, %..loopexit_crit_edge.i33.i.loopexit74.unr-lcssa ]
  %.04.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.preheader ], [ %i.ig, %..loopexit_crit_edge.i33.i.loopexit74.unr-lcssa ]
  %.epil.init102 = phi <2 x double> [ %i.fo, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.preheader ], [ %i.id, %..loopexit_crit_edge.i33.i.loopexit74.unr-lcssa ]
  %lcmp.mod106 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod106)
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i.epil.init
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !178, !noalias !10026
  %i.ir = zext i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.ir
  %i.it = load double, ptr %i.is, align 8, !tbaa !633, !alias.scope !10024 ; 3 uses
  %i.iu = call double @pow(double noundef %i.it, double noundef 2.000000e+00) #27, !tbaa !178, !noalias !10026
  %i.iv = insertelement <2 x double> poison, double %i.it, i64 0
  %i.iw = insertelement <2 x double> %i.iv, double %i.iu, i64 1
  %i.ix = fadd <2 x double> %.epil.init102, %i.iw
  %i.iy = call double @pow(double noundef %i.it, double noundef 3.000000e+00) #27, !tbaa !178, !noalias !10026
  %i.iz = fadd double %.epil.init100, %i.iy
  br label %..loopexit_crit_edge.i33.i

..loopexit_crit_edge.i33.i:                       ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil.preheader, %..loopexit_crit_edge.i33.i.loopexit74.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil.preheader, %..loopexit_crit_edge.i33.i.loopexit.unr-lcssa
  %.us-phi.i.i = phi double [ %i.io, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil.preheader ], [ %i.gj, %..loopexit_crit_edge.i33.i.loopexit.unr-lcssa ], [ %i.if, %..loopexit_crit_edge.i33.i.loopexit74.unr-lcssa ], [ %i.iz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil.preheader ]
  %i.ja = phi <2 x double> [ %i.im, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us.i.i.epil.preheader ], [ %i.gh, %..loopexit_crit_edge.i33.i.loopexit.unr-lcssa ], [ %i.id, %..loopexit_crit_edge.i33.i.loopexit74.unr-lcssa ], [ %i.ix, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.i.i.epil.preheader ]
  %.us-phi14.i.i = add i64 %.promoted.i32.i, %4
  store i64 %.us-phi14.i.i, ptr %3, align 8, !tbaa !1804, !alias.scope !10025
  store <2 x double> %i.ja, ptr %i.fm, align 8, !tbaa !633, !alias.scope !10025
  store double %.us-phi.i.i, ptr %i.fn, align 8, !tbaa !1807, !alias.scope !10025
  br label %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_19SkewStateEdNS2_17SkewnessOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i

_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_19SkewStateEdNS2_17SkewnessOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i: ; preds = %bb.m, %bb.k, %..loopexit_crit_edge.i33.i, %.preheader.i31.i, %.preheader1.i.i
  %i.jb = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !419 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_19SkewStateEdNS2_17SkewnessOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8 ; 4 uses
  %i.je = load atomic i64, ptr %i.jd acquire, align 8 ; 2 uses
  %i.jf = icmp eq i64 %i.je, 4294967297
  %i.jg = trunc i64 %i.je to i32                  ; 2 uses
  br i1 %i.jf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.jd, align 8, !tbaa !421
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 12
  store i32 0, ptr %i.jh, align 4, !tbaa !422
  %i.ji = load ptr, ptr %i.jc, align 8, !tbaa !418
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.jk = load ptr, ptr %i.jj, align 8
  call void %i.jk(ptr noundef nonnull align 8 dereferenceable(16) %i.jc) #27, !inline_history !10018
  %i.jl = load ptr, ptr %i.jc, align 8, !tbaa !418
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 24
  %i.jn = load ptr, ptr %i.jm, align 8
  call void %i.jn(ptr noundef nonnull align 8 dereferenceable(16) %i.jc) #27, !inline_history !10018
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.jo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !393
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.jo, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.jp = add nsw i32 %i.jg, -1
  store i32 %i.jp, ptr %i.jd, align 8, !tbaa !178
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.jq = atomicrmw volatile add ptr %i.jd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.jg, %bb.q ], [ %i.jq, %bb.r ]
  %i.jr = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.jr, label %bb.s, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i, !prof !423

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jc) #27
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i.i:         ; preds = %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.o, %_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_12_GLOBAL__N_19SkewStateEdNS2_17SkewnessOperationEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE.exit.i
  %i.js = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !419 ; 8 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8 ; 4 uses
  %i.jv = load atomic i64, ptr %i.ju acquire, align 8 ; 2 uses
  %i.jw = icmp eq i64 %i.jv, 4294967297
  %i.jx = trunc i64 %i.jv to i32                  ; 2 uses
  br i1 %i.jw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.ju, align 8, !tbaa !421
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 12
  store i32 0, ptr %i.jy, align 4, !tbaa !422
  %i.jz = load ptr, ptr %i.jt, align 8, !tbaa !418
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef nonnull align 8 dereferenceable(16) %i.jt) #27, !inline_history !10019
  %i.kc = load ptr, ptr %i.jt, align 8, !tbaa !418
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8
  call void %i.ke(ptr noundef nonnull align 8 dereferenceable(16) %i.jt) #27, !inline_history !10019
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

bb.v:                                             ; preds = %bb.t
  %i.kf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !393
  %.not.i.i.i.i.i2.i.i = icmp eq i8 %i.kf, 0
  br i1 %.not.i.i.i.i.i2.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.kg = add nsw i32 %i.jx, -1
  store i32 %i.kg, ptr %i.ju, align 8, !tbaa !178
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

bb.x:                                             ; preds = %bb.v
  %i.kh = atomicrmw volatile add ptr %i.ju, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i4.i.i = phi i32 [ %i.jx, %bb.w ], [ %i.kh, %bb.x ]
  %i.ki = icmp eq i32 %.0.i.i.i.i.i.i4.i.i, 1
  br i1 %i.ki, label %bb.y, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i, !prof !423

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jt) #27
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i:       ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i, %bb.u, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_19SkewStateEdNS2_17SkewnessOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.z:                                             ; preds = %bb.h, %bb.g
  %i.kj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.kj

_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_19SkewStateEdNS2_17SkewnessOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit: ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, %._crit_edge.i.i, %bb.d, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_117SkewnessOperation8FinalizeIdNS0_9SkewStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !10027 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !1804   ; 2 uses
  %i.b = icmp ult i64 %i.a, 3
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb21AggregateFinalizeData10ReturnNullEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.c = uitofp i64 %i.a to double                ; 4 uses
  %i.d = fdiv double 1.000000e+00, %i.c           ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !1806 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !1805 ; 3 uses
  %i.i = fneg double %i.h                         ; 2 uses
  %i.j = fmul double %i.h, %i.i
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double %i.d, double %i.f)
  %i.l = fmul double %i.d, %i.k
  %i.m = tail call noundef double @pow(double noundef %i.l, double noundef 3.000000e+00) #27, !tbaa !178 ; 2 uses
  %i.n = fcmp olt double %i.m, 0.000000e+00
  %spec.store.select = select i1 %i.n, double 0.000000e+00, double %i.m ; 2 uses
  %i.o = fcmp oeq double %spec.store.select, 0.000000e+00
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store double +qnan, ptr %1, align 8, !tbaa !633
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %sqrt = tail call double @llvm.sqrt.f64(double %spec.store.select)
  %i.p = fadd nnan ninf double %i.c, -1.000000e+00
  %i.q = fmul nnan double %i.p, %i.c
  %i.r = tail call double @sqrt(double noundef %i.q) #27, !tbaa !178
  %i.s = fadd nnan ninf double %i.c, -2.000000e+00
  %i.t = fdiv double %i.r, %i.s
  %i.u = fmul double %i.d, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load double, ptr %i.v, align 8, !tbaa !1807
  %i.x = fmul double %i.f, 3.000000e+00
  %i.y = fmul double %i.x, %i.i
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double %i.d, double %i.w)
  %i.aa = tail call double @pow(double noundef %i.h, double noundef 3.000000e+00) #27, !tbaa !178
  %i.ab = fmul double %i.aa, 2.000000e+00
  %i.ac = fmul double %i.d, %i.ab
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.d, double %i.z)
  %i.ae = fmul double %i.u, %i.ad
  %i.af = fdiv double %i.ae, %sqrt                ; 2 uses
  store double %i.af, ptr %1, align 8, !tbaa !633
  %i.ag = tail call noundef zeroext i1 @_ZN6duckdb5Value14DoubleIsFiniteEd(double noundef %i.af)
  br i1 %i.ag, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.m unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]  ; 2 uses
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ak = load ptr, ptr %3, align 8, !tbaa !394   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.ak) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.0, label %bb.j, label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.0, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn38 = phi { ptr, i32 } [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ah) #27
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn37 = phi { ptr, i32 } [ %.pn38, %bb.j ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn37

bb.l:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void

bb.m:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZN6duckdb17AggregateFunction9StateSizeINS_12_GLOBAL__N_18BitStateIhEEEEmRKS0_(ptr nofree nonnull readnone align 8 captures(none) %0) #5 align 2 !guid !10028 {
bb.a:
  ret i64 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN6duckdb17AggregateFunction15StateInitializeINS_12_GLOBAL__N_18BitStateIhEENS2_15BitAndOperationELNS_23AggregateDestructorTypeE0EEEvRKS0_Ph(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) #6 align 2 !guid !10029 {
bb.a:
  store i8 0, ptr %1, align 1, !tbaa !1809
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction18UnaryScatterUpdateINS_12_GLOBAL__N_18BitStateIhEEaNS2_15BitAndOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmRS6_m(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 !guid !10059 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 23 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 15 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !453
  switch i8 %i.e, label %.thread.i [
    i8 2, label %bb.b
    i8 0, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %3, align 8, !tbaa !453
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !454  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.i, align 8, !tbaa !455
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb17AggregateExecutor12UnaryScatterINS_12_GLOBAL__N_18BitStateIhEEaNS2_15BitAndOperationEEEvRNS_6VectorES7_RNS_18AggregateInputDataEm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !457
  %i.n = icmp eq i8 %i.m, 8
  br i1 %i.n, label %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18BitStateIhEEEEPT_RNS_6VectorE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i8 8, ptr %i.c, align 1, !tbaa !458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.p = load i8, ptr %i.l, align 1, !tbaa !457
  store i8 %i.p, ptr %i.d, align 1, !tbaa !458
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.i unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i38.i = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.s = load ptr, ptr %7, align 8, !tbaa !394    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.s) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br i1 %.0.i.i38.i, label %bb.h, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br i1 %.0.i.i38.i, label %bb.h, label %common.resume.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn10.i.i.i = phi { ptr, i32 } [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.o) #27
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.de, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.i, %bb.de ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn10.i.i.i, %bb.h ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %.pn10.i.i.i.i, %bb.r ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.i:                                             ; preds = %bb.f
  unreachable

_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_18BitStateIhEEEEPT_RNS_6VectorE.exit.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !456
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val.i.i = load ptr, ptr %i.x, align 8, !tbaa !456
  %i.y = load ptr, ptr %.val.i.i, align 8, !tbaa !1811 ; 3 uses
end_hunk_1
