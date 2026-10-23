Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_avx512?download=true
inline.NumInlined: 20
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a

.split2149.us.us.us._ZN4ncnn3MatD2Ev.exit2180.us.us.us_crit_edge: ; preds = %.split2149.us.us.us
  %.pre8116 = load i32, ptr %i.bcg, align 4, !tbaa !55, !noalias !1497 ; 2 uses
  %.pre8117 = load ptr, ptr %0, align 8, !tbaa !20, !noalias !1497
  %.pre8118 = load i64, ptr %i.bcy, align 8, !tbaa !21, !noalias !1497
  %.pre8119 = load i64, ptr %i.bcz, align 8, !tbaa !56, !noalias !1497 ; 2 uses
  %.pre8120 = load <16 x float>, ptr %i.dix, align 64, !tbaa !82
  %.phi.trans.insert8121 = getelementptr inbounds nuw i8, ptr %i.dix, i64 64
  %.pre8122 = load <16 x float>, ptr %.phi.trans.insert8121, align 64, !tbaa !82
  %.pre8168 = sext i32 %.pre8116 to i64
  %.pre8170 = mul nsw i64 %.pre8168, %i.din
  %.pre8172 = mul i64 %.pre8170, %.pre8119
  br label %_ZN4ncnn3MatD2Ev.exit2180.us.us.us

_ZN4ncnn3MatD2Ev.exit2183.us.us.us:               ; preds = %.split2149.us.us.us
  %i.diy = load i32, ptr %i.bcg, align 4, !tbaa !55, !noalias !1498 ; 5 uses
  %i.diz = load ptr, ptr %0, align 8, !tbaa !20, !noalias !1498 ; 5 uses
  %i.dja = load i64, ptr %i.bcy, align 8, !tbaa !21, !noalias !1498 ; 5 uses
  %i.djb = mul i64 %i.dja, %i.dhw
  %i.djc = load i64, ptr %i.bcz, align 8, !tbaa !56, !noalias !1498 ; 6 uses
  %i.djd = mul i64 %i.djb, %i.djc
  %i.dje = getelementptr inbounds nuw i8, ptr %i.diz, i64 %i.djd
  %i.djf = sext i32 %i.diy to i64
  %i.djg = mul nsw i64 %i.djf, %i.din
  %i.djh = mul i64 %i.djg, %i.djc                 ; 5 uses
  %i.dji = getelementptr inbounds nuw i8, ptr %i.dje, i64 %i.djh
  %i.djj = shl nsw i32 %i.dit, 4
  %i.djk = sext i32 %i.djj to i64
  %i.djl = getelementptr inbounds [4 x i8], ptr %i.dji, i64 %i.djk
  %i.djm = load <16 x float>, ptr %i.djl, align 64, !tbaa !82 ; 2 uses
  %i.djn = load <16 x float>, ptr %i.dix, align 64, !tbaa !82 ; 4 uses
  %i.djo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.djm, <16 x float> nofpclass(nan inf) %i.djn, <16 x float> nofpclass(nan inf) %.261887058.us.us.us) ; 4 uses
  %i.djp = getelementptr inbounds nuw i8, ptr %i.dix, i64 64
  %i.djq = load <16 x float>, ptr %i.djp, align 64, !tbaa !82 ; 4 uses
  %i.djr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.djm, <16 x float> nofpclass(nan inf) %i.djq, <16 x float> nofpclass(nan inf) %.261807059.us.us.us) ; 4 uses
  switch i32 %.fr7583, label %bb.bt [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2182.us.us.us.thread
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2180.us.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2176.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2182.us.us.us.thread:        ; preds = %_ZN4ncnn3MatD2Ev.exit2183.us.us.us
  %i.djs = mul i64 %i.dja, %i.dhx
  %i.djt = mul i64 %i.djs, %i.djc
  %i.dju = getelementptr inbounds nuw i8, ptr %i.diz, i64 %i.djt
  %i.djv = getelementptr inbounds nuw i8, ptr %i.dju, i64 %i.djh
  %i.djw = shl nsw i32 %i.dit, 3
  %i.djx = sext i32 %i.djw to i64                 ; 2 uses
  %i.djy = getelementptr inbounds [4 x i8], ptr %i.djv, i64 %i.djx
  %i.djz = mul i64 %i.dja, %i.dhy
  %i.dka = mul i64 %i.djz, %i.djc
  %i.dkb = getelementptr inbounds nuw i8, ptr %i.diz, i64 %i.dka
  %i.dkc = getelementptr inbounds nuw i8, ptr %i.dkb, i64 %i.djh
  %i.dkd = getelementptr inbounds [4 x i8], ptr %i.dkc, i64 %i.djx
  %i.dke = load <8 x float>, ptr %i.djy, align 32, !tbaa !82
  %i.dkf = load <8 x float>, ptr %i.dkd, align 32, !tbaa !82
  %i.dkg = shufflevector <8 x float> %i.dke, <8 x float> %i.dkf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.dkh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dkg, <16 x float> nofpclass(nan inf) %i.djn, <16 x float> nofpclass(nan inf) %i.djo)
  %i.dki = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dkg, <16 x float> nofpclass(nan inf) %i.djq, <16 x float> nofpclass(nan inf) %i.djr)
  br label %bb.bt

_ZN4ncnn3MatD2Ev.exit2182.us.us.us:               ; preds = %.split2149.us.us.us
  %.pre8109 = load i32, ptr %i.bcg, align 4, !tbaa !55, !noalias !1499 ; 4 uses
  %.pre8110 = load ptr, ptr %0, align 8, !tbaa !20, !noalias !1499 ; 4 uses
  %.pre8111 = load i64, ptr %i.bcy, align 8, !tbaa !21, !noalias !1499 ; 4 uses
  %.pre8112 = load i64, ptr %i.bcz, align 8, !tbaa !56, !noalias !1499 ; 5 uses
  %.pre8113 = load <16 x float>, ptr %i.dix, align 64, !tbaa !82 ; 3 uses
  %.phi.trans.insert8114 = getelementptr inbounds nuw i8, ptr %i.dix, i64 64
  %.pre8115 = load <16 x float>, ptr %.phi.trans.insert8114, align 64, !tbaa !82 ; 3 uses
  %.pre8162 = sext i32 %.pre8109 to i64
  %.pre8164 = mul nsw i64 %.pre8162, %i.din
  %.pre8166 = mul i64 %.pre8164, %.pre8112        ; 4 uses
  %i.dkj = mul i64 %.pre8111, %i.dhx
  %i.dkk = mul i64 %i.dkj, %.pre8112
  %i.dkl = getelementptr inbounds nuw i8, ptr %.pre8110, i64 %i.dkk
  %i.dkm = getelementptr inbounds nuw i8, ptr %i.dkl, i64 %.pre8166
  %i.dkn = shl nsw i32 %i.dit, 3
  %i.dko = sext i32 %i.dkn to i64                 ; 2 uses
  %i.dkp = getelementptr inbounds [4 x i8], ptr %i.dkm, i64 %i.dko
  %i.dkq = mul i64 %.pre8111, %i.dhy
  %i.dkr = mul i64 %i.dkq, %.pre8112
  %i.dks = getelementptr inbounds nuw i8, ptr %.pre8110, i64 %i.dkr
  %i.dkt = getelementptr inbounds nuw i8, ptr %i.dks, i64 %.pre8166
  %i.dku = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dko
  %i.dkv = load <8 x float>, ptr %i.dkp, align 32, !tbaa !82
  %i.dkw = load <8 x float>, ptr %i.dku, align 32, !tbaa !82
  %i.dkx = shufflevector <8 x float> %i.dkv, <8 x float> %i.dkw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.dky = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dkx, <16 x float> nofpclass(nan inf) %.pre8113, <16 x float> nofpclass(nan inf) %.261887058.us.us.us) ; 3 uses
  %i.dkz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dkx, <16 x float> nofpclass(nan inf) %.pre8115, <16 x float> nofpclass(nan inf) %.261807059.us.us.us) ; 3 uses
  switch i32 %.fr7583, label %bb.bt [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2180.us.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2176.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2180.us.us.us:               ; preds = %.split2149.us.us.us._ZN4ncnn3MatD2Ev.exit2180.us.us.us_crit_edge, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us, %_ZN4ncnn3MatD2Ev.exit2183.us.us.us
  %.pre-phi8173 = phi i64 [ %.pre8172, %.split2149.us.us.us._ZN4ncnn3MatD2Ev.exit2180.us.us.us_crit_edge ], [ %.pre8166, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us ], [ %i.djh, %_ZN4ncnn3MatD2Ev.exit2183.us.us.us ] ; 5 uses
  %i.dla = phi <16 x float> [ %.pre8122, %.split2149.us.us.us._ZN4ncnn3MatD2Ev.exit2180.us.us.us_crit_edge ], [ %.pre8115, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us ], [ %i.djq, %_ZN4ncnn3MatD2Ev.exit2183.us.us.us ] ; 2 uses
  %i.dlb = phi <16 x float> [ %.pre8120, %.split2149.us.us.us._ZN4ncnn3MatD2Ev.exit2180.us.us.us_crit_edge ], [ %.pre8113, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us ], [ %i.djn, %_ZN4ncnn3MatD2Ev.exit2183.us.us.us ] ; 2 uses
  %i.dlc = phi i64 [ %.pre8119, %.split2149.us.us.us._ZN4ncnn3MatD2Ev.exit2180.us.us.us_crit_edge ], [ %.pre8112, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us ], [ %i.djc, %_ZN4ncnn3MatD2Ev.exit2183.us.us.us ] ; 5 uses
  %i.dld = phi i64 [ %.pre8118, %.split2149.us.us.us._ZN4ncnn3MatD2Ev.exit2180.us.us.us_crit_edge ], [ %.pre8111, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us ], [ %i.dja, %_ZN4ncnn3MatD2Ev.exit2183.us.us.us ] ; 5 uses
  %i.dle = phi ptr [ %.pre8117, %.split2149.us.us.us._ZN4ncnn3MatD2Ev.exit2180.us.us.us_crit_edge ], [ %.pre8110, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us ], [ %i.diz, %_ZN4ncnn3MatD2Ev.exit2183.us.us.us ] ; 5 uses
  %i.dlf = phi i32 [ %.pre8116, %.split2149.us.us.us._ZN4ncnn3MatD2Ev.exit2180.us.us.us_crit_edge ], [ %.pre8109, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us ], [ %i.diy, %_ZN4ncnn3MatD2Ev.exit2183.us.us.us ] ; 2 uses
  %.46190.us.us.us = phi nsz <16 x float> [ %.261887058.us.us.us, %.split2149.us.us.us._ZN4ncnn3MatD2Ev.exit2180.us.us.us_crit_edge ], [ %i.dky, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us ], [ %i.djo, %_ZN4ncnn3MatD2Ev.exit2183.us.us.us ]
  %.46182.us.us.us = phi nsz <16 x float> [ %.261807059.us.us.us, %.split2149.us.us.us._ZN4ncnn3MatD2Ev.exit2180.us.us.us_crit_edge ], [ %i.dkz, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us ], [ %i.djr, %_ZN4ncnn3MatD2Ev.exit2183.us.us.us ]
  %i.dlg = mul i64 %i.dld, %i.dhz
  %i.dlh = mul i64 %i.dlg, %i.dlc
  %i.dli = getelementptr inbounds nuw i8, ptr %i.dle, i64 %i.dlh
  %i.dlj = getelementptr inbounds nuw i8, ptr %i.dli, i64 %.pre-phi8173
  %i.dlk = shl nsw i32 %i.dit, 2
  %i.dll = sext i32 %i.dlk to i64                 ; 4 uses
  %i.dlm = getelementptr inbounds [4 x i8], ptr %i.dlj, i64 %i.dll
  %i.dln = mul i64 %i.dld, %i.dia
  %i.dlo = mul i64 %i.dln, %i.dlc
  %i.dlp = getelementptr inbounds nuw i8, ptr %i.dle, i64 %i.dlo
  %i.dlq = getelementptr inbounds nuw i8, ptr %i.dlp, i64 %.pre-phi8173
  %i.dlr = getelementptr inbounds [4 x i8], ptr %i.dlq, i64 %i.dll
  %i.dls = mul i64 %i.dld, %i.dib
  %i.dlt = mul i64 %i.dls, %i.dlc
  %i.dlu = getelementptr inbounds nuw i8, ptr %i.dle, i64 %i.dlt
  %i.dlv = getelementptr inbounds nuw i8, ptr %i.dlu, i64 %.pre-phi8173
  %i.dlw = getelementptr inbounds [4 x i8], ptr %i.dlv, i64 %i.dll
  %i.dlx = mul i64 %i.dld, %i.dic
  %i.dly = mul i64 %i.dlx, %i.dlc
  %i.dlz = getelementptr inbounds nuw i8, ptr %i.dle, i64 %i.dly
  %i.dma = getelementptr inbounds nuw i8, ptr %i.dlz, i64 %.pre-phi8173
  %i.dmb = getelementptr inbounds [4 x i8], ptr %i.dma, i64 %i.dll
  %i.dmc = load <4 x float>, ptr %i.dlm, align 16, !tbaa !82
  %i.dmd = load <4 x float>, ptr %i.dlr, align 16, !tbaa !82
  %i.dme = load <4 x float>, ptr %i.dlw, align 16, !tbaa !82
  %i.dmf = load <4 x float>, ptr %i.dmb, align 16, !tbaa !82
  %i.dmg = shufflevector <4 x float> %i.dmc, <4 x float> %i.dmd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dmh = shufflevector <4 x float> %i.dme, <4 x float> %i.dmf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dmi = shufflevector <16 x float> %i.dmg, <16 x float> %i.dmh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.dmj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dmi, <16 x float> nofpclass(nan inf) %i.dlb, <16 x float> nofpclass(nan inf) %.46190.us.us.us) ; 2 uses
  %i.dmk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dmi, <16 x float> nofpclass(nan inf) %i.dla, <16 x float> nofpclass(nan inf) %.46182.us.us.us) ; 2 uses
  br i1 %i.bda, label %_ZN4ncnn3MatD2Ev.exit2176.us.us.us, label %bb.bt

_ZN4ncnn3MatD2Ev.exit2176.us.us.us:               ; preds = %.split2149.us.us.us._ZN4ncnn3MatD2Ev.exit2176.us.us.us_crit_edge, %_ZN4ncnn3MatD2Ev.exit2180.us.us.us, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us, %_ZN4ncnn3MatD2Ev.exit2183.us.us.us
  %.pre-phi8179 = phi i64 [ %.pre8178, %.split2149.us.us.us._ZN4ncnn3MatD2Ev.exit2176.us.us.us_crit_edge ], [ %.pre-phi8173, %_ZN4ncnn3MatD2Ev.exit2180.us.us.us ], [ %.pre8166, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us ], [ %i.djh, %_ZN4ncnn3MatD2Ev.exit2183.us.us.us ]
  %i.dml = phi <16 x float> [ %.pre8129, %.split2149.us.us.us._ZN4ncnn3MatD2Ev.exit2176.us.us.us_crit_edge ], [ %i.dla, %_ZN4ncnn3MatD2Ev.exit2180.us.us.us ], [ %.pre8115, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us ], [ %i.djq, %_ZN4ncnn3MatD2Ev.exit2183.us.us.us ]
  %i.dmm = phi <16 x float> [ %.pre8127, %.split2149.us.us.us._ZN4ncnn3MatD2Ev.exit2176.us.us.us_crit_edge ], [ %i.dlb, %_ZN4ncnn3MatD2Ev.exit2180.us.us.us ], [ %.pre8113, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us ], [ %i.djn, %_ZN4ncnn3MatD2Ev.exit2183.us.us.us ]
  %i.dmn = phi i64 [ %.pre8126, %.split2149.us.us.us._ZN4ncnn3MatD2Ev.exit2176.us.us.us_crit_edge ], [ %i.dlc, %_ZN4ncnn3MatD2Ev.exit2180.us.us.us ], [ %.pre8112, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us ], [ %i.djc, %_ZN4ncnn3MatD2Ev.exit2183.us.us.us ]
  %i.dmo = phi i64 [ %.pre8125, %.split2149.us.us.us._ZN4ncnn3MatD2Ev.exit2176.us.us.us_crit_edge ], [ %i.dld, %_ZN4ncnn3MatD2Ev.exit2180.us.us.us ], [ %.pre8111, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us ], [ %i.dja, %_ZN4ncnn3MatD2Ev.exit2183.us.us.us ]
  %i.dmp = phi ptr [ %.pre8124, %.split2149.us.us.us._ZN4ncnn3MatD2Ev.exit2176.us.us.us_crit_edge ], [ %i.dle, %_ZN4ncnn3MatD2Ev.exit2180.us.us.us ], [ %.pre8110, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us ], [ %i.diz, %_ZN4ncnn3MatD2Ev.exit2183.us.us.us ]
  %i.dmq = phi i32 [ %.pre8123, %.split2149.us.us.us._ZN4ncnn3MatD2Ev.exit2176.us.us.us_crit_edge ], [ %i.dlf, %_ZN4ncnn3MatD2Ev.exit2180.us.us.us ], [ %.pre8109, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us ], [ %i.diy, %_ZN4ncnn3MatD2Ev.exit2183.us.us.us ]
  %.56191.us.us.us = phi nsz <16 x float> [ %.261887058.us.us.us, %.split2149.us.us.us._ZN4ncnn3MatD2Ev.exit2176.us.us.us_crit_edge ], [ %i.dmj, %_ZN4ncnn3MatD2Ev.exit2180.us.us.us ], [ %i.dky, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us ], [ %i.djo, %_ZN4ncnn3MatD2Ev.exit2183.us.us.us ]
  %.56183.us.us.us = phi nsz <16 x float> [ %.261807059.us.us.us, %.split2149.us.us.us._ZN4ncnn3MatD2Ev.exit2176.us.us.us_crit_edge ], [ %i.dmk, %_ZN4ncnn3MatD2Ev.exit2180.us.us.us ], [ %i.dkz, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us ], [ %i.djr, %_ZN4ncnn3MatD2Ev.exit2183.us.us.us ]
  %factor.op.mul.us.us.us = mul i64 %i.dmo, %i.dmn
  %invariant.gep.us.us.us = getelementptr i8, ptr %i.dmp, i64 %.pre-phi8179
  %i.dmr = sext i32 %i.dit to i64
  %invariant.gep7055.us.us.us = getelementptr [4 x i8], ptr %invariant.gep.us.us.us, i64 %i.dmr
  %i.dms = insertelement <16 x i64> poison, i64 %factor.op.mul.us.us.us, i64 0
  %i.dmt = shufflevector <16 x i64> %i.dms, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.dmu = mul <16 x i64> %i.dmt, %i.dif
  %i.dmv = getelementptr i8, ptr %invariant.gep7055.us.us.us, <16 x i64> %i.dmu
  %i.dmw = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %i.dmv, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39 ; 2 uses
  %i.dmx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dmw, <16 x float> nofpclass(nan inf) %i.dmm, <16 x float> nofpclass(nan inf) %.56191.us.us.us)
  %i.dmy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dmw, <16 x float> nofpclass(nan inf) %i.dml, <16 x float> nofpclass(nan inf) %.56183.us.us.us)
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2182.us.us.us.thread, %_ZN4ncnn3MatD2Ev.exit2176.us.us.us, %_ZN4ncnn3MatD2Ev.exit2180.us.us.us, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us, %_ZN4ncnn3MatD2Ev.exit2183.us.us.us, %.split2149.us.us.us, %bb.bs, %.lr.ph.split.us.us.us7104
  %i.dmz = phi i32 [ %i.dio, %.lr.ph.split.us.us.us7104 ], [ %i.dio, %.split2149.us.us.us ], [ %i.diy, %_ZN4ncnn3MatD2Ev.exit2183.us.us.us ], [ %.pre8109, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us ], [ %i.dmq, %_ZN4ncnn3MatD2Ev.exit2176.us.us.us ], [ %i.dlf, %_ZN4ncnn3MatD2Ev.exit2180.us.us.us ], [ %i.dio, %bb.bs ], [ %i.diy, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us.thread ] ; 2 uses
  %.66192.us.us.us = phi nsz <16 x float> [ %.261887058.us.us.us, %.lr.ph.split.us.us.us7104 ], [ %.261887058.us.us.us, %.split2149.us.us.us ], [ %i.djo, %_ZN4ncnn3MatD2Ev.exit2183.us.us.us ], [ %i.dky, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us ], [ %i.dmx, %_ZN4ncnn3MatD2Ev.exit2176.us.us.us ], [ %i.dmj, %_ZN4ncnn3MatD2Ev.exit2180.us.us.us ], [ %.261887058.us.us.us, %bb.bs ], [ %i.dkh, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us.thread ] ; 2 uses
  %.66184.us.us.us = phi nsz <16 x float> [ %.261807059.us.us.us, %.lr.ph.split.us.us.us7104 ], [ %.261807059.us.us.us, %.split2149.us.us.us ], [ %i.djr, %_ZN4ncnn3MatD2Ev.exit2183.us.us.us ], [ %i.dkz, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us ], [ %i.dmy, %_ZN4ncnn3MatD2Ev.exit2176.us.us.us ], [ %i.dmk, %_ZN4ncnn3MatD2Ev.exit2180.us.us.us ], [ %.261807059.us.us.us, %bb.bs ], [ %i.dki, %_ZN4ncnn3MatD2Ev.exit2182.us.us.us.thread ] ; 2 uses
  %indvars.iv.next7893 = add nuw nsw i64 %indvars.iv7892, 1 ; 2 uses
  %exitcond7896.not = icmp eq i64 %indvars.iv.next7893, %i.dhu
  br i1 %exitcond7896.not, label %..loopexit6427_crit_edge.us.us, label %.lr.ph.split.us.us.us7104, !llvm.loop !1390

..loopexit6427_crit_edge.us.us:                   ; preds = %bb.bt, %.preheader6426.us.us, %bb.br, %.lr.ph7071.split.us.us
  %i.dna = phi i32 [ %i.dig, %.lr.ph7071.split.us.us ], [ %i.dig, %bb.br ], [ %i.dig, %.preheader6426.us.us ], [ %i.dmz, %bb.bt ] ; 2 uses
  %.76193.us.us = phi nsz <16 x float> [ %.161877068.us.us, %.lr.ph7071.split.us.us ], [ %.161877068.us.us, %bb.br ], [ %.161877068.us.us, %.preheader6426.us.us ], [ %.66192.us.us.us, %bb.bt ] ; 2 uses
  %.76185.us.us = phi nsz <16 x float> [ %.161797069.us.us, %.lr.ph7071.split.us.us ], [ %.161797069.us.us, %bb.br ], [ %.161797069.us.us, %.preheader6426.us.us ], [ %.66184.us.us.us, %bb.bt ] ; 2 uses
  %indvars.iv.next7898 = add nuw nsw i64 %indvars.iv7897, 1 ; 2 uses
  %exitcond7901.not = icmp eq i64 %indvars.iv.next7898, %wide.trip.count7900
  br i1 %exitcond7901.not, label %._crit_edge7072.us, label %.lr.ph7071.split.us.us, !llvm.loop !1391

