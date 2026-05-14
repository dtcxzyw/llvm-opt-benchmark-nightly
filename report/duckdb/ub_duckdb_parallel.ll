inline.NumInlined: 6986
inline.NumDeleted: 3568
begin_hunk_0_@_ZNK6duckdb10unique_ptrINS_14LocalSinkStateESt14default_deleteIS1_ELb1EEptEv:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_14LocalSinkStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  store i64 %1, ptr %0, align 8, !tbaa !1080
  %i.a = icmp eq i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn11 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #36
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn11, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn10

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1015   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !53

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16PipelineExecutor16FinishProcessingEi(ptr noundef nonnull align 8 captures(none) dereferenceable(513) initializes((460, 464)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i.i = alloca { ptr, i64 }, align 8 ; 4 uses
  %2 = alloca %"class.std::stack", align 8        ; 16 uses
  %3 = alloca %"class.duckdb::optional_ptr", align 8 ; 5 uses
  %4 = alloca %"class.duckdb::optional_ptr", align 8 ; 6 uses
  %5 = alloca %"class.duckdb::optional_ptr", align 8 ; 6 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %1, i32 2147483647)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 460
  store i32 %spec.select, ptr %i.a, align 4, !tbaa !998
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseImSaImEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef 0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !903  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1081 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1082 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1083 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.m = load <2 x ptr>, ptr %i.i, align 8, !tbaa !58
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !1083 ; 5 uses
  %.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.o = load <2 x ptr>, ptr %i.j, align 8, !tbaa !905
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 80, i1 false), !tbaa.struct !1084
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !1084
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !905
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !905
  store ptr %i.h, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !905
  store <2 x ptr> %i.m, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !58
  store <2 x ptr> %i.o, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !905
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  store ptr %i.l, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !1085
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  %i.p = icmp ult ptr %i.n, %i.l
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt5stackImSt5dequeImSaImEEEaSEOS3_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %.06.i.pn.i.i.i.i.i = phi ptr [ %.06.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %bb.a ]
  %.06.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.06.i.pn.i.i.i.i.i, i64 8 ; 3 uses
  %i.q = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !905
  call void @_ZdlPv(ptr noundef %i.q) #38
  %i.r = icmp ult ptr %.06.i.i.i.i.i.i, %i.l
  br i1 %i.r, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt5stackImSt5dequeImSaImEEEaSEOS3_.exit, !llvm.loop !1086

_ZNSt5stackImSt5dequeImSaImEEEaSEOS3_.exit:       ; preds = %.lr.ph.i.i.i.i.i.i, %bb.a
  store ptr %i.d, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !905
  store ptr %i.f, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !905
  store ptr %i.h, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !905
  store ptr %i.n, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !1085
  %i.s = load ptr, ptr %2, align 8, !tbaa !1087   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZNSt5stackImSt5dequeImSaImEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt5stackImSt5dequeImSaImEEEaSEOS3_.exit
  %i.t = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !1088 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.v = icmp ult ptr %i.t, %i.u
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %i.t, %bb.b ] ; 3 uses
  %i.w = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !905
  call void @_ZdlPv(ptr noundef %i.w) #38
  %i.x = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.y = icmp ult ptr %.06.i.i.i.i, %i.n
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i, !llvm.loop !1086

_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %2, align 8, !tbaa !1087
  br label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i

_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i, %bb.b
  %i.z = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i ], [ %i.s, %bb.b ]
  call void @_ZdlPv(ptr noundef %i.z) #38
  br label %_ZNSt5stackImSt5dequeImSaImEEED2Ev.exit

_ZNSt5stackImSt5dequeImSaImEEED2Ev.exit:          ; preds = %_ZNSt5stackImSt5dequeImSaImEEEaSEOS3_.exit, %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.aa = load ptr, ptr %0, align 8, !tbaa !897, !nonnull !132, !align !133 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ab, align 8, !tbaa !195
  %.not = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not, label %bb.p, label %bb.c

bb.c:                                             ; preds = %_ZNSt5stackImSt5dequeImSaImEEED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ad = call noundef ptr @_ZNK6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 4 uses
  %i.af = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ae) #36, !noalias !1089 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i, label %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_system_errori(i32 noundef %i.af) #37, !noalias !1089
  unreachable

_ZN6duckdb23StateWithBlockableTasks4LockEv.exit:  ; preds = %bb.c
  %i.ag = load ptr, ptr %0, align 8, !tbaa !897, !nonnull !132, !align !133
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.ai = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %bb.e unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit12.loopexit.split-lp

