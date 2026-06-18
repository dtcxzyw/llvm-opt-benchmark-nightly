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
  %.0.i377.sink771 = phi i64 [ %i.ti, %.noexc393 ], [ %i.su, %bb.cm ], [ %i.tw, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i391 ], [ %i.te, %.preheader.i.i372 ] ; 3 uses
  %i.tx = and i64 %.0.i377.sink771, 1
  %.not.i10.i378 = icmp eq i64 %i.tx, 0
  %i.ty = add i64 %.0.i377.sink771, 1
  %i.tz = lshr exact i64 %i.ty, 1
  %i.ua = sub nsw i64 0, %i.tz
  %i.ub = lshr exact i64 %.0.i377.sink771, 1
  %i.uc = select i1 %.not.i10.i378, i64 %i.ub, i64 %i.ua
  %i.ud = load ptr, ptr %i.ep, align 8            ; 2 uses
  %i.ue = getelementptr [8 x i8], ptr %i.ud, i64 %i.sk
  %i.uf = getelementptr [8 x i8], ptr %i.ue, i64 %.0232600
  %i.ug = load i64, ptr %i.uf, align 8
  %i.uh = add nsw i64 %i.ug, %i.uc
  %i.ui = getelementptr [8 x i8], ptr %i.ud, i64 %i.sl
  %i.uj = getelementptr [8 x i8], ptr %i.ui, i64 %.0232600
  store i64 %i.uh, ptr %i.uj, align 8
  %i.uk = add nuw i64 %.0232600, 1                ; 2 uses
  %exitcond667.not.a = icmp eq i64 %i.uk, %.0214
  br i1 %exitcond667.not.a, label %.loopexit528, label %bb.cl, !llvm.loop !819

bb.co:                                            ; preds = %.lr.ph603, %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit
  %.0231602 = phi i64 [ 0, %.lr.ph603 ], [ %i.vy, %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit ] ; 2 uses
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
  br label %.loopexit.split-lp519

.loopexit.split-lp.loopexit:                      ; preds = %.preheader506
  %lpad.loopexit507 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp519

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.cq
  %lpad.loopexit.split-lp508 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp519

bb.cq:                                            ; preds = %bb.co
  %i.vf = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 8 dereferenceable(52) %16)
          to label %.noexc416 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc416:                                        ; preds = %bb.cq
  %i.vg = zext i32 %i.vf to i64
  %i.vh = icmp eq i32 %.0237, %i.vf
  br i1 %i.vh, label %.preheader506, label %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit

.preheader506:                                    ; preds = %.noexc416, %.noexc417
  %.014.i.i402 = phi i32 [ %.115.i.i404, %.noexc417 ], [ %.0236, %.noexc416 ] ; 2 uses
  %.012.i.i403 = phi i32 [ %.113.i.i405, %.noexc417 ], [ 0, %.noexc416 ]
  %i.vi = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(20) %14)
          to label %.noexc417 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc417:                                        ; preds = %.preheader506
  %i.vj = icmp eq i32 %i.vi, 1                    ; 2 uses
  %i.vk = shl nuw i32 1, %.014.i.i402
  %i.vl = zext i1 %i.vj to i32
  %.115.i.i404 = add nsw i32 %.014.i.i402, %i.vl  ; 3 uses
  %i.vm = select i1 %i.vj, i32 %i.vk, i32 0
  %.113.i.i405 = add nsw i32 %i.vm, %.012.i.i403  ; 2 uses
  %.not.i.i406 = icmp eq i32 %i.vi, 0
  br i1 %.not.i.i406, label %.preheader.i.i407, label %.preheader506, !llvm.loop !807

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
  %i.vx = getelementptr [8 x i8], ptr %i.vw, i64 %.0231602
  store i64 %.2, ptr %i.vx, align 8
  %i.vy = add nuw i64 %.0231602, 1                ; 2 uses
  %exitcond668.not.a = icmp eq i64 %i.vy, %.0214
  br i1 %exitcond668.not.a, label %.loopexit528, label %bb.co, !llvm.loop !820

