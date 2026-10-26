Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512?download=true
inline.NumInlined: 389
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 154
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 372
begin_hunk_0_@_ZN4ncnnL23convolution_im2col_gemmERKNS_3MatERS0_S2_S2_iiiiiiiRKNS_6OptionE.omp_outlined.6:bb.a
  %i.bsw = insertelement <4 x float> poison, float %i.bsv, i64 0
  %i.bsx = shufflevector <4 x float> %i.bsw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bsy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bsu, <4 x float> nofpclass(nan inf) %i.bsx, <4 x float> nofpclass(nan inf) %.16241236.i.epil) ; 2 uses
  %i.bsz = getelementptr inbounds nuw i8, ptr %.022811238.i.epil, i64 16
  %i.bta = getelementptr inbounds nuw i8, ptr %.923871237.i.epil, i64 4
  %epil.iter1213.next = add i32 %epil.iter1213, 1 ; 2 uses
  %epil.iter1213.cmp.not = icmp eq i32 %epil.iter1213.next, %xtraiter1212
  br i1 %epil.iter1213.cmp.not, label %._crit_edge1242.loopexit.i, label %.lr.ph1241.i.epil, !llvm.loop !1333

._crit_edge1242.loopexit.i:                       ; preds = %.lr.ph1241.i.epil, %._crit_edge1242.loopexit.i.unr-lcssa
  %.lcssa1092 = phi <4 x float> [ %i.bsr, %._crit_edge1242.loopexit.i.unr-lcssa ], [ %i.bsy, %.lr.ph1241.i.epil ]
  %i.btb = getelementptr i8, ptr %.823861246.i, i64 %i.aku
  %scevgep1679.i = getelementptr i8, ptr %i.btb, i64 4
  br label %._crit_edge1242.i

._crit_edge1242.i:                                ; preds = %._crit_edge1242.loopexit.i, %bb.eu
  %.1624.lcssa.i = phi <4 x float> [ %.0623.i, %bb.eu ], [ %.lcssa1092, %._crit_edge1242.loopexit.i ] ; 6 uses
  %.92387.lcssa.i = phi ptr [ %.823861246.i, %bb.eu ], [ %scevgep1679.i, %._crit_edge1242.loopexit.i ]
  br i1 %.not179, label %bb.ex, label %bb.ev

bb.ev:                                            ; preds = %._crit_edge1242.i
  switch i32 %i.co, label %bb.ey [
    i32 4, label %.thread809.i
    i32 1, label %bb.ew
  ]

.thread809.i:                                     ; preds = %bb.ev
  store <4 x float> %.1624.lcssa.i, ptr %.1224001245.i, align 1, !tbaa !85
  %i.btc = getelementptr inbounds nuw i8, ptr %.1224001245.i, i64 16
  br label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  %.sroa.0.0.vec.extract.i = extractelement <4 x float> %.1624.lcssa.i, i64 0
  store float %.sroa.0.0.vec.extract.i, ptr %.1224001245.i, align 4, !tbaa !41
  %.sroa.0.4.vec.extract.i = extractelement <4 x float> %.1624.lcssa.i, i64 1
  %i.btd = getelementptr inbounds i8, ptr %.1224001245.i, i64 %i.akh
  store float %.sroa.0.4.vec.extract.i, ptr %i.btd, align 4, !tbaa !41
  %.sroa.0.8.vec.extract.i = extractelement <4 x float> %.1624.lcssa.i, i64 2
  %i.bte = getelementptr inbounds [4 x i8], ptr %.1224001245.i, i64 %i.akj
  store float %.sroa.0.8.vec.extract.i, ptr %i.bte, align 4, !tbaa !41
  %.sroa.0.12.vec.extract.i = extractelement <4 x float> %.1624.lcssa.i, i64 3
  %i.btf = getelementptr inbounds i8, ptr %.1224001245.i, i64 %i.akk
  store float %.sroa.0.12.vec.extract.i, ptr %i.btf, align 4, !tbaa !41
  %i.btg = getelementptr inbounds nuw i8, ptr %.1224001245.i, i64 4
  br label %bb.ey

bb.ex:                                            ; preds = %._crit_edge1242.i
  store <4 x float> %.1624.lcssa.i, ptr %.171248.i, align 16, !tbaa !85
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew, %.thread809.i, %bb.ev
  %.142402.i = phi ptr [ %i.btg, %bb.ew ], [ %.1224001245.i, %bb.ev ], [ %.1224001245.i, %bb.ex ], [ %i.btc, %.thread809.i ]
  %i.bth = getelementptr inbounds nuw i8, ptr %.171248.i, i64 16 ; 2 uses
  %i.bti = add nuw nsw i32 %.423771247.i, 1       ; 2 uses
  %exitcond1681.not.i = icmp eq i32 %i.bti, %.sroa.speculated145
  br i1 %exitcond1681.not.i, label %._crit_edge1250.i, label %bb.eq, !llvm.loop !1334

._crit_edge1250.i:                                ; preds = %bb.ey, %.preheader840.i
  %.17.lcssa.i = phi ptr [ %.16.lcssa.i, %.preheader840.i ], [ %i.bth, %bb.ey ] ; 2 uses
  %i.btj = getelementptr inbounds [4 x i8], ptr %.221731255.i, i64 %i.akn ; 2 uses
  %indvars.iv.next1683.i = add nuw nsw i64 %indvars.iv1682.i, 4 ; 3 uses
  %i.btk = icmp slt i64 %indvars.iv.next1683.i, %invariant.op1890.i
  br i1 %i.btk, label %bb.dd, label %.preheader839.loopexit.i, !llvm.loop !1335

.preheader834.loopexit.i:                         ; preds = %._crit_edge1366.i
  %i.btl = trunc nsw i64 %indvars.iv.next1697.i to i32
  br label %.preheader834.i

.preheader834.i:                                  ; preds = %.preheader834.loopexit.i, %.preheader839.i
  %.32201.lcssa.i = phi i32 [ %.22200.lcssa.i, %.preheader839.i ], [ %i.btl, %.preheader834.loopexit.i ] ; 2 uses
  %.18.lcssa.i = phi ptr [ %.12.lcssa.i, %.preheader839.i ], [ %.23.lcssa.i, %.preheader834.loopexit.i ]
  %.62184.lcssa.i = phi ptr [ %.42182.lcssa.i, %.preheader839.i ], [ %.72185.i, %.preheader834.loopexit.i ]
  %.32174.lcssa.i = phi ptr [ %.22173.lcssa.i, %.preheader839.i ], [ %i.cis, %.preheader834.loopexit.i ]
  %i.btm = icmp slt i32 %.32201.lcssa.i, %.sroa.speculated149
  br i1 %i.btm, label %.lr.ph1474.i, label %_ZN4ncnn3MatD2Ev.exit46

.lr.ph1474.i:                                     ; preds = %.preheader834.i
  %i.btn = icmp ne i32 %.0317, 0                  ; 6 uses
  %i.bto = icmp sgt i32 %.sroa.speculated, 0      ; 5 uses
  %i.btp = sext i32 %.sroa.speculated to i64
  %i.btq = add i32 %.sroa.speculated, -1
  %i.btr = zext i32 %i.btq to i64                 ; 5 uses
  %i.bts = shl nuw nsw i64 %i.btr, 6
  %i.btt = shl nuw nsw i64 %i.btr, 5
  %i.btu = shl nuw nsw i64 %i.btr, 4
  %i.btv = shl nuw nsw i64 %i.btr, 3
  %i.btw = shl nuw nsw i64 %i.btr, 2
  %i.btx = sext i32 %.32201.lcssa.i to i64
  %sext1752.i = shl i64 %i.cp, 32
  %i.bty = ashr exact i64 %sext1752.i, 32
  %i.btz = zext i32 %.sroa.speculated to i64      ; 10 uses
  %i.bua = add i32 %.sroa.speculated, -1          ; 3 uses
  %xtraiter1245 = and i32 %.sroa.speculated, 3    ; 3 uses
  %i.bub = icmp ult i32 %i.bua, 3
  %unroll_iter1250 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod1247.not = icmp eq i32 %xtraiter1245, 0
  %lcmp.mod1249 = icmp ne i32 %xtraiter1245, 0
  %xtraiter1252 = and i32 %.sroa.speculated, 1
  %i.buc = icmp eq i32 %i.bua, 0
  %unroll_iter1258 = and i32 %.sroa.speculated, 2147483646
  %lcmp.mod1254.not = icmp eq i32 %xtraiter1252, 0
  %lcmp.mod1257 = trunc i32 %.sroa.speculated to i1
  %xtraiter1260 = and i32 %.sroa.speculated, 3    ; 3 uses
  %i.bud = icmp ult i32 %i.bua, 3
  %unroll_iter1265 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod1262.not = icmp eq i32 %xtraiter1260, 0
  %lcmp.mod1264 = icmp ne i32 %xtraiter1260, 0
  %min.iters.check781 = icmp ult i32 %.sroa.speculated, 8
  %min.iters.check783 = icmp ult i32 %.sroa.speculated, 64
  %i.bue = and i64 %i.btz, 56
  %n.vec785 = and i64 %i.btz, 2147483584          ; 6 uses
  %i.buf = trunc nuw nsw i64 %n.vec785 to i32
  %i.bug = shl nuw nsw i64 %n.vec785, 2
  %i.buh = shl nuw nsw i64 %n.vec785, 3
  %cmp.n823 = icmp eq i64 %n.vec785, %i.btz
  %min.epilog.iters.check827 = icmp eq i64 %i.bue, 0
  %n.vec832 = and i64 %i.btz, 2147483640          ; 5 uses
  %i.bui = trunc nuw nsw i64 %n.vec832 to i32
  %i.buj = shl nuw nsw i64 %n.vec832, 2
  %i.buk = shl nuw nsw i64 %n.vec832, 3
  %cmp.n845 = icmp eq i64 %n.vec832, %i.btz
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  %min.iters.check755 = icmp ult i32 %.sroa.speculated, 64
  %i.bul = and i64 %i.btz, 56
  %n.vec = and i64 %i.btz, 2147483584             ; 5 uses
  %i.bum = trunc nuw nsw i64 %n.vec to i32
  %i.bun = shl nuw nsw i64 %n.vec, 2              ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.btz
  %min.epilog.iters.check = icmp eq i64 %i.bul, 0
  %n.vec769 = and i64 %i.btz, 2147483640          ; 4 uses
  %i.buo = trunc nuw nsw i64 %n.vec769 to i32
  %i.bup = shl nuw nsw i64 %n.vec769, 2           ; 2 uses
  %cmp.n777 = icmp eq i64 %n.vec769, %i.btz
  br label %bb.gq

bb.ez:                                            ; preds = %._crit_edge1366.i, %.lr.ph1372.i
  %indvars.iv1696.i = phi i64 [ %i.bfe, %.lr.ph1372.i ], [ %indvars.iv.next1697.i, %._crit_edge1366.i ] ; 3 uses
  %.321741371.i = phi ptr [ %.22173.lcssa.i, %.lr.ph1372.i ], [ %i.cis, %._crit_edge1366.i ] ; 21 uses
  %.621841370.i = phi ptr [ %.42182.lcssa.i, %.lr.ph1372.i ], [ %.72185.i, %._crit_edge1366.i ]
  %.181369.i = phi ptr [ %.12.lcssa.i, %.lr.ph1372.i ], [ %.23.lcssa.i, %._crit_edge1366.i ] ; 2 uses
  %i.buq = load ptr, ptr %13, align 8, !tbaa !22
  %i.bur = add nsw i64 %indvars.iv1696.i, %i.ao
  %i.bus = mul nsw i64 %i.bur, %i.bff
  %i.but = getelementptr inbounds [4 x i8], ptr %i.buq, i64 %i.bus
  %i.buu = getelementptr inbounds [4 x i8], ptr %i.but, i64 %i.ba ; 2 uses
  %.not2414.i = icmp eq ptr %.621841370.i, null
  br i1 %.not2414.i, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.buv = load ptr, ptr %12, align 8, !tbaa !22
  %i.buw = getelementptr inbounds [4 x i8], ptr %i.buv, i64 %i.ao
  %i.bux = getelementptr inbounds nuw [4 x i8], ptr %i.buw, i64 %indvars.iv1696.i
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.72185.i = phi ptr [ %i.bux, %bb.fa ], [ null, %bb.ez ] ; 16 uses
  br i1 %i.ay, label %.lr.ph1277.i, label %.preheader838.i

