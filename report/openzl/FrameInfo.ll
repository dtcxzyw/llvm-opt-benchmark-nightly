Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/FrameInfo?download=true
inline.NumInlined: 108
inline.NumDeleted: 76
begin_hunk_0_@_ZNK6openzl9FrameInfo13formatVersionEv:bb.a
bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #8
  resume { ptr, i32 } %i.d

_ZNK6openzl9FrameInfo3getEv.exit:                 ; preds = %bb.a
  %i.e = tail call { i32, i64 } @ZL_FrameInfo_getFormatVersion(ptr noundef nonnull %i.b) ; 2 uses
  %i.f = extractvalue { i32, i64 } %i.e, 0        ; 2 uses
  %i.g = extractvalue { i32, i64 } %i.e, 1        ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNK6openzl9FrameInfo6unwrapI18ZL_Result_size_t_uEENT_9ValueTypeES3_St17basic_string_viewIcSt11char_traitsIcEENS_4poly4impl15source_locationE.exit, label %_ZNO6openzl16ExceptionBuilder10withResultI18ZL_Result_size_t_uEEOS0_T_.exit.i.i

_ZNO6openzl16ExceptionBuilder10withResultI18ZL_Result_size_t_uEEOS0_T_.exit.i.i: ; preds = %_ZNK6openzl9FrameInfo3getEv.exit
  %i.h = tail call ptr @__cxa_allocate_exception(i64 112) #8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store i32 %i.f, ptr %i.k, align 8
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.g, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8
  store i8 1, ptr %i.i, align 8, !tbaa !16
  call void @_ZNO6openzl16ExceptionBuilder5buildEv(ptr dead_on_unwind writable sret(%"class.openzl::Exception") align 8 %i.h, ptr noundef nonnull align 8 dereferenceable(64) %1) #8
  call void @__cxa_throw(ptr %i.h, ptr nonnull @_ZTIN6openzl9ExceptionE, ptr nonnull @_ZN6openzl9ExceptionD2Ev) #9
  unreachable

_ZNK6openzl9FrameInfo6unwrapI18ZL_Result_size_t_uEENT_9ValueTypeES3_St17basic_string_viewIcSt11char_traitsIcEENS_4poly4impl15source_locationE.exit: ; preds = %_ZNK6openzl9FrameInfo3getEv.exit
  ret i64 %i.g
}

declare { i32, i64 } @ZL_FrameInfo_getFormatVersion(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6openzl9FrameInfo10numOutputsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.openzl::ExceptionBuilder", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK6openzl9FrameInfo3getEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 112) #8 ; 3 uses
  invoke void @_ZN6openzl9ExceptionC1ESt17basic_string_viewIcSt11char_traitsIcEENS_4poly4impl15source_locationE(ptr noundef nonnull align 8 dereferenceable(105) %i.c, i64 32, ptr nonnull @.str.1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6openzl9ExceptionE, ptr nonnull @_ZN6openzl9ExceptionD2Ev) #9
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #8
  resume { ptr, i32 } %i.d

_ZNK6openzl9FrameInfo3getEv.exit:                 ; preds = %bb.a
  %i.e = tail call { i32, i64 } @ZL_FrameInfo_getNumOutputs(ptr noundef nonnull %i.b) ; 2 uses
  %i.f = extractvalue { i32, i64 } %i.e, 0        ; 2 uses
  %i.g = extractvalue { i32, i64 } %i.e, 1        ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNK6openzl9FrameInfo6unwrapI18ZL_Result_size_t_uEENT_9ValueTypeES3_St17basic_string_viewIcSt11char_traitsIcEENS_4poly4impl15source_locationE.exit, label %_ZNO6openzl16ExceptionBuilder10withResultI18ZL_Result_size_t_uEEOS0_T_.exit.i.i

_ZNO6openzl16ExceptionBuilder10withResultI18ZL_Result_size_t_uEEOS0_T_.exit.i.i: ; preds = %_ZNK6openzl9FrameInfo3getEv.exit
  %i.h = tail call ptr @__cxa_allocate_exception(i64 112) #8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store i32 %i.f, ptr %i.k, align 8
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.g, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8
  store i8 1, ptr %i.i, align 8, !tbaa !16
  call void @_ZNO6openzl16ExceptionBuilder5buildEv(ptr dead_on_unwind writable sret(%"class.openzl::Exception") align 8 %i.h, ptr noundef nonnull align 8 dereferenceable(64) %1) #8
  call void @__cxa_throw(ptr %i.h, ptr nonnull @_ZTIN6openzl9ExceptionE, ptr nonnull @_ZN6openzl9ExceptionD2Ev) #9
  unreachable

_ZNK6openzl9FrameInfo6unwrapI18ZL_Result_size_t_uEENT_9ValueTypeES3_St17basic_string_viewIcSt11char_traitsIcEENS_4poly4impl15source_locationE.exit: ; preds = %_ZNK6openzl9FrameInfo3getEv.exit
  ret i64 %i.g
}

