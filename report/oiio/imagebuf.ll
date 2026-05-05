inline.NumInlined: 16780
inline.NumDeleted: 5497
begin_hunk_0_@_ZN11OpenImageIO4v3_18ImageBuf16set_write_formatENS0_4spanIKNS0_8TypeDescELm18446744073709551615EEE:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_18ImageBuf16set_write_formatENS0_8TypeDescE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 2 uses
  store i64 %1, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 576 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !115  ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 584 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !146  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf16set_write_formatENS0_4spanIKNS0_8TypeDescELm18446744073709551615EEE.exit, label %_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.e, align 8, !tbaa !146
  br label %_ZN11OpenImageIO4v3_18ImageBuf16set_write_formatENS0_4spanIKNS0_8TypeDescELm18446744073709551615EEE.exit

_ZN11OpenImageIO4v3_18ImageBuf16set_write_formatENS0_4spanIKNS0_8TypeDescELm18446744073709551615EEE.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %3 = phi ptr [ %i.f, %bb.a ], [ %i.d, %_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i.i ] ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 592 ; 2 uses
  %5 = load ptr, ptr %4, align 8, !tbaa !116
  %6 = ptrtoint ptr %5 to i64
  %7 = ptrtoint ptr %i.d to i64                   ; 3 uses
  %8 = sub i64 %6, %7                             ; 2 uses
  %9 = icmp ult i64 %8, 8
  br i1 %9, label %10, label %14

10:                                               ; preds = %_ZN11OpenImageIO4v3_18ImageBuf16set_write_formatENS0_4spanIKNS0_8TypeDescELm18446744073709551615EEE.exit
  %11 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #45 ; 3 uses
  store i64 %1, ptr %11, align 4
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %12

12:                                               ; preds = %10
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %8) #43
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %12, %10
  store ptr %11, ptr %i.c, align 8, !tbaa !115
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr %13, ptr %i.e, align 8, !tbaa !146
  store ptr %13, ptr %4, align 8, !tbaa !116
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_assign_auxIPKS2_EEvT_S8_St20forward_iterator_tag.exit

14:                                               ; preds = %_ZN11OpenImageIO4v3_18ImageBuf16set_write_formatENS0_4spanIKNS0_8TypeDescELm18446744073709551615EEE.exit
  %15 = ptrtoint ptr %3 to i64                    ; 2 uses
  %16 = sub i64 %15, %7                           ; 2 uses
  %.not.i = icmp ult i64 %16, 8
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf16set_write_formatENS0_4spanIKNS0_8TypeDescELm18446744073709551615EEE.exit.a, label %17

17:                                               ; preds = %14
  store i64 %1, ptr %i.d, align 4
  %18 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %19 = load ptr, ptr %i.e, align 8, !tbaa !146
  %.not.i16.i = icmp eq ptr %19, %18
  br i1 %.not.i16.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_assign_auxIPKS2_EEvT_S8_St20forward_iterator_tag.exit, label %_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i.i.a

_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i.i.a: ; preds = %17
  store ptr %18, ptr %i.e, align 8, !tbaa !146
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_assign_auxIPKS2_EEvT_S8_St20forward_iterator_tag.exit

_ZN11OpenImageIO4v3_18ImageBuf16set_write_formatENS0_4spanIKNS0_8TypeDescELm18446744073709551615EEE.exit.a: ; preds = %14
  %.sink.i.i = getelementptr i8, ptr %2, i64 %16
  %20 = sub i64 %7, %15
  %21 = and i64 %20, -8
  %22 = add i64 %21, 8                            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 %.sink.i.i, i64 %22, i1 false)
  %i.g = getelementptr i8, ptr %3, i64 %22
  store ptr %i.g, ptr %i.e, align 8, !tbaa !146
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_assign_auxIPKS2_EEvT_S8_St20forward_iterator_tag.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_assign_auxIPKS2_EEvT_S8_St20forward_iterator_tag.exit: ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE13_M_deallocateEPS2_m.exit.i, %17, %_ZSt8_DestroyIPN11OpenImageIO4v3_18TypeDescES2_EvT_S4_RSaIT0_E.exit.i.i.i.a, %_ZN11OpenImageIO4v3_18ImageBuf16set_write_formatENS0_4spanIKNS0_8TypeDescELm18446744073709551615EEE.exit.a
  ret void
}

end_hunk_0
