inline.NumInlined: 6400
inline.NumDeleted: 1723
begin_hunk_0_@_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIfEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_:bb.a
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = fpext float %i.az to double
  %i.bi = fmul double %i.bh, 0x401921FB54442D18
  %i.bj = fptrunc double %i.bi to float
  %sincos7.i = call { float, float } @llvm.sincos.f32(float %i.bj) ; 4 uses
  %i.bk = fpext float %i.bd to double
  %i.bl = fmul double %i.bk, 0x400921FB54442D18
  %i.bm = fptrunc double %i.bl to float
  %sincos.i.i = call { float, float } @llvm.sincos.f32(float %i.bm) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0 ; 3 uses
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1 ; 2 uses
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %cos9.i = extractvalue { float, float } %sincos7.i, 1
  %sin.i = extractvalue { float, float } %sincos7.i, 0
  %4 = fmul float %sin.i, %sin.i.i
  %5 = fneg float %sin.i.i
  %i.bn = fmul float %cos9.i, %5
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %sin8.i = extractvalue { float, float } %sincos7.i, 0
  %cos.i = extractvalue { float, float } %sincos7.i, 1
  %6 = fneg float %sin.i.i                        ; 2 uses
  %7 = fmul float %cos.i, %6
  %i.bo = fmul float %sin8.i, %6
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit:   ; preds = %bb.l, %bb.k
  %.sink11.i = phi float [ %4, %bb.k ], [ %7, %bb.l ] ; 2 uses
  %.sink10.i = phi float [ %cos.i.i, %bb.k ], [ %i.bo, %bb.l ] ; 2 uses
  %.sink.i = phi float [ %i.bn, %bb.k ], [ %cos.i.i, %bb.l ]
  %i.bp = call float @llvm.acos.f32(float %.sink.i)
  %i.bq = fpext ninf float %i.bp to double
  %i.br = fmul double %i.bq, 0x3FD45F306DC9C883
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sin.f32(float) #24

declare void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_1
begin_hunk_2_@_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIhEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_:bb.a
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = fpext float %i.ay to double
  %i.bh = fmul double %i.bg, 0x401921FB54442D18
  %i.bi = fptrunc double %i.bh to float
  %sincos7.i = call { float, float } @llvm.sincos.f32(float %i.bi) ; 4 uses
  %i.bj = fpext float %i.bc to double
  %i.bk = fmul double %i.bj, 0x400921FB54442D18
  %i.bl = fptrunc double %i.bk to float
  %sincos.i.i = call { float, float } @llvm.sincos.f32(float %i.bl) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0 ; 3 uses
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1 ; 2 uses
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %cos9.i = extractvalue { float, float } %sincos7.i, 1
  %sin.i = extractvalue { float, float } %sincos7.i, 0
  %4 = fmul float %sin.i, %sin.i.i
  %5 = fneg float %sin.i.i
  %i.bm = fmul float %cos9.i, %5
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

bb.k:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %sin8.i = extractvalue { float, float } %sincos7.i, 0
  %cos.i = extractvalue { float, float } %sincos7.i, 1
  %6 = fneg float %sin.i.i                        ; 2 uses
  %7 = fmul float %cos.i, %6
  %i.bn = fmul float %sin8.i, %6
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit:   ; preds = %bb.k, %bb.j
  %.sink11.i = phi float [ %4, %bb.j ], [ %7, %bb.k ] ; 2 uses
  %.sink10.i = phi float [ %cos.i.i, %bb.j ], [ %i.bn, %bb.k ] ; 2 uses
  %.sink.i = phi float [ %i.bm, %bb.j ], [ %cos.i.i, %bb.k ]
  %i.bo = call float @llvm.acos.f32(float %.sink.i)
  %i.bp = fpext ninf float %i.bo to double
  %i.bq = fmul double %i.bp, 0x3FD45F306DC9C883
