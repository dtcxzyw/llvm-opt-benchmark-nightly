inline.NumInlined: 1548
inline.NumDeleted: 830
begin_hunk_0_@llvm.lifetime.start.p0

declare void @_ZNK6duckdb24CommonTableExpressionMap8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !80     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.42, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb16RecursiveCTENode6EqualsEPKNS_9QueryNodeE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK6duckdb9QueryNode6EqualsEPKS0_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1)
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef nonnull align 8 dereferenceable(224) ptr @_ZNK6duckdb9QueryNode4CastINS_16RecursiveCTENodeEEERKT_v(ptr noundef nonnull align 8 dereferenceable(120) %1) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load i8, ptr %i.d, align 8, !tbaa !25, !range !72, !noundef !73
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = load i8, ptr %i.f, align 8, !tbaa !25, !range !72, !noundef !73
  %.not = icmp eq i8 %i.e, %i.g
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.j = tail call noundef zeroext i1 @_ZN6duckdb16ParsedExpression10ListEqualsERKNS_6vectorINS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEELb1ESaIS5_EEES9_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i)
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !80
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(120) %i.l, ptr noundef %i.n)
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.t = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !80
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(120) %i.t, ptr noundef %i.v)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.c ], [ false, %bb.e ], [ %i.z, %bb.f ], [ false, %bb.d ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZNK6duckdb9QueryNode6EqualsEPKS0_(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(224) ptr @_ZNK6duckdb9QueryNode4CastINS_16RecursiveCTENodeEEERKT_v(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !81
  %.not = icmp eq i8 %i.b, 4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %2)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #20
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare noundef zeroext i1 @_ZN6duckdb16ParsedExpression10ListEqualsERKNS_6vectorINS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEELb1ESaIS5_EEES9_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb16RecursiveCTENode4CopyEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(224) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.28", align 8 ; 13 uses
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 8 uses
  %4 = alloca %"class.duckdb::unique_ptr", align 8 ; 8 uses
  %5 = alloca %"class.duckdb::unique_ptr.37", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.a = tail call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #23, !noalias !82, !inline_history !85 ; 11 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb9QueryNodeE, i64 16), ptr %i.a, align 8, !tbaa !17, !noalias !82
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 4, ptr %i.b, align 8, !tbaa !81, !noalias !82
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false), !noalias !82
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  invoke void @_ZN6duckdb24CommonTableExpressionMapC1Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.d)
          to label %_ZN6duckdb9make_uniqINS_16RecursiveCTENodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %.body.i, !noalias !82, !inline_history !86

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb16RecursiveCTENodeESt14default_deleteIS1_EED2Ev.exit37, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.e, %.body.i ], [ %.pn13.pn.pn, %_ZNSt10unique_ptrIN6duckdb16RecursiveCTENodeESt14default_deleteIS1_EED2Ev.exit37 ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #20, !noalias !82, !inline_history !86
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #21, !noalias !82, !inline_history !85
  br label %common.resume

_ZN6duckdb9make_uniqINS_16RecursiveCTENodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb16RecursiveCTENodeE, i64 16), ptr %i.a, align 8, !tbaa !17, !noalias !82
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !7, !noalias !82
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 0, ptr %i.h, align 8, !tbaa !11, !noalias !82
  store i8 0, ptr %i.g, align 8, !tbaa !14, !noalias !82
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i8 0, i64 64, i1 false), !noalias !82
  store ptr %i.a, ptr %2, align 8, !tbaa !87, !alias.scope !82
  %i.j = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16RecursiveCTENodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %_ZN6duckdb9make_uniqINS_16RecursiveCTENodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.n = load i8, ptr %i.m, align 8, !tbaa !25, !range !72, !noundef !73
  %i.o = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16RecursiveCTENodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  store i8 %i.n, ptr %i.p, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.r = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.d unwind label %bb.l       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %i.r)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.v = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16RecursiveCTENodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 160 ; 2 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !80
  store ptr null, ptr %3, align 8, !tbaa !80
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !80   ; 3 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !80
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.f
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.y) #20, !inline_history !89
  %.pr = load ptr, ptr %3, align 8, !tbaa !80     ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.ac = load ptr, ptr %.pr, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.pr) #20, !inline_history !90
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.f, %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ag = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.g unwind label %bb.n       ; 2 uses

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %i.ag)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ak = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16RecursiveCTENodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 168 ; 2 uses
  %i.am = load ptr, ptr %4, align 8, !tbaa !80
  store ptr null, ptr %4, align 8, !tbaa !80
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !80 ; 3 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !80
  %.not.i.i.i.i.i17 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i17, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit22, label %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit19

_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit19: ; preds = %bb.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.an) #20, !inline_history !89
  %.pr42 = load ptr, ptr %4, align 8, !tbaa !80   ; 3 uses
  %.not.i20 = icmp eq ptr %.pr42, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit22, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i21

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i21: ; preds = %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit19
  %i.ar = load ptr, ptr %.pr42, align 8, !tbaa !17
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.pr42) #20, !inline_history !90
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit22

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit22: ; preds = %bb.i, %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit19, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.au = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16RecursiveCTENodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit22
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 176
  %i.ax = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit unwind label %bb.k ; 0 uses

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit: ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !91 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !91 ; 2 uses
  %.not46 = icmp eq ptr %i.az, %i.bb
  br i1 %.not46, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit
  %i.bc = invoke noundef nonnull align 8 dereferenceable(224) ptr @_ZNK6duckdb10unique_ptrINS_16RecursiveCTENodeESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.y unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b, %bb.y, %._crit_edge, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZN6duckdb9make_uniqINS_16RecursiveCTENodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.l:                                             ; preds = %bb.d, %bb.c
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit25

