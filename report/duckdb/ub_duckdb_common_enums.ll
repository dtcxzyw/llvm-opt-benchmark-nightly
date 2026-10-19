Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_enums?download=true
inline.NumInlined: 1898
inline.NumDeleted: 399
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6duckdb23CompressionTypeToStringB5cxx11ENS_15CompressionTypeE:bb.a
  br label %bb.g

._crit_edge.i.i37:                                ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.i, ptr noundef nonnull align 1 dereferenceable(5) @.str.30, i64 5, i1 false)
  br label %bb.g

._crit_edge.i.i41:                                ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.j, ptr noundef nonnull align 1 dereferenceable(5) @.str.31, i64 5, i1 false)
  br label %bb.g

._crit_edge.i.i45:                                ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !14
  store i32 1146377050, ptr %i.k, align 8
  br label %bb.g

._crit_edge.i.i49:                                ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.l, ptr noundef nonnull align 1 dereferenceable(3) @.str.33, i64 3, i1 false)
  br label %bb.g

._crit_edge.i.i53:                                ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.m, ptr noundef nonnull align 1 dereferenceable(5) @.str.34, i64 5, i1 false)
  br label %bb.g

._crit_edge.i.i57:                                ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.n, ptr noundef nonnull align 1 dereferenceable(7) @.str.35, i64 7, i1 false)
  br label %bb.g

._crit_edge.i.i61:                                ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.o, ptr noundef nonnull align 1 dereferenceable(9) @.str.36, i64 9, i1 false)
  br label %bb.g

._crit_edge.i.i65:                                ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.p, ptr noundef nonnull align 1 dereferenceable(14) @.str.37, i64 14, i1 false)
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.q = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.t) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn86 = phi { ptr, i32 } [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.q) #21
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i65, %._crit_edge.i.i61, %._crit_edge.i.i57, %._crit_edge.i.i53, %._crit_edge.i.i49, %._crit_edge.i.i45, %._crit_edge.i.i41, %._crit_edge.i.i37, %._crit_edge.i.i33, %._crit_edge.i.i29, %._crit_edge.i.i25, %._crit_edge.i.i21, %._crit_edge.i.i17, %._crit_edge.i.i13, %._crit_edge.i.i9, %._crit_edge.i.i
  %.sink = phi i64 [ 14, %._crit_edge.i.i65 ], [ 9, %._crit_edge.i.i61 ], [ 7, %._crit_edge.i.i57 ], [ 5, %._crit_edge.i.i53 ], [ 3, %._crit_edge.i.i49 ], [ 4, %._crit_edge.i.i45 ], [ 5, %._crit_edge.i.i41 ], [ 5, %._crit_edge.i.i37 ], [ 4, %._crit_edge.i.i33 ], [ 10, %._crit_edge.i.i29 ], [ 4, %._crit_edge.i.i25 ], [ 10, %._crit_edge.i.i21 ], [ 3, %._crit_edge.i.i17 ], [ 8, %._crit_edge.i.i13 ], [ 12, %._crit_edge.i.i9 ], [ 4, %._crit_edge.i.i ]
  %.sink88 = phi i64 [ 30, %._crit_edge.i.i65 ], [ 25, %._crit_edge.i.i61 ], [ 23, %._crit_edge.i.i57 ], [ 21, %._crit_edge.i.i53 ], [ 19, %._crit_edge.i.i49 ], [ 20, %._crit_edge.i.i45 ], [ 21, %._crit_edge.i.i41 ], [ 21, %._crit_edge.i.i37 ], [ 20, %._crit_edge.i.i33 ], [ 26, %._crit_edge.i.i29 ], [ 20, %._crit_edge.i.i25 ], [ 26, %._crit_edge.i.i21 ], [ 19, %._crit_edge.i.i17 ], [ 24, %._crit_edge.i.i13 ], [ 28, %._crit_edge.i.i9 ], [ 20, %._crit_edge.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.w, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.sink88
  store i8 0, ptr %i.x, align 1, !tbaa !18
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn86, %bb.f ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn.pn

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.g, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !20 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef %i.d) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !92

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !28
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.h = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define range(i8 0, 3) i8 @_ZN6duckdb26CompressionTypeIsAvailableENS_15CompressionTypeENS_12optional_ptrINS_14StorageManagerELb1EEE(i8 noundef zeroext %0, ptr %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::optional_ptr", align 8 ; 5 uses
  %3 = alloca %"class.duckdb::optional_idx", align 8 ; 6 uses
  %4 = alloca %"class.duckdb::optional_idx", align 8 ; 5 uses
  store ptr %1, ptr %2, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #24 ; 19 uses
  store i8 9, ptr %i.a, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 -1, ptr %.sroa.542.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store i8 8, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.843.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 -1, ptr %.sroa.843.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  store i8 4, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.1144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %.sroa.1144.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 4, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 3 uses
  store i8 7, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.1445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 0, ptr %.sroa.1445.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 4, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 3 uses
  store i8 15, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.1746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 5, ptr %.sroa.1746.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 -1, ptr %.sroa.18.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i64 -1, ptr %3, align 8, !tbaa !32
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb12optional_ptrINS_14StorageManagerELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %2, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !32
  %.not51 = icmp eq i64 %i.d, -1
  br i1 %.not51, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNK6duckdb12optional_ptrINS_14StorageManagerELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr %2, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.g = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZNK6duckdb14StorageManager17GetStorageVersionEv.exit unwind label %bb.g

_ZNK6duckdb14StorageManager17GetStorageVersionEv.exit: ; preds = %bb.e
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %i.g)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNK6duckdb14StorageManager17GetStorageVersionEv.exit
  %i.h = load i64, ptr %4, align 8, !tbaa !19     ; 2 uses
  store i64 %i.h, ptr %3, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.i = icmp eq i64 %i.h, -1
  br label %.critedge