declare { i32, i64 } @ZL_FrameInfo_getNumOutputs(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6openzl9FrameInfo10outputTypeEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openzl::ExceptionBuilder", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK6openzl9FrameInfo3getEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 112) #8 ; 3 uses
  invoke void @_ZN6openzl9ExceptionC1ESt17basic_string_viewIcSt11char_traitsIcEENS_4poly4impl15source_locationE(ptr noundef nonnull align 8 dereferenceable(105) %i.c, i64 32, ptr nonnull @.str.1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6openzl9ExceptionE, ptr nonnull @_ZN6openzl9ExceptionD2Ev) #9
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #8
  resume { ptr, i32 } %i.d

_ZNK6openzl9FrameInfo3getEv.exit:                 ; preds = %bb.a
  %i.e = trunc i64 %1 to i32
  %i.f = tail call { i32, i64 } @ZL_FrameInfo_getOutputType(ptr noundef nonnull %i.b, i32 noundef %i.e) ; 2 uses
  %i.g = extractvalue { i32, i64 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i32, i64 } %i.f, 1        ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZNK6openzl9FrameInfo6unwrapI18ZL_Result_size_t_uEENT_9ValueTypeES3_St17basic_string_viewIcSt11char_traitsIcEENS_4poly4impl15source_locationE.exit, label %_ZNO6openzl16ExceptionBuilder10withResultI18ZL_Result_size_t_uEEOS0_T_.exit.i.i

_ZNO6openzl16ExceptionBuilder10withResultI18ZL_Result_size_t_uEEOS0_T_.exit.i.i: ; preds = %_ZNK6openzl9FrameInfo3getEv.exit
  %i.i = tail call ptr @__cxa_allocate_exception(i64 112) #8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store i32 %i.g, ptr %i.l, align 8
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.h, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8
  store i8 1, ptr %i.j, align 8, !tbaa !16
  call void @_ZNO6openzl16ExceptionBuilder5buildEv(ptr dead_on_unwind writable sret(%"class.openzl::Exception") align 8 %i.i, ptr noundef nonnull align 8 dereferenceable(64) %2) #8
  call void @__cxa_throw(ptr %i.i, ptr nonnull @_ZTIN6openzl9ExceptionE, ptr nonnull @_ZN6openzl9ExceptionD2Ev) #9
  unreachable

_ZNK6openzl9FrameInfo6unwrapI18ZL_Result_size_t_uEENT_9ValueTypeES3_St17basic_string_viewIcSt11char_traitsIcEENS_4poly4impl15source_locationE.exit: ; preds = %_ZNK6openzl9FrameInfo3getEv.exit
  %i.m = trunc i64 %i.h to i32
  ret i32 %i.m
}

declare { i32, i64 } @ZL_FrameInfo_getOutputType(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6openzl9FrameInfo17outputContentSizeEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openzl::ExceptionBuilder", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK6openzl9FrameInfo3getEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 112) #8 ; 3 uses
  invoke void @_ZN6openzl9ExceptionC1ESt17basic_string_viewIcSt11char_traitsIcEENS_4poly4impl15source_locationE(ptr noundef nonnull align 8 dereferenceable(105) %i.c, i64 32, ptr nonnull @.str.1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6openzl9ExceptionE, ptr nonnull @_ZN6openzl9ExceptionD2Ev) #9
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #8
  resume { ptr, i32 } %i.d

_ZNK6openzl9FrameInfo3getEv.exit:                 ; preds = %bb.a
  %i.e = trunc i64 %1 to i32
  %i.f = tail call { i32, i64 } @ZL_FrameInfo_getDecompressedSize(ptr noundef nonnull %i.b, i32 noundef %i.e) ; 2 uses
  %i.g = extractvalue { i32, i64 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i32, i64 } %i.f, 1        ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZNK6openzl9FrameInfo6unwrapI18ZL_Result_size_t_uEENT_9ValueTypeES3_St17basic_string_viewIcSt11char_traitsIcEENS_4poly4impl15source_locationE.exit, label %_ZNO6openzl16ExceptionBuilder10withResultI18ZL_Result_size_t_uEEOS0_T_.exit.i.i

_ZNO6openzl16ExceptionBuilder10withResultI18ZL_Result_size_t_uEEOS0_T_.exit.i.i: ; preds = %_ZNK6openzl9FrameInfo3getEv.exit
  %i.i = tail call ptr @__cxa_allocate_exception(i64 112) #8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store i32 %i.g, ptr %i.l, align 8
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.h, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8
  store i8 1, ptr %i.j, align 8, !tbaa !16
  call void @_ZNO6openzl16ExceptionBuilder5buildEv(ptr dead_on_unwind writable sret(%"class.openzl::Exception") align 8 %i.i, ptr noundef nonnull align 8 dereferenceable(64) %2) #8
  call void @__cxa_throw(ptr %i.i, ptr nonnull @_ZTIN6openzl9ExceptionE, ptr nonnull @_ZN6openzl9ExceptionD2Ev) #9
  unreachable

_ZNK6openzl9FrameInfo6unwrapI18ZL_Result_size_t_uEENT_9ValueTypeES3_St17basic_string_viewIcSt11char_traitsIcEENS_4poly4impl15source_locationE.exit: ; preds = %_ZNK6openzl9FrameInfo3getEv.exit
  ret i64 %i.h
}

