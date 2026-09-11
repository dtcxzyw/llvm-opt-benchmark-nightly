Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_core_functions_algebraic?download=true
inline.NumInlined: 3036
inline.NumDeleted: 743
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN6duckdb17AggregateFunction12StateCombineINS_12_GLOBAL__N_113KahanAvgStateENS2_21KahanAverageOperationEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm:bb.a
  store i8 8, ptr %i.a, align 1, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.t = load i8, ptr %i.p, align 1, !tbaa !61
  store i8 %i.t, ptr %i.b, align 1, !tbaa !95
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.k unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i9.i: ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume.sink.split.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.i.i12.i = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.w = load ptr, ptr %4, align 8, !tbaa !34     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i13.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.w) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.0.i.i.i12.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i14.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.0.i.i.i12.i, label %common.resume.sink.split.i, label %common.resume.i

bb.k:                                             ; preds = %bb.i
  unreachable

_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_113KahanAvgStateEEEPT_RNS_6VectorE.exit.i: ; preds = %_ZN6duckdb10FlatVector7GetDataIPKNS_12_GLOBAL__N_113KahanAvgStateEEEPT_RNS_6VectorE.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i15.i = load ptr, ptr %i.z, align 8, !tbaa !96
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_113KahanAvgStateENS2_21KahanAverageOperationEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_113KahanAvgStateEEEPT_RNS_6VectorE.exit.i, %.lr.ph.i
  %.01.i = phi i64 [ %i.ax, %.lr.ph.i ], [ 0, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_113KahanAvgStateEEEPT_RNS_6VectorE.exit.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.01.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !163 ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i15.i, i64 %.01.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !163 ; 4 uses
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !165
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !165
  %i.ag = add i64 %i.af, %i.ae
  store i64 %i.ag, ptr %i.ad, align 8, !tbaa !165
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !1094
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !65
  %i.am = fsub double %i.ai, %i.al                ; 2 uses
  %i.an = load double, ptr %i.aj, align 8, !tbaa !65 ; 2 uses
  %i.ao = fadd double %i.an, %i.am                ; 4 uses
  %i.ap = fsub double %i.ao, %i.an
  %i.aq = fsub double %i.ap, %i.am                ; 2 uses
  store double %i.aq, ptr %i.ak, align 8, !tbaa !65
  store double %i.ao, ptr %i.aj, align 8, !tbaa !65
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.as = load double, ptr %i.ar, align 8, !tbaa !1095
  %i.at = fsub double %i.as, %i.aq                ; 2 uses
  %i.au = fadd double %i.ao, %i.at                ; 2 uses
  %i.av = fsub double %i.au, %i.ao
  %i.aw = fsub double %i.av, %i.at
  store double %i.aw, ptr %i.ak, align 8, !tbaa !65
  store double %i.au, ptr %i.aj, align 8, !tbaa !65
  %i.ax = add nuw i64 %.01.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ax, %3
  br i1 %exitcond.not.i, label %_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_113KahanAvgStateENS2_21KahanAverageOperationEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm.exit, label %.lr.ph.i, !llvm.loop !1093

_ZN6duckdb17AggregateExecutor7CombineINS_12_GLOBAL__N_113KahanAvgStateENS2_21KahanAverageOperationEEEvRNS_6VectorES6_RNS_18AggregateInputDataEm.exit: ; preds = %.lr.ph.i, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_113KahanAvgStateEEEPT_RNS_6VectorE.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction13StateFinalizeINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataES6_mm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.e = load i8, ptr %0, align 8, !tbaa !93
  %i.f = icmp eq i8 %i.e, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 4 uses
  br i1 %i.f, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  %i.h = load i8, ptr %i.g, align 1, !tbaa !61
  %i.i = icmp eq i8 %i.h, 8
  br i1 %i.i, label %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_113KahanAvgStateEEEPT_RNS_6VectorE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i8 8, ptr %i.c, align 1, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.k = load i8, ptr %i.g, align 1, !tbaa !61
  store i8 %i.k, ptr %i.d, align 1, !tbaa !95
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %common.resume.sink.split.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.n = load ptr, ptr %7, align 8, !tbaa !34     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %.0.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %.0.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

common.resume.sink.split.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.sink.i = phi ptr [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ]
  call void @__cxa_free_exception(ptr %.sink.i) #22
  br label %common.resume.i

common.resume.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %common.resume.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.g:                                             ; preds = %bb.e
  unreachable

_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_113KahanAvgStateEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i = load ptr, ptr %i.q, align 8, !tbaa !96
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %2, ptr %9, align 8, !tbaa !116
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %1, ptr %i.t, align 8, !tbaa !118
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.u, align 8, !tbaa !120
  %i.v = load ptr, ptr %.val.i.i, align 8, !tbaa !163 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !165  ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_113KahanAvgStateEEEPT_RNS_6VectorE.exit.i
  call void @_ZN6duckdb21AggregateFinalizeData10ReturnNullEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZN6duckdb12_GLOBAL__N_121KahanAverageOperation8FinalizeIdNS0_13KahanAvgStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit.i

bb.i:                                             ; preds = %_ZN6duckdb14ConstantVector7GetDataIPNS_12_GLOBAL__N_113KahanAvgStateEEEPT_RNS_6VectorE.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = uitofp i64 %i.w to double
  %i.aa = load <2 x double>, ptr %i.y, align 8, !tbaa !65
  %i.ab = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fdiv <2 x double> %i.aa, %i.ac          ; 2 uses
  %shift = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ad, %shift
  %11 = extractelement <2 x double> %foldExtExtBinop, i64 0
  store double %11, ptr %i.s, align 8, !tbaa !65
  br label %_ZN6duckdb12_GLOBAL__N_121KahanAverageOperation8FinalizeIdNS0_13KahanAvgStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit.i

_ZN6duckdb12_GLOBAL__N_121KahanAverageOperation8FinalizeIdNS0_13KahanAvgStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %_ZN6duckdb17AggregateExecutor8FinalizeINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataES6_mm.exit

bb.j:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  %i.ae = load i8, ptr %i.g, align 1, !tbaa !61
  %i.af = icmp eq i8 %i.ae, 8
  br i1 %i.af, label %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_113KahanAvgStateEEEPT_RNS_6VectorE.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 8, ptr %i.a, align 1, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.ah = load i8, ptr %i.g, align 1, !tbaa !61
  store i8 %i.ah, ptr %i.b, align 1, !tbaa !95
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.o unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume.sink.split.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i1 [ false, %bb.m ], [ true, %bb.l ] ; 2 uses
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ak = load ptr, ptr %5, align 8, !tbaa !34    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.ak) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0.i.i.i.i, label %common.resume.sink.split.i, label %common.resume.i

