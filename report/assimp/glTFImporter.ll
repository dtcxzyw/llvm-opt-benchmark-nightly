inline.NumInlined: 5894
inline.NumDeleted: 2006
begin_hunk_0_@_ZN5o3dgc13SC3DMCDecoderItE16DecodeFloatArrayEPfmmmPKfS4_mRKNS_14IndexedFaceSetItEERNS_25O3DGCSC3DMCPredictionModeERKNS_12BinaryStreamE:bb.a
.noexc395:                                        ; preds = %.lr.ph.i.i386
  %i.tq = add nsw i32 %.218.i.i388, -1            ; 3 uses
  %i.tr = icmp eq i32 %i.tp, 1
  %i.ts = shl nuw i32 1, %i.tq
  %i.tt = select i1 %i.tr, i32 %i.ts, i32 0
  %.1.i.i389 = or i32 %i.tt, %.019.i.i387         ; 2 uses
  %.not16.i.i390 = icmp eq i32 %i.tq, 0
  br i1 %.not16.i.i390, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i391, label %.lr.ph.i.i386, !llvm.loop !808

_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i391: ; preds = %.noexc395, %.preheader.i.i384
  %.0.lcssa.i.i392 = phi i32 [ 0, %.preheader.i.i384 ], [ %.1.i.i389, %.noexc395 ]
  %i.tu = add nsw i32 %.0.lcssa.i.i392, %.113.i.i382
  %i.tv = zext i32 %i.tu to i64
  %i.tw = add nuw nsw i64 %i.tv, %i.eq
  br label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit376

_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit376: ; preds = %.preheader.i.i372, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i391, %.noexc393, %bb.cm
  %.0.i377.sink769 = phi i64 [ %i.ti, %.noexc393 ], [ %i.su, %bb.cm ], [ %i.tw, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i391 ], [ %i.te, %.preheader.i.i372 ] ; 3 uses
  %i.tx = and i64 %.0.i377.sink769, 1
  %.not.i10.i378 = icmp eq i64 %i.tx, 0
  %i.ty = add i64 %.0.i377.sink769, 1
  %i.tz = lshr exact i64 %i.ty, 1
  %i.ua = sub nsw i64 0, %i.tz
  %i.ub = lshr exact i64 %.0.i377.sink769, 1
  %i.uc = select i1 %.not.i10.i378, i64 %i.ub, i64 %i.ua
  %i.ud = load ptr, ptr %i.ep, align 8            ; 2 uses
  %i.ue = getelementptr [8 x i8], ptr %i.ud, i64 %i.sk
  %i.uf = getelementptr [8 x i8], ptr %i.ue, i64 %.0232598
  %i.ug = load i64, ptr %i.uf, align 8
  %i.uh = add nsw i64 %i.ug, %i.uc
  %i.ui = getelementptr [8 x i8], ptr %i.ud, i64 %i.sl
  %i.uj = getelementptr [8 x i8], ptr %i.ui, i64 %.0232598
  store i64 %i.uh, ptr %i.uj, align 8
  %i.uk = add nuw i64 %.0232598, 1                ; 2 uses
  %exitcond665.not = icmp eq i64 %i.uk, %.0214
  br i1 %exitcond665.not, label %.loopexit526, label %bb.cl, !llvm.loop !819

bb.co:                                            ; preds = %.lr.ph601, %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit
  %.0231600 = phi i64 [ 0, %.lr.ph601 ], [ %i.vy, %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit ] ; 2 uses
  %i.ul = load i32, ptr %i.j, align 8
  %i.um = icmp eq i32 %i.ul, 1
  br i1 %i.um, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.un = load i64, ptr %0, align 8               ; 2 uses
  %i.uo = add i64 %i.un, 1                        ; 2 uses
  store i64 %i.uo, ptr %0, align 8
  %i.up = load ptr, ptr %10, align 8
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 %i.un
  %i.ur = load i8, ptr %i.uq, align 1             ; 2 uses
  %i.us = zext i8 %i.ur to i64
  %i.ut = icmp eq i8 %i.ur, 127
  br i1 %i.ut, label %.preheader.i398, label %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit

.preheader.i398:                                  ; preds = %bb.cp, %.preheader.i398
  %i.uu = phi i64 [ %i.uv, %.preheader.i398 ], [ %i.uo, %bb.cp ] ; 2 uses
  %.09.i = phi i64 [ %i.vc, %.preheader.i398 ], [ 127, %bb.cp ]
  %.0.i399 = phi i64 [ %i.vd, %.preheader.i398 ], [ 0, %bb.cp ] ; 2 uses
  %i.uv = add i64 %i.uu, 1                        ; 2 uses
  store i64 %i.uv, ptr %0, align 8
  %i.uw = load ptr, ptr %10, align 8
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 %i.uu
  %i.uy = load i8, ptr %i.ux, align 1
  %i.uz = zext i8 %i.uy to i64                    ; 2 uses
  %i.va = lshr i64 %i.uz, 1
  %i.vb = shl i64 %i.va, %.0.i399
  %i.vc = add i64 %i.vb, %.09.i                   ; 2 uses
  %i.vd = add i64 %.0.i399, 6
  %i.ve = and i64 %i.uz, 1
  %.not.i400 = icmp eq i64 %i.ve, 0
  br i1 %.not.i400, label %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit, label %.preheader.i398, !llvm.loop !809

.loopexit:                                        ; preds = %.lr.ph.i.i409
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp517

.loopexit.split-lp.loopexit:                      ; preds = %.preheader504
  %lpad.loopexit505 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp517

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.cq
  %lpad.loopexit.split-lp506 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp517

bb.cq:                                            ; preds = %bb.co
  %i.vf = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 8 dereferenceable(52) %16)
          to label %.noexc416 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc416:                                        ; preds = %bb.cq
  %i.vg = zext i32 %i.vf to i64
  %i.vh = icmp eq i32 %.0237, %i.vf
  br i1 %i.vh, label %.preheader504, label %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit

