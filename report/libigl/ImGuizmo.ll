Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ImGuizmo?download=true
inline.NumInlined: 554
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_:bb.a
bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.1159.i = phi i32 [ 1, %bb.bs ], [ 0, %bb.br ] ; 3 uses
  %.sroa.0624.0.copyload634.1.i = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 16), align 16 ; 2 uses
  %i.bgj = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 24), align 8
  %i.bgk = shufflevector <2 x float> %.sroa.0624.0.copyload634.1.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bgl = fmul <2 x float> %i.beo, %i.bgk
  %i.bgm = shufflevector <2 x float> %.sroa.0624.0.copyload634.1.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bgn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bgm, <2 x float> %i.ben, <2 x float> %i.bgl)
  %i.bgo = shufflevector <4 x float> %i.bgj, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bgp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bgo, <2 x float> %i.bep, <2 x float> %i.bgn) ; 2 uses
  %i.bgq = extractelement <2 x float> %i.bgp, i64 0 ; 2 uses
  %i.bgr = fmul <2 x float> %i.bel, %i.bgk
  %i.bgs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bgm, <2 x float> %i.bek, <2 x float> %i.bgr)
  %i.bgt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bgo, <2 x float> %i.bem, <2 x float> %i.bgs) ; 4 uses
  %foldExtExtBinop243 = fmul <2 x float> %i.bgt, %i.bgt
  %i.bgu = extractelement <2 x float> %foldExtExtBinop243, i64 1
  %i.bgv = extractelement <2 x float> %i.bgt, i64 0 ; 2 uses
  %i.bgw = call float @llvm.fmuladd.f32(float %i.bgv, float %i.bgv, float %i.bgu)
  %i.bgx = call float @llvm.fmuladd.f32(float %i.bgq, float %i.bgq, float %i.bgw)
  %sqrt.i.i.1.i83 = call noundef float @llvm.sqrt.f32(float %i.bgx)
  %i.bgy = fdiv float 1.000000e+00, %sqrt.i.i.1.i83
  %i.bgz = insertelement <2 x float> poison, float %i.bgy, i64 0
  %i.bha = shufflevector <2 x float> %i.bgz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bhb = fmul <2 x float> %i.bgt, %i.bha        ; 4 uses
  %i.bhc = fmul <2 x float> %i.bgp, %i.bha        ; 3 uses
  %i.bhd = extractelement <2 x float> %i.bhb, i64 1
  %i.bhe = fmul float %i.bfv, %i.bhd
  %i.bhf = extractelement <2 x float> %i.bhb, i64 0
  %i.bhg = call float @llvm.fmuladd.f32(float %i.bfu, float %i.bhf, float %i.bhe)
  %i.bhh = extractelement <2 x float> %i.bhc, i64 0
  %i.bhi = call noundef float @llvm.fmuladd.f32(float %i.bfw, float %i.bhh, float %i.bhg)
  %i.bhj = call float @llvm.fabs.f32(float %i.bhi) ; 3 uses
  %i.bhk = fcmp ult float %i.bhj, %.1165.i
  br i1 %i.bhk, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.sroa.0658.1.1.i = phi <2 x float> [ %.sroa.0658.1.i, %bb.bt ], [ %i.bhb, %bb.bu ]
  %.sroa.10664.1.1.i = phi <2 x float> [ %.sroa.10664.1.i, %bb.bt ], [ %i.bhc, %bb.bu ]
  %.1165.1.i = phi float [ %.1165.i, %bb.bt ], [ %i.bhj, %bb.bu ]
  %.1162.1.i = phi i32 [ %.1162.i, %bb.bt ], [ 1, %bb.bu ]
  %i.bhl = fcmp ult float %i.bhj, 1.000000e-01
  br i1 %i.bhl, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.bhm = zext nneg i32 %.1159.i to i64          ; 2 uses
  %i.bhn = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bhm
  store i32 1, ptr %i.bhn, align 4, !tbaa !52
  %i.bho = getelementptr inbounds nuw [16 x i8], ptr %42, i64 %i.bhm ; 2 uses
  store <2 x float> %i.bhb, ptr %i.bho, align 16
  %.sroa.16642.0..sroa_idx643.1.i = getelementptr inbounds nuw i8, ptr %i.bho, i64 8
  store <2 x float> %i.bhc, ptr %.sroa.16642.0..sroa_idx643.1.i, align 8
  %i.bhp = add nuw nsw i32 %.1159.i, 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.1159.1.i = phi i32 [ %i.bhp, %bb.bw ], [ %.1159.i, %bb.bv ] ; 4 uses
  %.sroa.0624.0.copyload634.2.i = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 32), align 16 ; 2 uses
  %.sroa.16642.8.vec.extract.2.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 40), align 8
  %i.bhq = shufflevector <2 x float> %.sroa.0624.0.copyload634.2.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bhr = fmul <2 x float> %i.beo, %i.bhq
  %i.bhs = shufflevector <2 x float> %.sroa.0624.0.copyload634.2.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bht = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bhs, <2 x float> %i.ben, <2 x float> %i.bhr)
  %i.bhu = insertelement <2 x float> poison, float %.sroa.16642.8.vec.extract.2.i, i64 0
  %i.bhv = shufflevector <2 x float> %i.bhu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bhw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bhv, <2 x float> %i.bep, <2 x float> %i.bht) ; 2 uses
  %i.bhx = extractelement <2 x float> %i.bhw, i64 0 ; 2 uses
  %i.bhy = fmul <2 x float> %i.bel, %i.bhq
  %i.bhz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bhs, <2 x float> %i.bek, <2 x float> %i.bhy)
  %i.bia = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bhv, <2 x float> %i.bem, <2 x float> %i.bhz) ; 4 uses
  %foldExtExtBinop245 = fmul <2 x float> %i.bia, %i.bia
  %i.bib = extractelement <2 x float> %foldExtExtBinop245, i64 1
  %i.bic = extractelement <2 x float> %i.bia, i64 0 ; 2 uses
  %i.bid = call float @llvm.fmuladd.f32(float %i.bic, float %i.bic, float %i.bib)
  %i.bie = call float @llvm.fmuladd.f32(float %i.bhx, float %i.bhx, float %i.bid)
  %sqrt.i.i.2.i84 = call noundef float @llvm.sqrt.f32(float %i.bie)
  %i.bif = fdiv float 1.000000e+00, %sqrt.i.i.2.i84
  %i.big = insertelement <2 x float> poison, float %i.bif, i64 0
  %i.bih = shufflevector <2 x float> %i.big, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bii = fmul <2 x float> %i.bia, %i.bih        ; 4 uses
  %i.bij = fmul <2 x float> %i.bhw, %i.bih        ; 3 uses
  %i.bik = extractelement <2 x float> %i.bii, i64 1
  %i.bil = fmul float %i.bfv, %i.bik
  %i.bim = extractelement <2 x float> %i.bii, i64 0
  %i.bin = call float @llvm.fmuladd.f32(float %i.bfu, float %i.bim, float %i.bil)
  %i.bio = extractelement <2 x float> %i.bij, i64 0
  %i.bip = call noundef float @llvm.fmuladd.f32(float %i.bfw, float %i.bio, float %i.bin)
  %i.biq = call float @llvm.fabs.f32(float %i.bip) ; 2 uses
  %i.bir = fcmp ult float %i.biq, %.1165.1.i      ; 3 uses
  %.sroa.0658.1.2.i = select i1 %i.bir, <2 x float> %.sroa.0658.1.1.i, <2 x float> %i.bii
  %.sroa.10664.1.2.i = select i1 %i.bir, <2 x float> %.sroa.10664.1.1.i, <2 x float> %i.bij
  %.1162.2.i = select i1 %i.bir, i32 %.1162.1.i, i32 2 ; 4 uses
  %i.bis = fcmp ult float %i.biq, 1.000000e-01
  br i1 %i.bis, label %bb.by, label %.thread747.i