.lr.ph1277.i:                                     ; preds = %bb.fb
  %.not2423.i = icmp eq ptr %.72185.i, null
  %i.buy = getelementptr inbounds nuw i8, ptr %.72185.i, i64 4
  br label %bb.fc

.preheader838.i:                                  ; preds = %bb.fj, %bb.fb
  %.02270.lcssa.i = phi ptr [ %i.buu, %bb.fb ], [ %.12271.i, %bb.fj ] ; 2 uses
  %.02260.lcssa.i = phi ptr [ %i.cm, %bb.fb ], [ %.12261.lcssa.i, %bb.fj ] ; 2 uses
  %.02255.lcssa.i = phi i32 [ 0, %bb.fb ], [ %i.az, %bb.fj ] ; 3 uses
  %.19.lcssa.i = phi ptr [ %.181369.i, %bb.fb ], [ %i.bwz, %bb.fj ] ; 2 uses
  %i.buz = or disjoint i32 %.02255.lcssa.i, 7
  %i.bva = icmp slt i32 %i.buz, %.sroa.speculated145
  br i1 %i.bva, label %.lr.ph1301.i, label %.preheader837.i

.lr.ph1301.i:                                     ; preds = %.preheader838.i
  %.not2421.i = icmp eq ptr %.72185.i, null
  %i.bvb = getelementptr inbounds nuw i8, ptr %.72185.i, i64 4
  br label %bb.fk

bb.fc:                                            ; preds = %bb.fj, %.lr.ph1277.i
  %.191275.i = phi ptr [ %.181369.i, %.lr.ph1277.i ], [ %i.bwz, %bb.fj ] ; 5 uses
  %.022551274.i = phi i32 [ 0, %.lr.ph1277.i ], [ %i.bxa, %bb.fj ]
  %.022601273.i = phi ptr [ %i.cm, %.lr.ph1277.i ], [ %.12261.lcssa.i, %bb.fj ] ; 4 uses
  %.022701272.i = phi ptr [ %i.buu, %.lr.ph1277.i ], [ %.12271.i, %bb.fj ] ; 4 uses
  br i1 %i.ber, label %bb.fd, label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  br i1 %.not2423.i, label %bb.fg, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.bvc = load float, ptr %.72185.i, align 4, !tbaa !41
  %i.bvd = insertelement <16 x float> poison, float %i.bvc, i64 0
  %i.bve = shufflevector <16 x float> %i.bvd, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bvf = load float, ptr %i.buy, align 4, !tbaa !41
  %i.bvg = insertelement <16 x float> poison, float %i.bvf, i64 0
  %i.bvh = shufflevector <16 x float> %i.bvg, <16 x float> poison, <16 x i32> zeroinitializer
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fc
  %i.bvi = load <16 x float>, ptr %.191275.i, align 1, !tbaa !85 ; 2 uses
  %i.bvj = getelementptr inbounds nuw i8, ptr %.191275.i, i64 64
  %i.bvk = load <16 x float>, ptr %i.bvj, align 1, !tbaa !85 ; 2 uses
  %14 = shufflevector <16 x float> %i.bvi, <16 x float> %i.bvk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %15 = shufflevector <16 x float> %i.bvi, <16 x float> %i.bvk, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %16 = shufflevector <16 x float> %14, <16 x float> %15, <16 x i32> <i32 0, i32 2, i32 16, i32 18, i32 4, i32 6, i32 20, i32 22, i32 8, i32 10, i32 24, i32 26, i32 12, i32 14, i32 28, i32 30>
  %17 = shufflevector <16 x float> %14, <16 x float> %15, <16 x i32> <i32 1, i32 3, i32 17, i32 19, i32 5, i32 7, i32 21, i32 23, i32 9, i32 11, i32 25, i32 27, i32 13, i32 15, i32 29, i32 31>
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe, %bb.fd
  %.0612.i = phi nsz <16 x float> [ %16, %bb.ff ], [ %i.bve, %bb.fe ], [ zeroinitializer, %bb.fd ] ; 3 uses
  %.0610.i = phi nsz <16 x float> [ %17, %bb.ff ], [ %i.bvh, %bb.fe ], [ zeroinitializer, %bb.fd ] ; 3 uses
  br i1 %i.bes, label %.lr.ph1267.i.preheader, label %._crit_edge1268.i

.lr.ph1267.i.preheader:                           ; preds = %bb.fg
  br i1 %i.bfi, label %.lr.ph1267.i.epil.preheader, label %.lr.ph1267.i

.lr.ph1267.i:                                     ; preds = %.lr.ph1267.i.preheader, %.lr.ph1267.i
  %.022501264.i = phi ptr [ %i.bwh, %.lr.ph1267.i ], [ %.321741371.i, %.lr.ph1267.i.preheader ] ; 5 uses
  %.122611263.i = phi ptr [ %i.bwi, %.lr.ph1267.i ], [ %.022601273.i, %.lr.ph1267.i.preheader ] ; 3 uses
  %.16111262.i = phi <16 x float> [ %i.bwg, %.lr.ph1267.i ], [ %.0610.i, %.lr.ph1267.i.preheader ]
  %.16131261.i = phi <16 x float> [ %i.bwb, %.lr.ph1267.i ], [ %.0612.i, %.lr.ph1267.i.preheader ]
  %niter1226 = phi i32 [ %niter1226.next.1, %.lr.ph1267.i ], [ 0, %.lr.ph1267.i.preheader ]
  %i.bvl = load <16 x float>, ptr %.122611263.i, align 1, !tbaa !85 ; 2 uses
  %i.bvm = load float, ptr %.022501264.i, align 4, !tbaa !41
  %i.bvn = insertelement <16 x float> poison, float %i.bvm, i64 0
  %i.bvo = shufflevector <16 x float> %i.bvn, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bvp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bvo, <16 x float> nofpclass(nan inf) %i.bvl, <16 x float> nofpclass(nan inf) %.16131261.i)
  %i.bvq = getelementptr inbounds nuw i8, ptr %.022501264.i, i64 4
  %i.bvr = load float, ptr %i.bvq, align 4, !tbaa !41
  %i.bvs = insertelement <16 x float> poison, float %i.bvr, i64 0
  %i.bvt = shufflevector <16 x float> %i.bvs, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bvu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bvt, <16 x float> nofpclass(nan inf) %i.bvl, <16 x float> nofpclass(nan inf) %.16111262.i)
  %i.bvv = getelementptr inbounds nuw i8, ptr %.022501264.i, i64 8
  %i.bvw = getelementptr inbounds nuw i8, ptr %.122611263.i, i64 64
  %i.bvx = load <16 x float>, ptr %i.bvw, align 1, !tbaa !85 ; 2 uses
  %i.bvy = load float, ptr %i.bvv, align 4, !tbaa !41
  %i.bvz = insertelement <16 x float> poison, float %i.bvy, i64 0
  %i.bwa = shufflevector <16 x float> %i.bvz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bwb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bwa, <16 x float> nofpclass(nan inf) %i.bvx, <16 x float> nofpclass(nan inf) %i.bvp) ; 3 uses
  %i.bwc = getelementptr inbounds nuw i8, ptr %.022501264.i, i64 12
  %i.bwd = load float, ptr %i.bwc, align 4, !tbaa !41
  %i.bwe = insertelement <16 x float> poison, float %i.bwd, i64 0
  %i.bwf = shufflevector <16 x float> %i.bwe, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bwg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bwf, <16 x float> nofpclass(nan inf) %i.bvx, <16 x float> nofpclass(nan inf) %i.bvu) ; 3 uses
  %i.bwh = getelementptr inbounds nuw i8, ptr %.022501264.i, i64 16 ; 2 uses
  %i.bwi = getelementptr inbounds nuw i8, ptr %.122611263.i, i64 128 ; 2 uses
  %niter1226.next.1 = add i32 %niter1226, 2       ; 2 uses
  %niter1226.ncmp.1 = icmp eq i32 %niter1226.next.1, %unroll_iter1225
  br i1 %niter1226.ncmp.1, label %._crit_edge1268.loopexit.i.unr-lcssa, label %.lr.ph1267.i, !llvm.loop !1336

._crit_edge1268.loopexit.i.unr-lcssa:             ; preds = %.lr.ph1267.i
  br i1 %lcmp.mod1221.not, label %._crit_edge1268.loopexit.i, label %.lr.ph1267.i.epil.preheader

.lr.ph1267.i.epil.preheader:                      ; preds = %._crit_edge1268.loopexit.i.unr-lcssa, %.lr.ph1267.i.preheader
  %.022501264.i.epil.init = phi ptr [ %.321741371.i, %.lr.ph1267.i.preheader ], [ %i.bwh, %._crit_edge1268.loopexit.i.unr-lcssa ] ; 2 uses
  %.122611263.i.epil.init = phi ptr [ %.022601273.i, %.lr.ph1267.i.preheader ], [ %i.bwi, %._crit_edge1268.loopexit.i.unr-lcssa ]
  %.16111262.i.epil.init = phi <16 x float> [ %.0610.i, %.lr.ph1267.i.preheader ], [ %i.bwg, %._crit_edge1268.loopexit.i.unr-lcssa ]
  %.16131261.i.epil.init = phi <16 x float> [ %.0612.i, %.lr.ph1267.i.preheader ], [ %i.bwb, %._crit_edge1268.loopexit.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1224)
  %i.bwj = load <16 x float>, ptr %.122611263.i.epil.init, align 1, !tbaa !85 ; 2 uses
  %i.bwk = load float, ptr %.022501264.i.epil.init, align 4, !tbaa !41
  %i.bwl = insertelement <16 x float> poison, float %i.bwk, i64 0
  %i.bwm = shufflevector <16 x float> %i.bwl, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bwn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bwm, <16 x float> nofpclass(nan inf) %i.bwj, <16 x float> nofpclass(nan inf) %.16131261.i.epil.init)
  %i.bwo = getelementptr inbounds nuw i8, ptr %.022501264.i.epil.init, i64 4
  %i.bwp = load float, ptr %i.bwo, align 4, !tbaa !41
  %i.bwq = insertelement <16 x float> poison, float %i.bwp, i64 0
  %i.bwr = shufflevector <16 x float> %i.bwq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bws = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bwr, <16 x float> nofpclass(nan inf) %i.bwj, <16 x float> nofpclass(nan inf) %.16111262.i.epil.init)
  br label %._crit_edge1268.loopexit.i

._crit_edge1268.loopexit.i:                       ; preds = %._crit_edge1268.loopexit.i.unr-lcssa, %.lr.ph1267.i.epil.preheader
  %.lcssa1096 = phi <16 x float> [ %i.bwb, %._crit_edge1268.loopexit.i.unr-lcssa ], [ %i.bwn, %.lr.ph1267.i.epil.preheader ]
  %.lcssa1095 = phi <16 x float> [ %i.bwg, %._crit_edge1268.loopexit.i.unr-lcssa ], [ %i.bws, %.lr.ph1267.i.epil.preheader ]
  %i.bwt = getelementptr i8, ptr %.022601273.i, i64 %i.bez
  %scevgep1685.i = getelementptr i8, ptr %i.bwt, i64 64
  br label %._crit_edge1268.i