.preheader504:                                    ; preds = %.noexc416, %.noexc417
  %.014.i.i402 = phi i32 [ %.115.i.i404, %.noexc417 ], [ %.0236, %.noexc416 ] ; 2 uses
  %.012.i.i403 = phi i32 [ %.113.i.i405, %.noexc417 ], [ 0, %.noexc416 ]
  %i.vi = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(20) %14)
          to label %.noexc417 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc417:                                        ; preds = %.preheader504
  %i.vj = icmp eq i32 %i.vi, 1                    ; 2 uses
  %i.vk = shl nuw i32 1, %.014.i.i402
  %i.vl = zext i1 %i.vj to i32
  %.115.i.i404 = add nsw i32 %.014.i.i402, %i.vl  ; 3 uses
  %i.vm = select i1 %i.vj, i32 %i.vk, i32 0
  %.113.i.i405 = add nsw i32 %i.vm, %.012.i.i403  ; 2 uses
  %.not.i.i406 = icmp eq i32 %i.vi, 0
  br i1 %.not.i.i406, label %.preheader.i.i407, label %.preheader504, !llvm.loop !807

.preheader.i.i407:                                ; preds = %.noexc417
  %.not1617.i.i408 = icmp eq i32 %.115.i.i404, 0
  br i1 %.not1617.i.i408, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i414, label %.lr.ph.i.i409

.lr.ph.i.i409:                                    ; preds = %.preheader.i.i407, %.noexc418
  %.019.i.i410 = phi i32 [ %.1.i.i412, %.noexc418 ], [ 0, %.preheader.i.i407 ]
  %.218.i.i411 = phi i32 [ %i.vo, %.noexc418 ], [ %.115.i.i404, %.preheader.i.i407 ]
  %i.vn = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(4) %13)
          to label %.noexc418 unwind label %.loopexit

.noexc418:                                        ; preds = %.lr.ph.i.i409
  %i.vo = add nsw i32 %.218.i.i411, -1            ; 3 uses
  %i.vp = icmp eq i32 %i.vn, 1
  %i.vq = shl nuw i32 1, %i.vo
  %i.vr = select i1 %i.vp, i32 %i.vq, i32 0
  %.1.i.i412 = or i32 %i.vr, %.019.i.i410         ; 2 uses
  %.not16.i.i413 = icmp eq i32 %i.vo, 0
  br i1 %.not16.i.i413, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i414, label %.lr.ph.i.i409, !llvm.loop !808

_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i414: ; preds = %.noexc418, %.preheader.i.i407
  %.0.lcssa.i.i415 = phi i32 [ 0, %.preheader.i.i407 ], [ %.1.i.i412, %.noexc418 ]
  %i.vs = add nsw i32 %.0.lcssa.i.i415, %.113.i.i405
  %i.vt = zext i32 %i.vs to i64
  %i.vu = add nuw nsw i64 %i.vt, %i.eq
  br label %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit

_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit:  ; preds = %.preheader.i398, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i414, %.noexc416, %bb.cp
  %.2 = phi i64 [ %i.vg, %.noexc416 ], [ %i.us, %bb.cp ], [ %i.vu, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i414 ], [ %i.vc, %.preheader.i398 ]
  %i.vv = load ptr, ptr %i.ep, align 8
  %i.vw = getelementptr [8 x i8], ptr %i.vv, i64 %i.sm
  %i.vx = getelementptr [8 x i8], ptr %i.vw, i64 %.0231600
  store i64 %.2, ptr %i.vx, align 8
  %i.vy = add nuw i64 %.0231600, 1                ; 2 uses
  %exitcond666.not = icmp eq i64 %i.vy, %.0214
  br i1 %exitcond666.not, label %.loopexit526, label %bb.co, !llvm.loop !820

.loopexit526:                                     ; preds = %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit376, %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit362, %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit, %bb.ch, %.preheader527.a, %.preheader525
  %.3470 = phi i64 [ %.1468602, %.preheader525 ], [ %.1468602, %.preheader527.a ], [ %.2469, %bb.ch ], [ %.1468602, %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit ], [ %.2469, %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit362 ], [ %.1468602, %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit376 ] ; 2 uses
  %i.vz = add nuw nsw i64 %.0244603, 1            ; 2 uses
  %exitcond667.not = icmp eq i64 %i.vz, %2
  br i1 %exitcond667.not, label %._crit_edge608, label %bb.au, !llvm.loop !821

bb.cr:                                            ; preds = %._crit_edge608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 -4611686015206162432, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store i64 4611686019501129728, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %.not.i419 = icmp eq i64 %.0214, 0
  br i1 %.not.i419, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit, label %.lr.ph.i420

.lr.ph.i420:                                      ; preds = %bb.cr
  %i.wa = trunc i64 %7 to i32
  %i.wb = add i32 %i.wa, 1
  %notmask.i = shl nsw i32 -1, %i.wb
  %i.wc = xor i32 %notmask.i, -1
  %i.wd = uitofp nneg i32 %i.wc to float          ; 2 uses
  %min.iters.check818 = icmp ult i64 %.0214, 4
  br i1 %min.iters.check818, label %scalar.ph817.preheader, label %vector.ph819

vector.ph819:                                     ; preds = %.lr.ph.i420
  %n.vec821 = and i64 %.0214, -4                  ; 3 uses
  %broadcast.splatinsert822 = insertelement <4 x float> poison, float %i.wd, i64 0
  %broadcast.splat823 = shufflevector <4 x float> %broadcast.splatinsert822, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body824

vector.body824:                                   ; preds = %vector.body824, %vector.ph819
  %index825 = phi i64 [ 0, %vector.ph819 ], [ %index.next828, %vector.body824 ] ; 4 uses
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index825
  %wide.load826 = load <4 x float>, ptr %i.we, align 8
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index825
  %wide.load827 = load <4 x float>, ptr %i.wf, align 8
  %i.wg = fsub <4 x float> %wide.load826, %wide.load827 ; 2 uses
  %i.wh = fcmp ogt <4 x float> %i.wg, zeroinitializer
  %i.wi = fdiv <4 x float> %i.wg, %broadcast.splat823
  %i.wj = select <4 x i1> %i.wh, <4 x float> %i.wi, <4 x float> splat (float 1.000000e+00)
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index825
  store <4 x float> %i.wj, ptr %i.wk, align 16
  %index.next828 = add nuw i64 %index825, 4       ; 2 uses
  %i.wl = icmp eq i64 %index.next828, %n.vec821
  br i1 %i.wl, label %middle.block829, label %vector.body824, !llvm.loop !822