bb.m:                                             ; preds = %bb.e
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %3, align 8, !tbaa !80    ; 3 uses
  %.not.i23 = icmp eq ptr %i.bg, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit25, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i24

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i24: ; preds = %bb.m
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.bg) #20, !inline_history !90
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit25

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit25: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i24, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.be, %bb.l ], [ %i.bf, %bb.m ], [ %i.bf, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.z

bb.n:                                             ; preds = %bb.g, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit28

bb.o:                                             ; preds = %bb.h
  %i.bl = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZNK6duckdb10unique_ptrINS_16RecursiveCTENodeESt14default_deleteIS1_ELb1EEptEv:bb.a
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !87     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_16RecursiveCTENodeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.42, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_16RecursiveCTENodeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !94     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.42, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZNK6duckdb9QueryNode14CopyPropertiesERS0_(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(224) ptr @_ZNK6duckdb10unique_ptrINS_16RecursiveCTENodeESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !87     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_16RecursiveCTENodeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.42, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_16RecursiveCTENodeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZNK6duckdb7CTENode8ToStringB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 24, ptr %i.a, align 8, !tbaa !115
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %2, align 8, !tbaa !15
  %i.e = load i64, ptr %i.a, align 8, !tbaa !115  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.d, ptr noundef nonnull align 1 dereferenceable(24) @.str.4, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !11
  %i.g = load ptr, ptr %2, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc ] ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.c
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.k) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #20
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn7 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn8, %bb.c ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn7

bb.e:                                             ; preds = %bb.a
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

declare void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #4

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress noreturn uwtable
define noundef zeroext i1 @_ZNK6duckdb7CTENode6EqualsEPKNS_9QueryNodeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 24, ptr %i.a, align 8, !tbaa !115
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %2, align 8, !tbaa !15
  %i.e = load i64, ptr %i.a, align 8, !tbaa !115  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.d, ptr noundef nonnull align 1 dereferenceable(24) @.str.4, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !11
  %i.g = load ptr, ptr %2, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc ] ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.c
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.k) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #20
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn7 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn8, %bb.c ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn7

bb.e:                                             ; preds = %bb.a
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZNK6duckdb7CTENode4CopyEv(ptr dead_on_unwind noalias nofree readnone sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 24, ptr %i.a, align 8, !tbaa !115
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %2, align 8, !tbaa !15
  %i.e = load i64, ptr %i.a, align 8, !tbaa !115  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.d, ptr noundef nonnull align 1 dereferenceable(24) @.str.4, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !11
  %i.g = load ptr, ptr %2, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc ] ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.c
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.k) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #20
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn7 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn8, %bb.c ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn7

bb.e:                                             ; preds = %bb.a
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb10SelectNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(240) initializes((0, 9), (16, 40)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb9QueryNodeE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN6duckdb24CommonTableExpressionMapC1Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %_ZN6duckdb9QueryNodeC2ENS_13QueryNodeTypeE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #20
  resume { ptr, i32 } %i.d

_ZN6duckdb9QueryNodeC2ENS_13QueryNodeTypeE.exit:  ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb10SelectNodeE, i64 16), ptr %0, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr null, ptr %i.f, align 8, !tbaa !116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(105) %i.e, i8 0, i64 105, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb10SelectNode8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(240) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %i.g = alloca i64, align 8                      ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::vector.234", align 8   ; 9 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 44 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.duckdb::SQLIdentifier", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !119
  %.not436 = icmp eq ptr %i.l, null
  br i1 %.not436, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i8, ptr %i.n, align 8, !tbaa !121
  %i.p = icmp eq i8 %i.o, 10
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %i.q)
  br label %bb.fo

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.u, ptr %7, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 36 uses
  store i64 0, ptr %i.v, align 8, !tbaa !11
  store i8 0, ptr %i.u, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke void @_ZNK6duckdb24CommonTableExpressionMap8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(80) %i.w)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %7, align 8, !tbaa !15     ; 6 uses
  %i.y = icmp eq ptr %i.x, %i.u
  %i.z = load ptr, ptr %8, align 8, !tbaa !15     ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.ab = icmp eq ptr %i.z, %i.aa                 ; 2 uses
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.e
  br i1 %i.ab, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.e
  br i1 %i.ab, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !11 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  switch i64 %i.ad, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.af = load i8, ptr %i.z, align 1, !tbaa !14
  store i8 %i.af, ptr %i.x, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.z, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.ag = load i64, ptr %i.ac, align 8, !tbaa !11 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK6duckdb10SelectNode6EqualsEPKNS_9QueryNodeE:bb.a
  %i.f = tail call noundef zeroext i1 @_ZN6duckdb14ExpressionUtil10ListEqualsERKNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESA_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  br i1 %i.f, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.i = tail call noundef zeroext i1 @_ZN6duckdb8TableRef6EqualsERKNS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  br i1 %i.i, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.l = tail call noundef zeroext i1 @_ZN6duckdb16ParsedExpression6EqualsERKNS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br i1 %i.l, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.o = tail call noundef zeroext i1 @_ZN6duckdb16ParsedExpression10ListEqualsERKNS_6vectorINS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEELb1ESaIS5_EEES9_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n)
  br i1 %i.o, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.r = tail call noundef zeroext i1 @_ZStneISt3setImSt4lessImESaImEESaIS4_EEbRKSt6vectorIT_T0_ESB_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q)
  br i1 %i.r, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !204
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !204
  %i.w = tail call noundef zeroext i1 @_ZN6duckdb13SampleOptions6EqualsEPS0_S1_(ptr noundef %i.t, ptr noundef %i.v)
  br i1 %i.w, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.z = tail call noundef zeroext i1 @_ZN6duckdb16ParsedExpression6EqualsERKNS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.ac = tail call noundef zeroext i1 @_ZN6duckdb16ParsedExpression6EqualsERKNS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.f ], [ false, %bb.i ], [ %i.ac, %bb.j ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(240) ptr @_ZNK6duckdb9QueryNode4CastINS_10SelectNodeEEERKT_v(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !81
  %.not = icmp eq i8 %i.b, 1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %2)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #20
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare noundef zeroext i1 @_ZN6duckdb14ExpressionUtil10ListEqualsERKNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESA_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb8TableRef6EqualsERKNS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb16ParsedExpression6EqualsERKNS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZStneISt3setImSt4lessImESaImEESaIS4_EEbRKSt6vectorIT_T0_ESB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !167    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !165
  %i.i = load ptr, ptr %1, align 8, !tbaa !167    ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp eq i64 %i.f, %i.l
  br i1 %i.m, label %bb.b, label %_ZSteqISt3setImSt4lessImESaImEESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit

bb.b:                                             ; preds = %bb.a
  %.not12.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not12.i.i.i.i.i, label %_ZSteqISt3setImSt4lessImESaImEESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.loopexit.i.i.i.i.i
  %.014.i.i.i.i.i = phi ptr [ %i.ae, %.loopexit.i.i.i.i.i ], [ %i.i, %bb.b ] ; 3 uses
  %.0813.i.i.i.i.i = phi ptr [ %i.ad, %.loopexit.i.i.i.i.i ], [ %i.c, %bb.b ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !168
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !168
  %.not.not = icmp ne i64 %i.o, %i.q              ; 3 uses
  br i1 %.not.not, label %_ZSteqISt3setImSt4lessImESaImEESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !173  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i, i64 8 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i:           ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !173
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.d, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i
  %.sroa.0.08.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ac, %bb.d ], [ %i.v, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %bb.d ], [ %i.s, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !115
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !115
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %_ZSteqISt3setImSt4lessImESaImEESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ab = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.i) #24 ; 2 uses
  %i.ac = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.08.i.i.i.i.i.i.i.i.i.i.i) #24
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.t
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !241