._crit_edge1268.i:                                ; preds = %._crit_edge1268.loopexit.i, %bb.fg
  %.1613.lcssa.i = phi <16 x float> [ %.0612.i, %bb.fg ], [ %.lcssa1096, %._crit_edge1268.loopexit.i ] ; 3 uses
  %.1611.lcssa.i = phi <16 x float> [ %.0610.i, %bb.fg ], [ %.lcssa1095, %._crit_edge1268.loopexit.i ] ; 3 uses
  %.12261.lcssa.i = phi ptr [ %.022601273.i, %bb.fg ], [ %scevgep1685.i, %._crit_edge1268.loopexit.i ] ; 2 uses
  br i1 %.not179, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %._crit_edge1268.i
  store <16 x float> %.1613.lcssa.i, ptr %.022701272.i, align 1, !tbaa !85
  %i.bwu = getelementptr inbounds i8, ptr %.022701272.i, i64 %i.bet
  store <16 x float> %.1611.lcssa.i, ptr %i.bwu, align 1, !tbaa !85
  %i.bwv = getelementptr inbounds nuw i8, ptr %.022701272.i, i64 64
  br label %bb.fj

bb.fi:                                            ; preds = %._crit_edge1268.i
  %i.bww = shufflevector <16 x float> %.1613.lcssa.i, <16 x float> %.1611.lcssa.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bwx = shufflevector <16 x float> %.1613.lcssa.i, <16 x float> %.1611.lcssa.i, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x float> %i.bww, ptr %.191275.i, align 1, !tbaa !85
  %i.bwy = getelementptr inbounds nuw i8, ptr %.191275.i, i64 64
  store <16 x float> %i.bwx, ptr %i.bwy, align 1, !tbaa !85
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.12271.i = phi ptr [ %i.bwv, %bb.fh ], [ %.022701272.i, %bb.fi ] ; 2 uses
  %i.bwz = getelementptr inbounds nuw i8, ptr %.191275.i, i64 128 ; 2 uses
  %i.bxa = add nuw nsw i32 %.022551274.i, 16      ; 2 uses
  %i.bxb = or disjoint i32 %i.bxa, 15
  %i.bxc = icmp slt i32 %i.bxb, %.sroa.speculated145
  br i1 %i.bxc, label %bb.fc, label %.preheader838.i, !llvm.loop !1337

.preheader837.i:                                  ; preds = %bb.fr, %.preheader838.i
  %.22272.lcssa.i = phi ptr [ %.02270.lcssa.i, %.preheader838.i ], [ %.32273.i, %bb.fr ] ; 2 uses
  %.22262.lcssa.i = phi ptr [ %.02260.lcssa.i, %.preheader838.i ], [ %.32263.lcssa.i, %bb.fr ] ; 2 uses
  %.12256.lcssa.i = phi i32 [ %.02255.lcssa.i, %.preheader838.i ], [ %i.cae, %bb.fr ] ; 3 uses
  %.20.lcssa.i = phi ptr [ %.19.lcssa.i, %.preheader838.i ], [ %i.cad, %bb.fr ] ; 2 uses
  %i.bxd = or disjoint i32 %.12256.lcssa.i, 3
  %i.bxe = icmp slt i32 %i.bxd, %.sroa.speculated145
  br i1 %i.bxe, label %.lr.ph1321.i, label %.preheader836.i

.lr.ph1321.i:                                     ; preds = %.preheader837.i
  %.not2419.i = icmp eq ptr %.72185.i, null
  %i.bxf = getelementptr inbounds nuw i8, ptr %.72185.i, i64 4
  br label %bb.fs

bb.fk:                                            ; preds = %bb.fr, %.lr.ph1301.i
  %.201300.i = phi ptr [ %.19.lcssa.i, %.lr.ph1301.i ], [ %i.cad, %bb.fr ] ; 9 uses
  %.122561299.i = phi i32 [ %.02255.lcssa.i, %.lr.ph1301.i ], [ %i.cae, %bb.fr ]
  %.222621298.i = phi ptr [ %.02260.lcssa.i, %.lr.ph1301.i ], [ %.32263.lcssa.i, %bb.fr ] ; 4 uses
  %.222721297.i = phi ptr [ %.02270.lcssa.i, %.lr.ph1301.i ], [ %.32273.i, %bb.fr ] ; 5 uses
  br i1 %i.ber, label %bb.fl, label %bb.fn

bb.fl:                                            ; preds = %bb.fk
  br i1 %.not2421.i, label %bb.fo, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.bxg = load float, ptr %.72185.i, align 4, !tbaa !41
  %i.bxh = insertelement <4 x float> poison, float %i.bxg, i64 0
  %i.bxi = shufflevector <4 x float> %i.bxh, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bxj = load float, ptr %i.bvb, align 4, !tbaa !41
  %i.bxk = insertelement <4 x float> poison, float %i.bxj, i64 0
  %i.bxl = shufflevector <4 x float> %i.bxk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.fo

bb.fn:                                            ; preds = %bb.fk
  %i.bxm = load <4 x float>, ptr %.201300.i, align 1, !tbaa !85 ; 2 uses
  %i.bxn = getelementptr inbounds nuw i8, ptr %.201300.i, i64 16
  %i.bxo = load <4 x float>, ptr %i.bxn, align 1, !tbaa !85 ; 2 uses
  %i.bxp = getelementptr inbounds nuw i8, ptr %.201300.i, i64 32
  %i.bxq = load <4 x float>, ptr %i.bxp, align 1, !tbaa !85 ; 2 uses
  %i.bxr = getelementptr inbounds nuw i8, ptr %.201300.i, i64 48
  %i.bxs = load <4 x float>, ptr %i.bxr, align 1, !tbaa !85 ; 2 uses
  %i.bxt = shufflevector <4 x float> %i.bxm, <4 x float> %i.bxo, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bxu = shufflevector <4 x float> %i.bxq, <4 x float> %i.bxs, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bxv = shufflevector <4 x float> %i.bxm, <4 x float> %i.bxo, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bxw = shufflevector <4 x float> %i.bxq, <4 x float> %i.bxs, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm, %bb.fl
  %.0608.i = phi nsz <4 x float> [ %i.bxt, %bb.fn ], [ %i.bxi, %bb.fm ], [ zeroinitializer, %bb.fl ] ; 3 uses
  %.0606.i = phi nsz <4 x float> [ %i.bxu, %bb.fn ], [ %i.bxi, %bb.fm ], [ zeroinitializer, %bb.fl ] ; 3 uses
  %.0604.i = phi nsz <4 x float> [ %i.bxv, %bb.fn ], [ %i.bxl, %bb.fm ], [ zeroinitializer, %bb.fl ] ; 3 uses
  %.0602.i = phi nsz <4 x float> [ %i.bxw, %bb.fn ], [ %i.bxl, %bb.fm ], [ zeroinitializer, %bb.fl ] ; 3 uses
  br i1 %i.bes, label %.lr.ph1290.i.preheader, label %._crit_edge1291.i

.lr.ph1290.i.preheader:                           ; preds = %bb.fo
  br i1 %i.bfj, label %.lr.ph1290.i.epil.preheader, label %.lr.ph1290.i

.lr.ph1290.i:                                     ; preds = %.lr.ph1290.i.preheader, %.lr.ph1290.i
  %.022391287.i = phi ptr [ %i.bzb, %.lr.ph1290.i ], [ %.321741371.i, %.lr.ph1290.i.preheader ] ; 5 uses
  %.322631286.i = phi ptr [ %i.bzc, %.lr.ph1290.i ], [ %.222621298.i, %.lr.ph1290.i.preheader ] ; 5 uses
  %.16031285.i = phi <4 x float> [ %i.bza, %.lr.ph1290.i ], [ %.0602.i, %.lr.ph1290.i.preheader ]
  %.16051284.i = phi <4 x float> [ %i.byz, %.lr.ph1290.i ], [ %.0604.i, %.lr.ph1290.i.preheader ]
  %.16071283.i = phi <4 x float> [ %i.byu, %.lr.ph1290.i ], [ %.0606.i, %.lr.ph1290.i.preheader ]
  %.16091282.i = phi <4 x float> [ %i.byt, %.lr.ph1290.i ], [ %.0608.i, %.lr.ph1290.i.preheader ]
  %niter1236 = phi i32 [ %niter1236.next.1, %.lr.ph1290.i ], [ 0, %.lr.ph1290.i.preheader ]
  %i.bxx = load <4 x float>, ptr %.322631286.i, align 1, !tbaa !85 ; 2 uses
  %i.bxy = getelementptr inbounds nuw i8, ptr %.322631286.i, i64 16
  %i.bxz = load <4 x float>, ptr %i.bxy, align 1, !tbaa !85 ; 2 uses
  %i.bya = load float, ptr %.022391287.i, align 4, !tbaa !41
  %i.byb = insertelement <4 x float> poison, float %i.bya, i64 0
  %i.byc = shufflevector <4 x float> %i.byb, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.byd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.byc, <4 x float> nofpclass(nan inf) %i.bxx, <4 x float> nofpclass(nan inf) %.16091282.i)
  %i.bye = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.byc, <4 x float> nofpclass(nan inf) %i.bxz, <4 x float> nofpclass(nan inf) %.16071283.i)
  %i.byf = getelementptr inbounds nuw i8, ptr %.022391287.i, i64 4
  %i.byg = load float, ptr %i.byf, align 4, !tbaa !41
  %i.byh = insertelement <4 x float> poison, float %i.byg, i64 0
  %i.byi = shufflevector <4 x float> %i.byh, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.byj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.byi, <4 x float> nofpclass(nan inf) %i.bxx, <4 x float> nofpclass(nan inf) %.16051284.i)
  %i.byk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.byi, <4 x float> nofpclass(nan inf) %i.bxz, <4 x float> nofpclass(nan inf) %.16031285.i)
  %i.byl = getelementptr inbounds nuw i8, ptr %.022391287.i, i64 8
  %i.bym = getelementptr inbounds nuw i8, ptr %.322631286.i, i64 32
  %i.byn = load <4 x float>, ptr %i.bym, align 1, !tbaa !85 ; 2 uses
  %i.byo = getelementptr inbounds nuw i8, ptr %.322631286.i, i64 48
  %i.byp = load <4 x float>, ptr %i.byo, align 1, !tbaa !85 ; 2 uses
  %i.byq = load float, ptr %i.byl, align 4, !tbaa !41
  %i.byr = insertelement <4 x float> poison, float %i.byq, i64 0
  %i.bys = shufflevector <4 x float> %i.byr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.byt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bys, <4 x float> nofpclass(nan inf) %i.byn, <4 x float> nofpclass(nan inf) %i.byd) ; 3 uses
  %i.byu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bys, <4 x float> nofpclass(nan inf) %i.byp, <4 x float> nofpclass(nan inf) %i.bye) ; 3 uses
  %i.byv = getelementptr inbounds nuw i8, ptr %.022391287.i, i64 12
  %i.byw = load float, ptr %i.byv, align 4, !tbaa !41
  %i.byx = insertelement <4 x float> poison, float %i.byw, i64 0
  %i.byy = shufflevector <4 x float> %i.byx, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.byz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.byy, <4 x float> nofpclass(nan inf) %i.byn, <4 x float> nofpclass(nan inf) %i.byj) ; 3 uses
  %i.bza = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.byy, <4 x float> nofpclass(nan inf) %i.byp, <4 x float> nofpclass(nan inf) %i.byk) ; 3 uses
  %i.bzb = getelementptr inbounds nuw i8, ptr %.022391287.i, i64 16 ; 2 uses
  %i.bzc = getelementptr inbounds nuw i8, ptr %.322631286.i, i64 64 ; 2 uses
  %niter1236.next.1 = add i32 %niter1236, 2       ; 2 uses
  %niter1236.ncmp.1 = icmp eq i32 %niter1236.next.1, %unroll_iter1235
  br i1 %niter1236.ncmp.1, label %._crit_edge1291.loopexit.i.unr-lcssa, label %.lr.ph1290.i, !llvm.loop !1338

._crit_edge1291.loopexit.i.unr-lcssa:             ; preds = %.lr.ph1290.i
  br i1 %lcmp.mod1229.not, label %._crit_edge1291.loopexit.i, label %.lr.ph1290.i.epil.preheader

