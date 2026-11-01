Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_optimizer?download=true
inline.NumInlined: 25578
inline.NumDeleted: 11329
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK6duckdb11TableFilter4CastINS_20ConjunctionAndFilterEEERKT_v:bb.a
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #33
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb11TableFilter4CastINS_14ConstantFilterEEERKT_v(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.6", align 1  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !801
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.92, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !300    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #33
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb11TableFilter4CastINS_12StructFilterEEERKT_v(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.6", align 1  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !801
  %.not = icmp eq i8 %i.b, 5
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.92, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !300    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #33
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS_14TableFilterSetE(ptr dead_on_unwind noalias nofree writable sret(%"class.duckdb::vector.114") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !798  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not56 = icmp eq ptr %i.b, %i.c
  br i1 %.not56, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEEEvT_SD_.exit.thread, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE9push_backERKS5_.exit
  %.not.i.i = icmp eq ptr %.sroa.043.1, %.sroa.11.1
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEEEvT_SD_.exit.thread, label %bb.b

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEEEvT_SD_.exit.thread: ; preds = %._crit_edge, %bb.a
  %.sroa.043.0.lcssa95 = phi ptr [ %.sroa.043.1, %._crit_edge ], [ null, %bb.a ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i33 = icmp eq ptr %.sroa.043.0.lcssa95, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EED2Ev.exit, label %._crit_edge65.thread

bb.b:                                             ; preds = %._crit_edge
  %i.d = ptrtoint ptr %.sroa.11.1 to i64
  %i.e = ptrtoint ptr %.sroa.043.1 to i64         ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_(ptr %.sroa.043.1, ptr nonnull %.sroa.11.1, i64 noundef %i.j)
  %i.k = icmp sgt i64 %i.f, 256
  br i1 %i.k, label %.lr.ph.i.i.i.i, label %.preheader.i20.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.l = getelementptr i8, ptr %.sroa.043.1, i64 8
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.043.1, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.sroa.0.019.i.idx.i.i.i = phi i64 [ 16, %.lr.ph.i.i.i.i ], [ %.sroa.0.019.i.add.i.i.i, %bb.h ] ; 4 uses
  %.pn18.i.i.i.i = phi ptr [ %.sroa.043.1, %.lr.ph.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.h ] ; 3 uses
  %.sroa.0.019.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.043.1, i64 %.sroa.0.019.i.idx.i.i.i ; 5 uses
  %i.m = getelementptr i8, ptr %.pn18.i.i.i.i, i64 24
  %.val2.i.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !830 ; 4 uses
  %.val3.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !830
  %i.n = icmp ult i64 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload = load <2 x i64>, ptr %.sroa.0.019.i.ptr.i.i.i, align 8, !tbaa !270
  %i.o = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i, 16
  br i1 %i.o, label %bb.e, label %bb.f, !prof !303

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.043.1, i64 %.sroa.0.019.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.043.1, i64 16, i1 false), !tbaa.struct !271
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  store <2 x i64> %.sroa.0.0.copyload, ptr %.sroa.043.1, align 8, !tbaa !270
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %.sroa.06.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.0.019.i.ptr.i.i.i, align 8, !tbaa !270
  %i.q = getelementptr i8, ptr %.pn18.i.i.i.i, i64 8
  %.val2.i10.i.i.i.i.i = load i64, ptr %i.q, align 8, !tbaa !830
  %i.r = icmp ult i64 %.val2.i.i.i.i.i, %.val2.i10.i.i.i.i.i
  br i1 %i.r, label %.lr.ph.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.sroa.09.011.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.g ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.09.011.i.i.i.i.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.011.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !271
  %i.s = getelementptr i8, ptr %.sroa.09.011.i.i.i.i.i, i64 -24
  %.val2.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !830
  %i.t = icmp ult i64 %.val2.i.i.i.i.i, %.val2.i.i.i.i.i.i
  br i1 %i.t, label %.lr.ph.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i, !llvm.loop !2438

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.g
  %.sroa.09.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i, %bb.g ], [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store i64 %.sroa.06.0.copyload.i.i.i.i.i, ptr %.sroa.09.0.lcssa.i.i.i.i.i, align 8, !tbaa !270
  %.sroa.4.0..val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i.i.i.i, i64 8
  store i64 %.val2.i.i.i.i.i, ptr %.sroa.4.0..val.sroa_idx.i.i.i.i.i, align 8, !tbaa !270
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i.i.i
  %.sroa.0.019.i.add.i.i.i = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i, 16 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.019.i.add.i.i.i, 256
  br i1 %.not.i.i.i.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_.exit.i.i.i, label %bb.c, !llvm.loop !2439

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_.exit.i.i.i: ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.043.1, i64 256 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.u, %.sroa.11.1
  br i1 %.not4.i.i.i.i, label %.lr.ph64, label %.lr.ph.i9.i.i.i

.lr.ph.i9.i.i.i:                                  ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_.exit.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.aa, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i ], [ %i.u, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_.exit.i.i.i ] ; 7 uses
  %.sroa.4.0..val3.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.0..val3.sroa_idx.i.i.i.i.i, align 8, !tbaa !270 ; 2 uses
  %i.v = load <2 x i64>, ptr %.sroa.0.05.i.i.i.i, align 8, !tbaa !270
  %i.w = getelementptr i8, ptr %.sroa.0.05.i.i.i.i, i64 -8
  %.val2.i10.i.i11.i.i.i = load i64, ptr %i.w, align 8, !tbaa !830
  %i.x = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i.i, %.val2.i10.i.i11.i.i.i
  br i1 %i.x, label %.lr.ph.i.i16.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i

.lr.ph.i.i16.i.i.i:                               ; preds = %.lr.ph.i9.i.i.i, %.lr.ph.i.i16.i.i.i
  %.sroa.09.011.i.i17.i.i.i = phi ptr [ %.sroa.0.0.i.i18.i.i.i, %.lr.ph.i.i16.i.i.i ], [ %.sroa.0.05.i.i.i.i, %.lr.ph.i9.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i18.i.i.i = getelementptr inbounds i8, ptr %.sroa.09.011.i.i17.i.i.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.011.i.i17.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i18.i.i.i, i64 16, i1 false), !tbaa.struct !271
  %i.y = getelementptr i8, ptr %.sroa.09.011.i.i17.i.i.i, i64 -24
  %.val2.i.i.i19.i.i.i = load i64, ptr %i.y, align 8, !tbaa !830
  %i.z = icmp ult i64 %.sroa.4.0.copyload.i.i.i.i.i, %.val2.i.i.i19.i.i.i
  br i1 %i.z, label %.lr.ph.i.i16.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i, !llvm.loop !2438

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i: ; preds = %.lr.ph.i.i16.i.i.i, %.lr.ph.i9.i.i.i
  %.sroa.09.0.lcssa.i.i13.i.i.i = phi ptr [ %.sroa.0.05.i.i.i.i, %.lr.ph.i9.i.i.i ], [ %.sroa.0.0.i.i18.i.i.i, %.lr.ph.i.i16.i.i.i ]
  store <2 x i64> %i.v, ptr %.sroa.09.0.lcssa.i.i13.i.i.i, align 8, !tbaa !270
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 16
  %.not.i15.i.i.i = icmp eq ptr %.sroa.0.05.i.i.i.i, %.pn45
  br i1 %.not.i15.i.i.i, label %.lr.ph64, label %.lr.ph.i9.i.i.i, !llvm.loop !2440

.preheader.i20.i.i.i:                             ; preds = %bb.b
  %.not17.i22.i.i.i = icmp eq ptr %.sroa.043.1, %.pn45
  br i1 %.not17.i22.i.i.i, label %.lr.ph64, label %.lr.ph.i23.i.i.i

.lr.ph.i23.i.i.i:                                 ; preds = %.preheader.i20.i.i.i
  %i.ab = getelementptr i8, ptr %.sroa.043.1, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i23.i.i.i
  %.pn18.i25.i.i.i = phi ptr [ %.sroa.043.1, %.lr.ph.i23.i.i.i ], [ %.sroa.0.019.i24.i.i.i, %bb.o ] ; 5 uses
  %.sroa.0.019.i24.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i25.i.i.i, i64 16 ; 7 uses
  %i.ac = getelementptr i8, ptr %.pn18.i25.i.i.i, i64 24
  %.val2.i.i26.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !830 ; 4 uses
  %.val3.i.i27.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !830
  %i.ad = icmp ult i64 %.val2.i.i26.i.i.i, %.val3.i.i27.i.i.i
  br i1 %i.ad, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %.sroa.0126.0.copyload = load <2 x i64>, ptr %.sroa.0.019.i24.i.i.i, align 8, !tbaa !270
  %i.ae = ptrtoint ptr %.sroa.0.019.i24.i.i.i to i64
  %i.af = sub i64 %i.ae, %i.e                     ; 3 uses
  %i.ag = ashr exact i64 %i.af, 4                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 1
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !303

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn18.i25.i.i.i, i64 32
  %i.aj = sub nsw i64 0, %i.ag
  %i.ak = getelementptr inbounds [16 x i8], ptr %i.ai, i64 %i.aj
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.043.1, i64 %i.af, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i39.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.al = icmp eq i64 %i.af, 16
  br i1 %i.al, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i39.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %.pn18.i25.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.043.1, i64 16, i1 false), !tbaa.struct !271
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i39.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i39.i.i.i: ; preds = %bb.m, %bb.l, %bb.k
  store <2 x i64> %.sroa.0126.0.copyload, ptr %.sroa.043.1, align 8, !tbaa !270
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %.sroa.06.0.copyload.i.i28.i.i.i = load i64, ptr %.sroa.0.019.i24.i.i.i, align 8, !tbaa !270
  %i.an = getelementptr i8, ptr %.pn18.i25.i.i.i, i64 8
  %.val2.i10.i.i29.i.i.i = load i64, ptr %i.an, align 8, !tbaa !830
  %i.ao = icmp ult i64 %.val2.i.i26.i.i.i, %.val2.i10.i.i29.i.i.i
  br i1 %i.ao, label %.lr.ph.i.i35.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i30.i.i.i

.lr.ph.i.i35.i.i.i:                               ; preds = %bb.n, %.lr.ph.i.i35.i.i.i
  %.sroa.09.011.i.i36.i.i.i = phi ptr [ %.sroa.0.0.i.i37.i.i.i, %.lr.ph.i.i35.i.i.i ], [ %.sroa.0.019.i24.i.i.i, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i37.i.i.i = getelementptr inbounds i8, ptr %.sroa.09.011.i.i36.i.i.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.09.011.i.i36.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i37.i.i.i, i64 16, i1 false), !tbaa.struct !271
  %i.ap = getelementptr i8, ptr %.sroa.09.011.i.i36.i.i.i, i64 -24
  %.val2.i.i.i38.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !830
  %i.aq = icmp ult i64 %.val2.i.i26.i.i.i, %.val2.i.i.i38.i.i.i
  br i1 %i.aq, label %.lr.ph.i.i35.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i30.i.i.i, !llvm.loop !2438

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i30.i.i.i: ; preds = %.lr.ph.i.i35.i.i.i, %bb.n
  %.sroa.09.0.lcssa.i.i31.i.i.i = phi ptr [ %.sroa.0.019.i24.i.i.i, %bb.n ], [ %.sroa.0.0.i.i37.i.i.i, %.lr.ph.i.i35.i.i.i ] ; 2 uses
  store i64 %.sroa.06.0.copyload.i.i28.i.i.i, ptr %.sroa.09.0.lcssa.i.i31.i.i.i, align 8, !tbaa !270
  %.sroa.4.0..val.sroa_idx.i.i32.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i31.i.i.i, i64 8
  store i64 %.val2.i.i26.i.i.i, ptr %.sroa.4.0..val.sroa_idx.i.i32.i.i.i, align 8, !tbaa !270
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i30.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i39.i.i.i
  %.not.i34.i.i.i = icmp eq ptr %.sroa.0.019.i24.i.i.i, %.pn45
  br i1 %.not.i34.i.i.i, label %.lr.ph64, label %bb.i, !llvm.loop !2439

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE9push_backERKS5_.exit
  %.01261 = phi i64 [ %i.bj, %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE9push_backERKS5_.exit ], [ 0, %bb.a ] ; 3 uses
  %.sroa.040.060 = phi ptr [ %i.bk, %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE9push_backERKS5_.exit ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.18.059 = phi ptr [ %.sroa.18.1, %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE9push_backERKS5_.exit ], [ null, %bb.a ] ; 4 uses
  %.sroa.11.058 = phi ptr [ %.sroa.11.1, %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE9push_backERKS5_.exit ], [ null, %bb.a ] ; 4 uses
  %.sroa.043.057 = phi ptr [ %.sroa.043.1, %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE9push_backERKS5_.exit ], [ null, %bb.a ] ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.040.060, i64 40
  %i.as = invoke noundef nonnull align 8 dereferenceable(9) ptr @_ZNK6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %.lr.ph
  %i.at = invoke noundef i64 @_ZN6duckdb20ExpressionHeuristics4CostERKNS_11TableFilterE(ptr noundef nonnull align 8 dereferenceable(9) %i.as)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %bb.p
  %.not.i = icmp eq ptr %.sroa.11.058, %.sroa.18.059
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 %.01261, ptr %.sroa.11.058, align 8, !tbaa !270
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.058, i64 8
  store i64 %i.at, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !270
  br label %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE9push_backERKS5_.exit

bb.s:                                             ; preds = %bb.q
  %i.au = ptrtoint ptr %.sroa.18.059 to i64
  %i.av = ptrtoint ptr %.sroa.043.057 to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 5 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775792
  br i1 %i.ax, label %bb.t, label %_ZNKSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #35
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.t
  unreachable

_ZNKSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.ay = ashr exact i64 %i.aw, 4                 ; 3 uses
  %i.az = icmp eq ptr %.sroa.18.059, %.sroa.043.057
  %.sroa.speculated.i.i.i = select i1 %i.az, i64 1, i64 %i.ay
  %i.ba = add nsw i64 %.sroa.speculated.i.i.i, %i.ay ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ay
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 576460752303423487)
  %i.bd = select i1 %i.bb, i64 576460752303423487, i64 %i.bc ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.be = shl nuw nsw i64 %i.bd, 4
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #36
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc25:                                         ; preds = %_ZNKSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %i.aw ; 3 uses
  store i64 %.01261, ptr %i.bg, align 8, !tbaa !270
  %.sroa.6.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %i.at, ptr %.sroa.6.0..sroa_idx37, align 8, !tbaa !270
  %i.bh = icmp sgt i64 %i.aw, 0
  br i1 %i.bh, label %bb.u, label %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit20.i.i

bb.u:                                             ; preds = %.noexc25
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bf, ptr align 8 %.sroa.043.057, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit20.i.i

_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit20.i.i: ; preds = %bb.u, %.noexc25
  %.not.i21.i.i = icmp eq ptr %.sroa.043.057, null
  br i1 %.not.i21.i.i, label %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit20.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.043.057) #34
  br label %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit20.i.i
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bd
  br label %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.r
  %.sroa.043.1 = phi ptr [ %i.bf, %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %.sroa.043.057, %bb.r ] ; 23 uses
  %.pn45 = phi ptr [ %i.bg, %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %.sroa.11.058, %bb.r ] ; 4 uses
  %.sroa.18.1 = phi ptr [ %i.bi, %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %.sroa.18.059, %bb.r ]
  %.sroa.11.1 = getelementptr inbounds nuw i8, ptr %.pn45, i64 16 ; 5 uses
  %i.bj = add i64 %.01261, 1
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.040.060) #38 ; 2 uses
  %.not = icmp eq ptr %i.bk, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.p, %.lr.ph, %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit

