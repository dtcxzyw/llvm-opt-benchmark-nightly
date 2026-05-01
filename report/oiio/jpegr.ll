inline.NumInlined: 1675
inline.NumDeleted: 807
begin_hunk_0_@"_ZNSt17_Function_handlerIFvvEZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E9_M_invokeERKSt9_Any_data":bb.a
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"struct.ultrahdr::Color", align 8  ; 5 uses
  %2 = alloca %"struct.ultrahdr::Color", align 8  ; 5 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvvEZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E9_M_invokeERKSt9_Any_data":bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.sroa.213.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 56 ; 2 uses
  %i.ap = select i1 %i.af, i32 4, i32 1
  %i.aq = uitofp nneg i32 %i.ap to float          ; 2 uses
end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFvvEZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E9_M_invokeERKSt9_Any_data":bb.a

.preheader.i.i.i:                                 ; preds = %bb.d, %.preheader163.i.i.i
  %indvars.iv181.i.i.i = phi i64 [ 0, %.preheader163.i.i.i ], [ %indvars.iv.next182.i.i.i, %bb.d ] ; 2 uses
  %.0143170.i.i.i = phi float [ 0.000000e+00, %.preheader163.i.i.i ], [ %.3.i.i.i, %bb.d ]
  %.0144169.i.i.i = phi float [ 0.000000e+00, %.preheader163.i.i.i ], [ %.3147.i.i.i, %bb.d ]
  %i.bk = add nuw i64 %indvars.iv181.i.i.i, %.0176.i.i.i ; 4 uses
  %i.bl = mul nuw i64 %i.bk, %i.v
  %gep.i.i.i = getelementptr i8, ptr %invariant.gep.i.i.i, i64 %i.bl
end_hunk_2
begin_hunk_3_@"_ZNSt17_Function_handlerIFvvEZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E9_M_invokeERKSt9_Any_data":bb.a

bb.e:                                             ; preds = %bb.l, %.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.l ] ; 3 uses
  %.1167.i.i.i = phi float [ %.0143170.i.i.i, %.preheader.i.i.i ], [ %.3.i.i.i, %bb.l ] ; 3 uses
  %.1145166.i.i.i = phi float [ %.0144169.i.i.i, %.preheader.i.i.i ], [ %.3147.i.i.i, %bb.l ] ; 3 uses
  %i.bp = load ptr, ptr %i.ah, align 8, !tbaa !131
  %i.bq = load ptr, ptr %.val, align 8, !tbaa !122
  %i.br = add i64 %indvars.iv.i.i.i, %.0142171.i.i.i ; 3 uses
end_hunk_3
begin_hunk_4_@"_ZNSt17_Function_handlerIFvvEZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E9_M_invokeERKSt9_Any_data":bb.a
bb.h:                                             ; preds = %_ZN8ultrahdr13globalTonemapERKSt5arrayIfLm3EEfb.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.dq = call { <2 x float>, float } @_ZN8ultrahdr10p3RgbToYuvENS_5ColorE(<2 x float> %.fca.0.extract10.i.i.i, float %.fca.1.extract11.i.i.i) ; 2 uses
  %.fca.0.extract2.i.i.i = extractvalue { <2 x float>, float } %i.dq, 0
  %.fca.1.extract3.i.i.i = extractvalue { <2 x float>, float } %i.dq, 1
  %3 = fadd contract <2 x float> %.fca.0.extract2.i.i.i, <float 0.000000e+00, float 5.000000e-01> ; 3 uses
  store <2 x float> %3, ptr %2, align 8, !tbaa !93
  %4 = fadd contract float %.fca.1.extract3.i.i.i, 5.000000e-01 ; 2 uses
  store float %4, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8, !tbaa !93
  %i.dr = load ptr, ptr %i.f, align 8, !tbaa !126 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !73
  %.not.i.i.i = icmp eq i32 %i.ds, 1
end_hunk_4
begin_hunk_5_@"_ZNSt17_Function_handlerIFvvEZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E9_M_invokeERKSt9_Any_data":bb.a
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %5 = extractelement <2 x float> %3, i64 0
  %i.du = fmul contract float %5, 2.550000e+02
  %i.dv = call contract noundef float @llvm.round.f32(float %i.du)
  %i.dw = fptosi float %i.dv to i32
  %.sroa.speculate.load.false.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.dw, i32 0)
end_hunk_5
begin_hunk_6_@"_ZNSt17_Function_handlerIFvvEZN8ultrahdr5JpegR7toneMapEP14uhdr_raw_imageS4_E3$_0E9_M_invokeERKSt9_Any_data":bb.a
  %i.dy = trunc nuw i32 %i.dx to i8
  %i.dz = getelementptr i8, ptr %gep.i.i.i, i64 %indvars.iv.i.i.i
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !93
  %6 = extractelement <2 x float> %3, i64 1
  %7 = fadd contract float %.1167.i.i.i, %6
  %8 = fadd contract float %.1145166.i.i.i, %4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2146.i.i.i = phi float [ %.1145166.i.i.i, %bb.i ], [ %8, %bb.j ]
  %.2.i.i.i = phi float [ %.1167.i.i.i, %bb.i ], [ %7, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %.3147.i.i.i = phi float [ %.1145166.i.i.i, %bb.g ], [ %.2146.i.i.i, %bb.k ] ; 3 uses
  %.3.i.i.i = phi float [ %.1167.i.i.i, %bb.g ], [ %.2.i.i.i, %bb.k ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.ag
  br i1 %exitcond.not.i.i.i, label %bb.d, label %bb.e, !llvm.loop !695

bb.m:                                             ; preds = %bb.c
  %i.ea = fdiv contract float %.3.i.i.i, %i.aq
  %i.eb = fdiv contract float %.3147.i.i.i, %i.aq
  %i.ec = fmul contract float %i.ea, 2.550000e+02
  %i.ed = call contract noundef float @llvm.round.f32(float %i.ec)
  %i.ee = fptosi float %i.ed to i32
end_hunk_6
