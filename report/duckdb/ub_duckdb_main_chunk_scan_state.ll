inline.NumInlined: 239
inline.NumDeleted: 159
begin_hunk_0

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25QueryResultChunkScanStateC2ERNS_11QueryResultE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(392) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6duckdb14ChunkScanStateC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6duckdb25QueryResultChunkScanStateE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.a, align 8, !tbaa !9
  ret void
}

declare void @_ZN6duckdb14ChunkScanStateC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6duckdb14ChunkScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb25QueryResultChunkScanStateD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6duckdb14ChunkScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb25QueryResultChunkScanStateD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6duckdb25QueryResultChunkScanStateD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #18
  tail call void @_ZdlPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb25QueryResultChunkScanState12InternalLoadERNS_9ErrorDataE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12, !nonnull !25, !align !26 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !27
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(424) ptr @_ZN6duckdb11QueryResult4CastINS_17StreamQueryResultEEERT_v(ptr noundef nonnull align 8 dereferenceable(392) %i.b)
  %i.g = tail call noundef zeroext i1 @_ZN6duckdb17StreamQueryResult6IsOpenEv(ptr noundef nonnull align 8 dereferenceable(424) %i.f)
  br i1 %i.g, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.h = phi ptr [ %.pre, %._crit_edge ], [ %i.b, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = tail call noundef zeroext i1 @_ZN6duckdb11QueryResult8TryFetchERNS_10unique_ptrINS_9DataChunkESt14default_deleteIS2_ELb1EEERNS_9ErrorDataE(ptr noundef nonnull align 8 dereferenceable(392) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i1 [ %i.j, %bb.c ], [ true, %bb.b ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(424) ptr @_ZN6duckdb11QueryResult4CastINS_17StreamQueryResultEEERT_v(ptr noundef nonnull align 8 dereferenceable(392) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.27", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !27
  %.not = icmp eq i8 %i.b, 1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #18
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare noundef zeroext i1 @_ZN6duckdb17StreamQueryResult6IsOpenEv(ptr noundef nonnull align 8 dereferenceable(424)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb11QueryResult8TryFetchERNS_10unique_ptrINS_9DataChunkESt14default_deleteIS2_ELb1EEERNS_9ErrorDataE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 7 uses
  %4 = alloca %"class.duckdb::ErrorData", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::allocator.27", align 1 ; 4 uses
  %7 = alloca %"class.duckdb::ErrorData", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  invoke void @_ZN6duckdb11QueryResult5FetchEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(392) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !64
  store ptr null, ptr %3, align 8, !tbaa !64
  %i.b = load ptr, ptr %1, align 8, !tbaa !64     ; 3 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !64
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.b
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.b) #18
  call void @_ZdlPv(ptr noundef nonnull %i.b) #19
  %.pr = load ptr, ptr %3, align 8, !tbaa !64     ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %.pr) #18
  call void @_ZdlPv(ptr noundef nonnull %.pr) #19
  br label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZN6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load i8, ptr %i.c, align 8, !tbaa !65, !range !66, !noundef !25
  %i.e = trunc nuw i8 %i.d to i1
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = extractvalue { ptr, i32 } %i.f, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.i = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #18
  %i.j = icmp eq i32 %i.h, %i.i
  %i.k = call ptr @__cxa_begin_catch(ptr %i.g) #18
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN6duckdb9ErrorDataC1ERKSt9exception(ptr noundef nonnull align 8 dereferenceable(128) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.l = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb9ErrorDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(128) %7) #18 ; 0 uses
  call void @_ZN6duckdb9ErrorDataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @__cxa_end_catch()
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb9ErrorDataC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.m = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb9ErrorDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(128) %4) #18 ; 0 uses
  call void @_ZN6duckdb9ErrorDataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %4) #18
  %i.n = load ptr, ptr %5, align 8, !tbaa !63     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.n) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @__cxa_end_catch()
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.j:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %5, align 8, !tbaa !63     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.s) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.i
  %.pn = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.r, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

bb.k:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit
  %.0 = phi i1 [ %i.e, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit ], [ false, %bb.e ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret i1 %.0

bb.m:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %.pn14 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %i.v, %bb.k ]
  resume { ptr, i32 } %.pn14

bb.n:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb25QueryResultChunkScanState8HasErrorEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12, !nonnull !25, !align !26
  %i.c = tail call noundef zeroext i1 @_ZNK6duckdb15BaseQueryResult8HasErrorEv(ptr noundef nonnull align 8 dereferenceable(336) %i.b)
  ret i1 %i.c
}

declare noundef zeroext i1 @_ZNK6duckdb15BaseQueryResult8HasErrorEv(ptr noundef nonnull align 8 dereferenceable(336)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb25QueryResultChunkScanState8GetErrorEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12, !nonnull !25, !align !26
  %i.c = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb15BaseQueryResult14GetErrorObjectEv(ptr noundef nonnull align 8 dereferenceable(336) %i.b)
  ret ptr %i.c
}