._crit_edge7072.us:                               ; preds = %..loopexit6427_crit_edge.us.us, %.preheader6432.us
  %i.dnb = phi i32 [ %i.dhv, %.preheader6432.us ], [ %i.dna, %..loopexit6427_crit_edge.us.us ] ; 2 uses
  %.us-phi7084.us = phi <16 x float> [ %.061867087.us, %.preheader6432.us ], [ %.76193.us.us, %..loopexit6427_crit_edge.us.us ] ; 2 uses
  %.us-phi7085.us = phi <16 x float> [ %.061787088.us, %.preheader6432.us ], [ %.76185.us.us, %..loopexit6427_crit_edge.us.us ] ; 2 uses
  %i.dnc = getelementptr inbounds [4 x i8], ptr %.018667089.us, i64 %i.dgz ; 2 uses
  %indvars.iv.next7903 = add nuw nsw i64 %indvars.iv7902, 16 ; 3 uses
  %i.dnd = icmp slt i64 %indvars.iv.next7903, %invariant.op8353
  br i1 %i.dnd, label %.preheader6432.us, label %._crit_edge7093.loopexit, !llvm.loop !1392

._crit_edge7093.loopexit:                         ; preds = %._crit_edge7072.us
  %i.dne = trunc nuw nsw i64 %indvars.iv.next7903 to i32
  br label %._crit_edge7093

._crit_edge7093:                                  ; preds = %.preheader6432.lr.ph, %._crit_edge7093.loopexit, %_ZN4ncnn3MatD2Ev.exit2184
  %i.dnf = phi i32 [ %i.dhj, %_ZN4ncnn3MatD2Ev.exit2184 ], [ %i.dnb, %._crit_edge7093.loopexit ], [ %i.dhj, %.preheader6432.lr.ph ] ; 3 uses
  %.06186.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2184 ], [ %.us-phi7084.us, %._crit_edge7093.loopexit ], [ zeroinitializer, %.preheader6432.lr.ph ] ; 2 uses
  %.06178.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2184 ], [ %.us-phi7085.us, %._crit_edge7093.loopexit ], [ zeroinitializer, %.preheader6432.lr.ph ] ; 2 uses
  %.01866.lcssa = phi ptr [ %i.dgt, %_ZN4ncnn3MatD2Ev.exit2184 ], [ %i.dnc, %._crit_edge7093.loopexit ], [ %scevgep7887, %.preheader6432.lr.ph ] ; 3 uses
  %.01861.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2184 ], [ %i.dne, %._crit_edge7093.loopexit ], [ %i.bdl, %.preheader6432.lr.ph ] ; 5 uses
  %i.dng = shufflevector <16 x float> %.06186.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dnh = shufflevector <16 x float> %.06186.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dni = fadd fast <8 x float> %i.dng, %i.dnh   ; 2 uses
  %i.dnj = shufflevector <8 x float> %i.dni, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dnk = shufflevector <8 x float> %i.dni, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dnl = fadd fast <4 x float> %i.dnj, %i.dnk   ; 4 uses
  %i.dnm = shufflevector <16 x float> %.06178.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dnn = shufflevector <16 x float> %.06178.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dno = fadd fast <8 x float> %i.dnm, %i.dnn   ; 2 uses
  %i.dnp = shufflevector <8 x float> %i.dno, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dnq = shufflevector <8 x float> %i.dno, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dnr = fadd fast <4 x float> %i.dnp, %i.dnq   ; 4 uses
  %i.dns = or disjoint i32 %.01861.lcssa, 7
  %i.dnt = icmp slt i32 %i.dns, %i.bcf
  br i1 %i.dnt, label %.preheader6431.lr.ph, label %._crit_edge7138

.preheader6431.lr.ph:                             ; preds = %._crit_edge7093
  %i.dnu = load i32, ptr %i.j, align 4
  %invariant.op7126 = sub i32 %.neg6358, %i.dnu
  %i.dnv = load i32, ptr %i.f, align 4            ; 2 uses
  %i.dnw = load i32, ptr %i.a, align 4
  %.fr7585 = freeze i32 %i.dnw                    ; 2 uses
  %i.dnx = icmp sgt i32 %.fr7585, 0
  %i.dny = load i32, ptr %i.i, align 4
  %.neg6356 = add nuw nsw i32 %.019037317, 1
  %invariant.op7117 = sub i32 %.neg6356, %i.dny
  %i.dnz = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.dgw, label %.preheader6431.us.preheader, label %.preheader6431.preheader

.preheader6431.preheader:                         ; preds = %.preheader6431.lr.ph
  %i.doa = sub i32 %i.bdn, %.01861.lcssa          ; 2 uses
  %i.dob = lshr i32 %i.doa, 1
  %i.doc = and i32 %i.dob, 2147483644
  %narrow8289 = add nuw i32 %i.doc, 4
  %i.dod = zext i32 %narrow8289 to i64
  %i.doe = mul nsw i64 %i.dhb, %i.dod
  %scevgep7905 = getelementptr i8, ptr %.01866.lcssa, i64 %i.doe
  %i.dof = add i32 %.01861.lcssa, 8
  %i.dog = and i32 %i.doa, -8
  %i.doh = add i32 %i.dof, %i.dog
  br label %._crit_edge7138

.preheader6431.us.preheader:                      ; preds = %.preheader6431.lr.ph
  %i.doi = load i32, ptr %i.c, align 4
  %i.doj = load i32, ptr %i.d, align 4
  %i.dok = zext i32 %.fr7585 to i64               ; 2 uses
  %i.dol = zext i32 %.01861.lcssa to i64
  br label %.preheader6431.us

.preheader6431.us:                                ; preds = %.preheader6431.us.preheader, %._crit_edge7123.us
  %i.dom = phi i32 [ %i.dnf, %.preheader6431.us.preheader ], [ %i.drt, %._crit_edge7123.us ] ; 2 uses
  %indvars.iv7920 = phi i64 [ %i.dol, %.preheader6431.us.preheader ], [ %indvars.iv.next7921, %._crit_edge7123.us ] ; 4 uses
  %.118677134.us = phi ptr [ %.01866.lcssa, %.preheader6431.us.preheader ], [ %i.dru, %._crit_edge7123.us ] ; 2 uses
  %.061687133.us = phi <8 x float> [ zeroinitializer, %.preheader6431.us.preheader ], [ %.us-phi7130.us, %._crit_edge7123.us ] ; 2 uses
  %.061737132.us = phi <8 x float> [ zeroinitializer, %.preheader6431.us.preheader ], [ %.us-phi7129.us, %._crit_edge7123.us ] ; 2 uses
  %i.don = trunc nuw i64 %indvars.iv7920 to i32
  %i.doo = lshr exact i32 %i.don, 2               ; 2 uses
  %i.dop = zext nneg i32 %i.doo to i64
  %i.doq = or disjoint i32 %i.doo, 1
  %i.dor = zext nneg i32 %i.doq to i64
  %i.dos = lshr exact i64 %indvars.iv7920, 3
  %i.dot = and i64 %i.dos, 536870911
  br i1 %i.dnx, label %.lr.ph7122.split.us.us.preheader, label %._crit_edge7123.us

.lr.ph7122.split.us.us.preheader:                 ; preds = %.preheader6431.us
  %i.dou = insertelement <8 x i64> poison, i64 %indvars.iv7920, i64 0
  %i.dov = shufflevector <8 x i64> %i.dou, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.dow = or disjoint <8 x i64> %i.dov, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %.lr.ph7122.split.us.us

.lr.ph7122.split.us.us:                           ; preds = %.lr.ph7122.split.us.us.preheader, %..loopexit6425_crit_edge.us.us
  %i.dox = phi i32 [ %i.dom, %.lr.ph7122.split.us.us.preheader ], [ %i.drs, %..loopexit6425_crit_edge.us.us ] ; 3 uses
  %indvars.iv7915 = phi i64 [ 0, %.lr.ph7122.split.us.us.preheader ], [ %indvars.iv.next7916, %..loopexit6425_crit_edge.us.us ] ; 3 uses
  %.161697120.us.us = phi <8 x float> [ %.061687133.us, %.lr.ph7122.split.us.us.preheader ], [ %.46172.us.us, %..loopexit6425_crit_edge.us.us ] ; 3 uses
  %.161747119.us.us = phi <8 x float> [ %.061737132.us, %.lr.ph7122.split.us.us.preheader ], [ %.46177.us.us, %..loopexit6425_crit_edge.us.us ] ; 3 uses
  %i.doy = trunc i64 %indvars.iv7915 to i32
  %i.doz = mul i32 %i.doj, %i.doy
  %.reass7127.us.us = add i32 %i.doz, %invariant.op7126 ; 3 uses
  %i.dpa = icmp slt i32 %.reass7127.us.us, 0
  br i1 %i.dpa, label %..loopexit6425_crit_edge.us.us, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph7122.split.us.us
  %i.dpb = srem i32 %.reass7127.us.us, %i.dnv
  %i.dpc = sdiv i32 %.reass7127.us.us, %i.dnv     ; 2 uses
  %.not2091.us.us = icmp eq i32 %i.dpb, 0
  %.not2092.us.us = icmp slt i32 %i.dpc, %i.bcj
  %or.cond8850 = select i1 %.not2091.us.us, i1 %.not2092.us.us, i1 false
  br i1 %or.cond8850, label %.preheader6424.us.us, label %..loopexit6425_crit_edge.us.us

.preheader6424.us.us:                             ; preds = %bb.bu
  %i.dpd = mul nuw nsw i64 %indvars.iv7915, %i.dok
  %i.dpe = sext i32 %i.dpc to i64                 ; 3 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.by, %.preheader6424.us.us
  %i.dpf = phi i32 [ %i.drr, %bb.by ], [ %i.dox, %.preheader6424.us.us ] ; 5 uses
  %indvars.iv7910 = phi i64 [ %indvars.iv.next7911, %bb.by ], [ 0, %.preheader6424.us.us ] ; 3 uses
  %.261707113.us.us = phi <8 x float> [ %.36171.us.us, %bb.by ], [ %.161697120.us.us, %.preheader6424.us.us ] ; 4 uses
  %.261757112.us.us = phi <8 x float> [ %.36176.us.us, %bb.by ], [ %.161747119.us.us, %.preheader6424.us.us ] ; 4 uses
  %i.dpg = trunc i64 %indvars.iv7910 to i32
  %i.dph = mul i32 %i.doi, %i.dpg
  %.reass7118.us.us = add i32 %i.dph, %invariant.op7117 ; 3 uses
  %i.dpi = icmp slt i32 %.reass7118.us.us, 0
  br i1 %i.dpi, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.dpj = srem i32 %.reass7118.us.us, %i.dnz
  %i.dpk = sdiv i32 %.reass7118.us.us, %i.dnz     ; 4 uses
  %.not2093.us.us = icmp eq i32 %i.dpj, 0
  %.not2094.us.us = icmp slt i32 %i.dpk, %i.bch
  %or.cond8851 = select i1 %.not2093.us.us, i1 %.not2094.us.us, i1 false
  br i1 %or.cond8851, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.dpl = add nuw nsw i64 %i.dpd, %indvars.iv7910
  %i.dpm = shl i64 %i.dpl, 4
  %i.dpn = and i64 %i.dpm, 4294967280
  %i.dpo = getelementptr inbounds nuw [4 x i8], ptr %.118677134.us, i64 %i.dpn ; 2 uses
  switch i32 %.fr7583, label %bb.by [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2175.us.us
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2174.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2172.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2172.us.us:                  ; preds = %bb.bx
  %i.dpp = load ptr, ptr %0, align 8, !tbaa !20, !noalias !1500
  %i.dpq = load i64, ptr %i.bcy, align 8, !tbaa !21, !noalias !1500
  %i.dpr = load i64, ptr %i.bcz, align 8, !tbaa !56, !noalias !1500 ; 2 uses
  %factor.op.mul.us.us = mul i64 %i.dpq, %i.dpr
  %i.dps = sext i32 %i.dpf to i64
  %i.dpt = mul nsw i64 %i.dps, %i.dpe
  %i.dpu = mul i64 %i.dpt, %i.dpr
  %invariant.gep.us.us = getelementptr i8, ptr %i.dpp, i64 %i.dpu
  %i.dpv = sext i32 %i.dpk to i64
  %invariant.gep7109.us.us = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.dpv
  %i.dpw = insertelement <8 x i64> poison, i64 %factor.op.mul.us.us, i64 0
  %i.dpx = shufflevector <8 x i64> %i.dpw, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.dpy = mul <8 x i64> %i.dpx, %i.dow
  %i.dpz = getelementptr i8, ptr %invariant.gep7109.us.us, <8 x i64> %i.dpy
  %i.dqa = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.dpz, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !39
  br label %.sink.split8413

_ZN4ncnn3MatD2Ev.exit2174.us.us:                  ; preds = %bb.bx
  %i.dqb = load i32, ptr %i.bcg, align 4, !tbaa !55, !noalias !1501 ; 2 uses
  %i.dqc = load ptr, ptr %0, align 8, !tbaa !20, !noalias !1501 ; 2 uses
  %i.dqd = load i64, ptr %i.bcy, align 8, !tbaa !21, !noalias !1501 ; 2 uses
  %i.dqe = mul i64 %i.dqd, %i.dop
  %i.dqf = load i64, ptr %i.bcz, align 8, !tbaa !56, !noalias !1501 ; 3 uses
  %i.dqg = mul i64 %i.dqe, %i.dqf
  %i.dqh = getelementptr inbounds nuw i8, ptr %i.dqc, i64 %i.dqg
  %i.dqi = sext i32 %i.dqb to i64
  %i.dqj = mul nsw i64 %i.dqi, %i.dpe
  %i.dqk = mul i64 %i.dqj, %i.dqf                 ; 2 uses
  %i.dql = getelementptr inbounds nuw i8, ptr %i.dqh, i64 %i.dqk
  %i.dqm = shl nsw i32 %i.dpk, 2
  %i.dqn = sext i32 %i.dqm to i64                 ; 2 uses
  %i.dqo = getelementptr inbounds [4 x i8], ptr %i.dql, i64 %i.dqn
  %i.dqp = mul i64 %i.dqd, %i.dor
  %i.dqq = mul i64 %i.dqp, %i.dqf
  %i.dqr = getelementptr inbounds nuw i8, ptr %i.dqc, i64 %i.dqq
  %i.dqs = getelementptr inbounds nuw i8, ptr %i.dqr, i64 %i.dqk
  %i.dqt = getelementptr inbounds [4 x i8], ptr %i.dqs, i64 %i.dqn
  %i.dqu = load <4 x float>, ptr %i.dqo, align 16, !tbaa !82
  %i.dqv = load <4 x float>, ptr %i.dqt, align 16, !tbaa !82
  %i.dqw = shufflevector <4 x float> %i.dqu, <4 x float> %i.dqv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %.sink.split8413

_ZN4ncnn3MatD2Ev.exit2175.us.us:                  ; preds = %bb.bx
  %i.dqx = load i32, ptr %i.bcg, align 4, !tbaa !55, !noalias !1502 ; 2 uses
  %i.dqy = load ptr, ptr %0, align 8, !tbaa !20, !noalias !1502
  %i.dqz = load i64, ptr %i.bcy, align 8, !tbaa !21, !noalias !1502
  %i.dra = mul i64 %i.dqz, %i.dot
  %i.drb = load i64, ptr %i.bcz, align 8, !tbaa !56, !noalias !1502 ; 2 uses
  %i.drc = mul i64 %i.dra, %i.drb
  %i.drd = getelementptr inbounds nuw i8, ptr %i.dqy, i64 %i.drc
  %i.dre = sext i32 %i.dqx to i64
  %i.drf = mul nsw i64 %i.dre, %i.dpe
  %i.drg = mul i64 %i.drf, %i.drb
  %i.drh = getelementptr inbounds nuw i8, ptr %i.drd, i64 %i.drg
  %i.dri = shl nsw i32 %i.dpk, 3
  %i.drj = sext i32 %i.dri to i64
  %i.drk = getelementptr inbounds [4 x i8], ptr %i.drh, i64 %i.drj
  %i.drl = load <8 x float>, ptr %i.drk, align 32, !tbaa !82
  br label %.sink.split8413

.sink.split8413:                                  ; preds = %_ZN4ncnn3MatD2Ev.exit2172.us.us, %_ZN4ncnn3MatD2Ev.exit2174.us.us, %_ZN4ncnn3MatD2Ev.exit2175.us.us
  %.sink8417 = phi <8 x float> [ %i.drl, %_ZN4ncnn3MatD2Ev.exit2175.us.us ], [ %i.dqw, %_ZN4ncnn3MatD2Ev.exit2174.us.us ], [ %i.dqa, %_ZN4ncnn3MatD2Ev.exit2172.us.us ] ; 2 uses
  %.ph = phi i32 [ %i.dqx, %_ZN4ncnn3MatD2Ev.exit2175.us.us ], [ %i.dqb, %_ZN4ncnn3MatD2Ev.exit2174.us.us ], [ %i.dpf, %_ZN4ncnn3MatD2Ev.exit2172.us.us ]
  %i.drm = load <8 x float>, ptr %i.dpo, align 32, !tbaa !82
  %i.drn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink8417, <8 x float> nofpclass(nan inf) %i.drm, <8 x float> nofpclass(nan inf) %.261757112.us.us)
  %i.dro = getelementptr inbounds nuw i8, ptr %i.dpo, i64 32
  %i.drp = load <8 x float>, ptr %i.dro, align 32, !tbaa !82
  %i.drq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink8417, <8 x float> nofpclass(nan inf) %i.drp, <8 x float> nofpclass(nan inf) %.261707113.us.us)
  br label %bb.by

bb.by:                                            ; preds = %.sink.split8413, %bb.bx, %bb.bw, %bb.bv
  %i.drr = phi i32 [ %i.dpf, %bb.bv ], [ %i.dpf, %bb.bx ], [ %i.dpf, %bb.bw ], [ %.ph, %.sink.split8413 ] ; 2 uses
  %.36176.us.us = phi nsz <8 x float> [ %.261757112.us.us, %bb.bv ], [ %.261757112.us.us, %bb.bx ], [ %.261757112.us.us, %bb.bw ], [ %i.drn, %.sink.split8413 ] ; 2 uses
  %.36171.us.us = phi nsz <8 x float> [ %.261707113.us.us, %bb.bv ], [ %.261707113.us.us, %bb.bx ], [ %.261707113.us.us, %bb.bw ], [ %i.drq, %.sink.split8413 ] ; 2 uses
  %indvars.iv.next7911 = add nuw nsw i64 %indvars.iv7910, 1 ; 2 uses
  %exitcond7914.not = icmp eq i64 %indvars.iv.next7911, %i.dok
  br i1 %exitcond7914.not, label %..loopexit6425_crit_edge.us.us, label %bb.bv, !llvm.loop !1399

..loopexit6425_crit_edge.us.us:                   ; preds = %bb.by, %bb.bu, %.lr.ph7122.split.us.us
  %i.drs = phi i32 [ %i.dox, %.lr.ph7122.split.us.us ], [ %i.dox, %bb.bu ], [ %i.drr, %bb.by ] ; 2 uses
  %.46177.us.us = phi nsz <8 x float> [ %.161747119.us.us, %.lr.ph7122.split.us.us ], [ %.161747119.us.us, %bb.bu ], [ %.36176.us.us, %bb.by ] ; 2 uses
  %.46172.us.us = phi nsz <8 x float> [ %.161697120.us.us, %.lr.ph7122.split.us.us ], [ %.161697120.us.us, %bb.bu ], [ %.36171.us.us, %bb.by ] ; 2 uses
  %indvars.iv.next7916 = add nuw nsw i64 %indvars.iv7915, 1 ; 2 uses
  %exitcond7919.not = icmp eq i64 %indvars.iv.next7916, %wide.trip.count7918
  br i1 %exitcond7919.not, label %._crit_edge7123.us, label %.lr.ph7122.split.us.us, !llvm.loop !1400

._crit_edge7123.us:                               ; preds = %..loopexit6425_crit_edge.us.us, %.preheader6431.us
  %i.drt = phi i32 [ %i.dom, %.preheader6431.us ], [ %i.drs, %..loopexit6425_crit_edge.us.us ] ; 2 uses
  %.us-phi7129.us = phi <8 x float> [ %.061737132.us, %.preheader6431.us ], [ %.46177.us.us, %..loopexit6425_crit_edge.us.us ] ; 2 uses
  %.us-phi7130.us = phi <8 x float> [ %.061687133.us, %.preheader6431.us ], [ %.46172.us.us, %..loopexit6425_crit_edge.us.us ] ; 2 uses
  %i.dru = getelementptr inbounds [4 x i8], ptr %.118677134.us, i64 %i.dhb ; 2 uses
  %indvars.iv.next7921 = add nuw nsw i64 %indvars.iv7920, 8 ; 3 uses
  %i.drv = trunc i64 %indvars.iv.next7921 to i32
  %i.drw = or i32 %i.drv, 7
  %i.drx = icmp slt i32 %i.drw, %i.bcf
  br i1 %i.drx, label %.preheader6431.us, label %._crit_edge7138.loopexit, !llvm.loop !1401

._crit_edge7138.loopexit:                         ; preds = %._crit_edge7123.us
  %i.dry = trunc nuw i64 %indvars.iv.next7921 to i32
  br label %._crit_edge7138