.loopexit528:                                     ; preds = %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit376, %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit362, %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit, %bb.ch, %.preheader529, %.preheader527
  %.3472 = phi i64 [ %.1470604, %.preheader527 ], [ %.1470604, %.preheader529 ], [ %.2471, %bb.ch ], [ %.1470604, %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit ], [ %.2471, %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit362 ], [ %.1470604, %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit376 ] ; 2 uses
  %i.vz = add nuw nsw i64 %.0244605, 1            ; 2 uses
  %exitcond669.not = icmp eq i64 %i.vz, %2
  br i1 %exitcond669.not, label %._crit_edge610, label %bb.au, !llvm.loop !821

bb.cr:                                            ; preds = %._crit_edge610
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
  %min.iters.check820 = icmp ult i64 %.0214, 4
  br i1 %min.iters.check820, label %scalar.ph819.preheader, label %vector.ph821

vector.ph821:                                     ; preds = %.lr.ph.i420
  %n.vec823 = and i64 %.0214, -4                  ; 3 uses
  %broadcast.splatinsert824 = insertelement <4 x float> poison, float %i.wd, i64 0
  %broadcast.splat825 = shufflevector <4 x float> %broadcast.splatinsert824, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body826

vector.body826:                                   ; preds = %vector.body826, %vector.ph821
  %index827 = phi i64 [ 0, %vector.ph821 ], [ %index.next830, %vector.body826 ] ; 4 uses
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index827
  %wide.load828 = load <4 x float>, ptr %i.we, align 8
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index827
  %wide.load829 = load <4 x float>, ptr %i.wf, align 8
  %i.wg = fsub <4 x float> %wide.load828, %wide.load829 ; 2 uses
  %i.wh = fcmp ogt <4 x float> %i.wg, zeroinitializer
  %i.wi = fdiv <4 x float> %i.wg, %broadcast.splat825
  %i.wj = select <4 x i1> %i.wh, <4 x float> %i.wi, <4 x float> splat (float 1.000000e+00)
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index827
  store <4 x float> %i.wj, ptr %i.wk, align 16
  %index.next830 = add nuw i64 %index827, 4       ; 2 uses
  %i.wl = icmp eq i64 %index.next830, %n.vec823
  br i1 %i.wl, label %middle.block831, label %vector.body826, !llvm.loop !822

middle.block831:                                  ; preds = %vector.body826
  %cmp.n832 = icmp eq i64 %.0214, %n.vec823
  br i1 %cmp.n832, label %.preheader32.i, label %scalar.ph819.preheader

scalar.ph819.preheader:                           ; preds = %.lr.ph.i420, %middle.block831
  %.02933.i.ph = phi i64 [ 0, %.lr.ph.i420 ], [ %n.vec823, %middle.block831 ]
  br label %scalar.ph819

.preheader32.i:                                   ; preds = %scalar.ph819, %middle.block831
  %.not38.i = icmp eq i64 %2, 0
  br i1 %.not38.i, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit.thread, label %.preheader.preheader.i

_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit.thread: ; preds = %.preheader32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %._crit_edge614

.preheader.preheader.i:                           ; preds = %.preheader32.i
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 4568 ; 3 uses
  %xtraiter888 = and i64 %.0214, 1
  %i.wn = icmp eq i64 %.0214, 1
  %unroll_iter891 = and i64 %.0214, -2
  %lcmp.mod889.not = icmp eq i64 %xtraiter888, 0
  %lcmp.mod890 = trunc i64 %.0214 to i1
  br label %.preheader.i422