.loopexit.i.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i, i64 48 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZSteqISt3setImSt4lessImESaImEESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !242

_ZSteqISt3setImSt4lessImESaImEESaIS4_EEbRKSt6vectorIT_T0_ESB_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.loopexit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.a, %bb.b
  %i.af = phi i1 [ true, %bb.a ], [ true, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ false, %bb.b ], [ %.not.not, %.loopexit.i.i.i.i.i ], [ %.not.not, %.lr.ph.i.i.i.i.i ]
  ret i1 %i.af
}

declare noundef zeroext i1 @_ZN6duckdb13SampleOptions6EqualsEPS0_S1_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb10SelectNode4CopyEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.91", align 8 ; 16 uses
  %3 = alloca %"class.duckdb::unique_ptr.37", align 8 ; 9 uses
  %4 = alloca %"class.duckdb::unique_ptr.47", align 8 ; 9 uses
  %5 = alloca %"class.duckdb::unique_ptr.37", align 8 ; 9 uses
  %6 = alloca %"class.duckdb::unique_ptr.37", align 8 ; 9 uses
  %7 = alloca %"class.duckdb::unique_ptr.37", align 8 ; 9 uses
  %8 = alloca %"class.duckdb::unique_ptr.37", align 8 ; 9 uses
  %9 = alloca %"class.duckdb::unique_ptr.62", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.a = tail call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #23, !noalias !243, !inline_history !246 ; 3 uses
  invoke void @_ZN6duckdb10SelectNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.a)
          to label %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !243, !inline_history !246

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit95, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %.pn30.pn.pn, %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit95 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #21, !noalias !243, !inline_history !246
  br label %common.resume

_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %2, align 8, !tbaa !247, !alias.scope !243
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91   ; 2 uses
  %.not128 = icmp eq ptr %i.d, %i.f
  br i1 %.not128, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !119
  %.not116 = icmp eq ptr %i.h, null
  br i1 %.not116, label %bb.n, label %bb.l

.lr.ph:                                           ; preds = %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %.sroa.0100.0129 = phi ptr [ %i.bf, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit ], [ %i.d, %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit ] ; 2 uses
  %i.i = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.i       ; 3 uses

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.k = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0100.0129)
          to label %bb.d unwind label %bb.j       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.37") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !92   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 136 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !93
  %.not.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i.i, label %bb.f, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.e
  %i.s = load i64, ptr %3, align 8, !tbaa !94
  store i64 %i.s, ptr %i.p, align 8, !tbaa !94
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.o, align 8, !tbaa !92
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !96   ; 10 uses
  %i.v = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.g, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #22
          to label %.noexc unwind label %.loopexit.split-lp123

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.z = ashr exact i64 %i.x, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975)
  %i.ad = select i1 %i.ab, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ad, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #23
          to label %.noexc34 unwind label %.loopexit122 ; 10 uses

.noexc34:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  %i.ah = load i64, ptr %3, align 8, !tbaa !94
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !94
  store ptr null, ptr %3, align 8, !tbaa !94
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.p
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc34
  %i.ai = add i64 %i.v, -8
  %i.aj = sub i64 %i.ai, %i.w                     ; 2 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader193, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.af, i64 8
  %i.am = add i64 %i.v, -8
  %i.an = sub i64 %i.am, %i.w
  %i.ao = and i64 %i.an, -8                       ; 2 uses
  %scevgep162 = getelementptr i8, ptr %scevgep, i64 %i.ao
  %scevgep163 = getelementptr i8, ptr %i.u, i64 8
  %scevgep164 = getelementptr i8, ptr %scevgep163, i64 %i.ao
  %bound0 = icmp ult ptr %i.af, %scevgep164
  %bound1 = icmp ult ptr %i.u, %scevgep162
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader193, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 4611686018427387900     ; 3 uses
  %i.ap = shl i64 %n.vec, 3                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.af, i64 %i.ap  ; 2 uses
  %i.ar = getelementptr i8, ptr %i.u, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.as ; 2 uses
  %next.gep165 = getelementptr i8, ptr %i.u, i64 %i.as ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.at = getelementptr i8, ptr %next.gep165, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep165, align 8, !tbaa !94, !alias.scope !254, !noalias !249
  %wide.load166 = load <2 x i64>, ptr %i.at, align 8, !tbaa !94, !alias.scope !254, !noalias !249
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !94, !alias.scope !257, !noalias !254
  store <2 x i64> %wide.load166, ptr %i.au, align 8, !tbaa !94, !alias.scope !257, !noalias !254
  %i.av = getelementptr i8, ptr %next.gep165, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep165, align 8, !tbaa !94, !alias.scope !254, !noalias !249
  store <2 x ptr> splat (ptr null), ptr %i.av, align 8, !tbaa !94, !alias.scope !254, !noalias !249
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !259

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader193

.lr.ph.i.i.i.i.i.i.i.preheader193:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader193, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader193 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader193 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.ax = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !94, !alias.scope !252, !noalias !249
  store i64 %i.ax, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !94, !alias.scope !249, !noalias !252
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !94, !alias.scope !252, !noalias !249
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.p
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !260

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc34
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.af, %.noexc34 ], [ %i.aq, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.u) #21
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.h
  store ptr %i.af, ptr %i.j, align 8, !tbaa !96
  store ptr %i.ba, ptr %i.o, align 8, !tbaa !92
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad
  store ptr %i.bb, ptr %i.q, align 8, !tbaa !93
  %.pr = load ptr, ptr %3, align 8, !tbaa !94     ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
