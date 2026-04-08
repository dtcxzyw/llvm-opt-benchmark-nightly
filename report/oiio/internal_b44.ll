inline.NumInlined: 10
inline.NumDeleted: 9
begin_hunk_0_@compress_b44_impl:bb.a
  %spec.select.12.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.11.i.us, i16 %.sroa.65.0.i.us)
  %spec.select.13.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.12.i.us, i16 %.sroa.70.0.i.us)
  %spec.select.14.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.13.i.us, i16 %.sroa.75.0.i.us)
  %spec.select.15.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.14.i.us, i16 %.sroa.80.0.i.us) ; 3 uses
  %i.hc = zext i16 %spec.select.15.i.us to i32    ; 2 uses
  %i.hd = insertelement <8 x i16> poison, i16 %.sroa.45.0.i.us, i64 0
  %i.he = insertelement <8 x i16> %i.hd, i16 %.sroa.0.0.i.us, i64 1
  %i.hf = insertelement <8 x i16> %i.he, i16 %.sroa.25.0.i.us, i64 2
end_hunk_0
begin_hunk_1_@compress_b44_impl:bb.a
  %i.ie = shufflevector <4 x i32> %i.id, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.if = sub nsw <4 x i32> %i.ie, %i.hw
  %i.ig = shl nsw <4 x i32> %i.if, splat (i32 1)  ; 2 uses
  %narrow.i.us = sub nuw i16 %spec.select.15.i.us, %.sroa.80.0.i.us
  %2 = zext i16 %narrow.i.us to i32
  %i.ih = shl nuw nsw i32 %2, 1                   ; 2 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ca, %.preheader76.preheader.i.us
end_hunk_1
begin_hunk_2_@compress_b44_impl:bb.a
  %i.ik = add nsw i32 %.066.i.us, 2               ; 4 uses
  %i.il = lshr i32 %i.ih, %i.ik
  %i.im = and i32 %i.il, 1
  %i.in = add nuw nsw i32 %i.ih, %i.ij
  %i.io = add nuw nsw i32 %i.in, %i.im
  %3 = lshr i32 %i.io, %i.ik
  %i.ip = insertelement <8 x i32> poison, i32 %i.ik, i64 0
  %i.iq = shufflevector <8 x i32> %i.ip, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ir = lshr <8 x i32> %i.ib, %i.iq
end_hunk_2
begin_hunk_3_@compress_b44_impl:bb.a
  %i.jw = sub nsw <4 x i32> %i.jv, %i.ju          ; 3 uses
  %i.jx = add nsw <4 x i32> %i.jw, splat (i32 32) ; 6 uses
  %i.jy = extractelement <4 x i32> %i.ju, i64 0
  %i.jz = sub nsw i32 %i.jy, %3
  %i.ka = add nsw i32 %i.jz, 32                   ; 3 uses
  %i.kb = shufflevector <8 x i32> %i.jl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.kc = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.kb, <4 x i32> %i.jx)
end_hunk_3
