inline.NumInlined: 6400
inline.NumDeleted: 1723
begin_hunk_0_@_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIfEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_:bb.a
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = fpext float %i.az to double
  %i.bi = fmul double %i.bh, 0x401921FB54442D18
  %i.bj = fptrunc double %i.bi to float           ; 4 uses
  %i.bk = fpext float %i.bd to double
  %i.bl = fmul double %i.bk, 0x400921FB54442D18
  %i.bm = fptrunc double %i.bl to float           ; 2 uses
  %4 = call noundef float @llvm.sin.f32(float %i.bm) ; 3 uses
  %5 = call noundef float @llvm.cos.f32(float %i.bm) ; 2 uses
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %6 = call float @llvm.sin.f32(float %i.bj)
  %7 = fmul float %6, %4
  %8 = fneg float %4
  %9 = call float @llvm.cos.f32(float %i.bj)
  %i.bn = fmul float %9, %8
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %10 = fneg float %4                             ; 2 uses
  %11 = call float @llvm.cos.f32(float %i.bj)
  %12 = fmul float %11, %10
  %13 = call float @llvm.sin.f32(float %i.bj)
  %i.bo = fmul float %13, %10
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit:   ; preds = %bb.l, %bb.k
  %.sink11.i = phi float [ %7, %bb.k ], [ %12, %bb.l ] ; 2 uses
  %.sink10.i = phi float [ %5, %bb.k ], [ %i.bo, %bb.l ] ; 2 uses
  %.sink.i = phi float [ %i.bn, %bb.k ], [ %5, %bb.l ]
  %i.bp = call float @llvm.acos.f32(float %.sink.i)
  %i.bq = fpext ninf float %i.bp to double
  %i.br = fmul double %i.bq, 0x3FD45F306DC9C883
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sin.f32(float) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cos.f32(float) #24

declare void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_1
begin_hunk_2_@_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIhEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_:bb.a
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = fpext float %i.ay to double
  %i.bh = fmul double %i.bg, 0x401921FB54442D18
  %i.bi = fptrunc double %i.bh to float           ; 4 uses
  %i.bj = fpext float %i.bc to double
  %i.bk = fmul double %i.bj, 0x400921FB54442D18
  %i.bl = fptrunc double %i.bk to float           ; 2 uses
  %4 = call noundef float @llvm.sin.f32(float %i.bl) ; 3 uses
  %5 = call noundef float @llvm.cos.f32(float %i.bl) ; 2 uses
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %6 = call float @llvm.sin.f32(float %i.bi)
  %7 = fmul float %6, %4
  %8 = fneg float %4
  %9 = call float @llvm.cos.f32(float %i.bi)
  %i.bm = fmul float %9, %8
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

bb.k:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %10 = fneg float %4                             ; 2 uses
  %11 = call float @llvm.cos.f32(float %i.bi)
  %12 = fmul float %11, %10
  %13 = call float @llvm.sin.f32(float %i.bi)
  %i.bn = fmul float %13, %10
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit:   ; preds = %bb.k, %bb.j
  %.sink11.i = phi float [ %7, %bb.j ], [ %12, %bb.k ] ; 2 uses
  %.sink10.i = phi float [ %5, %bb.j ], [ %i.bn, %bb.k ] ; 2 uses
  %.sink.i = phi float [ %i.bm, %bb.j ], [ %5, %bb.k ]
  %i.bo = call float @llvm.acos.f32(float %.sink.i)
  %i.bp = fpext ninf float %i.bo to double
  %i.bq = fmul double %i.bp, 0x3FD45F306DC9C883
end_hunk_2
begin_hunk_3_@_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_bNS0_3ROIEiENKUlS8_E_clES8_:bb.a
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = fpext float %i.ay to double
  %i.bh = fmul double %i.bg, 0x401921FB54442D18
  %i.bi = fptrunc double %i.bh to float           ; 4 uses
  %i.bj = fpext float %i.bc to double
  %i.bk = fmul double %i.bj, 0x400921FB54442D18
  %i.bl = fptrunc double %i.bk to float           ; 2 uses
  %4 = call noundef float @llvm.sin.f32(float %i.bl) ; 3 uses
  %5 = call noundef float @llvm.cos.f32(float %i.bl) ; 2 uses
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %6 = call float @llvm.sin.f32(float %i.bi)
  %7 = fmul float %6, %4
  %8 = fneg float %4
  %9 = call float @llvm.cos.f32(float %i.bi)
  %i.bm = fmul float %9, %8
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

bb.k:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %10 = fneg float %4                             ; 2 uses
  %11 = call float @llvm.cos.f32(float %i.bi)
  %12 = fmul float %11, %10
  %13 = call float @llvm.sin.f32(float %i.bi)
  %i.bn = fmul float %13, %10
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit:   ; preds = %bb.k, %bb.j
  %.sink11.i = phi float [ %7, %bb.j ], [ %12, %bb.k ] ; 2 uses
  %.sink10.i = phi float [ %5, %bb.j ], [ %i.bn, %bb.k ] ; 2 uses
  %.sink.i = phi float [ %i.bm, %bb.j ], [ %5, %bb.k ]
  %i.bo = call float @llvm.acos.f32(float %.sink.i)
  %i.bp = fpext ninf float %i.bo to double
  %i.bq = fmul double %i.bp, 0x3FD45F306DC9C883
end_hunk_3
begin_hunk_4_@_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlItEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_:bb.a
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = fpext float %i.ay to double
  %i.bh = fmul double %i.bg, 0x401921FB54442D18
  %i.bi = fptrunc double %i.bh to float           ; 4 uses
  %i.bj = fpext float %i.bc to double
  %i.bk = fmul double %i.bj, 0x400921FB54442D18
  %i.bl = fptrunc double %i.bk to float           ; 2 uses
  %4 = call noundef float @llvm.sin.f32(float %i.bl) ; 3 uses
  %5 = call noundef float @llvm.cos.f32(float %i.bl) ; 2 uses
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %6 = call float @llvm.sin.f32(float %i.bi)
  %7 = fmul float %6, %4
  %8 = fneg float %4
  %9 = call float @llvm.cos.f32(float %i.bi)
  %i.bm = fmul float %9, %8
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

bb.k:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %10 = fneg float %4                             ; 2 uses
  %11 = call float @llvm.cos.f32(float %i.bi)
  %12 = fmul float %11, %10
  %13 = call float @llvm.sin.f32(float %i.bi)
  %i.bn = fmul float %13, %10
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit:   ; preds = %bb.k, %bb.j
  %.sink11.i = phi float [ %7, %bb.j ], [ %12, %bb.k ] ; 2 uses
  %.sink10.i = phi float [ %5, %bb.j ], [ %i.bn, %bb.k ] ; 2 uses
  %.sink.i = phi float [ %i.bm, %bb.j ], [ %5, %bb.k ]
  %i.bo = call float @llvm.acos.f32(float %.sink.i)
  %i.bp = fpext ninf float %i.bo to double
  %i.bq = fmul double %i.bp, 0x3FD45F306DC9C883
end_hunk_4
begin_hunk_5_@llvm.fabs.f64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

end_hunk_5
