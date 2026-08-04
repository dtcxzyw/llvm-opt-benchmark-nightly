inline.NumInlined: 6973
inline.NumDeleted: 2254
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN5o3dgc13SC3DMCDecoderItE16DecodeFloatArrayEPfmmmPKfS4_mRKNS_14IndexedFaceSetItEERNS_25O3DGCSC3DMCPredictionModeERKNS_12BinaryStreamE:bb.a
.lr.ph.i.i407:                                    ; preds = %.preheader.i.i405, %.noexc416
  %.019.i.i408 = phi i32 [ %.1.i.i410, %.noexc416 ], [ 0, %.preheader.i.i405 ]
  %.218.i.i409 = phi i32 [ %i.uj, %.noexc416 ], [ %.115.i.i402, %.preheader.i.i405 ]
  %i.ui = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(4) %13)
          to label %.noexc416 unwind label %.loopexit

.noexc416:                                        ; preds = %.lr.ph.i.i407
  %i.uj = add nsw i32 %.218.i.i409, -1            ; 3 uses
  %i.uk = icmp eq i32 %i.ui, 1
  %i.ul = shl nuw i32 1, %i.uj
  %i.um = select i1 %i.uk, i32 %i.ul, i32 0
  %.1.i.i410 = or i32 %i.um, %.019.i.i408         ; 2 uses
  %.not16.i.i411 = icmp eq i32 %i.uj, 0
  br i1 %.not16.i.i411, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i412, label %.lr.ph.i.i407, !llvm.loop !382

_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i412: ; preds = %.noexc416, %.preheader.i.i405
  %.0.lcssa.i.i413 = phi i32 [ 0, %.preheader.i.i405 ], [ %.1.i.i410, %.noexc416 ]
  %i.un = add nsw i32 %.0.lcssa.i.i413, %.113.i.i403
  %i.uo = zext i32 %i.un to i64
  %i.up = add nuw nsw i64 %i.uo, %i.eq
  br label %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit

_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit:  ; preds = %.preheader.i396, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i412, %.noexc414, %bb.cm
  %.2 = phi i64 [ %i.ub, %.noexc414 ], [ %i.tn, %bb.cm ], [ %i.up, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i412 ], [ %i.tx, %.preheader.i396 ]
  %i.uq = load ptr, ptr %i.ep, align 8
  %i.ur = getelementptr [8 x i8], ptr %i.uq, i64 %i.tf
  %i.us = getelementptr [8 x i8], ptr %i.ur, i64 %.0231591
  store i64 %.2, ptr %i.us, align 8
  %i.ut = add nuw i64 %.0231591, 1                ; 2 uses
  %exitcond640.not = icmp eq i64 %i.ut, %.0214
  br i1 %exitcond640.not, label %.loopexit517, label %bb.cl, !llvm.loop !393

.loopexit517:                                     ; preds = %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit360, %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit374, %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit, %bb.cc, %.preheader518, %bb.ck
  %.3470 = phi i64 [ %.1468594, %bb.ck ], [ %.1468594, %.preheader518 ], [ %.2469, %bb.cc ], [ %.1468594, %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit374 ], [ %.1468594, %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit ], [ %.2469, %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit360 ] ; 2 uses
  %i.uu = add nuw nsw i64 %.0244595, 1            ; 2 uses
  %exitcond641.not = icmp eq i64 %i.uu, %2
  br i1 %exitcond641.not, label %._crit_edge600, label %bb.au, !llvm.loop !394

bb.co:                                            ; preds = %._crit_edge600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i64 -4611686015206162432, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  store i64 4611686019501129728, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %.not.i417 = icmp eq i64 %.0214, 0
  br i1 %.not.i417, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit, label %.lr.ph.i418

.lr.ph.i418:                                      ; preds = %bb.co
  %i.uv = trunc i64 %7 to i32
  %i.uw = add i32 %i.uv, 1
  %notmask.i = shl nsw i32 -1, %i.uw
  %i.ux = xor i32 %notmask.i, -1
  %i.uy = uitofp nneg i32 %i.ux to float          ; 2 uses
  %min.iters.check789 = icmp ult i64 %.0214, 4
  br i1 %min.iters.check789, label %scalar.ph788.preheader, label %vector.ph790