bb.e:                                             ; preds = %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store atomic i8 0, ptr %i.aj seq_cst, align 1
  %i.ak = load ptr, ptr %0, align 8, !tbaa !897, !nonnull !132, !align !133
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.am = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %bb.f unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit12.loopexit.split-lp ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1092 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1092 ; 2 uses
  %.not55 = icmp eq ptr %i.ao, %i.aq
  br i1 %.not55, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.preheader.i

bb.g:                                             ; preds = %.noexc
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !1093 ; 3 uses
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !1094 ; 2 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.as, %i.ar
  br i1 %.not.i.i.i.i9, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.lr.ph.i.i.i.i.i.i10

.lr.ph.i.i.i.i.i.i10:                             ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.bp, %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i.i ], [ %i.ar, %bb.g ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !146 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i10
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12 ; 3 uses
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !3  ; 2 uses
  %i.ay = add nsw i32 %i.ax, -1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.az = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ax, %bb.i ], [ %i.az, %bb.j ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.k, label %_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !28
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #36, !inline_history !1095
  br label %_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i.i.i.i.i.i.i.i

_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i10
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !146 ; 4 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 12 ; 3 uses
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i2.i.i.i.i.i.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i2.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !3  ; 2 uses
  %i.bj = add nsw i32 %i.bi, -1
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bk = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i4.i.i.i.i.i.i.i.i = phi i32 [ %i.bi, %bb.m ], [ %i.bk, %bb.n ]
  %i.bl = icmp eq i32 %.0.i.i.i.i.i4.i.i.i.i.i.i.i.i, 1
  br i1 %i.bl, label %bb.o, label %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i.i.i.i.i.i
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !28
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #36, !inline_history !1096
  br label %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i.i.i.i.i.i.i.i, %_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.as
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i10, !llvm.loop !1097

_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb14InterruptStateEEvPT_.exit.i.i.i.i.i.i
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !1094
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

.preheader.i:                                     ; preds = %bb.f, %.noexc
  %.sroa.06.09.i = phi ptr [ %i.bq, %.noexc ], [ %i.ao, %bb.f ] ; 2 uses
  invoke void @_ZNK6duckdb14InterruptState8CallbackEv(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.06.09.i)
          to label %.noexc unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit12.loopexit

.noexc:                                           ; preds = %.preheader.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.bq, %i.aq
  br i1 %.not.i, label %bb.g, label %.preheader.i

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.f, %bb.g, %_ZSt8_DestroyIPN6duckdb14InterruptStateES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  %i.br = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ae) #36 ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !897
  br label %bb.p

_ZNSt11unique_lockISt5mutexED2Ev.exit12.loopexit: ; preds = %.preheader.i
  %lpad.loopexit58 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit12

_ZNSt11unique_lockISt5mutexED2Ev.exit12.loopexit.split-lp: ; preds = %bb.e, %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit12

bb.p:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit, %_ZNSt5stackImSt5dequeImSaImEEED2Ev.exit
  %i.bs = phi ptr [ %.pre, %_ZNSt11unique_lockISt5mutexED2Ev.exit ], [ %i.aa, %_ZNSt5stackImSt5dequeImSaImEEED2Ev.exit ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %.sroa.0.0.copyload.i13 = load ptr, ptr %i.bt, align 8, !tbaa !195 ; 2 uses
  %.not56 = icmp eq ptr %.sroa.0.0.copyload.i13, null
  br i1 %.not56, label %bb.ah, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %.sroa.0.0.copyload.i13, ptr %3, align 8
  call void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bu = load ptr, ptr %3, align 8, !tbaa !498
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  %i.bw = call noundef ptr @_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bv)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 4 uses
  %i.by = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bx) #36, !noalias !1098 ; 2 uses
  %.not.i.i.i.i15 = icmp eq i32 %i.by, 0
  br i1 %.not.i.i.i.i15, label %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit16, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZSt20__throw_system_errori(i32 noundef %i.by) #37, !noalias !1098
  unreachable

_ZN6duckdb23StateWithBlockableTasks4LockEv.exit16: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.bz = load ptr, ptr %0, align 8, !tbaa !897, !nonnull !132, !align !133
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %.sroa.0.0.copyload.i17 = load ptr, ptr %i.ca, align 8, !tbaa !195
  store ptr %.sroa.0.0.copyload.i17, ptr %4, align 8
  invoke void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.s unwind label %bb.af

bb.s:                                             ; preds = %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit16
  %i.cb = load ptr, ptr %4, align 8, !tbaa !498
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  %i.cd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cc)
          to label %bb.t unwind label %bb.af

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store atomic i8 0, ptr %i.ce seq_cst, align 1
end_hunk_0