end_hunk_0
begin_hunk_1_@_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined:bb.a
  store <16 x i16> %i.amz, ptr %i.amk, align 32, !tbaa !85
  store <16 x i16> %i.ana, ptr %i.aml, align 32, !tbaa !85
  store <16 x i16> %i.anc, ptr %i.amm, align 32, !tbaa !85
  %i.and = load i32, ptr %3, align 4, !tbaa !66
  %i.ane = mul nsw i32 %i.and, 96
  %i.anf = sext i32 %i.ane to i64                 ; 6 uses
  %i.ang = getelementptr inbounds [2 x i8], ptr %i.amh, i64 %i.anf ; 2 uses
  %i.anh = getelementptr inbounds [2 x i8], ptr %i.ami, i64 %i.anf ; 2 uses
  %i.ani = getelementptr inbounds [2 x i8], ptr %i.amj, i64 %i.anf ; 2 uses
  %i.anj = getelementptr inbounds [2 x i8], ptr %i.amk, i64 %i.anf ; 2 uses
  %i.ank = getelementptr inbounds [2 x i8], ptr %i.aml, i64 %i.anf ; 2 uses
  %i.anl = getelementptr inbounds [2 x i8], ptr %i.amm, i64 %i.anf ; 2 uses
  %i.anm = shl nsw <16 x i16> %i.mj, splat (i16 2) ; 2 uses
  %i.ann = sub nsw <16 x i16> %i.xn, %i.anm       ; 2 uses
  %i.ano = shl nsw <16 x i16> %i.ry, splat (i16 2)
  %i.anp = sub nsw <16 x i16> %i.adc, %i.ano      ; 2 uses
  %i.anq = sub nsw <16 x i16> %i.xn, %i.mj
  %i.anr = shl nsw <16 x i16> %i.anq, splat (i16 1) ; 2 uses
  %i.ans = sub nsw <16 x i16> %i.adc, %i.ry       ; 2 uses
  %i.ant = shl nsw <16 x i16> %i.gu, splat (i16 2)
  %.neg.4 = mul nsw <16 x i16> %i.ry, splat (i16 -5)
  %i.anu = add nsw <16 x i16> %.neg.4, %i.ant
  %i.anv = add nsw <16 x i16> %i.anu, %i.adc
  %i.anw = add nsw <16 x i16> %i.anp, %i.ann
  %i.anx = sub nsw <16 x i16> %i.anp, %i.ann
  %i.any = add nsw <16 x i16> %i.ans, %i.anr
  %i.anz = sub nsw <16 x i16> %i.ans, %i.anr
  %.neg245.4 = mul nsw <16 x i16> %i.xn, splat (i16 -5)
  %i.aoa = add nsw <16 x i16> %.neg245.4, %i.anm
  %i.aob = add nsw <16 x i16> %i.aoa, %i.air
  store <16 x i16> %i.anv, ptr %i.ang, align 32, !tbaa !85
  store <16 x i16> %i.anw, ptr %i.anh, align 32, !tbaa !85
  store <16 x i16> %i.anx, ptr %i.ani, align 32, !tbaa !85
  store <16 x i16> %i.any, ptr %i.anj, align 32, !tbaa !85
  store <16 x i16> %i.anz, ptr %i.ank, align 32, !tbaa !85
  store <16 x i16> %i.aob, ptr %i.anl, align 32, !tbaa !85
  %i.aoc = load i32, ptr %3, align 4, !tbaa !66
  %i.aod = mul nsw i32 %i.aoc, 96
  %i.aoe = sext i32 %i.aod to i64                 ; 6 uses
  %i.aof = getelementptr inbounds [2 x i8], ptr %i.ang, i64 %i.aoe
  %i.aog = getelementptr inbounds [2 x i8], ptr %i.anh, i64 %i.aoe
  %i.aoh = getelementptr inbounds [2 x i8], ptr %i.ani, i64 %i.aoe
  %i.aoi = getelementptr inbounds [2 x i8], ptr %i.anj, i64 %i.aoe
  %i.aoj = getelementptr inbounds [2 x i8], ptr %i.ank, i64 %i.aoe
  %i.aok = getelementptr inbounds [2 x i8], ptr %i.anl, i64 %i.aoe
  %i.aol = shl nsw <16 x i16> %i.ml, splat (i16 2) ; 2 uses
  %i.aom = sub nsw <16 x i16> %i.xp, %i.aol       ; 2 uses
  %i.aon = shl nsw <16 x i16> %i.sa, splat (i16 2)
  %i.aoo = sub nsw <16 x i16> %i.ade, %i.aon      ; 2 uses
  %i.aop = sub nsw <16 x i16> %i.xp, %i.ml
  %i.aoq = shl nsw <16 x i16> %i.aop, splat (i16 1) ; 2 uses
  %i.aor = sub nsw <16 x i16> %i.ade, %i.sa       ; 2 uses
  %i.aos = shl <16 x i16> %i.gw, splat (i16 2)
  %.neg.5 = mul nsw <16 x i16> %i.sa, splat (i16 -5)
  %i.aot = add <16 x i16> %.neg.5, %i.aos
  %i.aou = add <16 x i16> %i.aot, %i.ade
  %i.aov = add nsw <16 x i16> %i.aoo, %i.aom
  %i.aow = sub nsw <16 x i16> %i.aoo, %i.aom
  %i.aox = add nsw <16 x i16> %i.aor, %i.aoq
  %i.aoy = sub nsw <16 x i16> %i.aor, %i.aoq
  %.neg245.5 = mul nsw <16 x i16> %i.xp, splat (i16 -5)
  %i.aoz = add nsw <16 x i16> %.neg245.5, %i.aol
  %i.apa = add nsw <16 x i16> %i.aoz, %i.ait
  store <16 x i16> %i.aou, ptr %i.aof, align 32, !tbaa !85
  store <16 x i16> %i.aov, ptr %i.aog, align 32, !tbaa !85
  store <16 x i16> %i.aow, ptr %i.aoh, align 32, !tbaa !85
  store <16 x i16> %i.aox, ptr %i.aoi, align 32, !tbaa !85
  store <16 x i16> %i.aoy, ptr %i.aoj, align 32, !tbaa !85
  store <16 x i16> %i.apa, ptr %i.aok, align 32, !tbaa !85
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.apb = load i32, ptr %3, align 4, !tbaa !66   ; 3 uses
  %i.apc = sext i32 %i.apb to i64
  %i.apd = icmp slt i64 %indvars.iv.next, %i.apc
  br i1 %i.apd, label %.noexc, label %._crit_edge, !llvm.loop !2180

._crit_edge:                                      ; preds = %.thread238.5, %.lr.ph.split
  %i.ape = phi i32 [ %i.q, %.lr.ph.split ], [ %i.apb, %.thread238.5 ]
  %i.apf = add i32 %.0259, 1
  %exitcond.not = icmp eq i32 %.0259, %i.j
  br i1 %exitcond.not, label %._crit_edge261, label %.lr.ph.split, !llvm.loop !2181

._crit_edge261:                                   ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.gg

bb.gg:                                            ; preds = %._crit_edge261, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !66     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !66
  %i.h = load i32, ptr %0, align 4, !tbaa !66     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !66
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !66
  %i.k = load i32, ptr %i.a, align 4, !tbaa !66   ; 2 uses
  %.not781 = icmp sgt i32 %i.k, %i.j
  br i1 %.not781, label %._crit_edge785, label %.lr.ph784

.lr.ph784:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !66    ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph784, %._crit_edge780
  %i.p = phi i32 [ %.pre, %.lr.ph784 ], [ %i.aaf, %._crit_edge780 ] ; 2 uses
  %i.q = phi i32 [ %.pre, %.lr.ph784 ], [ %i.aag, %._crit_edge780 ] ; 5 uses
  %indvars.iv = phi i64 [ %i.n, %.lr.ph784 ], [ %indvars.iv.next, %._crit_edge780 ] ; 7 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !22
  %i.s = load i32, ptr %i.l, align 4, !tbaa !74
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %indvars.iv, %i.t
  %i.v = load i64, ptr %i.m, align 8, !tbaa !64
  %i.w = mul i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.w ; 2 uses
  %i.y = icmp sgt i32 %i.q, 15
  br i1 %i.y, label %.lr.ph620.preheader, label %.preheader584

.lr.ph620.preheader:                              ; preds = %bb.c
  %.pre847 = load i32, ptr %6, align 4, !tbaa !66
  %i.z = trunc nsw i64 %indvars.iv to i32         ; 4 uses
  br label %.lr.ph620

.preheader584:                                    ; preds = %._crit_edge615, %bb.c
  %i.aa = phi i32 [ %i.p, %bb.c ], [ %i.fo, %._crit_edge615 ] ; 2 uses
  %i.ab = phi i32 [ %i.q, %bb.c ], [ %i.fp, %._crit_edge615 ] ; 2 uses
  %i.ac = phi i32 [ %i.q, %bb.c ], [ %i.fq, %._crit_edge615 ] ; 3 uses
  %.0526.lcssa = phi i32 [ 0, %bb.c ], [ %i.fs, %._crit_edge615 ] ; 3 uses
  %.0522.lcssa = phi ptr [ %i.x, %bb.c ], [ %.4.lcssa, %._crit_edge615 ] ; 2 uses
  %i.ad = or disjoint i32 %.0526.lcssa, 7
  %i.ae = icmp slt i32 %i.ad, %i.ac
  br i1 %i.ae, label %.lr.ph659.preheader, label %.preheader583

.lr.ph659.preheader:                              ; preds = %.preheader584
  %.pre848 = load i32, ptr %6, align 4, !tbaa !66
  %i.af = trunc nsw i64 %indvars.iv to i32        ; 4 uses
  br label %.lr.ph659