end_hunk_2
begin_hunk_3_@_ZNK6duckdb6vectorINS_10unique_ptrINS_9QueryNodeESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm:bb.a
bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorINS_10unique_ptrINS_9QueryNodeESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERKS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb16SetOperationNode6EqualsEPKNS_9QueryNodeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK6duckdb9QueryNode6EqualsEPKS0_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1)
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK6duckdb9QueryNode4CastINS_16SetOperationNodeEEERKT_v(ptr noundef nonnull align 8 dereferenceable(120) %1) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i8, ptr %i.d, align 8, !tbaa !279
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.g = load i8, ptr %i.f, align 8, !tbaa !279
  %.not = icmp eq i8 %i.e, %i.g
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.i = load i8, ptr %i.h, align 1, !tbaa !288, !range !72, !noundef !73
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 121
  %i.k = load i8, ptr %i.j, align 1, !tbaa !288, !range !72, !noundef !73
  %.not17 = icmp eq i8 %i.i, %i.k
  br i1 %.not17, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !295  ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !296  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !295
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !296
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %.not18 = icmp eq i64 %i.r, %i.y
  br i1 %.not18, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.e
  %.not1920 = icmp eq ptr %i.n, %i.o
  br i1 %.not1920, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.z = add nuw i64 %.021, 1                     ; 2 uses
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !295
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !296
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  %.not19.not = icmp ult i64 %i.z, %i.af
  br i1 %.not19.not, label %.lr.ph, label %.loopexit, !llvm.loop !307

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.021 = phi i64 [ %i.z, %bb.f ], [ 0, %.preheader ] ; 3 uses
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_9QueryNodeESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %.021)
  %i.ah = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) ; 2 uses
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_9QueryNodeESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %.021)
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !80
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(120) %i.ah, ptr noundef %i.aj) ; 3 uses
  br i1 %i.an, label %bb.f, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.f, %.preheader, %bb.c, %bb.d, %bb.e, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.d ], [ true, %.preheader ], [ %i.an, %bb.f ], [ %i.an, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(152) ptr @_ZNK6duckdb9QueryNode4CastINS_16SetOperationNodeEEERKT_v(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !81
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %2)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #20
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
define void @_ZNK6duckdb16SetOperationNode4CopyEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(152) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.106", align 8 ; 10 uses
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.a = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #23, !noalias !308, !inline_history !311 ; 3 uses
  invoke void @_ZN6duckdb16SetOperationNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(152) %i.a)
          to label %_ZN6duckdb9make_uniqINS_16SetOperationNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !308, !inline_history !311

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit18, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit18 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #21, !noalias !308, !inline_history !311
  br label %common.resume

_ZN6duckdb9make_uniqINS_16SetOperationNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %2, align 8, !tbaa !312, !alias.scope !308
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.d = load i8, ptr %i.c, align 8, !tbaa !279
  %i.e = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16SetOperationNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6duckdb9make_uniqINS_16SetOperationNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store i8 %i.d, ptr %i.f, align 8, !tbaa !279
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 121
  %i.h = load i8, ptr %i.g, align 1, !tbaa !288, !range !72, !noundef !73
  %i.i = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16SetOperationNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 121
  store i8 %i.h, ptr %i.j, align 1, !tbaa !288
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !314  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !314  ; 2 uses
  %.not23 = icmp eq ptr %i.l, %i.n
  br i1 %.not23, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, %bb.d
  %i.o = invoke noundef nonnull align 8 dereferenceable(152) ptr @_ZNK6duckdb10unique_ptrINS_16SetOperationNodeESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.o unwind label %bb.e

bb.e:                                             ; preds = %bb.o, %._crit_edge, %bb.c, %_ZN6duckdb9make_uniqINS_16SetOperationNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.lr.ph:                                           ; preds = %bb.d, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit
  %.sroa.019.024 = phi ptr [ %i.bn, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit ], [ %i.l, %bb.d ] ; 2 uses
  %i.q = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16SetOperationNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.l       ; 3 uses

bb.f:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.s = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.019.024)
          to label %bb.g unwind label %bb.m       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %i.s)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 136 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !295  ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 144 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !315
  %.not.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not.i.i, label %bb.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.h
  %i.aa = load i64, ptr %3, align 8, !tbaa !80
  store i64 %i.aa, ptr %i.x, align 8, !tbaa !80
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !295
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !296 ; 10 uses
  %i.ad = ptrtoint ptr %i.x to i64                ; 3 uses
  %i.ae = ptrtoint ptr %i.ac to i64               ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.j, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #22
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.ah = ashr exact i64 %i.af, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %i.al = select i1 %i.aj, i64 1152921504606846975, i64 %i.ak ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #23
          to label %.noexc11 unwind label %.loopexit ; 10 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  %i.ap = load i64, ptr %3, align 8, !tbaa !80
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !80
  store ptr null, ptr %3, align 8, !tbaa !80
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.x
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc11
  %i.aq = add i64 %i.ad, -8
  %i.ar = sub i64 %i.aq, %i.ae                    ; 2 uses
  %i.as = lshr i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader38, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.an, i64 8
  %i.au = add i64 %i.ad, -8
  %i.av = sub i64 %i.au, %i.ae
  %i.aw = and i64 %i.av, -8                       ; 2 uses
  %scevgep32 = getelementptr i8, ptr %scevgep, i64 %i.aw
  %scevgep33 = getelementptr i8, ptr %i.ac, i64 8
  %scevgep34 = getelementptr i8, ptr %scevgep33, i64 %i.aw
  %bound0 = icmp ult ptr %i.an, %scevgep34
  %bound1 = icmp ult ptr %i.ac, %scevgep32
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader38, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.at, 4611686018427387900     ; 3 uses
  %i.ax = shl i64 %n.vec, 3                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.an, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %i.ac, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.ba ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.ac, i64 %i.ba ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.bb = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !tbaa !80, !alias.scope !321, !noalias !316
  %wide.load36 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !80, !alias.scope !321, !noalias !316
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !80, !alias.scope !324, !noalias !321
  store <2 x i64> %wide.load36, ptr %i.bc, align 8, !tbaa !80, !alias.scope !324, !noalias !321
  %i.bd = getelementptr i8, ptr %next.gep35, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !80, !alias.scope !321, !noalias !316
  store <2 x ptr> splat (ptr null), ptr %i.bd, align 8, !tbaa !80, !alias.scope !321, !noalias !316
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !326

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader38

