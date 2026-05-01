inline.NumInlined: 1675
inline.NumDeleted: 807
begin_hunk_0_@"_ZNSt17_Function_handlerIFvvEZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E9_M_invokeERKSt9_Any_data":bb.a
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"struct.ultrahdr::Color", align 8  ; 5 uses
  %2 = alloca %"struct.ultrahdr::Color", align 4  ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvvEZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E9_M_invokeERKSt9_Any_data":bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.sroa.213.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 56 ; 2 uses
  %i.aq = select i1 %i.af, i32 4, i32 1
  %i.ar = uitofp nneg i32 %i.aq to float          ; 2 uses
end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFvvEZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E9_M_invokeERKSt9_Any_data":bb.a

.preheader.i.i.i:                                 ; preds = %bb.d, %.preheader163.i.i.i
  %indvars.iv181.i.i.i = phi i64 [ 0, %.preheader163.i.i.i ], [ %indvars.iv.next182.i.i.i, %bb.d ] ; 2 uses
  %3 = phi <2 x float> [ zeroinitializer, %.preheader163.i.i.i ], [ %12, %bb.d ]
  %i.bl = add nuw i64 %indvars.iv181.i.i.i, %.0176.i.i.i ; 4 uses
  %i.bm = mul nuw i64 %i.bl, %i.v
  %gep.i.i.i = getelementptr i8, ptr %invariant.gep.i.i.i, i64 %i.bm
end_hunk_2
begin_hunk_3_@"_ZNSt17_Function_handlerIFvvEZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E9_M_invokeERKSt9_Any_data":bb.a

bb.e:                                             ; preds = %bb.l, %.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.l ] ; 3 uses
  %4 = phi <2 x float> [ %3, %.preheader.i.i.i ], [ %12, %bb.l ] ; 3 uses
  %i.bq = load ptr, ptr %i.ah, align 8, !tbaa !131
  %i.br = load ptr, ptr %.val, align 8, !tbaa !122
  %i.bs = add i64 %indvars.iv.i.i.i, %.0142171.i.i.i ; 3 uses
end_hunk_3
begin_hunk_4_@"_ZNSt17_Function_handlerIFvvEZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E9_M_invokeERKSt9_Any_data":bb.a
bb.h:                                             ; preds = %_ZN8ultrahdr13globalTonemapERKSt5arrayIfLm3EEfb.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.dr = call { <2 x float>, float } @_ZN8ultrahdr10p3RgbToYuvENS_5ColorE(<2 x float> %.fca.0.extract10.i.i.i, float %.fca.1.extract11.i.i.i) ; 2 uses
  %.fca.0.extract2.i.i.i = extractvalue { <2 x float>, float } %i.dr, 0 ; 2 uses
  %.fca.1.extract3.i.i.i = extractvalue { <2 x float>, float } %i.dr, 1
  %5 = extractelement <2 x float> %.fca.0.extract2.i.i.i, i64 0
  %6 = fadd contract float %5, 0.000000e+00       ; 2 uses
  store float %6, ptr %2, align 4, !tbaa !93
  %7 = shufflevector <2 x float> %.fca.0.extract2.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %8 = insertelement <2 x float> %7, float %.fca.1.extract3.i.i.i, i64 1
  %9 = fadd contract <2 x float> %8, splat (float 5.000000e-01) ; 2 uses
  store <2 x float> %9, ptr %i.ao, align 4, !tbaa !93
  %i.ds = load ptr, ptr %i.f, align 8, !tbaa !126 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !73
  %.not.i.i.i = icmp eq i32 %i.dt, 1
end_hunk_4
begin_hunk_5_@"_ZNSt17_Function_handlerIFvvEZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E9_M_invokeERKSt9_Any_data":bb.a
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.dv = fmul contract float %6, 2.550000e+02
  %i.dw = call contract noundef float @llvm.round.f32(float %i.dv)
  %i.dx = fptosi float %i.dw to i32
  %.sroa.speculate.load.false.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.dx, i32 0)
end_hunk_5
begin_hunk_6_@"_ZNSt17_Function_handlerIFvvEZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E9_M_invokeERKSt9_Any_data":bb.a
  %i.dz = trunc nuw i32 %i.dy to i8
  %i.ea = getelementptr i8, ptr %gep.i.i.i, i64 %indvars.iv.i.i.i
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !93
  %10 = fadd contract <2 x float> %4, %9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %11 = phi <2 x float> [ %4, %bb.i ], [ %10, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %12 = phi <2 x float> [ %4, %bb.g ], [ %11, %bb.k ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.ag
  br i1 %exitcond.not.i.i.i, label %bb.d, label %bb.e, !llvm.loop !695

bb.m:                                             ; preds = %bb.c
  %13 = extractelement <2 x float> %12, i64 0
  %i.eb = fdiv contract float %13, %i.ar
  %14 = extractelement <2 x float> %12, i64 1
  %i.ec = fdiv contract float %14, %i.ar
  %i.ed = fmul contract float %i.eb, 2.550000e+02
  %i.ee = call contract noundef float @llvm.round.f32(float %i.ed)
  %i.ef = fptosi float %i.ee to i32
end_hunk_6