.lr.ph620:                                        ; preds = %.lr.ph620.preheader, %._crit_edge615
  %i.ag = phi i32 [ %i.fo, %._crit_edge615 ], [ %i.p, %.lr.ph620.preheader ]
  %i.ah = phi i32 [ %i.fp, %._crit_edge615 ], [ %i.q, %.lr.ph620.preheader ]
  %i.ai = phi i32 [ %i.fq, %._crit_edge615 ], [ %i.q, %.lr.ph620.preheader ] ; 2 uses
  %i.aj = phi i32 [ %i.fr, %._crit_edge615 ], [ %.pre847, %.lr.ph620.preheader ] ; 2 uses
  %.0522618 = phi ptr [ %.4.lcssa, %._crit_edge615 ], [ %i.x, %.lr.ph620.preheader ] ; 2 uses
  %.0526617 = phi i32 [ %i.fs, %._crit_edge615 ], [ 0, %.lr.ph620.preheader ] ; 5 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !22
  %i.al = mul nsw i32 %i.ai, %i.z
  %i.am = add nsw i32 %i.al, %.0526617            ; 2 uses
  %i.an = shl nsw i32 %i.am, 4
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.ak, i64 %i.ao ; 2 uses
  %i.aq = icmp sgt i32 %i.aj, 15
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph620, %.lr.ph
  %.1523589 = phi ptr [ %i.cj, %.lr.ph ], [ %.0522618, %.lr.ph620 ] ; 9 uses
  %.0539588 = phi ptr [ %i.ci, %.lr.ph ], [ %i.ap, %.lr.ph620 ] ; 9 uses
  %.0543587 = phi i32 [ %i.ck, %.lr.ph ], [ 0, %.lr.ph620 ]
  %i.ar = load <16 x i32>, ptr %.0539588, align 1, !tbaa !85 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0539588, i64 64
  %i.at = load <16 x i32>, ptr %i.as, align 1, !tbaa !85 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0539588, i64 128
  %i.av = load <16 x i32>, ptr %i.au, align 1, !tbaa !85 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0539588, i64 192
  %i.ax = load <16 x i32>, ptr %i.aw, align 1, !tbaa !85 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0539588, i64 256
  %i.az = load <16 x i32>, ptr %i.ay, align 1, !tbaa !85 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0539588, i64 320
  %i.bb = load <16 x i32>, ptr %i.ba, align 1, !tbaa !85 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0539588, i64 384
  %i.bd = load <16 x i32>, ptr %i.bc, align 1, !tbaa !85 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0539588, i64 448
  %i.bf = load <16 x i32>, ptr %i.be, align 1, !tbaa !85 ; 2 uses
  %7 = shufflevector <16 x i32> %i.ar, <16 x i32> %i.av, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %8 = shufflevector <16 x i32> %i.ar, <16 x i32> %i.av, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %9 = shufflevector <16 x i32> %i.at, <16 x i32> %i.ax, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %10 = shufflevector <16 x i32> %i.at, <16 x i32> %i.ax, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %11 = shufflevector <16 x i32> %i.az, <16 x i32> %i.bd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %12 = shufflevector <16 x i32> %i.az, <16 x i32> %i.bd, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %13 = shufflevector <16 x i32> %i.bb, <16 x i32> %i.bf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %14 = shufflevector <16 x i32> %i.bb, <16 x i32> %i.bf, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %15 = shufflevector <16 x i32> %7, <16 x i32> %8, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %16 = shufflevector <16 x i32> %7, <16 x i32> %8, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %17 = shufflevector <16 x i32> %9, <16 x i32> %10, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %18 = shufflevector <16 x i32> %9, <16 x i32> %10, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %19 = shufflevector <16 x i32> %11, <16 x i32> %12, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %20 = shufflevector <16 x i32> %11, <16 x i32> %12, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %21 = shufflevector <16 x i32> %13, <16 x i32> %14, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %22 = shufflevector <16 x i32> %13, <16 x i32> %14, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bg = shufflevector <16 x i32> %15, <16 x i32> %17, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.bh = shufflevector <16 x i32> %15, <16 x i32> %17, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bi = shufflevector <16 x i32> %16, <16 x i32> %18, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.bj = shufflevector <16 x i32> %16, <16 x i32> %18, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bk = shufflevector <16 x i32> %19, <16 x i32> %21, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.bl = shufflevector <16 x i32> %19, <16 x i32> %21, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bm = shufflevector <16 x i32> %20, <16 x i32> %22, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.bn = shufflevector <16 x i32> %20, <16 x i32> %22, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bo = shufflevector <16 x i32> %i.bg, <16 x i32> %i.bk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bp = shufflevector <16 x i32> %i.bh, <16 x i32> %i.bl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bq = shufflevector <16 x i32> %i.bi, <16 x i32> %i.bm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.br = shufflevector <16 x i32> %i.bj, <16 x i32> %i.bn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bs = shufflevector <16 x i32> %i.bg, <16 x i32> %i.bk, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bt = shufflevector <16 x i32> %i.bh, <16 x i32> %i.bl, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bu = shufflevector <16 x i32> %i.bi, <16 x i32> %i.bm, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bv = shufflevector <16 x i32> %i.bj, <16 x i32> %i.bn, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  store <16 x i32> %i.bo, ptr %.1523589, align 1, !tbaa !85
  %i.bw = getelementptr inbounds nuw i8, ptr %.1523589, i64 64
  store <16 x i32> %i.bp, ptr %i.bw, align 1, !tbaa !85
  %i.bx = getelementptr inbounds nuw i8, ptr %.1523589, i64 128
  store <16 x i32> %i.bq, ptr %i.bx, align 1, !tbaa !85
  %i.by = getelementptr inbounds nuw i8, ptr %.1523589, i64 192
  store <16 x i32> %i.br, ptr %i.by, align 1, !tbaa !85
  %i.bz = getelementptr inbounds nuw i8, ptr %.1523589, i64 256
  store <16 x i32> %i.bs, ptr %i.bz, align 1, !tbaa !85
  %i.ca = getelementptr inbounds nuw i8, ptr %.1523589, i64 320
  store <16 x i32> %i.bt, ptr %i.ca, align 1, !tbaa !85
  %i.cb = getelementptr inbounds nuw i8, ptr %.1523589, i64 384
  store <16 x i32> %i.bu, ptr %i.cb, align 1, !tbaa !85
  %i.cc = getelementptr inbounds nuw i8, ptr %.1523589, i64 448
  store <16 x i32> %i.bv, ptr %i.cc, align 1, !tbaa !85
  %i.cd = load i32, ptr %4, align 4, !tbaa !66    ; 5 uses
  %i.ce = load i32, ptr %2, align 4, !tbaa !66
  %i.cf = shl i32 %i.cd, 4
  %i.cg = mul i32 %i.cf, %i.ce
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [2 x i8], ptr %.0539588, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.1523589, i64 512 ; 2 uses
  %i.ck = add nuw nsw i32 %.0543587, 16           ; 3 uses
  %i.cl = or disjoint i32 %i.ck, 15
  %i.cm = load i32, ptr %6, align 4, !tbaa !66    ; 2 uses
  %i.cn = icmp slt i32 %i.cl, %i.cm
  br i1 %i.cn, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !2183

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre852 = mul nsw i32 %i.cd, %i.z
  %.pre853 = add nsw i32 %.pre852, %.0526617      ; 2 uses
  %.pre855 = shl nsw i32 %.pre853, 4
  %.pre857 = sext i32 %.pre855 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph620
  %.pre-phi858 = phi i64 [ %.pre857, %._crit_edge.loopexit ], [ %i.ao, %.lr.ph620 ]
  %.pre-phi854 = phi i32 [ %.pre853, %._crit_edge.loopexit ], [ %i.am, %.lr.ph620 ] ; 2 uses
  %i.co = phi i32 [ %i.cd, %._crit_edge.loopexit ], [ %i.ag, %.lr.ph620 ]
  %i.cp = phi i32 [ %i.cd, %._crit_edge.loopexit ], [ %i.ah, %.lr.ph620 ]
  %i.cq = phi i32 [ %i.cd, %._crit_edge.loopexit ], [ %i.ai, %.lr.ph620 ]
  %i.cr = phi i32 [ %i.cm, %._crit_edge.loopexit ], [ %i.aj, %.lr.ph620 ] ; 2 uses
  %.0543.lcssa = phi i32 [ %i.ck, %._crit_edge.loopexit ], [ 0, %.lr.ph620 ] ; 3 uses
  %.0539.lcssa = phi ptr [ %i.ci, %._crit_edge.loopexit ], [ %i.ap, %.lr.ph620 ]
  %.1523.lcssa = phi ptr [ %i.cj, %._crit_edge.loopexit ], [ %.0522618, %.lr.ph620 ] ; 2 uses
  %i.cs = sub nsw i64 0, %.pre-phi858
  %i.ct = getelementptr inbounds [2 x i8], ptr %.0539.lcssa, i64 %i.cs
  %i.cu = shl nsw i32 %.pre-phi854, 3
  %i.cv = sext i32 %i.cu to i64                   ; 2 uses
  %i.cw = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %i.cv ; 2 uses
  %i.cx = or disjoint i32 %.0543.lcssa, 7
  %i.cy = icmp slt i32 %i.cx, %i.cr
  br i1 %i.cy, label %.lr.ph596, label %._crit_edge597

.lr.ph596:                                        ; preds = %._crit_edge, %.lr.ph596
  %.2524594 = phi ptr [ %i.dt, %.lr.ph596 ], [ %.1523.lcssa, %._crit_edge ] ; 5 uses
  %.1540593 = phi ptr [ %i.ds, %.lr.ph596 ], [ %i.cw, %._crit_edge ] ; 5 uses
  %.1544592 = phi i32 [ %i.du, %.lr.ph596 ], [ %.0543.lcssa, %._crit_edge ]
  %i.cz = load <16 x i32>, ptr %.1540593, align 1, !tbaa !85 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.1540593, i64 64
  %i.db = load <16 x i32>, ptr %i.da, align 1, !tbaa !85 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.1540593, i64 128
  %i.dd = load <16 x i32>, ptr %i.dc, align 1, !tbaa !85 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.1540593, i64 192
  %i.df = load <16 x i32>, ptr %i.de, align 1, !tbaa !85 ; 2 uses
  %23 = shufflevector <16 x i32> %i.cz, <16 x i32> %i.db, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %24 = shufflevector <16 x i32> %i.cz, <16 x i32> %i.db, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %25 = shufflevector <16 x i32> %i.dd, <16 x i32> %i.df, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %26 = shufflevector <16 x i32> %i.dd, <16 x i32> %i.df, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %27 = shufflevector <16 x i32> %23, <16 x i32> %24, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %28 = shufflevector <16 x i32> %23, <16 x i32> %24, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %29 = shufflevector <16 x i32> %25, <16 x i32> %26, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %30 = shufflevector <16 x i32> %25, <16 x i32> %26, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dg = shufflevector <16 x i32> %27, <16 x i32> %29, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29>
  %i.dh = shufflevector <16 x i32> %27, <16 x i32> %29, <16 x i32> <i32 2, i32 3, i32 6, i32 7, i32 10, i32 11, i32 14, i32 15, i32 18, i32 19, i32 22, i32 23, i32 26, i32 27, i32 30, i32 31>
  %i.di = shufflevector <16 x i32> %28, <16 x i32> %30, <16 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29>
  %i.dj = shufflevector <16 x i32> %28, <16 x i32> %30, <16 x i32> <i32 2, i32 3, i32 6, i32 7, i32 10, i32 11, i32 14, i32 15, i32 18, i32 19, i32 22, i32 23, i32 26, i32 27, i32 30, i32 31>
  store <16 x i32> %i.dg, ptr %.2524594, align 1, !tbaa !85
  %i.dk = getelementptr inbounds nuw i8, ptr %.2524594, i64 64
  store <16 x i32> %i.dh, ptr %i.dk, align 1, !tbaa !85
  %i.dl = getelementptr inbounds nuw i8, ptr %.2524594, i64 128
  store <16 x i32> %i.di, ptr %i.dl, align 1, !tbaa !85
  %i.dm = getelementptr inbounds nuw i8, ptr %.2524594, i64 192
  store <16 x i32> %i.dj, ptr %i.dm, align 1, !tbaa !85
  %i.dn = load i32, ptr %4, align 4, !tbaa !66    ; 5 uses
  %i.do = load i32, ptr %2, align 4, !tbaa !66
  %i.dp = shl i32 %i.dn, 3
  %i.dq = mul i32 %i.dp, %i.do
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [2 x i8], ptr %.1540593, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.2524594, i64 256 ; 2 uses
  %i.du = add nuw nsw i32 %.1544592, 8            ; 3 uses
  %i.dv = or disjoint i32 %i.du, 7
  %i.dw = load i32, ptr %6, align 4, !tbaa !66    ; 2 uses
  %i.dx = icmp slt i32 %i.dv, %i.dw
  br i1 %i.dx, label %.lr.ph596, label %._crit_edge597.loopexit, !llvm.loop !2184

._crit_edge597.loopexit:                          ; preds = %.lr.ph596
  %.pre859 = mul nsw i32 %i.dn, %i.z
  %.pre861 = add nsw i32 %.pre859, %.0526617      ; 2 uses
  %.pre863 = shl nsw i32 %.pre861, 3
  %.pre865 = sext i32 %.pre863 to i64
  br label %._crit_edge597