middle.block829:                                  ; preds = %vector.body824
  %cmp.n830 = icmp eq i64 %.0214, %n.vec821
  br i1 %cmp.n830, label %.preheader32.i, label %scalar.ph817.preheader

scalar.ph817.preheader:                           ; preds = %.lr.ph.i420, %middle.block829
  %.02933.i.ph = phi i64 [ 0, %.lr.ph.i420 ], [ %n.vec821, %middle.block829 ]
  br label %.preheader.us.i.new

.preheader32.i:                                   ; preds = %.preheader.us.i.new, %middle.block829
  %.not38.i = icmp eq i64 %2, 0
  br i1 %.not38.i, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit.thread, label %.preheader.us.preheader.i

_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit.thread: ; preds = %.preheader32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %._crit_edge612

.preheader.us.preheader.i:                        ; preds = %.preheader32.i
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 4568 ; 3 uses
  %xtraiter886 = and i64 %.0214, 1
  %i.wn = icmp eq i64 %.0214, 1
  %unroll_iter889 = and i64 %.0214, -2
  %lcmp.mod887.not = icmp eq i64 %xtraiter886, 0
  %lcmp.mod888 = trunc i64 %.0214 to i1
  br label %.preheader.i422

.preheader.us.i.new:                              ; preds = %scalar.ph817.preheader, %.preheader.us.i.new
  %niter890 = phi i64 [ %niter890.next.1, %.preheader.us.i.new ], [ %.02933.i.ph, %scalar.ph817.preheader ] ; 4 uses
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %niter890
  %i.wp = load float, ptr %i.wo, align 4
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %niter890
  %i.wr = load float, ptr %i.wq, align 4
  %18 = fsub float %i.wp, %i.wr                   ; 2 uses
  %19 = fcmp ogt float %18, 0.000000e+00
  %20 = fdiv float %18, %i.wd
  %.sink.i = select i1 %19, float %20, float 1.000000e+00
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %niter890
  store float %.sink.i, ptr %i.ws, align 4
  %niter890.next.1 = add nuw i64 %niter890, 1     ; 2 uses
  %niter890.ncmp.1 = icmp eq i64 %niter890.next.1, %.0214
  br i1 %niter890.ncmp.1, label %.preheader32.i, label %.preheader.us.i.new, !llvm.loop !823

.preheader.i422:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.02836.i = phi i64 [ %i.xe, %._crit_edge.us.i ], [ 0, %.preheader.us.preheader.i ] ; 2 uses
  %21 = mul i64 %.02836.i, %4                     ; 3 uses
  br i1 %i.wn, label %.epil.preheader885, label %scalar.ph817

._crit_edge.us.i.unr-lcssa:                       ; preds = %scalar.ph817
  br i1 %lcmp.mod887.not, label %._crit_edge.us.i, label %.epil.preheader885

.epil.preheader885:                               ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.i422
  %.034.us.i.epil.init = phi i64 [ 0, %.preheader.i422 ], [ %40, %._crit_edge.us.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod888)
  %i.wt = load ptr, ptr %i.wm, align 8
  %i.wu = add i64 %.034.us.i.epil.init, %21       ; 2 uses
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.wt, i64 %i.wu
  %i.ww = load i64, ptr %i.wv, align 8
  %i.wx = sitofp i64 %i.ww to float
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.034.us.i.epil.init
  %i.wz = load float, ptr %i.wy, align 4
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.034.us.i.epil.init
  %i.xb = load float, ptr %i.xa, align 4
  %i.xc = call float @llvm.fmuladd.f32(float %i.wx, float %i.wz, float %i.xb)
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wu
  store float %i.xc, ptr %i.xd, align 4
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader885
  %i.xe = add nuw i64 %.02836.i, 1                ; 2 uses
  %exitcond42.not.i = icmp eq i64 %i.xe, %2
  br i1 %exitcond42.not.i, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit, label %.preheader.i422, !llvm.loop !824

scalar.ph817:                                     ; preds = %.preheader.i422, %scalar.ph817
  %.034.i = phi i64 [ %40, %scalar.ph817 ], [ 0, %.preheader.i422 ] ; 5 uses
  %.02933.i = phi i64 [ %i.xk, %scalar.ph817 ], [ 0, %.preheader.i422 ]
  %22 = load ptr, ptr %i.wm, align 8
  %23 = add i64 %.034.i, %21                      ; 2 uses
  %24 = getelementptr inbounds nuw [8 x i8], ptr %22, i64 %23
  %25 = load i64, ptr %24, align 8
  %26 = sitofp i64 %25 to float
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.034.i
  %i.xg = load float, ptr %i.xf, align 8
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.034.i
  %i.xi = load float, ptr %i.xh, align 8
  %27 = call float @llvm.fmuladd.f32(float %26, float %i.xg, float %i.xi)
  %28 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %23
  store float %27, ptr %28, align 4
  %29 = or disjoint i64 %.034.i, 1                ; 3 uses
  %30 = load ptr, ptr %i.wm, align 8
  %31 = add i64 %29, %21                          ; 2 uses
  %32 = getelementptr inbounds nuw [8 x i8], ptr %30, i64 %31
  %33 = load i64, ptr %32, align 8
  %34 = sitofp i64 %33 to float
  %35 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %29
  %36 = load float, ptr %35, align 4
  %37 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %29
  %38 = load float, ptr %37, align 4
  %39 = call float @llvm.fmuladd.f32(float %34, float %36, float %38)
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %31
  store float %39, ptr %i.xj, align 4
  %40 = add nuw i64 %.034.i, 2                    ; 2 uses
  %i.xk = add i64 %.02933.i, 2                    ; 2 uses
  %exitcond.not.i421 = icmp eq i64 %i.xk, %unroll_iter889
  br i1 %exitcond.not.i421, label %._crit_edge.us.i.unr-lcssa, label %scalar.ph817, !llvm.loop !825

_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit: ; preds = %._crit_edge.us.i, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br i1 %i.em, label %.lr.ph611, label %._crit_edge612