declare noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb15BaseQueryResult14GetErrorObjectEv(ptr noundef nonnull align 8 dereferenceable(336)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb25QueryResultChunkScanState5TypesEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12, !nonnull !25, !align !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb25QueryResultChunkScanState5NamesB5cxx11Ev(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12, !nonnull !25, !align !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb25QueryResultChunkScanState13LoadNextChunkERNS_9ErrorDataE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !67, !range !66, !noundef !25
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12, !nonnull !25, !align !26 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !27
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN6duckdb25QueryResultChunkScanState12InternalLoadERNS_9ErrorDataE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(424) ptr @_ZN6duckdb11QueryResult4CastINS_17StreamQueryResultEEERT_v(ptr noundef nonnull align 8 dereferenceable(392) %i.e)
  %i.j = tail call noundef zeroext i1 @_ZN6duckdb17StreamQueryResult6IsOpenEv(ptr noundef nonnull align 8 dereferenceable(424) %i.i)
  br i1 %i.j, label %._crit_edge.i, label %_ZN6duckdb25QueryResultChunkScanState12InternalLoadERNS_9ErrorDataE.exit.thread

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !12
  br label %_ZN6duckdb25QueryResultChunkScanState12InternalLoadERNS_9ErrorDataE.exit

_ZN6duckdb25QueryResultChunkScanState12InternalLoadERNS_9ErrorDataE.exit: ; preds = %bb.b, %._crit_edge.i
  %i.k = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.e, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = tail call noundef zeroext i1 @_ZN6duckdb11QueryResult8TryFetchERNS_10unique_ptrINS_9DataChunkESt14default_deleteIS2_ELb1EEERNS_9ErrorDataE(ptr noundef nonnull align 8 dereferenceable(392) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(128) %1)
  br i1 %i.m, label %_ZN6duckdb25QueryResultChunkScanState12InternalLoadERNS_9ErrorDataE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb25QueryResultChunkScanState12InternalLoadERNS_9ErrorDataE.exit
  store i8 1, ptr %i.a, align 8, !tbaa !67
  br label %_ZN6duckdb25QueryResultChunkScanState12InternalLoadERNS_9ErrorDataE.exit.thread

_ZN6duckdb25QueryResultChunkScanState12InternalLoadERNS_9ErrorDataE.exit.thread: ; preds = %bb.c, %bb.d, %_ZN6duckdb25QueryResultChunkScanState12InternalLoadERNS_9ErrorDataE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !68
  %i.o = load i8, ptr %i.a, align 8, !tbaa !67, !range !66, !noundef !25
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = xor i1 %i.p, true
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN6duckdb25QueryResultChunkScanState12InternalLoadERNS_9ErrorDataE.exit.thread
  %.0 = phi i1 [ %i.q, %_ZN6duckdb25QueryResultChunkScanState12InternalLoadERNS_9ErrorDataE.exit.thread ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb29BatchCollectionChunkScanStateC2ERNS_21BatchedDataCollectionERNS_25BatchedChunkIteratorRangeERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb14ChunkScanStateC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6duckdb29BatchCollectionChunkScanStateE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.a, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.b, i8 0, i64 32, i1 false)
  store ptr %i.d, ptr %i.c, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 1, ptr %i.e, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.h, i8 0, i64 17, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb21BatchedDataCollection14InitializeScanERNS_21BatchedChunkScanStateERKNS_25BatchedChunkIteratorRangeE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #22
          to label %.noexc unwind label %bb.j     ; 3 uses

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %_ZN6duckdb9make_uniqINS_9DataChunkEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !75

bb.c:                                             ; preds = %.noexc
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #19, !noalias !75
  br label %.body

_ZN6duckdb9make_uniqINS_9DataChunkEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !64   ; 3 uses
  store ptr %i.j, ptr %i.l, align 8, !tbaa !64
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_9DataChunkEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.m) #18
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #19
  br label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i, %_ZN6duckdb9make_uniqINS_9DataChunkEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb13BufferManager16GetBufferManagerERNS_13ClientContextE(ptr noundef nonnull align 1 %3)
          to label %bb.d unwind label %bb.k       ; 2 uses

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.s = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.t = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb21BatchedDataCollection5TypesEv(ptr noundef nonnull align 8 dereferenceable(192) %1)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef 2048)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  ret void

bb.i:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.c, %bb.k, %bb.i
  %.pn = phi { ptr, i32 } [ %i.w, %bb.k ], [ %i.u, %bb.i ], [ %i.v, %bb.j ], [ %i.k, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.x) #18
  tail call void @_ZN6duckdb14ChunkScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #18
  resume { ptr, i32 } %.pn
end_hunk_0