bb.o:                                             ; preds = %bb.m
  unreachable

_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_113KahanAvgStateEEEPT_RNS_6VectorE.exit.i: ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !96
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %2, ptr %10, align 8, !tbaa !116
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %1, ptr %i.aq, align 8, !tbaa !118
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN6duckdb12_GLOBAL__N_121KahanAverageOperation8FinalizeIdNS0_13KahanAvgStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit20.i, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_113KahanAvgStateEEEPT_RNS_6VectorE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZN6duckdb17AggregateExecutor8FinalizeINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataES6_mm.exit

.lr.ph.i:                                         ; preds = %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_113KahanAvgStateEEEPT_RNS_6VectorE.exit.i, %_ZN6duckdb12_GLOBAL__N_121KahanAverageOperation8FinalizeIdNS0_13KahanAvgStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit20.i
  %.021.i = phi i64 [ %i.be, %_ZN6duckdb12_GLOBAL__N_121KahanAverageOperation8FinalizeIdNS0_13KahanAvgStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit20.i ], [ 0, %_ZN6duckdb10FlatVector7GetDataIPNS_12_GLOBAL__N_113KahanAvgStateEEEPT_RNS_6VectorE.exit.i ] ; 3 uses
  %i.as = add i64 %.021.i, %4                     ; 2 uses
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !120
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.021.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !163 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !165 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i
  call void @_ZN6duckdb21AggregateFinalizeData10ReturnNullEv(ptr noundef nonnull align 8 dereferenceable(24) %10)
  br label %_ZN6duckdb12_GLOBAL__N_121KahanAverageOperation8FinalizeIdNS0_13KahanAvgStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit20.i

bb.q:                                             ; preds = %.lr.ph.i
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.as
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.az = uitofp i64 %i.av to double
  %i.ba = load <2 x double>, ptr %i.ay, align 8, !tbaa !65
  %i.bb = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = fdiv <2 x double> %i.ba, %i.bc          ; 2 uses
  %shift10 = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop11 = fadd <2 x double> %i.bd, %shift10
  %12 = extractelement <2 x double> %foldExtExtBinop11, i64 0
  store double %12, ptr %i.ax, align 8, !tbaa !65
  br label %_ZN6duckdb12_GLOBAL__N_121KahanAverageOperation8FinalizeIdNS0_13KahanAvgStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit20.i

_ZN6duckdb12_GLOBAL__N_121KahanAverageOperation8FinalizeIdNS0_13KahanAvgStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit20.i: ; preds = %bb.q, %bb.p
  %i.be = add nuw i64 %.021.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.be, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1096