._crit_edge7138:                                  ; preds = %.preheader6431.preheader, %._crit_edge7138.loopexit, %._crit_edge7093
  %i.drz = phi i32 [ %i.dnf, %._crit_edge7093 ], [ %i.drt, %._crit_edge7138.loopexit ], [ %i.dnf, %.preheader6431.preheader ] ; 4 uses
  %.06173.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge7093 ], [ %.us-phi7129.us, %._crit_edge7138.loopexit ], [ zeroinitializer, %.preheader6431.preheader ] ; 2 uses
  %.06168.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge7093 ], [ %.us-phi7130.us, %._crit_edge7138.loopexit ], [ zeroinitializer, %.preheader6431.preheader ] ; 2 uses
  %.11867.lcssa = phi ptr [ %.01866.lcssa, %._crit_edge7093 ], [ %i.dru, %._crit_edge7138.loopexit ], [ %scevgep7905, %.preheader6431.preheader ] ; 4 uses
  %.11862.lcssa = phi i32 [ %.01861.lcssa, %._crit_edge7093 ], [ %i.dry, %._crit_edge7138.loopexit ], [ %i.doh, %.preheader6431.preheader ] ; 7 uses
  %i.dsa = shufflevector <8 x float> %.06173.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dsb = shufflevector <8 x float> %.06173.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dsc = fadd fast <4 x float> %i.dsa, %i.dsb   ; 4 uses
  %i.dsd = shufflevector <8 x float> %.06168.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dse = shufflevector <8 x float> %.06168.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dsf = fadd fast <4 x float> %i.dsd, %i.dse   ; 4 uses
  %i.dsg = or disjoint i32 %.11862.lcssa, 3
  %i.dsh = icmp slt i32 %i.dsg, %i.bcf
  br i1 %i.dsh, label %.preheader6430.lr.ph, label %._crit_edge7208

.preheader6430.lr.ph:                             ; preds = %._crit_edge7138
  %i.dsi = load i32, ptr %i.d, align 4
  %i.dsj = load i32, ptr %i.j, align 4
  %invariant.op7188 = sub i32 %.neg6358, %i.dsj
  %i.dsk = load i32, ptr %i.f, align 4            ; 2 uses
  %i.dsl = load i32, ptr %i.a, align 4
  %.fr7586 = freeze i32 %i.dsl                    ; 2 uses
  %i.dsm = load i32, ptr %i.c, align 4            ; 2 uses
  %i.dsn = load i32, ptr %i.i, align 4
  %.neg6352 = add nuw nsw i32 %.019037317, 1
  %invariant.op7162 = sub i32 %.neg6352, %i.dsn   ; 2 uses
  %i.dso = load i32, ptr %i.e, align 4            ; 4 uses
  br i1 %i.dgw, label %.preheader6430.lr.ph.split.us, label %.preheader6430.preheader

.preheader6430.preheader:                         ; preds = %.preheader6430.lr.ph
  %i.dsp = sub i32 %i.bdo, %.11862.lcssa          ; 2 uses
  %i.dsq = and i32 %i.dsp, -4
  %i.dsr = zext i32 %i.dsq to i64
  %i.dss = add nuw nsw i64 %i.dsr, 4
  %i.dst = mul nsw i64 %i.dss, %i.dhd
  %scevgep7923 = getelementptr i8, ptr %.11867.lcssa, i64 %i.dst
  %i.dsu = add i32 %.11862.lcssa, 4
  %i.dsv = and i32 %i.dsp, -4
  %i.dsw = add i32 %i.dsu, %i.dsv
  br label %._crit_edge7208

.preheader6430.lr.ph.split.us:                    ; preds = %.preheader6430.lr.ph
  %i.dsx = icmp sgt i32 %.fr7586, 0
  br i1 %i.dsx, label %.preheader6430.us.us.preheader, label %.preheader6430.us.preheader

.preheader6430.us.preheader:                      ; preds = %.preheader6430.lr.ph.split.us
  %i.dsy = sub i32 %i.bdo, %.11862.lcssa          ; 2 uses
  %i.dsz = and i32 %i.dsy, -4
  %i.dta = zext i32 %i.dsz to i64
  %i.dtb = add nuw nsw i64 %i.dta, 4
  %i.dtc = mul nsw i64 %i.dtb, %i.dhd
  %scevgep7924 = getelementptr i8, ptr %.11867.lcssa, i64 %i.dtc
  %i.dtd = add i32 %.11862.lcssa, 4
  %i.dte = and i32 %i.dsy, -4
  %i.dtf = add i32 %i.dtd, %i.dte
  br label %._crit_edge7208

.preheader6430.us.us.preheader:                   ; preds = %.preheader6430.lr.ph.split.us
  %i.dtg = zext nneg i32 %.fr7586 to i64          ; 3 uses
  %i.dth = zext i32 %.11862.lcssa to i64
  br label %.preheader6430.us.us

.preheader6430.us.us:                             ; preds = %.preheader6430.us.us.preheader, %._crit_edge7185.split.us.us.us
  %i.dti = phi i32 [ %i.drz, %.preheader6430.us.us.preheader ], [ %i.dwe, %._crit_edge7185.split.us.us.us ]
  %indvars.iv7944 = phi i64 [ %i.dth, %.preheader6430.us.us.preheader ], [ %indvars.iv.next7945, %._crit_edge7185.split.us.us.us ] ; 3 uses
  %.218687204.us.us = phi ptr [ %.11867.lcssa, %.preheader6430.us.us.preheader ], [ %i.dwf, %._crit_edge7185.split.us.us.us ] ; 3 uses
  %.061587203.us.us = phi <4 x float> [ zeroinitializer, %.preheader6430.us.us.preheader ], [ %.46162.us.us.us, %._crit_edge7185.split.us.us.us ]
  %.061637202.us.us = phi <4 x float> [ zeroinitializer, %.preheader6430.us.us.preheader ], [ %.46167.us.us.us, %._crit_edge7185.split.us.us.us ]
  %i.dtj = lshr exact i64 %indvars.iv7944, 2
  %i.dtk = and i64 %i.dtj, 1073741823
  %i.dtl = insertelement <4 x i64> poison, i64 %indvars.iv7944, i64 0
  %i.dtm = shufflevector <4 x i64> %i.dtl, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.dtn = or disjoint <4 x i64> %i.dtm, <i64 0, i64 1, i64 2, i64 3>
  br label %bb.bz

bb.bz:                                            ; preds = %..loopexit6423_crit_edge.us.us.us, %.preheader6430.us.us
  %i.dto = phi i32 [ %i.dwe, %..loopexit6423_crit_edge.us.us.us ], [ %i.dti, %.preheader6430.us.us ] ; 5 uses
  %indvars.iv7939 = phi i64 [ %indvars.iv.next7940, %..loopexit6423_crit_edge.us.us.us ], [ 0, %.preheader6430.us.us ] ; 3 uses
  %.161597182.us.us.us = phi <4 x float> [ %.46162.us.us.us, %..loopexit6423_crit_edge.us.us.us ], [ %.061587203.us.us, %.preheader6430.us.us ] ; 5 uses
  %.161647181.us.us.us = phi <4 x float> [ %.46167.us.us.us, %..loopexit6423_crit_edge.us.us.us ], [ %.061637202.us.us, %.preheader6430.us.us ] ; 5 uses
  %i.dtp = trunc i64 %indvars.iv7939 to i32
  %i.dtq = mul i32 %i.dsi, %i.dtp
  %.reass.us7189.us.us = add i32 %i.dtq, %invariant.op7188 ; 3 uses
  %i.dtr = icmp slt i32 %.reass.us7189.us.us, 0
  br i1 %i.dtr, label %..loopexit6423_crit_edge.us.us.us, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.dts = srem i32 %.reass.us7189.us.us, %i.dsk
  %i.dtt = sdiv i32 %.reass.us7189.us.us, %i.dsk  ; 2 uses
  %.not2087.us.us.us = icmp eq i32 %i.dts, 0
  %.not2088.us.us.us = icmp slt i32 %i.dtt, %i.bcj
  %or.cond8852 = select i1 %.not2087.us.us.us, i1 %.not2088.us.us.us, i1 false
  br i1 %or.cond8852, label %.preheader6422.us.us.us, label %..loopexit6423_crit_edge.us.us.us

.preheader6422.us.us.us:                          ; preds = %bb.ca
  %i.dtu = mul nuw nsw i64 %indvars.iv7939, %i.dtg ; 2 uses
  %i.dtv = sext i32 %i.dtt to i64                 ; 2 uses
  switch i32 %.fr7583, label %..loopexit6423_crit_edge.us.us.us [
    i32 4, label %.lr.ph.split.us.us.us7220.us
    i32 1, label %.lr.ph.split.us7166.us.us.us
  ]

.lr.ph.split.us7166.us.us.us:                     ; preds = %.preheader6422.us.us.us, %bb.cc
  %i.dtw = phi i32 [ %i.duy, %bb.cc ], [ %i.dto, %.preheader6422.us.us.us ] ; 2 uses
  %indvars.iv7929 = phi i64 [ %indvars.iv.next7930, %bb.cc ], [ 0, %.preheader6422.us.us.us ] ; 3 uses
  %.261607158.us7168.us.us.us = phi <4 x float> [ %.36161.us7175.us.us.us, %bb.cc ], [ %.161597182.us.us.us, %.preheader6422.us.us.us ] ; 3 uses
  %.261657157.us7169.us.us.us = phi <4 x float> [ %.36166.us7174.us.us.us, %bb.cc ], [ %.161647181.us.us.us, %.preheader6422.us.us.us ] ; 3 uses
  %i.dtx = trunc i64 %indvars.iv7929 to i32
  %i.dty = mul i32 %i.dsm, %i.dtx
  %.reass7163.us7170.us.us.us = add i32 %i.dty, %invariant.op7162 ; 3 uses
  %i.dtz = icmp slt i32 %.reass7163.us7170.us.us.us, 0
  br i1 %i.dtz, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.split.us7166.us.us.us
  %i.dua = srem i32 %.reass7163.us7170.us.us.us, %i.dso
  %i.dub = sdiv i32 %.reass7163.us7170.us.us.us, %i.dso ; 2 uses
  %.not2089.us7171.us.us.us = icmp eq i32 %i.dua, 0
  %.not2090.us7172.us.us.us = icmp slt i32 %i.dub, %i.bch
  %or.cond8853 = select i1 %.not2089.us7171.us.us.us, i1 %.not2090.us7172.us.us.us, i1 false
  br i1 %or.cond8853, label %_ZN4ncnn3MatD2Ev.exit2170.us.us.us.us, label %bb.cc

_ZN4ncnn3MatD2Ev.exit2170.us.us.us.us:            ; preds = %bb.cb
  %i.duc = load i32, ptr %i.bcg, align 4, !tbaa !55, !noalias !1503 ; 2 uses
  %i.dud = load ptr, ptr %0, align 8, !tbaa !20, !noalias !1503
  %i.due = load i64, ptr %i.bcy, align 8, !tbaa !21, !noalias !1503
  %i.duf = load i64, ptr %i.bcz, align 8, !tbaa !56, !noalias !1503 ; 2 uses
  %factor.op.mul.us.us7190.us.us = mul i64 %i.due, %i.duf
  %i.dug = sext i32 %i.duc to i64
  %i.duh = mul nsw i64 %i.dug, %i.dtv
  %i.dui = mul i64 %i.duh, %i.duf
  %invariant.gep.us.us7191.us.us = getelementptr i8, ptr %i.dud, i64 %i.dui
  %i.duj = sext i32 %i.dub to i64
  %invariant.gep7154.us.us.us.us = getelementptr [4 x i8], ptr %invariant.gep.us.us7191.us.us, i64 %i.duj
  %i.duk = insertelement <4 x i64> poison, i64 %factor.op.mul.us.us7190.us.us, i64 0
  %i.dul = shufflevector <4 x i64> %i.duk, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.dum = mul <4 x i64> %i.dul, %i.dtn
  %i.dun = getelementptr i8, ptr %invariant.gep7154.us.us.us.us, <4 x i64> %i.dum
  %i.duo = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.dun, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !39 ; 2 uses
  %i.dup = add nuw nsw i64 %i.dtu, %indvars.iv7929
  %i.duq = shl i64 %i.dup, 3
  %i.dur = and i64 %i.duq, 4294967288
  %i.dus = getelementptr inbounds nuw [4 x i8], ptr %.218687204.us.us, i64 %i.dur ; 2 uses
  %i.dut = load <4 x float>, ptr %i.dus, align 16, !tbaa !82
  %i.duu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.duo, <4 x float> nofpclass(nan inf) %i.dut, <4 x float> nofpclass(nan inf) %.261657157.us7169.us.us.us)
  %i.duv = getelementptr inbounds nuw i8, ptr %i.dus, i64 16
  %i.duw = load <4 x float>, ptr %i.duv, align 16, !tbaa !82
  %i.dux = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.duo, <4 x float> nofpclass(nan inf) %i.duw, <4 x float> nofpclass(nan inf) %.261607158.us7168.us.us.us)
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2170.us.us.us.us, %bb.cb, %.lr.ph.split.us7166.us.us.us
  %i.duy = phi i32 [ %i.dtw, %.lr.ph.split.us7166.us.us.us ], [ %i.duc, %_ZN4ncnn3MatD2Ev.exit2170.us.us.us.us ], [ %i.dtw, %bb.cb ] ; 2 uses
  %.36166.us7174.us.us.us = phi nsz <4 x float> [ %.261657157.us7169.us.us.us, %.lr.ph.split.us7166.us.us.us ], [ %i.duu, %_ZN4ncnn3MatD2Ev.exit2170.us.us.us.us ], [ %.261657157.us7169.us.us.us, %bb.cb ] ; 2 uses
  %.36161.us7175.us.us.us = phi nsz <4 x float> [ %.261607158.us7168.us.us.us, %.lr.ph.split.us7166.us.us.us ], [ %i.dux, %_ZN4ncnn3MatD2Ev.exit2170.us.us.us.us ], [ %.261607158.us7168.us.us.us, %bb.cb ] ; 2 uses
  %indvars.iv.next7930 = add nuw nsw i64 %indvars.iv7929, 1 ; 2 uses
  %exitcond7933.not = icmp eq i64 %indvars.iv.next7930, %i.dtg
  br i1 %exitcond7933.not, label %..loopexit6423_crit_edge.us.us.us, label %.lr.ph.split.us7166.us.us.us, !llvm.loop !1404

.lr.ph.split.us.us.us7220.us:                     ; preds = %.preheader6422.us.us.us, %bb.ce
  %i.duz = phi i32 [ %i.dwd, %bb.ce ], [ %i.dto, %.preheader6422.us.us.us ] ; 2 uses
  %indvars.iv7934 = phi i64 [ %indvars.iv.next7935, %bb.ce ], [ 0, %.preheader6422.us.us.us ] ; 3 uses
  %.261607158.us.us.us.us = phi <4 x float> [ %.36161.us.us.us.us, %bb.ce ], [ %.161597182.us.us.us, %.preheader6422.us.us.us ] ; 3 uses
  %.261657157.us.us.us.us = phi <4 x float> [ %.36166.us.us.us.us, %bb.ce ], [ %.161647181.us.us.us, %.preheader6422.us.us.us ] ; 3 uses
  %i.dva = trunc i64 %indvars.iv7934 to i32
  %i.dvb = mul i32 %i.dsm, %i.dva
  %.reass7163.us.us.us.us = add i32 %i.dvb, %invariant.op7162 ; 3 uses
  %i.dvc = icmp slt i32 %.reass7163.us.us.us.us, 0
  br i1 %i.dvc, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.split.us.us.us7220.us
  %i.dvd = srem i32 %.reass7163.us.us.us.us, %i.dso
  %i.dve = sdiv i32 %.reass7163.us.us.us.us, %i.dso ; 2 uses
  %.not2089.us.us.us.us = icmp eq i32 %i.dvd, 0
  %.not2090.us.us.us.us = icmp slt i32 %i.dve, %i.bch
  %or.cond8854 = select i1 %.not2089.us.us.us.us, i1 %.not2090.us.us.us.us, i1 false
  br i1 %or.cond8854, label %_ZN4ncnn3MatD2Ev.exit2171.us.us.us.us, label %bb.ce

_ZN4ncnn3MatD2Ev.exit2171.us.us.us.us:            ; preds = %bb.cd
  %i.dvf = add nuw nsw i64 %i.dtu, %indvars.iv7934
  %i.dvg = shl i64 %i.dvf, 3
  %i.dvh = and i64 %i.dvg, 4294967288
  %i.dvi = getelementptr inbounds nuw [4 x i8], ptr %.218687204.us.us, i64 %i.dvh ; 2 uses
  %i.dvj = load i32, ptr %i.bcg, align 4, !tbaa !55, !noalias !1504 ; 2 uses
  %i.dvk = load ptr, ptr %0, align 8, !tbaa !20, !noalias !1504
  %i.dvl = load i64, ptr %i.bcy, align 8, !tbaa !21, !noalias !1504
  %i.dvm = mul i64 %i.dvl, %i.dtk
  %i.dvn = load i64, ptr %i.bcz, align 8, !tbaa !56, !noalias !1504 ; 2 uses
  %i.dvo = mul i64 %i.dvm, %i.dvn
  %i.dvp = getelementptr inbounds nuw i8, ptr %i.dvk, i64 %i.dvo
  %i.dvq = sext i32 %i.dvj to i64
  %i.dvr = mul nsw i64 %i.dvq, %i.dtv
  %i.dvs = mul i64 %i.dvr, %i.dvn
  %i.dvt = getelementptr inbounds nuw i8, ptr %i.dvp, i64 %i.dvs
  %i.dvu = shl nsw i32 %i.dve, 2
  %i.dvv = sext i32 %i.dvu to i64
  %i.dvw = getelementptr inbounds [4 x i8], ptr %i.dvt, i64 %i.dvv
  %i.dvx = load <4 x float>, ptr %i.dvw, align 16, !tbaa !82 ; 2 uses
  %i.dvy = load <4 x float>, ptr %i.dvi, align 16, !tbaa !82
  %i.dvz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dvx, <4 x float> nofpclass(nan inf) %i.dvy, <4 x float> nofpclass(nan inf) %.261657157.us.us.us.us)
  %i.dwa = getelementptr inbounds nuw i8, ptr %i.dvi, i64 16
  %i.dwb = load <4 x float>, ptr %i.dwa, align 16, !tbaa !82
  %i.dwc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dvx, <4 x float> nofpclass(nan inf) %i.dwb, <4 x float> nofpclass(nan inf) %.261607158.us.us.us.us)
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2171.us.us.us.us, %bb.cd, %.lr.ph.split.us.us.us7220.us
  %i.dwd = phi i32 [ %i.duz, %.lr.ph.split.us.us.us7220.us ], [ %i.duz, %bb.cd ], [ %i.dvj, %_ZN4ncnn3MatD2Ev.exit2171.us.us.us.us ] ; 2 uses
  %.36166.us.us.us.us = phi nsz <4 x float> [ %.261657157.us.us.us.us, %.lr.ph.split.us.us.us7220.us ], [ %.261657157.us.us.us.us, %bb.cd ], [ %i.dvz, %_ZN4ncnn3MatD2Ev.exit2171.us.us.us.us ] ; 2 uses
  %.36161.us.us.us.us = phi nsz <4 x float> [ %.261607158.us.us.us.us, %.lr.ph.split.us.us.us7220.us ], [ %.261607158.us.us.us.us, %bb.cd ], [ %i.dwc, %_ZN4ncnn3MatD2Ev.exit2171.us.us.us.us ] ; 2 uses
  %indvars.iv.next7935 = add nuw nsw i64 %indvars.iv7934, 1 ; 2 uses
  %exitcond7938.not = icmp eq i64 %indvars.iv.next7935, %i.dtg
  br i1 %exitcond7938.not, label %..loopexit6423_crit_edge.us.us.us, label %.lr.ph.split.us.us.us7220.us, !llvm.loop !1404

..loopexit6423_crit_edge.us.us.us:                ; preds = %bb.cc, %bb.ce, %.preheader6422.us.us.us, %bb.ca, %bb.bz
  %i.dwe = phi i32 [ %i.dto, %bb.bz ], [ %i.dto, %bb.ca ], [ %i.dwd, %bb.ce ], [ %i.dto, %.preheader6422.us.us.us ], [ %i.duy, %bb.cc ] ; 3 uses
  %.46167.us.us.us = phi nsz <4 x float> [ %.161647181.us.us.us, %bb.bz ], [ %.161647181.us.us.us, %bb.ca ], [ %.36166.us.us.us.us, %bb.ce ], [ %.161647181.us.us.us, %.preheader6422.us.us.us ], [ %.36166.us7174.us.us.us, %bb.cc ] ; 3 uses
  %.46162.us.us.us = phi nsz <4 x float> [ %.161597182.us.us.us, %bb.bz ], [ %.161597182.us.us.us, %bb.ca ], [ %.36161.us.us.us.us, %bb.ce ], [ %.161597182.us.us.us, %.preheader6422.us.us.us ], [ %.36161.us7175.us.us.us, %bb.cc ] ; 3 uses
  %indvars.iv.next7940 = add nuw nsw i64 %indvars.iv7939, 1 ; 2 uses
  %exitcond7943.not = icmp eq i64 %indvars.iv.next7940, %wide.trip.count7942
  br i1 %exitcond7943.not, label %._crit_edge7185.split.us.us.us, label %bb.bz, !llvm.loop !1407

._crit_edge7185.split.us.us.us:                   ; preds = %..loopexit6423_crit_edge.us.us.us
  %i.dwf = getelementptr inbounds [4 x i8], ptr %.218687204.us.us, i64 %i.dhd ; 2 uses
  %indvars.iv.next7945 = add nuw nsw i64 %indvars.iv7944, 4 ; 3 uses
  %i.dwg = trunc i64 %indvars.iv.next7945 to i32
  %i.dwh = or i32 %i.dwg, 3
  %i.dwi = icmp slt i32 %i.dwh, %i.bcf
  br i1 %i.dwi, label %.preheader6430.us.us, label %._crit_edge7208.loopexit, !llvm.loop !1408

._crit_edge7208.loopexit:                         ; preds = %._crit_edge7185.split.us.us.us
  %i.dwj = trunc nuw i64 %indvars.iv.next7945 to i32
  br label %._crit_edge7208