bb.g:                                             ; preds = %bb.e, %bb.d, %_ZNK6duckdb14StorageManager17GetStorageVersionEv.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_129CompressionMethodRequirementsESaIS2_EED2Ev.exit38

.critedge:                                        ; preds = %bb.f, %bb.c, %bb.a
  %.not54 = phi i1 [ %i.i, %bb.f ], [ true, %bb.c ], [ true, %bb.a ]
  %i.k = load i8, ptr %i.a, align 8, !tbaa !94
  %.not.not = icmp eq i8 %i.k, %0
  br i1 %.not.not, label %bb.h, label %.critedge.1

.critedge.1:                                      ; preds = %.critedge
  %i.l = load i8, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !94
  %.not.not.1 = icmp eq i8 %i.l, %0
  br i1 %.not.not.1, label %bb.h, label %.critedge.2

.critedge.2:                                      ; preds = %.critedge.1
  %i.m = load i8, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !94
  %.not.not.2 = icmp eq i8 %i.m, %0
  br i1 %.not.not.2, label %bb.h, label %.critedge.3

.critedge.3:                                      ; preds = %.critedge.2
  %i.n = load i8, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !94
  %.not.not.3 = icmp eq i8 %i.n, %0
  br i1 %.not.not.3, label %bb.h, label %.critedge.4

.critedge.4:                                      ; preds = %.critedge.3
  %i.o = load i8, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !94
  %.not.not.4 = icmp eq i8 %i.o, %0
  br i1 %.not.not.4, label %bb.h, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_129CompressionMethodRequirementsESaIS2_EED2Ev.exit