scalar.ph819:                                     ; preds = %scalar.ph819.preheader, %scalar.ph819
  %.02933.i.a = phi i64 [ %i.wt, %scalar.ph819 ], [ %.02933.i.ph, %scalar.ph819.preheader ] ; 4 uses
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.02933.i.a
  %i.wp = load float, ptr %i.wo, align 4
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.02933.i.a
  %i.wr = load float, ptr %i.wq, align 4
  %18 = fsub float %i.wp, %i.wr                   ; 2 uses
  %19 = fcmp ogt float %18, 0.000000e+00
  %20 = fdiv float %18, %i.wd
  %.sink.i = select i1 %19, float %20, float 1.000000e+00
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.02933.i.a
  store float %.sink.i, ptr %i.ws, align 4
  %i.wt = add nuw i64 %.02933.i.a, 1              ; 2 uses
  %exitcond.not.i421.a = icmp eq i64 %i.wt, %.0214
  br i1 %exitcond.not.i421.a, label %.preheader32.i, label %scalar.ph819, !llvm.loop !823

.preheader.i422:                                  ; preds = %._crit_edge.i423, %.preheader.preheader.i
  %.02836.i = phi i64 [ %i.xf, %._crit_edge.i423 ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %21 = mul i64 %.02836.i, %4                     ; 3 uses
  br i1 %i.wn, label %.epil.preheader887, label %.preheader.i422.new

._crit_edge.i423.unr-lcssa:                       ; preds = %.preheader.i422.new
  br i1 %lcmp.mod889.not, label %._crit_edge.i423, label %.epil.preheader887

.epil.preheader887:                               ; preds = %._crit_edge.i423.unr-lcssa, %.preheader.i422
  %.034.i.epil.init = phi i64 [ 0, %.preheader.i422 ], [ %40, %._crit_edge.i423.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod890)
  %i.wu = load ptr, ptr %i.wm, align 8
  %i.wv = add i64 %.034.i.epil.init, %21          ; 2 uses
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.wu, i64 %i.wv
  %i.wx = load i64, ptr %i.ww, align 8
  %i.wy = sitofp i64 %i.wx to float
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.034.i.epil.init
  %i.xa = load float, ptr %i.wz, align 4
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.034.i.epil.init
  %i.xc = load float, ptr %i.xb, align 4
  %i.xd = call float @llvm.fmuladd.f32(float %i.wy, float %i.xa, float %i.xc)
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wv
  store float %i.xd, ptr %i.xe, align 4
  br label %._crit_edge.i423

._crit_edge.i423:                                 ; preds = %._crit_edge.i423.unr-lcssa, %.epil.preheader887
  %i.xf = add nuw i64 %.02836.i, 1                ; 2 uses
  %exitcond41.not.i = icmp eq i64 %i.xf, %2
  br i1 %exitcond41.not.i, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit, label %.preheader.i422, !llvm.loop !824

.preheader.i422.new:                              ; preds = %.preheader.i422, %.preheader.i422.new
  %.034.i = phi i64 [ %40, %.preheader.i422.new ], [ 0, %.preheader.i422 ] ; 5 uses
  %niter892 = phi i64 [ %niter892.next.1, %.preheader.i422.new ], [ 0, %.preheader.i422 ]
  %22 = load ptr, ptr %i.wm, align 8
  %23 = add i64 %.034.i, %21                      ; 2 uses
  %24 = getelementptr inbounds nuw [8 x i8], ptr %22, i64 %23
  %25 = load i64, ptr %24, align 8
  %26 = sitofp i64 %25 to float
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.034.i
  %i.xh = load float, ptr %i.xg, align 8
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.034.i
  %i.xj = load float, ptr %i.xi, align 8
  %27 = call float @llvm.fmuladd.f32(float %26, float %i.xh, float %i.xj)
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
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %31
  store float %39, ptr %i.xk, align 4
  %40 = add nuw i64 %.034.i, 2                    ; 2 uses
  %niter892.next.1 = add i64 %niter892, 2         ; 2 uses
  %niter892.ncmp.1 = icmp eq i64 %niter892.next.1, %unroll_iter891
  br i1 %niter892.ncmp.1, label %._crit_edge.i423.unr-lcssa, label %.preheader.i422.new, !llvm.loop !825

_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit: ; preds = %._crit_edge.i423, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br i1 %i.em, label %.lr.ph613, label %._crit_edge614

.lr.ph613:                                        ; preds = %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 4584
  br label %bb.cs

._crit_edge614:                                   ; preds = %bb.ct, %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit.thread, %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.cw

bb.cs:                                            ; preds = %.lr.ph613, %bb.ct
  %.0612 = phi i64 [ 0, %.lr.ph613 ], [ %i.yd, %bb.ct ] ; 4 uses
  %i.xn = load ptr, ptr %i.xl, align 8
  %.idx496 = shl nuw nsw i64 %.0612, 3
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 %.idx496 ; 2 uses
  %i.xp = load float, ptr %i.xo, align 4
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xo, i64 4
  %i.xr = load float, ptr %i.xq, align 4
  %i.xs = mul i64 %.0612, %4
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.xs ; 4 uses
  %i.xu = load float, ptr %i.xt, align 4
  %i.xv = fadd float %i.xp, %i.xu
  %i.xw = getelementptr i8, ptr %i.xt, i64 4      ; 2 uses
  %i.xx = load float, ptr %i.xw, align 4
  %i.xy = fadd float %i.xr, %i.xx
  %i.xz = load ptr, ptr %i.xm, align 8
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 %.0612
  %i.yb = load i8, ptr %i.ya, align 1
  %i.yc = getelementptr i8, ptr %i.xt, i64 8
  invoke void @_ZN5o3dgc12CubeToSphereEffcRfS0_S0_(float noundef %i.xv, float noundef %i.xy, i8 noundef signext %i.yb, ptr noundef nonnull align 4 dereferenceable(4) %i.xt, ptr noundef nonnull align 4 dereferenceable(4) %i.xw, ptr noundef nonnull align 4 dereferenceable(4) %i.yc)
          to label %bb.ct unwind label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.yd = add nuw nsw i64 %.0612, 1               ; 2 uses
  %exitcond670.not = icmp eq i64 %i.yd, %2
  br i1 %exitcond670.not, label %._crit_edge614, label %bb.cs, !llvm.loop !826

bb.cu:                                            ; preds = %bb.cs
  %i.ye = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %.loopexit.split-lp519

bb.cv:                                            ; preds = %._crit_edge610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %.not.i424 = icmp eq i64 %.0214, 0
  br i1 %.not.i424, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit439, label %.lr.ph.i425

.lr.ph.i425:                                      ; preds = %bb.cv
  %i.yf = trunc i64 %7 to i32
  %notmask.i426 = shl nsw i32 -1, %i.yf
  %i.yg = xor i32 %notmask.i426, -1
  %i.yh = uitofp nneg i32 %i.yg to float          ; 2 uses
  %min.iters.check807 = icmp ult i64 %.0214, 4
  br i1 %min.iters.check807, label %scalar.ph806.preheader, label %vector.ph808

vector.ph808:                                     ; preds = %.lr.ph.i425
  %n.vec810 = and i64 %.0214, -4                  ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.yh, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body811

vector.body811:                                   ; preds = %vector.body811, %vector.ph808
  %index812 = phi i64 [ 0, %vector.ph808 ], [ %index.next815, %vector.body811 ] ; 4 uses
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index812
  %wide.load813 = load <4 x float>, ptr %i.yi, align 4
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index812
  %wide.load814 = load <4 x float>, ptr %i.yj, align 4
  %i.yk = fsub <4 x float> %wide.load813, %wide.load814 ; 2 uses
  %i.yl = fcmp ogt <4 x float> %i.yk, zeroinitializer
  %i.ym = fdiv <4 x float> %i.yk, %broadcast.splat
  %i.yn = select <4 x i1> %i.yl, <4 x float> %i.ym, <4 x float> splat (float 1.000000e+00)
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index812
  store <4 x float> %i.yn, ptr %i.yo, align 16
  %index.next815 = add nuw i64 %index812, 4       ; 2 uses
  %i.yp = icmp eq i64 %index.next815, %n.vec810
  br i1 %i.yp, label %middle.block816, label %vector.body811, !llvm.loop !827

middle.block816:                                  ; preds = %vector.body811
  %cmp.n817 = icmp eq i64 %.0214, %n.vec810
  br i1 %cmp.n817, label %.preheader32.i430, label %scalar.ph806.preheader

scalar.ph806.preheader:                           ; preds = %.lr.ph.i425, %middle.block816
  %.02933.i427.ph = phi i64 [ 0, %.lr.ph.i425 ], [ %n.vec810, %middle.block816 ]
  br label %scalar.ph806

.preheader32.i430:                                ; preds = %scalar.ph806, %middle.block816
  %.not38.i431 = icmp eq i64 %2, 0
  br i1 %.not38.i431, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit439, label %.preheader.preheader.i432

.preheader.preheader.i432:                        ; preds = %.preheader32.i430
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 4568 ; 3 uses
  %xtraiter884 = and i64 %.0214, 1
  %i.yr = icmp eq i64 %.0214, 1
  %unroll_iter = and i64 %.0214, -2
  %lcmp.mod885.not = icmp eq i64 %xtraiter884, 0
  %lcmp.mod886 = trunc i64 %.0214 to i1
  br label %.preheader.i433

scalar.ph806:                                     ; preds = %scalar.ph806.preheader, %scalar.ph806
  %.02933.i427 = phi i64 [ %i.yx, %scalar.ph806 ], [ %.02933.i427.ph, %scalar.ph806.preheader ] ; 4 uses
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.02933.i427
  %i.yt = load float, ptr %i.ys, align 4
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.02933.i427
  %i.yv = load float, ptr %i.yu, align 4
  %41 = fsub float %i.yt, %i.yv                   ; 2 uses
  %42 = fcmp ogt float %41, 0.000000e+00
  %43 = fdiv float %41, %i.yh
  %.sink.i428 = select i1 %42, float %43, float 1.000000e+00
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.02933.i427
  store float %.sink.i428, ptr %i.yw, align 4
  %i.yx = add nuw i64 %.02933.i427, 1             ; 2 uses
  %exitcond.not.i429 = icmp eq i64 %i.yx, %.0214
  br i1 %exitcond.not.i429, label %.preheader32.i430, label %scalar.ph806, !llvm.loop !828

.preheader.i433:                                  ; preds = %._crit_edge.i437, %.preheader.preheader.i432
  %.02836.i434 = phi i64 [ %i.zj, %._crit_edge.i437 ], [ 0, %.preheader.preheader.i432 ] ; 2 uses
  %44 = mul i64 %.02836.i434, %4                  ; 3 uses
  br i1 %i.yr, label %.epil.preheader, label %.preheader.i433.new

._crit_edge.i437.unr-lcssa:                       ; preds = %.preheader.i433.new
  br i1 %lcmp.mod885.not, label %._crit_edge.i437, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i437.unr-lcssa, %.preheader.i433
  %.034.i435.epil.init = phi i64 [ 0, %.preheader.i433 ], [ %63, %._crit_edge.i437.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod886)
  %i.yy = load ptr, ptr %i.yq, align 8
  %i.yz = add i64 %.034.i435.epil.init, %44       ; 2 uses
  %i.za = getelementptr inbounds nuw [8 x i8], ptr %i.yy, i64 %i.yz
  %i.zb = load i64, ptr %i.za, align 8
  %i.zc = sitofp i64 %i.zb to float
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.034.i435.epil.init
  %i.ze = load float, ptr %i.zd, align 4
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.034.i435.epil.init
  %i.zg = load float, ptr %i.zf, align 4
  %i.zh = call float @llvm.fmuladd.f32(float %i.zc, float %i.ze, float %i.zg)
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.yz
  store float %i.zh, ptr %i.zi, align 4
  br label %._crit_edge.i437

._crit_edge.i437:                                 ; preds = %._crit_edge.i437.unr-lcssa, %.epil.preheader
  %i.zj = add nuw i64 %.02836.i434, 1             ; 2 uses
  %exitcond41.not.i438 = icmp eq i64 %i.zj, %2
  br i1 %exitcond41.not.i438, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit439, label %.preheader.i433, !llvm.loop !824

.preheader.i433.new:                              ; preds = %.preheader.i433, %.preheader.i433.new
  %.034.i435 = phi i64 [ %63, %.preheader.i433.new ], [ 0, %.preheader.i433 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i433.new ], [ 0, %.preheader.i433 ]
  %45 = load ptr, ptr %i.yq, align 8
  %46 = add i64 %.034.i435, %44                   ; 2 uses
  %47 = getelementptr inbounds nuw [8 x i8], ptr %45, i64 %46
  %48 = load i64, ptr %47, align 8
  %49 = sitofp i64 %48 to float
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.034.i435
  %i.zl = load float, ptr %i.zk, align 8
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.034.i435
  %i.zn = load float, ptr %i.zm, align 4
  %50 = call float @llvm.fmuladd.f32(float %49, float %i.zl, float %i.zn)
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
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %54
  store float %62, ptr %i.zo, align 4
  %63 = add nuw i64 %.034.i435, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i437.unr-lcssa, label %.preheader.i433.new, !llvm.loop !825

_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit439: ; preds = %._crit_edge.i437, %bb.cv, %.preheader32.i430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.cw

bb.cw:                                            ; preds = %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit439, %._crit_edge614
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.cy

.loopexit.split-lp519:                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit510, %.loopexit.split-lp511.loopexit.split-lp, %.loopexit.split-lp511.loopexit, %.loopexit518, %.loopexit.split-lp519.loopexit.split-lp, %.loopexit.split-lp519.loopexit, %bb.cg, %bb.cu, %bb.an, %bb.ad, %bb.x
  %.pn284 = phi { ptr, i32 } [ %i.dd, %bb.ad ], [ %.pn, %bb.an ], [ %i.ye, %bb.cu ], [ %i.br, %bb.x ], [ %i.qi, %bb.cg ], [ %lpad.loopexit.split-lp524, %.loopexit.split-lp519.loopexit.split-lp ], [ %lpad.loopexit.split-lp516, %.loopexit.split-lp511.loopexit.split-lp ], [ %lpad.loopexit520, %.loopexit518 ], [ %lpad.loopexit523, %.loopexit.split-lp519.loopexit ], [ %lpad.loopexit512, %.loopexit510 ], [ %lpad.loopexit515, %.loopexit.split-lp511.loopexit ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit507, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp508, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %16) #28
  br label %bb.cx

bb.cx:                                            ; preds = %.loopexit.split-lp519, %bb.w
  %.pn284.pn = phi { ptr, i32 } [ %.pn284, %.loopexit.split-lp519 ], [ %i.bq, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %.loopexit.split-lp537

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

.loopexit.split-lp537:                            ; preds = %.loopexit536, %.loopexit.split-lp537.loopexit.split-lp.loopexit, %.loopexit.split-lp537.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp537.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp537.loopexit, %bb.cx, %bb.j
  %.pn284.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %.pn284.pn, %bb.cx ], [ %lpad.loopexit538, %.loopexit536 ], [ %lpad.loopexit541, %.loopexit.split-lp537.loopexit ], [ %lpad.loopexit544, %.loopexit.split-lp537.loopexit.split-lp.loopexit ], [ %lpad.loopexit548, %.loopexit.split-lp537.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp549, %.loopexit.split-lp537.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %15) #28
  br label %bb.cz

bb.cz:                                            ; preds = %.loopexit.split-lp537, %bb.i
  %.pn284.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn284.pn.pn.pn.pn, %.loopexit.split-lp537 ], [ %i.z, %bb.i ]
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