._crit_edge597:                                   ; preds = %._crit_edge597.loopexit, %._crit_edge
  %.pre-phi866 = phi i64 [ %.pre865, %._crit_edge597.loopexit ], [ %i.cv, %._crit_edge ]
  %.pre-phi862 = phi i32 [ %.pre861, %._crit_edge597.loopexit ], [ %.pre-phi854, %._crit_edge ] ; 2 uses
  %i.dy = phi i32 [ %i.dn, %._crit_edge597.loopexit ], [ %i.co, %._crit_edge ]
  %i.dz = phi i32 [ %i.dn, %._crit_edge597.loopexit ], [ %i.cp, %._crit_edge ]
  %i.ea = phi i32 [ %i.dn, %._crit_edge597.loopexit ], [ %i.cq, %._crit_edge ]
  %i.eb = phi i32 [ %i.dw, %._crit_edge597.loopexit ], [ %i.cr, %._crit_edge ] ; 2 uses
  %.1544.lcssa = phi i32 [ %i.du, %._crit_edge597.loopexit ], [ %.0543.lcssa, %._crit_edge ] ; 3 uses
  %.1540.lcssa = phi ptr [ %i.ds, %._crit_edge597.loopexit ], [ %i.cw, %._crit_edge ]
  %.2524.lcssa = phi ptr [ %i.dt, %._crit_edge597.loopexit ], [ %.1523.lcssa, %._crit_edge ] ; 2 uses
  %i.ec = sub nsw i64 0, %.pre-phi866
  %i.ed = getelementptr inbounds [2 x i8], ptr %.1540.lcssa, i64 %i.ec
  %i.ee = shl nsw i32 %.pre-phi862, 1
  %i.ef = sext i32 %i.ee to i64                   ; 2 uses
  %i.eg = getelementptr inbounds [2 x i8], ptr %i.ed, i64 %i.ef ; 2 uses
  %i.eh = or disjoint i32 %.1544.lcssa, 1
  %i.ei = icmp slt i32 %i.eh, %i.eb
  br i1 %i.ei, label %.lr.ph605, label %._crit_edge606

.lr.ph605:                                        ; preds = %._crit_edge597, %.lr.ph605
  %.3525603 = phi ptr [ %i.eq, %.lr.ph605 ], [ %.2524.lcssa, %._crit_edge597 ] ; 2 uses
  %.2541602 = phi ptr [ %i.ep, %.lr.ph605 ], [ %i.eg, %._crit_edge597 ] ; 2 uses
  %.2545601 = phi i32 [ %i.er, %.lr.ph605 ], [ %.1544.lcssa, %._crit_edge597 ]
  %i.ej = load <8 x i64>, ptr %.2541602, align 1, !tbaa !85
  store <8 x i64> %i.ej, ptr %.3525603, align 1, !tbaa !85
  %i.ek = load i32, ptr %4, align 4, !tbaa !66    ; 5 uses
  %i.el = load i32, ptr %2, align 4, !tbaa !66
  %i.em = shl i32 %i.ek, 1
  %i.en = mul i32 %i.em, %i.el
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [2 x i8], ptr %.2541602, i64 %i.eo ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.3525603, i64 64 ; 2 uses
  %i.er = add nuw nsw i32 %.2545601, 2            ; 3 uses
  %i.es = or disjoint i32 %i.er, 1
  %i.et = load i32, ptr %6, align 4, !tbaa !66    ; 2 uses
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %.lr.ph605, label %._crit_edge606.loopexit, !llvm.loop !2185

._crit_edge606.loopexit:                          ; preds = %.lr.ph605
  %.pre867 = mul nsw i32 %i.ek, %i.z
  %.pre869 = add nsw i32 %.pre867, %.0526617      ; 2 uses
  %.pre871 = shl nsw i32 %.pre869, 1
  %.pre873 = sext i32 %.pre871 to i64
  br label %._crit_edge606

._crit_edge606:                                   ; preds = %._crit_edge606.loopexit, %._crit_edge597
  %.pre-phi874 = phi i64 [ %.pre873, %._crit_edge606.loopexit ], [ %i.ef, %._crit_edge597 ]
  %.pre-phi870 = phi i32 [ %.pre869, %._crit_edge606.loopexit ], [ %.pre-phi862, %._crit_edge597 ]
  %i.ev = phi i32 [ %i.ek, %._crit_edge606.loopexit ], [ %i.dy, %._crit_edge597 ]
  %i.ew = phi i32 [ %i.ek, %._crit_edge606.loopexit ], [ %i.dz, %._crit_edge597 ]
  %i.ex = phi i32 [ %i.ek, %._crit_edge606.loopexit ], [ %i.ea, %._crit_edge597 ]
  %i.ey = phi i32 [ %i.et, %._crit_edge606.loopexit ], [ %i.eb, %._crit_edge597 ] ; 2 uses
  %.2545.lcssa = phi i32 [ %i.er, %._crit_edge606.loopexit ], [ %.1544.lcssa, %._crit_edge597 ] ; 2 uses
  %.2541.lcssa = phi ptr [ %i.ep, %._crit_edge606.loopexit ], [ %i.eg, %._crit_edge597 ]
  %.3525.lcssa = phi ptr [ %i.eq, %._crit_edge606.loopexit ], [ %.2524.lcssa, %._crit_edge597 ] ; 2 uses
  %i.ez = icmp slt i32 %.2545.lcssa, %i.ey
  br i1 %i.ez, label %.lr.ph614.preheader, label %._crit_edge615

.lr.ph614.preheader:                              ; preds = %._crit_edge606
  %i.fa = sub nsw i64 0, %.pre-phi874
  %i.fb = getelementptr inbounds [2 x i8], ptr %.2541.lcssa, i64 %i.fa
  %i.fc = sext i32 %.pre-phi870 to i64
  %i.fd = getelementptr inbounds [2 x i8], ptr %i.fb, i64 %i.fc
  br label %.lr.ph614

.lr.ph614:                                        ; preds = %.lr.ph614.preheader, %.lr.ph614
  %.4612 = phi ptr [ %i.fk, %.lr.ph614 ], [ %.3525.lcssa, %.lr.ph614.preheader ] ; 2 uses
  %.3542611 = phi ptr [ %i.fj, %.lr.ph614 ], [ %i.fd, %.lr.ph614.preheader ] ; 2 uses
  %.3546610 = phi i32 [ %i.fl, %.lr.ph614 ], [ %.2545.lcssa, %.lr.ph614.preheader ]
  %i.fe = load <4 x i64>, ptr %.3542611, align 1, !tbaa !85
  store <4 x i64> %i.fe, ptr %.4612, align 32, !tbaa !85
  %i.ff = load i32, ptr %4, align 4, !tbaa !66    ; 4 uses
  %i.fg = load i32, ptr %2, align 4, !tbaa !66
  %i.fh = mul nsw i32 %i.fg, %i.ff
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [2 x i8], ptr %.3542611, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %.4612, i64 32 ; 2 uses
  %i.fl = add nuw nsw i32 %.3546610, 1            ; 2 uses
  %i.fm = load i32, ptr %6, align 4, !tbaa !66    ; 2 uses
  %i.fn = icmp slt i32 %i.fl, %i.fm
  br i1 %i.fn, label %.lr.ph614, label %._crit_edge615, !llvm.loop !2186

._crit_edge615:                                   ; preds = %.lr.ph614, %._crit_edge606
  %i.fo = phi i32 [ %i.ev, %._crit_edge606 ], [ %i.ff, %.lr.ph614 ] ; 2 uses
  %i.fp = phi i32 [ %i.ew, %._crit_edge606 ], [ %i.ff, %.lr.ph614 ] ; 2 uses
  %i.fq = phi i32 [ %i.ex, %._crit_edge606 ], [ %i.ff, %.lr.ph614 ] ; 3 uses
  %i.fr = phi i32 [ %i.ey, %._crit_edge606 ], [ %i.fm, %.lr.ph614 ]
  %.4.lcssa = phi ptr [ %.3525.lcssa, %._crit_edge606 ], [ %i.fk, %.lr.ph614 ] ; 2 uses
  %i.fs = add nuw nsw i32 %.0526617, 16           ; 3 uses
  %i.ft = or disjoint i32 %i.fs, 15
  %i.fu = icmp slt i32 %i.ft, %i.fq
  br i1 %i.fu, label %.lr.ph620, label %.preheader584, !llvm.loop !2187

.preheader583:                                    ; preds = %._crit_edge655, %.preheader584
  %i.fv = phi i32 [ %i.aa, %.preheader584 ], [ %i.kl, %._crit_edge655 ] ; 2 uses
  %i.fw = phi i32 [ %i.ab, %.preheader584 ], [ %i.km, %._crit_edge655 ] ; 2 uses
  %i.fx = phi i32 [ %i.ac, %.preheader584 ], [ %i.kn, %._crit_edge655 ] ; 3 uses
  %.1527.lcssa = phi i32 [ %.0526.lcssa, %.preheader584 ], [ %i.kp, %._crit_edge655 ] ; 3 uses
  %.5.lcssa = phi ptr [ %.0522.lcssa, %.preheader584 ], [ %.9.lcssa, %._crit_edge655 ] ; 2 uses
  %i.fy = or disjoint i32 %.1527.lcssa, 3
  %i.fz = icmp slt i32 %i.fy, %i.fx
  br i1 %i.fz, label %.lr.ph699.preheader, label %.preheader582

.lr.ph699.preheader:                              ; preds = %.preheader583
  %.pre849 = load i32, ptr %6, align 4, !tbaa !66
  %i.ga = trunc nsw i64 %indvars.iv to i32        ; 4 uses
  br label %.lr.ph699

.lr.ph659:                                        ; preds = %.lr.ph659.preheader, %._crit_edge655
  %i.gb = phi i32 [ %i.kl, %._crit_edge655 ], [ %i.aa, %.lr.ph659.preheader ]
  %i.gc = phi i32 [ %i.km, %._crit_edge655 ], [ %i.ab, %.lr.ph659.preheader ]
  %i.gd = phi i32 [ %i.kn, %._crit_edge655 ], [ %i.ac, %.lr.ph659.preheader ] ; 2 uses
  %i.ge = phi i32 [ %i.ko, %._crit_edge655 ], [ %.pre848, %.lr.ph659.preheader ] ; 2 uses
  %.5658 = phi ptr [ %.9.lcssa, %._crit_edge655 ], [ %.0522.lcssa, %.lr.ph659.preheader ] ; 2 uses
  %.1527657 = phi i32 [ %i.kp, %._crit_edge655 ], [ %.0526.lcssa, %.lr.ph659.preheader ] ; 5 uses
  %i.gf = load ptr, ptr %5, align 8, !tbaa !22
  %i.gg = mul nsw i32 %i.gd, %i.af
  %i.gh = add nsw i32 %i.gg, %.1527657            ; 2 uses
  %i.gi = shl nsw i32 %i.gh, 4
  %i.gj = sext i32 %i.gi to i64                   ; 2 uses
  %i.gk = getelementptr inbounds [2 x i8], ptr %i.gf, i64 %i.gj ; 2 uses
  %i.gl = icmp sgt i32 %i.ge, 15
  br i1 %i.gl, label %.lr.ph627, label %._crit_edge628