.lr.ph.i.i.i.i.i.i.i.preheader38:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader38, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader38 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader38 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.bf = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !80, !alias.scope !319, !noalias !316
  store i64 %i.bf, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !80, !alias.scope !316, !noalias !319
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !80, !alias.scope !319, !noalias !316
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.x
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !327

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc11
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.an, %.noexc11 ], [ %i.ay, %middle.block ], [ %i.bh, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ac) #21
end_hunk_3
begin_hunk_4_@_ZNK6duckdb16SetOperationNode4CopyEv:bb.a
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %bb.g, %bb.f
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit14

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.bq = load ptr, ptr %3, align 8, !tbaa !80    ; 3 uses
  %.not.i12 = icmp eq ptr %i.bq, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit14, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i13

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i13: ; preds = %bb.n
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.bq) #20, !inline_history !90
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit14

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit14: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i13, %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.m ], [ %lpad.phi, %bb.n ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge
  invoke void @_ZNK6duckdb9QueryNode14CopyPropertiesERS0_(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(120) %i.o)
          to label %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit unwind label %bb.e

_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.o
  %i.bu = load ptr, ptr %2, align 8, !tbaa !312
  store ptr %i.bu, ptr %0, align 8, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.p:                                             ; preds = %bb.l, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit14, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit14 ], [ %i.bo, %bb.l ]
  %i.bv = load ptr, ptr %2, align 8, !tbaa !312   ; 3 uses
  %.not.i16 = icmp eq ptr %i.bv, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit18, label %_ZNKSt14default_deleteIN6duckdb16SetOperationNodeEEclEPS1_.exit.i17

_ZNKSt14default_deleteIN6duckdb16SetOperationNodeEEclEPS1_.exit.i17: ; preds = %bb.p
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !17
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(152) %i.bv) #20, !inline_history !328
  br label %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit18

_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit18: ; preds = %bb.p, %_ZNKSt14default_deleteIN6duckdb16SetOperationNodeEEclEPS1_.exit.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_16SetOperationNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !312    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_16SetOperationNodeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.42, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_16SetOperationNodeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(152) ptr @_ZNK6duckdb10unique_ptrINS_16SetOperationNodeESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !312    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_16SetOperationNodeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.42, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_16SetOperationNodeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16SetOperationNodeC2ENS_16SetOperationTypeENS_10unique_ptrINS_9QueryNodeESt14default_deleteIS3_ELb1EEES6_NS_6vectorIS6_Lb1ESaIS6_EEEb(ptr noundef nonnull align 8 dereferenceable(152) initializes((0, 9), (16, 40)) %0, i8 noundef zeroext %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, i1 noundef zeroext %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb9QueryNodeE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.a, align 8, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN6duckdb24CommonTableExpressionMapC1Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %_ZN6duckdb9QueryNodeC2ENS_13QueryNodeTypeE.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.y, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.b ], [ %.pn20.pn, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #20
  br label %common.resume

_ZN6duckdb9QueryNodeC2ENS_13QueryNodeTypeE.exit:  ; preds = %bb.a
  %i.e = zext i1 %5 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb16SetOperationNodeE, i64 16), ptr %0, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %1, ptr %i.f, align 8, !tbaa !279
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 %i.e, ptr %i.g, align 1, !tbaa !288
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.i = load ptr, ptr %4, align 8, !tbaa !314    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !314  ; 2 uses
  %i.l = icmp eq ptr %i.i, %i.k
  %i.m = load ptr, ptr %2, align 8                ; 2 uses
  %.not56 = icmp eq ptr %i.m, null                ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.k

bb.c:                                             ; preds = %_ZN6duckdb9QueryNodeC2ENS_13QueryNodeTypeE.exit
  %i.n = ptrtoint ptr %i.m to i64
  br i1 %.not56, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %3, align 8, !tbaa !80
  %.not57 = icmp eq ptr %i.o, null
  br i1 %.not57, label %bb.e, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb22SerializationExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN6duckdb22SerializationExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.z unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.09 = phi i1 [ false, %bb.g ], [ true, %bb.f ] ; 2 uses
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.s = load ptr, ptr %6, align 8, !tbaa !15     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.s) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br i1 %.09, label %bb.i, label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br i1 %.09, label %bb.i, label %bb.y

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn1848 = phi { ptr, i32 } [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.p) #20
  br label %bb.y

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.x = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #23
          to label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i25 unwind label %bb.j ; 6 uses

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i25: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  store i64 %i.n, ptr %i.x, align 8, !tbaa !80
  store ptr null, ptr %2, align 8, !tbaa !80
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.h, align 8, !tbaa !296
  store ptr %i.y, ptr %i.v, align 8, !tbaa !295
  store ptr %i.y, ptr %i.w, align 8, !tbaa !315
  %i.z = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23
          to label %.lr.ph.i.i.i.i.i.i.i29.preheader unwind label %bb.j ; 6 uses

.lr.ph.i.i.i.i.i.i.i29.preheader:                 ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %3, align 8, !tbaa !80
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !80
  store ptr null, ptr %3, align 8, !tbaa !80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.ac = load i64, ptr %i.x, align 8, !tbaa !80, !alias.scope !332, !noalias !329
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !80, !alias.scope !329, !noalias !332
  store ptr null, ptr %i.x, align 8, !tbaa !80, !alias.scope !332, !noalias !329
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #21
  store ptr %i.z, ptr %i.h, align 8, !tbaa !296
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !295
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !315
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit39

