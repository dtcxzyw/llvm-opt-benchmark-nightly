inline.NumInlined: 1554
inline.NumDeleted: 561
begin_hunk_0_@_ZN5arrow10Decimal25613FromBigEndianEPKhi:bb.a

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.026.0 = phi i64 [ %i.r, %bb.f ], [ %i.ad, %bb.g ]
  %i.ae = sub nsw i32 %2, %i.m                    ; 6 uses
  %.sroa.speculated.1 = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 8) ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 7
  br i1 %i.af, label %bb.k, label %bb.i
end_hunk_0
begin_hunk_1_@_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal256ENS0_24Decimal256RealConversionEE16FromPositiveRealIfEENS_6ResultIS2_EET_ii:bb.a
  %i.bp = zext nneg i32 %i.bh to i64
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr @_ZN5arrowL22kDecimal256PowersOfTenE, i64 %i.bp
  %i.br = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256mLERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bq) ; 0 uses
  %i.bs = sub nsw i32 %.06971, %i.bh              ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 0                   ; 2 uses
  %i.bu = icmp sgt i32 %i.bo, 0                   ; 2 uses
  %i.bv = select i1 %i.bt, i1 %i.bu, i1 false
end_hunk_1
begin_hunk_2_@_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion17RoundedRightShiftENS_10Decimal256Ei:bb.a
  %scevgep = getelementptr i8, ptr %3, i64 %i.ba
  %smax54 = tail call i32 @llvm.smax.i32(i32 %i.b, i32 3)
  %i.bb = sub nsw i32 %smax54, %i.b
  %i.bc = zext i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i64 %i.be, i1 false), !tbaa !121
end_hunk_2
begin_hunk_3_@_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal256ENS0_24Decimal256RealConversionEE16FromPositiveRealIdEENS_6ResultIS2_EET_ii:bb.a
  %i.bo = zext nneg i32 %i.bg to i64
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr @_ZN5arrowL22kDecimal256PowersOfTenE, i64 %i.bo
  %i.bq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256mLERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bp) ; 0 uses
  %i.br = sub nsw i32 %.06870, %i.bg              ; 3 uses
  %i.bs = icmp sgt i32 %i.br, 0                   ; 2 uses
  %i.bt = icmp sgt i32 %i.bn, 0                   ; 2 uses
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
end_hunk_3