.lr.ph627:                                        ; preds = %.lr.ph659, %.lr.ph627
  %.6625 = phi ptr [ %i.hg, %.lr.ph627 ], [ %.5658, %.lr.ph659 ] ; 5 uses
  %.0547624 = phi ptr [ %i.hf, %.lr.ph627 ], [ %i.gk, %.lr.ph659 ] ; 5 uses
  %.0551623 = phi i32 [ %i.hh, %.lr.ph627 ], [ 0, %.lr.ph659 ]
  %i.gm = load <16 x i32>, ptr %.0547624, align 1, !tbaa !85 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0547624, i64 64
  %i.go = load <16 x i32>, ptr %i.gn, align 1, !tbaa !85 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.0547624, i64 128
  %i.gq = load <16 x i32>, ptr %i.gp, align 1, !tbaa !85 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.0547624, i64 192
  %i.gs = load <16 x i32>, ptr %i.gr, align 1, !tbaa !85 ; 2 uses
  %31 = shufflevector <16 x i32> %i.gm, <16 x i32> %i.gq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %32 = shufflevector <16 x i32> %i.gm, <16 x i32> %i.gq, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %33 = shufflevector <16 x i32> %i.go, <16 x i32> %i.gs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %34 = shufflevector <16 x i32> %i.go, <16 x i32> %i.gs, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %35 = shufflevector <16 x i32> %31, <16 x i32> %32, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %36 = shufflevector <16 x i32> %31, <16 x i32> %32, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %37 = shufflevector <16 x i32> %33, <16 x i32> %34, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %38 = shufflevector <16 x i32> %33, <16 x i32> %34, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.gt = shufflevector <16 x i32> %35, <16 x i32> %37, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27>
  %i.gu = shufflevector <16 x i32> %36, <16 x i32> %38, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27>
  %i.gv = shufflevector <16 x i32> %35, <16 x i32> %37, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31>
  %i.gw = shufflevector <16 x i32> %36, <16 x i32> %38, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31>
  store <16 x i32> %i.gt, ptr %.6625, align 1, !tbaa !85
  %i.gx = getelementptr inbounds nuw i8, ptr %.6625, i64 64
  store <16 x i32> %i.gu, ptr %i.gx, align 1, !tbaa !85
  %i.gy = getelementptr inbounds nuw i8, ptr %.6625, i64 128
  store <16 x i32> %i.gv, ptr %i.gy, align 1, !tbaa !85
  %i.gz = getelementptr inbounds nuw i8, ptr %.6625, i64 192
  store <16 x i32> %i.gw, ptr %i.gz, align 1, !tbaa !85
  %i.ha = load i32, ptr %4, align 4, !tbaa !66    ; 5 uses
  %i.hb = load i32, ptr %2, align 4, !tbaa !66
  %i.hc = shl i32 %i.ha, 4
  %i.hd = mul i32 %i.hc, %i.hb
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [2 x i8], ptr %.0547624, i64 %i.he ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.6625, i64 256 ; 2 uses
  %i.hh = add nuw nsw i32 %.0551623, 16           ; 3 uses
  %i.hi = or disjoint i32 %i.hh, 15
  %i.hj = load i32, ptr %6, align 4, !tbaa !66    ; 2 uses
  %i.hk = icmp slt i32 %i.hi, %i.hj
  br i1 %i.hk, label %.lr.ph627, label %._crit_edge628.loopexit, !llvm.loop !2188

._crit_edge628.loopexit:                          ; preds = %.lr.ph627
  %.pre875 = mul nsw i32 %i.ha, %i.af
  %.pre877 = add nsw i32 %.pre875, %.1527657      ; 2 uses
  %.pre879 = shl nsw i32 %.pre877, 4
  %.pre881 = sext i32 %.pre879 to i64
  br label %._crit_edge628

._crit_edge628:                                   ; preds = %._crit_edge628.loopexit, %.lr.ph659
  %.pre-phi882 = phi i64 [ %.pre881, %._crit_edge628.loopexit ], [ %i.gj, %.lr.ph659 ]
  %.pre-phi878 = phi i32 [ %.pre877, %._crit_edge628.loopexit ], [ %i.gh, %.lr.ph659 ] ; 2 uses
  %i.hl = phi i32 [ %i.ha, %._crit_edge628.loopexit ], [ %i.gb, %.lr.ph659 ]
  %i.hm = phi i32 [ %i.ha, %._crit_edge628.loopexit ], [ %i.gc, %.lr.ph659 ]
  %i.hn = phi i32 [ %i.ha, %._crit_edge628.loopexit ], [ %i.gd, %.lr.ph659 ]
  %i.ho = phi i32 [ %i.hj, %._crit_edge628.loopexit ], [ %i.ge, %.lr.ph659 ] ; 2 uses
  %.0551.lcssa = phi i32 [ %i.hh, %._crit_edge628.loopexit ], [ 0, %.lr.ph659 ] ; 3 uses
  %.0547.lcssa = phi ptr [ %i.hf, %._crit_edge628.loopexit ], [ %i.gk, %.lr.ph659 ]
  %.6.lcssa = phi ptr [ %i.hg, %._crit_edge628.loopexit ], [ %.5658, %.lr.ph659 ] ; 2 uses
  %i.hp = sub nsw i64 0, %.pre-phi882
  %i.hq = getelementptr inbounds [2 x i8], ptr %.0547.lcssa, i64 %i.hp
  %i.hr = shl nsw i32 %.pre-phi878, 3
  %i.hs = sext i32 %i.hr to i64                   ; 2 uses
  %i.ht = getelementptr inbounds [2 x i8], ptr %i.hq, i64 %i.hs ; 2 uses
  %i.hu = or disjoint i32 %.0551.lcssa, 7
  %i.hv = icmp slt i32 %i.hu, %i.ho
  br i1 %i.hv, label %.lr.ph636, label %._crit_edge637

.lr.ph636:                                        ; preds = %._crit_edge628, %.lr.ph636
  %.7634 = phi ptr [ %i.iq, %.lr.ph636 ], [ %.6.lcssa, %._crit_edge628 ] ; 5 uses
  %.1548633 = phi ptr [ %i.ip, %.lr.ph636 ], [ %i.ht, %._crit_edge628 ] ; 5 uses
  %.1552632 = phi i32 [ %i.ir, %.lr.ph636 ], [ %.0551.lcssa, %._crit_edge628 ]
  %i.hw = load <8 x float>, ptr %.1548633, align 1, !tbaa !85 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.1548633, i64 32
  %i.hy = load <8 x float>, ptr %i.hx, align 1, !tbaa !85 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.1548633, i64 64
  %i.ia = load <8 x float>, ptr %i.hz, align 1, !tbaa !85 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.1548633, i64 96
  %i.ic = load <8 x float>, ptr %i.ib, align 1, !tbaa !85 ; 2 uses
  %39 = shufflevector <8 x float> %i.hw, <8 x float> %i.ia, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %40 = shufflevector <8 x float> %i.hw, <8 x float> %i.ia, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %41 = shufflevector <8 x float> %i.hy, <8 x float> %i.ic, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %42 = shufflevector <8 x float> %i.hy, <8 x float> %i.ic, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %43 = shufflevector <8 x float> %39, <8 x float> %40, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %44 = shufflevector <8 x float> %39, <8 x float> %40, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %45 = shufflevector <8 x float> %41, <8 x float> %42, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %46 = shufflevector <8 x float> %41, <8 x float> %42, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.id = shufflevector <8 x float> %43, <8 x float> %45, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.ie = shufflevector <8 x float> %43, <8 x float> %45, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.if = shufflevector <8 x float> %44, <8 x float> %46, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.ig = shufflevector <8 x float> %44, <8 x float> %46, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  store <8 x float> %i.id, ptr %.7634, align 1, !tbaa !85
  %i.ih = getelementptr inbounds nuw i8, ptr %.7634, i64 32
  store <8 x float> %i.ie, ptr %i.ih, align 1, !tbaa !85
  %i.ii = getelementptr inbounds nuw i8, ptr %.7634, i64 64
  store <8 x float> %i.if, ptr %i.ii, align 1, !tbaa !85
  %i.ij = getelementptr inbounds nuw i8, ptr %.7634, i64 96
  store <8 x float> %i.ig, ptr %i.ij, align 1, !tbaa !85
  %i.ik = load i32, ptr %4, align 4, !tbaa !66    ; 5 uses
  %i.il = load i32, ptr %2, align 4, !tbaa !66
  %i.im = shl i32 %i.ik, 3
  %i.in = mul i32 %i.im, %i.il
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [2 x i8], ptr %.1548633, i64 %i.io ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.7634, i64 128 ; 2 uses
  %i.ir = add nuw nsw i32 %.1552632, 8            ; 3 uses
  %i.is = or disjoint i32 %i.ir, 7
  %i.it = load i32, ptr %6, align 4, !tbaa !66    ; 2 uses
  %i.iu = icmp slt i32 %i.is, %i.it
  br i1 %i.iu, label %.lr.ph636, label %._crit_edge637.loopexit, !llvm.loop !2189

._crit_edge637.loopexit:                          ; preds = %.lr.ph636
  %.pre883 = mul nsw i32 %i.ik, %i.af
  %.pre885 = add nsw i32 %.pre883, %.1527657      ; 2 uses
  %.pre887 = shl nsw i32 %.pre885, 3
  %.pre889 = sext i32 %.pre887 to i64
  br label %._crit_edge637

._crit_edge637:                                   ; preds = %._crit_edge637.loopexit, %._crit_edge628
  %.pre-phi890 = phi i64 [ %.pre889, %._crit_edge637.loopexit ], [ %i.hs, %._crit_edge628 ]
  %.pre-phi886 = phi i32 [ %.pre885, %._crit_edge637.loopexit ], [ %.pre-phi878, %._crit_edge628 ] ; 2 uses
  %i.iv = phi i32 [ %i.ik, %._crit_edge637.loopexit ], [ %i.hl, %._crit_edge628 ]
  %i.iw = phi i32 [ %i.ik, %._crit_edge637.loopexit ], [ %i.hm, %._crit_edge628 ]
  %i.ix = phi i32 [ %i.ik, %._crit_edge637.loopexit ], [ %i.hn, %._crit_edge628 ]
  %i.iy = phi i32 [ %i.it, %._crit_edge637.loopexit ], [ %i.ho, %._crit_edge628 ] ; 2 uses
  %.1552.lcssa = phi i32 [ %i.ir, %._crit_edge637.loopexit ], [ %.0551.lcssa, %._crit_edge628 ] ; 3 uses
  %.1548.lcssa = phi ptr [ %i.ip, %._crit_edge637.loopexit ], [ %i.ht, %._crit_edge628 ]
  %.7.lcssa = phi ptr [ %i.iq, %._crit_edge637.loopexit ], [ %.6.lcssa, %._crit_edge628 ] ; 2 uses
  %i.iz = sub nsw i64 0, %.pre-phi890
  %i.ja = getelementptr inbounds [2 x i8], ptr %.1548.lcssa, i64 %i.iz
  %i.jb = shl nsw i32 %.pre-phi886, 1
  %i.jc = sext i32 %i.jb to i64                   ; 2 uses
  %i.jd = getelementptr inbounds [2 x i8], ptr %i.ja, i64 %i.jc ; 2 uses
  %i.je = or disjoint i32 %.1552.lcssa, 1
  %i.jf = icmp slt i32 %i.je, %i.iy
  br i1 %i.jf, label %.lr.ph645, label %._crit_edge646

.lr.ph645:                                        ; preds = %._crit_edge637, %.lr.ph645
  %.8643 = phi ptr [ %i.jn, %.lr.ph645 ], [ %.7.lcssa, %._crit_edge637 ] ; 2 uses
  %.2549642 = phi ptr [ %i.jm, %.lr.ph645 ], [ %i.jd, %._crit_edge637 ] ; 2 uses
  %.2553641 = phi i32 [ %i.jo, %.lr.ph645 ], [ %.1552.lcssa, %._crit_edge637 ]
  %i.jg = load <8 x float>, ptr %.2549642, align 1, !tbaa !85
  store <8 x float> %i.jg, ptr %.8643, align 1, !tbaa !85
  %i.jh = load i32, ptr %4, align 4, !tbaa !66    ; 5 uses
  %i.ji = load i32, ptr %2, align 4, !tbaa !66
  %i.jj = shl i32 %i.jh, 1
  %i.jk = mul i32 %i.jj, %i.ji
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [2 x i8], ptr %.2549642, i64 %i.jl ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.8643, i64 32 ; 2 uses
  %i.jo = add nuw nsw i32 %.2553641, 2            ; 3 uses
  %i.jp = or disjoint i32 %i.jo, 1
  %i.jq = load i32, ptr %6, align 4, !tbaa !66    ; 2 uses
  %i.jr = icmp slt i32 %i.jp, %i.jq
  br i1 %i.jr, label %.lr.ph645, label %._crit_edge646.loopexit, !llvm.loop !2190

._crit_edge646.loopexit:                          ; preds = %.lr.ph645
  %.pre891 = mul nsw i32 %i.jh, %i.af
  %.pre893 = add nsw i32 %.pre891, %.1527657      ; 2 uses
  %.pre895 = shl nsw i32 %.pre893, 1
  %.pre897 = sext i32 %.pre895 to i64
  br label %._crit_edge646