.thread747.i:                                     ; preds = %bb.bx
  %i.bit = zext nneg i32 %.1159.1.i to i64        ; 2 uses
  %i.biu = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bit
  store i32 2, ptr %i.biu, align 4, !tbaa !52
  %i.biv = getelementptr inbounds nuw [16 x i8], ptr %42, i64 %i.bit ; 2 uses
  store <2 x float> %i.bii, ptr %i.biv, align 16
  %.sroa.16642.0..sroa_idx643.2.i = getelementptr inbounds nuw i8, ptr %i.biv, i64 8
  store <2 x float> %i.bij, ptr %.sroa.16642.0..sroa_idx643.2.i, align 8
  %i.biw = add nuw nsw i32 %.1159.1.i, 1
  br label %.thread.i

bb.by:                                            ; preds = %bb.bx
  %i.bix = icmp eq i32 %.1159.1.i, 0
  br i1 %i.bix, label %bb.bz, label %.thread.i

bb.bz:                                            ; preds = %bb.by
  store i32 %.1162.2.i, ptr %i.k, align 4, !tbaa !52
  store <2 x float> %.sroa.0658.1.2.i, ptr %42, align 16
  %.sroa.10664.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %42, i64 8
  store <2 x float> %.sroa.10664.1.2.i, ptr %.sroa.10664.0..sroa_idx.i, align 8
  br label %.thread.thread.i

.thread.i:                                        ; preds = %bb.by, %.thread747.i
  %.1159.2749.i = phi i32 [ %i.biw, %.thread747.i ], [ %.1159.1.i, %bb.by ] ; 3 uses
  %.pre.i85 = load i32, ptr %i.k, align 4, !tbaa !52 ; 3 uses
  %.not182.i = icmp eq i32 %.1162.2.i, %.pre.i85
  br i1 %.not182.i, label %.thread.thread.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.thread.i
  %wide.trip.count.i = zext nneg i32 %.1159.2749.i to i64
  br label %.preheader.i

bb.ca:                                            ; preds = %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge713.i, label %.preheader.i, !llvm.loop !60

._crit_edge713.i:                                 ; preds = %bb.ca
  br label %split.i, !llvm.loop !60

.preheader.i:                                     ; preds = %bb.ca, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i, %bb.ca ] ; 3 uses
  %i.biy = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.biz = load i32, ptr %i.biy, align 4, !tbaa !52
  %i.bja = icmp eq i32 %i.biz, %.1162.2.i
  br i1 %i.bja, label %split.i, label %bb.ca

split.i:                                          ; preds = %.preheader.i, %._crit_edge713.i
  %i.bjb = phi i32 [ %.pre.i85, %._crit_edge713.i ], [ %.1162.2.i, %.preheader.i ]
  %.0171.i = phi i64 [ 0, %._crit_edge713.i ], [ %indvars.iv.i, %.preheader.i ] ; 2 uses
  %i.bjc = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.0171.i
  store i32 %i.bjb, ptr %i.k, align 4, !tbaa !52
  store i32 %.pre.i85, ptr %i.bjc, align 4, !tbaa !52
  %.sroa.0.0.copyload = load <4 x float>, ptr %42, align 16
  %i.bjd = getelementptr inbounds nuw [16 x i8], ptr %42, i64 %.0171.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %42, ptr noundef nonnull align 16 dereferenceable(16) %i.bjd, i64 16, i1 false), !tbaa.struct !17
  store <4 x float> %.sroa.0.0.copyload, ptr %i.bjd, align 16
  br label %.thread.thread.i