.lr.ph611:                                        ; preds = %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 4584
  br label %bb.cs

._crit_edge612:                                   ; preds = %bb.ct, %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit.thread, %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.cw

bb.cs:                                            ; preds = %.lr.ph611, %bb.ct
  %.0610 = phi i64 [ 0, %.lr.ph611 ], [ %i.yd, %bb.ct ] ; 4 uses
  %i.xn = load ptr, ptr %i.xl, align 8
  %.idx494 = shl nuw nsw i64 %.0610, 3
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 %.idx494 ; 2 uses
  %i.xp = load float, ptr %i.xo, align 4
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xo, i64 4
  %i.xr = load float, ptr %i.xq, align 4
  %i.xs = mul i64 %.0610, %4
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.xs ; 4 uses
  %i.xu = load float, ptr %i.xt, align 4
  %i.xv = fadd float %i.xp, %i.xu
  %i.xw = getelementptr i8, ptr %i.xt, i64 4      ; 2 uses
  %i.xx = load float, ptr %i.xw, align 4
  %i.xy = fadd float %i.xr, %i.xx
  %i.xz = load ptr, ptr %i.xm, align 8
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 %.0610
  %i.yb = load i8, ptr %i.ya, align 1
  %i.yc = getelementptr i8, ptr %i.xt, i64 8
  invoke void @_ZN5o3dgc12CubeToSphereEffcRfS0_S0_(float noundef %i.xv, float noundef %i.xy, i8 noundef signext %i.yb, ptr noundef nonnull align 4 dereferenceable(4) %i.xt, ptr noundef nonnull align 4 dereferenceable(4) %i.xw, ptr noundef nonnull align 4 dereferenceable(4) %i.yc)
          to label %bb.ct unwind label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.yd = add nuw nsw i64 %.0610, 1               ; 2 uses
  %exitcond668.not = icmp eq i64 %i.yd, %2
  br i1 %exitcond668.not, label %._crit_edge612, label %bb.cs, !llvm.loop !826

bb.cu:                                            ; preds = %bb.cs
  %i.ye = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %.loopexit.split-lp517

bb.cv:                                            ; preds = %._crit_edge608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %.not.i422 = icmp eq i64 %.0214, 0
  br i1 %.not.i422, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit437, label %.lr.ph.i423

.lr.ph.i423:                                      ; preds = %bb.cv
  %i.yf = trunc i64 %7 to i32
  %notmask.i424 = shl nsw i32 -1, %i.yf
  %i.yg = xor i32 %notmask.i424, -1
  %i.yh = uitofp nneg i32 %i.yg to float          ; 2 uses
  %min.iters.check805 = icmp ult i64 %.0214, 4
  br i1 %min.iters.check805, label %scalar.ph804.preheader, label %vector.ph806

vector.ph806:                                     ; preds = %.lr.ph.i423
  %n.vec808 = and i64 %.0214, -4                  ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.yh, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body809

vector.body809:                                   ; preds = %vector.body809, %vector.ph806
  %index810 = phi i64 [ 0, %vector.ph806 ], [ %index.next813, %vector.body809 ] ; 4 uses
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index810
  %wide.load811 = load <4 x float>, ptr %i.yi, align 4
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index810
  %wide.load812 = load <4 x float>, ptr %i.yj, align 4
  %i.yk = fsub <4 x float> %wide.load811, %wide.load812 ; 2 uses
  %i.yl = fcmp ogt <4 x float> %i.yk, zeroinitializer
  %i.ym = fdiv <4 x float> %i.yk, %broadcast.splat
  %i.yn = select <4 x i1> %i.yl, <4 x float> %i.ym, <4 x float> splat (float 1.000000e+00)
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index810
  store <4 x float> %i.yn, ptr %i.yo, align 16
  %index.next813 = add nuw i64 %index810, 4       ; 2 uses
  %i.yp = icmp eq i64 %index.next813, %n.vec808
  br i1 %i.yp, label %middle.block814, label %vector.body809, !llvm.loop !827

middle.block814:                                  ; preds = %vector.body809
  %cmp.n815 = icmp eq i64 %.0214, %n.vec808
  br i1 %cmp.n815, label %.preheader32.i428, label %scalar.ph804.preheader

scalar.ph804.preheader:                           ; preds = %.lr.ph.i423, %middle.block814
  %.02933.i425.ph = phi i64 [ 0, %.lr.ph.i423 ], [ %n.vec808, %middle.block814 ]
  br label %.preheader.us.i431.new

.preheader32.i428:                                ; preds = %.preheader.us.i431.new, %middle.block814
  %.not38.i429 = icmp eq i64 %2, 0
  br i1 %.not38.i429, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit437, label %.preheader.us.preheader.i430

.preheader.us.preheader.i430:                     ; preds = %.preheader32.i428
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 4568 ; 3 uses
  %xtraiter882 = and i64 %.0214, 1
  %i.yr = icmp eq i64 %.0214, 1
  %unroll_iter = and i64 %.0214, -2
  %lcmp.mod883.not = icmp eq i64 %xtraiter882, 0
  %lcmp.mod884 = trunc i64 %.0214 to i1
  br label %.preheader.i433

.preheader.us.i431.new:                           ; preds = %scalar.ph804.preheader, %.preheader.us.i431.new
  %niter.a = phi i64 [ %niter.next.1.a, %.preheader.us.i431.new ], [ %.02933.i425.ph, %scalar.ph804.preheader ] ; 4 uses
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %niter.a
  %i.yt = load float, ptr %i.ys, align 4
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %niter.a
  %i.yv = load float, ptr %i.yu, align 4
  %41 = fsub float %i.yt, %i.yv                   ; 2 uses
  %42 = fcmp ogt float %41, 0.000000e+00
  %43 = fdiv float %41, %i.yh
  %.sink.i428 = select i1 %42, float %43, float 1.000000e+00
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %niter.a
  store float %.sink.i428, ptr %i.yw, align 4
  %niter.next.1.a = add nuw i64 %niter.a, 1       ; 2 uses
  %niter.ncmp.1.a = icmp eq i64 %niter.next.1.a, %.0214
  br i1 %niter.ncmp.1.a, label %.preheader32.i428, label %.preheader.us.i431.new, !llvm.loop !828

