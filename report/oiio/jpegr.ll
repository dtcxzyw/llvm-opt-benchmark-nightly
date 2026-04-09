inline.NumInlined: 1675
inline.NumDeleted: 807
begin_hunk_0_@"_ZNSt17_Function_handlerIFvvEZN8ultrahdr5JpegR12applyGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extE19uhdr_color_transfer12uhdr_img_fmtfS4_E3$_0E9_M_invokeERKSt9_Any_data":bb.a
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !73 ; 3 uses
  %i.aj = icmp eq i32 %i.ai, 2
  %i.ak = load float, ptr %i.m, align 8, !tbaa !678 ; 6 uses
  %i.al = tail call float @llvm.trunc.f32(float %i.ak)
  %i.am = fcmp contract une float %i.al, %i.ak    ; 2 uses
  br i1 %i.aj, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvvEZN8ultrahdr5JpegR12applyGainMapEP14uhdr_raw_imageS4_PNS1_25uhdr_gainmap_metadata_extE19uhdr_color_transfer12uhdr_img_fmtfS4_E3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation":bb.a
  ret i1 false
}

declare noundef float @_ZN8ultrahdr9sampleMapEP14uhdr_raw_imagefmm(ptr noundef, float noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

declare noundef float @_ZN8ultrahdr9sampleMapEP14uhdr_raw_imagemmmRNS_11ShepardsIDWE(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7
end_hunk_1
begin_hunk_2_@fputc
; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.trunc.f32(float) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

end_hunk_2
