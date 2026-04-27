inline.NumInlined: 3955
inline.NumDeleted: 1331
begin_hunk_0_@_ZN11OpenImageIO4v3_110ImageInput14read_scanlinesEiiiiiiiNS0_8TypeDescEPvll:bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %21, i64 1
  %i.ex = getelementptr inbounds nuw i8, ptr %21, i64 4
  %i.ey = sext i32 %i.ba to i64
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph255, %.loopexit.thread
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_110ImageInput14read_scanlinesEiiiiiiiNS0_8TypeDescEPvll:bb.a
  %i.ez = add nsw i32 %.0106254, %i.en            ; 3 uses
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.sroa.speculated186, i32 %i.ez) ; 2 uses
  store ptr %i.eq, ptr %20, align 8, !tbaa !80
  store i64 %i.ep, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !87
  %i.fa = load ptr, ptr %0, align 8, !tbaa !40
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 224
  %i.fc = load ptr, ptr %i.fb, align 8
end_hunk_1
