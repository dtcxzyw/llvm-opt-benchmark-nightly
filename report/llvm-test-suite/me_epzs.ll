inline.NumInlined: 242
inline.NumDeleted: 11
begin_hunk_0_@EPZSPelBlockMotionSearch:bb.a
  %i.agv = sub nsw i32 %.sroa.0154.0.lcssa, %i.agu
  %i.agw = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.agv, i1 true)
  %i.agx = load i32, ptr @mv_rescale, align 4, !tbaa !4
  %18 = lshr exact i32 8, %i.agx                  ; 2 uses
  %i.agy = icmp samesign ult i32 %i.agw, %18
  br i1 %i.agy, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
end_hunk_0
begin_hunk_1_@EPZSPelBlockMotionSearch:bb.a
  %i.aha = sext i16 %i.agz to i32
  %i.ahb = sub nsw i32 %.sroa.19.0.lcssa, %i.aha
  %i.ahc = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.ahb, i1 true)
  %i.ahd = icmp samesign ult i32 %i.ahc, %18
  br i1 %i.ahd, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.ck, %bb.cm
end_hunk_1
begin_hunk_2_@EPZSPelBlockMotionSearch:bb.a
._crit_edge669:                                   ; preds = %bb.dt, %bb.dv
  %i.alv = sub nsw i32 %.sroa.0154.6, %.pre670
  %i.alw = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.alv, i1 true)
  %19 = lshr exact i32 8, %i.ajy                  ; 2 uses
  %i.alx = icmp samesign ult i32 %i.alw, %19
  br i1 %i.alx, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %._crit_edge669
end_hunk_2
begin_hunk_3_@EPZSPelBlockMotionSearch:bb.a
  %i.alz = sext i16 %i.aly to i32
  %i.ama = sub nsw i32 %.sroa.19.6, %i.alz
  %i.amb = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.ama, i1 true)
  %i.amc = icmp samesign ult i32 %i.amb, %19
  br i1 %i.amc, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %._crit_edge669
end_hunk_3
begin_hunk_4_@EPZSBiPredBlockMotionSearch:bb.a
  %i.nx = sub nsw i32 %.sroa.0129.1, %i.nw
  %i.ny = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.nx, i1 true)
  %i.nz = load i32, ptr @mv_rescale, align 4, !tbaa !4
  %20 = lshr exact i32 8, %i.nz                   ; 2 uses
  %i.oa = icmp samesign ult i32 %i.ny, %20
  br i1 %i.oa, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
end_hunk_4
begin_hunk_5_@EPZSBiPredBlockMotionSearch:bb.a
  %i.oc = sext i16 %i.ob to i32
  %i.od = sub nsw i32 %.sroa.15.1, %i.oc
  %i.oe = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.od, i1 true)
  %i.of = icmp samesign ult i32 %i.oe, %20
  br i1 %i.of, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.as, %bb.au
end_hunk_5
begin_hunk_6_@EPZSBiPredBlockMotionSearch:bb.a
._crit_edge543:                                   ; preds = %bb.bs, %bb.bu
  %i.sk = sub nsw i32 %.sroa.0129.6, %.pre544
  %i.sl = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.sk, i1 true)
  %21 = lshr exact i32 8, %i.rg                   ; 2 uses
  %i.sm = icmp samesign ult i32 %i.sl, %21
  br i1 %i.sm, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %._crit_edge543
end_hunk_6
begin_hunk_7_@EPZSBiPredBlockMotionSearch:bb.a
  %i.so = sext i16 %i.sn to i32
  %i.sp = sub nsw i32 %.sroa.15.6, %i.so
  %i.sq = call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.sp, i1 true)
  %i.sr = icmp samesign ult i32 %i.sq, %21
  br i1 %i.sr, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %._crit_edge543
end_hunk_7