.thread.thread.i:                                 ; preds = %split.i, %.thread.i, %bb.bz, %bb.bp
  %.3.i = phi i32 [ 1, %bb.bz ], [ %.1159.2749.i, %split.i ], [ %.1159.2749.i, %.thread.i ], [ 1, %bb.bp ]
  %i.bje = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.bjf = getelementptr inbounds nuw i8, ptr %44, i64 32
  %i.bjg = getelementptr inbounds nuw i8, ptr %44, i64 48
  %i.bjh = getelementptr inbounds nuw i8, ptr %44, i64 4
  %i.bji = getelementptr inbounds nuw i8, ptr %44, i64 12
  %i.bjj = getelementptr inbounds nuw i8, ptr %44, i64 28
  %i.bjk = getelementptr inbounds nuw i8, ptr %44, i64 44
  %i.bjl = getelementptr inbounds nuw i8, ptr %44, i64 60
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bef, i64 288
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.bjo = getelementptr inbounds nuw i8, ptr %50, i64 4
  %i.bjp = getelementptr inbounds nuw i8, ptr %50, i64 20
  %i.bjq = getelementptr inbounds nuw i8, ptr %50, i64 24 ; 2 uses
  %i.bjr = getelementptr inbounds nuw i8, ptr %50, i64 40 ; 2 uses
  %i.bjs = getelementptr inbounds nuw i8, ptr %50, i64 44 ; 2 uses
  %i.bjt = getelementptr inbounds nuw i8, ptr %50, i64 60 ; 2 uses
  %.not183.i = icmp eq ptr %8, null               ; 2 uses
  %i.bju = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.bjv = getelementptr inbounds nuw i8, ptr %50, i64 32
  %i.bjw = getelementptr inbounds nuw i8, ptr %50, i64 48
  %i.bjx = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.bjy = getelementptr inbounds nuw i8, ptr %50, i64 56
  %.sroa.7450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.11.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.15.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bjz = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.bka = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.bkb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bef, i64 296
  %wide.trip.count711.i = zext nneg i32 %.3.i to i64 ; 2 uses
  %i.bkd = getelementptr inbounds nuw i8, ptr %43, i64 12
  %i.bke = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 3 uses
  %i.bkf = getelementptr inbounds nuw i8, ptr %43, i64 28
  %i.bkg = getelementptr inbounds nuw i8, ptr %43, i64 32 ; 3 uses
  %i.bkh = getelementptr inbounds nuw i8, ptr %43, i64 44
  %i.bki = getelementptr inbounds nuw i8, ptr %43, i64 48 ; 3 uses
  %i.bkj = getelementptr inbounds nuw i8, ptr %43, i64 60
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.thread.thread.i
  %indvars.iv708.i = phi i64 [ 0, %.thread.thread.i ], [ %indvars.iv708.i.be, %.backedge.backedge ] ; 4 uses
  %i.bkk = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv708.i
  %i.bkl = load i32, ptr %i.bkk, align 4, !tbaa !52 ; 5 uses
  %i.bkm = getelementptr inbounds nuw [16 x i8], ptr %42, i64 %indvars.iv708.i ; 2 uses
  %.sroa.0658.0.copyload661.i = load <2 x float>, ptr %i.bkm, align 16 ; 4 uses
  %.sroa.10664.0..sroa_idx665.i = getelementptr inbounds nuw i8, ptr %i.bkm, i64 8
  %.sroa.10664.0.copyload666.i = load <2 x float>, ptr %.sroa.10664.0..sroa_idx665.i, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19
  %65 = add nuw nsw i32 %i.bkl, 1
  %66 = srem i32 %65, 3                           ; 3 uses
  %67 = add nuw nsw i32 %i.bkl, 2
  %68 = srem i32 %67, 3                           ; 3 uses
  %i.bkn = sext i32 %i.bkl to i64                 ; 4 uses
  %i.bko = sext i32 %66 to i64                    ; 7 uses
  %i.bkp = sext i32 %68 to i64                    ; 7 uses
  %i.bkq = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %i.bkn
  store float 0.000000e+00, ptr %i.bkq, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.bkd, align 4, !tbaa !10
  %i.bkr = getelementptr inbounds [4 x i8], ptr %7, i64 %i.bko ; 2 uses
  %i.bks = load float, ptr %i.bkr, align 4, !tbaa !10 ; 2 uses
  %i.bkt = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %i.bko
  store float %i.bks, ptr %i.bkt, align 4, !tbaa !10
  %i.bku = getelementptr inbounds [4 x i8], ptr %7, i64 %i.bkp ; 2 uses
  %i.bkv = load float, ptr %i.bku, align 4, !tbaa !10 ; 2 uses
  %i.bkw = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %i.bkp
  store float %i.bkv, ptr %i.bkw, align 4, !tbaa !10
  %i.bkx = getelementptr inbounds nuw [4 x i8], ptr %i.bke, i64 %i.bkn
  store float 0.000000e+00, ptr %i.bkx, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.bkf, align 4, !tbaa !10
  %i.bky = getelementptr inbounds nuw [4 x i8], ptr %i.bke, i64 %i.bko
  store float %i.bks, ptr %i.bky, align 4, !tbaa !10
  %i.bkz = getelementptr i8, ptr %i.bku, i64 12
  %i.bla = load float, ptr %i.bkz, align 4, !tbaa !10 ; 2 uses
  %i.blb = getelementptr inbounds nuw [4 x i8], ptr %i.bke, i64 %i.bkp
  store float %i.bla, ptr %i.blb, align 4, !tbaa !10
  %i.blc = getelementptr inbounds nuw [4 x i8], ptr %i.bkg, i64 %i.bkn
  store float 0.000000e+00, ptr %i.blc, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.bkh, align 4, !tbaa !10
  %i.bld = getelementptr i8, ptr %i.bkr, i64 12
  %i.ble = load float, ptr %i.bld, align 4, !tbaa !10 ; 2 uses
  %i.blf = getelementptr inbounds nuw [4 x i8], ptr %i.bkg, i64 %i.bko
  store float %i.ble, ptr %i.blf, align 4, !tbaa !10
  %i.blg = getelementptr inbounds nuw [4 x i8], ptr %i.bkg, i64 %i.bkp
  store float %i.bla, ptr %i.blg, align 4, !tbaa !10
  %i.blh = getelementptr inbounds nuw [4 x i8], ptr %i.bki, i64 %i.bkn
  store float 0.000000e+00, ptr %i.blh, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.bkj, align 4, !tbaa !10
  %i.bli = getelementptr inbounds nuw [4 x i8], ptr %i.bki, i64 %i.bko
  store float %i.ble, ptr %i.bli, align 4, !tbaa !10
  %i.blj = getelementptr inbounds nuw [4 x i8], ptr %i.bki, i64 %i.bkp
  store float %i.bkv, ptr %i.blj, align 4, !tbaa !10
  %i.blk = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !50, !range !33, !noundef !34
  %i.bll = trunc nuw i8 %i.blk to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #19
  call void @_ZN8ImGuizmo21FPU_MatrixF_x_MatrixFEPKfS1_Pf(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), ptr noundef nonnull align 4 dereferenceable(64) %44)
  %i.blm = select i1 %i.bll, i32 -5592406, i32 -2136298838 ; 3 uses
  %.sroa.0658.0.vec.extract.i = extractelement <2 x float> %.sroa.0658.0.copyload661.i, i64 0 ; 2 uses
  %.sroa.10664.8.vec.extract.i = extractelement <2 x float> %.sroa.10664.0.copyload666.i, i64 0 ; 3 uses
  %.sroa.10664.12.vec.extract.i = extractelement <2 x float> %.sroa.10664.0.copyload666.i, i64 1
  %foldExtExtBinop247 = fmul <2 x float> %.sroa.0658.0.copyload661.i, %.sroa.0658.0.copyload661.i
  %i.bln = extractelement <2 x float> %foldExtExtBinop247, i64 1
  %i.blo = call float @llvm.fmuladd.f32(float %.sroa.0658.0.vec.extract.i, float %.sroa.0658.0.vec.extract.i, float %i.bln)
  %i.blp = call float @llvm.fmuladd.f32(float %.sroa.10664.8.vec.extract.i, float %.sroa.10664.8.vec.extract.i, float %i.blo)
  %sqrt.i.i.i.i.i98 = call float @llvm.sqrt.f32(float %i.blp)
  %i.blq = fdiv float 1.000000e+00, %sqrt.i.i.i.i.i98 ; 3 uses
  %i.blr = insertelement <2 x float> poison, float %i.blq, i64 0
  %i.bls = shufflevector <2 x float> %i.blr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.blt = fmul <2 x float> %.sroa.0658.0.copyload661.i, %i.bls ; 4 uses
  %i.blu = fmul float %.sroa.10664.8.vec.extract.i, %i.blq ; 3 uses
  %i.blv = fmul float %.sroa.10664.12.vec.extract.i, %i.blq ; 2 uses
  %i.blw = insertelement <2 x float> poison, float %i.blu, i64 0 ; 2 uses
  %i.blx = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 864), i64 %i.bko
  %i.bly = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 864), i64 %i.bkp
  %.pre716.i = load float, ptr %44, align 4, !tbaa !16
  %i.blz = extractelement <2 x float> %i.blt, i64 0 ; 2 uses
  %i.bma = extractelement <2 x float> %i.blt, i64 1 ; 2 uses
  %i.bmb = load float, ptr %i.bjh, align 4, !tbaa !16 ; 2 uses
  %i.bmc = load float, ptr %i.bji, align 4, !tbaa !16 ; 2 uses
  %i.bmd = load float, ptr %i.bjj, align 4, !tbaa !16 ; 2 uses
  %i.bme = load float, ptr %i.bjk, align 4, !tbaa !16 ; 2 uses
  %i.bmf = load float, ptr %i.bjl, align 4, !tbaa !16 ; 2 uses
  %i.bmg = load <2 x float>, ptr %i.bje, align 4, !tbaa !16 ; 3 uses
  %i.bmh = shufflevector <2 x float> %i.bmg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bmi = insertelement <4 x float> poison, float %i.bmb, i64 1
  %i.bmj = insertelement <2 x float> poison, float %i.bmd, i64 0
  %i.bmk = shufflevector <2 x float> %i.bmj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bml = insertelement <2 x float> poison, float %i.bmc, i64 0
  %i.bmm = shufflevector <2 x float> %i.bml, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bmn = insertelement <2 x float> poison, float %i.bme, i64 0
  %i.bmo = shufflevector <2 x float> %i.bmn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bmp = insertelement <2 x float> poison, float %i.bmf, i64 0
  %i.bmq = shufflevector <2 x float> %i.bmp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bmr = load <2 x float>, ptr %i.bjf, align 4, !tbaa !16 ; 3 uses
  %i.bms = shufflevector <2 x float> %i.bmr, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bmt = load <2 x float>, ptr %i.bjg, align 4, !tbaa !16 ; 3 uses
  %i.bmu = shufflevector <2 x float> %i.bmt, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bmv = extractelement <2 x float> %i.bmg, i64 0
  %i.bmw = extractelement <2 x float> %i.bmr, i64 0
  %i.bmx = extractelement <2 x float> %i.bmt, i64 0
  %i.bmy = extractelement <2 x float> %i.bmg, i64 1
  %i.bmz = extractelement <2 x float> %i.bmr, i64 1
  %i.bna = extractelement <2 x float> %i.bmt, i64 1
  br label %bb.cc

bb.cb:                                            ; preds = %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i
  %i.bnb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51, !range !33, !noundef !34
  %i.bnc = trunc nuw i8 %i.bnb to i1
  br i1 %i.bnc, label %bb.cr, label %bb.dm