._crit_edge7208:                                  ; preds = %.preheader6430.preheader, %.preheader6430.us.preheader, %._crit_edge7208.loopexit, %._crit_edge7138
  %i.dwk = phi i32 [ %i.drz, %._crit_edge7138 ], [ %i.dwe, %._crit_edge7208.loopexit ], [ %i.drz, %.preheader6430.us.preheader ], [ %i.drz, %.preheader6430.preheader ] ; 3 uses
  %.06163.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge7138 ], [ %.46167.us.us.us, %._crit_edge7208.loopexit ], [ zeroinitializer, %.preheader6430.us.preheader ], [ zeroinitializer, %.preheader6430.preheader ] ; 4 uses
  %.06158.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge7138 ], [ %.46162.us.us.us, %._crit_edge7208.loopexit ], [ zeroinitializer, %.preheader6430.us.preheader ], [ zeroinitializer, %.preheader6430.preheader ] ; 4 uses
  %.21868.lcssa = phi ptr [ %.11867.lcssa, %._crit_edge7138 ], [ %i.dwf, %._crit_edge7208.loopexit ], [ %scevgep7924, %.preheader6430.us.preheader ], [ %scevgep7923, %.preheader6430.preheader ] ; 3 uses
  %.21863.lcssa = phi i32 [ %.11862.lcssa, %._crit_edge7138 ], [ %i.dwj, %._crit_edge7208.loopexit ], [ %i.dtf, %.preheader6430.us.preheader ], [ %i.dsw, %.preheader6430.preheader ] ; 5 uses
  %13 = shufflevector <4 x float> %i.dnl, <4 x float> %i.dnr, <2 x i32> <i32 3, i32 7>
  %i.dwl = shufflevector <4 x float> %i.dnl, <4 x float> %i.dnr, <2 x i32> <i32 1, i32 5>
  %i.dwm = fadd fast <2 x float> %13, %i.dwl
  %14 = fadd fast <2 x float> %i.dwm, %i.dhl
  %15 = shufflevector <4 x float> %i.dnl, <4 x float> %i.dnr, <2 x i32> <i32 2, i32 6>
  %i.dwn = shufflevector <4 x float> %i.dnl, <4 x float> %i.dnr, <2 x i32> <i32 0, i32 4>
  %16 = fadd fast <2 x float> %15, %i.dwn
  %i.dwo = fadd fast <2 x float> %14, %16
  %17 = shufflevector <4 x float> %i.dsc, <4 x float> %i.dsf, <2 x i32> <i32 3, i32 7>
  %i.dwp = shufflevector <4 x float> %i.dsc, <4 x float> %i.dsf, <2 x i32> <i32 1, i32 5>
  %18 = fadd fast <2 x float> %17, %i.dwp
  %i.dwq = fadd fast <2 x float> %i.dwo, %18
  %19 = shufflevector <4 x float> %i.dsc, <4 x float> %i.dsf, <2 x i32> <i32 2, i32 6>
  %i.dwr = shufflevector <4 x float> %i.dsc, <4 x float> %i.dsf, <2 x i32> <i32 0, i32 4>
  %20 = fadd fast <2 x float> %19, %i.dwr
  %i.dws = fadd fast <2 x float> %i.dwq, %20
  %21 = shufflevector <4 x float> %.06163.lcssa, <4 x float> %.06158.lcssa, <2 x i32> <i32 3, i32 7>
  %i.dwt = shufflevector <4 x float> %.06163.lcssa, <4 x float> %.06158.lcssa, <2 x i32> <i32 1, i32 5>
  %22 = fadd fast <2 x float> %21, %i.dwt
  %i.dwu = fadd fast <2 x float> %i.dws, %22
  %23 = shufflevector <4 x float> %.06163.lcssa, <4 x float> %.06158.lcssa, <2 x i32> <i32 2, i32 6>
  %i.dwv = shufflevector <4 x float> %.06163.lcssa, <4 x float> %.06158.lcssa, <2 x i32> <i32 0, i32 4>
  %24 = fadd fast <2 x float> %23, %i.dwv
  %i.dww = fadd fast <2 x float> %i.dwu, %24      ; 3 uses
  %i.dwx = or disjoint i32 %.21863.lcssa, 1
  %i.dwy = icmp slt i32 %i.dwx, %i.bcf
  br i1 %i.dwy, label %.preheader6429.lr.ph, label %.preheader6433

.preheader6429.lr.ph:                             ; preds = %._crit_edge7208
  %i.dwz = load i32, ptr %i.j, align 4
  %invariant.op7248 = sub i32 %.neg6358, %i.dwz
  %i.dxa = load i32, ptr %i.f, align 4            ; 2 uses
  %i.dxb = load i32, ptr %i.a, align 4
  %.fr7587 = freeze i32 %i.dxb                    ; 3 uses
  %i.dxc = icmp sgt i32 %.fr7587, 0
  %i.dxd = load i32, ptr %i.i, align 4
  %.neg6348 = add nuw nsw i32 %.019037317, 1
  %invariant.op7239 = sub i32 %.neg6348, %i.dxd   ; 2 uses
  %i.dxe = load i32, ptr %i.e, align 4            ; 3 uses
  br i1 %i.dgw, label %.preheader6429.us.preheader, label %.preheader6429.preheader

.preheader6429.preheader:                         ; preds = %.preheader6429.lr.ph
  %i.dxf = sub i32 %i.bdp, %.21863.lcssa          ; 2 uses
  %i.dxg = lshr i32 %i.dxf, 1
  %i.dxh = zext nneg i32 %i.dxg to i64
  %i.dxi = shl nuw nsw i64 %i.dxh, 2
  %i.dxj = add nuw nsw i64 %i.dxi, 4
  %i.dxk = mul i64 %i.dxj, %i.dhf
  %scevgep7947 = getelementptr i8, ptr %.21868.lcssa, i64 %i.dxk
  %i.dxl = add i32 %.21863.lcssa, 2
  %i.dxm = and i32 %i.dxf, -2
  %i.dxn = add i32 %i.dxl, %i.dxm
  br label %.preheader6433

.preheader6429.us.preheader:                      ; preds = %.preheader6429.lr.ph
  %i.dxo = load i32, ptr %i.c, align 4            ; 2 uses
  %i.dxp = load i32, ptr %i.d, align 4
  %i.dxq = zext i32 %.fr7587 to i64               ; 4 uses
  %i.dxr = zext i32 %.21863.lcssa to i64
  %min.iters.check8517 = icmp ult i32 %.fr7587, 16
  %n.vec8519 = and i64 %i.dxq, 2147483640         ; 3 uses
  %broadcast.splatinsert8524 = insertelement <8 x i32> poison, i32 %i.dxo, i64 0
  %broadcast.splat8525 = shufflevector <8 x i32> %broadcast.splatinsert8524, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert8526 = insertelement <8 x i32> poison, i32 %invariant.op7239, i64 0
  %broadcast.splat8527 = shufflevector <8 x i32> %broadcast.splatinsert8526, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert8528 = insertelement <8 x i32> poison, i32 %i.dxe, i64 0
  %broadcast.splat8529 = shufflevector <8 x i32> %broadcast.splatinsert8528, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n8577 = icmp eq i64 %n.vec8519, %i.dxq
  br label %.preheader6429.us

.preheader6429.us:                                ; preds = %.preheader6429.us.preheader, %._crit_edge7245.us
  %i.dxs = phi i32 [ %i.dwk, %.preheader6429.us.preheader ], [ %i.ebd, %._crit_edge7245.us ] ; 2 uses
  %indvars.iv7961 = phi i64 [ %i.dxr, %.preheader6429.us.preheader ], [ %indvars.iv.next7962, %._crit_edge7245.us ] ; 4 uses
  %.318697256.us = phi ptr [ %.21868.lcssa, %.preheader6429.us.preheader ], [ %i.ebf, %._crit_edge7245.us ] ; 3 uses
  %i.dxt = phi <2 x float> [ %i.dww, %.preheader6429.us.preheader ], [ %i.ebe, %._crit_edge7245.us ] ; 2 uses
  br i1 %i.dxc, label %.lr.ph7244.split.us.us.preheader, label %._crit_edge7245.us

.lr.ph7244.split.us.us.preheader:                 ; preds = %.preheader6429.us
  %i.dxu = or disjoint i64 %indvars.iv7961, 1     ; 2 uses
  %broadcast.splatinsert8540 = insertelement <8 x i64> poison, i64 %indvars.iv7961, i64 0
  %broadcast.splat8541 = shufflevector <8 x i64> %broadcast.splatinsert8540, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert8542 = insertelement <8 x i64> poison, i64 %i.dxu, i64 0
  %broadcast.splat8543 = shufflevector <8 x i64> %broadcast.splatinsert8542, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %.lr.ph7244.split.us.us

.lr.ph7244.split.us.us:                           ; preds = %.lr.ph7244.split.us.us.preheader, %..loopexit6421_crit_edge.us.us
  %i.dxv = phi i32 [ %i.dxs, %.lr.ph7244.split.us.us.preheader ], [ %i.ebb, %..loopexit6421_crit_edge.us.us ] ; 5 uses
  %indvars.iv7956 = phi i64 [ 0, %.lr.ph7244.split.us.us.preheader ], [ %indvars.iv.next7957, %..loopexit6421_crit_edge.us.us ] ; 3 uses
  %i.dxw = phi <2 x float> [ %i.dxt, %.lr.ph7244.split.us.us.preheader ], [ %i.ebc, %..loopexit6421_crit_edge.us.us ] ; 4 uses
  %i.dxx = trunc i64 %indvars.iv7956 to i32
  %i.dxy = mul i32 %i.dxp, %i.dxx
  %.reass7249.us.us = add i32 %i.dxy, %invariant.op7248 ; 3 uses
  %i.dxz = icmp slt i32 %.reass7249.us.us, 0
  br i1 %i.dxz, label %..loopexit6421_crit_edge.us.us, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph7244.split.us.us
  %i.dya = srem i32 %.reass7249.us.us, %i.dxa
  %i.dyb = sdiv i32 %.reass7249.us.us, %i.dxa     ; 2 uses
  %.not2083.us.us = icmp eq i32 %i.dya, 0
  %.not2084.us.us = icmp slt i32 %i.dyb, %i.bcj
  %or.cond8855 = select i1 %.not2083.us.us, i1 %.not2084.us.us, i1 false
  br i1 %or.cond8855, label %.preheader6420.us.us, label %..loopexit6421_crit_edge.us.us

.preheader6420.us.us:                             ; preds = %bb.cf
  %i.dyc = mul nuw nsw i64 %indvars.iv7956, %i.dxq ; 2 uses
  %i.dyd = sext i32 %i.dyb to i64                 ; 2 uses
  br i1 %min.iters.check8517, label %scalar.ph8516.preheader, label %vector.ph8518

vector.ph8518:                                    ; preds = %.preheader6420.us.us
  %i.dye = shufflevector <2 x float> %i.dxw, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.dyf = shufflevector <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x float> %i.dye, <8 x i32> <i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dyg = shufflevector <8 x float> %i.dye, <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %broadcast.splatinsert8520 = insertelement <8 x i64> poison, i64 %i.dyc, i64 0
  %broadcast.splat8521 = shufflevector <8 x i64> %broadcast.splatinsert8520, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert8522 = insertelement <8 x i64> poison, i64 %i.dyd, i64 0
  %broadcast.splat8523 = shufflevector <8 x i64> %broadcast.splatinsert8522, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert8544 = insertelement <8 x i32> poison, i32 %i.dxv, i64 0
  %broadcast.splat8545 = shufflevector <8 x i32> %broadcast.splatinsert8544, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body8546

vector.body8546:                                  ; preds = %vector.body8546, %vector.ph8518
  %index8547 = phi i64 [ 0, %vector.ph8518 ], [ %index.next8573, %vector.body8546 ]
  %vec.phi8548 = phi <8 x i32> [ %broadcast.splat8545, %vector.ph8518 ], [ %i.dzm, %vector.body8546 ]
  %i.dyh = phi <8 x i1> [ zeroinitializer, %vector.ph8518 ], [ %i.dzl, %vector.body8546 ]
  %vec.ind8549 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph8518 ], [ %vec.ind.next8574, %vector.body8546 ] ; 2 uses
  %vec.phi8550 = phi <8 x float> [ %i.dyf, %vector.ph8518 ], [ %predphi8572, %vector.body8546 ] ; 2 uses
  %vec.phi8551 = phi <8 x float> [ %i.dyg, %vector.ph8518 ], [ %predphi8571, %vector.body8546 ] ; 2 uses
  %vec.ind8552 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph8518 ], [ %vec.ind.next8575, %vector.body8546 ] ; 2 uses
  %i.dyi = mul <8 x i32> %broadcast.splat8525, %vec.ind8552
  %i.dyj = add <8 x i32> %i.dyi, %broadcast.splat8527 ; 3 uses
  %i.dyk = icmp sgt <8 x i32> %i.dyj, splat (i32 -1) ; 2 uses
  %i.dyl = call <8 x i32> @llvm.masked.srem.v8i32(<8 x i32> %i.dyj, <8 x i32> %broadcast.splat8529, <8 x i1> %i.dyk)
  %i.dym = icmp eq <8 x i32> %i.dyl, zeroinitializer
  %i.dyn = select <8 x i1> %i.dyk, <8 x i1> %i.dym, <8 x i1> zeroinitializer ; 2 uses
  %i.dyo = call <8 x i32> @llvm.masked.sdiv.v8i32(<8 x i32> %i.dyj, <8 x i32> %broadcast.splat8529, <8 x i1> %i.dyn) ; 2 uses
  %i.dyp = icmp slt <8 x i32> %i.dyo, %broadcast.splat8531
  %i.dyq = select <8 x i1> %i.dyn, <8 x i1> %i.dyp, <8 x i1> zeroinitializer
  %i.dyr = freeze <8 x i1> %i.dyq                 ; 14 uses
  %i.dys = add nuw nsw <8 x i64> %broadcast.splat8521, %vec.ind8549
  %i.dyt = shl <8 x i64> %i.dys, splat (i64 2)
  %i.dyu = and <8 x i64> %i.dyt, splat (i64 4294967292)
  %wide.gep8553 = getelementptr inbounds nuw [4 x i8], ptr %.318697256.us, <8 x i64> %i.dyu ; 4 uses
  %wide.masked.gather8554 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %broadcast.splat8533, <8 x i1> %i.dyr, <8 x i32> poison), !tbaa !55, !noalias !1505 ; 2 uses
  %wide.masked.gather8555 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %broadcast.splat8535, <8 x i1> %i.dyr, <8 x ptr> poison), !tbaa !20, !noalias !1505
  %wide.masked.gather8556 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %broadcast.splat8537, <8 x i1> %i.dyr, <8 x i64> poison), !tbaa !21, !noalias !1505
  %wide.masked.gather8557 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0(<8 x ptr> align 8 %broadcast.splat8539, <8 x i1> %i.dyr, <8 x i64> poison), !tbaa !56, !noalias !1505 ; 2 uses
  %i.dyv = mul <8 x i64> %wide.masked.gather8556, %wide.masked.gather8557 ; 2 uses
  %i.dyw = sext <8 x i32> %wide.masked.gather8554 to <8 x i64>
  %i.dyx = mul nsw <8 x i64> %broadcast.splat8523, %i.dyw
  %i.dyy = mul <8 x i64> %i.dyx, %wide.masked.gather8557
  %wide.gep8558 = getelementptr i8, <8 x ptr> %wide.masked.gather8555, <8 x i64> %i.dyy
  %i.dyz = sext <8 x i32> %i.dyo to <8 x i64>
  %wide.gep8559 = getelementptr [4 x i8], <8 x ptr> %wide.gep8558, <8 x i64> %i.dyz ; 2 uses
  %i.dza = mul <8 x i64> %i.dyv, %broadcast.splat8541
  %wide.gep8560 = getelementptr i8, <8 x ptr> %wide.gep8559, <8 x i64> %i.dza
  %wide.masked.gather8561 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep8560, <8 x i1> %i.dyr, <8 x float> poison), !tbaa !39 ; 2 uses
  %wide.masked.gather8562 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep8553, <8 x i1> %i.dyr, <8 x float> poison), !tbaa !39
  %i.dzb = fmul fast <8 x float> %wide.masked.gather8562, %wide.masked.gather8561
  %i.dzc = fadd fast <8 x float> %i.dzb, %vec.phi8551
  %wide.gep8563 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep8553, i64 8
  %wide.masked.gather8564 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep8563, <8 x i1> %i.dyr, <8 x float> poison), !tbaa !39
  %i.dzd = fmul fast <8 x float> %wide.masked.gather8564, %wide.masked.gather8561
  %i.dze = fadd fast <8 x float> %i.dzd, %vec.phi8550
  %i.dzf = mul <8 x i64> %i.dyv, %broadcast.splat8543
  %wide.gep8565 = getelementptr i8, <8 x ptr> %wide.gep8559, <8 x i64> %i.dzf
  %wide.masked.gather8566 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep8565, <8 x i1> %i.dyr, <8 x float> poison), !tbaa !39 ; 2 uses
  %wide.gep8567 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep8553, i64 4
  %wide.masked.gather8568 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep8567, <8 x i1> %i.dyr, <8 x float> poison), !tbaa !39
  %i.dzg = fmul fast <8 x float> %wide.masked.gather8568, %wide.masked.gather8566
  %i.dzh = fadd fast <8 x float> %i.dzg, %i.dzc
  %wide.gep8569 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep8553, i64 12
  %wide.masked.gather8570 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep8569, <8 x i1> %i.dyr, <8 x float> poison), !tbaa !39
  %i.dzi = fmul fast <8 x float> %wide.masked.gather8570, %wide.masked.gather8566
  %i.dzj = fadd fast <8 x float> %i.dzi, %i.dze
  %i.dzk = bitcast <8 x i1> %i.dyr to i8
  %.not8688 = icmp eq i8 %i.dzk, 0                ; 2 uses
  %i.dzl = select i1 %.not8688, <8 x i1> %i.dyh, <8 x i1> %i.dyr ; 2 uses
  %i.dzm = select i1 %.not8688, <8 x i32> %vec.phi8548, <8 x i32> %wide.masked.gather8554 ; 2 uses
  %predphi8571 = select nsz <8 x i1> %i.dyr, <8 x float> %i.dzh, <8 x float> %vec.phi8551 ; 2 uses
  %predphi8572 = select nsz <8 x i1> %i.dyr, <8 x float> %i.dzj, <8 x float> %vec.phi8550 ; 2 uses
  %index.next8573 = add nuw i64 %index8547, 8     ; 2 uses
  %vec.ind.next8574 = add nuw nsw <8 x i64> %vec.ind8549, splat (i64 8)
  %vec.ind.next8575 = add <8 x i32> %vec.ind8552, splat (i32 8)
  %i.dzn = icmp eq i64 %index.next8573, %n.vec8519
  br i1 %i.dzn, label %middle.block8576, label %vector.body8546, !llvm.loop !1411

middle.block8576:                                 ; preds = %vector.body8546
  %i.dzo = call i32 @llvm.experimental.vector.extract.last.active.v8i32(<8 x i32> %i.dzm, <8 x i1> %i.dzl, i32 %i.dxv) ; 2 uses
  %i.dzp = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %predphi8572)
  %i.dzq = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %predphi8571)
  %i.dzr = insertelement <2 x float> poison, float %i.dzq, i64 0
  %i.dzs = insertelement <2 x float> %i.dzr, float %i.dzp, i64 1 ; 2 uses
  br i1 %cmp.n8577, label %..loopexit6421_crit_edge.us.us, label %scalar.ph8516.preheader

scalar.ph8516.preheader:                          ; preds = %.preheader6420.us.us, %middle.block8576
  %.ph8722 = phi i32 [ %i.dxv, %.preheader6420.us.us ], [ %i.dzo, %middle.block8576 ]
  %indvars.iv7951.ph = phi i64 [ 0, %.preheader6420.us.us ], [ %n.vec8519, %middle.block8576 ]
  %.ph8723 = phi <2 x float> [ %i.dxw, %.preheader6420.us.us ], [ %i.dzs, %middle.block8576 ]
  br label %scalar.ph8516

scalar.ph8516:                                    ; preds = %scalar.ph8516.preheader, %.loopexit6417.us.us
  %i.dzt = phi i32 [ %i.eaz, %.loopexit6417.us.us ], [ %.ph8722, %scalar.ph8516.preheader ] ; 2 uses
  %indvars.iv7951 = phi i64 [ %indvars.iv.next7952, %.loopexit6417.us.us ], [ %indvars.iv7951.ph, %scalar.ph8516.preheader ] ; 3 uses
  %i.dzu = phi <2 x float> [ %i.eba, %.loopexit6417.us.us ], [ %.ph8723, %scalar.ph8516.preheader ] ; 3 uses
  %i.dzv = trunc i64 %indvars.iv7951 to i32
  %i.dzw = mul i32 %i.dxo, %i.dzv
  %.reass7240.us.us = add i32 %i.dzw, %invariant.op7239 ; 3 uses
  %i.dzx = icmp slt i32 %.reass7240.us.us, 0
  br i1 %i.dzx, label %.loopexit6417.us.us, label %bb.cg

bb.cg:                                            ; preds = %scalar.ph8516
  %i.dzy = srem i32 %.reass7240.us.us, %i.dxe
  %i.dzz = sdiv i32 %.reass7240.us.us, %i.dxe     ; 2 uses
  %.not2085.us.us = icmp eq i32 %i.dzy, 0
  %.not2086.us.us = icmp slt i32 %i.dzz, %i.bch
  %or.cond8856 = select i1 %.not2085.us.us, i1 %.not2086.us.us, i1 false
  br i1 %or.cond8856, label %_ZN4ncnn3MatD2Ev.exit2169.us.us, label %.loopexit6417.us.us