.preheader.i433:                                  ; preds = %._crit_edge.us.i435, %.preheader.us.preheader.i430
  %.02836.i434 = phi i64 [ %i.zi, %._crit_edge.us.i435 ], [ 0, %.preheader.us.preheader.i430 ] ; 2 uses
  %44 = mul i64 %.02836.i434, %4                  ; 3 uses
  br i1 %i.yr, label %.epil.preheader, label %scalar.ph804

._crit_edge.us.i435.unr-lcssa:                    ; preds = %scalar.ph804
  br i1 %lcmp.mod883.not, label %._crit_edge.us.i435, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i435.unr-lcssa, %.preheader.i433
  %.034.us.i433.epil.init = phi i64 [ 0, %.preheader.i433 ], [ %63, %._crit_edge.us.i435.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod884)
  %i.yx = load ptr, ptr %i.yq, align 8
  %i.yy = add i64 %.034.us.i433.epil.init, %44    ; 2 uses
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %i.yx, i64 %i.yy
  %i.za = load i64, ptr %i.yz, align 8
  %i.zb = sitofp i64 %i.za to float
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.034.us.i433.epil.init
  %i.zd = load float, ptr %i.zc, align 4
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.034.us.i433.epil.init
  %i.zf = load float, ptr %i.ze, align 4
  %i.zg = call float @llvm.fmuladd.f32(float %i.zb, float %i.zd, float %i.zf)
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.yy
  store float %i.zg, ptr %i.zh, align 4
  br label %._crit_edge.us.i435

._crit_edge.us.i435:                              ; preds = %._crit_edge.us.i435.unr-lcssa, %.epil.preheader
  %i.zi = add nuw i64 %.02836.i434, 1             ; 2 uses
  %exitcond42.not.i436 = icmp eq i64 %i.zi, %2
  br i1 %exitcond42.not.i436, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit437, label %.preheader.i433, !llvm.loop !824

scalar.ph804:                                     ; preds = %.preheader.i433, %scalar.ph804
  %.034.i435 = phi i64 [ %63, %scalar.ph804 ], [ 0, %.preheader.i433 ] ; 5 uses
  %.02933.i425 = phi i64 [ %i.zo, %scalar.ph804 ], [ 0, %.preheader.i433 ]
  %45 = load ptr, ptr %i.yq, align 8
  %46 = add i64 %.034.i435, %44                   ; 2 uses
  %47 = getelementptr inbounds nuw [8 x i8], ptr %45, i64 %46
  %48 = load i64, ptr %47, align 8
  %49 = sitofp i64 %48 to float
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.034.i435
  %i.zk = load float, ptr %i.zj, align 8
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.034.i435
  %i.zm = load float, ptr %i.zl, align 4
  %50 = call float @llvm.fmuladd.f32(float %49, float %i.zk, float %i.zm)
  %51 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %46
  store float %50, ptr %51, align 4
  %52 = or disjoint i64 %.034.i435, 1             ; 3 uses
  %53 = load ptr, ptr %i.yq, align 8
  %54 = add i64 %52, %44                          ; 2 uses
  %55 = getelementptr inbounds nuw [8 x i8], ptr %53, i64 %54
  %56 = load i64, ptr %55, align 8
  %57 = sitofp i64 %56 to float
  %58 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %52
  %59 = load float, ptr %58, align 4
  %60 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %52
  %61 = load float, ptr %60, align 4
  %62 = call float @llvm.fmuladd.f32(float %57, float %59, float %61)
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %54
  store float %62, ptr %i.zn, align 4
  %63 = add nuw i64 %.034.i435, 2                 ; 2 uses
  %i.zo = add i64 %.02933.i425, 2                 ; 2 uses
  %exitcond.not.i427 = icmp eq i64 %i.zo, %unroll_iter
  br i1 %exitcond.not.i427, label %._crit_edge.us.i435.unr-lcssa, label %scalar.ph804, !llvm.loop !825

_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit437: ; preds = %._crit_edge.us.i435, %bb.cv, %.preheader32.i428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.cw

bb.cw:                                            ; preds = %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit437, %._crit_edge612
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.cy

.loopexit.split-lp517:                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit508, %.loopexit.split-lp509.loopexit.split-lp, %.loopexit.split-lp509.loopexit, %.loopexit516, %.loopexit.split-lp517.loopexit.split-lp, %.loopexit.split-lp517.loopexit, %bb.cg, %bb.cu, %bb.an, %bb.ad, %bb.x
  %.pn284 = phi { ptr, i32 } [ %i.dd, %bb.ad ], [ %.pn, %bb.an ], [ %i.ye, %bb.cu ], [ %i.br, %bb.x ], [ %i.qi, %bb.cg ], [ %lpad.loopexit.split-lp522, %.loopexit.split-lp517.loopexit.split-lp ], [ %lpad.loopexit.split-lp514, %.loopexit.split-lp509.loopexit.split-lp ], [ %lpad.loopexit518, %.loopexit516 ], [ %lpad.loopexit521, %.loopexit.split-lp517.loopexit ], [ %lpad.loopexit510, %.loopexit508 ], [ %lpad.loopexit513, %.loopexit.split-lp509.loopexit ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit505, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp506, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %16) #28
  br label %bb.cx

bb.cx:                                            ; preds = %.loopexit.split-lp517, %bb.w
  %.pn284.pn = phi { ptr, i32 } [ %.pn284, %.loopexit.split-lp517 ], [ %i.bq, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %.loopexit.split-lp535

bb.cy:                                            ; preds = %bb.n, %bb.f, %bb.cw
  %.0213 = phi i32 [ 5, %bb.f ], [ 0, %bb.cw ], [ 5, %bb.n ]
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN5o3dgc16Arithmetic_CodecD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  ret i32 %.0213

.loopexit.split-lp535:                            ; preds = %.loopexit534.a, %.loopexit.split-lp535.loopexit.split-lp.loopexit, %.loopexit.split-lp535.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp535.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp535.loopexit, %bb.cx, %bb.j
  %.pn284.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %.pn284.pn, %bb.cx ], [ %lpad.loopexit536, %.loopexit534.a ], [ %lpad.loopexit539, %.loopexit.split-lp535.loopexit ], [ %lpad.loopexit542, %.loopexit.split-lp535.loopexit.split-lp.loopexit ], [ %lpad.loopexit546, %.loopexit.split-lp535.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp547, %.loopexit.split-lp535.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %15) #28
  br label %bb.cz