bb.cc:                                            ; preds = %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i, %.backedge
  %i.bnd = phi float [ %.pre716.i, %.backedge ], [ %i.bvw, %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i ] ; 9 uses
  %indvars.iv701.i = phi i64 [ 0, %.backedge ], [ %indvars.iv.next702.i, %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #19
  %i.bne = getelementptr inbounds nuw [16 x i8], ptr %43, i64 %indvars.iv701.i ; 3 uses
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bne, i64 4
  %indvars.iv.next702.i = add nuw nsw i64 %indvars.iv701.i, 1 ; 3 uses
  %i.bnf = and i64 %indvars.iv.next702.i, 3
  %i.bng = getelementptr inbounds nuw [16 x i8], ptr %43, i64 %i.bnf ; 2 uses
  %.sroa.12.0..sroa_idx.i219.i = getelementptr inbounds nuw i8, ptr %i.bng, i64 4
  %.sroa.12.0.copyload.i.i = load float, ptr %.sroa.12.0..sroa_idx.i.i, align 4, !tbaa !10 ; 2 uses
  %i.bnh = load <3 x float>, ptr %i.bne, align 16, !tbaa !10 ; 5 uses
  %i.bni = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 3 uses
  %i.bnj = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 5 uses
  %.sroa.12.0.copyload.i220.i = load float, ptr %.sroa.12.0..sroa_idx.i219.i, align 4, !tbaa !10 ; 2 uses
  %i.bnk = load <3 x float>, ptr %i.bng, align 16, !tbaa !10 ; 5 uses
  %i.bnl = insertelement <4 x float> poison, float %.sroa.12.0.copyload.i.i, i64 0
  %i.bnm = insertelement <4 x float> %i.bnl, float %.sroa.12.0.copyload.i220.i, i64 1
  %i.bnn = shufflevector <4 x float> %i.bnm, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bno = fmul <4 x float> %i.bmh, %i.bnn
  %i.bnp = shufflevector <3 x float> %i.bnh, <3 x float> %i.bnk, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.bnq = insertelement <4 x float> %i.bmi, float %i.bnd, i64 0
  %i.bnr = shufflevector <4 x float> %i.bnq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bns = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bnp, <4 x float> %i.bnr, <4 x float> %i.bno)
  %i.bnt = insertelement <2 x float> poison, float %.sroa.12.0.copyload.i.i, i64 0
  %i.bnu = insertelement <2 x float> %i.bnt, float %.sroa.12.0.copyload.i220.i, i64 1
  %i.bnv = fmul <2 x float> %i.bmk, %i.bnu
  %i.bnw = shufflevector <3 x float> %i.bnh, <3 x float> %i.bnk, <2 x i32> <i32 0, i32 3>
  %i.bnx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bnw, <2 x float> %i.bmm, <2 x float> %i.bnv)
  %i.bny = shufflevector <3 x float> %i.bnh, <3 x float> %i.bnk, <2 x i32> <i32 2, i32 5>
  %i.bnz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bny, <2 x float> %i.bmo, <2 x float> %i.bnx)
  %i.boa = fadd <2 x float> %i.bmq, %i.bnz
  %i.bob = fdiv <2 x float> splat (float 5.000000e-01), %i.boa
  %i.boc = shufflevector <3 x float> %i.bnh, <3 x float> %i.bnk, <4 x i32> <i32 2, i32 5, i32 2, i32 5>
  %i.bod = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.boc, <4 x float> %i.bms, <4 x float> %i.bns)
  %i.boe = fadd <4 x float> %i.bmu, %i.bod
  %i.bof = shufflevector <2 x float> %i.bob, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bog = fmul <4 x float> %i.boe, %i.bof        ; 3 uses
  %i.boh = shufflevector <4 x float> %i.bog, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.boi = insertelement <2 x float> %i.boh, float 1.000000e+00, i64 1
  %i.boj = shufflevector <4 x float> %i.bog, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.bok = fadd <2 x float> %i.boj, splat (float 5.000000e-01) ; 2 uses
  %i.bol = shufflevector <2 x float> <float -5.000000e-01, float poison>, <2 x float> %i.bok, <2 x i32> <i32 0, i32 2>
  %i.bom = fsub <2 x float> %i.boi, %i.bol
  %i.bon = fmul <2 x float> %i.bni, %i.bom
  %i.boo = fadd <2 x float> %i.bnj, %i.bon        ; 5 uses
  store <2 x float> %i.boo, ptr %45, align 8
  %i.bop = shufflevector <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x float> %i.bog, <2 x i32> <i32 5, i32 1>
  %i.boq = insertelement <2 x float> %i.bok, float -5.000000e-01, i64 0
  %i.bor = fsub <2 x float> %i.bop, %i.boq
  %i.bos = fmul <2 x float> %i.bni, %i.bor
  %i.bot = extractelement <2 x float> %i.bnj, i64 0 ; 2 uses
  %i.bou = fadd <2 x float> %i.bnj, %i.bos        ; 4 uses
  %i.bov = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 980), align 4, !tbaa !27 ; 2 uses
  %i.bow = extractelement <2 x float> %i.boo, i64 0 ; 2 uses
  %i.box = fcmp oge float %i.bow, %i.bot
  %i.boy = fcmp ole float %i.bow, %i.bov
  %i.boz = and i1 %i.box, %i.boy
  br i1 %i.boz, label %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.i, label %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i

_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.i:    ; preds = %bb.cc
  %i.bpa = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 984), align 8, !tbaa !28 ; 2 uses
  %i.bpb = extractelement <2 x float> %i.boo, i64 1 ; 3 uses
  %i.bpc = extractelement <2 x float> %i.bnj, i64 1 ; 2 uses
  %i.bpd = fcmp oge float %i.bpb, %i.bpc
  %i.bpe = fcmp ole float %i.bpb, %i.bpa
  %i.bpf = and i1 %i.bpd, %i.bpe
  %i.bpg = extractelement <2 x float> %i.bou, i64 0 ; 2 uses
  %i.bph = fcmp oge float %i.bpg, %i.bot
  %i.bpi = fcmp ole float %i.bpg, %i.bov
  %i.bpj = and i1 %i.bph, %i.bpi
  %or.cond284 = select i1 %i.bpf, i1 %i.bpj, i1 false
  br i1 %or.cond284, label %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit229.i, label %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i

_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit229.i: ; preds = %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.i
  %i.bpk = extractelement <2 x float> %i.bou, i64 1 ; 3 uses
  %i.bpl = fcmp oge float %i.bpk, %i.bpc
  %i.bpm = fcmp ole float %i.bpk, %i.bpa
  %i.bpn = and i1 %i.bpl, %i.bpm
  br i1 %i.bpn, label %bb.cd, label %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i

bb.cd:                                            ; preds = %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit229.i
  %foldExtExtBinop249 = fsub <2 x float> %i.boo, %i.bou
  %i.bpo = extractelement <2 x float> %foldExtExtBinop249, i64 0 ; 2 uses
  %i.bpp = fsub float %i.bpb, %i.bpk              ; 2 uses
  %i.bpq = fmul float %i.bpp, %i.bpp
  %i.bpr = call noundef float @llvm.fmuladd.f32(float %i.bpo, float %i.bpo, float %i.bpq)
  %sqrt.i = call float @llvm.sqrt.f32(float %i.bpr)
  %i.bps = fdiv float %sqrt.i, 1.000000e+01
  %i.bpt = fptosi float %i.bps to i32             ; 2 uses
  %i.bpu = call noundef i32 @llvm.smin.i32(i32 %i.bpt, i32 1000) ; 2 uses
  %i.bpv = uitofp nneg i32 %i.bpu to float
  %i.bpw = fdiv float 1.000000e+00, %i.bpv        ; 3 uses
  %.not693.i = icmp eq i32 %i.bpt, 0
  br i1 %.not693.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cd
  %i.bpx = fmul nnan float %i.bpw, 5.000000e-01
  br label %bb.ce