bb.j:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i25, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.k:                                             ; preds = %_ZN6duckdb9QueryNodeC2ENS_13QueryNodeTypeE.exit
  br i1 %.not56, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %3, align 8, !tbaa !80
  %.not55 = icmp eq ptr %i.ag, null
  br i1 %.not55, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ah = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.n unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.thread

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6duckdb22SerializationExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTIN6duckdb22SerializationExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.z unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.thread: ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %.07 = phi i1 [ false, %bb.o ], [ true, %bb.n ] ; 2 uses
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ak = load ptr, ptr %8, align 8, !tbaa !15    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.ak) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br i1 %.07, label %bb.q, label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br i1 %.07, label %bb.q, label %bb.y

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %.pn51 = phi { ptr, i32 } [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.thread ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ]
  call void @__cxa_free_exception(ptr %i.ah) #20
  br label %bb.y

bb.r:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.i, ptr %i.h, align 8, !tbaa !296
  store ptr %i.k, ptr %i.an, align 8, !tbaa !295
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !315
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !315
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !295
  %.pre60 = load ptr, ptr %i.h, align 8, !tbaa !296
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit39

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit39: ; preds = %bb.r, %.lr.ph.i.i.i.i.i.i.i29.preheader
  %12 = phi ptr [ %.pre60, %bb.r ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i29.preheader ]
  %13 = phi ptr [ %.pre, %bb.r ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i29.preheader ]
  %i.ar = ptrtoint ptr %13 to i64
  %i.as = ptrtoint ptr %12 to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp ult i64 %i.at, 9
  br i1 %i.au, label %bb.s, label %bb.x

bb.s:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit39
  %i.av = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.t unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6duckdb22SerializationExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.av, ptr nonnull @_ZTIN6duckdb22SerializationExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.z unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread: ; preds = %bb.s
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0 = phi i1 [ false, %bb.u ], [ true, %bb.t ]  ; 2 uses
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ay = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.ay) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br i1 %.0, label %bb.w, label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br i1 %.0, label %bb.w, label %bb.y

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %.pn2054 = phi { ptr, i32 } [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.thread ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ]
  call void @__cxa_free_exception(ptr %i.av) #20
  br label %bb.y

bb.x:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit39
  ret void

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i, %bb.j
  %.pn20.pn = phi { ptr, i32 } [ %.pn2054, %bb.w ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.af, %bb.j ], [ %.pn1848, %bb.i ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn51, %bb.q ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.h) #20
  call void @_ZN6duckdb9QueryNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) #20
  br label %common.resume

bb.z:                                             ; preds = %bb.u, %bb.o, %bb.g
  unreachable
}

declare void @_ZN6duckdb22SerializationExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !296    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !295  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.d) #20, !inline_history !334
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !335

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !296
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #21
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb16SetOperationNode18SerializeChildNodeERNS_10SerializerEm(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(680) %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.duckdb::unique_ptr", align 8 ; 6 uses
  %5 = alloca %"class.duckdb::unique_ptr", align 8 ; 6 uses
  %6 = alloca %"class.duckdb::vector.100", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %10 = alloca %"class.duckdb::vector.100", align 8 ; 19 uses
  %11 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  %12 = alloca %"class.duckdb::vector.100", align 8 ; 11 uses
  %13 = alloca %"class.duckdb::vector.100", align 8 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = tail call noundef zeroext i1 @_ZNK6duckdb26SerializationCompatibility7CompareEm(ptr noundef nonnull align 8 dereferenceable(41) %i.d, i64 noundef 7)
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !113
  br label %bb.au

bb.c:                                             ; preds = %bb.a
  switch i64 %3, label %bb.e [
    i64 0, label %bb.d
    i64 1, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_9QueryNodeESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0)
  %i.h = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %i.h)
  br label %bb.au

bb.e:                                             ; preds = %bb.c
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.aw unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.016 = phi i1 [ false, %bb.g ], [ true, %bb.f ] ; 2 uses
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.o = load ptr, ptr %8, align 8, !tbaa !15     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.o) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br i1 %.016, label %bb.i, label %bb.av

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br i1 %.016, label %bb.i, label %bb.av

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn33152 = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.l) #20
  br label %bb.av

end_hunk_4
begin_hunk_5_@_ZNK6duckdb16SetOperationNode18SerializeChildNodeERNS_10SerializerEm:bb.a
  br i1 %cmp.n336, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i92, label %.lr.ph.i.i.i.i.i.i.i88.preheader340

.lr.ph.i.i.i.i.i.i.i88.preheader340:              ; preds = %vector.memcheck315, %.lr.ph.i.i.i.i.i.i.i88.preheader, %middle.block335
  %.012.i.i.i.i.i.i.i89.ph = phi ptr [ %i.hm, %vector.memcheck315 ], [ %i.hm, %.lr.ph.i.i.i.i.i.i.i88.preheader ], [ %i.hx, %middle.block335 ]
  %.0911.i.i.i.i.i.i.i90.ph = phi ptr [ %i.ds, %vector.memcheck315 ], [ %i.ds, %.lr.ph.i.i.i.i.i.i.i88.preheader ], [ %i.hy, %middle.block335 ]
  br label %.lr.ph.i.i.i.i.i.i.i88