bb.h:                                             ; preds = %.critedge.4, %.critedge.3, %.critedge.2, %.critedge.1, %.critedge
  %.sroa.039.0.ptr58.lcssa = phi ptr [ %i.a, %.critedge ], [ %.sroa.7.0..sroa_idx, %.critedge.1 ], [ %.sroa.10.0..sroa_idx, %.critedge.2 ], [ %.sroa.13.0..sroa_idx, %.critedge.3 ], [ %.sroa.16.0..sroa_idx, %.critedge.4 ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.039.0.ptr58.lcssa, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.039.0.ptr58.lcssa, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.p, align 8, !tbaa !32
  %.not53 = icmp eq i64 %i.r, -1                  ; 2 uses
  %brmerge = select i1 %.not53, i1 true, i1 %.not54
  %.mux = select i1 %.not53, i8 2, i8 0
  br i1 %brmerge, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_129CompressionMethodRequirementsESaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.j unwind label %bb.l       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.t = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.u = icmp ugt i64 %i.t, %i.s
  br i1 %i.u, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_129CompressionMethodRequirementsESaIS2_EED2Ev.exit, label %bb.m

bb.l:                                             ; preds = %bb.b, %bb.n, %bb.j, %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_129CompressionMethodRequirementsESaIS2_EED2Ev.exit38

bb.m:                                             ; preds = %bb.k
  %i.w = load i64, ptr %i.q, align 8, !tbaa !32
  %.not55 = icmp eq i64 %i.w, -1
  br i1 %.not55, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.o unwind label %bb.l

bb.o:                                             ; preds = %bb.n
  %i.y = icmp ult i64 %i.x, %i.s
  br i1 %i.y, label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_129CompressionMethodRequirementsESaIS2_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  br label %_ZNSt6vectorIN6duckdb12_GLOBAL__N_129CompressionMethodRequirementsESaIS2_EED2Ev.exit

_ZNSt6vectorIN6duckdb12_GLOBAL__N_129CompressionMethodRequirementsESaIS2_EED2Ev.exit: ; preds = %bb.h, %.critedge.4, %bb.o, %bb.k, %bb.p
  %.sroa.050.1 = phi i8 [ 2, %bb.o ], [ 0, %.critedge.4 ], [ 1, %bb.k ], [ 0, %bb.p ], [ %.mux, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZdlPv(ptr noundef nonnull %i.a) #23
  ret i8 %.sroa.050.1

_ZNSt6vectorIN6duckdb12_GLOBAL__N_129CompressionMethodRequirementsESaIS2_EED2Ev.exit38: ; preds = %bb.l, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.v, %bb.l ], [ %i.j, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZdlPv(ptr noundef nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  store i64 %1, ptr %0, align 8, !tbaa !32
  %i.a = icmp eq i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.440, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn11 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #21
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn11, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn10

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.442, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #21
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret i64 %i.a

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb23TryGetDatePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_17DatePartSpecifierE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 85 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17   ; 6 uses
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36.thread45 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !20
  %i.d = load i32, ptr %i.c, align 1
  %i.e = icmp ne i32 %i.d, 1918985593
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36.thread45

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28: ; preds = %bb.a
  %.pre = load ptr, ptr %2, align 8, !tbaa !20
  %bcmp.i27 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.40, i64 %i.b)
  %i.h = icmp eq i32 %bcmp.i27, 0
  br i1 %i.h, label %.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36.thread45

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30: ; preds = %bb.a
  %.pre46 = load ptr, ptr %2, align 8, !tbaa !20
  %bcmp.i29 = call i32 @bcmp(ptr %.pre46, ptr nonnull @.str.41, i64 %i.b)
  %i.i = icmp eq i32 %bcmp.i29, 0
  br i1 %i.i, label %.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36.thread45

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32: ; preds = %bb.a
  %.pre47 = load ptr, ptr %2, align 8, !tbaa !20  ; 2 uses
  %bcmp.i31 = call i32 @bcmp(ptr %.pre47, ptr nonnull @.str.42, i64 %i.b)
  %i.j = icmp eq i32 %bcmp.i31, 0
  br i1 %i.j, label %.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34: ; preds = %bb.a
  %.pre48 = load ptr, ptr %2, align 8, !tbaa !20
  %bcmp.i33 = call i32 @bcmp(ptr %.pre48, ptr nonnull @.str.43, i64 %i.b)
  %i.k = icmp eq i32 %bcmp.i33, 0
  br i1 %i.k, label %.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36.thread45

bb.b:                                             ; preds = %bb.el, %bb.ej, %bb.eh, %bb.ef, %bb.ed, %bb.eb, %bb.dz, %bb.dx, %bb.dv, %bb.dt, %bb.dr, %bb.dp, %bb.dn, %bb.dl, %bb.dj, %bb.dh, %bb.df, %bb.dd, %bb.db, %bb.cz, %bb.cx, %bb.cv, %bb.ct, %bb.cr, %bb.cp, %bb.cn, %bb.cl, %bb.cj, %bb.ch, %bb.cf, %bb.cd, %bb.cb, %bb.bz, %bb.bx, %bb.bv, %bb.bt, %bb.br, %bb.bp, %bb.bn, %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.bd, %bb.bb, %bb.az, %bb.ax, %bb.av, %bb.at, %bb.ar, %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36.thread45
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
end_hunk_0