._crit_edge.loopexit.i:                           ; preds = %bb.ce
  %i.bpy = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10
  %i.bpz = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10
  %i.bqa = load <2 x float>, ptr %45, align 8, !tbaa !10
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.cd
  %i.bqb = phi <2 x float> [ %i.bqa, %._crit_edge.loopexit.i ], [ %i.boo, %bb.cd ] ; 2 uses
  %i.bqc = phi <2 x float> [ %i.bpz, %._crit_edge.loopexit.i ], [ %i.bnj, %bb.cd ]
  %i.bqd = phi <2 x float> [ %i.bpy, %._crit_edge.loopexit.i ], [ %i.bni, %bb.cd ]
  %i.bqe = fadd <3 x float> %i.bnh, %i.bnk
  %i.bqf = fmul <3 x float> %i.bqe, splat (float 5.000000e-01) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #19
  %i.bqg = extractelement <3 x float> %i.bqf, i64 1 ; 3 uses
  %i.bqh = fmul float %i.bmv, %i.bqg
  %i.bqi = extractelement <3 x float> %i.bqf, i64 0 ; 3 uses
  %i.bqj = call float @llvm.fmuladd.f32(float %i.bqi, float %i.bnd, float %i.bqh)
  %i.bqk = extractelement <3 x float> %i.bqf, i64 2 ; 3 uses
  %i.bql = call float @llvm.fmuladd.f32(float %i.bqk, float %i.bmw, float %i.bqj)
  %i.bqm = fadd float %i.bmx, %i.bql
  %i.bqn = fmul float %i.bmy, %i.bqg
  %i.bqo = call float @llvm.fmuladd.f32(float %i.bqi, float %i.bmb, float %i.bqn)
  %i.bqp = call float @llvm.fmuladd.f32(float %i.bqk, float %i.bmz, float %i.bqo)
  %i.bqq = fadd float %i.bna, %i.bqp
  %i.bqr = fmul float %i.bmd, %i.bqg
  %i.bqs = call float @llvm.fmuladd.f32(float %i.bqi, float %i.bmc, float %i.bqr)
  %i.bqt = call float @llvm.fmuladd.f32(float %i.bqk, float %i.bme, float %i.bqs)
  %i.bqu = fadd float %i.bmf, %i.bqt
  %i.bqv = fdiv float 5.000000e-01, %i.bqu        ; 2 uses
  %i.bqw = fmul float %i.bqm, %i.bqv
  %i.bqx = fmul float %i.bqq, %i.bqv
  %i.bqy = fadd float %i.bqx, 5.000000e-01
  %i.bqz = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.bqw, i64 0
  %i.bra = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.bqy, i64 1
  %i.brb = fsub <2 x float> %i.bqz, %i.bra
  %i.brc = fmul <2 x float> %i.brb, %i.bqd
  %i.brd = fadd <2 x float> %i.bqc, %i.brc        ; 3 uses
  store <2 x float> %i.brd, ptr %48, align 8
  %i.bre = load <2 x float>, ptr %i.bjm, align 8, !tbaa !10 ; 2 uses
  %i.brf = shufflevector <2 x float> %i.brd, <2 x float> %i.bqb, <2 x i32> <i32 0, i32 2>
  %i.brg = shufflevector <2 x float> %i.bre, <2 x float> poison, <2 x i32> zeroinitializer
  %i.brh = fsub <2 x float> %i.brf, %i.brg        ; 2 uses
  %i.bri = shufflevector <2 x float> %i.brd, <2 x float> %i.bqb, <2 x i32> <i32 1, i32 3>
  %i.brj = shufflevector <2 x float> %i.bre, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.brk = fsub <2 x float> %i.bri, %i.brj        ; 2 uses
  %i.brl = fmul <2 x float> %i.brk, %i.brk
  %i.brm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.brh, <2 x float> %i.brh, <2 x float> %i.brl)
  %i.brn = fcmp ole <2 x float> %i.brm, splat (float 6.400000e+01) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #19
  switch i32 %2, label %bb.ci [
    i32 0, label %bb.cf
    i32 1, label %bb.cg
    i32 2, label %bb.ch
  ]

bb.ce:                                            ; preds = %bb.ce, %.lr.ph.i
  %.0170689.i = phi i32 [ 0, %.lr.ph.i ], [ %i.brz, %bb.ce ] ; 2 uses
  %i.bro = uitofp nneg i32 %.0170689.i to float   ; 2 uses
  %i.brp = fmul float %i.bpw, %i.bro
  %i.brq = call float @llvm.fmuladd.f32(float %i.bro, float %i.bpw, float %i.bpx)
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #19
  %i.brr = load <2 x float>, ptr %45, align 8, !tbaa !10 ; 3 uses
  %i.brs = fsub <2 x float> %i.bou, %i.brr        ; 2 uses
  %i.brt = insertelement <2 x float> poison, float %i.brp, i64 0
  %i.bru = shufflevector <2 x float> %i.brt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.brv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.brs, <2 x float> %i.bru, <2 x float> %i.brr)
  store <2 x float> %i.brv, ptr %46, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #19
  %i.brw = insertelement <2 x float> poison, float %i.brq, i64 0
  %i.brx = shufflevector <2 x float> %i.brw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bry = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.brs, <2 x float> %i.brx, <2 x float> %i.brr)
  store <2 x float> %i.bry, ptr %47, align 8
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.beg, ptr noundef nonnull align 4 dereferenceable(8) %46, ptr noundef nonnull align 4 dereferenceable(8) %47, i32 noundef %i.blm, float noundef 2.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19
  %i.brz = add nuw nsw i32 %.0170689.i, 1         ; 2 uses
  %exitcond700.not.i = icmp eq i32 %i.brz, %i.bpu
  br i1 %exitcond700.not.i, label %._crit_edge.loopexit.i, label %bb.ce, !llvm.loop !61

bb.cf:                                            ; preds = %._crit_edge.i
  %i.bsa = call fastcc noundef i32 @_ZN8ImGuizmoL11GetMoveTypeEPNS_5vec_tE(ptr noundef nonnull %49)
  br label %bb.ci

bb.cg:                                            ; preds = %._crit_edge.i
  %i.bsb = call fastcc noundef i32 @_ZN8ImGuizmoL13GetRotateTypeEv()
  br label %bb.ci

bb.ch:                                            ; preds = %._crit_edge.i
  %i.bsc = call fastcc noundef i32 @_ZN8ImGuizmoL12GetScaleTypeEv()
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf, %._crit_edge.i
  %.0166.i = phi i32 [ 0, %._crit_edge.i ], [ %i.bsa, %bb.cf ], [ %i.bsb, %bb.cg ], [ %i.bsc, %bb.ch ]
  %.not184.i = icmp eq i32 %.0166.i, 0            ; 2 uses
  %i.bsd = extractelement <2 x i1> %i.brn, i64 1
  %spec.select.i106 = and i1 %i.bsd, %.not184.i   ; 2 uses
  %i.bse = extractelement <2 x i1> %i.brn, i64 0
  %spec.select185.i = and i1 %i.bse, %.not184.i   ; 2 uses
  %i.bsf = select i1 %spec.select.i106, i32 -1978629889, i32 %i.blm
  %i.bsg = select i1 %spec.select185.i, i32 -1978629889, i32 %i.blm
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.beg, ptr noundef nonnull align 4 dereferenceable(8) %45, float noundef 8.000000e+00, i32 noundef -16777216, i32 noundef 0)
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.beg, ptr noundef nonnull align 4 dereferenceable(8) %45, float noundef 6.800000e+00, i32 noundef %i.bsf, i32 noundef 0)
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.beg, ptr noundef nonnull align 4 dereferenceable(8) %48, float noundef 6.000000e+00, i32 noundef -16777216, i32 noundef 0)
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.beg, ptr noundef nonnull align 4 dereferenceable(8) %48, float noundef 4.800000e+00, i32 noundef %i.bsg, i32 noundef 0)
  %i.bsh = trunc nuw nsw i64 %indvars.iv701.i to i32
  %i.bsi = xor i32 %i.bsh, 2                      ; 2 uses
  %i.bsj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51, !range !33, !noundef !34
  %i.bsk = trunc nuw i8 %i.bsj to i1
  %.not.i107 = xor i1 %i.bsk, true
  %i.bsl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !range !33
  %i.bsm = trunc nuw i8 %i.bsl to i1
  %or.cond.i108 = select i1 %.not.i107, i1 %i.bsm, i1 false
  %or.cond3.i = and i1 %spec.select.i106, %or.cond.i108
  br i1 %or.cond3.i, label %bb.cj, label %_ZN8ImGuizmoL11CanActivateEv.exit.i109