bb.cz:                                            ; preds = %.loopexit.split-lp535, %bb.i
  %.pn284.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn284.pn.pn.pn.pn, %.loopexit.split-lp535 ], [ %i.z, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.h
  %.pn284.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn284.pn.pn.pn.pn.pn, %bb.cz ], [ %i.y, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.g
  %.pn284.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn284.pn.pn.pn.pn.pn.pn, %bb.da ], [ %i.x, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN5o3dgc16Arithmetic_CodecD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  resume { ptr, i32 } %.pn284.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5o3dgc13SC3DMCDecoderItE14DecodeIntArrayEPlmmmRKNS_14IndexedFaceSetItEERNS_25O3DGCSC3DMCPredictionModeERKNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(12876) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(80000) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(28) %7) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca [2 x %"struct.o3dgc::SC3DMCPredictor"], align 16 ; 31 uses
  %9 = alloca %"class.o3dgc::Arithmetic_Codec", align 8 ; 22 uses
  %10 = alloca %"class.o3dgc::Static_Bit_Model", align 4 ; 9 uses
  %11 = alloca %"class.o3dgc::Adaptive_Bit_Model", align 4 ; 9 uses
  %12 = alloca %"class.o3dgc::Adaptive_Data_Model", align 8 ; 7 uses
  %13 = alloca %"class.o3dgc::Adaptive_Data_Model", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_ZN5o3dgc16Arithmetic_CodecC1Ev(ptr noundef nonnull align 8 dereferenceable(44) %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZN5o3dgc16Static_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(4) %10)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZN5o3dgc18Adaptive_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(20) %11)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  invoke void @_ZN5o3dgc19Adaptive_Data_ModelC1Ej(ptr noundef nonnull align 8 dereferenceable(52) %12, i32 noundef 3)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i64, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12872 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = invoke noundef i64 @_ZNK5o3dgc12BinaryStream10ReadUInt32ERmNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %7, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.e)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.g = load i64, ptr %0, align 8                ; 2 uses
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %0, align 8
  %i.i = load ptr, ptr %7, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  %.0.i = load i8, ptr %i.j, align 1
  %i.k = zext i8 %.0.i to i32                     ; 2 uses
  %i.l = lshr i32 %i.k, 4
  %i.m = and i32 %i.l, 7                          ; 2 uses
  %i.n = and i32 %i.k, 7
  store i32 %i.n, ptr %6, align 4
  %i.o = load i64, ptr %0, align 8                ; 2 uses
  %.neg = add i64 %i.f, %i.c                      ; 4 uses
  %i.p = sub i64 %.neg, %i.o
  %i.q = load i32, ptr %i.d, align 8
  %.not = icmp eq i32 %i.q, 1
  br i1 %.not, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not127 = icmp eq i32 %i.m, 4
  br i1 %.not127, label %bb.k, label %bb.bb

bb.g:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.h:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.i:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.j:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp277

bb.k:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %7, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.o
  store i64 %.neg, ptr %0, align 8
  %i.x = trunc i64 %i.p to i32
  invoke void @_ZN5o3dgc16Arithmetic_Codec10set_bufferEjPh(ptr noundef nonnull align 8 dereferenceable(44) %9, i32 noundef %i.x, ptr noundef %i.w)
          to label %bb.l unwind label %.loopexit.split-lp277.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5o3dgc16Arithmetic_Codec13start_decoderEv(ptr noundef nonnull align 8 dereferenceable(44) %9)
          to label %.preheader287 unwind label %.loopexit.split-lp277.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader287:                                    ; preds = %bb.l, %.noexc
  %.014.i = phi i32 [ %.115.i, %.noexc ], [ 0, %bb.l ] ; 2 uses
  %.012.i = phi i32 [ %.113.i, %.noexc ], [ 0, %bb.l ]
  %i.y = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %9, ptr noundef nonnull align 4 dereferenceable(20) %11)
          to label %.noexc unwind label %.loopexit.split-lp277.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %.preheader287
  %i.z = icmp eq i32 %i.y, 1                      ; 2 uses
  %i.aa = shl nuw i32 1, %.014.i
  %i.ab = zext i1 %i.z to i32
  %.115.i = add nuw nsw i32 %.014.i, %i.ab        ; 3 uses
  %i.ac = select i1 %i.z, i32 %i.aa, i32 0
  %.113.i = add nsw i32 %i.ac, %.012.i            ; 2 uses
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %.preheader.i, label %.preheader287, !llvm.loop !807

.preheader.i:                                     ; preds = %.noexc
  %.not1617.i = icmp eq i32 %.115.i, 0
  br i1 %.not1617.i, label %.loopexit286, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.noexc143
  %.019.i = phi i32 [ %.1.i, %.noexc143 ], [ 0, %.preheader.i ]
  %.218.i = phi i32 [ %i.ae, %.noexc143 ], [ %.115.i, %.preheader.i ]
  %i.ad = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %9, ptr noundef nonnull align 4 dereferenceable(4) %10)
          to label %.noexc143 unwind label %.loopexit.split-lp277.loopexit.split-lp.loopexit

.noexc143:                                        ; preds = %.lr.ph.i
  %i.ae = add nsw i32 %.218.i, -1                 ; 3 uses
  %i.af = icmp eq i32 %i.ad, 1
  %i.ag = shl nuw i32 1, %i.ae
  %i.ah = select i1 %i.af, i32 %i.ag, i32 0
  %.1.i = or i32 %i.ah, %.019.i                   ; 2 uses
  %.not16.i = icmp eq i32 %i.ae, 0
  br i1 %.not16.i, label %.loopexit286, label %.lr.ph.i, !llvm.loop !808

.loopexit286:                                     ; preds = %.noexc143, %.preheader.i
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.1.i, %.noexc143 ]
  %i.ai = add nsw i32 %.0.lcssa.i, %.113.i
  br label %bb.m

