inline.NumInlined: 483
inline.NumDeleted: 171
begin_hunk_0_@_ZNSt17_Function_handlerIFffEPS0_E9_M_invokeERKSt9_Any_dataOf:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = load float, ptr %1, align 4, !tbaa !11
  %i.c = tail call contract noundef float %i.a(float noundef %i.b), !inline_history !100
  ret float %i.c
}

end_hunk_0
begin_hunk_1_@llvm.sqrt.v4f32
!97 = distinct !{!97, !"_ZSt11make_uniqueIN8ultrahdr18uhdr_raw_image_extEJR12uhdr_img_fmtR16uhdr_color_gamutR19uhdr_color_transferR16uhdr_color_rangeRjSA_iEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!98 = !{!32, !32, i64 0}
!99 = distinct !{!99, !14}
!100 = distinct !{null, null}
end_hunk_1