declare { i32, i64 } @ZL_FrameInfo_getDecompressedSize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZNK6openzl9FrameInfo7commentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.openzl::ExceptionBuilder", align 8 ; 7 uses
  %2 = alloca %union.ZL_Result_ZL_Comment_u, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK6openzl9FrameInfo3getEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 112) #8 ; 3 uses
  invoke void @_ZN6openzl9ExceptionC1ESt17basic_string_viewIcSt11char_traitsIcEENS_4poly4impl15source_locationE(ptr noundef nonnull align 8 dereferenceable(105) %i.c, i64 32, ptr nonnull @.str.1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6openzl9ExceptionE, ptr nonnull @_ZN6openzl9ExceptionD2Ev) #9
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #8
  resume { ptr, i32 } %i.d

_ZNK6openzl9FrameInfo3getEv.exit:                 ; preds = %bb.a
  call void @ZL_FrameInfo_getComment(ptr dead_on_unwind nonnull writable sret(%union.ZL_Result_ZL_Comment_u) align 8 %2, ptr noundef nonnull %i.b)
  %.sroa.01.0.copyload = load i32, ptr %2, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %3 = freeze i32 %.sroa.01.0.copyload            ; 2 uses
  %.not.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i, label %_ZNK6openzl9FrameInfo6unwrapI22ZL_Result_ZL_Comment_uEENT_9ValueTypeES3_St17basic_string_viewIcSt11char_traitsIcEENS_4poly4impl15source_locationE.exit, label %_ZNO6openzl16ExceptionBuilder10withResultI22ZL_Result_ZL_Comment_uEEOS0_T_.exit.i.i

_ZNO6openzl16ExceptionBuilder10withResultI22ZL_Result_ZL_Comment_uEEOS0_T_.exit.i.i: ; preds = %_ZNK6openzl9FrameInfo3getEv.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  %i.e = call ptr @__cxa_allocate_exception(i64 112) #8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %4 = zext i32 %3 to i64
  %5 = freeze i32 %.sroa.4.0.copyload
  %6 = zext i32 %5 to i64
  %7 = shl nuw i64 %6, 32
  %8 = or disjoint i64 %7, %4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store i64 %8, ptr %i.h, align 8
  %.sroa.5.4..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.4..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8
  store i8 1, ptr %i.f, align 8, !tbaa !16
  call void @_ZNO6openzl16ExceptionBuilder5buildEv(ptr dead_on_unwind writable sret(%"class.openzl::Exception") align 8 %i.e, ptr noundef nonnull align 8 dereferenceable(64) %1) #8
  call void @__cxa_throw(ptr %i.e, ptr nonnull @_ZTIN6openzl9ExceptionE, ptr nonnull @_ZN6openzl9ExceptionD2Ev) #9
  unreachable

_ZNK6openzl9FrameInfo6unwrapI22ZL_Result_ZL_Comment_uEENT_9ValueTypeES3_St17basic_string_viewIcSt11char_traitsIcEENS_4poly4impl15source_locationE.exit: ; preds = %_ZNK6openzl9FrameInfo3getEv.exit
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.6.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.5.0.copyload, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @ZL_FrameInfo_getComment(ptr dead_on_unwind writable sret(%union.ZL_Result_ZL_Comment_u) align 8, ptr noundef) local_unnamed_addr #1

declare ptr @ZL_FrameInfo_create(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZNO6openzl16ExceptionBuilder5buildEv(ptr dead_on_unwind writable sret(%"class.openzl::Exception") align 8, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl9ExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6openzl9ExceptionE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !24
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !24
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #8
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl9ExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(105) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6openzl9ExceptionE, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !24
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #10, !inline_history !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6openzl9ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !24
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #10, !inline_history !30
  br label %_ZN6openzl9ExceptionD2Ev.exit

_ZN6openzl9ExceptionD2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(105) %0) #8, !inline_history !30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #10
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZN6openzl9ExceptionC1ESt17basic_string_viewIcSt11char_traitsIcEENS_4poly4impl15source_locationE(ptr noundef nonnull align 8 dereferenceable(105), i64, ptr) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"bool", !7, i64 0}
!15 = !{!"_ZTSSt22_Optional_payload_baseI10ZL_Error_sE", !7, i64 0, !14, i64 16}
!16 = !{!15, !14, i64 16}
!17 = !{!"p1 _ZTS12ZL_FrameInfo", !12, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"vtable pointer", !6, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0, !11, i64 8, !7, i64 16}
!23 = !{!22, !13, i64 0}
!24 = !{!7, !7, i64 0}
!25 = !{!11, !11, i64 0}
!26 = !{!13, !13, i64 0}
!27 = !{!12, !12, i64 0}
!28 = !{!"_ZTSSt10_Head_baseILm0EP12ZL_FrameInfoLb0EE", !17, i64 0}
!29 = !{!28, !17, i64 0}
!30 = !{ptr @_ZN6openzl9ExceptionD2Ev}
end_hunk_0