bb.cj:                                            ; preds = %bb.ci
  %i.bsn = call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef 0, i1 noundef zeroext false)
  br i1 %i.bsn, label %bb.ck, label %_ZN8ImGuizmoL11CanActivateEv.exit.i109

bb.ck:                                            ; preds = %bb.cj
  %i.bso = call noundef zeroext i1 @_ZN5ImGui16IsAnyItemHoveredEv()
  br i1 %i.bso, label %_ZN8ImGuizmoL11CanActivateEv.exit.i109, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.bsp = call noundef zeroext i1 @_ZN5ImGui15IsAnyItemActiveEv()
  br i1 %i.bsp, label %_ZN8ImGuizmoL11CanActivateEv.exit.i109, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.bsq = zext nneg i32 %i.bsi to i64
  %i.bsr = getelementptr inbounds nuw [16 x i8], ptr %43, i64 %i.bsq ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 816), ptr noundef nonnull align 16 dereferenceable(16) %i.bsr, i64 16, i1 false), !tbaa.struct !17
  %i.bss = load <3 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 816), align 8, !tbaa !10 ; 3 uses
  %i.bst = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), align 4, !tbaa !16 ; 2 uses
  %i.bsu = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 284), align 4, !tbaa !16 ; 2 uses
  %i.bsv = shufflevector <3 x float> %i.bss, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bsw = fmul <4 x float> %i.bsv, %i.bsu
  %i.bsx = shufflevector <3 x float> %i.bss, <3 x float> poison, <4 x i32> zeroinitializer
  %i.bsy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bsx, <4 x float> %i.bst, <4 x float> %i.bsw)
  %i.bsz = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 300), align 4, !tbaa !16 ; 2 uses
  %i.bta = shufflevector <3 x float> %i.bss, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.btb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bta, <4 x float> %i.bsz, <4 x float> %i.bsy)
  %i.btc = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 316), align 4, !tbaa !16 ; 2 uses
  %i.btd = fadd <4 x float> %i.btb, %i.btc
  store <4 x float> %i.btd, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 816), align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 832), ptr noundef nonnull align 16 dereferenceable(16) %i.bne, i64 16, i1 false), !tbaa.struct !17
  %i.bte = load <3 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 832), align 8, !tbaa !10 ; 3 uses
  %i.btf = shufflevector <3 x float> %i.bte, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.btg = fmul <4 x float> %i.bsu, %i.btf
  %i.bth = shufflevector <3 x float> %i.bte, <3 x float> poison, <4 x i32> zeroinitializer
  %i.bti = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bth, <4 x float> %i.bst, <4 x float> %i.btg)
  %i.btj = shufflevector <3 x float> %i.bte, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.btk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.btj, <4 x float> %i.bsz, <4 x float> %i.bti)
  %i.btl = fadd <4 x float> %i.btc, %i.btk        ; 5 uses
  store <4 x float> %i.btl, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 832), align 8, !tbaa !10
  %i.btm = extractelement <4 x float> %i.btl, i64 1
  %i.btn = fmul float %i.bma, %i.btm
  %i.bto = extractelement <4 x float> %i.btl, i64 0
  %i.btp = call float @llvm.fmuladd.f32(float %i.blz, float %i.bto, float %i.btn)
  %i.btq = extractelement <4 x float> %i.btl, i64 2
  %i.btr = call float @llvm.fmuladd.f32(float %i.blu, float %i.btq, float %i.btp)
  %i.bts = extractelement <4 x float> %i.btl, i64 3
  %i.btt = call noundef float @llvm.fmuladd.f32(float %i.blv, float %i.bts, float %i.btr)
  %.sroa.3.8.vec.insert.i.i110 = insertelement <2 x float> %i.blw, float %i.btt, i64 1
  store <2 x float> %i.blt, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 848), align 8
  store <2 x float> %.sroa.3.8.vec.insert.i.i110, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 856), align 8
  store i32 %i.bkl, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 880), align 8, !tbaa !75
  store i32 %66, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 884), align 4, !tbaa !52
  store i32 %68, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 888), align 8, !tbaa !52
  %i.btu = getelementptr inbounds nuw [4 x i8], ptr %i.bsr, i64 %i.bko
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 864), i8 0, i64 16, i1 false)
  %i.btv = load float, ptr %i.btu, align 4, !tbaa !10
  store float %i.btv, ptr %i.blx, align 4, !tbaa !10
  %i.btw = getelementptr inbounds nuw [4 x i8], ptr %i.bsr, i64 %i.bkp
  %i.btx = load float, ptr %i.btw, align 4, !tbaa !10
  store float %i.btx, ptr %i.bly, align 4, !tbaa !10
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), i64 64, i1 false), !tbaa.struct !70
  br label %_ZN8ImGuizmoL11CanActivateEv.exit.i109

_ZN8ImGuizmoL11CanActivateEv.exit.i109:           ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci
  %i.bty = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51, !range !33, !noundef !34
  %i.btz = trunc nuw i8 %i.bty to i1
  %.not4.i = xor i1 %i.btz, true
  %i.bua = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !range !33
  %i.bub = trunc nuw i8 %i.bua to i1
  %or.cond6.i = select i1 %.not4.i, i1 %i.bub, i1 false
  %or.cond8.i = and i1 %spec.select185.i, %or.cond6.i
  br i1 %or.cond8.i, label %bb.cn, label %_ZN8ImGuizmoL11CanActivateEv.exit262.i

bb.cn:                                            ; preds = %_ZN8ImGuizmoL11CanActivateEv.exit.i109
  %i.buc = call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef 0, i1 noundef zeroext false)
  br i1 %i.buc, label %bb.co, label %_ZN8ImGuizmoL11CanActivateEv.exit262.i

