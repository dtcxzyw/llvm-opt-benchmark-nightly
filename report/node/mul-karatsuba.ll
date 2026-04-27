inline.NumInlined: 141
inline.NumDeleted: 60
begin_hunk_0_@_ZN2v86bigint13ProcessorImpl14KaratsubaStartENS0_8RWDigitsENS0_6DigitsES3_S2_j:bb.a
  br i1 %i.y, label %.lr.ph128.split.preheader, label %_ZN2v86bigint13ScratchDigitsD2Ev.exit

.lr.ph128.split.preheader:                        ; preds = %.thread
  %.sroa.4.0..sroa_idx134 = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %.lr.ph128.split

.lr.ph128.split.us.preheader:                     ; preds = %bb.c
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.584.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %.lr.ph128.split.us

end_hunk_0
begin_hunk_1_@_ZN2v86bigint13ProcessorImpl14KaratsubaStartENS0_8RWDigitsENS0_6DigitsES3_S2_j:bb.a
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.z ; 2 uses
  %i.ab = sub nuw i32 %4, %.067126.us
  %.sroa.speculated.i73.us = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 %7) ; 2 uses
  store ptr %i.p, ptr %9, align 8
  store i32 %.sroa.speculated, ptr %.sroa.4.0..sroa_idx, align 8
  tail call void @_ZN2v86bigint13ProcessorImpl14KaratsubaChunkENS0_8RWDigitsENS0_6DigitsES3_S2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.o, i32 %i.a, ptr %i.aa, i32 %.sroa.speculated.i73.us, ptr noundef nonnull byval(%"class.v8::bigint::Digits") align 8 %9, ptr noundef nonnull byval(%"class.v8::bigint::RWDigits") align 8 %6)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.z
  %i.ad = sub i32 %2, %.067126.us
end_hunk_1
begin_hunk_2_@_ZN2v86bigint13ProcessorImpl14KaratsubaStartENS0_8RWDigitsENS0_6DigitsES3_S2_j:bb.a
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.al
  %i.an = sub nuw i32 %4, %.067126
  %.sroa.speculated.i73 = tail call i32 @llvm.umin.i32(i32 %i.an, i32 %7)
  store ptr %i.p, ptr %9, align 8
  store i32 %.sroa.speculated, ptr %.sroa.4.0..sroa_idx134, align 8
  tail call void @_ZN2v86bigint13ProcessorImpl14KaratsubaChunkENS0_8RWDigitsENS0_6DigitsES3_S2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.o, i32 %i.a, ptr %i.am, i32 %.sroa.speculated.i73, ptr noundef nonnull byval(%"class.v8::bigint::Digits") align 8 %9, ptr noundef nonnull byval(%"class.v8::bigint::RWDigits") align 8 %6)
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.al
  %i.ap = sub i32 %2, %.067126
end_hunk_2
