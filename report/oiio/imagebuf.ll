inline.NumInlined: 16779
inline.NumDeleted: 5497
begin_hunk_0_@_ZN11OpenImageIO4v3_18ImageBuf16set_write_formatENS0_4spanIKNS0_8TypeDescELm18446744073709551615EEE:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_18ImageBuf16set_write_formatENS0_8TypeDescE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 3 uses
  store i64 %1, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 576 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !115  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 584 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !146
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf16set_write_formatENS0_4spanIKNS0_8TypeDescELm18446744073709551615EEE.exit.a, label %_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i.i.a

_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i.i.a: ; preds = %bb.a
  store ptr %i.d, ptr %i.e, align 8, !tbaa !146
  br label %_ZN11OpenImageIO4v3_18ImageBuf16set_write_formatENS0_4spanIKNS0_8TypeDescELm18446744073709551615EEE.exit.a

_ZN11OpenImageIO4v3_18ImageBuf16set_write_formatENS0_4spanIKNS0_8TypeDescELm18446744073709551615EEE.exit.a: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i.i.a, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_assign_auxIPKS2_EEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %2, ptr noundef nonnull %i.g)
  ret void
}

end_hunk_0