bb.co:                                            ; preds = %bb.cn
  %i.bud = call noundef zeroext i1 @_ZN5ImGui16IsAnyItemHoveredEv()
  br i1 %i.bud, label %_ZN8ImGuizmoL11CanActivateEv.exit262.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.bue = call noundef zeroext i1 @_ZN5ImGui15IsAnyItemActiveEv()
  br i1 %i.bue, label %_ZN8ImGuizmoL11CanActivateEv.exit262.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.buf = zext nneg i32 %i.bsi to i64
  %i.bug = getelementptr inbounds nuw [16 x i8], ptr %43, i64 %i.buf ; 2 uses
  %i.buh = add nuw nsw i64 %indvars.iv701.i, 3
  %i.bui = and i64 %i.buh, 3
  %i.buj = getelementptr inbounds nuw [16 x i8], ptr %43, i64 %i.bui
  %i.buk = load <3 x float>, ptr %i.bug, align 16, !tbaa !10
  %i.bul = load <3 x float>, ptr %i.buj, align 16, !tbaa !10
  %i.bum = fadd <3 x float> %i.buk, %i.bul
  %i.bun = fmul <3 x float> %i.bum, splat (float 5.000000e-01) ; 3 uses
  %i.buo = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), align 4, !tbaa !16 ; 2 uses
  %i.bup = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 284), align 4, !tbaa !16 ; 2 uses
  %i.buq = shufflevector <3 x float> %i.bun, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bur = fmul <4 x float> %i.buq, %i.bup
  %i.bus = shufflevector <3 x float> %i.bun, <3 x float> poison, <4 x i32> zeroinitializer
  %i.but = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bus, <4 x float> %i.buo, <4 x float> %i.bur)
  %i.buu = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 300), align 4, !tbaa !16 ; 2 uses
  %i.buv = shufflevector <3 x float> %i.bun, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.buw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.buv, <4 x float> %i.buu, <4 x float> %i.but)
  %i.bux = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 316), align 4, !tbaa !16 ; 2 uses
  %i.buy = fadd <4 x float> %i.bux, %i.buw
  store <4 x float> %i.buy, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 816), align 8, !tbaa !10
  %i.buz = shufflevector <3 x float> %i.bqf, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bva = fmul <4 x float> %i.buz, %i.bup
  %i.bvb = shufflevector <3 x float> %i.bqf, <3 x float> poison, <4 x i32> zeroinitializer
  %i.bvc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bvb, <4 x float> %i.buo, <4 x float> %i.bva)
  %i.bvd = shufflevector <3 x float> %i.bqf, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bve = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bvd, <4 x float> %i.buu, <4 x float> %i.bvc)
  %i.bvf = fadd <4 x float> %i.bux, %i.bve        ; 5 uses
  store <4 x float> %i.bvf, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 832), align 8, !tbaa !10
  %i.bvg = extractelement <4 x float> %i.bvf, i64 1
  %i.bvh = fmul float %i.bma, %i.bvg
  %i.bvi = extractelement <4 x float> %i.bvf, i64 0
  %i.bvj = call float @llvm.fmuladd.f32(float %i.blz, float %i.bvi, float %i.bvh)
  %i.bvk = extractelement <4 x float> %i.bvf, i64 2
  %i.bvl = call float @llvm.fmuladd.f32(float %i.blu, float %i.bvk, float %i.bvj)
  %i.bvm = extractelement <4 x float> %i.bvf, i64 3
  %i.bvn = call noundef float @llvm.fmuladd.f32(float %i.blv, float %i.bvm, float %i.bvl)
  %.sroa.3.8.vec.insert.i278.i = insertelement <2 x float> %i.blw, float %i.bvn, i64 1
  store <2 x float> %i.blt, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 848), align 8
  store <2 x float> %.sroa.3.8.vec.insert.i278.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 856), align 8
  store i32 %i.bkl, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 880), align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #19
  store i32 %66, ptr %i.l, align 4, !tbaa !52
  store i32 %68, ptr %i.bjn, align 4, !tbaa !52
  %i.bvo = and i64 %indvars.iv701.i, 1
  %i.bvp = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bvo
  %i.bvq = load i32, ptr %i.bvp, align 4, !tbaa !52 ; 2 uses
  store i32 %i.bvq, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 884), align 4, !tbaa !52
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 888), align 8, !tbaa !52
  %i.bvr = sext i32 %i.bvq to i64                 ; 2 uses
  %i.bvs = getelementptr inbounds nuw [4 x i8], ptr %i.bug, i64 %i.bvr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 864), i8 0, i64 16, i1 false)
  %i.bvt = load float, ptr %i.bvs, align 4, !tbaa !10
  %i.bvu = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 864), i64 %i.bvr
  store float %i.bvt, ptr %i.bvu, align 4, !tbaa !10
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), i64 64, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  %.pre715.i = load float, ptr %44, align 4, !tbaa !16
  br label %_ZN8ImGuizmoL11CanActivateEv.exit262.i

_ZN8ImGuizmoL11CanActivateEv.exit262.i:           ; preds = %bb.cq, %bb.cp, %bb.co, %bb.cn, %_ZN8ImGuizmoL11CanActivateEv.exit.i109
  %i.bvv = phi float [ %i.bnd, %bb.cp ], [ %i.bnd, %bb.co ], [ %i.bnd, %bb.cn ], [ %.pre715.i, %bb.cq ], [ %i.bnd, %_ZN8ImGuizmoL11CanActivateEv.exit.i109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #19
  br label %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i

_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i: ; preds = %_ZN8ImGuizmoL11CanActivateEv.exit262.i, %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit229.i, %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.i, %bb.cc
  %i.bvw = phi float [ %i.bvv, %_ZN8ImGuizmoL11CanActivateEv.exit262.i ], [ %i.bnd, %bb.cc ], [ %i.bnd, %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.i ], [ %i.bnd, %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit229.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  %exitcond704.not.i = icmp eq i64 %indvars.iv.next702.i, 4
  br i1 %exitcond704.not.i, label %bb.cb, label %bb.cc, !llvm.loop !62

bb.cr:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #19
  store float 1.000000e+00, ptr %50, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bjo, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bjp, align 4, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bjq, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bjr, align 8, !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bjs, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bjt, align 4, !tbaa !15
  %i.bvx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 848), align 8, !tbaa !12 ; 2 uses
  %i.bvy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 604), align 4, !tbaa !12 ; 2 uses
  %i.bvz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 852), align 4, !tbaa !14 ; 2 uses
  %i.bwa = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 608), align 8, !tbaa !14 ; 2 uses
  %i.bwb = fmul float %i.bvz, %i.bwa
  %i.bwc = call float @llvm.fmuladd.f32(float %i.bvx, float %i.bvy, float %i.bwb)
  %i.bwd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 856), align 8, !tbaa !13 ; 2 uses
  %i.bwe = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 612), align 4, !tbaa !13 ; 2 uses
  %i.bwf = call noundef float @llvm.fmuladd.f32(float %i.bwd, float %i.bwe, float %i.bwc)
  %i.bwg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 860), align 4, !tbaa !15
  %i.bwh = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 620), align 4, !tbaa !12 ; 2 uses
  %i.bwi = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 624), align 8, !tbaa !14 ; 2 uses
  %i.bwj = fmul float %i.bvz, %i.bwi
  %i.bwk = call float @llvm.fmuladd.f32(float %i.bvx, float %i.bwh, float %i.bwj)
  %i.bwl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 628), align 4, !tbaa !13 ; 2 uses
  %i.bwm = call noundef float @llvm.fmuladd.f32(float %i.bwd, float %i.bwl, float %i.bwk) ; 2 uses
  %i.bwn = call float @llvm.fabs.f32(float %i.bwm)
  %i.bwo = fcmp olt float %i.bwn, f0x34000000
  %i.bwp = fsub float %i.bwf, %i.bwg
  %i.bwq = fneg float %i.bwp
  %i.bwr = fdiv float %i.bwq, %i.bwm
  %.0.i281.i = select i1 %i.bwo, float -1.000000e+00, float %i.bwr ; 3 uses
  %i.bws = fmul float %i.bwh, %.0.i281.i
  %i.bwt = fmul float %i.bwi, %.0.i281.i
  %i.bwu = fmul float %i.bwl, %.0.i281.i
  %i.bwv = fadd float %i.bvy, %i.bws
  %i.bww = fadd float %i.bwa, %i.bwt
  %i.bwx = fadd float %i.bwe, %i.bwu
  %i.bwy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 816), align 8, !tbaa !12 ; 2 uses
  %i.bwz = fsub float %i.bwv, %i.bwy
  %i.bxa = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 820), align 4, !tbaa !14 ; 2 uses
  %i.bxb = fsub float %i.bww, %i.bxa              ; 2 uses
  %i.bxc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 824), align 8, !tbaa !13 ; 2 uses
  %i.bxd = fsub float %i.bwx, %i.bxc
  %i.bxe = call float @llvm.fabs.f32(float %i.bwz) ; 2 uses
  %i.bxf = call float @llvm.fabs.f32(float %i.bxd) ; 2 uses
  %i.bxg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 832), align 8, !tbaa !12
  %i.bxh = fsub float %i.bxg, %i.bwy
  %i.bxi = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 836), align 4, !tbaa !14
  %i.bxj = fsub float %i.bxi, %i.bxa              ; 2 uses
  %i.bxk = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 840), align 8, !tbaa !13
  %i.bxl = fsub float %i.bxk, %i.bxc
  %i.bxm = call float @llvm.fabs.f32(float %i.bxh) ; 2 uses
  %i.bxn = call float @llvm.fabs.f32(float %i.bxl) ; 2 uses
  %i.bxo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 884), align 4, !tbaa !52 ; 2 uses
  %i.bxp = icmp eq i32 %i.bxo, -1
  br i1 %i.bxp, label %bb.db, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.bxq = sext i32 %i.bxo to i64                 ; 4 uses
  %i.bxr = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), i64 %i.bxq ; 3 uses
  %i.bxs = load float, ptr %i.bxr, align 8, !tbaa !12
  %i.bxt = call float @llvm.fabs.f32(float %i.bxs) ; 2 uses
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.bxr, i64 4
  %i.bxv = load float, ptr %i.bxu, align 4, !tbaa !14 ; 2 uses
  %i.bxw = getelementptr inbounds nuw i8, ptr %i.bxr, i64 8
  %i.bxx = load float, ptr %i.bxw, align 8, !tbaa !13
  %i.bxy = call float @llvm.fabs.f32(float %i.bxx) ; 2 uses
  %i.bxz = fmul float %i.bxj, %i.bxv
  %i.bya = call float @llvm.fabs.f32(float %i.bxz)
  %i.byb = call float @llvm.fmuladd.f32(float %i.bxt, float %i.bxm, float %i.bya)
  %i.byc = call float @llvm.fmuladd.f32(float %i.bxy, float %i.bxn, float %i.byb) ; 2 uses
  %i.byd = getelementptr [4 x i8], ptr %7, i64 %i.bxq ; 2 uses
  %i.bye = getelementptr i8, ptr %i.byd, i64 12
  %i.byf = load float, ptr %i.bye, align 4, !tbaa !10
  %i.byg = load float, ptr %i.byd, align 4, !tbaa !10
  %i.byh = fsub float %i.byf, %i.byg              ; 3 uses
  %i.byi = fcmp ogt float %i.byc, f0x34000000
  br i1 %i.byi, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.byj = fmul float %i.bxb, %i.bxv
  %i.byk = call float @llvm.fabs.f32(float %i.byj)
  %i.byl = call float @llvm.fmuladd.f32(float %i.bxt, float %i.bxe, float %i.byk)
  %i.bym = call float @llvm.fmuladd.f32(float %i.bxy, float %i.bxf, float %i.byl)
  %i.byn = fadd float %i.bym, 0.000000e+00
  %i.byo = fdiv float %i.byn, %i.byc
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.0.i = phi float [ %i.byo, %bb.ct ], [ 1.000000e+00, %bb.cs ] ; 3 uses
  br i1 %.not183.i, label %bb.da, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.byp = fmul float %i.byh, %.0.i               ; 6 uses
  %i.byq = getelementptr inbounds [4 x i8], ptr %8, i64 %i.bxq
  %i.byr = load float, ptr %i.byq, align 4, !tbaa !10 ; 4 uses
  %i.bys = fcmp ugt float %i.byr, f0x34000000
  br i1 %i.bys, label %bb.cw, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103