._crit_edge646:                                   ; preds = %._crit_edge646.loopexit, %._crit_edge637
  %.pre-phi898 = phi i64 [ %.pre897, %._crit_edge646.loopexit ], [ %i.jc, %._crit_edge637 ]
  %.pre-phi894 = phi i32 [ %.pre893, %._crit_edge646.loopexit ], [ %.pre-phi886, %._crit_edge637 ]
  %i.js = phi i32 [ %i.jh, %._crit_edge646.loopexit ], [ %i.iv, %._crit_edge637 ]
  %i.jt = phi i32 [ %i.jh, %._crit_edge646.loopexit ], [ %i.iw, %._crit_edge637 ]
  %i.ju = phi i32 [ %i.jh, %._crit_edge646.loopexit ], [ %i.ix, %._crit_edge637 ]
  %i.jv = phi i32 [ %i.jq, %._crit_edge646.loopexit ], [ %i.iy, %._crit_edge637 ] ; 2 uses
  %.2553.lcssa = phi i32 [ %i.jo, %._crit_edge646.loopexit ], [ %.1552.lcssa, %._crit_edge637 ] ; 2 uses
  %.2549.lcssa = phi ptr [ %i.jm, %._crit_edge646.loopexit ], [ %i.jd, %._crit_edge637 ]
  %.8.lcssa = phi ptr [ %i.jn, %._crit_edge646.loopexit ], [ %.7.lcssa, %._crit_edge637 ] ; 2 uses
  %i.jw = icmp slt i32 %.2553.lcssa, %i.jv
  br i1 %i.jw, label %.lr.ph654.preheader, label %._crit_edge655

.lr.ph654.preheader:                              ; preds = %._crit_edge646
  %i.jx = sub nsw i64 0, %.pre-phi898
  %i.jy = getelementptr inbounds [2 x i8], ptr %.2549.lcssa, i64 %i.jx
  %i.jz = sext i32 %.pre-phi894 to i64
  %i.ka = getelementptr inbounds [2 x i8], ptr %i.jy, i64 %i.jz
  br label %.lr.ph654

.lr.ph654:                                        ; preds = %.lr.ph654.preheader, %.lr.ph654
  %.9652 = phi ptr [ %i.kh, %.lr.ph654 ], [ %.8.lcssa, %.lr.ph654.preheader ] ; 2 uses
  %.3550651 = phi ptr [ %i.kg, %.lr.ph654 ], [ %i.ka, %.lr.ph654.preheader ] ; 2 uses
  %.3554650 = phi i32 [ %i.ki, %.lr.ph654 ], [ %.2553.lcssa, %.lr.ph654.preheader ]
  %i.kb = load <2 x i64>, ptr %.3550651, align 1, !tbaa !85
  store <2 x i64> %i.kb, ptr %.9652, align 16, !tbaa !85
  %i.kc = load i32, ptr %4, align 4, !tbaa !66    ; 4 uses
  %i.kd = load i32, ptr %2, align 4, !tbaa !66
  %i.ke = mul nsw i32 %i.kd, %i.kc
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [2 x i8], ptr %.3550651, i64 %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %.9652, i64 16 ; 2 uses
  %i.ki = add nuw nsw i32 %.3554650, 1            ; 2 uses
  %i.kj = load i32, ptr %6, align 4, !tbaa !66    ; 2 uses
  %i.kk = icmp slt i32 %i.ki, %i.kj
  br i1 %i.kk, label %.lr.ph654, label %._crit_edge655, !llvm.loop !2191

._crit_edge655:                                   ; preds = %.lr.ph654, %._crit_edge646
  %i.kl = phi i32 [ %i.js, %._crit_edge646 ], [ %i.kc, %.lr.ph654 ] ; 2 uses
  %i.km = phi i32 [ %i.jt, %._crit_edge646 ], [ %i.kc, %.lr.ph654 ] ; 2 uses
  %i.kn = phi i32 [ %i.ju, %._crit_edge646 ], [ %i.kc, %.lr.ph654 ] ; 3 uses
  %i.ko = phi i32 [ %i.jv, %._crit_edge646 ], [ %i.kj, %.lr.ph654 ]
  %.9.lcssa = phi ptr [ %.8.lcssa, %._crit_edge646 ], [ %i.kh, %.lr.ph654 ] ; 2 uses
  %i.kp = add nuw nsw i32 %.1527657, 8            ; 3 uses
  %i.kq = or disjoint i32 %i.kp, 7
  %i.kr = icmp slt i32 %i.kq, %i.kn
  br i1 %i.kr, label %.lr.ph659, label %.preheader583, !llvm.loop !2192

.preheader582:                                    ; preds = %._crit_edge695, %.preheader583
  %i.ks = phi i32 [ %i.fv, %.preheader583 ], [ %i.on, %._crit_edge695 ] ; 2 uses
  %i.kt = phi i32 [ %i.fw, %.preheader583 ], [ %i.oo, %._crit_edge695 ] ; 2 uses
  %i.ku = phi i32 [ %i.fx, %.preheader583 ], [ %i.op, %._crit_edge695 ] ; 2 uses
  %.2528.lcssa = phi i32 [ %.1527.lcssa, %.preheader583 ], [ %i.qr, %._crit_edge695 ] ; 3 uses
  %.10.lcssa = phi ptr [ %.5.lcssa, %.preheader583 ], [ %.14.lcssa, %._crit_edge695 ] ; 2 uses
  %i.kv = or disjoint i32 %.2528.lcssa, 1
  %i.kw = icmp slt i32 %i.kv, %i.ku
  br i1 %i.kw, label %.lr.ph739.preheader, label %.preheader

.lr.ph739.preheader:                              ; preds = %.preheader582
  %.pre850 = load i32, ptr %6, align 4, !tbaa !66
  %i.kx = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  br label %.lr.ph739

.lr.ph699:                                        ; preds = %.lr.ph699.preheader, %._crit_edge695
  %i.ky = phi i32 [ %i.on, %._crit_edge695 ], [ %i.fv, %.lr.ph699.preheader ]
  %i.kz = phi i32 [ %i.oo, %._crit_edge695 ], [ %i.fw, %.lr.ph699.preheader ]
  %i.la = phi i32 [ %i.op, %._crit_edge695 ], [ %i.fx, %.lr.ph699.preheader ] ; 2 uses
  %i.lb = phi i32 [ %i.oq, %._crit_edge695 ], [ %.pre849, %.lr.ph699.preheader ] ; 2 uses
  %.10698 = phi ptr [ %.14.lcssa, %._crit_edge695 ], [ %.5.lcssa, %.lr.ph699.preheader ] ; 2 uses
  %.2528697 = phi i32 [ %i.qr, %._crit_edge695 ], [ %.1527.lcssa, %.lr.ph699.preheader ] ; 5 uses
  %i.lc = load ptr, ptr %5, align 8, !tbaa !22
  %i.ld = mul nsw i32 %i.la, %i.ga
  %i.le = add nsw i32 %i.ld, %.2528697            ; 2 uses
  %i.lf = shl nsw i32 %i.le, 4
  %i.lg = sext i32 %i.lf to i64                   ; 2 uses
  %i.lh = getelementptr inbounds [2 x i8], ptr %i.lc, i64 %i.lg ; 2 uses
  %i.li = icmp sgt i32 %i.lb, 15
  br i1 %i.li, label %.lr.ph666, label %._crit_edge667

.lr.ph666:                                        ; preds = %.lr.ph699, %.lr.ph666
  %.11664 = phi ptr [ %i.lx, %.lr.ph666 ], [ %.10698, %.lr.ph699 ] ; 3 uses
  %.0555663 = phi ptr [ %i.lw, %.lr.ph666 ], [ %i.lh, %.lr.ph699 ] ; 3 uses
  %.0559662 = phi i32 [ %i.ly, %.lr.ph666 ], [ 0, %.lr.ph699 ]
  %i.lj = load <16 x i32>, ptr %.0555663, align 1, !tbaa !85
  %i.lk = getelementptr inbounds nuw i8, ptr %.0555663, i64 64
  %i.ll = load <16 x i32>, ptr %i.lk, align 1, !tbaa !85
  %i.lm = shufflevector <16 x i32> %i.lj, <16 x i32> poison, <16 x i32> <i32 0, i32 8, i32 4, i32 12, i32 1, i32 9, i32 5, i32 13, i32 2, i32 10, i32 6, i32 14, i32 3, i32 11, i32 7, i32 15> ; 2 uses
  %i.ln = shufflevector <16 x i32> %i.ll, <16 x i32> poison, <16 x i32> <i32 0, i32 8, i32 4, i32 12, i32 1, i32 9, i32 5, i32 13, i32 2, i32 10, i32 6, i32 14, i32 3, i32 11, i32 7, i32 15> ; 2 uses
  %i.lo = shufflevector <16 x i32> %i.lm, <16 x i32> %i.ln, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.lp = shufflevector <16 x i32> %i.lm, <16 x i32> %i.ln, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  store <16 x i32> %i.lo, ptr %.11664, align 1, !tbaa !85
  %i.lq = getelementptr inbounds nuw i8, ptr %.11664, i64 64
  store <16 x i32> %i.lp, ptr %i.lq, align 1, !tbaa !85
  %i.lr = load i32, ptr %4, align 4, !tbaa !66    ; 5 uses
  %i.ls = load i32, ptr %2, align 4, !tbaa !66
  %i.lt = shl i32 %i.lr, 4
  %i.lu = mul i32 %i.lt, %i.ls
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds [2 x i8], ptr %.0555663, i64 %i.lv ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.11664, i64 128 ; 2 uses
  %i.ly = add nuw nsw i32 %.0559662, 16           ; 3 uses
  %i.lz = or disjoint i32 %i.ly, 15
  %i.ma = load i32, ptr %6, align 4, !tbaa !66    ; 2 uses
  %i.mb = icmp slt i32 %i.lz, %i.ma
  br i1 %i.mb, label %.lr.ph666, label %._crit_edge667.loopexit, !llvm.loop !2193

._crit_edge667.loopexit:                          ; preds = %.lr.ph666
  %.pre899 = mul nsw i32 %i.lr, %i.ga
  %.pre901 = add nsw i32 %.pre899, %.2528697      ; 2 uses
  %.pre903 = shl nsw i32 %.pre901, 4
  %.pre905 = sext i32 %.pre903 to i64
  br label %._crit_edge667

._crit_edge667:                                   ; preds = %._crit_edge667.loopexit, %.lr.ph699
  %.pre-phi906 = phi i64 [ %.pre905, %._crit_edge667.loopexit ], [ %i.lg, %.lr.ph699 ]
  %.pre-phi902 = phi i32 [ %.pre901, %._crit_edge667.loopexit ], [ %i.le, %.lr.ph699 ] ; 2 uses
  %i.mc = phi i32 [ %i.lr, %._crit_edge667.loopexit ], [ %i.ky, %.lr.ph699 ]
  %i.md = phi i32 [ %i.lr, %._crit_edge667.loopexit ], [ %i.kz, %.lr.ph699 ]
  %i.me = phi i32 [ %i.lr, %._crit_edge667.loopexit ], [ %i.la, %.lr.ph699 ]
  %i.mf = phi i32 [ %i.ma, %._crit_edge667.loopexit ], [ %i.lb, %.lr.ph699 ] ; 2 uses
  %.0559.lcssa = phi i32 [ %i.ly, %._crit_edge667.loopexit ], [ 0, %.lr.ph699 ] ; 3 uses
  %.0555.lcssa = phi ptr [ %i.lw, %._crit_edge667.loopexit ], [ %i.lh, %.lr.ph699 ]
  %.11.lcssa = phi ptr [ %i.lx, %._crit_edge667.loopexit ], [ %.10698, %.lr.ph699 ] ; 2 uses
  %i.mg = sub nsw i64 0, %.pre-phi906
  %i.mh = getelementptr inbounds [2 x i8], ptr %.0555.lcssa, i64 %i.mg
  %i.mi = shl nsw i32 %.pre-phi902, 3
  %i.mj = sext i32 %i.mi to i64                   ; 2 uses
  %i.mk = getelementptr inbounds [2 x i8], ptr %i.mh, i64 %i.mj ; 2 uses
end_hunk_1