end_hunk_2
begin_hunk_3_@_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlIN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_bNS0_3ROIEiENKUlS8_E_clES8_:bb.a
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = fpext float %i.ay to double
  %i.bh = fmul double %i.bg, 0x401921FB54442D18
  %i.bi = fptrunc double %i.bh to float
  %sincos7.i = call { float, float } @llvm.sincos.f32(float %i.bi) ; 4 uses
  %i.bj = fpext float %i.bc to double
  %i.bk = fmul double %i.bj, 0x400921FB54442D18
  %i.bl = fptrunc double %i.bk to float
  %sincos.i.i = call { float, float } @llvm.sincos.f32(float %i.bl) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0 ; 3 uses
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1 ; 2 uses
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %cos9.i = extractvalue { float, float } %sincos7.i, 1
  %sin.i = extractvalue { float, float } %sincos7.i, 0
  %4 = fmul float %sin.i, %sin.i.i
  %5 = fneg float %sin.i.i
  %i.bm = fmul float %cos9.i, %5
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

bb.k:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %sin8.i = extractvalue { float, float } %sincos7.i, 0
  %cos.i = extractvalue { float, float } %sincos7.i, 1
  %6 = fneg float %sin.i.i                        ; 2 uses
  %7 = fmul float %cos.i, %6
  %i.bn = fmul float %sin8.i, %6
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit:   ; preds = %bb.k, %bb.j
  %.sink11.i = phi float [ %4, %bb.j ], [ %7, %bb.k ] ; 2 uses
  %.sink10.i = phi float [ %cos.i.i, %bb.j ], [ %i.bn, %bb.k ] ; 2 uses
  %.sink.i = phi float [ %i.bm, %bb.j ], [ %cos.i.i, %bb.k ]
  %i.bo = call float @llvm.acos.f32(float %.sink.i)
  %i.bp = fpext ninf float %i.bo to double
  %i.bq = fmul double %i.bp, 0x3FD45F306DC9C883
end_hunk_3
begin_hunk_4_@_ZZN11OpenImageIO4v3_1L21lightprobe_to_envlatlItEEbRNS0_8ImageBufERKS2_bNS0_3ROIEiENKUlS6_E_clES6_:bb.a
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = fpext float %i.ay to double
  %i.bh = fmul double %i.bg, 0x401921FB54442D18
  %i.bi = fptrunc double %i.bh to float
  %sincos7.i = call { float, float } @llvm.sincos.f32(float %i.bi) ; 4 uses
  %i.bj = fpext float %i.bc to double
  %i.bk = fmul double %i.bj, 0x400921FB54442D18
  %i.bl = fptrunc double %i.bk to float
  %sincos.i.i = call { float, float } @llvm.sincos.f32(float %i.bl) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0 ; 3 uses
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1 ; 2 uses
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %cos9.i = extractvalue { float, float } %sincos7.i, 1
  %sin.i = extractvalue { float, float } %sincos7.i, 0
  %4 = fmul float %sin.i, %sin.i.i
  %5 = fneg float %sin.i.i
  %i.bm = fmul float %cos9.i, %5
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

bb.k:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %sin8.i = extractvalue { float, float } %sincos7.i, 0
  %cos.i = extractvalue { float, float } %sincos7.i, 1
  %6 = fneg float %sin.i.i                        ; 2 uses
  %7 = fmul float %cos.i, %6
  %i.bn = fmul float %sin8.i, %6
  br label %_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit

_ZN11OpenImageIO4v3_114latlong_to_dirEffb.exit:   ; preds = %bb.k, %bb.j
  %.sink11.i = phi float [ %4, %bb.j ], [ %7, %bb.k ] ; 2 uses
  %.sink10.i = phi float [ %cos.i.i, %bb.j ], [ %i.bn, %bb.k ] ; 2 uses
  %.sink.i = phi float [ %i.bm, %bb.j ], [ %cos.i.i, %bb.k ]
  %i.bo = call float @llvm.acos.f32(float %.sink.i)
  %i.bp = fpext ninf float %i.bo to double
  %i.bq = fmul double %i.bp, 0x3FD45F306DC9C883
end_hunk_4
begin_hunk_5_@llvm.fabs.f64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

end_hunk_5