.lr.ph64:                                         ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i12.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_.exit.i.i.i, %.preheader.i20.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph64, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.bn = phi ptr [ null, %.lr.ph64 ], [ %i.cj, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %i.bo = phi ptr [ null, %.lr.ph64 ], [ %i.ck, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %.063 = phi i64 [ 0, %.lr.ph64 ], [ %i.cm, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %i.bp = phi ptr [ null, %.lr.ph64 ], [ %i.cl, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 5 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.043.1, i64 %.063 ; 2 uses
  %.not.i27 = icmp eq ptr %i.bo, %i.bn
  br i1 %.not.i27, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !270
  store i64 %i.br, ptr %i.bo, align 8, !tbaa !270
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  store ptr %i.bs, ptr %i.bl, align 8, !tbaa !363
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.y:                                             ; preds = %bb.w
  %i.bt = ptrtoint ptr %i.bn to i64
  %i.bu = ptrtoint ptr %i.bp to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 5 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775800
  br i1 %i.bw, label %bb.z, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #35
          to label %.noexc30 unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc30:                                         ; preds = %bb.z
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.y
  %i.bx = ashr exact i64 %i.bv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i28 = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i.i28, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.by, i64 1152921504606846975)
  %i.cb = select i1 %i.bz, i64 1152921504606846975, i64 %i.ca ; 3 uses
  %.not.i.i.i29 = icmp ne i64 %i.cb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i29)
  %i.cc = shl nuw nsw i64 %i.cb, 3
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #36
          to label %.noexc31 unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc31:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 %i.bv ; 2 uses
  %i.cf = load i64, ptr %i.bq, align 8, !tbaa !270
  store i64 %i.cf, ptr %i.ce, align 8, !tbaa !270
  %i.cg = icmp sgt i64 %i.bv, 0
  br i1 %i.cg, label %bb.aa, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.aa:                                            ; preds = %.noexc31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cd, ptr align 8 %i.bp, i64 %i.bv, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.aa, %.noexc31
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bp) #34
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.ab, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.cd, ptr %0, align 8, !tbaa !306
  store ptr %i.ch, ptr %i.bl, align 8, !tbaa !363
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cb ; 2 uses
  store ptr %i.ci, ptr %i.bm, align 8, !tbaa !347
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.x
  %i.cj = phi ptr [ %i.ci, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.bn, %bb.x ]
  %i.ck = phi ptr [ %i.ch, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.bs, %bb.x ]
  %i.cl = phi ptr [ %i.cd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.bp, %bb.x ]
  %i.cm = add nuw i64 %.063, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cm, %i.g
  br i1 %exitcond.not, label %._crit_edge65.thread, label %bb.w, !llvm.loop !2441

.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %bb.z
  %lpad.loopexit.split-lp118 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %0, align 8, !tbaa !306   ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  tail call void @_ZdlPv(ptr noundef nonnull %i.cn) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit

._crit_edge65.thread:                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEEEvT_SD_.exit.thread
  %.sroa.043.0.lcssa94102111 = phi ptr [ %.sroa.043.0.lcssa95, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEEEvT_SD_.exit.thread ], [ %.sroa.043.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ]
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.043.0.lcssa94102111) #34
  br label %_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EED2Ev.exit

_ZNSt6vectorIZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS0_14TableFilterSetEE10FilterCostSaIS5_EED2Ev.exit: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZN6duckdb20ExpressionHeuristics15GetInitialOrderERKNS2_14TableFilterSetEE10FilterCostSt6vectorIS7_SaIS7_EEEEEvT_SD_.exit.thread, %._crit_edge65.thread
  ret void

end_hunk_0