bb.cw:                                            ; preds = %bb.cv
  %i.byt = call float @fmodf(float noundef %i.byp, float noundef %i.byr) #19 ; 3 uses
  %i.byu = call float @llvm.fabs.f32(float %i.byt)
  %i.byv = fdiv float %i.byu, %i.byr              ; 2 uses
  %i.byw = fcmp olt float %i.byv, 5.000000e-01
  br i1 %i.byw, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.byx = fsub float %i.byp, %i.byt
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103

bb.cy:                                            ; preds = %bb.cw
  %i.byy = fcmp ogt float %i.byv, 5.000000e-01
  br i1 %i.byy, label %bb.cz, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103

bb.cz:                                            ; preds = %bb.cy
  %i.byz = fsub float %i.byp, %i.byt
  %i.bza = fcmp olt float %i.byp, 0.000000e+00
  %i.bzb = select i1 %i.bza, float -1.000000e+00, float 1.000000e+00
  %i.bzc = call float @llvm.fmuladd.f32(float %i.byr, float %i.bzb, float %i.byz)
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103

_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103:         ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cv
  %.0671.i = phi float [ %i.byp, %bb.cv ], [ %i.byp, %bb.cy ], [ %i.byx, %bb.cx ], [ %i.bzc, %bb.cz ]
  %i.bzd = fcmp ogt float %i.byh, f0x34000000
  %i.bze = fdiv float %.0671.i, %i.byh
  %.1.i104 = select i1 %i.bzd, float %i.bze, float %.0.i
  br label %bb.da

bb.da:                                            ; preds = %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103, %bb.cu
  %.2.i = phi float [ %.1.i104, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103 ], [ %.0.i, %bb.cu ]
  %i.bzf = getelementptr inbounds [16 x i8], ptr %50, i64 %i.bxq ; 2 uses
  %i.bzg = load <4 x float>, ptr %i.bzf, align 8, !tbaa !10
  %i.bzh = insertelement <4 x float> poison, float %.2.i, i64 0
  %i.bzi = shufflevector <4 x float> %i.bzh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bzj = fmul <4 x float> %i.bzi, %i.bzg
  store <4 x float> %i.bzj, ptr %i.bzf, align 8, !tbaa !10
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cr
  %i.bzk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 888), align 8, !tbaa !52 ; 2 uses
  %i.bzl = icmp eq i32 %i.bzk, -1
  br i1 %i.bzl, label %bb.dl, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.bzm = sext i32 %i.bzk to i64                 ; 4 uses
  %i.bzn = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), i64 %i.bzm ; 3 uses
  %i.bzo = load float, ptr %i.bzn, align 8, !tbaa !12
  %i.bzp = call float @llvm.fabs.f32(float %i.bzo) ; 2 uses
  %i.bzq = getelementptr inbounds nuw i8, ptr %i.bzn, i64 4
  %i.bzr = load float, ptr %i.bzq, align 4, !tbaa !14 ; 2 uses
  %i.bzs = getelementptr inbounds nuw i8, ptr %i.bzn, i64 8
  %i.bzt = load float, ptr %i.bzs, align 8, !tbaa !13
  %i.bzu = call float @llvm.fabs.f32(float %i.bzt) ; 2 uses
  %i.bzv = fmul float %i.bxj, %i.bzr
  %i.bzw = call float @llvm.fabs.f32(float %i.bzv)
  %i.bzx = call float @llvm.fmuladd.f32(float %i.bzp, float %i.bxm, float %i.bzw)
  %i.bzy = call float @llvm.fmuladd.f32(float %i.bzu, float %i.bxn, float %i.bzx) ; 2 uses
  %i.bzz = getelementptr [4 x i8], ptr %7, i64 %i.bzm ; 2 uses
  %i.caa = getelementptr i8, ptr %i.bzz, i64 12
  %i.cab = load float, ptr %i.caa, align 4, !tbaa !10
  %i.cac = load float, ptr %i.bzz, align 4, !tbaa !10
  %i.cad = fsub float %i.cab, %i.cac              ; 3 uses
  %i.cae = fcmp ogt float %i.bzy, f0x34000000
  br i1 %i.cae, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.caf = fmul float %i.bxb, %i.bzr
  %i.cag = call float @llvm.fabs.f32(float %i.caf)
  %i.cah = call float @llvm.fmuladd.f32(float %i.bzp, float %i.bxe, float %i.cag)
  %i.cai = call float @llvm.fmuladd.f32(float %i.bzu, float %i.bxf, float %i.cah)
  %i.caj = fadd float %i.cai, 0.000000e+00
end_hunk_0