vector.ph790:                                     ; preds = %.lr.ph.i418
  %n.vec792 = and i64 %.0214, -4                  ; 3 uses
  %broadcast.splatinsert793 = insertelement <4 x float> poison, float %i.uy, i64 0
  %broadcast.splat794 = shufflevector <4 x float> %broadcast.splatinsert793, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body795

vector.body795:                                   ; preds = %vector.body795, %vector.ph790
  %index796 = phi i64 [ 0, %vector.ph790 ], [ %index.next799, %vector.body795 ] ; 4 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index796
  %wide.load797 = load <4 x float>, ptr %i.uz, align 8
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index796
  %wide.load798 = load <4 x float>, ptr %i.va, align 8
  %i.vb = fsub <4 x float> %wide.load797, %wide.load798 ; 2 uses
  %i.vc = fcmp ogt <4 x float> %i.vb, zeroinitializer
  %i.vd = fdiv <4 x float> %i.vb, %broadcast.splat794
  %i.ve = select <4 x i1> %i.vc, <4 x float> %i.vd, <4 x float> splat (float 1.000000e+00)
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index796
  store <4 x float> %i.ve, ptr %i.vf, align 16
  %index.next799 = add nuw i64 %index796, 4       ; 2 uses
  %i.vg = icmp eq i64 %index.next799, %n.vec792
  br i1 %i.vg, label %middle.block800, label %vector.body795, !llvm.loop !395

middle.block800:                                  ; preds = %vector.body795
  %cmp.n801 = icmp eq i64 %.0214, %n.vec792
  br i1 %cmp.n801, label %.preheader32.i, label %scalar.ph788.preheader

scalar.ph788.preheader:                           ; preds = %.lr.ph.i418, %middle.block800
  %.02933.i.ph = phi i64 [ 0, %.lr.ph.i418 ], [ %n.vec792, %middle.block800 ]
  br label %scalar.ph788

.preheader32.i:                                   ; preds = %scalar.ph788, %middle.block800
  %.not38.i = icmp eq i64 %2, 0
  br i1 %.not38.i, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit.thread, label %.preheader.preheader.i

_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit.thread: ; preds = %.preheader32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %._crit_edge604

.preheader.preheader.i:                           ; preds = %.preheader32.i
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 4568 ; 3 uses
  %xtraiter833 = and i64 %.0214, 1
  %i.vi = icmp eq i64 %.0214, 1
  %unroll_iter836 = and i64 %.0214, -2
  %lcmp.mod834.not = icmp eq i64 %xtraiter833, 0
  %lcmp.mod835 = trunc i64 %.0214 to i1
  br label %.preheader.i420

scalar.ph788:                                     ; preds = %scalar.ph788.preheader, %scalar.ph788
  %.02933.i = phi i64 [ %i.vr, %scalar.ph788 ], [ %.02933.i.ph, %scalar.ph788.preheader ] ; 4 uses
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.02933.i
  %i.vk = load float, ptr %i.vj, align 4
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.02933.i
  %i.vm = load float, ptr %i.vl, align 4
  %i.vn = fsub float %i.vk, %i.vm                 ; 2 uses
  %i.vo = fcmp ogt float %i.vn, 0.000000e+00
  %i.vp = fdiv float %i.vn, %i.uy
  %.sink.i = select i1 %i.vo, float %i.vp, float 1.000000e+00
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.02933.i
  store float %.sink.i, ptr %i.vq, align 4
  %i.vr = add nuw i64 %.02933.i, 1                ; 2 uses
  %exitcond.not.i419 = icmp eq i64 %i.vr, %.0214
  br i1 %exitcond.not.i419, label %.preheader32.i, label %scalar.ph788, !llvm.loop !396