_ZN4ncnn3MatD2Ev.exit2169.us.us:                  ; preds = %bb.cg
  %i.eaa = add nuw nsw i64 %i.dyc, %indvars.iv7951
  %i.eab = shl i64 %i.eaa, 2
  %i.eac = and i64 %i.eab, 4294967292
  %i.ead = getelementptr inbounds nuw [4 x i8], ptr %.318697256.us, i64 %i.eac
  %i.eae = load i32, ptr %i.bcg, align 4, !tbaa !55, !noalias !1505 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  switch i32 %.fr8179, label %bb.bv [
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2234.us.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2230.us.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2234.us.us.us:               ; preds = %.split2203.us.us.us._ZN4ncnn3MatD2Ev.exit2234.us.us.us_crit_edge, %_ZN4ncnn3MatD2Ev.exit2236.us.us.us, %_ZN4ncnn3MatD2Ev.exit2237.us.us.us
  %.pre-phi8891 = phi <16 x float> [ %.pre8890, %.split2203.us.us.us._ZN4ncnn3MatD2Ev.exit2234.us.us.us_crit_edge ], [ %.pre-phi8837, %_ZN4ncnn3MatD2Ev.exit2236.us.us.us ], [ %i.exg, %_ZN4ncnn3MatD2Ev.exit2237.us.us.us ]
  %.pre-phi8867 = phi <16 x float> [ %.pre8866, %.split2203.us.us.us._ZN4ncnn3MatD2Ev.exit2234.us.us.us_crit_edge ], [ %.pre-phi8813, %_ZN4ncnn3MatD2Ev.exit2236.us.us.us ], [ %i.ewv, %_ZN4ncnn3MatD2Ev.exit2237.us.us.us ]
  %.pre-phi8843 = phi i64 [ %.pre8842, %.split2203.us.us.us._ZN4ncnn3MatD2Ev.exit2234.us.us.us_crit_edge ], [ %.pre-phi8789, %_ZN4ncnn3MatD2Ev.exit2236.us.us.us ], [ %i.evz, %_ZN4ncnn3MatD2Ev.exit2237.us.us.us ] ; 5 uses
  %i.eyj = phi i64 [ %.pre8697, %.split2203.us.us.us._ZN4ncnn3MatD2Ev.exit2234.us.us.us_crit_edge ], [ %i.exi, %_ZN4ncnn3MatD2Ev.exit2236.us.us.us ], [ %i.evu, %_ZN4ncnn3MatD2Ev.exit2237.us.us.us ] ; 5 uses
  %i.eyk = phi i64 [ %.pre8696, %.split2203.us.us.us._ZN4ncnn3MatD2Ev.exit2234.us.us.us_crit_edge ], [ %i.exj, %_ZN4ncnn3MatD2Ev.exit2236.us.us.us ], [ %i.evs, %_ZN4ncnn3MatD2Ev.exit2237.us.us.us ] ; 5 uses
  %i.eyl = phi ptr [ %.pre8695, %.split2203.us.us.us._ZN4ncnn3MatD2Ev.exit2234.us.us.us_crit_edge ], [ %i.exk, %_ZN4ncnn3MatD2Ev.exit2236.us.us.us ], [ %i.evr, %_ZN4ncnn3MatD2Ev.exit2237.us.us.us ] ; 5 uses
  %.46785.us.us.us = phi nsz <16 x float> [ %.267837654.us.us.us, %.split2203.us.us.us._ZN4ncnn3MatD2Ev.exit2234.us.us.us_crit_edge ], [ %i.eyh, %_ZN4ncnn3MatD2Ev.exit2236.us.us.us ], [ %i.eww, %_ZN4ncnn3MatD2Ev.exit2237.us.us.us ]
  %.46777.us.us.us = phi nsz <16 x float> [ %.267757655.us.us.us, %.split2203.us.us.us._ZN4ncnn3MatD2Ev.exit2234.us.us.us_crit_edge ], [ %i.eyi, %_ZN4ncnn3MatD2Ev.exit2236.us.us.us ], [ %i.exh, %_ZN4ncnn3MatD2Ev.exit2237.us.us.us ]
  %i.eym = mul i64 %i.eyk, %i.etv
  %i.eyn = mul i64 %i.eym, %i.eyj
  %i.eyo = getelementptr inbounds nuw i8, ptr %i.eyl, i64 %i.eyn
  %i.eyp = getelementptr inbounds nuw i8, ptr %i.eyo, i64 %.pre-phi8843
  %i.eyq = shl nsw i32 %i.euz, 2
  %i.eyr = sext i32 %i.eyq to i64                 ; 4 uses
  %i.eys = getelementptr inbounds [2 x i8], ptr %i.eyp, i64 %i.eyr
  %i.eyt = mul i64 %i.eyk, %i.etw
  %i.eyu = mul i64 %i.eyt, %i.eyj
  %i.eyv = getelementptr inbounds nuw i8, ptr %i.eyl, i64 %i.eyu
  %i.eyw = getelementptr inbounds nuw i8, ptr %i.eyv, i64 %.pre-phi8843
  %i.eyx = getelementptr inbounds [2 x i8], ptr %i.eyw, i64 %i.eyr
  %i.eyy = mul i64 %i.eyk, %i.etx
  %i.eyz = mul i64 %i.eyy, %i.eyj
  %i.eza = getelementptr inbounds nuw i8, ptr %i.eyl, i64 %i.eyz
  %i.ezb = getelementptr inbounds nuw i8, ptr %i.eza, i64 %.pre-phi8843
  %i.ezc = getelementptr inbounds [2 x i8], ptr %i.ezb, i64 %i.eyr
  %i.ezd = mul i64 %i.eyk, %i.ety
  %i.eze = mul i64 %i.ezd, %i.eyj
  %i.ezf = getelementptr inbounds nuw i8, ptr %i.eyl, i64 %i.eze
  %i.ezg = getelementptr inbounds nuw i8, ptr %i.ezf, i64 %.pre-phi8843
  %i.ezh = getelementptr inbounds [2 x i8], ptr %i.ezg, i64 %i.eyr
  %i.ezi = load i64, ptr %i.eys, align 1, !tbaa !82
  %i.ezj = insertelement <2 x i64> poison, i64 %i.ezi, i64 0
  %i.ezk = bitcast <2 x i64> %i.ezj to <8 x i16>
  %i.ezl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ezk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ezm = bitcast <8 x i16> %i.ezl to <4 x float>
  %i.ezn = load i64, ptr %i.eyx, align 1, !tbaa !82
  %i.ezo = insertelement <2 x i64> poison, i64 %i.ezn, i64 0
  %i.ezp = bitcast <2 x i64> %i.ezo to <8 x i16>
  %i.ezq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ezp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ezr = bitcast <8 x i16> %i.ezq to <4 x float>
  %i.ezs = load i64, ptr %i.ezc, align 1, !tbaa !82
  %i.ezt = insertelement <2 x i64> poison, i64 %i.ezs, i64 0
  %i.ezu = bitcast <2 x i64> %i.ezt to <8 x i16>
  %i.ezv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ezu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ezw = bitcast <8 x i16> %i.ezv to <4 x float>
  %i.ezx = load i64, ptr %i.ezh, align 1, !tbaa !82
  %i.ezy = insertelement <2 x i64> poison, i64 %i.ezx, i64 0
  %i.ezz = bitcast <2 x i64> %i.ezy to <8 x i16>
  %i.faa = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ezz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fab = bitcast <8 x i16> %i.faa to <4 x float>
  %i.fac = shufflevector <4 x float> %i.ezm, <4 x float> %i.ezr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fad = shufflevector <4 x float> %i.ezw, <4 x float> %i.fab, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fae = shufflevector <16 x float> %i.fac, <16 x float> %i.fad, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.faf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fae, <16 x float> nofpclass(nan inf) %.pre-phi8867, <16 x float> nofpclass(nan inf) %.46785.us.us.us) ; 2 uses
  %i.fag = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fae, <16 x float> nofpclass(nan inf) %.pre-phi8891, <16 x float> nofpclass(nan inf) %.46777.us.us.us) ; 2 uses
  br i1 %i.bwr, label %_ZN4ncnn3MatD2Ev.exit2230.us.us.us, label %bb.bv

_ZN4ncnn3MatD2Ev.exit2230.us.us.us:               ; preds = %.split2203.us.us.us._ZN4ncnn3MatD2Ev.exit2230.us.us.us_crit_edge, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us, %_ZN4ncnn3MatD2Ev.exit2236.us.us.us, %_ZN4ncnn3MatD2Ev.exit2237.us.us.us
  %.pre-phi8897 = phi i64 [ %.pre8896, %.split2203.us.us.us._ZN4ncnn3MatD2Ev.exit2230.us.us.us_crit_edge ], [ %.pre-phi8843, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ], [ %.pre-phi8789, %_ZN4ncnn3MatD2Ev.exit2236.us.us.us ], [ %i.evz, %_ZN4ncnn3MatD2Ev.exit2237.us.us.us ]
  %i.fah = phi i64 [ %.pre8704, %.split2203.us.us.us._ZN4ncnn3MatD2Ev.exit2230.us.us.us_crit_edge ], [ %i.eyj, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ], [ %i.exi, %_ZN4ncnn3MatD2Ev.exit2236.us.us.us ], [ %i.evu, %_ZN4ncnn3MatD2Ev.exit2237.us.us.us ]
  %i.fai = phi i64 [ %.pre8703, %.split2203.us.us.us._ZN4ncnn3MatD2Ev.exit2230.us.us.us_crit_edge ], [ %i.eyk, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ], [ %i.exj, %_ZN4ncnn3MatD2Ev.exit2236.us.us.us ], [ %i.evs, %_ZN4ncnn3MatD2Ev.exit2237.us.us.us ]
  %i.faj = phi ptr [ %.pre8702, %.split2203.us.us.us._ZN4ncnn3MatD2Ev.exit2230.us.us.us_crit_edge ], [ %i.eyl, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ], [ %i.exk, %_ZN4ncnn3MatD2Ev.exit2236.us.us.us ], [ %i.evr, %_ZN4ncnn3MatD2Ev.exit2237.us.us.us ]
  %.56786.us.us.us = phi nsz <16 x float> [ %.267837654.us.us.us, %.split2203.us.us.us._ZN4ncnn3MatD2Ev.exit2230.us.us.us_crit_edge ], [ %i.faf, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ], [ %i.eyh, %_ZN4ncnn3MatD2Ev.exit2236.us.us.us ], [ %i.eww, %_ZN4ncnn3MatD2Ev.exit2237.us.us.us ]
  %.56778.us.us.us = phi nsz <16 x float> [ %.267757655.us.us.us, %.split2203.us.us.us._ZN4ncnn3MatD2Ev.exit2230.us.us.us_crit_edge ], [ %i.fag, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ], [ %i.eyi, %_ZN4ncnn3MatD2Ev.exit2236.us.us.us ], [ %i.exh, %_ZN4ncnn3MatD2Ev.exit2237.us.us.us ]
  %factor.op.mul.us.us.us = mul i64 %i.fai, %i.fah ; 16 uses
  %invariant.gep.us.us.us = getelementptr i8, ptr %i.faj, i64 %.pre-phi8897
  %i.fak = sext i32 %i.euz to i64
  %invariant.gep7651.us.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us.us, i64 %i.fak ; 16 uses
  %.reass.us.us7679.us = mul i64 %factor.op.mul.us.us.us, %indvars.iv8498
  %gep7652.us.us.us = getelementptr i8, ptr %invariant.gep7651.us.us.us, i64 %.reass.us.us7679.us
  %i.fal = load i16, ptr %gep7652.us.us.us, align 2, !tbaa !92
  %.reass.us.us7679.us.1 = mul i64 %factor.op.mul.us.us.us, %i.etz
  %gep7652.us.us.us.1 = getelementptr i8, ptr %invariant.gep7651.us.us.us, i64 %.reass.us.us7679.us.1
  %i.fam = load i16, ptr %gep7652.us.us.us.1, align 2, !tbaa !92
  %.reass.us.us7679.us.2 = mul i64 %factor.op.mul.us.us.us, %i.eua
  %gep7652.us.us.us.2 = getelementptr i8, ptr %invariant.gep7651.us.us.us, i64 %.reass.us.us7679.us.2
  %i.fan = load i16, ptr %gep7652.us.us.us.2, align 2, !tbaa !92
  %.reass.us.us7679.us.3 = mul i64 %factor.op.mul.us.us.us, %i.eub
  %gep7652.us.us.us.3 = getelementptr i8, ptr %invariant.gep7651.us.us.us, i64 %.reass.us.us7679.us.3
  %i.fao = load i16, ptr %gep7652.us.us.us.3, align 2, !tbaa !92
  %.reass.us.us7679.us.4 = mul i64 %factor.op.mul.us.us.us, %i.euc
  %gep7652.us.us.us.4 = getelementptr i8, ptr %invariant.gep7651.us.us.us, i64 %.reass.us.us7679.us.4
  %i.fap = load i16, ptr %gep7652.us.us.us.4, align 2, !tbaa !92
  %.reass.us.us7679.us.5 = mul i64 %factor.op.mul.us.us.us, %i.eud
  %gep7652.us.us.us.5 = getelementptr i8, ptr %invariant.gep7651.us.us.us, i64 %.reass.us.us7679.us.5
  %i.faq = load i16, ptr %gep7652.us.us.us.5, align 2, !tbaa !92
  %.reass.us.us7679.us.6 = mul i64 %factor.op.mul.us.us.us, %i.eue
  %gep7652.us.us.us.6 = getelementptr i8, ptr %invariant.gep7651.us.us.us, i64 %.reass.us.us7679.us.6
  %i.far = load i16, ptr %gep7652.us.us.us.6, align 2, !tbaa !92
  %.reass.us.us7679.us.7 = mul i64 %factor.op.mul.us.us.us, %i.euf
  %gep7652.us.us.us.7 = getelementptr i8, ptr %invariant.gep7651.us.us.us, i64 %.reass.us.us7679.us.7
  %i.fas = load i16, ptr %gep7652.us.us.us.7, align 2, !tbaa !92
  %.reass.us.us7679.us.8 = mul i64 %factor.op.mul.us.us.us, %i.eug
  %gep7652.us.us.us.8 = getelementptr i8, ptr %invariant.gep7651.us.us.us, i64 %.reass.us.us7679.us.8
  %i.fat = load i16, ptr %gep7652.us.us.us.8, align 2, !tbaa !92
  %.reass.us.us7679.us.9 = mul i64 %factor.op.mul.us.us.us, %i.euh
  %gep7652.us.us.us.9 = getelementptr i8, ptr %invariant.gep7651.us.us.us, i64 %.reass.us.us7679.us.9
  %i.fau = load i16, ptr %gep7652.us.us.us.9, align 2, !tbaa !92
  %.reass.us.us7679.us.10 = mul i64 %factor.op.mul.us.us.us, %i.eui
  %gep7652.us.us.us.10 = getelementptr i8, ptr %invariant.gep7651.us.us.us, i64 %.reass.us.us7679.us.10
  %i.fav = load i16, ptr %gep7652.us.us.us.10, align 2, !tbaa !92
  %.reass.us.us7679.us.11 = mul i64 %factor.op.mul.us.us.us, %i.euj
  %gep7652.us.us.us.11 = getelementptr i8, ptr %invariant.gep7651.us.us.us, i64 %.reass.us.us7679.us.11
  %i.faw = load i16, ptr %gep7652.us.us.us.11, align 2, !tbaa !92
  %.reass.us.us7679.us.12 = mul i64 %factor.op.mul.us.us.us, %i.euk
  %gep7652.us.us.us.12 = getelementptr i8, ptr %invariant.gep7651.us.us.us, i64 %.reass.us.us7679.us.12
  %i.fax = load i16, ptr %gep7652.us.us.us.12, align 2, !tbaa !92
  %.reass.us.us7679.us.13 = mul i64 %factor.op.mul.us.us.us, %i.eul
  %gep7652.us.us.us.13 = getelementptr i8, ptr %invariant.gep7651.us.us.us, i64 %.reass.us.us7679.us.13
  %i.fay = load i16, ptr %gep7652.us.us.us.13, align 2, !tbaa !92
  %.reass.us.us7679.us.14 = mul i64 %factor.op.mul.us.us.us, %i.eum
  %gep7652.us.us.us.14 = getelementptr i8, ptr %invariant.gep7651.us.us.us, i64 %.reass.us.us7679.us.14
  %i.faz = load i16, ptr %gep7652.us.us.us.14, align 2, !tbaa !92
  %.reass.us.us7679.us.15 = mul i64 %factor.op.mul.us.us.us, %i.eun
  %gep7652.us.us.us.15 = getelementptr i8, ptr %invariant.gep7651.us.us.us, i64 %.reass.us.us7679.us.15
  %i.fba = load i16, ptr %gep7652.us.us.us.15, align 2, !tbaa !92
  %i.fbb = insertelement <16 x i16> poison, i16 %i.fal, i64 0
  %i.fbc = insertelement <16 x i16> %i.fbb, i16 %i.fam, i64 1
  %i.fbd = insertelement <16 x i16> %i.fbc, i16 %i.fan, i64 2
  %i.fbe = insertelement <16 x i16> %i.fbd, i16 %i.fao, i64 3
  %i.fbf = insertelement <16 x i16> %i.fbe, i16 %i.fap, i64 4
  %i.fbg = insertelement <16 x i16> %i.fbf, i16 %i.faq, i64 5
  %i.fbh = insertelement <16 x i16> %i.fbg, i16 %i.far, i64 6
  %i.fbi = insertelement <16 x i16> %i.fbh, i16 %i.fas, i64 7
  %i.fbj = insertelement <16 x i16> %i.fbi, i16 %i.fat, i64 8
  %i.fbk = insertelement <16 x i16> %i.fbj, i16 %i.fau, i64 9
  %i.fbl = insertelement <16 x i16> %i.fbk, i16 %i.fav, i64 10
  %i.fbm = insertelement <16 x i16> %i.fbl, i16 %i.faw, i64 11
  %i.fbn = insertelement <16 x i16> %i.fbm, i16 %i.fax, i64 12
  %i.fbo = insertelement <16 x i16> %i.fbn, i16 %i.fay, i64 13
  %i.fbp = insertelement <16 x i16> %i.fbo, i16 %i.faz, i64 14
  %i.fbq = insertelement <16 x i16> %i.fbp, i16 %i.fba, i64 15
  %i.fbr = zext <16 x i16> %i.fbq to <16 x i32>
  %i.fbs = shl nuw <16 x i32> %i.fbr, splat (i32 16)
  %.sroa.08687.60.vec.insert = bitcast <16 x i32> %i.fbs to <16 x float> ; 2 uses
  %i.fbt = load <16 x i16>, ptr %i.evd, align 32, !tbaa !82 ; 2 uses
  %i.fbu = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.fbt, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.fbv = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.fbt, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.fbw = shufflevector <16 x i16> %i.fbu, <16 x i16> %i.fbv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.fbx = shufflevector <16 x i16> %i.fbu, <16 x i16> %i.fbv, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fby = bitcast <16 x i16> %i.fbw to <8 x i32>
  %i.fbz = bitcast <16 x i16> %i.fbx to <8 x i32>
  %i.fca = shufflevector <8 x i32> %i.fby, <8 x i32> %i.fbz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fcb = bitcast <16 x i32> %i.fca to <16 x float>
  %i.fcc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sroa.08687.60.vec.insert, <16 x float> nofpclass(nan inf) %i.fcb, <16 x float> nofpclass(nan inf) %.56786.us.us.us)
  %i.fcd = getelementptr inbounds nuw i8, ptr %i.evd, i64 32
  %i.fce = load <16 x i16>, ptr %i.fcd, align 32, !tbaa !82 ; 2 uses
  %i.fcf = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.fce, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.fcg = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.fce, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.fch = shufflevector <16 x i16> %i.fcf, <16 x i16> %i.fcg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.fci = shufflevector <16 x i16> %i.fcf, <16 x i16> %i.fcg, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fcj = bitcast <16 x i16> %i.fch to <8 x i32>
  %i.fck = bitcast <16 x i16> %i.fci to <8 x i32>
  %i.fcl = shufflevector <8 x i32> %i.fcj, <8 x i32> %i.fck, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fcm = bitcast <16 x i32> %i.fcl to <16 x float>
  %i.fcn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sroa.08687.60.vec.insert, <16 x float> nofpclass(nan inf) %i.fcm, <16 x float> nofpclass(nan inf) %.56778.us.us.us)
  br label %bb.bv

bb.bv:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2230.us.us.us, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us, %_ZN4ncnn3MatD2Ev.exit2236.us.us.us, %_ZN4ncnn3MatD2Ev.exit2237.us.us.us, %.split2203.us.us.us, %bb.bu, %.lr.ph.split.us.us.us7700
  %.66787.us.us.us = phi nsz <16 x float> [ %.267837654.us.us.us, %.lr.ph.split.us.us.us7700 ], [ %.267837654.us.us.us, %.split2203.us.us.us ], [ %i.eww, %_ZN4ncnn3MatD2Ev.exit2237.us.us.us ], [ %i.eyh, %_ZN4ncnn3MatD2Ev.exit2236.us.us.us ], [ %i.fcc, %_ZN4ncnn3MatD2Ev.exit2230.us.us.us ], [ %i.faf, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ], [ %.267837654.us.us.us, %bb.bu ] ; 2 uses
  %.66779.us.us.us = phi nsz <16 x float> [ %.267757655.us.us.us, %.lr.ph.split.us.us.us7700 ], [ %.267757655.us.us.us, %.split2203.us.us.us ], [ %i.exh, %_ZN4ncnn3MatD2Ev.exit2237.us.us.us ], [ %i.eyi, %_ZN4ncnn3MatD2Ev.exit2236.us.us.us ], [ %i.fcn, %_ZN4ncnn3MatD2Ev.exit2230.us.us.us ], [ %i.fag, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ], [ %.267757655.us.us.us, %bb.bu ] ; 2 uses
  %indvars.iv.next8489 = add nuw nsw i64 %indvars.iv8488, 1 ; 2 uses
  %exitcond8492.not = icmp eq i64 %indvars.iv.next8489, %i.etr
  br i1 %exitcond8492.not, label %..loopexit7023_crit_edge.us.us, label %.lr.ph.split.us.us.us7700, !llvm.loop !1790

..loopexit7023_crit_edge.us.us:                   ; preds = %bb.bv, %.preheader7022.us.us, %bb.bt, %.lr.ph7667.split.us.us
  %.76788.us.us = phi nsz <16 x float> [ %.167827664.us.us, %.lr.ph7667.split.us.us ], [ %.167827664.us.us, %bb.bt ], [ %.167827664.us.us, %.preheader7022.us.us ], [ %.66787.us.us.us, %bb.bv ] ; 2 uses
  %.76780.us.us = phi nsz <16 x float> [ %.167747665.us.us, %.lr.ph7667.split.us.us ], [ %.167747665.us.us, %bb.bt ], [ %.167747665.us.us, %.preheader7022.us.us ], [ %.66779.us.us.us, %bb.bv ] ; 2 uses
  %indvars.iv.next8494 = add nuw nsw i64 %indvars.iv8493, 1 ; 2 uses
  %exitcond8497.not = icmp eq i64 %indvars.iv.next8494, %wide.trip.count8496
  br i1 %exitcond8497.not, label %._crit_edge7668.us, label %.lr.ph7667.split.us.us, !llvm.loop !1791

._crit_edge7668.us:                               ; preds = %..loopexit7023_crit_edge.us.us, %.preheader7028.us
  %.us-phi7680.us = phi <16 x float> [ %.067817683.us, %.preheader7028.us ], [ %.76788.us.us, %..loopexit7023_crit_edge.us.us ] ; 2 uses
  %.us-phi7681.us = phi <16 x float> [ %.067737684.us, %.preheader7028.us ], [ %.76780.us.us, %..loopexit7023_crit_edge.us.us ] ; 2 uses
  %i.fco = getelementptr inbounds [2 x i8], ptr %.019007685.us, i64 %i.esx ; 2 uses
  %indvars.iv.next8499 = add nuw nsw i64 %indvars.iv8498, 16 ; 3 uses
  %i.fcp = icmp slt i64 %indvars.iv.next8499, %invariant.op9044
  br i1 %i.fcp, label %.preheader7028.us, label %._crit_edge7689.loopexit, !llvm.loop !1792

