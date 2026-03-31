begin_hunk_0
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(68) %18, ptr noundef nonnull dead_on_return %19)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  switch i64 %i.c, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread [
    i64 0, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  ]
end_hunk_0
begin_hunk_1
  %i.g = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 12, ptr %i.g, align 8, !tbaa !13
  invoke void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %20, ptr noundef nonnull align 8 dereferenceable(160) %i.e, ptr noundef nonnull dead_on_return %21, ptr noundef nonnull dead_on_return %22)
          to label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread unwind label %bb.d

bb.c:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #39
  br label %bb.bg

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %20, i64 16, i1 false), !tbaa.struct !121
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #39
  %.pre = load i64, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  %i.j = icmp eq i64 %.pre, 0
  br i1 %i.j, label %bb.e, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.a, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread
  %29 = phi i64 [ %.pre, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread ], [ 7, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %i.c, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13
  %i.m = icmp eq i64 %i.l, 0
end_hunk_2
begin_hunk_3
  br label %.body

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, %bb.f
  %i.u = phi i64 [ %29, %bb.f ], [ %.pre69, %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit ]
  %.024 = phi ptr [ %7, %bb.f ], [ @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #39
  %i.v = load ptr, ptr %2, align 8, !tbaa !8
end_hunk_3
begin_hunk_4
  %.034 = phi ptr [ %10, %bb.a ], [ @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit ] ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13   ; 2 uses
  switch i64 %i.l, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread [
    i64 0, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  ]
end_hunk_4
begin_hunk_5
  %i.u = load i64, ptr %i.t, align 8, !tbaa !13
  store i64 %i.u, ptr %i.s, align 8, !tbaa !13
  invoke void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %23, ptr noundef nonnull align 8 dereferenceable(160) %i.p, ptr noundef nonnull dead_on_return %24, ptr noundef nonnull dead_on_return %25)
          to label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread unwind label %bb.l

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
  %i.v = landingpad { ptr, i32 }
end_hunk_5
begin_hunk_6
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #39
  br label %.body

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread: ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false), !tbaa.struct !121
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #39
  %.pre = load i64, ptr %i.k, align 8, !tbaa !13  ; 2 uses
  %i.x = icmp eq i64 %.pre, 0
  br i1 %i.x, label %bb.n, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread

bb.n:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA25_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(25) @.str.73)
          to label %bb.bu unwind label %bb.g

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.h, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread
  %40 = phi i64 [ %.pre, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread ], [ 7, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %i.l, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #39
  %i.y = load ptr, ptr %2, align 8, !tbaa !8
  store ptr %i.y, ptr %27, align 8, !tbaa !8
end_hunk_6
begin_hunk_7
  %i.ah = load ptr, ptr %.034, align 8, !tbaa !120, !noalias !424
  store ptr %i.ag, ptr %16, align 8, !tbaa !8, !noalias !424
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %40, ptr %i.ai, align 8, !tbaa !13, !noalias !424
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl7resolveENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %29, ptr noundef nonnull align 8 dereferenceable(385) %i.ah, ptr noundef nonnull dead_on_return %16)
          to label %bb.o unwind label %bb.al

end_hunk_7