.lr.ph.i.i.i.i.i.i.i88:                           ; preds = %.lr.ph.i.i.i.i.i.i.i88.preheader340, %.lr.ph.i.i.i.i.i.i.i88
  %.012.i.i.i.i.i.i.i89 = phi ptr [ %i.ig, %.lr.ph.i.i.i.i.i.i.i88 ], [ %.012.i.i.i.i.i.i.i89.ph, %.lr.ph.i.i.i.i.i.i.i88.preheader340 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i90 = phi ptr [ %i.if, %.lr.ph.i.i.i.i.i.i.i88 ], [ %.0911.i.i.i.i.i.i.i90.ph, %.lr.ph.i.i.i.i.i.i.i88.preheader340 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.ie = load i64, ptr %.0911.i.i.i.i.i.i.i90, align 8, !tbaa !80, !alias.scope !374, !noalias !371
  store i64 %i.ie, ptr %.012.i.i.i.i.i.i.i89, align 8, !tbaa !80, !alias.scope !371, !noalias !374
  store ptr null, ptr %.0911.i.i.i.i.i.i.i90, align 8, !tbaa !80, !alias.scope !374, !noalias !371
  %i.if = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i90, i64 8 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i89, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i91 = icmp eq ptr %i.if, %i.dt
  br i1 %.not.i.i.i.i.i.i.i91, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i92, label %.lr.ph.i.i.i.i.i.i.i88, !llvm.loop !382

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i92: ; preds = %.lr.ph.i.i.i.i.i.i.i88, %middle.block335, %.noexc97
  %.0.lcssa.i.i.i.i.i.i.i93 = phi ptr [ %i.hm, %.noexc97 ], [ %i.hx, %middle.block335 ], [ %i.ig, %.lr.ph.i.i.i.i.i.i.i88 ]
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i93, i64 8 ; 2 uses
  %.not.i23.i.i.i94 = icmp eq ptr %i.ds, null
  br i1 %.not.i23.i.i.i94, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i92
  call void @_ZdlPv(ptr noundef nonnull %i.ds) #21
  %.pre205.pre = load ptr, ptr %13, align 8, !tbaa !296
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95: ; preds = %bb.an, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i92
  %.pre205 = phi ptr [ %.pre205.pre, %bb.an ], [ null, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i92 ]
  store ptr %i.hm, ptr %12, align 8, !tbaa !296
  store ptr %i.ih, ptr %i.al, align 8, !tbaa !295
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.hk ; 3 uses
  store ptr %i.ii, ptr %i.am, align 8, !tbaa !315
  br label %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95, %bb.ak
  %i.ij = phi ptr [ %i.ii, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95 ], [ %i.dr, %bb.ak ]
  %.pr.i111 = phi ptr [ %.pre205, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95 ], [ null, %bb.ak ] ; 4 uses
  %i.ik = phi ptr [ %i.hm, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95 ], [ %i.ds, %bb.ak ]
  %i.il = phi ptr [ %i.ii, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95 ], [ %i.dt, %bb.ak ]
  %i.im = phi ptr [ %i.ih, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i95 ], [ %i.hb, %bb.ak ]
  %i.in = load ptr, ptr %i.ak, align 8, !tbaa !295 ; 2 uses
  %.not4.i.i.i103 = icmp eq ptr %.pr.i111, %i.in
  br i1 %.not4.i.i.i103, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i112, label %.lr.ph.i.i.i104

.lr.ph.i.i.i104:                                  ; preds = %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i108
  %.05.i.i.i105 = phi ptr [ %i.is, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i108 ], [ %.pr.i111, %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.io = load ptr, ptr %.05.i.i.i105, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i106 = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i.i.i106, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i108, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i107

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i107: ; preds = %.lr.ph.i.i.i104
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !17
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8
  call void %i.ir(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.io) #20, !inline_history !350
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i108

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i108: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i107, %.lr.ph.i.i.i104
  %i.is = getelementptr inbounds nuw i8, ptr %.05.i.i.i105, i64 8 ; 2 uses
  %.not.i.i.i109 = icmp eq ptr %i.is, %i.in
  br i1 %.not.i.i.i109, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i112, label %.lr.ph.i.i.i104, !llvm.loop !335

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i112: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i108, %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit
  %.not.i.i1.i113 = icmp eq ptr %.pr.i111, null
  br i1 %.not.i.i1.i113, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit114, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i112
  call void @_ZdlPv(ptr noundef nonnull %.pr.i111) #21
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit114

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit114: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i112, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit56

bb.ap:                                            ; preds = %bb.af
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %.body64

_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit120.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i84
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit120

_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit120.loopexit.split-lp: ; preds = %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit120

_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit120: ; preds = %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit120.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit120.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit120.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit120.loopexit.split-lp ]
  %i.iu = load ptr, ptr %i.fu, align 8, !tbaa !17
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8
  call void %i.iw(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.fu) #20, !inline_history !90
  br label %.body64

.body64:                                          ; preds = %bb.ap, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit15.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i73, %bb.ad, %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit120
  %.pn = phi { ptr, i32 } [ %lpad.phi, %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit120 ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i72 ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i73 ], [ %.pn8.i.i.i69, %bb.ad ], [ %i.it, %bb.ap ], [ %i.gr, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit15.i ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %.body

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit56: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i53, %bb.w, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit114
  %i.ix = phi ptr [ %i.fi, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i53 ], [ %i.dr, %bb.w ], [ %i.ij, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit114 ] ; 2 uses
  %i.iy = phi ptr [ %i.em, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i53 ], [ %i.ds, %bb.w ], [ %i.ik, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit114 ] ; 2 uses
  %i.iz = phi ptr [ %i.fi, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i53 ], [ %i.dr, %bb.w ], [ %i.il, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit114 ]
  %i.ja = phi ptr [ %i.fh, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i53 ], [ %i.eb, %bb.w ], [ %i.im, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit114 ] ; 2 uses
  %i.jb = add i64 %.0190, 2                       ; 2 uses
  %i.jc = load ptr, ptr %i.ac, align 8, !tbaa !295 ; 3 uses
  %i.jd = load ptr, ptr %10, align 8, !tbaa !296  ; 6 uses
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = sub i64 %i.je, %i.jf
  %i.jh = ashr exact i64 %i.jg, 3                 ; 2 uses
  %i.ji = icmp ult i64 %i.jb, %i.jh
  br i1 %i.ji, label %.lr.ph191, label %._crit_edge, !llvm.loop !383

.body:                                            ; preds = %.body.loopexit, %.body.loopexit.split-lp, %.body64
  %.pn28 = phi { ptr, i32 } [ %.pn, %.body64 ], [ %lpad.loopexit154, %.body.loopexit ], [ %lpad.loopexit.split-lp155, %.body.loopexit.split-lp ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.at

._crit_edge194:                                   ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %.preheader
  %i.jj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_9QueryNodeESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef 0)
          to label %bb.aq unwind label %bb.as     ; 2 uses

bb.aq:                                            ; preds = %._crit_edge194
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !80
  store i64 %i.jk, ptr %0, align 8, !tbaa !80
  store ptr null, ptr %i.jj, align 8, !tbaa !80
  %i.jl = load ptr, ptr %10, align 8, !tbaa !296  ; 3 uses
  %i.jm = load ptr, ptr %i.ac, align 8, !tbaa !295 ; 2 uses
  %.not4.i.i.i121 = icmp eq ptr %i.jl, %i.jm
  br i1 %.not4.i.i.i121, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i130, label %.lr.ph.i.i.i122

.lr.ph.i.i.i122:                                  ; preds = %bb.aq, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i126
  %.05.i.i.i123 = phi ptr [ %i.jr, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i126 ], [ %i.jl, %bb.aq ] ; 2 uses
  %i.jn = load ptr, ptr %.05.i.i.i123, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i.i124 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i.i.i124, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i126, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i125

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i125: ; preds = %.lr.ph.i.i.i122
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !17
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8
  call void %i.jq(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.jn) #20, !inline_history !350
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i126

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i126: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i125, %.lr.ph.i.i.i122
  %i.jr = getelementptr inbounds nuw i8, ptr %.05.i.i.i123, i64 8 ; 2 uses
  %.not.i.i.i127 = icmp eq ptr %i.jr, %i.jm
  br i1 %.not.i.i.i127, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i128, label %.lr.ph.i.i.i122, !llvm.loop !335

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i128: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i126
  %.pr.i129 = load ptr, ptr %10, align 8, !tbaa !296
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i130

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i130: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i128, %bb.aq
  %i.js = phi ptr [ %.pr.i129, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i128 ], [ %i.jl, %bb.aq ] ; 2 uses
  %.not.i.i1.i131 = icmp eq ptr %i.js, null
  br i1 %.not.i.i1.i131, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit132, label %bb.ar

bb.ar:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i130
  call void @_ZdlPv(ptr noundef nonnull %i.js) #21
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit132

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit132: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i130, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.au

bb.as:                                            ; preds = %._crit_edge194
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.body, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit39
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit39 ], [ %.pn28, %.body ], [ %i.jt, %bb.as ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.av

bb.au:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit132, %bb.d, %bb.b
  ret void

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i, %bb.at
  %.pn33.pn = phi { ptr, i32 } [ %.pn33152, %bb.i ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn30.pn, %bb.at ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn33.pn

bb.aw:                                            ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb16SetOperationNode18SerializeChildListERNS_10SerializerE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(680) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = tail call noundef zeroext i1 @_ZNK6duckdb26SerializationCompatibility7CompareEm(ptr noundef nonnull align 8 dereferenceable(41) %i.a, i64 noundef 7)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_9QueryNodeESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !295
  %i.e = load ptr, ptr %0, align 8, !tbaa !296    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !115
  store i64 %i.i, ptr %i.b, align 8, !tbaa !115
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_9QueryNodeESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, label %bb.b, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.45, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10unique_ptrINS_9QueryNodeESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13StatementNodeC2ERNS_12SQLStatementE(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 9), (16, 40)) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb9QueryNodeE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 6, ptr %i.a, align 8, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN6duckdb24CommonTableExpressionMapC1Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %_ZN6duckdb9QueryNodeC2ENS_13QueryNodeTypeE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #20
  resume { ptr, i32 } %i.d

_ZN6duckdb9QueryNodeC2ENS_13QueryNodeTypeE.exit:  ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb13StatementNodeE, i64 16), ptr %0, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %1, ptr %i.e, align 8, !tbaa !384
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb13StatementNode8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !386, !nonnull !73, !align !388 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb13StatementNode6EqualsEPKNS_9QueryNodeE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK6duckdb9QueryNode6EqualsEPKS0_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1)
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb9QueryNode4CastINS_13StatementNodeEEERKT_v(ptr noundef nonnull align 8 dereferenceable(120) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !386, !nonnull !73, !align !388
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !386, !nonnull !73, !align !388
  %i.h = icmp eq ptr %i.e, %i.g
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ false, %bb.a ], [ %i.h, %bb.c ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb9QueryNode4CastINS_13StatementNodeEEERKT_v(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !81
  %.not = icmp eq i8 %i.b, 6
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %2)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #20
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
define void @_ZNK6duckdb13StatementNode4CopyEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !386, !nonnull !73, !align !388
  %i.c = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #23, !noalias !389, !inline_history !392 ; 3 uses
  invoke void @_ZN6duckdb13StatementNodeC1ERNS_12SQLStatementE(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %_ZNSt10unique_ptrIN6duckdb13StatementNodeESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !389, !inline_history !392

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #21, !noalias !389, !inline_history !392
  resume { ptr, i32 } %i.d

_ZNSt10unique_ptrIN6duckdb13StatementNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.c, ptr %0, align 8, !tbaa !113
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZNK6duckdb13StatementNode9SerializeERNS_10SerializerE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 34, ptr %i.a, align 8, !tbaa !115
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %2, align 8, !tbaa !15
  %i.e = load i64, ptr %i.a, align 8, !tbaa !115  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.d, ptr noundef nonnull align 1 dereferenceable(34) @.str.35, i64 34, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.j) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #20
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn7 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn8, %bb.c ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn7

bb.e:                                             ; preds = %bb.a
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZN6duckdb13StatementNode11DeserializeERNS_12DeserializerE(ptr dead_on_unwind noalias nofree readnone sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(632) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 36, ptr %i.a, align 8, !tbaa !115
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %2, align 8, !tbaa !15
  %i.e = load i64, ptr %i.a, align 8, !tbaa !115  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.d, ptr noundef nonnull align 1 dereferenceable(36) @.str.36, i64 36, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.j) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #20
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn7 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn8, %bb.c ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn7

bb.e:                                             ; preds = %bb.a
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb16RecursiveCTENodeD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb16RecursiveCTENodeE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !94 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(56) %i.e) #20, !inline_history !393
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !394

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !96
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #21
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !395  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !396  ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.l, %i.n
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.r, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.l, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.o = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !15 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2
  tail call void @_ZdlPv(ptr noundef %i.o) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.r, %i.n
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !397

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i5 = load ptr, ptr %i.k, align 8, !tbaa !395
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.s = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.l, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i6 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !80   ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.u) #20, !inline_history !90
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !80   ; 3 uses
  %.not.i7 = icmp eq ptr %i.z, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit9, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i8

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i8: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.z) #20, !inline_history !90
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit9

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit9: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !15 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit9
  tail call void @_ZdlPv(ptr noundef %i.ae) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb9QueryNodeE, i64 16), ptr %0, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ah) #20
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !138 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !137 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aq, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.am = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !239 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !17
end_hunk_5