._crit_edge7689.loopexit:                         ; preds = %._crit_edge7668.us
  %i.fcq = trunc nuw nsw i64 %indvars.iv.next8499 to i32
  br label %._crit_edge7689

._crit_edge7689:                                  ; preds = %.preheader7028.lr.ph, %._crit_edge7689.loopexit, %_ZN4ncnn3MatD2Ev.exit2238
  %.06781.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2238 ], [ %.us-phi7680.us, %._crit_edge7689.loopexit ], [ zeroinitializer, %.preheader7028.lr.ph ] ; 2 uses
  %.06773.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2238 ], [ %.us-phi7681.us, %._crit_edge7689.loopexit ], [ zeroinitializer, %.preheader7028.lr.ph ] ; 2 uses
  %.01900.lcssa = phi ptr [ %i.ess, %_ZN4ncnn3MatD2Ev.exit2238 ], [ %i.fco, %._crit_edge7689.loopexit ], [ %scevgep8483, %.preheader7028.lr.ph ] ; 3 uses
  %.01895.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2238 ], [ %i.fcq, %._crit_edge7689.loopexit ], [ %i.bxc, %.preheader7028.lr.ph ] ; 5 uses
  %i.fcr = shufflevector <16 x float> %.06781.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fcs = shufflevector <16 x float> %.06781.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fct = fadd fast <8 x float> %i.fcr, %i.fcs   ; 2 uses
  %i.fcu = shufflevector <8 x float> %i.fct, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fcv = shufflevector <8 x float> %i.fct, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fcw = fadd fast <4 x float> %i.fcu, %i.fcv   ; 4 uses
  %i.fcx = shufflevector <16 x float> %.06773.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fcy = shufflevector <16 x float> %.06773.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fcz = fadd fast <8 x float> %i.fcx, %i.fcy   ; 2 uses
  %i.fda = shufflevector <8 x float> %i.fcz, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fdb = shufflevector <8 x float> %i.fcz, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fdc = fadd fast <4 x float> %i.fda, %i.fdb   ; 4 uses
  %i.fdd = or disjoint i32 %.01895.lcssa, 7
  %i.fde = icmp slt i32 %i.fdd, %i.bvw
  br i1 %i.fde, label %.preheader7027.lr.ph, label %._crit_edge7734

.preheader7027.lr.ph:                             ; preds = %._crit_edge7689
  %i.fdf = load i32, ptr %i.j, align 4
  %invariant.op7722 = sub i32 %.neg6954, %i.fdf
  %i.fdg = load i32, ptr %i.f, align 4            ; 2 uses
  %i.fdh = load i32, ptr %i.a, align 4
  %.fr8181 = freeze i32 %i.fdh                    ; 2 uses
  %i.fdi = icmp sgt i32 %.fr8181, 0
  %i.fdj = load i32, ptr %i.i, align 4
  %.neg6952 = add nuw nsw i32 %.019377913, 1
  %invariant.op7713 = sub i32 %.neg6952, %i.fdj
  %i.fdk = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.esu, label %.preheader7027.us.preheader, label %.preheader7027.preheader

.preheader7027.preheader:                         ; preds = %.preheader7027.lr.ph
  %i.fdl = sub i32 %i.bxe, %.01895.lcssa          ; 2 uses
  %i.fdm = lshr i32 %i.fdl, 2
  %i.fdn = and i32 %i.fdm, 1073741822
  %narrow9011 = add nuw nsw i32 %i.fdn, 2
  %i.fdo = zext nneg i32 %narrow9011 to i64
  %i.fdp = mul nsw i64 %i.esz, %i.fdo
  %scevgep8501 = getelementptr i8, ptr %.01900.lcssa, i64 %i.fdp
  %i.fdq = add i32 %.01895.lcssa, 8
  %i.fdr = and i32 %i.fdl, -8
  %i.fds = add i32 %i.fdq, %i.fdr
  br label %._crit_edge7734

.preheader7027.us.preheader:                      ; preds = %.preheader7027.lr.ph
  %i.fdt = load i32, ptr %i.c, align 4
  %i.fdu = load i32, ptr %i.d, align 4
  %i.fdv = zext i32 %.fr8181 to i64               ; 2 uses
  %i.fdw = zext i32 %.01895.lcssa to i64
  br label %.preheader7027.us

.preheader7027.us:                                ; preds = %.preheader7027.us.preheader, %._crit_edge7719.us
  %indvars.iv8516 = phi i64 [ %i.fdw, %.preheader7027.us.preheader ], [ %indvars.iv.next8517, %._crit_edge7719.us ] ; 11 uses
  %.119017730.us = phi ptr [ %.01900.lcssa, %.preheader7027.us.preheader ], [ %i.fik, %._crit_edge7719.us ] ; 2 uses
  %.067637729.us = phi <8 x float> [ zeroinitializer, %.preheader7027.us.preheader ], [ %.us-phi7726.us, %._crit_edge7719.us ] ; 2 uses
  %.067687728.us = phi <8 x float> [ zeroinitializer, %.preheader7027.us.preheader ], [ %.us-phi7725.us, %._crit_edge7719.us ] ; 2 uses
  %i.fdx = trunc nuw i64 %indvars.iv8516 to i32
  %i.fdy = lshr exact i32 %i.fdx, 2               ; 2 uses
  %i.fdz = zext nneg i32 %i.fdy to i64
  %i.fea = or disjoint i32 %i.fdy, 1
  %i.feb = zext nneg i32 %i.fea to i64
  %i.fec = lshr exact i64 %indvars.iv8516, 3
  %i.fed = and i64 %i.fec, 536870911
  br i1 %i.fdi, label %.lr.ph7718.split.us.us.preheader, label %._crit_edge7719.us

.lr.ph7718.split.us.us.preheader:                 ; preds = %.preheader7027.us
  %i.fee = or disjoint i64 %indvars.iv8516, 1
  %i.fef = or disjoint i64 %indvars.iv8516, 2
  %i.feg = or disjoint i64 %indvars.iv8516, 3
  %i.feh = or disjoint i64 %indvars.iv8516, 4
  %i.fei = or disjoint i64 %indvars.iv8516, 5
  %i.fej = or disjoint i64 %indvars.iv8516, 6
  %i.fek = or disjoint i64 %indvars.iv8516, 7
  br label %.lr.ph7718.split.us.us

.lr.ph7718.split.us.us:                           ; preds = %.lr.ph7718.split.us.us.preheader, %..loopexit7021_crit_edge.us.us
  %indvars.iv8511 = phi i64 [ 0, %.lr.ph7718.split.us.us.preheader ], [ %indvars.iv.next8512, %..loopexit7021_crit_edge.us.us ] ; 3 uses
  %.167647716.us.us = phi <8 x float> [ %.067637729.us, %.lr.ph7718.split.us.us.preheader ], [ %.46767.us.us, %..loopexit7021_crit_edge.us.us ] ; 3 uses
  %.167697715.us.us = phi <8 x float> [ %.067687728.us, %.lr.ph7718.split.us.us.preheader ], [ %.46772.us.us, %..loopexit7021_crit_edge.us.us ] ; 3 uses
  %i.fel = trunc i64 %indvars.iv8511 to i32
  %i.fem = mul i32 %i.fdu, %i.fel
  %.reass7723.us.us = add i32 %i.fem, %invariant.op7722 ; 3 uses
  %i.fen = icmp slt i32 %.reass7723.us.us, 0
  br i1 %i.fen, label %..loopexit7021_crit_edge.us.us, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph7718.split.us.us
  %i.feo = srem i32 %.reass7723.us.us, %i.fdg
  %i.fep = sdiv i32 %.reass7723.us.us, %i.fdg     ; 2 uses
  %.not2130.us.us = icmp eq i32 %i.feo, 0
  %.not2131.us.us = icmp slt i32 %i.fep, %i.bwa
  %or.cond9356 = select i1 %.not2130.us.us, i1 %.not2131.us.us, i1 false
  br i1 %or.cond9356, label %.preheader7020.us.us, label %..loopexit7021_crit_edge.us.us

.preheader7020.us.us:                             ; preds = %bb.bw
  %i.feq = mul nuw nsw i64 %indvars.iv8511, %i.fdv
  %i.fer = sext i32 %i.fep to i64                 ; 3 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.ca, %.preheader7020.us.us
  %indvars.iv8506 = phi i64 [ %indvars.iv.next8507, %bb.ca ], [ 0, %.preheader7020.us.us ] ; 3 uses
  %.267657709.us.us = phi <8 x float> [ %.36766.us.us, %bb.ca ], [ %.167647716.us.us, %.preheader7020.us.us ] ; 4 uses
  %.267707708.us.us = phi <8 x float> [ %.36771.us.us, %bb.ca ], [ %.167697715.us.us, %.preheader7020.us.us ] ; 4 uses
  %i.fes = trunc i64 %indvars.iv8506 to i32
  %i.fet = mul i32 %i.fdt, %i.fes
  %.reass7714.us.us = add i32 %i.fet, %invariant.op7713 ; 3 uses
  %i.feu = icmp slt i32 %.reass7714.us.us, 0
  br i1 %i.feu, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fev = srem i32 %.reass7714.us.us, %i.fdk
  %i.few = sdiv i32 %.reass7714.us.us, %i.fdk     ; 4 uses
  %.not2132.us.us = icmp eq i32 %i.fev, 0
  %.not2133.us.us = icmp slt i32 %i.few, %i.bvy
  %or.cond9357 = select i1 %.not2132.us.us, i1 %.not2133.us.us, i1 false
  br i1 %or.cond9357, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.fex = add nuw nsw i64 %i.feq, %indvars.iv8506
  %i.fey = shl i64 %i.fex, 4
  %i.fez = and i64 %i.fey, 4294967280
  %i.ffa = getelementptr inbounds nuw [2 x i8], ptr %.119017730.us, i64 %i.fez ; 2 uses
  switch i32 %.fr8179, label %bb.ca [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2229.us.us
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2228.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2226.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2226.us.us:                  ; preds = %bb.bz
  %i.ffb = load i32, ptr %i.bvx, align 4, !tbaa !55, !noalias !1896
  %i.ffc = load ptr, ptr %0, align 8, !tbaa !20, !noalias !1896
  %i.ffd = load i64, ptr %i.bwp, align 8, !tbaa !21, !noalias !1896
  %i.ffe = load i64, ptr %i.bwq, align 8, !tbaa !56, !noalias !1896 ; 2 uses
  %factor.op.mul.us.us = mul i64 %i.ffd, %i.ffe   ; 8 uses
  %i.fff = sext i32 %i.ffb to i64
  %i.ffg = mul nsw i64 %i.fff, %i.fer
  %i.ffh = mul i64 %i.ffg, %i.ffe
  %invariant.gep.us.us = getelementptr i8, ptr %i.ffc, i64 %i.ffh
  %i.ffi = sext i32 %i.few to i64
  %invariant.gep7705.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us, i64 %i.ffi ; 8 uses
  %.reass.us7724.us = mul i64 %factor.op.mul.us.us, %indvars.iv8516
  %gep7706.us.us = getelementptr i8, ptr %invariant.gep7705.us.us, i64 %.reass.us7724.us
  %i.ffj = load i16, ptr %gep7706.us.us, align 2, !tbaa !92
  %.reass.us7724.us.1 = mul i64 %factor.op.mul.us.us, %i.fee
  %gep7706.us.us.1 = getelementptr i8, ptr %invariant.gep7705.us.us, i64 %.reass.us7724.us.1
  %i.ffk = load i16, ptr %gep7706.us.us.1, align 2, !tbaa !92
  %.reass.us7724.us.2 = mul i64 %factor.op.mul.us.us, %i.fef
  %gep7706.us.us.2 = getelementptr i8, ptr %invariant.gep7705.us.us, i64 %.reass.us7724.us.2
  %i.ffl = load i16, ptr %gep7706.us.us.2, align 2, !tbaa !92
  %.reass.us7724.us.3 = mul i64 %factor.op.mul.us.us, %i.feg
  %gep7706.us.us.3 = getelementptr i8, ptr %invariant.gep7705.us.us, i64 %.reass.us7724.us.3
  %i.ffm = load i16, ptr %gep7706.us.us.3, align 2, !tbaa !92
  %.reass.us7724.us.4 = mul i64 %factor.op.mul.us.us, %i.feh
  %gep7706.us.us.4 = getelementptr i8, ptr %invariant.gep7705.us.us, i64 %.reass.us7724.us.4
  %i.ffn = load i16, ptr %gep7706.us.us.4, align 2, !tbaa !92
  %.reass.us7724.us.5 = mul i64 %factor.op.mul.us.us, %i.fei
  %gep7706.us.us.5 = getelementptr i8, ptr %invariant.gep7705.us.us, i64 %.reass.us7724.us.5
  %i.ffo = load i16, ptr %gep7706.us.us.5, align 2, !tbaa !92
  %.reass.us7724.us.6 = mul i64 %factor.op.mul.us.us, %i.fej
  %gep7706.us.us.6 = getelementptr i8, ptr %invariant.gep7705.us.us, i64 %.reass.us7724.us.6
  %i.ffp = load i16, ptr %gep7706.us.us.6, align 2, !tbaa !92
  %.reass.us7724.us.7 = mul i64 %factor.op.mul.us.us, %i.fek
  %gep7706.us.us.7 = getelementptr i8, ptr %invariant.gep7705.us.us, i64 %.reass.us7724.us.7
  %i.ffq = load i16, ptr %gep7706.us.us.7, align 2, !tbaa !92
  %i.ffr = insertelement <8 x i16> poison, i16 %i.ffj, i64 0
  %i.ffs = insertelement <8 x i16> %i.ffr, i16 %i.ffk, i64 1
  %i.fft = insertelement <8 x i16> %i.ffs, i16 %i.ffl, i64 2
  %i.ffu = insertelement <8 x i16> %i.fft, i16 %i.ffm, i64 3
  %i.ffv = insertelement <8 x i16> %i.ffu, i16 %i.ffn, i64 4
  %i.ffw = insertelement <8 x i16> %i.ffv, i16 %i.ffo, i64 5
  %i.ffx = insertelement <8 x i16> %i.ffw, i16 %i.ffp, i64 6
  %i.ffy = insertelement <8 x i16> %i.ffx, i16 %i.ffq, i64 7
  %i.ffz = zext <8 x i16> %i.ffy to <8 x i32>
  %i.fga = shl nuw <8 x i32> %i.ffz, splat (i32 16)
  %.sroa.08685.28.vec.insert = bitcast <8 x i32> %i.fga to <8 x float>
  br label %.sink.split9218

_ZN4ncnn3MatD2Ev.exit2228.us.us:                  ; preds = %bb.bz
  %i.fgb = load i32, ptr %i.bvx, align 4, !tbaa !55, !noalias !1897
  %i.fgc = load ptr, ptr %0, align 8, !tbaa !20, !noalias !1897 ; 2 uses
  %i.fgd = load i64, ptr %i.bwp, align 8, !tbaa !21, !noalias !1897 ; 2 uses
  %i.fge = mul i64 %i.fgd, %i.fdz
  %i.fgf = load i64, ptr %i.bwq, align 8, !tbaa !56, !noalias !1897 ; 3 uses
  %i.fgg = mul i64 %i.fge, %i.fgf
  %i.fgh = getelementptr inbounds nuw i8, ptr %i.fgc, i64 %i.fgg
  %i.fgi = sext i32 %i.fgb to i64
  %i.fgj = mul nsw i64 %i.fgi, %i.fer
  %i.fgk = mul i64 %i.fgj, %i.fgf                 ; 2 uses
  %i.fgl = getelementptr inbounds nuw i8, ptr %i.fgh, i64 %i.fgk
  %i.fgm = shl nsw i32 %i.few, 2
  %i.fgn = sext i32 %i.fgm to i64                 ; 2 uses
  %i.fgo = getelementptr inbounds [2 x i8], ptr %i.fgl, i64 %i.fgn
  %i.fgp = mul i64 %i.fgd, %i.feb
  %i.fgq = mul i64 %i.fgp, %i.fgf
  %i.fgr = getelementptr inbounds nuw i8, ptr %i.fgc, i64 %i.fgq
  %i.fgs = getelementptr inbounds nuw i8, ptr %i.fgr, i64 %i.fgk
  %i.fgt = getelementptr inbounds [2 x i8], ptr %i.fgs, i64 %i.fgn
  %i.fgu = load i64, ptr %i.fgo, align 1, !tbaa !82
  %i.fgv = insertelement <2 x i64> poison, i64 %i.fgu, i64 0
  %i.fgw = bitcast <2 x i64> %i.fgv to <8 x i16>
  %i.fgx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fgw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fgy = load i64, ptr %i.fgt, align 1, !tbaa !82
  %i.fgz = insertelement <2 x i64> poison, i64 %i.fgy, i64 0
  %i.fha = bitcast <2 x i64> %i.fgz to <8 x i16>
  %i.fhb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fha, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fhc = shufflevector <8 x i16> %i.fgx, <8 x i16> %i.fhb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fhd = bitcast <16 x i16> %i.fhc to <8 x float>
  br label %.sink.split9218

_ZN4ncnn3MatD2Ev.exit2229.us.us:                  ; preds = %bb.bz
  %i.fhe = load i32, ptr %i.bvx, align 4, !tbaa !55, !noalias !1898
  %i.fhf = load ptr, ptr %0, align 8, !tbaa !20, !noalias !1898
  %i.fhg = load i64, ptr %i.bwp, align 8, !tbaa !21, !noalias !1898
  %i.fhh = mul i64 %i.fhg, %i.fed
  %i.fhi = load i64, ptr %i.bwq, align 8, !tbaa !56, !noalias !1898 ; 2 uses
  %i.fhj = mul i64 %i.fhh, %i.fhi
  %i.fhk = getelementptr inbounds nuw i8, ptr %i.fhf, i64 %i.fhj
  %i.fhl = sext i32 %i.fhe to i64
  %i.fhm = mul nsw i64 %i.fhl, %i.fer
  %i.fhn = mul i64 %i.fhm, %i.fhi
  %i.fho = getelementptr inbounds nuw i8, ptr %i.fhk, i64 %i.fhn
  %i.fhp = shl nsw i32 %i.few, 3
  %i.fhq = sext i32 %i.fhp to i64
  %i.fhr = getelementptr inbounds [2 x i8], ptr %i.fho, i64 %i.fhq
  %i.fhs = load <8 x i16>, ptr %i.fhr, align 16, !tbaa !82 ; 2 uses
  %i.fht = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fhs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fhu = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fhs, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fhv = shufflevector <8 x i16> %i.fht, <8 x i16> %i.fhu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fhw = bitcast <16 x i16> %i.fhv to <8 x float>
  br label %.sink.split9218

.sink.split9218:                                  ; preds = %_ZN4ncnn3MatD2Ev.exit2226.us.us, %_ZN4ncnn3MatD2Ev.exit2228.us.us, %_ZN4ncnn3MatD2Ev.exit2229.us.us
  %.sink9231 = phi <8 x float> [ %i.fhw, %_ZN4ncnn3MatD2Ev.exit2229.us.us ], [ %i.fhd, %_ZN4ncnn3MatD2Ev.exit2228.us.us ], [ %.sroa.08685.28.vec.insert, %_ZN4ncnn3MatD2Ev.exit2226.us.us ] ; 2 uses
  %i.fhx = load <8 x i16>, ptr %i.ffa, align 16, !tbaa !82 ; 2 uses
  %i.fhy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fhx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fhz = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fhx, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fia = shufflevector <8 x i16> %i.fhy, <8 x i16> %i.fhz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fib = bitcast <16 x i16> %i.fia to <8 x float>
  %i.fic = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink9231, <8 x float> nofpclass(nan inf) %i.fib, <8 x float> nofpclass(nan inf) %.267707708.us.us)
  %i.fid = getelementptr inbounds nuw i8, ptr %i.ffa, i64 16
  %i.fie = load <8 x i16>, ptr %i.fid, align 16, !tbaa !82 ; 2 uses
  %i.fif = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fie, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fig = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.fie, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fih = shufflevector <8 x i16> %i.fif, <8 x i16> %i.fig, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fii = bitcast <16 x i16> %i.fih to <8 x float>
  %i.fij = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink9231, <8 x float> nofpclass(nan inf) %i.fii, <8 x float> nofpclass(nan inf) %.267657709.us.us)
  br label %bb.ca

bb.ca:                                            ; preds = %.sink.split9218, %bb.bz, %bb.by, %bb.bx
  %.36771.us.us = phi nsz <8 x float> [ %.267707708.us.us, %bb.bx ], [ %.267707708.us.us, %bb.bz ], [ %.267707708.us.us, %bb.by ], [ %i.fic, %.sink.split9218 ] ; 2 uses
  %.36766.us.us = phi nsz <8 x float> [ %.267657709.us.us, %bb.bx ], [ %.267657709.us.us, %bb.bz ], [ %.267657709.us.us, %bb.by ], [ %i.fij, %.sink.split9218 ] ; 2 uses
  %indvars.iv.next8507 = add nuw nsw i64 %indvars.iv8506, 1 ; 2 uses
  %exitcond8510.not = icmp eq i64 %indvars.iv.next8507, %i.fdv
  br i1 %exitcond8510.not, label %..loopexit7021_crit_edge.us.us, label %bb.bx, !llvm.loop !1799

..loopexit7021_crit_edge.us.us:                   ; preds = %bb.ca, %bb.bw, %.lr.ph7718.split.us.us
  %.46772.us.us = phi nsz <8 x float> [ %.167697715.us.us, %.lr.ph7718.split.us.us ], [ %.167697715.us.us, %bb.bw ], [ %.36771.us.us, %bb.ca ] ; 2 uses
  %.46767.us.us = phi nsz <8 x float> [ %.167647716.us.us, %.lr.ph7718.split.us.us ], [ %.167647716.us.us, %bb.bw ], [ %.36766.us.us, %bb.ca ] ; 2 uses
  %indvars.iv.next8512 = add nuw nsw i64 %indvars.iv8511, 1 ; 2 uses
  %exitcond8515.not = icmp eq i64 %indvars.iv.next8512, %wide.trip.count8514
  br i1 %exitcond8515.not, label %._crit_edge7719.us, label %.lr.ph7718.split.us.us, !llvm.loop !1800