_ZN6duckdb17AggregateExecutor8FinalizeINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataES6_mm.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_121KahanAverageOperation8FinalizeIdNS0_13KahanAvgStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE.exit.i, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb17AggregateFunction11UnaryUpdateINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvPNS_6VectorERNS_18AggregateInputDataEmPhm(ptr noundef %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 %2, ptr nofree noundef captures(none) %3, i64 noundef %4) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !93
  switch i8 %i.a, label %bb.f [
    i8 2, label %bb.b
    i8 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !96
  %.val.i = load double, ptr %i.g, align 8, !tbaa !65
  %i.h = load i64, ptr %3, align 8, !tbaa !165
  %i.i = add i64 %i.h, %4
  store i64 %i.i, ptr %3, align 8, !tbaa !165
  %i.j = uitofp i64 %4 to double
  %i.k = fmul double %.val.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !65
  %i.o = fsub double %i.k, %i.n                   ; 2 uses
  %i.p = load double, ptr %i.l, align 8, !tbaa !65 ; 2 uses
  %i.q = fadd double %i.p, %i.o                   ; 2 uses
  %i.r = fsub double %i.q, %i.p
  %i.s = fsub double %i.r, %i.o
  store double %i.s, ptr %i.m, align 8, !tbaa !65
  store double %i.q, ptr %i.l, align 8, !tbaa !65
  br label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !96   ; 11 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  %i.v = add i64 %4, 63
  %i.w = lshr i64 %i.v, 6                         ; 3 uses
  %.not57.i.i = icmp eq i64 %i.w, 0
  br i1 %.not57.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %.lr.ph56.i.i

.lr.ph56.i.i:                                     ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !94, !noalias !1115 ; 2 uses
  %.not.i.i21.i = icmp eq ptr %i.y, null
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  br i1 %.not.i.i21.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i: ; preds = %.lr.ph56.i.i, %.loopexit.us.i.i
  %.054.us.i.i = phi i64 [ %i.be, %.loopexit.us.i.i ], [ 0, %.lr.ph56.i.i ]
  %.sroa.4.053.us.i.i = phi i64 [ %.sroa.4.1.lcssa.us.i.i, %.loopexit.us.i.i ], [ 0, %.lr.ph56.i.i ] ; 8 uses
  %i.ab = add i64 %.sroa.4.053.us.i.i, 64
  %i.ac = tail call noundef i64 @llvm.umin.i64(i64 %i.ab, i64 %4) ; 6 uses
  %i.ad = icmp ult i64 %.sroa.4.053.us.i.i, %i.ac
  br i1 %i.ad, label %.lr.ph47.us.i.i, label %.loopexit.us.i.i

.lr.ph47.us.i.i.new:                              ; preds = %.prol.loopexit68, %.lr.ph47.us.i.i.new
  %i.ae = phi double [ %i.ba, %.lr.ph47.us.i.i.new ], [ %.unr72, %.prol.loopexit68 ] ; 2 uses
  %i.af = phi double [ %i.bc, %.lr.ph47.us.i.i.new ], [ %.unr73, %.prol.loopexit68 ]
  %.sroa.4.146.us.i.i = phi i64 [ %i.bd, %.lr.ph47.us.i.i.new ], [ %.sroa.4.146.us.i.i.unr, %.prol.loopexit68 ] ; 5 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.4.146.us.i.i
  %.val28.us.i.i = load double, ptr %i.ag, align 8, !tbaa !65, !alias.scope !1113, !noalias !1114
  %i.ah = fsub double %.val28.us.i.i, %i.af       ; 2 uses
  %i.ai = fadd double %i.ae, %i.ah                ; 3 uses
  %i.aj = fsub double %i.ai, %i.ae
  %i.ak = fsub double %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.4.146.us.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.val28.us.i.i.1 = load double, ptr %i.am, align 8, !tbaa !65, !alias.scope !1113, !noalias !1114
  %i.an = fsub double %.val28.us.i.i.1, %i.ak     ; 2 uses
  %i.ao = fadd double %i.ai, %i.an                ; 3 uses
  %i.ap = fsub double %i.ao, %i.ai
  %i.aq = fsub double %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.4.146.us.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.val28.us.i.i.2 = load double, ptr %i.as, align 8, !tbaa !65, !alias.scope !1113, !noalias !1114
  %i.at = fsub double %.val28.us.i.i.2, %i.aq     ; 2 uses
  %i.au = fadd double %i.ao, %i.at                ; 3 uses
  %i.av = fsub double %i.au, %i.ao
  %i.aw = fsub double %i.av, %i.at
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.4.146.us.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.val28.us.i.i.3 = load double, ptr %i.ay, align 8, !tbaa !65, !alias.scope !1113, !noalias !1114
  %i.az = fsub double %.val28.us.i.i.3, %i.aw     ; 2 uses
  %i.ba = fadd double %i.au, %i.az                ; 3 uses
  %i.bb = fsub double %i.ba, %i.au
  %i.bc = fsub double %i.bb, %i.az                ; 2 uses
  %i.bd = add nuw i64 %.sroa.4.146.us.i.i, 4      ; 2 uses
  %exitcond69.not.i.i.3 = icmp eq i64 %i.bd, %i.ac
  br i1 %exitcond69.not.i.i.3, label %..loopexit_crit_edge.us.i.i, label %.lr.ph47.us.i.i.new, !llvm.loop !1100

.loopexit.us.i.i:                                 ; preds = %..loopexit_crit_edge.us.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i
  %.sroa.4.1.lcssa.us.i.i = phi i64 [ %i.ac, %..loopexit_crit_edge.us.i.i ], [ %.sroa.4.053.us.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i ]
  %i.be = add nuw nsw i64 %.054.us.i.i, 1         ; 2 uses
  %exitcond70.not.i.i = icmp eq i64 %i.be, %i.w
  br i1 %exitcond70.not.i.i, label %_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_12_GLOBAL__N_113KahanAvgStateEdNS2_21KahanAverageOperationEEEvRNS_6VectorERNS_18AggregateInputDataEPhm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i, !llvm.loop !1101

.lr.ph47.us.i.i:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread.us.i.i
  %.promoted.us.i.i = load i64, ptr %3, align 8, !tbaa !165, !alias.scope !1114, !noalias !1113
  %.promoted49.us.i.i = load double, ptr %i.aa, align 8, !tbaa !65, !alias.scope !1114, !noalias !1113 ; 2 uses
  %.promoted51.us.i.i = load double, ptr %i.z, align 8, !tbaa !65, !alias.scope !1114, !noalias !1113 ; 2 uses
  %i.bf = sub nuw i64 %i.ac, %.sroa.4.053.us.i.i
  %xtraiter69 = and i64 %i.bf, 3                  ; 2 uses
  %lcmp.mod70.not = icmp eq i64 %xtraiter69, 0
  br i1 %lcmp.mod70.not, label %.prol.loopexit68, label %.prol.preheader67

.prol.preheader67:                                ; preds = %.lr.ph47.us.i.i, %.prol.preheader67
  %i.bg = phi double [ %i.bk, %.prol.preheader67 ], [ %.promoted51.us.i.i, %.lr.ph47.us.i.i ] ; 2 uses
  %i.bh = phi double [ %i.bm, %.prol.preheader67 ], [ %.promoted49.us.i.i, %.lr.ph47.us.i.i ]
  %.sroa.4.146.us.i.i.prol = phi i64 [ %i.bn, %.prol.preheader67 ], [ %.sroa.4.053.us.i.i, %.lr.ph47.us.i.i ] ; 2 uses
  %prol.iter71 = phi i64 [ %prol.iter71.next, %.prol.preheader67 ], [ 0, %.lr.ph47.us.i.i ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.sroa.4.146.us.i.i.prol
  %.val28.us.i.i.prol = load double, ptr %i.bi, align 8, !tbaa !65, !alias.scope !1113, !noalias !1114
  %i.bj = fsub double %.val28.us.i.i.prol, %i.bh  ; 2 uses
  %i.bk = fadd double %i.bg, %i.bj                ; 4 uses
  %i.bl = fsub double %i.bk, %i.bg
  %i.bm = fsub double %i.bl, %i.bj                ; 3 uses
  %i.bn = add nuw i64 %.sroa.4.146.us.i.i.prol, 1 ; 2 uses
  %prol.iter71.next = add i64 %prol.iter71, 1     ; 2 uses
  %prol.iter71.cmp.not = icmp eq i64 %prol.iter71.next, %xtraiter69
  br i1 %prol.iter71.cmp.not, label %.prol.loopexit68, label %.prol.preheader67, !llvm.loop !1102

.prol.loopexit68:                                 ; preds = %.prol.preheader67, %.lr.ph47.us.i.i
  %.lcssa62.unr = phi double [ poison, %.lr.ph47.us.i.i ], [ %i.bk, %.prol.preheader67 ]
  %.lcssa61.unr = phi double [ poison, %.lr.ph47.us.i.i ], [ %i.bm, %.prol.preheader67 ]
  %.unr72 = phi double [ %.promoted51.us.i.i, %.lr.ph47.us.i.i ], [ %i.bk, %.prol.preheader67 ]
  %.unr73 = phi double [ %.promoted49.us.i.i, %.lr.ph47.us.i.i ], [ %i.bm, %.prol.preheader67 ]
  %.sroa.4.146.us.i.i.unr = phi i64 [ %.sroa.4.053.us.i.i, %.lr.ph47.us.i.i ], [ %i.bn, %.prol.preheader67 ]
  %i.bo = sub i64 %.sroa.4.053.us.i.i, %i.ac
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %..loopexit_crit_edge.us.i.i, label %.lr.ph47.us.i.i.new

..loopexit_crit_edge.us.i.i:                      ; preds = %.lr.ph47.us.i.i.new, %.prol.loopexit68
  %.lcssa62 = phi double [ %.lcssa62.unr, %.prol.loopexit68 ], [ %i.ba, %.lr.ph47.us.i.i.new ]
  %.lcssa61 = phi double [ %.lcssa61.unr, %.prol.loopexit68 ], [ %i.bc, %.lr.ph47.us.i.i.new ]
  %i.bq = sub i64 %i.ac, %.sroa.4.053.us.i.i
  %i.br = add i64 %i.bq, %.promoted.us.i.i
  store i64 %i.br, ptr %3, align 8, !tbaa !165, !alias.scope !1114, !noalias !1113
  store double %.lcssa61, ptr %i.aa, align 8, !tbaa !65, !alias.scope !1114, !noalias !1113
  store double %.lcssa62, ptr %i.z, align 8, !tbaa !65, !alias.scope !1114, !noalias !1113
  br label %.loopexit.us.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i: ; preds = %.lr.ph56.i.i, %.loopexit.i.i
  %.054.i.i = phi i64 [ %i.dy, %.loopexit.i.i ], [ 0, %.lr.ph56.i.i ] ; 2 uses
  %.sroa.4.053.i.i = phi i64 [ %.sroa.4.3.i.i, %.loopexit.i.i ], [ 0, %.lr.ph56.i.i ] ; 12 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.054.i.i
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !63, !noalias !1115 ; 2 uses
  %i.bu = add i64 %.sroa.4.053.i.i, 64
  %i.bv = tail call noundef i64 @llvm.umin.i64(i64 %i.bu, i64 %4) ; 10 uses
  switch i64 %i.bt, label %.preheader43.i.i [
    i64 -1, label %.preheader.i.i
    i64 0, label %.loopexit.i.i
  ]

.preheader43.i.i:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i
  %i.bw = icmp ult i64 %.sroa.4.053.i.i, %i.bv
  br i1 %i.bw, label %.lr.ph.i.i, label %.loopexit.i.i

.preheader.i.i:                                   ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i
  %i.bx = icmp ult i64 %.sroa.4.053.i.i, %i.bv
  br i1 %i.bx, label %.lr.ph47.i.i, label %.loopexit.i.i

.lr.ph47.i.i:                                     ; preds = %.preheader.i.i
  %.promoted.i.i = load i64, ptr %3, align 8, !tbaa !165, !alias.scope !1114, !noalias !1113
  %.promoted49.i.i = load double, ptr %i.aa, align 8, !tbaa !65, !alias.scope !1114, !noalias !1113 ; 2 uses
  %.promoted51.i.i = load double, ptr %i.z, align 8, !tbaa !65, !alias.scope !1114, !noalias !1113 ; 2 uses
  %i.by = sub nuw i64 %i.bv, %.sroa.4.053.i.i
  %xtraiter = and i64 %i.by, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph47.i.i, %.prol.preheader
  %i.bz = phi double [ %i.cd, %.prol.preheader ], [ %.promoted51.i.i, %.lr.ph47.i.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb17AggregateExecutor16BinaryUpdateLoopINS_10CovarStateEddNS_18CovarSampOperationEEEvPKT0_RNS_18AggregateInputDataEPKT1_PT_mRKNS_15SelectionVectorESG_RNS_12ValidityMaskESI_:bb.a

bb.h:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.053.us
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !20
  %i.ci = zext i32 %i.ch to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us: ; preds = %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us
  %i.cj = phi i64 [ %i.ci, %bb.h ], [ %.053.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.053.us
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cj
  %i.cm = add i64 %i.ce, 1                        ; 2 uses
  %i.cn = uitofp i64 %i.cm to double
  %i.co = load double, ptr %i.cl, align 8, !tbaa !65
  %i.cp = load double, ptr %i.ck, align 8, !tbaa !65 ; 2 uses
  %i.cq = insertelement <2 x double> poison, double %i.co, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.cp, i64 1
  %i.cs = fsub <2 x double> %i.cr, %i.cf          ; 2 uses
  %i.ct = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = fdiv <2 x double> %i.cs, %i.cu
  %i.cw = fadd <2 x double> %i.cf, %i.cv          ; 3 uses
  %i.cx = extractelement <2 x double> %i.cw, i64 1
  %i.cy = fsub double %i.cp, %i.cx
  %i.cz = extractelement <2 x double> %i.cs, i64 0
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.cy, double %i.cd) ; 2 uses
  %i.db = add nuw i64 %.053.us, 1                 ; 2 uses
  %exitcond96.not = icmp eq i64 %i.db, %4
  br i1 %exitcond96.not, label %..loopexit_crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us, !llvm.loop !1130

.lr.ph54.split:                                   ; preds = %.lr.ph54
  br i1 %.not.i37, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64: ; preds = %.lr.ph54.split, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64
  %i.dc = phi double [ %i.dy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64 ], [ %.promoted59, %.lr.ph54.split ]
  %i.dd = phi i64 [ %i.dk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64 ], [ %.promoted, %.lr.ph54.split ]
  %.053.us65 = phi i64 [ %i.dz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64 ], [ 0, %.lr.ph54.split ] ; 3 uses
  %i.de = phi <2 x double> [ %i.du, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64 ], [ %i.cc, %.lr.ph54.split ] ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.053.us65
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !20
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dh
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.053.us65
  %i.dk = add i64 %i.dd, 1                        ; 2 uses
  %i.dl = uitofp i64 %i.dk to double
  %i.dm = load double, ptr %i.dj, align 8, !tbaa !65
  %i.dn = load double, ptr %i.di, align 8, !tbaa !65 ; 2 uses
  %i.do = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dp = insertelement <2 x double> %i.do, double %i.dn, i64 1
  %i.dq = fsub <2 x double> %i.dp, %i.de          ; 2 uses
  %i.dr = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = fdiv <2 x double> %i.dq, %i.ds
  %i.du = fadd <2 x double> %i.de, %i.dt          ; 3 uses
  %i.dv = extractelement <2 x double> %i.du, i64 1
  %i.dw = fsub double %i.dn, %i.dv
  %i.dx = extractelement <2 x double> %i.dq, i64 0
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.dw, double %i.dc) ; 2 uses
  %i.dz = add nuw i64 %.053.us65, 1               ; 2 uses
  %exitcond95.not = icmp eq i64 %i.dz, %4
  br i1 %exitcond95.not, label %..loopexit_crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64, !llvm.loop !1130

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.k
  %.02647 = phi i64 [ %i.fo, %bb.k ], [ 0, %.lr.ph.split ] ; 5 uses
  br i1 %.not.i28, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.split
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.02647
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !20
  %i.ec = zext i32 %i.eb to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph.split.split, %bb.i
  %i.ed = phi i64 [ %i.ec, %bb.i ], [ %.02647, %.lr.ph.split.split ] ; 3 uses
  br i1 %.not.i29, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit30, label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.02647
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !20
  %i.eg = zext i32 %i.ef to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit30

_ZNK6duckdb15SelectionVector9get_indexEm.exit30:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.j
  %i.eh = phi i64 [ %i.eg, %bb.j ], [ %.02647, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 3 uses
  %i.ei = lshr i64 %i.ed, 6
  %i.ej = and i64 %i.ed, 63
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ei
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !63
  %i.em = shl nuw i64 1, %i.ej
  %i.en = and i64 %i.el, %i.em
  %.not = icmp eq i64 %i.en, 0
  br i1 %.not, label %bb.k, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit30
  %i.eo = lshr i64 %i.eh, 6
  %i.ep = and i64 %i.eh, 63
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.eo
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !63
  %i.es = shl nuw i64 1, %i.ep
  %i.et = and i64 %i.er, %i.es
  %.not44 = icmp eq i64 %i.et, 0
  br i1 %.not44, label %bb.k, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit34.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit34.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ed
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.eh
  %i.ew = load i64, ptr %3, align 8, !tbaa !147
  %i.ex = add i64 %i.ew, 1                        ; 2 uses
  store i64 %i.ex, ptr %3, align 8, !tbaa !147
  %i.ey = uitofp i64 %i.ex to double
  %i.ez = load double, ptr %i.ev, align 8, !tbaa !65
  %i.fa = load double, ptr %i.eu, align 8, !tbaa !65 ; 2 uses
  %i.fb = load double, ptr %i.f, align 8, !tbaa !148
  %i.fc = load <2 x double>, ptr %i.e, align 8, !tbaa !65 ; 2 uses
  %i.fd = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fe = insertelement <2 x double> %i.fd, double %i.fa, i64 1
  %i.ff = fsub <2 x double> %i.fe, %i.fc          ; 2 uses
  %i.fg = insertelement <2 x double> poison, double %i.ey, i64 0
  %i.fh = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fi = fdiv <2 x double> %i.ff, %i.fh
  %i.fj = fadd <2 x double> %i.fc, %i.fi          ; 2 uses
  %i.fk = extractelement <2 x double> %i.fj, i64 1
  %i.fl = fsub double %i.fa, %i.fk
  %i.fm = extractelement <2 x double> %i.ff, i64 0
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.fm, double %i.fl, double %i.fb)
  store <2 x double> %i.fj, ptr %i.e, align 8, !tbaa !65
  store double %i.fn, ptr %i.f, align 8, !tbaa !148
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit30, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit34.thread
  %i.fo = add nuw i64 %.02647, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fo, %4
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split.split, !llvm.loop !1129

_ZNK6duckdb15SelectionVector9get_indexEm.exit36:  ; preds = %.lr.ph54.split, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36
  %i.fp = phi double [ %i.go, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ], [ %.promoted59, %.lr.ph54.split ]
  %i.fq = phi i64 [ %i.ga, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ], [ %.promoted, %.lr.ph54.split ]
  %.053 = phi i64 [ %i.gp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ], [ 0, %.lr.ph54.split ] ; 3 uses
  %i.fr = phi <2 x double> [ %i.gk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ], [ %i.cc, %.lr.ph54.split ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.053
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !20
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.053
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !20
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fu
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fx
  %i.ga = add i64 %i.fq, 1                        ; 2 uses
  %i.gb = uitofp i64 %i.ga to double
  %i.gc = load double, ptr %i.fz, align 8, !tbaa !65
  %i.gd = load double, ptr %i.fy, align 8, !tbaa !65 ; 2 uses
  %i.ge = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.gd, i64 1
  %i.gg = fsub <2 x double> %i.gf, %i.fr          ; 2 uses
  %i.gh = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.gi = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gj = fdiv <2 x double> %i.gg, %i.gi
  %i.gk = fadd <2 x double> %i.fr, %i.gj          ; 3 uses
  %i.gl = extractelement <2 x double> %i.gk, i64 1
  %i.gm = fsub double %i.gd, %i.gl
  %i.gn = extractelement <2 x double> %i.gg, i64 0
  %i.go = tail call double @llvm.fmuladd.f64(double %i.gn, double %i.gm, double %i.fp) ; 2 uses
  %i.gp = add nuw i64 %.053, 1                    ; 2 uses
  %exitcond94.not = icmp eq i64 %i.gp, %4
  br i1 %exitcond94.not, label %..loopexit_crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36, !llvm.loop !1130

..loopexit_crit_edge:                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64, %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us
  %.us-phi = phi double [ %i.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us ], [ %i.dy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64 ], [ %i.go, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ]
  %i.gq = phi <2 x double> [ %i.cw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit38.us ], [ %i.du, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us64 ], [ %i.gk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36 ]
  %.us-phi63 = add i64 %.promoted, %4
  store i64 %.us-phi63, ptr %3, align 8, !tbaa !147
  store <2 x double> %i.gq, ptr %i.ca, align 8, !tbaa !65
  store double %.us-phi, ptr %i.cb, align 8, !tbaa !148
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.g, %bb.d, %.preheader45, %.preheader, %..loopexit_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nounwind }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { noreturn }
attributes #25 = { noreturn nounwind }
attributes #26 = { builtin nounwind }

!llvm.module.flags = !{!14, !15}
!llvm.ident = !{!16}
!llvm.errno.tbaa = !{!20}

!0 = distinct !{!0, !35}
!1 = distinct !{ptr @_ZN6duckdb17AggregateFunctionD2Ev, null, null, null, null}
!2 = distinct !{null, null, null, null, null, null}
!3 = distinct !{!3, !35}
!4 = distinct !{!4, !35}
!5 = distinct !{!5, !35}
!6 = distinct !{ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!7 = distinct !{ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!8 = distinct !{!8, !35}
!9 = distinct !{!9, !35}
!10 = distinct !{!10, !35}
!11 = distinct !{!11, !35}
!12 = distinct !{!12, !35}
!13 = distinct !{null, null, null}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!17 = !{!"Simple C++ TBAA"}
!18 = !{!"omnipotent char", !17, i64 0}
!19 = !{!"int", !18, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"any pointer", !18, i64 0}
!22 = !{!"p1 _ZTSN6duckdb11LogicalTypeE", !21, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!24 = !{!23, !22, i64 0}
!25 = !{!23, !22, i64 16}
!26 = !{!23, !22, i64 8}
!27 = !{!"p1 omnipotent char", !21, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !27, i64 0}
!29 = !{!28, !27, i64 0}
!30 = !{!"long", !18, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !28, i64 0, !30, i64 8, !18, i64 16}
!32 = !{!31, !30, i64 8}
!33 = !{!18, !18, i64 0}
!34 = !{!31, !27, i64 0}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"p1 _ZTSN6duckdb17AggregateFunctionE", !21, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIN6duckdb17AggregateFunctionESaIS1_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!38 = !{!37, !36, i64 8}
!39 = !{!37, !36, i64 16}
!40 = !{!"vtable pointer", !17, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !21, i64 0}
!43 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !42, i64 0}
!44 = !{!43, !42, i64 0}
!45 = !{!21, !21, i64 0}
!46 = !{!"p1 _ZTSN6duckdb21AggregateFunctionInfoE", !21, i64 0}
!47 = !{!"_ZTSSt12__shared_ptrIN6duckdb21AggregateFunctionInfoELN9__gnu_cxx12_Lock_policyE2EE", !46, i64 0, !43, i64 8}
!48 = !{!47, !46, i64 0}
!49 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !19, i64 8, !19, i64 12}
!50 = !{!49, !19, i64 8}
!51 = !{!49, !19, i64 12}
!52 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!53 = !{ptr @_ZN6duckdb17AggregateFunctionD2Ev}
!54 = !{!"_ZTSN6duckdb13LogicalTypeIdE", !18, i64 0}
!55 = !{!"_ZTSN6duckdb12PhysicalTypeE", !18, i64 0}
!56 = !{!"p1 _ZTSN6duckdb13ExtraTypeInfoE", !21, i64 0}
!57 = !{!"_ZTSSt12__shared_ptrIN6duckdb13ExtraTypeInfoELN9__gnu_cxx12_Lock_policyE2EE", !56, i64 0, !43, i64 8}
!58 = !{!"_ZTSSt10shared_ptrIN6duckdb13ExtraTypeInfoEE", !57, i64 0}
!59 = !{!"_ZTSN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEE", !58, i64 0}
!60 = !{!"_ZTSN6duckdb11LogicalTypeE", !54, i64 0, !55, i64 1, !59, i64 8}
!61 = !{!60, !55, i64 1}
!62 = !{!60, !54, i64 0}
!63 = !{!30, !30, i64 0}
!64 = !{!"double", !18, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!"_ZTSN6duckdb12FunctionDataE"}
!67 = !{!"_ZTSN6duckdb12_GLOBAL__N_122AverageDecimalBindDataE", !66, i64 0, !64, i64 8}
!68 = !{!67, !64, i64 8}
!69 = !{!"p1 _ZTSN6duckdb12FunctionDataE", !21, i64 0}
!70 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb12FunctionDataELb0EE", !69, i64 0}
!71 = !{!70, !69, i64 0}
!72 = !{!37, !36, i64 0}
!73 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!74 = !{!"p1 _ZTSN6duckdb20ExceptionFormatValueE", !21, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!76 = !{!75, !74, i64 0}
!77 = !{!75, !74, i64 8}
!78 = !{!75, !74, i64 16}
!79 = !{!22, !22, i64 0}
!80 = !{!"_ZTSN6duckdb10VectorTypeE", !18, i64 0}
!81 = !{!"p1 long", !21, i64 0}
!82 = !{!"p1 _ZTSN6duckdb21TemplatedValidityDataImEE", !21, i64 0}
!83 = !{!"_ZTSSt12__shared_ptrIN6duckdb21TemplatedValidityDataImEELN9__gnu_cxx12_Lock_policyE2EE", !82, i64 0, !43, i64 8}
!84 = !{!"_ZTSSt10shared_ptrIN6duckdb21TemplatedValidityDataImEEE", !83, i64 0}
!85 = !{!"_ZTSN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEE", !84, i64 0}
!86 = !{!"_ZTSN6duckdb21TemplatedValidityMaskImEE", !81, i64 0, !85, i64 8, !30, i64 24}
!87 = !{!"_ZTSN6duckdb12ValidityMaskE", !86, i64 0}
!88 = !{!"p1 _ZTSN6duckdb12VectorBufferE", !21, i64 0}
!89 = !{!"_ZTSSt12__shared_ptrIN6duckdb12VectorBufferELN9__gnu_cxx12_Lock_policyE2EE", !88, i64 0, !43, i64 8}
!90 = !{!"_ZTSSt10shared_ptrIN6duckdb12VectorBufferEE", !89, i64 0}
!91 = !{!"_ZTSN6duckdb10shared_ptrINS_12VectorBufferELb1EEE", !90, i64 0}
!92 = !{!"_ZTSN6duckdb6VectorE", !80, i64 0, !60, i64 8, !27, i64 32, !87, i64 40, !91, i64 72, !91, i64 88}
!93 = !{!92, !80, i64 0}
!94 = !{!86, !81, i64 0}
!95 = !{!55, !55, i64 0}
!96 = !{!92, !27, i64 32}
!97 = !{!"p1 _ZTSN6duckdb12_GLOBAL__N_18AvgStateIlEE", !21, i64 0}
!98 = !{!97, !97, i64 0}
!99 = !{!"short", !18, i64 0}
!100 = !{!99, !99, i64 0}
!101 = !{!"_ZTSN6duckdb12_GLOBAL__N_18AvgStateIlEE", !30, i64 0, !30, i64 8}
!102 = !{!101, !30, i64 0}
!103 = !{!101, !30, i64 8}
!104 = !{!"p1 _ZTSN6duckdb15SelectionVectorE", !21, i64 0}
!105 = !{!"p1 int", !21, i64 0}
!106 = !{!"p1 _ZTSN6duckdb13SelectionDataE", !21, i64 0}
!107 = !{!"_ZTSSt12__shared_ptrIN6duckdb13SelectionDataELN9__gnu_cxx12_Lock_policyE2EE", !106, i64 0, !43, i64 8}
!108 = !{!"_ZTSSt10shared_ptrIN6duckdb13SelectionDataEE", !107, i64 0}
!109 = !{!"_ZTSN6duckdb10shared_ptrINS_13SelectionDataELb1EEE", !108, i64 0}
!110 = !{!"_ZTSN6duckdb15SelectionVectorE", !105, i64 0, !109, i64 8}
!111 = !{!"_ZTSN6duckdb19UnifiedVectorFormatE", !104, i64 0, !27, i64 8, !87, i64 16, !110, i64 48, !55, i64 72}
!112 = !{!111, !104, i64 0}
!113 = !{!110, !105, i64 0}
!114 = !{!111, !27, i64 8}
!115 = !{!"p1 _ZTSN6duckdb6VectorE", !21, i64 0}
!116 = !{!115, !115, i64 0}
!117 = !{!"p1 _ZTSN6duckdb18AggregateInputDataE", !21, i64 0}
!118 = !{!117, !117, i64 0}
!119 = !{!"_ZTSN6duckdb21AggregateFinalizeDataE", !115, i64 0, !117, i64 8, !30, i64 16}
!120 = !{!119, !30, i64 16}
!121 = !{!69, !69, i64 0}
!122 = !{!"_ZTSN6duckdb12optional_ptrINS_12FunctionDataELb1EEE", !69, i64 0}
!123 = !{!122, !69, i64 0}
!124 = !{!119, !117, i64 8}
!125 = !{}
!126 = !{i64 8}
!127 = !{!"llvm.loop.unroll.disable"}
!128 = !{!111, !55, i64 72}
!129 = !{i64 0, i64 8, !63, i64 8, i64 8, !63}
!130 = !{!"_ZTSN6duckdb9hugeint_tE", !30, i64 0, !30, i64 8}
!131 = !{!"_ZTSN6duckdb12_GLOBAL__N_18AvgStateINS_9hugeint_tEEE", !30, i64 0, !130, i64 8}
!132 = !{!131, !30, i64 0}
!133 = !{!"p1 _ZTSN6duckdb12_GLOBAL__N_18AvgStateINS_9hugeint_tEEE", !21, i64 0}
!134 = !{!133, !133, i64 0}
!135 = !{!130, !30, i64 0}
!136 = !{!130, !30, i64 8}
!137 = !{!"long double", !18, i64 0}
!138 = !{!137, !137, i64 0}
!139 = !{!"p1 _ZTSN6duckdb12_GLOBAL__N_116IntervalAvgStateE", !21, i64 0}
!140 = !{!139, !139, i64 0}
!141 = !{!"_ZTSN6duckdb10interval_tE", !19, i64 0, !19, i64 4, !30, i64 8}
!142 = !{!"_ZTSN6duckdb12_GLOBAL__N_116IntervalAvgStateE", !30, i64 0, !141, i64 8}
!143 = !{!142, !30, i64 0}
!144 = !{!"p1 _ZTSN6duckdb9CorrStateE", !21, i64 0}
!145 = !{!144, !144, i64 0}
!146 = !{!"_ZTSN6duckdb10CovarStateE", !30, i64 0, !64, i64 8, !64, i64 16, !64, i64 24}
!147 = !{!146, !30, i64 0}
!148 = !{!146, !64, i64 24}
!149 = !{!"_ZTSN6duckdb11StddevStateE", !30, i64 0, !64, i64 8, !64, i64 16}
!150 = !{!149, !30, i64 0}
!151 = !{!149, !64, i64 8}
!152 = !{!149, !64, i64 16}
!153 = !{i64 0, i64 8, !63, i64 8, i64 8, !65, i64 16, i64 8, !65, i64 24, i64 8, !65}
!154 = !{i64 0, i64 8, !63, i64 8, i64 8, !65, i64 16, i64 8, !65}
!155 = !{!"p1 _ZTSN6duckdb11StddevStateE", !21, i64 0}
!156 = !{!155, !155, i64 0}
!157 = !{!"p1 _ZTSN6duckdb12_GLOBAL__N_18AvgStateIdEE", !21, i64 0}
!158 = !{!157, !157, i64 0}
!159 = !{!"_ZTSN6duckdb12_GLOBAL__N_18AvgStateIdEE", !30, i64 0, !64, i64 8}
!160 = !{!159, !30, i64 0}
!161 = !{!159, !64, i64 8}
!162 = !{!"p1 _ZTSN6duckdb12_GLOBAL__N_113KahanAvgStateE", !21, i64 0}
!163 = !{!162, !162, i64 0}
!164 = !{!"_ZTSN6duckdb12_GLOBAL__N_113KahanAvgStateE", !30, i64 0, !64, i64 8, !64, i64 16}
!165 = !{!164, !30, i64 0}
!166 = !{!"p1 _ZTSN6duckdb10CovarStateE", !21, i64 0}
!167 = !{!166, !166, i64 0}
end_hunk_1