bb.m:                                             ; preds = %.noexc157, %.loopexit286
  %.014.i144 = phi i32 [ 0, %.loopexit286 ], [ %.115.i146, %.noexc157 ] ; 2 uses
  %.012.i145 = phi i32 [ 0, %.loopexit286 ], [ %.113.i147, %.noexc157 ]
  %i.aj = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %9, ptr noundef nonnull align 4 dereferenceable(20) %11)
          to label %.noexc157 unwind label %.loopexit.split-lp277.loopexit ; 2 uses

.noexc157:                                        ; preds = %bb.m
  %i.ak = icmp eq i32 %i.aj, 1                    ; 2 uses
  %i.al = shl nuw i32 1, %.014.i144
  %i.am = zext i1 %i.ak to i32
  %.115.i146 = add nuw nsw i32 %.014.i144, %i.am  ; 3 uses
  %i.an = select i1 %i.ak, i32 %i.al, i32 0
  %.113.i147 = add nsw i32 %i.an, %.012.i145      ; 2 uses
  %.not.i148 = icmp eq i32 %i.aj, 0
  br i1 %.not.i148, label %.preheader.i149, label %bb.m, !llvm.loop !807
end_hunk_0
begin_hunk_1_@llvm.fmuladd.v4f32
!623 = distinct !{!623, !4}
!624 = distinct !{!624, !4}
!625 = distinct !{!625, !4}
!626 = !{!"branch_weights", i32 4001, i32 4000000}
!627 = !{!"branch_weights", i32 2002, i32 2000}
!628 = !{!"branch_weights", i32 1073741825, i32 1073741823}
!629 = distinct !{!629, !4}
!630 = distinct !{!630, !4}
!631 = !{!"branch_weights", i32 0, i32 -2147483648, i32 0}
!632 = !{!"branch_weights", i32 1, i32 4001}
!633 = distinct !{!633, !4}
!634 = !{!"branch_weights", i32 2146408832, i32 1074816}
!635 = distinct !{!635, !4}
!636 = !{!"branch_weights", i32 -100663296, i32 2097152}
!637 = distinct !{!637, !4}
!638 = !{!639}
!639 = distinct !{!639, !640, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!640 = distinct !{!640, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!641 = !{!642}
!642 = distinct !{!642, !643, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!643 = distinct !{!643, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!644 = !{!645, !642}
!645 = distinct !{!645, !646, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!646 = distinct !{!646, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!647 = !{!648}
!648 = distinct !{!648, !649, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!649 = distinct !{!649, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!650 = !{!651}
!651 = distinct !{!651, !652, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!652 = distinct !{!652, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!653 = distinct !{!653, !4}
!654 = distinct !{!654, !4}
!655 = distinct !{!655, !4}
!656 = !{!657}
!657 = distinct !{!657, !658, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!658 = distinct !{!658, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!659 = !{!660, !657}
!660 = distinct !{!660, !661, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!661 = distinct !{!661, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!662 = !{!663}
!663 = distinct !{!663, !664, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!664 = distinct !{!664, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!665 = !{!666}
!666 = distinct !{!666, !667, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!667 = distinct !{!667, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!668 = !{!669, !671}
!669 = distinct !{!669, !670, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4NodeEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!670 = distinct !{!670, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4NodeEEES4_SaIS4_EEvPT_PT0_RT1_"}
!671 = distinct !{!671, !670, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4NodeEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!672 = distinct !{!672, !4}
!673 = distinct !{!673, !4}
!674 = distinct !{!674, !4}
!675 = !{ptr @_ZN4glTF5SceneD2Ev}
!676 = !{ptr @_ZN4glTF5SceneD2Ev, ptr @_ZN4glTF6ObjectD2Ev}
!677 = !{!678}
!678 = distinct !{!678, !679, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!679 = distinct !{!679, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!680 = !{!681, !683}
!681 = distinct !{!681, !682, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4NodeEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!682 = distinct !{!682, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4NodeEEES4_SaIS4_EEvPT_PT0_RT1_"}
!683 = distinct !{!683, !682, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4NodeEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!684 = !{!685, !687}
!685 = distinct !{!685, !686, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4NodeEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!686 = distinct !{!686, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4NodeEEES4_SaIS4_EEvPT_PT0_RT1_"}
!687 = distinct !{!687, !686, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4NodeEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!688 = distinct !{!688, !4}
!689 = distinct !{!689, !4}
!690 = !{!691, !693}
!691 = distinct !{!691, !692, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4MeshEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!692 = distinct !{!692, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4MeshEEES4_SaIS4_EEvPT_PT0_RT1_"}
!693 = distinct !{!693, !692, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4MeshEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!694 = distinct !{!694, !4}
!695 = !{!696, !698}
!696 = distinct !{!696, !697, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4MeshEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!697 = distinct !{!697, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4MeshEEES4_SaIS4_EEvPT_PT0_RT1_"}
!698 = distinct !{!698, !697, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4MeshEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!699 = distinct !{!699, !4}
!700 = !{!701}
!701 = distinct !{!701, !702, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!702 = distinct !{!702, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!703 = !{!704}
!704 = distinct !{!704, !705, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!705 = distinct !{!705, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!706 = !{!707}
!707 = distinct !{!707, !708, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!708 = distinct !{!708, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!709 = distinct !{!709, !4}
!710 = distinct !{null}
!711 = distinct !{!711, !4}
!712 = distinct !{!712, !4}
!713 = distinct !{!713, !4}
!714 = distinct !{!714, !4}
!715 = distinct !{!715, !4}
!716 = !{!717}
!717 = distinct !{!717, !718, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!718 = distinct !{!718, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!719 = !{!720}
!720 = distinct !{!720, !721, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!721 = distinct !{!721, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!722 = distinct !{!722, !4}
!723 = distinct !{!723, !4}
!724 = distinct !{!724, !4}
!725 = distinct !{!725, !4}
!726 = !{!727}
!727 = distinct !{!727, !728, !"_ZSt19__relocate_object_aIN4glTF4Mesh9PrimitiveES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!728 = distinct !{!728, !"_ZSt19__relocate_object_aIN4glTF4Mesh9PrimitiveES2_SaIS2_EEvPT_PT0_RT1_"}
!729 = !{!730}
!730 = distinct !{!730, !728, !"_ZSt19__relocate_object_aIN4glTF4Mesh9PrimitiveES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!731 = !{!727, !730}
!732 = distinct !{!732, !4}
!733 = distinct !{!733, !34}
!734 = distinct !{!734, !4}
!735 = distinct !{!735, !34}
!736 = !{!737, !739}
!737 = distinct !{!737, !738, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF8AccessorEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!738 = distinct !{!738, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF8AccessorEEES4_SaIS4_EEvPT_PT0_RT1_"}
!739 = distinct !{!739, !738, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF8AccessorEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!740 = distinct !{!740, !4}
!741 = !{ptr @_ZN4glTF8AccessorD2Ev}
!742 = !{ptr @_ZN4glTF8AccessorD2Ev, ptr @_ZN4glTF6ObjectD2Ev}
!743 = !{!744}
!744 = distinct !{!744, !745, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!745 = distinct !{!745, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!746 = !{!747}
!747 = distinct !{!747, !748, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!748 = distinct !{!748, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!749 = !{!750}
!750 = distinct !{!750, !751, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_: argument 0"}
!751 = distinct !{!751, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_"}
!752 = !{!753, !750}
!753 = distinct !{!753, !754, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!754 = distinct !{!754, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!755 = !{!756}
!756 = distinct !{!756, !757, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!757 = distinct !{!757, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!758 = !{!759, !756}
!759 = distinct !{!759, !760, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!760 = distinct !{!760, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!761 = !{!762}
!762 = distinct !{!762, !763, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!763 = distinct !{!763, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!764 = !{!765}
!765 = distinct !{!765, !766, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!766 = distinct !{!766, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!767 = !{!765, !762}
!768 = !{!769}
!769 = distinct !{!769, !770, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!770 = distinct !{!770, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!771 = !{!772}
!772 = distinct !{!772, !773, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!773 = distinct !{!773, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!774 = !{!775}
!775 = distinct !{!775, !776, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!776 = distinct !{!776, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!777 = !{!778}
!778 = distinct !{!778, !779, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!779 = distinct !{!779, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!780 = !{!781}
!781 = distinct !{!781, !782, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!782 = distinct !{!782, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!783 = !{ptr @_ZN4glTF5ImageD2Ev}
!784 = !{ptr @_ZN4glTF5ImageD2Ev, ptr @_ZN4glTF6ObjectD2Ev}
!785 = !{ptr @_ZN4glTF4Mesh21SCompression_Open3DGCD2Ev}
!786 = distinct !{!786, !4}
!787 = distinct !{!787, !4}
!788 = distinct !{!788, !4}
!789 = !{!790}
!790 = distinct !{!790, !791, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!791 = distinct !{!791, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!792 = !{!793}
!793 = distinct !{!793, !794, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!794 = distinct !{!794, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!795 = !{!793, !790}
!796 = !{!797}
!797 = distinct !{!797, !798, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!798 = distinct !{!798, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!799 = !{!800}
!800 = distinct !{!800, !801, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!801 = distinct !{!801, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!802 = !{!800, !797}
!803 = distinct !{!803, !4}
!804 = distinct !{!804, !4}
!805 = distinct !{!805, !4}
!806 = distinct !{!806, !4}
!807 = distinct !{!807, !4}
!808 = distinct !{!808, !4}
!809 = distinct !{!809, !4}
!810 = distinct !{!810, !4}
!811 = distinct !{!811, !4}
!812 = distinct !{!812, !4}
!813 = distinct !{!813, !4}
!814 = distinct !{!814, !4, !67, !68}
!815 = distinct !{!815, !4, !67}
!816 = distinct !{!816, !4}
!817 = distinct !{!817, !4}
!818 = distinct !{!818, !4}
!819 = distinct !{!819, !4}
!820 = distinct !{!820, !4}
!821 = distinct !{!821, !4}
!822 = distinct !{!822, !4, !67, !68}
!823 = distinct !{!823, !4, !68, !67}
!824 = distinct !{!824, !4}
!825 = distinct !{!825, !4}
!826 = distinct !{!826, !4}
!827 = distinct !{!827, !4, !67, !68}
!828 = distinct !{!828, !4, !68, !67}
!829 = distinct !{!829, !4}
!830 = distinct !{!830, !4}
!831 = distinct !{!831, !4}
!832 = distinct !{!832, !4}
!833 = distinct !{!833, !4}
!834 = distinct !{!834, !4, !67, !68}
!835 = distinct !{!835, !4}
!836 = distinct !{!836, !4, !68, !67}
!837 = distinct !{!837, !4}
!838 = distinct !{!838, !4}
!839 = distinct !{!839, !4}
!840 = distinct !{!840, !4}
!841 = distinct !{!841, !4}
!842 = distinct !{!842, !4}
!843 = distinct !{!843, !4}
!844 = distinct !{!844, !4}
!845 = distinct !{!845, !4}
!846 = distinct !{!846, !4}
!847 = distinct !{!847, !4}
!848 = distinct !{!848, !4}
!849 = distinct !{!849, !4}
!850 = distinct !{!850, !4}
!851 = distinct !{!851, !4}
!852 = distinct !{!852, !4}
!853 = distinct !{!853, !4}
!854 = distinct !{!854, !4}
!855 = distinct !{!855, !4}
!856 = distinct !{!856, !4}
!857 = !{!858}
!858 = distinct !{!858, !859, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!859 = distinct !{!859, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!860 = !{!861}
!861 = distinct !{!861, !862, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!862 = distinct !{!862, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!863 = distinct !{!863, !4}
!864 = distinct !{!864, !4}
!865 = distinct !{!865, !4, !67, !68}
!866 = distinct !{!866, !4, !68, !67}
!867 = distinct !{!867, !4, !67, !68}
!868 = distinct !{!868, !4, !68, !67}
!869 = distinct !{!869, !4, !67, !68}
!870 = distinct !{!870, !4, !68, !67}
!871 = distinct !{!871, !4, !67, !68}
!872 = distinct !{!872, !4, !68, !67}
end_hunk_1