._crit_edge7719.us:                               ; preds = %..loopexit7021_crit_edge.us.us, %.preheader7027.us
  %.us-phi7725.us = phi <8 x float> [ %.067687728.us, %.preheader7027.us ], [ %.46772.us.us, %..loopexit7021_crit_edge.us.us ] ; 2 uses
  %.us-phi7726.us = phi <8 x float> [ %.067637729.us, %.preheader7027.us ], [ %.46767.us.us, %..loopexit7021_crit_edge.us.us ] ; 2 uses
  %i.fik = getelementptr inbounds [2 x i8], ptr %.119017730.us, i64 %i.esz ; 2 uses
  %indvars.iv.next8517 = add nuw nsw i64 %indvars.iv8516, 8 ; 3 uses
  %i.fil = trunc i64 %indvars.iv.next8517 to i32
  %i.fim = or i32 %i.fil, 7
  %i.fin = icmp slt i32 %i.fim, %i.bvw
  br i1 %i.fin, label %.preheader7027.us, label %._crit_edge7734.loopexit, !llvm.loop !1801

._crit_edge7734.loopexit:                         ; preds = %._crit_edge7719.us
  %i.fio = trunc nuw i64 %indvars.iv.next8517 to i32
  br label %._crit_edge7734

._crit_edge7734:                                  ; preds = %.preheader7027.preheader, %._crit_edge7734.loopexit, %._crit_edge7689
  %.06768.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge7689 ], [ %.us-phi7725.us, %._crit_edge7734.loopexit ], [ zeroinitializer, %.preheader7027.preheader ] ; 2 uses
  %.06763.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge7689 ], [ %.us-phi7726.us, %._crit_edge7734.loopexit ], [ zeroinitializer, %.preheader7027.preheader ] ; 2 uses
  %.11901.lcssa = phi ptr [ %.01900.lcssa, %._crit_edge7689 ], [ %i.fik, %._crit_edge7734.loopexit ], [ %scevgep8501, %.preheader7027.preheader ] ; 4 uses
  %.11896.lcssa = phi i32 [ %.01895.lcssa, %._crit_edge7689 ], [ %i.fio, %._crit_edge7734.loopexit ], [ %i.fds, %.preheader7027.preheader ] ; 7 uses
  %i.fip = shufflevector <8 x float> %.06768.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fiq = shufflevector <8 x float> %.06768.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fir = fadd fast <4 x float> %i.fip, %i.fiq   ; 4 uses
  %i.fis = shufflevector <8 x float> %.06763.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fit = shufflevector <8 x float> %.06763.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fiu = fadd fast <4 x float> %i.fis, %i.fit   ; 4 uses
  %i.fiv = or disjoint i32 %.11896.lcssa, 3
  %i.fiw = icmp slt i32 %i.fiv, %i.bvw
  br i1 %i.fiw, label %.preheader7026.lr.ph, label %._crit_edge7804

.preheader7026.lr.ph:                             ; preds = %._crit_edge7734
  %i.fix = load i32, ptr %i.d, align 4
  %i.fiy = load i32, ptr %i.j, align 4
  %invariant.op7784 = sub i32 %.neg6954, %i.fiy
  %i.fiz = load i32, ptr %i.f, align 4            ; 2 uses
  %i.fja = load i32, ptr %i.a, align 4
  %.fr8182 = freeze i32 %i.fja                    ; 2 uses
  %i.fjb = load i32, ptr %i.c, align 4            ; 2 uses
  %i.fjc = load i32, ptr %i.i, align 4
  %.neg6948 = add nuw nsw i32 %.019377913, 1
  %invariant.op7758 = sub i32 %.neg6948, %i.fjc   ; 2 uses
  %i.fjd = load i32, ptr %i.e, align 4            ; 4 uses
  br i1 %i.esu, label %.preheader7026.lr.ph.split.us, label %.preheader7026.preheader

.preheader7026.preheader:                         ; preds = %.preheader7026.lr.ph
  %i.fje = sub i32 %i.bxf, %.11896.lcssa          ; 2 uses
  %i.fjf = lshr i32 %i.fje, 1
  %i.fjg = and i32 %i.fjf, 2147483646
  %narrow9012 = add nuw i32 %i.fjg, 2
  %i.fjh = zext i32 %narrow9012 to i64
  %i.fji = mul nsw i64 %i.etb, %i.fjh
  %scevgep8519 = getelementptr i8, ptr %.11901.lcssa, i64 %i.fji
  %i.fjj = add i32 %.11896.lcssa, 4
  %i.fjk = and i32 %i.fje, -4
  %i.fjl = add i32 %i.fjj, %i.fjk
  br label %._crit_edge7804

.preheader7026.lr.ph.split.us:                    ; preds = %.preheader7026.lr.ph
  %i.fjm = icmp sgt i32 %.fr8182, 0
  br i1 %i.fjm, label %.preheader7026.us.us.preheader, label %.preheader7026.us.preheader

.preheader7026.us.preheader:                      ; preds = %.preheader7026.lr.ph.split.us
  %i.fjn = sub i32 %i.bxf, %.11896.lcssa          ; 2 uses
  %i.fjo = lshr i32 %i.fjn, 1
  %i.fjp = and i32 %i.fjo, 2147483646
  %narrow9013 = add nuw i32 %i.fjp, 2
  %i.fjq = zext i32 %narrow9013 to i64
  %i.fjr = mul nsw i64 %i.etb, %i.fjq
  %scevgep8520 = getelementptr i8, ptr %.11901.lcssa, i64 %i.fjr
  %i.fjs = add i32 %.11896.lcssa, 4
  %i.fjt = and i32 %i.fjn, -4
  %i.fju = add i32 %i.fjs, %i.fjt
  br label %._crit_edge7804

.preheader7026.us.us.preheader:                   ; preds = %.preheader7026.lr.ph.split.us
  %i.fjv = zext nneg i32 %.fr8182 to i64          ; 3 uses
  %i.fjw = zext i32 %.11896.lcssa to i64
  br label %.preheader7026.us.us

.preheader7026.us.us:                             ; preds = %.preheader7026.us.us.preheader, %._crit_edge7781.split.us.us.us
  %indvars.iv8540 = phi i64 [ %i.fjw, %.preheader7026.us.us.preheader ], [ %indvars.iv.next8541, %._crit_edge7781.split.us.us.us ] ; 6 uses
  %.219027800.us.us = phi ptr [ %.11901.lcssa, %.preheader7026.us.us.preheader ], [ %i.fnp, %._crit_edge7781.split.us.us.us ] ; 3 uses
  %.067537799.us.us = phi <4 x float> [ zeroinitializer, %.preheader7026.us.us.preheader ], [ %.46757.us.us.us, %._crit_edge7781.split.us.us.us ]
  %.067587798.us.us = phi <4 x float> [ zeroinitializer, %.preheader7026.us.us.preheader ], [ %.46762.us.us.us, %._crit_edge7781.split.us.us.us ]
  %i.fjx = lshr exact i64 %indvars.iv8540, 2
  %i.fjy = and i64 %i.fjx, 1073741823
  %i.fjz = or disjoint i64 %indvars.iv8540, 1
  %i.fka = or disjoint i64 %indvars.iv8540, 2
  %i.fkb = or disjoint i64 %indvars.iv8540, 3
  br label %bb.cb

bb.cb:                                            ; preds = %..loopexit7019_crit_edge.us.us.us, %.preheader7026.us.us
  %indvars.iv8535 = phi i64 [ %indvars.iv.next8536, %..loopexit7019_crit_edge.us.us.us ], [ 0, %.preheader7026.us.us ] ; 3 uses
  %.167547778.us.us.us = phi <4 x float> [ %.46757.us.us.us, %..loopexit7019_crit_edge.us.us.us ], [ %.067537799.us.us, %.preheader7026.us.us ] ; 5 uses
  %.167597777.us.us.us = phi <4 x float> [ %.46762.us.us.us, %..loopexit7019_crit_edge.us.us.us ], [ %.067587798.us.us, %.preheader7026.us.us ] ; 5 uses
  %i.fkc = trunc i64 %indvars.iv8535 to i32
  %i.fkd = mul i32 %i.fix, %i.fkc
  %.reass.us7785.us.us = add i32 %i.fkd, %invariant.op7784 ; 3 uses
  %i.fke = icmp slt i32 %.reass.us7785.us.us, 0
  br i1 %i.fke, label %..loopexit7019_crit_edge.us.us.us, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fkf = srem i32 %.reass.us7785.us.us, %i.fiz
  %i.fkg = sdiv i32 %.reass.us7785.us.us, %i.fiz  ; 2 uses
  %.not2126.us.us.us = icmp eq i32 %i.fkf, 0
  %.not2127.us.us.us = icmp slt i32 %i.fkg, %i.bwa
  %or.cond9358 = select i1 %.not2126.us.us.us, i1 %.not2127.us.us.us, i1 false
  br i1 %or.cond9358, label %.preheader7018.us.us.us, label %..loopexit7019_crit_edge.us.us.us

.preheader7018.us.us.us:                          ; preds = %bb.cc
  %i.fkh = mul nuw nsw i64 %indvars.iv8535, %i.fjv ; 2 uses
  %i.fki = sext i32 %i.fkg to i64                 ; 2 uses
  switch i32 %.fr8179, label %..loopexit7019_crit_edge.us.us.us [
    i32 4, label %.lr.ph.split.us.us.us7816.us
    i32 1, label %.lr.ph.split.us7762.us.us.us
  ]

.lr.ph.split.us7762.us.us.us:                     ; preds = %.preheader7018.us.us.us, %bb.ce
  %indvars.iv8525 = phi i64 [ %indvars.iv.next8526, %bb.ce ], [ 0, %.preheader7018.us.us.us ] ; 3 uses
  %.267557754.us7764.us.us.us = phi <4 x float> [ %.36756.us7771.us.us.us, %bb.ce ], [ %.167547778.us.us.us, %.preheader7018.us.us.us ] ; 3 uses
  %.267607753.us7765.us.us.us = phi <4 x float> [ %.36761.us7770.us.us.us, %bb.ce ], [ %.167597777.us.us.us, %.preheader7018.us.us.us ] ; 3 uses
  %i.fkj = trunc i64 %indvars.iv8525 to i32
  %i.fkk = mul i32 %i.fjb, %i.fkj
  %.reass7759.us7766.us.us.us = add i32 %i.fkk, %invariant.op7758 ; 3 uses
  %i.fkl = icmp slt i32 %.reass7759.us7766.us.us.us, 0
  br i1 %i.fkl, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.split.us7762.us.us.us
  %i.fkm = srem i32 %.reass7759.us7766.us.us.us, %i.fjd
  %i.fkn = sdiv i32 %.reass7759.us7766.us.us.us, %i.fjd ; 2 uses
  %.not2128.us7767.us.us.us = icmp eq i32 %i.fkm, 0
  %.not2129.us7768.us.us.us = icmp slt i32 %i.fkn, %i.bvy
  %or.cond9359 = select i1 %.not2128.us7767.us.us.us, i1 %.not2129.us7768.us.us.us, i1 false
  br i1 %or.cond9359, label %_ZN4ncnn3MatD2Ev.exit2224.us.us.us.us, label %bb.ce

_ZN4ncnn3MatD2Ev.exit2224.us.us.us.us:            ; preds = %bb.cd
  %i.fko = load i32, ptr %i.bvx, align 4, !tbaa !55, !noalias !1899
  %i.fkp = load ptr, ptr %0, align 8, !tbaa !20, !noalias !1899
  %i.fkq = load i64, ptr %i.bwp, align 8, !tbaa !21, !noalias !1899
  %i.fkr = load i64, ptr %i.bwq, align 8, !tbaa !56, !noalias !1899 ; 2 uses
  %factor.op.mul.us.us7786.us.us = mul i64 %i.fkq, %i.fkr ; 4 uses
  %i.fks = sext i32 %i.fko to i64
  %i.fkt = mul nsw i64 %i.fks, %i.fki
  %i.fku = mul i64 %i.fkt, %i.fkr
  %invariant.gep.us.us7787.us.us = getelementptr i8, ptr %i.fkp, i64 %i.fku
  %i.fkv = sext i32 %i.fkn to i64
  %invariant.gep7750.us.us.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7787.us.us, i64 %i.fkv ; 4 uses
  %.reass.us7769.us.us.us = mul i64 %factor.op.mul.us.us7786.us.us, %indvars.iv8540
  %gep7751.us.us.us.us = getelementptr i8, ptr %invariant.gep7750.us.us.us.us, i64 %.reass.us7769.us.us.us
  %i.fkw = load i16, ptr %gep7751.us.us.us.us, align 2, !tbaa !92
  %.reass.us7769.us.us.us.1 = mul i64 %factor.op.mul.us.us7786.us.us, %i.fjz
  %gep7751.us.us.us.us.1 = getelementptr i8, ptr %invariant.gep7750.us.us.us.us, i64 %.reass.us7769.us.us.us.1
  %i.fkx = load i16, ptr %gep7751.us.us.us.us.1, align 2, !tbaa !92
  %.reass.us7769.us.us.us.2 = mul i64 %factor.op.mul.us.us7786.us.us, %i.fka
  %gep7751.us.us.us.us.2 = getelementptr i8, ptr %invariant.gep7750.us.us.us.us, i64 %.reass.us7769.us.us.us.2
  %i.fky = load i16, ptr %gep7751.us.us.us.us.2, align 2, !tbaa !92
  %.reass.us7769.us.us.us.3 = mul i64 %factor.op.mul.us.us7786.us.us, %i.fkb
  %gep7751.us.us.us.us.3 = getelementptr i8, ptr %invariant.gep7750.us.us.us.us, i64 %.reass.us7769.us.us.us.3
  %i.fkz = load i16, ptr %gep7751.us.us.us.us.3, align 2, !tbaa !92
  %i.fla = zext i16 %i.fkw to i32
  %i.flb = zext i16 %i.fkx to i32
  %i.flc = zext i16 %i.fky to i32
  %i.fld = zext i16 %i.fkz to i32
  %i.fle = insertelement <4 x i32> poison, i32 %i.fla, i64 0
  %i.flf = insertelement <4 x i32> %i.fle, i32 %i.flb, i64 1
  %i.flg = insertelement <4 x i32> %i.flf, i32 %i.flc, i64 2
  %i.flh = insertelement <4 x i32> %i.flg, i32 %i.fld, i64 3
  %i.fli = shl nuw <4 x i32> %i.flh, splat (i32 16)
  %.sroa.08683.12.vec.insert = bitcast <4 x i32> %i.fli to <4 x float> ; 2 uses
  %i.flj = add nuw nsw i64 %i.fkh, %indvars.iv8525
  %i.flk = shl i64 %i.flj, 3
  %i.fll = and i64 %i.flk, 4294967288
  %i.flm = getelementptr inbounds nuw [2 x i8], ptr %.219027800.us.us, i64 %i.fll ; 2 uses
  %i.fln = load i64, ptr %i.flm, align 1, !tbaa !82
  %i.flo = insertelement <2 x i64> poison, i64 %i.fln, i64 0
  %i.flp = bitcast <2 x i64> %i.flo to <8 x i16>
  %i.flq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.flp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.flr = bitcast <8 x i16> %i.flq to <4 x float>
  %i.fls = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.08683.12.vec.insert, <4 x float> nofpclass(nan inf) %i.flr, <4 x float> nofpclass(nan inf) %.267607753.us7765.us.us.us)
  %i.flt = getelementptr inbounds nuw i8, ptr %i.flm, i64 8
  %i.flu = load i64, ptr %i.flt, align 1, !tbaa !82
  %i.flv = insertelement <2 x i64> poison, i64 %i.flu, i64 0
  %i.flw = bitcast <2 x i64> %i.flv to <8 x i16>
  %i.flx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.flw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fly = bitcast <8 x i16> %i.flx to <4 x float>
  %i.flz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.08683.12.vec.insert, <4 x float> nofpclass(nan inf) %i.fly, <4 x float> nofpclass(nan inf) %.267557754.us7764.us.us.us)
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2224.us.us.us.us, %bb.cd, %.lr.ph.split.us7762.us.us.us
  %.36761.us7770.us.us.us = phi nsz <4 x float> [ %.267607753.us7765.us.us.us, %.lr.ph.split.us7762.us.us.us ], [ %i.fls, %_ZN4ncnn3MatD2Ev.exit2224.us.us.us.us ], [ %.267607753.us7765.us.us.us, %bb.cd ] ; 2 uses
  %.36756.us7771.us.us.us = phi nsz <4 x float> [ %.267557754.us7764.us.us.us, %.lr.ph.split.us7762.us.us.us ], [ %i.flz, %_ZN4ncnn3MatD2Ev.exit2224.us.us.us.us ], [ %.267557754.us7764.us.us.us, %bb.cd ] ; 2 uses
  %indvars.iv.next8526 = add nuw nsw i64 %indvars.iv8525, 1 ; 2 uses
  %exitcond8529.not = icmp eq i64 %indvars.iv.next8526, %i.fjv
  br i1 %exitcond8529.not, label %..loopexit7019_crit_edge.us.us.us, label %.lr.ph.split.us7762.us.us.us, !llvm.loop !1804

.lr.ph.split.us.us.us7816.us:                     ; preds = %.preheader7018.us.us.us, %bb.cg
  %indvars.iv8530 = phi i64 [ %indvars.iv.next8531, %bb.cg ], [ 0, %.preheader7018.us.us.us ] ; 3 uses
  %.267557754.us.us.us.us = phi <4 x float> [ %.36756.us.us.us.us, %bb.cg ], [ %.167547778.us.us.us, %.preheader7018.us.us.us ] ; 3 uses
  %.267607753.us.us.us.us = phi <4 x float> [ %.36761.us.us.us.us, %bb.cg ], [ %.167597777.us.us.us, %.preheader7018.us.us.us ] ; 3 uses
  %i.fma = trunc i64 %indvars.iv8530 to i32
  %i.fmb = mul i32 %i.fjb, %i.fma
  %.reass7759.us.us.us.us = add i32 %i.fmb, %invariant.op7758 ; 3 uses
  %i.fmc = icmp slt i32 %.reass7759.us.us.us.us, 0
  br i1 %i.fmc, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.split.us.us.us7816.us
  %i.fmd = srem i32 %.reass7759.us.us.us.us, %i.fjd
  %i.fme = sdiv i32 %.reass7759.us.us.us.us, %i.fjd ; 2 uses
  %.not2128.us.us.us.us = icmp eq i32 %i.fmd, 0
  %.not2129.us.us.us.us = icmp slt i32 %i.fme, %i.bvy
  %or.cond9360 = select i1 %.not2128.us.us.us.us, i1 %.not2129.us.us.us.us, i1 false
  br i1 %or.cond9360, label %_ZN4ncnn3MatD2Ev.exit2225.us.us.us.us, label %bb.cg

_ZN4ncnn3MatD2Ev.exit2225.us.us.us.us:            ; preds = %bb.cf
  %i.fmf = add nuw nsw i64 %i.fkh, %indvars.iv8530
  %i.fmg = shl i64 %i.fmf, 3
  %i.fmh = and i64 %i.fmg, 4294967288
  %i.fmi = getelementptr inbounds nuw [2 x i8], ptr %.219027800.us.us, i64 %i.fmh ; 2 uses
  %i.fmj = load i32, ptr %i.bvx, align 4, !tbaa !55, !noalias !1900
  %i.fmk = load ptr, ptr %0, align 8, !tbaa !20, !noalias !1900
  %i.fml = load i64, ptr %i.bwp, align 8, !tbaa !21, !noalias !1900
  %i.fmm = mul i64 %i.fml, %i.fjy
  %i.fmn = load i64, ptr %i.bwq, align 8, !tbaa !56, !noalias !1900 ; 2 uses
  %i.fmo = mul i64 %i.fmm, %i.fmn
  %i.fmp = getelementptr inbounds nuw i8, ptr %i.fmk, i64 %i.fmo
  %i.fmq = sext i32 %i.fmj to i64
  %i.fmr = mul nsw i64 %i.fmq, %i.fki
  %i.fms = mul i64 %i.fmr, %i.fmn
  %i.fmt = getelementptr inbounds nuw i8, ptr %i.fmp, i64 %i.fms
  %i.fmu = shl nsw i32 %i.fme, 2
  %i.fmv = sext i32 %i.fmu to i64
  %i.fmw = getelementptr inbounds [2 x i8], ptr %i.fmt, i64 %i.fmv
  %i.fmx = load i64, ptr %i.fmw, align 1, !tbaa !82
  %i.fmy = insertelement <2 x i64> poison, i64 %i.fmx, i64 0
  %i.fmz = bitcast <2 x i64> %i.fmy to <8 x i16>
  %i.fna = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fmz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fnb = bitcast <8 x i16> %i.fna to <4 x float> ; 2 uses
  %i.fnc = load i64, ptr %i.fmi, align 1, !tbaa !82
  %i.fnd = insertelement <2 x i64> poison, i64 %i.fnc, i64 0
  %i.fne = bitcast <2 x i64> %i.fnd to <8 x i16>
  %i.fnf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fne, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fng = bitcast <8 x i16> %i.fnf to <4 x float>
  %i.fnh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fnb, <4 x float> nofpclass(nan inf) %i.fng, <4 x float> nofpclass(nan inf) %.267607753.us.us.us.us)
  %i.fni = getelementptr inbounds nuw i8, ptr %i.fmi, i64 8
  %i.fnj = load i64, ptr %i.fni, align 1, !tbaa !82
  %i.fnk = insertelement <2 x i64> poison, i64 %i.fnj, i64 0
  %i.fnl = bitcast <2 x i64> %i.fnk to <8 x i16>
  %i.fnm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fnl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fnn = bitcast <8 x i16> %i.fnm to <4 x float>
  %i.fno = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fnb, <4 x float> nofpclass(nan inf) %i.fnn, <4 x float> nofpclass(nan inf) %.267557754.us.us.us.us)
  br label %bb.cg