.preheader.i420:                                  ; preds = %._crit_edge.i421, %.preheader.preheader.i
  %.02836.i = phi i64 [ %i.we, %._crit_edge.i421 ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %i.vs = mul i64 %.02836.i, %4                   ; 3 uses
  br i1 %i.vi, label %.epil.preheader832, label %.preheader.i420.new

._crit_edge.i421.unr-lcssa:                       ; preds = %.preheader.i420.new
  br i1 %lcmp.mod834.not, label %._crit_edge.i421, label %.epil.preheader832

.epil.preheader832:                               ; preds = %._crit_edge.i421.unr-lcssa, %.preheader.i420
  %.034.i.epil.init = phi i64 [ 0, %.preheader.i420 ], [ %i.xc, %._crit_edge.i421.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod835)
  %i.vt = load ptr, ptr %i.vh, align 8
  %i.vu = add i64 %.034.i.epil.init, %i.vs        ; 2 uses
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %i.vu
  %i.vw = load i64, ptr %i.vv, align 8
  %i.vx = sitofp i64 %i.vw to float
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.034.i.epil.init
  %i.vz = load float, ptr %i.vy, align 4
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.034.i.epil.init
  %i.wb = load float, ptr %i.wa, align 4
  %i.wc = call float @llvm.fmuladd.f32(float %i.vx, float %i.vz, float %i.wb)
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vu
  store float %i.wc, ptr %i.wd, align 4
  br label %._crit_edge.i421

._crit_edge.i421:                                 ; preds = %._crit_edge.i421.unr-lcssa, %.epil.preheader832
  %i.we = add nuw i64 %.02836.i, 1                ; 2 uses
  %exitcond41.not.i = icmp eq i64 %i.we, %2
  br i1 %exitcond41.not.i, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit, label %.preheader.i420, !llvm.loop !397

.preheader.i420.new:                              ; preds = %.preheader.i420, %.preheader.i420.new
  %.034.i = phi i64 [ %i.xc, %.preheader.i420.new ], [ 0, %.preheader.i420 ] ; 5 uses
  %niter837 = phi i64 [ %niter837.next.1, %.preheader.i420.new ], [ 0, %.preheader.i420 ]
  %i.wf = load ptr, ptr %i.vh, align 8
  %i.wg = add i64 %.034.i, %i.vs                  ; 2 uses
  %i.wh = getelementptr inbounds nuw [8 x i8], ptr %i.wf, i64 %i.wg
  %i.wi = load i64, ptr %i.wh, align 8
  %i.wj = sitofp i64 %i.wi to float
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.034.i
  %i.wl = load float, ptr %i.wk, align 8
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.034.i
  %i.wn = load float, ptr %i.wm, align 8
  %i.wo = call float @llvm.fmuladd.f32(float %i.wj, float %i.wl, float %i.wn)
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wg
  store float %i.wo, ptr %i.wp, align 4
  %i.wq = or disjoint i64 %.034.i, 1              ; 3 uses
  %i.wr = load ptr, ptr %i.vh, align 8
  %i.ws = add i64 %i.wq, %i.vs                    ; 2 uses
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %i.ws
  %i.wu = load i64, ptr %i.wt, align 8
  %i.wv = sitofp i64 %i.wu to float
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.wq
  %i.wx = load float, ptr %i.ww, align 4
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.wq
  %i.wz = load float, ptr %i.wy, align 4
  %i.xa = call float @llvm.fmuladd.f32(float %i.wv, float %i.wx, float %i.wz)
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ws
  store float %i.xa, ptr %i.xb, align 4
  %i.xc = add nuw i64 %.034.i, 2                  ; 2 uses
  %niter837.next.1 = add i64 %niter837, 2         ; 2 uses
  %niter837.ncmp.1 = icmp eq i64 %niter837.next.1, %unroll_iter836
  br i1 %niter837.ncmp.1, label %._crit_edge.i421.unr-lcssa, label %.preheader.i420.new, !llvm.loop !398

_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit: ; preds = %._crit_edge.i421, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br i1 %i.em, label %.lr.ph603, label %._crit_edge604

.lr.ph603:                                        ; preds = %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 4584
  br label %bb.cp

._crit_edge604:                                   ; preds = %bb.cq, %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit.thread, %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %bb.ct

bb.cp:                                            ; preds = %.lr.ph603, %bb.cq
  %.0602 = phi i64 [ 0, %.lr.ph603 ], [ %i.xn, %bb.cq ] ; 4 uses
  %i.xf = load ptr, ptr %i.xd, align 8
  %.idx486 = shl nuw nsw i64 %.0602, 3
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 %.idx486
  %i.xh = mul i64 %.0602, %4
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.xh ; 4 uses
  %18 = getelementptr i8, ptr %i.xi, i64 4
  %19 = load <2 x float>, ptr %i.xg, align 4
  %20 = load <2 x float>, ptr %i.xi, align 4
  %21 = fadd <2 x float> %19, %20                 ; 2 uses
  %i.xj = load ptr, ptr %i.xe, align 8
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 %.0602
  %i.xl = load i8, ptr %i.xk, align 1
  %i.xm = getelementptr i8, ptr %i.xi, i64 8
  %22 = extractelement <2 x float> %21, i64 0
  %23 = extractelement <2 x float> %21, i64 1
  invoke void @_ZN5o3dgc12CubeToSphereEffcRfS0_S0_(float noundef %22, float noundef %23, i8 noundef signext %i.xl, ptr noundef nonnull align 4 dereferenceable(4) %i.xi, ptr noundef nonnull align 4 dereferenceable(4) %18, ptr noundef nonnull align 4 dereferenceable(4) %i.xm)
          to label %bb.cq unwind label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.xn = add nuw nsw i64 %.0602, 1               ; 2 uses
  %exitcond642.not = icmp eq i64 %i.xn, %2
  br i1 %exitcond642.not, label %._crit_edge604, label %bb.cp, !llvm.loop !399

bb.cr:                                            ; preds = %bb.cp
  %i.xo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %.loopexit.split-lp509

bb.cs:                                            ; preds = %._crit_edge600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.not.i422 = icmp eq i64 %.0214, 0
  br i1 %.not.i422, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit437, label %.lr.ph.i423

.lr.ph.i423:                                      ; preds = %bb.cs
  %i.xp = trunc i64 %7 to i32
  %notmask.i424 = shl nsw i32 -1, %i.xp
  %i.xq = xor i32 %notmask.i424, -1
  %i.xr = uitofp nneg i32 %i.xq to float          ; 2 uses
  %min.iters.check776 = icmp ult i64 %.0214, 4
  br i1 %min.iters.check776, label %scalar.ph775.preheader, label %vector.ph777

vector.ph777:                                     ; preds = %.lr.ph.i423
  %n.vec779 = and i64 %.0214, -4                  ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.xr, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body780

vector.body780:                                   ; preds = %vector.body780, %vector.ph777
  %index781 = phi i64 [ 0, %vector.ph777 ], [ %index.next784, %vector.body780 ] ; 4 uses
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index781
  %wide.load782 = load <4 x float>, ptr %i.xs, align 4
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index781
  %wide.load783 = load <4 x float>, ptr %i.xt, align 4
  %i.xu = fsub <4 x float> %wide.load782, %wide.load783 ; 2 uses
  %i.xv = fcmp ogt <4 x float> %i.xu, zeroinitializer
  %i.xw = fdiv <4 x float> %i.xu, %broadcast.splat
  %i.xx = select <4 x i1> %i.xv, <4 x float> %i.xw, <4 x float> splat (float 1.000000e+00)
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index781
  store <4 x float> %i.xx, ptr %i.xy, align 16
  %index.next784 = add nuw i64 %index781, 4       ; 2 uses
  %i.xz = icmp eq i64 %index.next784, %n.vec779
  br i1 %i.xz, label %middle.block785, label %vector.body780, !llvm.loop !400

middle.block785:                                  ; preds = %vector.body780
  %cmp.n786 = icmp eq i64 %.0214, %n.vec779
  br i1 %cmp.n786, label %.preheader32.i428, label %scalar.ph775.preheader

scalar.ph775.preheader:                           ; preds = %.lr.ph.i423, %middle.block785
  %.02933.i425.ph = phi i64 [ 0, %.lr.ph.i423 ], [ %n.vec779, %middle.block785 ]
  br label %scalar.ph775

.preheader32.i428:                                ; preds = %scalar.ph775, %middle.block785
  %.not38.i429 = icmp eq i64 %2, 0
  br i1 %.not38.i429, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit437, label %.preheader.preheader.i430

.preheader.preheader.i430:                        ; preds = %.preheader32.i428
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 4568 ; 3 uses
  %xtraiter829 = and i64 %.0214, 1
  %i.yb = icmp eq i64 %.0214, 1
  %unroll_iter = and i64 %.0214, -2
  %lcmp.mod830.not = icmp eq i64 %xtraiter829, 0
  %lcmp.mod831 = trunc i64 %.0214 to i1
  br label %.preheader.i431

scalar.ph775:                                     ; preds = %scalar.ph775.preheader, %scalar.ph775
  %.02933.i425 = phi i64 [ %i.yk, %scalar.ph775 ], [ %.02933.i425.ph, %scalar.ph775.preheader ] ; 4 uses
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.02933.i425
  %i.yd = load float, ptr %i.yc, align 4
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.02933.i425
  %i.yf = load float, ptr %i.ye, align 4
  %i.yg = fsub float %i.yd, %i.yf                 ; 2 uses
  %i.yh = fcmp ogt float %i.yg, 0.000000e+00
  %i.yi = fdiv float %i.yg, %i.xr
  %.sink.i426 = select i1 %i.yh, float %i.yi, float 1.000000e+00
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.02933.i425
  store float %.sink.i426, ptr %i.yj, align 4
  %i.yk = add nuw i64 %.02933.i425, 1             ; 2 uses
  %exitcond.not.i427 = icmp eq i64 %i.yk, %.0214
  br i1 %exitcond.not.i427, label %.preheader32.i428, label %scalar.ph775, !llvm.loop !401

.preheader.i431:                                  ; preds = %._crit_edge.i435, %.preheader.preheader.i430
  %.02836.i432 = phi i64 [ %i.yx, %._crit_edge.i435 ], [ 0, %.preheader.preheader.i430 ] ; 2 uses
  %i.yl = mul i64 %.02836.i432, %4                ; 3 uses
  br i1 %i.yb, label %.epil.preheader, label %.preheader.i431.new

._crit_edge.i435.unr-lcssa:                       ; preds = %.preheader.i431.new
  br i1 %lcmp.mod830.not, label %._crit_edge.i435, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i435.unr-lcssa, %.preheader.i431
  %.034.i433.epil.init = phi i64 [ 0, %.preheader.i431 ], [ %i.zv, %._crit_edge.i435.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod831)
  %i.ym = load ptr, ptr %i.ya, align 8
  %i.yn = add i64 %.034.i433.epil.init, %i.yl     ; 2 uses
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.ym, i64 %i.yn
  %i.yp = load i64, ptr %i.yo, align 8
  %i.yq = sitofp i64 %i.yp to float
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.034.i433.epil.init
  %i.ys = load float, ptr %i.yr, align 4
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.034.i433.epil.init
  %i.yu = load float, ptr %i.yt, align 4
  %i.yv = call float @llvm.fmuladd.f32(float %i.yq, float %i.ys, float %i.yu)
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.yn
  store float %i.yv, ptr %i.yw, align 4
  br label %._crit_edge.i435

._crit_edge.i435:                                 ; preds = %._crit_edge.i435.unr-lcssa, %.epil.preheader
  %i.yx = add nuw i64 %.02836.i432, 1             ; 2 uses
  %exitcond41.not.i436 = icmp eq i64 %i.yx, %2
  br i1 %exitcond41.not.i436, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit437, label %.preheader.i431, !llvm.loop !397

.preheader.i431.new:                              ; preds = %.preheader.i431, %.preheader.i431.new
  %.034.i433 = phi i64 [ %i.zv, %.preheader.i431.new ], [ 0, %.preheader.i431 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i431.new ], [ 0, %.preheader.i431 ]
  %i.yy = load ptr, ptr %i.ya, align 8
  %i.yz = add i64 %.034.i433, %i.yl               ; 2 uses
  %i.za = getelementptr inbounds nuw [8 x i8], ptr %i.yy, i64 %i.yz
  %i.zb = load i64, ptr %i.za, align 8
  %i.zc = sitofp i64 %i.zb to float
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.034.i433
  %i.ze = load float, ptr %i.zd, align 8
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.034.i433
  %i.zg = load float, ptr %i.zf, align 4
  %i.zh = call float @llvm.fmuladd.f32(float %i.zc, float %i.ze, float %i.zg)
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.yz
  store float %i.zh, ptr %i.zi, align 4
  %i.zj = or disjoint i64 %.034.i433, 1           ; 3 uses
  %i.zk = load ptr, ptr %i.ya, align 8
  %i.zl = add i64 %i.zj, %i.yl                    ; 2 uses
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %i.zl
  %i.zn = load i64, ptr %i.zm, align 8
  %i.zo = sitofp i64 %i.zn to float
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.zj
  %i.zq = load float, ptr %i.zp, align 4
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.zj
  %i.zs = load float, ptr %i.zr, align 4
  %i.zt = call float @llvm.fmuladd.f32(float %i.zo, float %i.zq, float %i.zs)
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zl
  store float %i.zt, ptr %i.zu, align 4
  %i.zv = add nuw i64 %.034.i433, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i435.unr-lcssa, label %.preheader.i431.new, !llvm.loop !398

_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit437: ; preds = %._crit_edge.i435, %bb.cs, %.preheader32.i428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.ct

bb.ct:                                            ; preds = %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit437, %._crit_edge604
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %bb.cv

.loopexit.split-lp509:                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit500, %.loopexit.split-lp501.loopexit.split-lp, %.loopexit.split-lp501.loopexit, %.loopexit508, %.loopexit.split-lp509.loopexit.split-lp, %.loopexit.split-lp509.loopexit, %bb.cb, %bb.cr, %bb.an, %bb.ad, %bb.x
  %.pn284 = phi { ptr, i32 } [ %i.dd, %bb.ad ], [ %.pn, %bb.an ], [ %i.xo, %bb.cr ], [ %i.br, %bb.x ], [ %i.pc, %bb.cb ], [ %lpad.loopexit.split-lp514, %.loopexit.split-lp509.loopexit.split-lp ], [ %lpad.loopexit.split-lp506, %.loopexit.split-lp501.loopexit.split-lp ], [ %lpad.loopexit510, %.loopexit508 ], [ %lpad.loopexit513, %.loopexit.split-lp509.loopexit ], [ %lpad.loopexit502, %.loopexit500 ], [ %lpad.loopexit505, %.loopexit.split-lp501.loopexit ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit497, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp498, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %16) #30
  br label %bb.cu

bb.cu:                                            ; preds = %.loopexit.split-lp509, %bb.w
  %.pn284.pn = phi { ptr, i32 } [ %.pn284, %.loopexit.split-lp509 ], [ %i.bq, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %.loopexit.split-lp526

bb.cv:                                            ; preds = %bb.n, %bb.f, %bb.ct
  %.0213 = phi i32 [ 5, %bb.f ], [ 0, %bb.ct ], [ 5, %bb.n ]
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @_ZN5o3dgc16Arithmetic_CodecD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  ret i32 %.0213

.loopexit.split-lp526:                            ; preds = %.loopexit525, %.loopexit.split-lp526.loopexit.split-lp.loopexit, %.loopexit.split-lp526.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp526.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp526.loopexit, %bb.cu, %bb.j
  %.pn284.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %.pn284.pn, %bb.cu ], [ %lpad.loopexit527, %.loopexit525 ], [ %lpad.loopexit530, %.loopexit.split-lp526.loopexit ], [ %lpad.loopexit533, %.loopexit.split-lp526.loopexit.split-lp.loopexit ], [ %lpad.loopexit537, %.loopexit.split-lp526.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp538, %.loopexit.split-lp526.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %15) #30
  br label %bb.cw

bb.cw:                                            ; preds = %.loopexit.split-lp526, %bb.i
  %.pn284.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn284.pn.pn.pn.pn, %.loopexit.split-lp526 ], [ %i.z, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.h
  %.pn284.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn284.pn.pn.pn.pn.pn, %bb.cw ], [ %i.y, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.g
  %.pn284.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn284.pn.pn.pn.pn.pn.pn, %bb.cx ], [ %i.x, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @_ZN5o3dgc16Arithmetic_CodecD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
end_hunk_0