bb.cg:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2225.us.us.us.us, %bb.cf, %.lr.ph.split.us.us.us7816.us
  %.36761.us.us.us.us = phi nsz <4 x float> [ %.267607753.us.us.us.us, %.lr.ph.split.us.us.us7816.us ], [ %.267607753.us.us.us.us, %bb.cf ], [ %i.fnh, %_ZN4ncnn3MatD2Ev.exit2225.us.us.us.us ] ; 2 uses
  %.36756.us.us.us.us = phi nsz <4 x float> [ %.267557754.us.us.us.us, %.lr.ph.split.us.us.us7816.us ], [ %.267557754.us.us.us.us, %bb.cf ], [ %i.fno, %_ZN4ncnn3MatD2Ev.exit2225.us.us.us.us ] ; 2 uses
  %indvars.iv.next8531 = add nuw nsw i64 %indvars.iv8530, 1 ; 2 uses
  %exitcond8534.not = icmp eq i64 %indvars.iv.next8531, %i.fjv
  br i1 %exitcond8534.not, label %..loopexit7019_crit_edge.us.us.us, label %.lr.ph.split.us.us.us7816.us, !llvm.loop !1804

..loopexit7019_crit_edge.us.us.us:                ; preds = %bb.ce, %bb.cg, %.preheader7018.us.us.us, %bb.cc, %bb.cb
  %.46762.us.us.us = phi nsz <4 x float> [ %.167597777.us.us.us, %bb.cb ], [ %.167597777.us.us.us, %bb.cc ], [ %.36761.us.us.us.us, %bb.cg ], [ %.167597777.us.us.us, %.preheader7018.us.us.us ], [ %.36761.us7770.us.us.us, %bb.ce ] ; 3 uses
  %.46757.us.us.us = phi nsz <4 x float> [ %.167547778.us.us.us, %bb.cb ], [ %.167547778.us.us.us, %bb.cc ], [ %.36756.us.us.us.us, %bb.cg ], [ %.167547778.us.us.us, %.preheader7018.us.us.us ], [ %.36756.us7771.us.us.us, %bb.ce ] ; 3 uses
  %indvars.iv.next8536 = add nuw nsw i64 %indvars.iv8535, 1 ; 2 uses
  %exitcond8539.not = icmp eq i64 %indvars.iv.next8536, %wide.trip.count8538
  br i1 %exitcond8539.not, label %._crit_edge7781.split.us.us.us, label %bb.cb, !llvm.loop !1807

._crit_edge7781.split.us.us.us:                   ; preds = %..loopexit7019_crit_edge.us.us.us
  %i.fnp = getelementptr inbounds [2 x i8], ptr %.219027800.us.us, i64 %i.etb ; 2 uses
  %indvars.iv.next8541 = add nuw nsw i64 %indvars.iv8540, 4 ; 3 uses
  %i.fnq = trunc i64 %indvars.iv.next8541 to i32
  %i.fnr = or i32 %i.fnq, 3
  %i.fns = icmp slt i32 %i.fnr, %i.bvw
  br i1 %i.fns, label %.preheader7026.us.us, label %._crit_edge7804.loopexit, !llvm.loop !1808

._crit_edge7804.loopexit:                         ; preds = %._crit_edge7781.split.us.us.us
  %i.fnt = trunc nuw i64 %indvars.iv.next8541 to i32
  br label %._crit_edge7804

._crit_edge7804:                                  ; preds = %.preheader7026.preheader, %.preheader7026.us.preheader, %._crit_edge7804.loopexit, %._crit_edge7734
  %.06758.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge7734 ], [ %.46762.us.us.us, %._crit_edge7804.loopexit ], [ zeroinitializer, %.preheader7026.us.preheader ], [ zeroinitializer, %.preheader7026.preheader ] ; 4 uses
  %.06753.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge7734 ], [ %.46757.us.us.us, %._crit_edge7804.loopexit ], [ zeroinitializer, %.preheader7026.us.preheader ], [ zeroinitializer, %.preheader7026.preheader ] ; 4 uses
  %.21902.lcssa = phi ptr [ %.11901.lcssa, %._crit_edge7734 ], [ %i.fnp, %._crit_edge7804.loopexit ], [ %scevgep8520, %.preheader7026.us.preheader ], [ %scevgep8519, %.preheader7026.preheader ] ; 3 uses
  %.21897.lcssa = phi i32 [ %.11896.lcssa, %._crit_edge7734 ], [ %i.fnt, %._crit_edge7804.loopexit ], [ %i.fju, %.preheader7026.us.preheader ], [ %i.fjl, %.preheader7026.preheader ] ; 5 uses
  %13 = shufflevector <4 x float> %i.fcw, <4 x float> %i.fdc, <2 x i32> <i32 3, i32 7>
  %i.fnu = shufflevector <4 x float> %i.fcw, <4 x float> %i.fdc, <2 x i32> <i32 1, i32 5>
  %i.fnv = fadd fast <2 x float> %13, %i.fnu
  %14 = fadd fast <2 x float> %i.fnv, %i.eti
  %15 = shufflevector <4 x float> %i.fcw, <4 x float> %i.fdc, <2 x i32> <i32 2, i32 6>
  %i.fnw = shufflevector <4 x float> %i.fcw, <4 x float> %i.fdc, <2 x i32> <i32 0, i32 4>
  %16 = fadd fast <2 x float> %15, %i.fnw
  %i.fnx = fadd fast <2 x float> %14, %16
  %17 = shufflevector <4 x float> %i.fir, <4 x float> %i.fiu, <2 x i32> <i32 3, i32 7>
  %i.fny = shufflevector <4 x float> %i.fir, <4 x float> %i.fiu, <2 x i32> <i32 1, i32 5>
  %18 = fadd fast <2 x float> %17, %i.fny
  %i.fnz = fadd fast <2 x float> %i.fnx, %18
  %19 = shufflevector <4 x float> %i.fir, <4 x float> %i.fiu, <2 x i32> <i32 2, i32 6>
  %i.foa = shufflevector <4 x float> %i.fir, <4 x float> %i.fiu, <2 x i32> <i32 0, i32 4>
  %20 = fadd fast <2 x float> %19, %i.foa
  %i.fob = fadd fast <2 x float> %i.fnz, %20
  %21 = shufflevector <4 x float> %.06758.lcssa, <4 x float> %.06753.lcssa, <2 x i32> <i32 3, i32 7>
  %i.foc = shufflevector <4 x float> %.06758.lcssa, <4 x float> %.06753.lcssa, <2 x i32> <i32 1, i32 5>
  %22 = fadd fast <2 x float> %21, %i.foc
  %i.fod = fadd fast <2 x float> %i.fob, %22
  %23 = shufflevector <4 x float> %.06758.lcssa, <4 x float> %.06753.lcssa, <2 x i32> <i32 2, i32 6>
  %i.foe = shufflevector <4 x float> %.06758.lcssa, <4 x float> %.06753.lcssa, <2 x i32> <i32 0, i32 4>
  %24 = fadd fast <2 x float> %23, %i.foe
  %i.fof = fadd fast <2 x float> %i.fod, %24      ; 3 uses
  %i.fog = or disjoint i32 %.21897.lcssa, 1
  %i.foh = icmp slt i32 %i.fog, %i.bvw
  br i1 %i.foh, label %.preheader7025.lr.ph, label %.preheader7029

.preheader7025.lr.ph:                             ; preds = %._crit_edge7804
  %i.foi = load i32, ptr %i.j, align 4
  %invariant.op7844 = sub i32 %.neg6954, %i.foi
  %i.foj = load i32, ptr %i.f, align 4            ; 2 uses
  %i.fok = load i32, ptr %i.a, align 4
  %.fr8183 = freeze i32 %i.fok                    ; 2 uses
  %i.fol = icmp sgt i32 %.fr8183, 0
  %i.fom = load i32, ptr %i.i, align 4
  %.neg6944 = add nuw nsw i32 %.019377913, 1
  %invariant.op7835 = sub i32 %.neg6944, %i.fom
  %i.fon = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.esu, label %.preheader7025.us.preheader, label %.preheader7025.preheader

.preheader7025.preheader:                         ; preds = %.preheader7025.lr.ph
  %i.foo = sub i32 %i.bxg, %.21897.lcssa          ; 2 uses
  %i.fop = and i32 %i.foo, -2
  %i.foq = zext i32 %i.fop to i64
  %i.for = add nuw nsw i64 %i.foq, 2
  %i.fos = mul nsw i64 %i.for, %i.etd
  %scevgep8543 = getelementptr i8, ptr %.21902.lcssa, i64 %i.fos
  %i.fot = add i32 %.21897.lcssa, 2
  %i.fou = and i32 %i.foo, -2
  %i.fov = add i32 %i.fot, %i.fou
  br label %.preheader7029

.preheader7025.us.preheader:                      ; preds = %.preheader7025.lr.ph
  %i.fow = load i32, ptr %i.c, align 4
  %i.fox = load i32, ptr %i.d, align 4
  %i.foy = zext i32 %.fr8183 to i64               ; 2 uses
  %i.foz = zext i32 %.21897.lcssa to i64
  br label %.preheader7025.us

.preheader7025.us:                                ; preds = %.preheader7025.us.preheader, %._crit_edge7841.us
  %indvars.iv8557 = phi i64 [ %i.foz, %.preheader7025.us.preheader ], [ %indvars.iv.next8558, %._crit_edge7841.us ] ; 3 uses
  %.319037852.us = phi ptr [ %.21902.lcssa, %.preheader7025.us.preheader ], [ %i.frc, %._crit_edge7841.us ] ; 2 uses
  %i.fpa = phi <2 x float> [ %i.fof, %.preheader7025.us.preheader ], [ %i.frb, %._crit_edge7841.us ] ; 2 uses
  br i1 %i.fol, label %.lr.ph7840.split.us.us.preheader, label %._crit_edge7841.us

.lr.ph7840.split.us.us.preheader:                 ; preds = %.preheader7025.us
  %i.fpb = or disjoint i64 %indvars.iv8557, 1
  br label %.lr.ph7840.split.us.us

.lr.ph7840.split.us.us:                           ; preds = %.lr.ph7840.split.us.us.preheader, %..loopexit7017_crit_edge.us.us
  %indvars.iv8552 = phi i64 [ 0, %.lr.ph7840.split.us.us.preheader ], [ %indvars.iv.next8553, %..loopexit7017_crit_edge.us.us ] ; 3 uses
  %i.fpc = phi <2 x float> [ %i.fpa, %.lr.ph7840.split.us.us.preheader ], [ %i.fra, %..loopexit7017_crit_edge.us.us ] ; 3 uses
  %i.fpd = trunc i64 %indvars.iv8552 to i32
  %i.fpe = mul i32 %i.fox, %i.fpd
  %.reass7845.us.us = add i32 %i.fpe, %invariant.op7844 ; 3 uses
  %i.fpf = icmp slt i32 %.reass7845.us.us, 0
  br i1 %i.fpf, label %..loopexit7017_crit_edge.us.us, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph7840.split.us.us
  %i.fpg = srem i32 %.reass7845.us.us, %i.foj
  %i.fph = sdiv i32 %.reass7845.us.us, %i.foj     ; 2 uses
  %.not2122.us.us = icmp eq i32 %i.fpg, 0
  %.not2123.us.us = icmp slt i32 %i.fph, %i.bwa
  %or.cond9361 = select i1 %.not2122.us.us, i1 %.not2123.us.us, i1 false
  br i1 %or.cond9361, label %.preheader7016.us.us, label %..loopexit7017_crit_edge.us.us

.preheader7016.us.us:                             ; preds = %bb.ch
  %i.fpi = mul nuw nsw i64 %indvars.iv8552, %i.foy
  %i.fpj = sext i32 %i.fph to i64
  br label %bb.ci

bb.ci:                                            ; preds = %.loopexit7013.us.us, %.preheader7016.us.us
  %indvars.iv8547 = phi i64 [ %indvars.iv.next8548, %.loopexit7013.us.us ], [ 0, %.preheader7016.us.us ] ; 3 uses
  %i.fpk = phi <2 x float> [ %i.fqz, %.loopexit7013.us.us ], [ %i.fpc, %.preheader7016.us.us ] ; 3 uses
  %i.fpl = trunc i64 %indvars.iv8547 to i32
  %i.fpm = mul i32 %i.fow, %i.fpl
  %.reass7836.us.us = add i32 %i.fpm, %invariant.op7835 ; 3 uses
  %i.fpn = icmp slt i32 %.reass7836.us.us, 0
  br i1 %i.fpn, label %.loopexit7013.us.us, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.fpo = srem i32 %.reass7836.us.us, %i.fon
  %i.fpp = sdiv i32 %.reass7836.us.us, %i.fon     ; 2 uses
  %.not2124.us.us = icmp eq i32 %i.fpo, 0
  %.not2125.us.us = icmp slt i32 %i.fpp, %i.bvy
  %or.cond9362 = select i1 %.not2124.us.us, i1 %.not2125.us.us, i1 false
  br i1 %or.cond9362, label %_ZN4ncnn3MatD2Ev.exit2223.us.us, label %.loopexit7013.us.us

_ZN4ncnn3MatD2Ev.exit2223.us.us:                  ; preds = %bb.cj
  %i.fpq = add nuw nsw i64 %i.fpi, %indvars.iv8547
  %i.fpr = shl i64 %i.fpq, 2
  %i.fps = and i64 %i.fpr, 4294967292
  %i.fpt = getelementptr inbounds nuw [2 x i8], ptr %.319037852.us, i64 %i.fps
  %i.fpu = load i32, ptr %i.bvx, align 4, !tbaa !55, !noalias !1901
  %i.fpv = load ptr, ptr %0, align 8, !tbaa !20, !noalias !1901
  %i.fpw = load i64, ptr %i.bwp, align 8, !tbaa !21, !noalias !1901
  %i.fpx = load i64, ptr %i.bwq, align 8, !tbaa !56, !noalias !1901 ; 2 uses
  %factor.op.mul.us.us7867 = mul i64 %i.fpw, %i.fpx ; 2 uses
  %i.fpy = sext i32 %i.fpu to i64
  %i.fpz = mul nsw i64 %i.fpy, %i.fpj
  %i.fqa = mul i64 %i.fpz, %i.fpx
  %invariant.gep.us.us7868 = getelementptr i8, ptr %i.fpv, i64 %i.fqa
  %i.fqb = sext i32 %i.fpp to i64
  %invariant.gep7825.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7868, i64 %i.fqb ; 2 uses
  %.reass.us7846.us = mul i64 %factor.op.mul.us.us7867, %indvars.iv8557
  %gep7826.us.us = getelementptr i8, ptr %invariant.gep7825.us.us, i64 %.reass.us7846.us
  %i.fqc = load i16, ptr %gep7826.us.us, align 2, !tbaa !92
  %.reass.us7846.us.1 = mul i64 %factor.op.mul.us.us7867, %i.fpb
  %gep7826.us.us.1 = getelementptr i8, ptr %invariant.gep7825.us.us, i64 %.reass.us7846.us.1
  %i.fqd = load i16, ptr %gep7826.us.us.1, align 2, !tbaa !92
  %i.fqe = zext i16 %i.fqc to i32
  %i.fqf = shl nuw i32 %i.fqe, 16
  %i.fqg = load <4 x i16>, ptr %i.fpt, align 2, !tbaa !92
  %i.fqh = freeze <4 x i16> %i.fqg
  %i.fqi = bitcast <4 x i16> %i.fqh to <2 x i32>  ; 2 uses
  %i.fqj = and <2 x i32> %i.fqi, splat (i32 -65536)
  %i.fqk = shl <2 x i32> %i.fqi, splat (i32 16)
  %i.fql = bitcast <2 x i32> %i.fqk to <2 x float>
  %i.fqm = insertelement <2 x i32> poison, i32 %i.fqf, i64 0
  %i.fqn = bitcast <2 x i32> %i.fqm to <2 x float>
  %i.fqo = shufflevector <2 x float> %i.fqn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fqp = fmul fast <2 x float> %i.fqo, %i.fql
  %i.fqq = fadd fast <2 x float> %i.fqp, %i.fpk
  %i.fqr = zext i16 %i.fqd to i32
  %i.fqs = shl nuw i32 %i.fqr, 16
  %i.fqt = bitcast <2 x i32> %i.fqj to <2 x float>
  %i.fqu = insertelement <2 x i32> poison, i32 %i.fqs, i64 0
  %i.fqv = bitcast <2 x i32> %i.fqu to <2 x float>
  %i.fqw = shufflevector <2 x float> %i.fqv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fqx = fmul fast <2 x float> %i.fqw, %i.fqt
  %i.fqy = fadd fast <2 x float> %i.fqx, %i.fqq
  br label %.loopexit7013.us.us

.loopexit7013.us.us:                              ; preds = %_ZN4ncnn3MatD2Ev.exit2223.us.us, %bb.cj, %bb.ci
  %i.fqz = phi <2 x float> [ %i.fpk, %bb.ci ], [ %i.fpk, %bb.cj ], [ %i.fqy, %_ZN4ncnn3MatD2Ev.exit2223.us.us ] ; 2 uses
  %indvars.iv.next8548 = add nuw nsw i64 %indvars.iv8547, 1 ; 2 uses
  %exitcond8551.not = icmp eq i64 %indvars.iv.next8548, %i.foy
  br i1 %exitcond8551.not, label %..loopexit7017_crit_edge.us.us, label %bb.ci, !llvm.loop !1811

..loopexit7017_crit_edge.us.us:                   ; preds = %.loopexit7013.us.us, %bb.ch, %.lr.ph7840.split.us.us
  %i.fra = phi <2 x float> [ %i.fpc, %.lr.ph7840.split.us.us ], [ %i.fpc, %bb.ch ], [ %i.fqz, %.loopexit7013.us.us ] ; 2 uses
  %indvars.iv.next8553 = add nuw nsw i64 %indvars.iv8552, 1 ; 2 uses
  %exitcond8556.not = icmp eq i64 %indvars.iv.next8553, %wide.trip.count8555
  br i1 %exitcond8556.not, label %._crit_edge7841.us, label %.lr.ph7840.split.us.us, !llvm.loop !1812

._crit_edge7841.us:                               ; preds = %..loopexit7017_crit_edge.us.us, %.preheader7025.us
  %i.frb = phi <2 x float> [ %i.fpa, %.preheader7025.us ], [ %i.fra, %..loopexit7017_crit_edge.us.us ] ; 2 uses
  %i.frc = getelementptr inbounds [2 x i8], ptr %.319037852.us, i64 %i.etd ; 2 uses
  %indvars.iv.next8558 = add nuw nsw i64 %indvars.iv8557, 2 ; 3 uses
  %i.frd = trunc i64 %indvars.iv.next8558 to i32
  %i.fre = or i32 %i.frd, 1
  %i.frf = icmp slt i32 %i.fre, %i.bvw
  br i1 %i.frf, label %.preheader7025.us, label %.preheader7029.loopexit, !llvm.loop !1813

.preheader7029.loopexit:                          ; preds = %._crit_edge7841.us
  %i.frg = trunc nuw i64 %indvars.iv.next8558 to i32
  br label %.preheader7029

.preheader7029:                                   ; preds = %.preheader7025.preheader, %.preheader7029.loopexit, %._crit_edge7804
  %.31903.lcssa = phi ptr [ %.21902.lcssa, %._crit_edge7804 ], [ %i.frc, %.preheader7029.loopexit ], [ %scevgep8543, %.preheader7025.preheader ]
  %.31898.lcssa = phi i32 [ %.21897.lcssa, %._crit_edge7804 ], [ %i.frg, %.preheader7029.loopexit ], [ %i.fov, %.preheader7025.preheader ] ; 2 uses
  %i.frh = phi <2 x float> [ %i.fof, %._crit_edge7804 ], [ %i.frb, %.preheader7029.loopexit ], [ %i.fof, %.preheader7025.preheader ] ; 3 uses
  %i.fri = icmp slt i32 %.31898.lcssa, %i.bvw
  br i1 %i.fri, label %.preheader7024.lr.ph, label %._crit_edge7897

.preheader7024.lr.ph:                             ; preds = %.preheader7029
  %i.frj = load i32, ptr %i.d, align 4
  %i.frk = load i32, ptr %i.j, align 4
  %invariant.op7886 = sub i32 %.neg6954, %i.frk
  %i.frl = load i32, ptr %i.f, align 4            ; 2 uses
  %i.frm = load i32, ptr %i.a, align 4
  %.fr8184 = freeze i32 %i.frm                    ; 2 uses
  %i.frn = load i32, ptr %i.c, align 4
  %i.fro = load i32, ptr %i.i, align 4
  %.neg6940 = add nuw nsw i32 %.019377913, 1
  %invariant.op7878 = sub i32 %.neg6940, %i.fro
  %i.frp = load i32, ptr %i.e, align 4            ; 2 uses
  %i.frq = icmp sgt i32 %.fr8184, 0
  %or.cond9243 = and i1 %i.esu, %i.frq
  br i1 %or.cond9243, label %.preheader7024.us.us.preheader, label %._crit_edge7897

.preheader7024.us.us.preheader:                   ; preds = %.preheader7024.lr.ph
  %i.frr = zext nneg i32 %.fr8184 to i64          ; 2 uses
  %i.frs = zext i32 %.31898.lcssa to i64
  br label %.preheader7024.us.us

.preheader7024.us.us:                             ; preds = %.preheader7024.us.us.preheader, %._crit_edge7883.split.us.us.us
  %indvars.iv8570 = phi i64 [ %i.frs, %.preheader7024.us.us.preheader ], [ %indvars.iv.next8571, %._crit_edge7883.split.us.us.us ] ; 2 uses
  %.419047894.us.us = phi ptr [ %.31903.lcssa, %.preheader7024.us.us.preheader ], [ %i.ftl, %._crit_edge7883.split.us.us.us ] ; 2 uses
  %i.frt = phi <2 x float> [ %i.frh, %.preheader7024.us.us.preheader ], [ %i.ftk, %._crit_edge7883.split.us.us.us ]
  br label %bb.ck

bb.ck:                                            ; preds = %..loopexit7015_crit_edge.us.us.us, %.preheader7024.us.us
  %indvars.iv8565 = phi i64 [ %indvars.iv.next8566, %..loopexit7015_crit_edge.us.us.us ], [ 0, %.preheader7024.us.us ] ; 3 uses
  %i.fru = phi <2 x float> [ %i.ftk, %..loopexit7015_crit_edge.us.us.us ], [ %i.frt, %.preheader7024.us.us ] ; 3 uses
  %i.frv = trunc i64 %indvars.iv8565 to i32
  %i.frw = mul i32 %i.frj, %i.frv
  %.reass7887.us.us.us = add i32 %i.frw, %invariant.op7886 ; 3 uses
  %i.frx = icmp slt i32 %.reass7887.us.us.us, 0
  br i1 %i.frx, label %..loopexit7015_crit_edge.us.us.us, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.fry = srem i32 %.reass7887.us.us.us, %i.frl
end_hunk_1
