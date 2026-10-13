Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512bf16?download=true
inline.NumInlined: 192
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
_ZN4ncnn3MatD2Ev.exit2339.preheader:              ; preds = %_ZN4ncnn3MatD2Ev.exit2339.lr.ph
  %i.edh = add i32 %.21488.lcssa, 2
  %i.edi = sub i32 %i.ayq, %.21488.lcssa
  %i.edj = and i32 %i.edi, -2
  %i.edk = add i32 %i.edh, %i.edj
  br label %.preheader4361

_ZN4ncnn3MatD2Ev.exit2339.us.preheader:           ; preds = %_ZN4ncnn3MatD2Ev.exit2339.lr.ph
  %i.edl = zext i32 %.21488.lcssa to i64
  br label %iter.check6352

iter.check6352:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2339.us.preheader, %._crit_edge4977.us
  %indvars.iv5688 = phi i64 [ %i.edl, %_ZN4ncnn3MatD2Ev.exit2339.us.preheader ], [ %indvars.iv.next5689, %._crit_edge4977.us ] ; 2 uses
  %.2115124983.us = phi ptr [ %.161507.lcssa, %_ZN4ncnn3MatD2Ev.exit2339.us.preheader ], [ %scevgep5684, %._crit_edge4977.us ] ; 7 uses
  %i.edm = phi <2 x float> [ %i.ecu, %_ZN4ncnn3MatD2Ev.exit2339.us.preheader ], [ %i.etq, %._crit_edge4977.us ] ; 4 uses
  %.reass4990.us = mul i64 %factor.op.mul4989, %indvars.iv5688
  %gep4993.us = getelementptr i8, ptr %invariant.gep4992, i64 %.reass4990.us ; 42 uses
  %i.edn = getelementptr [2 x i8], ptr %gep4993.us, i64 %i.edg ; 41 uses
  br i1 %min.iters.check6319, label %vec.epilog.scalar.ph6353.preheader, label %vector.main.loop.iter.check6320

vector.main.loop.iter.check6320:                  ; preds = %iter.check6352
  %i.edo = extractelement <2 x float> %i.edm, i64 0
  %i.edp = extractelement <2 x float> %i.edm, i64 1
  br i1 %min.iters.check6321, label %vec.epilog.ph6356, label %vector.ph6322

vector.ph6322:                                    ; preds = %vector.main.loop.iter.check6320
  %i.edq = getelementptr i8, ptr %.2115124983.us, i64 %i.dhb
  %i.edr = shufflevector <2 x float> %i.edm, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.eds = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.edr, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.edt = shufflevector <16 x float> %i.edr, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body6324

vector.body6324:                                  ; preds = %vector.ph6322, %vector.body6324
  %index6325 = phi i64 [ 0, %vector.ph6322 ], [ %index.next6344, %vector.body6324 ] ; 3 uses
  %vec.phi6326 = phi <16 x float> [ %i.eds, %vector.ph6322 ], [ %i.eoo, %vector.body6324 ]
  %vec.phi6327 = phi <16 x float> [ zeroinitializer, %vector.ph6322 ], [ %i.eop, %vector.body6324 ]
  %vec.phi6328 = phi <16 x float> [ %i.edt, %vector.ph6322 ], [ %i.eoe, %vector.body6324 ]
  %vec.phi6329 = phi <16 x float> [ zeroinitializer, %vector.ph6322 ], [ %i.eof, %vector.body6324 ]
  %i.edu = shl i64 %index6325, 3                  ; 2 uses
  %next.gep6330 = getelementptr i8, ptr %.2115124983.us, i64 %i.edu
  %i.edv = getelementptr i8, ptr %.2115124983.us, i64 %i.edu
  %next.gep6331 = getelementptr i8, ptr %i.edv, i64 128
  %i.edw = getelementptr inbounds nuw [4 x i8], ptr %i.edf, i64 %index6325 ; 2 uses
  %i.edx = getelementptr inbounds nuw i8, ptr %i.edw, i64 64
  %wide.load6332 = load <16 x i32>, ptr %i.edw, align 4, !tbaa !30
  %wide.load6333 = load <16 x i32>, ptr %i.edx, align 4, !tbaa !30
  %i.edy = sext <16 x i32> %wide.load6332 to <16 x i64> ; 16 uses
  %i.edz = sext <16 x i32> %wide.load6333 to <16 x i64> ; 16 uses
  %i.eea = extractelement <16 x i64> %i.edy, i64 0 ; 2 uses
  %i.eeb = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eea
  %i.eec = extractelement <16 x i64> %i.edy, i64 1 ; 2 uses
  %i.eed = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eec
  %i.eee = extractelement <16 x i64> %i.edy, i64 2 ; 2 uses
  %i.eef = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eee
  %i.eeg = extractelement <16 x i64> %i.edy, i64 3 ; 2 uses
  %i.eeh = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eeg
  %i.eei = extractelement <16 x i64> %i.edy, i64 4 ; 2 uses
  %i.eej = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eei
  %i.eek = extractelement <16 x i64> %i.edy, i64 5 ; 2 uses
  %i.eel = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eek
  %i.eem = extractelement <16 x i64> %i.edy, i64 6 ; 2 uses
  %i.een = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eem
  %i.eeo = extractelement <16 x i64> %i.edy, i64 7 ; 2 uses
  %i.eep = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eeo
  %i.eeq = extractelement <16 x i64> %i.edy, i64 8 ; 2 uses
  %i.eer = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eeq
  %i.ees = extractelement <16 x i64> %i.edy, i64 9 ; 2 uses
  %i.eet = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.ees
  %i.eeu = extractelement <16 x i64> %i.edy, i64 10 ; 2 uses
  %i.eev = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eeu
  %i.eew = extractelement <16 x i64> %i.edy, i64 11 ; 2 uses
  %i.eex = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eew
  %i.eey = extractelement <16 x i64> %i.edy, i64 12 ; 2 uses
  %i.eez = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eey
  %i.efa = extractelement <16 x i64> %i.edy, i64 13 ; 2 uses
  %i.efb = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efa
  %i.efc = extractelement <16 x i64> %i.edy, i64 14 ; 2 uses
  %i.efd = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efc
  %i.efe = extractelement <16 x i64> %i.edy, i64 15 ; 2 uses
  %i.eff = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efe
  %i.efg = extractelement <16 x i64> %i.edz, i64 0 ; 2 uses
  %i.efh = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efg
  %i.efi = extractelement <16 x i64> %i.edz, i64 1 ; 2 uses
  %i.efj = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efi
  %i.efk = extractelement <16 x i64> %i.edz, i64 2 ; 2 uses
  %i.efl = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efk
  %i.efm = extractelement <16 x i64> %i.edz, i64 3 ; 2 uses
  %i.efn = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efm
  %i.efo = extractelement <16 x i64> %i.edz, i64 4 ; 2 uses
  %i.efp = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efo
  %i.efq = extractelement <16 x i64> %i.edz, i64 5 ; 2 uses
  %i.efr = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efq
  %i.efs = extractelement <16 x i64> %i.edz, i64 6 ; 2 uses
  %i.eft = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efs
  %i.efu = extractelement <16 x i64> %i.edz, i64 7 ; 2 uses
  %i.efv = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efu
  %i.efw = extractelement <16 x i64> %i.edz, i64 8 ; 2 uses
  %i.efx = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efw
  %i.efy = extractelement <16 x i64> %i.edz, i64 9 ; 2 uses
  %i.efz = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.efy
  %i.ega = extractelement <16 x i64> %i.edz, i64 10 ; 2 uses
  %i.egb = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.ega
  %i.egc = extractelement <16 x i64> %i.edz, i64 11 ; 2 uses
  %i.egd = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.egc
  %i.ege = extractelement <16 x i64> %i.edz, i64 12 ; 2 uses
  %i.egf = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.ege
  %i.egg = extractelement <16 x i64> %i.edz, i64 13 ; 2 uses
  %i.egh = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.egg
  %i.egi = extractelement <16 x i64> %i.edz, i64 14 ; 2 uses
  %i.egj = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.egi
  %i.egk = extractelement <16 x i64> %i.edz, i64 15 ; 2 uses
  %i.egl = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.egk
  %i.egm = load i16, ptr %i.eeb, align 2, !tbaa !24
  %i.egn = load i16, ptr %i.eed, align 2, !tbaa !24
  %i.ego = load i16, ptr %i.eef, align 2, !tbaa !24
  %i.egp = load i16, ptr %i.eeh, align 2, !tbaa !24
  %i.egq = load i16, ptr %i.eej, align 2, !tbaa !24
  %i.egr = load i16, ptr %i.eel, align 2, !tbaa !24
  %i.egs = load i16, ptr %i.een, align 2, !tbaa !24
  %i.egt = load i16, ptr %i.eep, align 2, !tbaa !24
  %i.egu = load i16, ptr %i.eer, align 2, !tbaa !24
  %i.egv = load i16, ptr %i.eet, align 2, !tbaa !24
  %i.egw = load i16, ptr %i.eev, align 2, !tbaa !24
  %i.egx = load i16, ptr %i.eex, align 2, !tbaa !24
  %i.egy = load i16, ptr %i.eez, align 2, !tbaa !24
  %i.egz = load i16, ptr %i.efb, align 2, !tbaa !24
  %i.eha = load i16, ptr %i.efd, align 2, !tbaa !24
  %i.ehb = load i16, ptr %i.eff, align 2, !tbaa !24
  %i.ehc = insertelement <16 x i16> poison, i16 %i.egm, i64 0
  %i.ehd = insertelement <16 x i16> %i.ehc, i16 %i.egn, i64 1
  %i.ehe = insertelement <16 x i16> %i.ehd, i16 %i.ego, i64 2
  %i.ehf = insertelement <16 x i16> %i.ehe, i16 %i.egp, i64 3
  %i.ehg = insertelement <16 x i16> %i.ehf, i16 %i.egq, i64 4
  %i.ehh = insertelement <16 x i16> %i.ehg, i16 %i.egr, i64 5
  %i.ehi = insertelement <16 x i16> %i.ehh, i16 %i.egs, i64 6
  %i.ehj = insertelement <16 x i16> %i.ehi, i16 %i.egt, i64 7
  %i.ehk = insertelement <16 x i16> %i.ehj, i16 %i.egu, i64 8
  %i.ehl = insertelement <16 x i16> %i.ehk, i16 %i.egv, i64 9
  %i.ehm = insertelement <16 x i16> %i.ehl, i16 %i.egw, i64 10
  %i.ehn = insertelement <16 x i16> %i.ehm, i16 %i.egx, i64 11
  %i.eho = insertelement <16 x i16> %i.ehn, i16 %i.egy, i64 12
  %i.ehp = insertelement <16 x i16> %i.eho, i16 %i.egz, i64 13
  %i.ehq = insertelement <16 x i16> %i.ehp, i16 %i.eha, i64 14
  %i.ehr = insertelement <16 x i16> %i.ehq, i16 %i.ehb, i64 15
  %i.ehs = load i16, ptr %i.efh, align 2, !tbaa !24
  %i.eht = load i16, ptr %i.efj, align 2, !tbaa !24
  %i.ehu = load i16, ptr %i.efl, align 2, !tbaa !24
  %i.ehv = load i16, ptr %i.efn, align 2, !tbaa !24
  %i.ehw = load i16, ptr %i.efp, align 2, !tbaa !24
  %i.ehx = load i16, ptr %i.efr, align 2, !tbaa !24
  %i.ehy = load i16, ptr %i.eft, align 2, !tbaa !24
  %i.ehz = load i16, ptr %i.efv, align 2, !tbaa !24
  %i.eia = load i16, ptr %i.efx, align 2, !tbaa !24
  %i.eib = load i16, ptr %i.efz, align 2, !tbaa !24
  %i.eic = load i16, ptr %i.egb, align 2, !tbaa !24
  %i.eid = load i16, ptr %i.egd, align 2, !tbaa !24
  %i.eie = load i16, ptr %i.egf, align 2, !tbaa !24
  %i.eif = load i16, ptr %i.egh, align 2, !tbaa !24
  %i.eig = load i16, ptr %i.egj, align 2, !tbaa !24
  %i.eih = load i16, ptr %i.egl, align 2, !tbaa !24
  %i.eii = insertelement <16 x i16> poison, i16 %i.ehs, i64 0
  %i.eij = insertelement <16 x i16> %i.eii, i16 %i.eht, i64 1
  %i.eik = insertelement <16 x i16> %i.eij, i16 %i.ehu, i64 2
  %i.eil = insertelement <16 x i16> %i.eik, i16 %i.ehv, i64 3
  %i.eim = insertelement <16 x i16> %i.eil, i16 %i.ehw, i64 4
  %i.ein = insertelement <16 x i16> %i.eim, i16 %i.ehx, i64 5
  %i.eio = insertelement <16 x i16> %i.ein, i16 %i.ehy, i64 6
  %i.eip = insertelement <16 x i16> %i.eio, i16 %i.ehz, i64 7
  %i.eiq = insertelement <16 x i16> %i.eip, i16 %i.eia, i64 8
  %i.eir = insertelement <16 x i16> %i.eiq, i16 %i.eib, i64 9
  %i.eis = insertelement <16 x i16> %i.eir, i16 %i.eic, i64 10
  %i.eit = insertelement <16 x i16> %i.eis, i16 %i.eid, i64 11
  %i.eiu = insertelement <16 x i16> %i.eit, i16 %i.eie, i64 12
  %i.eiv = insertelement <16 x i16> %i.eiu, i16 %i.eif, i64 13
  %i.eiw = insertelement <16 x i16> %i.eiv, i16 %i.eig, i64 14
  %i.eix = insertelement <16 x i16> %i.eiw, i16 %i.eih, i64 15
  %i.eiy = zext <16 x i16> %i.ehr to <16 x i32>
  %i.eiz = zext <16 x i16> %i.eix to <16 x i32>
  %i.eja = shl nuw <16 x i32> %i.eiy, splat (i32 16)
  %i.ejb = shl nuw <16 x i32> %i.eiz, splat (i32 16)
  %i.ejc = bitcast <16 x i32> %i.eja to <16 x float> ; 2 uses
  %i.ejd = bitcast <16 x i32> %i.ejb to <16 x float> ; 2 uses
  %wide.vec6334 = load <64 x i16>, ptr %next.gep6330, align 2, !tbaa !24 ; 4 uses
  %strided.vec6335 = shufflevector <64 x i16> %wide.vec6334, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec6336 = shufflevector <64 x i16> %wide.vec6334, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec6337 = shufflevector <64 x i16> %wide.vec6334, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec6338 = shufflevector <64 x i16> %wide.vec6334, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec6339 = load <64 x i16>, ptr %next.gep6331, align 2, !tbaa !24 ; 4 uses
  %strided.vec6340 = shufflevector <64 x i16> %wide.vec6339, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec6341 = shufflevector <64 x i16> %wide.vec6339, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec6342 = shufflevector <64 x i16> %wide.vec6339, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec6343 = shufflevector <64 x i16> %wide.vec6339, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.eje = zext <16 x i16> %strided.vec6335 to <16 x i32>
  %i.ejf = zext <16 x i16> %strided.vec6340 to <16 x i32>
  %i.ejg = shl nuw <16 x i32> %i.eje, splat (i32 16)
  %i.ejh = shl nuw <16 x i32> %i.ejf, splat (i32 16)
  %i.eji = bitcast <16 x i32> %i.ejg to <16 x float>
  %i.ejj = bitcast <16 x i32> %i.ejh to <16 x float>
  %i.ejk = fmul fast <16 x float> %i.eji, %i.ejc
  %i.ejl = fmul fast <16 x float> %i.ejj, %i.ejd
  %i.ejm = fadd fast <16 x float> %i.ejk, %vec.phi6328
  %i.ejn = fadd fast <16 x float> %i.ejl, %vec.phi6329
  %i.ejo = zext <16 x i16> %strided.vec6336 to <16 x i32>
  %i.ejp = zext <16 x i16> %strided.vec6341 to <16 x i32>
  %i.ejq = shl nuw <16 x i32> %i.ejo, splat (i32 16)
  %i.ejr = shl nuw <16 x i32> %i.ejp, splat (i32 16)
  %i.ejs = bitcast <16 x i32> %i.ejq to <16 x float>
  %i.ejt = bitcast <16 x i32> %i.ejr to <16 x float>
  %i.eju = fmul fast <16 x float> %i.ejs, %i.ejc
  %i.ejv = fmul fast <16 x float> %i.ejt, %i.ejd
  %i.ejw = fadd fast <16 x float> %i.eju, %vec.phi6326
  %i.ejx = fadd fast <16 x float> %i.ejv, %vec.phi6327
  %i.ejy = getelementptr [2 x i8], ptr %i.edn, i64 %i.eea
  %i.ejz = getelementptr [2 x i8], ptr %i.edn, i64 %i.eec
  %i.eka = getelementptr [2 x i8], ptr %i.edn, i64 %i.eee
  %i.ekb = getelementptr [2 x i8], ptr %i.edn, i64 %i.eeg
  %i.ekc = getelementptr [2 x i8], ptr %i.edn, i64 %i.eei
  %i.ekd = getelementptr [2 x i8], ptr %i.edn, i64 %i.eek
  %i.eke = getelementptr [2 x i8], ptr %i.edn, i64 %i.eem
  %i.ekf = getelementptr [2 x i8], ptr %i.edn, i64 %i.eeo
  %i.ekg = getelementptr [2 x i8], ptr %i.edn, i64 %i.eeq
  %i.ekh = getelementptr [2 x i8], ptr %i.edn, i64 %i.ees
  %i.eki = getelementptr [2 x i8], ptr %i.edn, i64 %i.eeu
  %i.ekj = getelementptr [2 x i8], ptr %i.edn, i64 %i.eew
  %i.ekk = getelementptr [2 x i8], ptr %i.edn, i64 %i.eey
  %i.ekl = getelementptr [2 x i8], ptr %i.edn, i64 %i.efa
  %i.ekm = getelementptr [2 x i8], ptr %i.edn, i64 %i.efc
  %i.ekn = getelementptr [2 x i8], ptr %i.edn, i64 %i.efe
  %i.eko = getelementptr [2 x i8], ptr %i.edn, i64 %i.efg
  %i.ekp = getelementptr [2 x i8], ptr %i.edn, i64 %i.efi
  %i.ekq = getelementptr [2 x i8], ptr %i.edn, i64 %i.efk
  %i.ekr = getelementptr [2 x i8], ptr %i.edn, i64 %i.efm
  %i.eks = getelementptr [2 x i8], ptr %i.edn, i64 %i.efo
  %i.ekt = getelementptr [2 x i8], ptr %i.edn, i64 %i.efq
  %i.eku = getelementptr [2 x i8], ptr %i.edn, i64 %i.efs
  %i.ekv = getelementptr [2 x i8], ptr %i.edn, i64 %i.efu
  %i.ekw = getelementptr [2 x i8], ptr %i.edn, i64 %i.efw
  %i.ekx = getelementptr [2 x i8], ptr %i.edn, i64 %i.efy
  %i.eky = getelementptr [2 x i8], ptr %i.edn, i64 %i.ega
  %i.ekz = getelementptr [2 x i8], ptr %i.edn, i64 %i.egc
  %i.ela = getelementptr [2 x i8], ptr %i.edn, i64 %i.ege
  %i.elb = getelementptr [2 x i8], ptr %i.edn, i64 %i.egg
  %i.elc = getelementptr [2 x i8], ptr %i.edn, i64 %i.egi
  %i.eld = getelementptr [2 x i8], ptr %i.edn, i64 %i.egk
  %i.ele = load i16, ptr %i.ejy, align 2, !tbaa !24
  %i.elf = load i16, ptr %i.ejz, align 2, !tbaa !24
  %i.elg = load i16, ptr %i.eka, align 2, !tbaa !24
  %i.elh = load i16, ptr %i.ekb, align 2, !tbaa !24
  %i.eli = load i16, ptr %i.ekc, align 2, !tbaa !24
  %i.elj = load i16, ptr %i.ekd, align 2, !tbaa !24
  %i.elk = load i16, ptr %i.eke, align 2, !tbaa !24
  %i.ell = load i16, ptr %i.ekf, align 2, !tbaa !24
  %i.elm = load i16, ptr %i.ekg, align 2, !tbaa !24
  %i.eln = load i16, ptr %i.ekh, align 2, !tbaa !24
  %i.elo = load i16, ptr %i.eki, align 2, !tbaa !24
  %i.elp = load i16, ptr %i.ekj, align 2, !tbaa !24
  %i.elq = load i16, ptr %i.ekk, align 2, !tbaa !24
  %i.elr = load i16, ptr %i.ekl, align 2, !tbaa !24
  %i.els = load i16, ptr %i.ekm, align 2, !tbaa !24
  %i.elt = load i16, ptr %i.ekn, align 2, !tbaa !24
  %i.elu = insertelement <16 x i16> poison, i16 %i.ele, i64 0
  %i.elv = insertelement <16 x i16> %i.elu, i16 %i.elf, i64 1
  %i.elw = insertelement <16 x i16> %i.elv, i16 %i.elg, i64 2
  %i.elx = insertelement <16 x i16> %i.elw, i16 %i.elh, i64 3
  %i.ely = insertelement <16 x i16> %i.elx, i16 %i.eli, i64 4
  %i.elz = insertelement <16 x i16> %i.ely, i16 %i.elj, i64 5
  %i.ema = insertelement <16 x i16> %i.elz, i16 %i.elk, i64 6
  %i.emb = insertelement <16 x i16> %i.ema, i16 %i.ell, i64 7
  %i.emc = insertelement <16 x i16> %i.emb, i16 %i.elm, i64 8
  %i.emd = insertelement <16 x i16> %i.emc, i16 %i.eln, i64 9
  %i.eme = insertelement <16 x i16> %i.emd, i16 %i.elo, i64 10
  %i.emf = insertelement <16 x i16> %i.eme, i16 %i.elp, i64 11
  %i.emg = insertelement <16 x i16> %i.emf, i16 %i.elq, i64 12
  %i.emh = insertelement <16 x i16> %i.emg, i16 %i.elr, i64 13
  %i.emi = insertelement <16 x i16> %i.emh, i16 %i.els, i64 14
  %i.emj = insertelement <16 x i16> %i.emi, i16 %i.elt, i64 15
  %i.emk = load i16, ptr %i.eko, align 2, !tbaa !24
  %i.eml = load i16, ptr %i.ekp, align 2, !tbaa !24
  %i.emm = load i16, ptr %i.ekq, align 2, !tbaa !24
  %i.emn = load i16, ptr %i.ekr, align 2, !tbaa !24
  %i.emo = load i16, ptr %i.eks, align 2, !tbaa !24
  %i.emp = load i16, ptr %i.ekt, align 2, !tbaa !24
  %i.emq = load i16, ptr %i.eku, align 2, !tbaa !24
  %i.emr = load i16, ptr %i.ekv, align 2, !tbaa !24
  %i.ems = load i16, ptr %i.ekw, align 2, !tbaa !24
  %i.emt = load i16, ptr %i.ekx, align 2, !tbaa !24
  %i.emu = load i16, ptr %i.eky, align 2, !tbaa !24
  %i.emv = load i16, ptr %i.ekz, align 2, !tbaa !24
  %i.emw = load i16, ptr %i.ela, align 2, !tbaa !24
  %i.emx = load i16, ptr %i.elb, align 2, !tbaa !24
  %i.emy = load i16, ptr %i.elc, align 2, !tbaa !24
  %i.emz = load i16, ptr %i.eld, align 2, !tbaa !24
  %i.ena = insertelement <16 x i16> poison, i16 %i.emk, i64 0
  %i.enb = insertelement <16 x i16> %i.ena, i16 %i.eml, i64 1
  %i.enc = insertelement <16 x i16> %i.enb, i16 %i.emm, i64 2
  %i.end = insertelement <16 x i16> %i.enc, i16 %i.emn, i64 3
  %i.ene = insertelement <16 x i16> %i.end, i16 %i.emo, i64 4
  %i.enf = insertelement <16 x i16> %i.ene, i16 %i.emp, i64 5
  %i.eng = insertelement <16 x i16> %i.enf, i16 %i.emq, i64 6
  %i.enh = insertelement <16 x i16> %i.eng, i16 %i.emr, i64 7
  %i.eni = insertelement <16 x i16> %i.enh, i16 %i.ems, i64 8
  %i.enj = insertelement <16 x i16> %i.eni, i16 %i.emt, i64 9
  %i.enk = insertelement <16 x i16> %i.enj, i16 %i.emu, i64 10
  %i.enl = insertelement <16 x i16> %i.enk, i16 %i.emv, i64 11
  %i.enm = insertelement <16 x i16> %i.enl, i16 %i.emw, i64 12
  %i.enn = insertelement <16 x i16> %i.enm, i16 %i.emx, i64 13
  %i.eno = insertelement <16 x i16> %i.enn, i16 %i.emy, i64 14
  %i.enp = insertelement <16 x i16> %i.eno, i16 %i.emz, i64 15
  %i.enq = zext <16 x i16> %i.emj to <16 x i32>
  %i.enr = zext <16 x i16> %i.enp to <16 x i32>
  %i.ens = shl nuw <16 x i32> %i.enq, splat (i32 16)
  %i.ent = shl nuw <16 x i32> %i.enr, splat (i32 16)
  %i.enu = bitcast <16 x i32> %i.ens to <16 x float> ; 2 uses
  %i.env = bitcast <16 x i32> %i.ent to <16 x float> ; 2 uses
  %i.enw = zext <16 x i16> %strided.vec6337 to <16 x i32>
  %i.enx = zext <16 x i16> %strided.vec6342 to <16 x i32>
  %i.eny = shl nuw <16 x i32> %i.enw, splat (i32 16)
  %i.enz = shl nuw <16 x i32> %i.enx, splat (i32 16)
  %i.eoa = bitcast <16 x i32> %i.eny to <16 x float>
  %i.eob = bitcast <16 x i32> %i.enz to <16 x float>
  %i.eoc = fmul fast <16 x float> %i.eoa, %i.enu
  %i.eod = fmul fast <16 x float> %i.eob, %i.env
  %i.eoe = fadd fast <16 x float> %i.ejm, %i.eoc  ; 2 uses
  %i.eof = fadd fast <16 x float> %i.ejn, %i.eod  ; 2 uses
  %i.eog = zext <16 x i16> %strided.vec6338 to <16 x i32>
  %i.eoh = zext <16 x i16> %strided.vec6343 to <16 x i32>
  %i.eoi = shl nuw <16 x i32> %i.eog, splat (i32 16)
  %i.eoj = shl nuw <16 x i32> %i.eoh, splat (i32 16)
  %i.eok = bitcast <16 x i32> %i.eoi to <16 x float>
  %i.eol = bitcast <16 x i32> %i.eoj to <16 x float>
  %i.eom = fmul fast <16 x float> %i.eok, %i.enu
  %i.eon = fmul fast <16 x float> %i.eol, %i.env
  %i.eoo = fadd fast <16 x float> %i.ejw, %i.eom  ; 2 uses
  %i.eop = fadd fast <16 x float> %i.ejx, %i.eon  ; 2 uses
  %index.next6344 = add nuw i64 %index6325, 32    ; 2 uses
  %i.eoq = icmp eq i64 %index.next6344, %n.vec6323
  br i1 %i.eoq, label %middle.block6345, label %vector.body6324, !llvm.loop !236

middle.block6345:                                 ; preds = %vector.body6324
  %bin.rdx6346 = fadd fast <16 x float> %i.eop, %i.eoo
  %i.eor = call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx6346) ; 2 uses
  %bin.rdx6347 = fadd fast <16 x float> %i.eof, %i.eoe
  %i.eos = call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx6347) ; 2 uses
  %i.eot = insertelement <2 x float> poison, float %i.eos, i64 0
  %i.eou = insertelement <2 x float> %i.eot, float %i.eor, i64 1 ; 2 uses
  br i1 %cmp.n6348, label %._crit_edge4977.us, label %vec.epilog.iter.check6354

vec.epilog.iter.check6354:                        ; preds = %middle.block6345
  br i1 %min.epilog.iters.check6355, label %vec.epilog.scalar.ph6353.preheader, label %vec.epilog.ph6356, !prof !28

vec.epilog.ph6356:                                ; preds = %vector.main.loop.iter.check6320, %vec.epilog.iter.check6354
  %vec.epilog.resume.val6349 = phi i64 [ %n.vec6323, %vec.epilog.iter.check6354 ], [ 0, %vector.main.loop.iter.check6320 ]
  %bc.merge.rdx6350 = phi float [ %i.eor, %vec.epilog.iter.check6354 ], [ %i.edp, %vector.main.loop.iter.check6320 ]
  %bc.merge.rdx6351 = phi float [ %i.eos, %vec.epilog.iter.check6354 ], [ %i.edo, %vector.main.loop.iter.check6320 ]
  %i.eov = getelementptr i8, ptr %.2115124983.us, i64 %i.dhc
  %i.eow = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx6350, i64 0
  %i.eox = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx6351, i64 0
  br label %vec.epilog.vector.body6358

vec.epilog.vector.body6358:                       ; preds = %vec.epilog.vector.body6358, %vec.epilog.ph6356
  %index6359 = phi i64 [ %vec.epilog.resume.val6349, %vec.epilog.ph6356 ], [ %index.next6369, %vec.epilog.vector.body6358 ] ; 3 uses
  %vec.phi6360 = phi <8 x float> [ %i.eow, %vec.epilog.ph6356 ], [ %i.ese, %vec.epilog.vector.body6358 ]
  %vec.phi6361 = phi <8 x float> [ %i.eox, %vec.epilog.ph6356 ], [ %i.erz, %vec.epilog.vector.body6358 ]
  %i.eoy = shl i64 %index6359, 3
  %next.gep6362 = getelementptr i8, ptr %.2115124983.us, i64 %i.eoy
  %i.eoz = getelementptr inbounds nuw [4 x i8], ptr %i.edf, i64 %index6359
  %wide.load6363 = load <8 x i32>, ptr %i.eoz, align 4, !tbaa !30
  %i.epa = sext <8 x i32> %wide.load6363 to <8 x i64> ; 8 uses
  %i.epb = extractelement <8 x i64> %i.epa, i64 0 ; 2 uses
  %i.epc = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.epb
  %i.epd = extractelement <8 x i64> %i.epa, i64 1 ; 2 uses
  %i.epe = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.epd
  %i.epf = extractelement <8 x i64> %i.epa, i64 2 ; 2 uses
  %i.epg = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.epf
  %i.eph = extractelement <8 x i64> %i.epa, i64 3 ; 2 uses
  %i.epi = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.eph
  %i.epj = extractelement <8 x i64> %i.epa, i64 4 ; 2 uses
  %i.epk = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.epj
  %i.epl = extractelement <8 x i64> %i.epa, i64 5 ; 2 uses
  %i.epm = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.epl
  %i.epn = extractelement <8 x i64> %i.epa, i64 6 ; 2 uses
  %i.epo = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.epn
  %i.epp = extractelement <8 x i64> %i.epa, i64 7 ; 2 uses
  %i.epq = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.epp
  %i.epr = load i16, ptr %i.epc, align 2, !tbaa !24
  %i.eps = load i16, ptr %i.epe, align 2, !tbaa !24
  %i.ept = load i16, ptr %i.epg, align 2, !tbaa !24
  %i.epu = load i16, ptr %i.epi, align 2, !tbaa !24
  %i.epv = load i16, ptr %i.epk, align 2, !tbaa !24
  %i.epw = load i16, ptr %i.epm, align 2, !tbaa !24
  %i.epx = load i16, ptr %i.epo, align 2, !tbaa !24
  %i.epy = load i16, ptr %i.epq, align 2, !tbaa !24
  %i.epz = insertelement <8 x i16> poison, i16 %i.epr, i64 0
  %i.eqa = insertelement <8 x i16> %i.epz, i16 %i.eps, i64 1
  %i.eqb = insertelement <8 x i16> %i.eqa, i16 %i.ept, i64 2
  %i.eqc = insertelement <8 x i16> %i.eqb, i16 %i.epu, i64 3
  %i.eqd = insertelement <8 x i16> %i.eqc, i16 %i.epv, i64 4
  %i.eqe = insertelement <8 x i16> %i.eqd, i16 %i.epw, i64 5
  %i.eqf = insertelement <8 x i16> %i.eqe, i16 %i.epx, i64 6
  %i.eqg = insertelement <8 x i16> %i.eqf, i16 %i.epy, i64 7
  %i.eqh = zext <8 x i16> %i.eqg to <8 x i32>
  %i.eqi = shl nuw <8 x i32> %i.eqh, splat (i32 16)
  %i.eqj = bitcast <8 x i32> %i.eqi to <8 x float> ; 2 uses
  %wide.vec6364 = load <32 x i16>, ptr %next.gep6362, align 2, !tbaa !24 ; 4 uses
  %strided.vec6365 = shufflevector <32 x i16> %wide.vec6364, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec6366 = shufflevector <32 x i16> %wide.vec6364, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec6367 = shufflevector <32 x i16> %wide.vec6364, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec6368 = shufflevector <32 x i16> %wide.vec6364, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.eqk = zext <8 x i16> %strided.vec6365 to <8 x i32>
  %i.eql = shl nuw <8 x i32> %i.eqk, splat (i32 16)
  %i.eqm = bitcast <8 x i32> %i.eql to <8 x float>
  %i.eqn = fmul fast <8 x float> %i.eqm, %i.eqj
  %i.eqo = fadd fast <8 x float> %i.eqn, %vec.phi6361
  %i.eqp = zext <8 x i16> %strided.vec6366 to <8 x i32>
  %i.eqq = shl nuw <8 x i32> %i.eqp, splat (i32 16)
  %i.eqr = bitcast <8 x i32> %i.eqq to <8 x float>
  %i.eqs = fmul fast <8 x float> %i.eqr, %i.eqj
  %i.eqt = fadd fast <8 x float> %i.eqs, %vec.phi6360
  %i.equ = getelementptr [2 x i8], ptr %i.edn, i64 %i.epb
  %i.eqv = getelementptr [2 x i8], ptr %i.edn, i64 %i.epd
  %i.eqw = getelementptr [2 x i8], ptr %i.edn, i64 %i.epf
  %i.eqx = getelementptr [2 x i8], ptr %i.edn, i64 %i.eph
  %i.eqy = getelementptr [2 x i8], ptr %i.edn, i64 %i.epj
  %i.eqz = getelementptr [2 x i8], ptr %i.edn, i64 %i.epl
  %i.era = getelementptr [2 x i8], ptr %i.edn, i64 %i.epn
  %i.erb = getelementptr [2 x i8], ptr %i.edn, i64 %i.epp
  %i.erc = load i16, ptr %i.equ, align 2, !tbaa !24
  %i.erd = load i16, ptr %i.eqv, align 2, !tbaa !24
  %i.ere = load i16, ptr %i.eqw, align 2, !tbaa !24
  %i.erf = load i16, ptr %i.eqx, align 2, !tbaa !24
  %i.erg = load i16, ptr %i.eqy, align 2, !tbaa !24
  %i.erh = load i16, ptr %i.eqz, align 2, !tbaa !24
  %i.eri = load i16, ptr %i.era, align 2, !tbaa !24
  %i.erj = load i16, ptr %i.erb, align 2, !tbaa !24
  %i.erk = insertelement <8 x i16> poison, i16 %i.erc, i64 0
  %i.erl = insertelement <8 x i16> %i.erk, i16 %i.erd, i64 1
  %i.erm = insertelement <8 x i16> %i.erl, i16 %i.ere, i64 2
  %i.ern = insertelement <8 x i16> %i.erm, i16 %i.erf, i64 3
  %i.ero = insertelement <8 x i16> %i.ern, i16 %i.erg, i64 4
  %i.erp = insertelement <8 x i16> %i.ero, i16 %i.erh, i64 5
  %i.erq = insertelement <8 x i16> %i.erp, i16 %i.eri, i64 6
  %i.err = insertelement <8 x i16> %i.erq, i16 %i.erj, i64 7
  %i.ers = zext <8 x i16> %i.err to <8 x i32>
  %i.ert = shl nuw <8 x i32> %i.ers, splat (i32 16)
  %i.eru = bitcast <8 x i32> %i.ert to <8 x float> ; 2 uses
  %i.erv = zext <8 x i16> %strided.vec6367 to <8 x i32>
  %i.erw = shl nuw <8 x i32> %i.erv, splat (i32 16)
  %i.erx = bitcast <8 x i32> %i.erw to <8 x float>
  %i.ery = fmul fast <8 x float> %i.erx, %i.eru
  %i.erz = fadd fast <8 x float> %i.eqo, %i.ery   ; 2 uses
  %i.esa = zext <8 x i16> %strided.vec6368 to <8 x i32>
  %i.esb = shl nuw <8 x i32> %i.esa, splat (i32 16)
  %i.esc = bitcast <8 x i32> %i.esb to <8 x float>
  %i.esd = fmul fast <8 x float> %i.esc, %i.eru
  %i.ese = fadd fast <8 x float> %i.eqt, %i.esd   ; 2 uses
  %index.next6369 = add nuw i64 %index6359, 8     ; 2 uses
  %i.esf = icmp eq i64 %index.next6369, %n.vec6357
  br i1 %i.esf, label %vec.epilog.middle.block6370, label %vec.epilog.vector.body6358, !llvm.loop !237

vec.epilog.middle.block6370:                      ; preds = %vec.epilog.vector.body6358
  %i.esg = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ese)
  %i.esh = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.erz)
  %i.esi = insertelement <2 x float> poison, float %i.esh, i64 0
  %i.esj = insertelement <2 x float> %i.esi, float %i.esg, i64 1 ; 2 uses
  br i1 %cmp.n6371, label %._crit_edge4977.us, label %vec.epilog.scalar.ph6353.preheader

vec.epilog.scalar.ph6353.preheader:               ; preds = %iter.check6352, %vec.epilog.iter.check6354, %vec.epilog.middle.block6370
  %indvars.iv5681.ph = phi i64 [ 0, %iter.check6352 ], [ %n.vec6323, %vec.epilog.iter.check6354 ], [ %n.vec6357, %vec.epilog.middle.block6370 ]
  %.2215134974.us.ph = phi ptr [ %.2115124983.us, %iter.check6352 ], [ %i.edq, %vec.epilog.iter.check6354 ], [ %i.eov, %vec.epilog.middle.block6370 ]
  %.ph6515 = phi <2 x float> [ %i.edm, %iter.check6352 ], [ %i.eou, %vec.epilog.iter.check6354 ], [ %i.esj, %vec.epilog.middle.block6370 ]
  br label %vec.epilog.scalar.ph6353

vec.epilog.scalar.ph6353:                         ; preds = %vec.epilog.scalar.ph6353.preheader, %vec.epilog.scalar.ph6353
  %indvars.iv5681 = phi i64 [ %indvars.iv.next5682, %vec.epilog.scalar.ph6353 ], [ %indvars.iv5681.ph, %vec.epilog.scalar.ph6353.preheader ] ; 2 uses
  %.2215134974.us = phi ptr [ %i.etp, %vec.epilog.scalar.ph6353 ], [ %.2215134974.us.ph, %vec.epilog.scalar.ph6353.preheader ] ; 3 uses
  %i.esk = phi <2 x float> [ %i.eto, %vec.epilog.scalar.ph6353 ], [ %.ph6515, %vec.epilog.scalar.ph6353.preheader ]
  %i.esl = getelementptr inbounds nuw [4 x i8], ptr %i.edf, i64 %indvars.iv5681
  %i.esm = load i32, ptr %i.esl, align 4, !tbaa !30
  %i.esn = sext i32 %i.esm to i64                 ; 2 uses
  %i.eso = getelementptr inbounds [2 x i8], ptr %gep4993.us, i64 %i.esn
  %i.esp = load i16, ptr %i.eso, align 2, !tbaa !24
  %i.esq = getelementptr [2 x i8], ptr %i.edn, i64 %i.esn
  %i.esr = load i16, ptr %i.esq, align 2, !tbaa !24
  %i.ess = getelementptr inbounds nuw i8, ptr %.2215134974.us, i64 4
  %i.est = zext i16 %i.esp to i32
  %i.esu = shl nuw i32 %i.est, 16
  %i.esv = load <2 x i16>, ptr %.2215134974.us, align 2, !tbaa !24
  %i.esw = zext <2 x i16> %i.esv to <2 x i32>
  %i.esx = shl nuw <2 x i32> %i.esw, splat (i32 16)
  %i.esy = bitcast <2 x i32> %i.esx to <2 x float>
  %i.esz = insertelement <2 x i32> poison, i32 %i.esu, i64 0
  %i.eta = bitcast <2 x i32> %i.esz to <2 x float>
  %i.etb = shufflevector <2 x float> %i.eta, <2 x float> poison, <2 x i32> zeroinitializer
  %i.etc = fmul fast <2 x float> %i.etb, %i.esy
  %i.etd = fadd fast <2 x float> %i.etc, %i.esk
  %i.ete = zext i16 %i.esr to i32
  %i.etf = shl nuw i32 %i.ete, 16
  %i.etg = load <2 x i16>, ptr %i.ess, align 2, !tbaa !24
  %i.eth = zext <2 x i16> %i.etg to <2 x i32>
  %i.eti = shl nuw <2 x i32> %i.eth, splat (i32 16)
  %i.etj = bitcast <2 x i32> %i.eti to <2 x float>
  %i.etk = insertelement <2 x i32> poison, i32 %i.etf, i64 0
  %i.etl = bitcast <2 x i32> %i.etk to <2 x float>
  %i.etm = shufflevector <2 x float> %i.etl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.etn = fmul fast <2 x float> %i.etm, %i.etj
  %i.eto = fadd fast <2 x float> %i.etd, %i.etn   ; 2 uses
  %i.etp = getelementptr inbounds nuw i8, ptr %.2215134974.us, i64 8
  %indvars.iv.next5682 = add nuw nsw i64 %indvars.iv5681, 1 ; 2 uses
  %exitcond5687.not = icmp eq i64 %indvars.iv.next5682, %wide.trip.count5686
  br i1 %exitcond5687.not, label %._crit_edge4977.us, label %vec.epilog.scalar.ph6353, !llvm.loop !238

._crit_edge4977.us:                               ; preds = %vec.epilog.scalar.ph6353, %vec.epilog.middle.block6370, %middle.block6345
  %i.etq = phi <2 x float> [ %i.esj, %vec.epilog.middle.block6370 ], [ %i.eou, %middle.block6345 ], [ %i.eto, %vec.epilog.scalar.ph6353 ] ; 2 uses
  %scevgep5683 = getelementptr i8, ptr %.2115124983.us, i64 8
  %scevgep5684 = getelementptr i8, ptr %scevgep5683, i64 %i.dgx ; 2 uses
  %indvars.iv.next5689 = add nuw nsw i64 %indvars.iv5688, 2 ; 3 uses
  %i.etr = trunc i64 %indvars.iv.next5689 to i32
  %i.ets = or i32 %i.etr, 1
  %i.ett = icmp slt i32 %i.ets, %i.axv
  br i1 %i.ett, label %iter.check6352, label %.preheader4361.loopexit, !llvm.loop !239

.preheader4361.loopexit:                          ; preds = %._crit_edge4977.us
  %i.etu = trunc nuw i64 %indvars.iv.next5689 to i32
  br label %.preheader4361

.preheader4361:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2339.preheader, %.preheader4361.loopexit, %._crit_edge4962
  %.211512.lcssa = phi ptr [ %.161507.lcssa, %._crit_edge4962 ], [ %scevgep5684, %.preheader4361.loopexit ], [ %.161507.lcssa, %_ZN4ncnn3MatD2Ev.exit2339.preheader ]
  %.31489.lcssa = phi i32 [ %.21488.lcssa, %._crit_edge4962 ], [ %i.etu, %.preheader4361.loopexit ], [ %i.edk, %_ZN4ncnn3MatD2Ev.exit2339.preheader ] ; 2 uses
  %i.etv = phi <2 x float> [ %i.ecu, %._crit_edge4962 ], [ %i.etq, %.preheader4361.loopexit ], [ %i.ecu, %_ZN4ncnn3MatD2Ev.exit2339.preheader ] ; 3 uses
  %i.etw = icmp slt i32 %.31489.lcssa, %i.axv
  br i1 %i.etw, label %_ZN4ncnn3MatD2Ev.exit2338.lr.ph, label %._crit_edge5011

_ZN4ncnn3MatD2Ev.exit2338.lr.ph:                  ; preds = %.preheader4361
  %i.etx = load i32, ptr %i.k, align 4, !tbaa !31, !noalias !302
  %i.ety = load ptr, ptr %0, align 8, !tbaa !15, !noalias !302
  %i.etz = load i64, ptr %i.r, align 8, !tbaa !16, !noalias !302
  %i.eua = load i64, ptr %i.ayf, align 8, !tbaa !17, !noalias !302 ; 2 uses
  %factor.op.mul5014 = mul i64 %i.etz, %i.eua
  %i.eub = sext i32 %i.etx to i64
  %i.euc = mul i64 %i.eua, %i.eub
  %i.eud = mul i64 %i.euc, %i.dgr
  %invariant.gep5016 = getelementptr i8, ptr %i.ety, i64 %i.eud
  %i.eue = mul nsw i64 %indvars.iv5701, %i.dgz
  %invariant.gep5017 = getelementptr [2 x i8], ptr %invariant.gep5016, i64 %i.eue
  %i.euf = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.dgu, label %_ZN4ncnn3MatD2Ev.exit2338.us.preheader, label %._crit_edge5011

_ZN4ncnn3MatD2Ev.exit2338.us.preheader:           ; preds = %_ZN4ncnn3MatD2Ev.exit2338.lr.ph
  %i.eug = zext i32 %.31489.lcssa to i64
  br label %iter.check6297

iter.check6297:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2338.us.preheader, %._crit_edge5003.us
  %indvars.iv5698 = phi i64 [ %i.eug, %_ZN4ncnn3MatD2Ev.exit2338.us.preheader ], [ %indvars.iv.next5699, %._crit_edge5003.us ] ; 2 uses
  %.2315145009.us = phi ptr [ %.211512.lcssa, %_ZN4ncnn3MatD2Ev.exit2338.us.preheader ], [ %scevgep5694, %._crit_edge5003.us ] ; 9 uses
  %i.euh = phi <2 x float> [ %i.etv, %_ZN4ncnn3MatD2Ev.exit2338.us.preheader ], [ %i.fkc, %._crit_edge5003.us ] ; 4 uses
  %.reass5015.us = mul i64 %factor.op.mul5014, %indvars.iv5698
  %gep5018.us = getelementptr i8, ptr %invariant.gep5017, i64 %.reass5015.us ; 73 uses
  br i1 %min.iters.check6257, label %vec.epilog.scalar.ph6298.preheader, label %vector.main.loop.iter.check6258

vector.main.loop.iter.check6258:                  ; preds = %iter.check6297
  %i.eui = extractelement <2 x float> %i.euh, i64 0
  %i.euj = extractelement <2 x float> %i.euh, i64 1
  br i1 %min.iters.check6259, label %vec.epilog.ph6301, label %vector.ph6260

vector.ph6260:                                    ; preds = %vector.main.loop.iter.check6258
  %i.euk = getelementptr i8, ptr %.2315145009.us, i64 %i.dhe
  %i.eul = shufflevector <2 x float> %i.euh, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.eum = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.eul, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eun = shufflevector <16 x float> %i.eul, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body6262

vector.body6262:                                  ; preds = %vector.ph6260, %vector.body6262
  %index6263 = phi i64 [ 0, %vector.ph6260 ], [ %index.next6287, %vector.body6262 ] ; 3 uses
  %vec.phi = phi <16 x float> [ %i.eum, %vector.ph6260 ], [ %i.fgw, %vector.body6262 ]
  %vec.phi6264 = phi <16 x float> [ zeroinitializer, %vector.ph6260 ], [ %i.fgx, %vector.body6262 ]
  %vec.phi6265 = phi <16 x float> [ zeroinitializer, %vector.ph6260 ], [ %i.fgy, %vector.body6262 ]
  %vec.phi6266 = phi <16 x float> [ zeroinitializer, %vector.ph6260 ], [ %i.fgz, %vector.body6262 ]
  %vec.phi6267 = phi <16 x float> [ %i.eun, %vector.ph6260 ], [ %i.fgk, %vector.body6262 ]
  %vec.phi6268 = phi <16 x float> [ zeroinitializer, %vector.ph6260 ], [ %i.fgl, %vector.body6262 ]
  %vec.phi6269 = phi <16 x float> [ zeroinitializer, %vector.ph6260 ], [ %i.fgm, %vector.body6262 ]
  %vec.phi6270 = phi <16 x float> [ zeroinitializer, %vector.ph6260 ], [ %i.fgn, %vector.body6262 ]
  %i.euo = shl i64 %index6263, 2                  ; 4 uses
  %next.gep = getelementptr i8, ptr %.2315145009.us, i64 %i.euo
  %i.eup = getelementptr i8, ptr %.2315145009.us, i64 %i.euo
  %next.gep6271 = getelementptr i8, ptr %i.eup, i64 64
  %i.euq = getelementptr i8, ptr %.2315145009.us, i64 %i.euo
  %next.gep6272 = getelementptr i8, ptr %i.euq, i64 128
  %i.eur = getelementptr i8, ptr %.2315145009.us, i64 %i.euo
  %next.gep6273 = getelementptr i8, ptr %i.eur, i64 192
  %i.eus = getelementptr inbounds nuw [4 x i8], ptr %i.euf, i64 %index6263 ; 4 uses
  %i.eut = getelementptr inbounds nuw i8, ptr %i.eus, i64 64
  %i.euu = getelementptr inbounds nuw i8, ptr %i.eus, i64 128
  %i.euv = getelementptr inbounds nuw i8, ptr %i.eus, i64 192
  %wide.load = load <16 x i32>, ptr %i.eus, align 4, !tbaa !30
  %wide.load6274 = load <16 x i32>, ptr %i.eut, align 4, !tbaa !30
  %wide.load6275 = load <16 x i32>, ptr %i.euu, align 4, !tbaa !30
  %wide.load6276 = load <16 x i32>, ptr %i.euv, align 4, !tbaa !30
  %i.euw = sext <16 x i32> %wide.load to <16 x i64> ; 16 uses
  %i.eux = sext <16 x i32> %wide.load6274 to <16 x i64> ; 16 uses
  %i.euy = sext <16 x i32> %wide.load6275 to <16 x i64> ; 16 uses
  %i.euz = sext <16 x i32> %wide.load6276 to <16 x i64> ; 16 uses
  %i.eva = extractelement <16 x i64> %i.euw, i64 0
  %i.evb = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eva
  %i.evc = extractelement <16 x i64> %i.euw, i64 1
  %i.evd = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.evc
  %i.eve = extractelement <16 x i64> %i.euw, i64 2
  %i.evf = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eve
  %i.evg = extractelement <16 x i64> %i.euw, i64 3
  %i.evh = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.evg
  %i.evi = extractelement <16 x i64> %i.euw, i64 4
  %i.evj = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.evi
  %i.evk = extractelement <16 x i64> %i.euw, i64 5
  %i.evl = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.evk
  %i.evm = extractelement <16 x i64> %i.euw, i64 6
  %i.evn = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.evm
  %i.evo = extractelement <16 x i64> %i.euw, i64 7
  %i.evp = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.evo
  %i.evq = extractelement <16 x i64> %i.euw, i64 8
  %i.evr = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.evq
  %i.evs = extractelement <16 x i64> %i.euw, i64 9
  %i.evt = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.evs
  %i.evu = extractelement <16 x i64> %i.euw, i64 10
  %i.evv = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.evu
  %i.evw = extractelement <16 x i64> %i.euw, i64 11
  %i.evx = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.evw
  %i.evy = extractelement <16 x i64> %i.euw, i64 12
  %i.evz = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.evy
  %i.ewa = extractelement <16 x i64> %i.euw, i64 13
  %i.ewb = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ewa
  %i.ewc = extractelement <16 x i64> %i.euw, i64 14
  %i.ewd = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ewc
  %i.ewe = extractelement <16 x i64> %i.euw, i64 15
  %i.ewf = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ewe
  %i.ewg = extractelement <16 x i64> %i.eux, i64 0
  %i.ewh = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ewg
  %i.ewi = extractelement <16 x i64> %i.eux, i64 1
  %i.ewj = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ewi
  %i.ewk = extractelement <16 x i64> %i.eux, i64 2
  %i.ewl = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ewk
  %i.ewm = extractelement <16 x i64> %i.eux, i64 3
  %i.ewn = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ewm
  %i.ewo = extractelement <16 x i64> %i.eux, i64 4
  %i.ewp = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ewo
  %i.ewq = extractelement <16 x i64> %i.eux, i64 5
  %i.ewr = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ewq
  %i.ews = extractelement <16 x i64> %i.eux, i64 6
  %i.ewt = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ews
  %i.ewu = extractelement <16 x i64> %i.eux, i64 7
  %i.ewv = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ewu
  %i.eww = extractelement <16 x i64> %i.eux, i64 8
  %i.ewx = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eww
  %i.ewy = extractelement <16 x i64> %i.eux, i64 9
  %i.ewz = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.ewy
  %i.exa = extractelement <16 x i64> %i.eux, i64 10
  %i.exb = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exa
  %i.exc = extractelement <16 x i64> %i.eux, i64 11
  %i.exd = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exc
  %i.exe = extractelement <16 x i64> %i.eux, i64 12
  %i.exf = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exe
  %i.exg = extractelement <16 x i64> %i.eux, i64 13
  %i.exh = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exg
  %i.exi = extractelement <16 x i64> %i.eux, i64 14
  %i.exj = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exi
  %i.exk = extractelement <16 x i64> %i.eux, i64 15
  %i.exl = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exk
  %i.exm = extractelement <16 x i64> %i.euy, i64 0
  %i.exn = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exm
  %i.exo = extractelement <16 x i64> %i.euy, i64 1
  %i.exp = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exo
  %i.exq = extractelement <16 x i64> %i.euy, i64 2
  %i.exr = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exq
  %i.exs = extractelement <16 x i64> %i.euy, i64 3
  %i.ext = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exs
  %i.exu = extractelement <16 x i64> %i.euy, i64 4
  %i.exv = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exu
  %i.exw = extractelement <16 x i64> %i.euy, i64 5
  %i.exx = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exw
  %i.exy = extractelement <16 x i64> %i.euy, i64 6
  %i.exz = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.exy
  %i.eya = extractelement <16 x i64> %i.euy, i64 7
  %i.eyb = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eya
  %i.eyc = extractelement <16 x i64> %i.euy, i64 8
  %i.eyd = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eyc
  %i.eye = extractelement <16 x i64> %i.euy, i64 9
  %i.eyf = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eye
  %i.eyg = extractelement <16 x i64> %i.euy, i64 10
  %i.eyh = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eyg
  %i.eyi = extractelement <16 x i64> %i.euy, i64 11
  %i.eyj = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eyi
  %i.eyk = extractelement <16 x i64> %i.euy, i64 12
  %i.eyl = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eyk
  %i.eym = extractelement <16 x i64> %i.euy, i64 13
  %i.eyn = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eym
  %i.eyo = extractelement <16 x i64> %i.euy, i64 14
  %i.eyp = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eyo
  %i.eyq = extractelement <16 x i64> %i.euy, i64 15
  %i.eyr = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eyq
  %i.eys = extractelement <16 x i64> %i.euz, i64 0
  %i.eyt = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eys
  %i.eyu = extractelement <16 x i64> %i.euz, i64 1
  %i.eyv = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eyu
  %i.eyw = extractelement <16 x i64> %i.euz, i64 2
  %i.eyx = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eyw
  %i.eyy = extractelement <16 x i64> %i.euz, i64 3
  %i.eyz = getelementptr inbounds [2 x i8], ptr %gep5018.us, i64 %i.eyy
  %i.eza = extractelement <16 x i64> %i.euz, i64 4
end_hunk_0
begin_hunk_1_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.gmp = extractelement <16 x i64> %i.gis, i64 2 ; 2 uses
  %i.gmq = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmp
  %i.gmr = extractelement <16 x i64> %i.gis, i64 3 ; 2 uses
  %i.gms = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmr
  %i.gmt = extractelement <16 x i64> %i.gis, i64 4 ; 2 uses
  %i.gmu = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmt
  %i.gmv = extractelement <16 x i64> %i.gis, i64 5 ; 2 uses
  %i.gmw = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmv
  %i.gmx = extractelement <16 x i64> %i.gis, i64 6 ; 2 uses
  %i.gmy = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmx
  %i.gmz = extractelement <16 x i64> %i.gis, i64 7 ; 2 uses
  %i.gna = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gmz
  %i.gnb = extractelement <16 x i64> %i.gis, i64 8 ; 2 uses
  %i.gnc = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gnb
  %i.gnd = extractelement <16 x i64> %i.gis, i64 9 ; 2 uses
  %i.gne = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gnd
  %i.gnf = extractelement <16 x i64> %i.gis, i64 10 ; 2 uses
  %i.gng = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gnf
  %i.gnh = extractelement <16 x i64> %i.gis, i64 11 ; 2 uses
  %i.gni = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gnh
  %i.gnj = extractelement <16 x i64> %i.gis, i64 12 ; 2 uses
  %i.gnk = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gnj
  %i.gnl = extractelement <16 x i64> %i.gis, i64 13 ; 2 uses
  %i.gnm = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gnl
  %i.gnn = extractelement <16 x i64> %i.gis, i64 14 ; 2 uses
  %i.gno = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gnn
  %i.gnp = extractelement <16 x i64> %i.gis, i64 15 ; 2 uses
  %i.gnq = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.gnp
  %i.gnr = load i16, ptr %i.giu, align 2, !tbaa !24
  %i.gns = load i16, ptr %i.giw, align 2, !tbaa !24
  %i.gnt = load i16, ptr %i.giy, align 2, !tbaa !24
  %i.gnu = load i16, ptr %i.gja, align 2, !tbaa !24
  %i.gnv = load i16, ptr %i.gjc, align 2, !tbaa !24
  %i.gnw = load i16, ptr %i.gje, align 2, !tbaa !24
  %i.gnx = load i16, ptr %i.gjg, align 2, !tbaa !24
  %i.gny = load i16, ptr %i.gji, align 2, !tbaa !24
  %i.gnz = load i16, ptr %i.gjk, align 2, !tbaa !24
  %i.goa = load i16, ptr %i.gjm, align 2, !tbaa !24
  %i.gob = load i16, ptr %i.gjo, align 2, !tbaa !24
  %i.goc = load i16, ptr %i.gjq, align 2, !tbaa !24
  %i.god = load i16, ptr %i.gjs, align 2, !tbaa !24
  %i.goe = load i16, ptr %i.gju, align 2, !tbaa !24
  %i.gof = load i16, ptr %i.gjw, align 2, !tbaa !24
  %i.gog = load i16, ptr %i.gjy, align 2, !tbaa !24
  %i.goh = insertelement <16 x i16> poison, i16 %i.gnr, i64 0
  %i.goi = insertelement <16 x i16> %i.goh, i16 %i.gns, i64 1
  %i.goj = insertelement <16 x i16> %i.goi, i16 %i.gnt, i64 2
  %i.gok = insertelement <16 x i16> %i.goj, i16 %i.gnu, i64 3
  %i.gol = insertelement <16 x i16> %i.gok, i16 %i.gnv, i64 4
  %i.gom = insertelement <16 x i16> %i.gol, i16 %i.gnw, i64 5
  %i.gon = insertelement <16 x i16> %i.gom, i16 %i.gnx, i64 6
  %i.goo = insertelement <16 x i16> %i.gon, i16 %i.gny, i64 7
  %i.gop = insertelement <16 x i16> %i.goo, i16 %i.gnz, i64 8
  %i.goq = insertelement <16 x i16> %i.gop, i16 %i.goa, i64 9
  %i.gor = insertelement <16 x i16> %i.goq, i16 %i.gob, i64 10
  %i.gos = insertelement <16 x i16> %i.gor, i16 %i.goc, i64 11
  %i.got = insertelement <16 x i16> %i.gos, i16 %i.god, i64 12
  %i.gou = insertelement <16 x i16> %i.got, i16 %i.goe, i64 13
  %i.gov = insertelement <16 x i16> %i.gou, i16 %i.gof, i64 14
  %i.gow = insertelement <16 x i16> %i.gov, i16 %i.gog, i64 15
  %i.gox = load i16, ptr %i.gka, align 2, !tbaa !24
  %i.goy = load i16, ptr %i.gkc, align 2, !tbaa !24
  %i.goz = load i16, ptr %i.gke, align 2, !tbaa !24
  %i.gpa = load i16, ptr %i.gkg, align 2, !tbaa !24
  %i.gpb = load i16, ptr %i.gki, align 2, !tbaa !24
  %i.gpc = load i16, ptr %i.gkk, align 2, !tbaa !24
  %i.gpd = load i16, ptr %i.gkm, align 2, !tbaa !24
  %i.gpe = load i16, ptr %i.gko, align 2, !tbaa !24
  %i.gpf = load i16, ptr %i.gkq, align 2, !tbaa !24
  %i.gpg = load i16, ptr %i.gks, align 2, !tbaa !24
  %i.gph = load i16, ptr %i.gku, align 2, !tbaa !24
  %i.gpi = load i16, ptr %i.gkw, align 2, !tbaa !24
  %i.gpj = load i16, ptr %i.gky, align 2, !tbaa !24
  %i.gpk = load i16, ptr %i.gla, align 2, !tbaa !24
  %i.gpl = load i16, ptr %i.glc, align 2, !tbaa !24
  %i.gpm = load i16, ptr %i.gle, align 2, !tbaa !24
  %i.gpn = insertelement <16 x i16> poison, i16 %i.gox, i64 0
  %i.gpo = insertelement <16 x i16> %i.gpn, i16 %i.goy, i64 1
  %i.gpp = insertelement <16 x i16> %i.gpo, i16 %i.goz, i64 2
  %i.gpq = insertelement <16 x i16> %i.gpp, i16 %i.gpa, i64 3
  %i.gpr = insertelement <16 x i16> %i.gpq, i16 %i.gpb, i64 4
  %i.gps = insertelement <16 x i16> %i.gpr, i16 %i.gpc, i64 5
  %i.gpt = insertelement <16 x i16> %i.gps, i16 %i.gpd, i64 6
  %i.gpu = insertelement <16 x i16> %i.gpt, i16 %i.gpe, i64 7
  %i.gpv = insertelement <16 x i16> %i.gpu, i16 %i.gpf, i64 8
  %i.gpw = insertelement <16 x i16> %i.gpv, i16 %i.gpg, i64 9
  %i.gpx = insertelement <16 x i16> %i.gpw, i16 %i.gph, i64 10
  %i.gpy = insertelement <16 x i16> %i.gpx, i16 %i.gpi, i64 11
  %i.gpz = insertelement <16 x i16> %i.gpy, i16 %i.gpj, i64 12
  %i.gqa = insertelement <16 x i16> %i.gpz, i16 %i.gpk, i64 13
  %i.gqb = insertelement <16 x i16> %i.gqa, i16 %i.gpl, i64 14
  %i.gqc = insertelement <16 x i16> %i.gqb, i16 %i.gpm, i64 15
  %i.gqd = load i16, ptr %i.glg, align 2, !tbaa !24
  %i.gqe = load i16, ptr %i.gli, align 2, !tbaa !24
  %i.gqf = load i16, ptr %i.glk, align 2, !tbaa !24
  %i.gqg = load i16, ptr %i.glm, align 2, !tbaa !24
  %i.gqh = load i16, ptr %i.glo, align 2, !tbaa !24
  %i.gqi = load i16, ptr %i.glq, align 2, !tbaa !24
  %i.gqj = load i16, ptr %i.gls, align 2, !tbaa !24
  %i.gqk = load i16, ptr %i.glu, align 2, !tbaa !24
  %i.gql = load i16, ptr %i.glw, align 2, !tbaa !24
  %i.gqm = load i16, ptr %i.gly, align 2, !tbaa !24
  %i.gqn = load i16, ptr %i.gma, align 2, !tbaa !24
  %i.gqo = load i16, ptr %i.gmc, align 2, !tbaa !24
  %i.gqp = load i16, ptr %i.gme, align 2, !tbaa !24
  %i.gqq = load i16, ptr %i.gmg, align 2, !tbaa !24
  %i.gqr = load i16, ptr %i.gmi, align 2, !tbaa !24
  %i.gqs = load i16, ptr %i.gmk, align 2, !tbaa !24
  %i.gqt = insertelement <16 x i16> poison, i16 %i.gqd, i64 0
  %i.gqu = insertelement <16 x i16> %i.gqt, i16 %i.gqe, i64 1
  %i.gqv = insertelement <16 x i16> %i.gqu, i16 %i.gqf, i64 2
  %i.gqw = insertelement <16 x i16> %i.gqv, i16 %i.gqg, i64 3
  %i.gqx = insertelement <16 x i16> %i.gqw, i16 %i.gqh, i64 4
  %i.gqy = insertelement <16 x i16> %i.gqx, i16 %i.gqi, i64 5
  %i.gqz = insertelement <16 x i16> %i.gqy, i16 %i.gqj, i64 6
  %i.gra = insertelement <16 x i16> %i.gqz, i16 %i.gqk, i64 7
  %i.grb = insertelement <16 x i16> %i.gra, i16 %i.gql, i64 8
  %i.grc = insertelement <16 x i16> %i.grb, i16 %i.gqm, i64 9
  %i.grd = insertelement <16 x i16> %i.grc, i16 %i.gqn, i64 10
  %i.gre = insertelement <16 x i16> %i.grd, i16 %i.gqo, i64 11
  %i.grf = insertelement <16 x i16> %i.gre, i16 %i.gqp, i64 12
  %i.grg = insertelement <16 x i16> %i.grf, i16 %i.gqq, i64 13
  %i.grh = insertelement <16 x i16> %i.grg, i16 %i.gqr, i64 14
  %i.gri = insertelement <16 x i16> %i.grh, i16 %i.gqs, i64 15
  %i.grj = load i16, ptr %i.gmm, align 2, !tbaa !24
  %i.grk = load i16, ptr %i.gmo, align 2, !tbaa !24
  %i.grl = load i16, ptr %i.gmq, align 2, !tbaa !24
  %i.grm = load i16, ptr %i.gms, align 2, !tbaa !24
  %i.grn = load i16, ptr %i.gmu, align 2, !tbaa !24
  %i.gro = load i16, ptr %i.gmw, align 2, !tbaa !24
  %i.grp = load i16, ptr %i.gmy, align 2, !tbaa !24
  %i.grq = load i16, ptr %i.gna, align 2, !tbaa !24
  %i.grr = load i16, ptr %i.gnc, align 2, !tbaa !24
  %i.grs = load i16, ptr %i.gne, align 2, !tbaa !24
  %i.grt = load i16, ptr %i.gng, align 2, !tbaa !24
  %i.gru = load i16, ptr %i.gni, align 2, !tbaa !24
  %i.grv = load i16, ptr %i.gnk, align 2, !tbaa !24
  %i.grw = load i16, ptr %i.gnm, align 2, !tbaa !24
  %i.grx = load i16, ptr %i.gno, align 2, !tbaa !24
  %i.gry = load i16, ptr %i.gnq, align 2, !tbaa !24
  %i.grz = insertelement <16 x i16> poison, i16 %i.grj, i64 0
  %i.gsa = insertelement <16 x i16> %i.grz, i16 %i.grk, i64 1
  %i.gsb = insertelement <16 x i16> %i.gsa, i16 %i.grl, i64 2
  %i.gsc = insertelement <16 x i16> %i.gsb, i16 %i.grm, i64 3
  %i.gsd = insertelement <16 x i16> %i.gsc, i16 %i.grn, i64 4
  %i.gse = insertelement <16 x i16> %i.gsd, i16 %i.gro, i64 5
  %i.gsf = insertelement <16 x i16> %i.gse, i16 %i.grp, i64 6
  %i.gsg = insertelement <16 x i16> %i.gsf, i16 %i.grq, i64 7
  %i.gsh = insertelement <16 x i16> %i.gsg, i16 %i.grr, i64 8
  %i.gsi = insertelement <16 x i16> %i.gsh, i16 %i.grs, i64 9
  %i.gsj = insertelement <16 x i16> %i.gsi, i16 %i.grt, i64 10
  %i.gsk = insertelement <16 x i16> %i.gsj, i16 %i.gru, i64 11
  %i.gsl = insertelement <16 x i16> %i.gsk, i16 %i.grv, i64 12
  %i.gsm = insertelement <16 x i16> %i.gsl, i16 %i.grw, i64 13
  %i.gsn = insertelement <16 x i16> %i.gsm, i16 %i.grx, i64 14
  %i.gso = insertelement <16 x i16> %i.gsn, i16 %i.gry, i64 15
  %i.gsp = zext <16 x i16> %i.gow to <16 x i32>
  %i.gsq = zext <16 x i16> %i.gqc to <16 x i32>
  %i.gsr = zext <16 x i16> %i.gri to <16 x i32>
  %i.gss = zext <16 x i16> %i.gso to <16 x i32>
  %i.gst = shl nuw <16 x i32> %i.gsp, splat (i32 16)
  %i.gsu = shl nuw <16 x i32> %i.gsq, splat (i32 16)
  %i.gsv = shl nuw <16 x i32> %i.gsr, splat (i32 16)
  %i.gsw = shl nuw <16 x i32> %i.gss, splat (i32 16)
  %i.gsx = bitcast <16 x i32> %i.gst to <16 x float>
  %i.gsy = bitcast <16 x i32> %i.gsu to <16 x float>
  %i.gsz = bitcast <16 x i32> %i.gsv to <16 x float>
  %i.gta = bitcast <16 x i32> %i.gsw to <16 x float>
  %wide.vec6441 = load <32 x i16>, ptr %next.gep6433, align 2, !tbaa !24
  %i.gtb = freeze <32 x i16> %wide.vec6441        ; 2 uses
  %i.gtc = bitcast <32 x i16> %i.gtb to <16 x i32>
  %i.gtd = bitcast <32 x i16> %i.gtb to <16 x i32>
  %i.gte = and <16 x i32> %i.gtd, splat (i32 -65536)
  %wide.vec6444 = load <32 x i16>, ptr %next.gep6434, align 2, !tbaa !24
  %i.gtf = freeze <32 x i16> %wide.vec6444        ; 2 uses
  %i.gtg = bitcast <32 x i16> %i.gtf to <16 x i32>
  %i.gth = bitcast <32 x i16> %i.gtf to <16 x i32>
  %i.gti = and <16 x i32> %i.gth, splat (i32 -65536)
  %wide.vec6447 = load <32 x i16>, ptr %next.gep6435, align 2, !tbaa !24
  %i.gtj = freeze <32 x i16> %wide.vec6447        ; 2 uses
  %i.gtk = bitcast <32 x i16> %i.gtj to <16 x i32>
  %i.gtl = bitcast <32 x i16> %i.gtj to <16 x i32>
  %i.gtm = and <16 x i32> %i.gtl, splat (i32 -65536)
  %wide.vec6450 = load <32 x i16>, ptr %next.gep6436, align 2, !tbaa !24
  %i.gtn = freeze <32 x i16> %wide.vec6450        ; 2 uses
  %i.gto = bitcast <32 x i16> %i.gtn to <16 x i32>
  %i.gtp = bitcast <32 x i16> %i.gtn to <16 x i32>
  %i.gtq = and <16 x i32> %i.gtp, splat (i32 -65536)
  %i.gtr = shl <16 x i32> %i.gtc, splat (i32 16)
  %i.gts = shl <16 x i32> %i.gtg, splat (i32 16)
  %i.gtt = shl <16 x i32> %i.gtk, splat (i32 16)
  %i.gtu = shl <16 x i32> %i.gto, splat (i32 16)
  %i.gtv = bitcast <16 x i32> %i.gtr to <16 x float>
  %i.gtw = bitcast <16 x i32> %i.gts to <16 x float>
  %i.gtx = bitcast <16 x i32> %i.gtt to <16 x float>
  %i.gty = bitcast <16 x i32> %i.gtu to <16 x float>
  %i.gtz = fmul fast <16 x float> %i.gtv, %i.gsx
  %i.gua = fmul fast <16 x float> %i.gtw, %i.gsy
  %i.gub = fmul fast <16 x float> %i.gtx, %i.gsz
  %i.guc = fmul fast <16 x float> %i.gty, %i.gta
  %i.gud = fadd fast <16 x float> %i.gtz, %vec.phi6429
  %i.gue = fadd fast <16 x float> %i.gua, %vec.phi6430
  %i.guf = fadd fast <16 x float> %i.gub, %vec.phi6431
  %i.gug = fadd fast <16 x float> %i.guc, %vec.phi6432
  %i.guh = getelementptr [2 x i8], ptr %i.gie, i64 %i.git
  %i.gui = getelementptr [2 x i8], ptr %i.gie, i64 %i.giv
  %i.guj = getelementptr [2 x i8], ptr %i.gie, i64 %i.gix
  %i.guk = getelementptr [2 x i8], ptr %i.gie, i64 %i.giz
  %i.gul = getelementptr [2 x i8], ptr %i.gie, i64 %i.gjb
  %i.gum = getelementptr [2 x i8], ptr %i.gie, i64 %i.gjd
  %i.gun = getelementptr [2 x i8], ptr %i.gie, i64 %i.gjf
  %i.guo = getelementptr [2 x i8], ptr %i.gie, i64 %i.gjh
  %i.gup = getelementptr [2 x i8], ptr %i.gie, i64 %i.gjj
  %i.guq = getelementptr [2 x i8], ptr %i.gie, i64 %i.gjl
  %i.gur = getelementptr [2 x i8], ptr %i.gie, i64 %i.gjn
  %i.gus = getelementptr [2 x i8], ptr %i.gie, i64 %i.gjp
  %i.gut = getelementptr [2 x i8], ptr %i.gie, i64 %i.gjr
  %i.guu = getelementptr [2 x i8], ptr %i.gie, i64 %i.gjt
  %i.guv = getelementptr [2 x i8], ptr %i.gie, i64 %i.gjv
  %i.guw = getelementptr [2 x i8], ptr %i.gie, i64 %i.gjx
  %i.gux = getelementptr [2 x i8], ptr %i.gie, i64 %i.gjz
  %i.guy = getelementptr [2 x i8], ptr %i.gie, i64 %i.gkb
  %i.guz = getelementptr [2 x i8], ptr %i.gie, i64 %i.gkd
  %i.gva = getelementptr [2 x i8], ptr %i.gie, i64 %i.gkf
  %i.gvb = getelementptr [2 x i8], ptr %i.gie, i64 %i.gkh
  %i.gvc = getelementptr [2 x i8], ptr %i.gie, i64 %i.gkj
  %i.gvd = getelementptr [2 x i8], ptr %i.gie, i64 %i.gkl
  %i.gve = getelementptr [2 x i8], ptr %i.gie, i64 %i.gkn
  %i.gvf = getelementptr [2 x i8], ptr %i.gie, i64 %i.gkp
  %i.gvg = getelementptr [2 x i8], ptr %i.gie, i64 %i.gkr
  %i.gvh = getelementptr [2 x i8], ptr %i.gie, i64 %i.gkt
  %i.gvi = getelementptr [2 x i8], ptr %i.gie, i64 %i.gkv
  %i.gvj = getelementptr [2 x i8], ptr %i.gie, i64 %i.gkx
  %i.gvk = getelementptr [2 x i8], ptr %i.gie, i64 %i.gkz
  %i.gvl = getelementptr [2 x i8], ptr %i.gie, i64 %i.glb
  %i.gvm = getelementptr [2 x i8], ptr %i.gie, i64 %i.gld
  %i.gvn = getelementptr [2 x i8], ptr %i.gie, i64 %i.glf
  %i.gvo = getelementptr [2 x i8], ptr %i.gie, i64 %i.glh
  %i.gvp = getelementptr [2 x i8], ptr %i.gie, i64 %i.glj
  %i.gvq = getelementptr [2 x i8], ptr %i.gie, i64 %i.gll
  %i.gvr = getelementptr [2 x i8], ptr %i.gie, i64 %i.gln
  %i.gvs = getelementptr [2 x i8], ptr %i.gie, i64 %i.glp
  %i.gvt = getelementptr [2 x i8], ptr %i.gie, i64 %i.glr
  %i.gvu = getelementptr [2 x i8], ptr %i.gie, i64 %i.glt
  %i.gvv = getelementptr [2 x i8], ptr %i.gie, i64 %i.glv
  %i.gvw = getelementptr [2 x i8], ptr %i.gie, i64 %i.glx
  %i.gvx = getelementptr [2 x i8], ptr %i.gie, i64 %i.glz
  %i.gvy = getelementptr [2 x i8], ptr %i.gie, i64 %i.gmb
  %i.gvz = getelementptr [2 x i8], ptr %i.gie, i64 %i.gmd
  %i.gwa = getelementptr [2 x i8], ptr %i.gie, i64 %i.gmf
  %i.gwb = getelementptr [2 x i8], ptr %i.gie, i64 %i.gmh
  %i.gwc = getelementptr [2 x i8], ptr %i.gie, i64 %i.gmj
  %i.gwd = getelementptr [2 x i8], ptr %i.gie, i64 %i.gml
  %i.gwe = getelementptr [2 x i8], ptr %i.gie, i64 %i.gmn
  %i.gwf = getelementptr [2 x i8], ptr %i.gie, i64 %i.gmp
  %i.gwg = getelementptr [2 x i8], ptr %i.gie, i64 %i.gmr
  %i.gwh = getelementptr [2 x i8], ptr %i.gie, i64 %i.gmt
  %i.gwi = getelementptr [2 x i8], ptr %i.gie, i64 %i.gmv
  %i.gwj = getelementptr [2 x i8], ptr %i.gie, i64 %i.gmx
  %i.gwk = getelementptr [2 x i8], ptr %i.gie, i64 %i.gmz
  %i.gwl = getelementptr [2 x i8], ptr %i.gie, i64 %i.gnb
  %i.gwm = getelementptr [2 x i8], ptr %i.gie, i64 %i.gnd
  %i.gwn = getelementptr [2 x i8], ptr %i.gie, i64 %i.gnf
  %i.gwo = getelementptr [2 x i8], ptr %i.gie, i64 %i.gnh
  %i.gwp = getelementptr [2 x i8], ptr %i.gie, i64 %i.gnj
  %i.gwq = getelementptr [2 x i8], ptr %i.gie, i64 %i.gnl
  %i.gwr = getelementptr [2 x i8], ptr %i.gie, i64 %i.gnn
  %i.gws = getelementptr [2 x i8], ptr %i.gie, i64 %i.gnp
  %i.gwt = load i16, ptr %i.guh, align 2, !tbaa !24
  %i.gwu = load i16, ptr %i.gui, align 2, !tbaa !24
  %i.gwv = load i16, ptr %i.guj, align 2, !tbaa !24
  %i.gww = load i16, ptr %i.guk, align 2, !tbaa !24
  %i.gwx = load i16, ptr %i.gul, align 2, !tbaa !24
  %i.gwy = load i16, ptr %i.gum, align 2, !tbaa !24
  %i.gwz = load i16, ptr %i.gun, align 2, !tbaa !24
  %i.gxa = load i16, ptr %i.guo, align 2, !tbaa !24
  %i.gxb = load i16, ptr %i.gup, align 2, !tbaa !24
  %i.gxc = load i16, ptr %i.guq, align 2, !tbaa !24
  %i.gxd = load i16, ptr %i.gur, align 2, !tbaa !24
  %i.gxe = load i16, ptr %i.gus, align 2, !tbaa !24
  %i.gxf = load i16, ptr %i.gut, align 2, !tbaa !24
  %i.gxg = load i16, ptr %i.guu, align 2, !tbaa !24
  %i.gxh = load i16, ptr %i.guv, align 2, !tbaa !24
  %i.gxi = load i16, ptr %i.guw, align 2, !tbaa !24
  %i.gxj = insertelement <16 x i16> poison, i16 %i.gwt, i64 0
  %i.gxk = insertelement <16 x i16> %i.gxj, i16 %i.gwu, i64 1
  %i.gxl = insertelement <16 x i16> %i.gxk, i16 %i.gwv, i64 2
  %i.gxm = insertelement <16 x i16> %i.gxl, i16 %i.gww, i64 3
  %i.gxn = insertelement <16 x i16> %i.gxm, i16 %i.gwx, i64 4
  %i.gxo = insertelement <16 x i16> %i.gxn, i16 %i.gwy, i64 5
  %i.gxp = insertelement <16 x i16> %i.gxo, i16 %i.gwz, i64 6
  %i.gxq = insertelement <16 x i16> %i.gxp, i16 %i.gxa, i64 7
  %i.gxr = insertelement <16 x i16> %i.gxq, i16 %i.gxb, i64 8
  %i.gxs = insertelement <16 x i16> %i.gxr, i16 %i.gxc, i64 9
  %i.gxt = insertelement <16 x i16> %i.gxs, i16 %i.gxd, i64 10
  %i.gxu = insertelement <16 x i16> %i.gxt, i16 %i.gxe, i64 11
  %i.gxv = insertelement <16 x i16> %i.gxu, i16 %i.gxf, i64 12
  %i.gxw = insertelement <16 x i16> %i.gxv, i16 %i.gxg, i64 13
  %i.gxx = insertelement <16 x i16> %i.gxw, i16 %i.gxh, i64 14
  %i.gxy = insertelement <16 x i16> %i.gxx, i16 %i.gxi, i64 15
  %i.gxz = load i16, ptr %i.gux, align 2, !tbaa !24
  %i.gya = load i16, ptr %i.guy, align 2, !tbaa !24
  %i.gyb = load i16, ptr %i.guz, align 2, !tbaa !24
  %i.gyc = load i16, ptr %i.gva, align 2, !tbaa !24
  %i.gyd = load i16, ptr %i.gvb, align 2, !tbaa !24
  %i.gye = load i16, ptr %i.gvc, align 2, !tbaa !24
  %i.gyf = load i16, ptr %i.gvd, align 2, !tbaa !24
  %i.gyg = load i16, ptr %i.gve, align 2, !tbaa !24
  %i.gyh = load i16, ptr %i.gvf, align 2, !tbaa !24
  %i.gyi = load i16, ptr %i.gvg, align 2, !tbaa !24
  %i.gyj = load i16, ptr %i.gvh, align 2, !tbaa !24
  %i.gyk = load i16, ptr %i.gvi, align 2, !tbaa !24
  %i.gyl = load i16, ptr %i.gvj, align 2, !tbaa !24
  %i.gym = load i16, ptr %i.gvk, align 2, !tbaa !24
  %i.gyn = load i16, ptr %i.gvl, align 2, !tbaa !24
  %i.gyo = load i16, ptr %i.gvm, align 2, !tbaa !24
  %i.gyp = insertelement <16 x i16> poison, i16 %i.gxz, i64 0
  %i.gyq = insertelement <16 x i16> %i.gyp, i16 %i.gya, i64 1
  %i.gyr = insertelement <16 x i16> %i.gyq, i16 %i.gyb, i64 2
  %i.gys = insertelement <16 x i16> %i.gyr, i16 %i.gyc, i64 3
  %i.gyt = insertelement <16 x i16> %i.gys, i16 %i.gyd, i64 4
  %i.gyu = insertelement <16 x i16> %i.gyt, i16 %i.gye, i64 5
  %i.gyv = insertelement <16 x i16> %i.gyu, i16 %i.gyf, i64 6
  %i.gyw = insertelement <16 x i16> %i.gyv, i16 %i.gyg, i64 7
  %i.gyx = insertelement <16 x i16> %i.gyw, i16 %i.gyh, i64 8
  %i.gyy = insertelement <16 x i16> %i.gyx, i16 %i.gyi, i64 9
  %i.gyz = insertelement <16 x i16> %i.gyy, i16 %i.gyj, i64 10
  %i.gza = insertelement <16 x i16> %i.gyz, i16 %i.gyk, i64 11
  %i.gzb = insertelement <16 x i16> %i.gza, i16 %i.gyl, i64 12
  %i.gzc = insertelement <16 x i16> %i.gzb, i16 %i.gym, i64 13
  %i.gzd = insertelement <16 x i16> %i.gzc, i16 %i.gyn, i64 14
  %i.gze = insertelement <16 x i16> %i.gzd, i16 %i.gyo, i64 15
  %i.gzf = load i16, ptr %i.gvn, align 2, !tbaa !24
  %i.gzg = load i16, ptr %i.gvo, align 2, !tbaa !24
  %i.gzh = load i16, ptr %i.gvp, align 2, !tbaa !24
  %i.gzi = load i16, ptr %i.gvq, align 2, !tbaa !24
  %i.gzj = load i16, ptr %i.gvr, align 2, !tbaa !24
  %i.gzk = load i16, ptr %i.gvs, align 2, !tbaa !24
  %i.gzl = load i16, ptr %i.gvt, align 2, !tbaa !24
  %i.gzm = load i16, ptr %i.gvu, align 2, !tbaa !24
  %i.gzn = load i16, ptr %i.gvv, align 2, !tbaa !24
  %i.gzo = load i16, ptr %i.gvw, align 2, !tbaa !24
  %i.gzp = load i16, ptr %i.gvx, align 2, !tbaa !24
  %i.gzq = load i16, ptr %i.gvy, align 2, !tbaa !24
  %i.gzr = load i16, ptr %i.gvz, align 2, !tbaa !24
  %i.gzs = load i16, ptr %i.gwa, align 2, !tbaa !24
  %i.gzt = load i16, ptr %i.gwb, align 2, !tbaa !24
  %i.gzu = load i16, ptr %i.gwc, align 2, !tbaa !24
  %i.gzv = insertelement <16 x i16> poison, i16 %i.gzf, i64 0
  %i.gzw = insertelement <16 x i16> %i.gzv, i16 %i.gzg, i64 1
  %i.gzx = insertelement <16 x i16> %i.gzw, i16 %i.gzh, i64 2
  %i.gzy = insertelement <16 x i16> %i.gzx, i16 %i.gzi, i64 3
  %i.gzz = insertelement <16 x i16> %i.gzy, i16 %i.gzj, i64 4
  %i.haa = insertelement <16 x i16> %i.gzz, i16 %i.gzk, i64 5
  %i.hab = insertelement <16 x i16> %i.haa, i16 %i.gzl, i64 6
  %i.hac = insertelement <16 x i16> %i.hab, i16 %i.gzm, i64 7
  %i.had = insertelement <16 x i16> %i.hac, i16 %i.gzn, i64 8
  %i.hae = insertelement <16 x i16> %i.had, i16 %i.gzo, i64 9
  %i.haf = insertelement <16 x i16> %i.hae, i16 %i.gzp, i64 10
  %i.hag = insertelement <16 x i16> %i.haf, i16 %i.gzq, i64 11
  %i.hah = insertelement <16 x i16> %i.hag, i16 %i.gzr, i64 12
  %i.hai = insertelement <16 x i16> %i.hah, i16 %i.gzs, i64 13
  %i.haj = insertelement <16 x i16> %i.hai, i16 %i.gzt, i64 14
  %i.hak = insertelement <16 x i16> %i.haj, i16 %i.gzu, i64 15
  %i.hal = load i16, ptr %i.gwd, align 2, !tbaa !24
  %i.ham = load i16, ptr %i.gwe, align 2, !tbaa !24
  %i.han = load i16, ptr %i.gwf, align 2, !tbaa !24
  %i.hao = load i16, ptr %i.gwg, align 2, !tbaa !24
  %i.hap = load i16, ptr %i.gwh, align 2, !tbaa !24
  %i.haq = load i16, ptr %i.gwi, align 2, !tbaa !24
  %i.har = load i16, ptr %i.gwj, align 2, !tbaa !24
  %i.has = load i16, ptr %i.gwk, align 2, !tbaa !24
  %i.hat = load i16, ptr %i.gwl, align 2, !tbaa !24
  %i.hau = load i16, ptr %i.gwm, align 2, !tbaa !24
  %i.hav = load i16, ptr %i.gwn, align 2, !tbaa !24
  %i.haw = load i16, ptr %i.gwo, align 2, !tbaa !24
  %i.hax = load i16, ptr %i.gwp, align 2, !tbaa !24
  %i.hay = load i16, ptr %i.gwq, align 2, !tbaa !24
  %i.haz = load i16, ptr %i.gwr, align 2, !tbaa !24
  %i.hba = load i16, ptr %i.gws, align 2, !tbaa !24
  %i.hbb = insertelement <16 x i16> poison, i16 %i.hal, i64 0
  %i.hbc = insertelement <16 x i16> %i.hbb, i16 %i.ham, i64 1
  %i.hbd = insertelement <16 x i16> %i.hbc, i16 %i.han, i64 2
  %i.hbe = insertelement <16 x i16> %i.hbd, i16 %i.hao, i64 3
  %i.hbf = insertelement <16 x i16> %i.hbe, i16 %i.hap, i64 4
  %i.hbg = insertelement <16 x i16> %i.hbf, i16 %i.haq, i64 5
  %i.hbh = insertelement <16 x i16> %i.hbg, i16 %i.har, i64 6
  %i.hbi = insertelement <16 x i16> %i.hbh, i16 %i.has, i64 7
  %i.hbj = insertelement <16 x i16> %i.hbi, i16 %i.hat, i64 8
  %i.hbk = insertelement <16 x i16> %i.hbj, i16 %i.hau, i64 9
  %i.hbl = insertelement <16 x i16> %i.hbk, i16 %i.hav, i64 10
  %i.hbm = insertelement <16 x i16> %i.hbl, i16 %i.haw, i64 11
  %i.hbn = insertelement <16 x i16> %i.hbm, i16 %i.hax, i64 12
  %i.hbo = insertelement <16 x i16> %i.hbn, i16 %i.hay, i64 13
  %i.hbp = insertelement <16 x i16> %i.hbo, i16 %i.haz, i64 14
  %i.hbq = insertelement <16 x i16> %i.hbp, i16 %i.hba, i64 15
  %i.hbr = zext <16 x i16> %i.gxy to <16 x i32>
  %i.hbs = zext <16 x i16> %i.gze to <16 x i32>
  %i.hbt = zext <16 x i16> %i.hak to <16 x i32>
  %i.hbu = zext <16 x i16> %i.hbq to <16 x i32>
  %i.hbv = shl nuw <16 x i32> %i.hbr, splat (i32 16)
  %i.hbw = shl nuw <16 x i32> %i.hbs, splat (i32 16)
  %i.hbx = shl nuw <16 x i32> %i.hbt, splat (i32 16)
  %i.hby = shl nuw <16 x i32> %i.hbu, splat (i32 16)
  %i.hbz = bitcast <16 x i32> %i.hbv to <16 x float>
  %i.hca = bitcast <16 x i32> %i.hbw to <16 x float>
  %i.hcb = bitcast <16 x i32> %i.hbx to <16 x float>
  %i.hcc = bitcast <16 x i32> %i.hby to <16 x float>
  %i.hcd = bitcast <16 x i32> %i.gte to <16 x float>
  %i.hce = bitcast <16 x i32> %i.gti to <16 x float>
  %i.hcf = bitcast <16 x i32> %i.gtm to <16 x float>
  %i.hcg = bitcast <16 x i32> %i.gtq to <16 x float>
  %i.hch = fmul fast <16 x float> %i.hcd, %i.hbz
  %i.hci = fmul fast <16 x float> %i.hce, %i.hca
  %i.hcj = fmul fast <16 x float> %i.hcf, %i.hcb
  %i.hck = fmul fast <16 x float> %i.hcg, %i.hcc
  %i.hcl = fadd fast <16 x float> %i.gud, %i.hch  ; 2 uses
  %i.hcm = fadd fast <16 x float> %i.gue, %i.hci  ; 2 uses
  %i.hcn = fadd fast <16 x float> %i.guf, %i.hcj  ; 2 uses
  %i.hco = fadd fast <16 x float> %i.gug, %i.hck  ; 2 uses
  %index.next6453 = add nuw i64 %index6428, 64    ; 2 uses
  %i.hcp = icmp eq i64 %index.next6453, %n.vec6426
  br i1 %i.hcp, label %middle.block6454, label %vector.body6427, !llvm.loop !269

middle.block6454:                                 ; preds = %vector.body6427
  %bin.rdx6455 = fadd fast <16 x float> %i.hcm, %i.hcl
  %bin.rdx6456 = fadd fast <16 x float> %i.hcn, %bin.rdx6455
  %bin.rdx6457 = fadd fast <16 x float> %i.hco, %bin.rdx6456
  %i.hcq = call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx6457) ; 3 uses
  br i1 %cmp.n6458, label %._crit_edge5146.us, label %vec.epilog.iter.check6463

vec.epilog.iter.check6463:                        ; preds = %middle.block6454
  br i1 %min.epilog.iters.check6464, label %vec.epilog.scalar.ph6462.preheader, label %vec.epilog.ph6465, !prof !29

vec.epilog.ph6465:                                ; preds = %vector.main.loop.iter.check6423, %vec.epilog.iter.check6463
  %vec.epilog.resume.val6459 = phi i64 [ %n.vec6426, %vec.epilog.iter.check6463 ], [ 0, %vector.main.loop.iter.check6423 ]
  %bc.merge.rdx6460 = phi float [ %i.hcq, %vec.epilog.iter.check6463 ], [ %.114665149.us, %vector.main.loop.iter.check6423 ]
  %i.hcr = getelementptr i8, ptr %.215150.us, i64 %i.foj
  %i.hcs = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx6460, i64 0
  br label %vec.epilog.vector.body6467

vec.epilog.vector.body6467:                       ; preds = %vec.epilog.vector.body6467, %vec.epilog.ph6465
  %index6468 = phi i64 [ %vec.epilog.resume.val6459, %vec.epilog.ph6465 ], [ %index.next6475, %vec.epilog.vector.body6467 ] ; 3 uses
  %vec.phi6469 = phi <8 x float> [ %i.hcs, %vec.epilog.ph6465 ], [ %i.hfq, %vec.epilog.vector.body6467 ]
  %i.hct = shl i64 %index6468, 2
  %next.gep6470 = getelementptr i8, ptr %.215150.us, i64 %i.hct
  %i.hcu = getelementptr inbounds nuw [4 x i8], ptr %i.ghx, i64 %index6468
  %wide.load6471 = load <8 x i32>, ptr %i.hcu, align 4, !tbaa !30
  %i.hcv = sext <8 x i32> %wide.load6471 to <8 x i64> ; 8 uses
  %i.hcw = extractelement <8 x i64> %i.hcv, i64 0 ; 2 uses
  %i.hcx = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.hcw
  %i.hcy = extractelement <8 x i64> %i.hcv, i64 1 ; 2 uses
  %i.hcz = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.hcy
  %i.hda = extractelement <8 x i64> %i.hcv, i64 2 ; 2 uses
  %i.hdb = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.hda
  %i.hdc = extractelement <8 x i64> %i.hcv, i64 3 ; 2 uses
  %i.hdd = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.hdc
  %i.hde = extractelement <8 x i64> %i.hcv, i64 4 ; 2 uses
  %i.hdf = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.hde
  %i.hdg = extractelement <8 x i64> %i.hcv, i64 5 ; 2 uses
  %i.hdh = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.hdg
  %i.hdi = extractelement <8 x i64> %i.hcv, i64 6 ; 2 uses
  %i.hdj = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.hdi
  %i.hdk = extractelement <8 x i64> %i.hcv, i64 7 ; 2 uses
  %i.hdl = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.hdk
  %i.hdm = load i16, ptr %i.hcx, align 2, !tbaa !24
  %i.hdn = load i16, ptr %i.hcz, align 2, !tbaa !24
  %i.hdo = load i16, ptr %i.hdb, align 2, !tbaa !24
  %i.hdp = load i16, ptr %i.hdd, align 2, !tbaa !24
  %i.hdq = load i16, ptr %i.hdf, align 2, !tbaa !24
  %i.hdr = load i16, ptr %i.hdh, align 2, !tbaa !24
  %i.hds = load i16, ptr %i.hdj, align 2, !tbaa !24
  %i.hdt = load i16, ptr %i.hdl, align 2, !tbaa !24
  %i.hdu = insertelement <8 x i16> poison, i16 %i.hdm, i64 0
  %i.hdv = insertelement <8 x i16> %i.hdu, i16 %i.hdn, i64 1
  %i.hdw = insertelement <8 x i16> %i.hdv, i16 %i.hdo, i64 2
  %i.hdx = insertelement <8 x i16> %i.hdw, i16 %i.hdp, i64 3
  %i.hdy = insertelement <8 x i16> %i.hdx, i16 %i.hdq, i64 4
  %i.hdz = insertelement <8 x i16> %i.hdy, i16 %i.hdr, i64 5
  %i.hea = insertelement <8 x i16> %i.hdz, i16 %i.hds, i64 6
  %i.heb = insertelement <8 x i16> %i.hea, i16 %i.hdt, i64 7
  %i.hec = zext <8 x i16> %i.heb to <8 x i32>
  %i.hed = shl nuw <8 x i32> %i.hec, splat (i32 16)
  %i.hee = bitcast <8 x i32> %i.hed to <8 x float>
  %wide.vec6472 = load <16 x i16>, ptr %next.gep6470, align 2, !tbaa !24
  %i.hef = freeze <16 x i16> %wide.vec6472        ; 2 uses
  %i.heg = bitcast <16 x i16> %i.hef to <8 x i32>
  %i.heh = bitcast <16 x i16> %i.hef to <8 x i32>
  %i.hei = and <8 x i32> %i.heh, splat (i32 -65536)
  %i.hej = shl <8 x i32> %i.heg, splat (i32 16)
  %i.hek = bitcast <8 x i32> %i.hej to <8 x float>
  %i.hel = fmul fast <8 x float> %i.hek, %i.hee
  %i.hem = fadd fast <8 x float> %i.hel, %vec.phi6469
  %i.hen = getelementptr [2 x i8], ptr %i.gie, i64 %i.hcw
  %i.heo = getelementptr [2 x i8], ptr %i.gie, i64 %i.hcy
  %i.hep = getelementptr [2 x i8], ptr %i.gie, i64 %i.hda
  %i.heq = getelementptr [2 x i8], ptr %i.gie, i64 %i.hdc
  %i.her = getelementptr [2 x i8], ptr %i.gie, i64 %i.hde
  %i.hes = getelementptr [2 x i8], ptr %i.gie, i64 %i.hdg
  %i.het = getelementptr [2 x i8], ptr %i.gie, i64 %i.hdi
  %i.heu = getelementptr [2 x i8], ptr %i.gie, i64 %i.hdk
  %i.hev = load i16, ptr %i.hen, align 2, !tbaa !24
  %i.hew = load i16, ptr %i.heo, align 2, !tbaa !24
  %i.hex = load i16, ptr %i.hep, align 2, !tbaa !24
  %i.hey = load i16, ptr %i.heq, align 2, !tbaa !24
  %i.hez = load i16, ptr %i.her, align 2, !tbaa !24
  %i.hfa = load i16, ptr %i.hes, align 2, !tbaa !24
  %i.hfb = load i16, ptr %i.het, align 2, !tbaa !24
  %i.hfc = load i16, ptr %i.heu, align 2, !tbaa !24
  %i.hfd = insertelement <8 x i16> poison, i16 %i.hev, i64 0
  %i.hfe = insertelement <8 x i16> %i.hfd, i16 %i.hew, i64 1
  %i.hff = insertelement <8 x i16> %i.hfe, i16 %i.hex, i64 2
  %i.hfg = insertelement <8 x i16> %i.hff, i16 %i.hey, i64 3
  %i.hfh = insertelement <8 x i16> %i.hfg, i16 %i.hez, i64 4
  %i.hfi = insertelement <8 x i16> %i.hfh, i16 %i.hfa, i64 5
  %i.hfj = insertelement <8 x i16> %i.hfi, i16 %i.hfb, i64 6
  %i.hfk = insertelement <8 x i16> %i.hfj, i16 %i.hfc, i64 7
  %i.hfl = zext <8 x i16> %i.hfk to <8 x i32>
  %i.hfm = shl nuw <8 x i32> %i.hfl, splat (i32 16)
  %i.hfn = bitcast <8 x i32> %i.hfm to <8 x float>
  %i.hfo = bitcast <8 x i32> %i.hei to <8 x float>
  %i.hfp = fmul fast <8 x float> %i.hfo, %i.hfn
  %i.hfq = fadd fast <8 x float> %i.hem, %i.hfp   ; 2 uses
  %index.next6475 = add nuw i64 %index6468, 8     ; 2 uses
  %i.hfr = icmp eq i64 %index.next6475, %n.vec6466
  br i1 %i.hfr, label %vec.epilog.middle.block6476, label %vec.epilog.vector.body6467, !llvm.loop !270

vec.epilog.middle.block6476:                      ; preds = %vec.epilog.vector.body6467
  %i.hfs = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.hfq) ; 2 uses
  br i1 %cmp.n6477, label %._crit_edge5146.us, label %vec.epilog.scalar.ph6462.preheader

vec.epilog.scalar.ph6462.preheader:               ; preds = %iter.check6461, %vec.epilog.iter.check6463, %vec.epilog.middle.block6476
  %indvars.iv5775.ph = phi i64 [ 0, %iter.check6461 ], [ %n.vec6426, %vec.epilog.iter.check6463 ], [ %n.vec6466, %vec.epilog.middle.block6476 ]
  %.225143.us.ph = phi ptr [ %.215150.us, %iter.check6461 ], [ %i.gif, %vec.epilog.iter.check6463 ], [ %i.hcr, %vec.epilog.middle.block6476 ]
  %.214675142.us.ph = phi float [ %.114665149.us, %iter.check6461 ], [ %i.hcq, %vec.epilog.iter.check6463 ], [ %i.hfs, %vec.epilog.middle.block6476 ]
  br label %vec.epilog.scalar.ph6462

vec.epilog.scalar.ph6462:                         ; preds = %vec.epilog.scalar.ph6462.preheader, %vec.epilog.scalar.ph6462
  %indvars.iv5775 = phi i64 [ %indvars.iv.next5776, %vec.epilog.scalar.ph6462 ], [ %indvars.iv5775.ph, %vec.epilog.scalar.ph6462.preheader ] ; 2 uses
  %.225143.us = phi ptr [ %i.hgt, %vec.epilog.scalar.ph6462 ], [ %.225143.us.ph, %vec.epilog.scalar.ph6462.preheader ] ; 3 uses
  %.214675142.us = phi float [ %i.hgs, %vec.epilog.scalar.ph6462 ], [ %.214675142.us.ph, %vec.epilog.scalar.ph6462.preheader ]
  %i.hft = getelementptr inbounds nuw [4 x i8], ptr %i.ghx, i64 %indvars.iv5775
  %i.hfu = load i32, ptr %i.hft, align 4, !tbaa !30
  %i.hfv = sext i32 %i.hfu to i64                 ; 2 uses
  %i.hfw = getelementptr inbounds [2 x i8], ptr %gep5159.us, i64 %i.hfv
  %i.hfx = load i16, ptr %i.hfw, align 2, !tbaa !24
  %i.hfy = zext i16 %i.hfx to i32
  %i.hfz = shl nuw i32 %i.hfy, 16
  %i.hga = bitcast i32 %i.hfz to float
  %i.hgb = load i16, ptr %.225143.us, align 2, !tbaa !24
  %i.hgc = zext i16 %i.hgb to i32
  %i.hgd = shl nuw i32 %i.hgc, 16
  %i.hge = bitcast i32 %i.hgd to float
  %i.hgf = fmul fast float %i.hge, %i.hga
  %i.hgg = fadd fast float %i.hgf, %.214675142.us
  %i.hgh = getelementptr [2 x i8], ptr %i.gie, i64 %i.hfv
  %i.hgi = load i16, ptr %i.hgh, align 2, !tbaa !24
  %i.hgj = zext i16 %i.hgi to i32
  %i.hgk = shl nuw i32 %i.hgj, 16
  %i.hgl = bitcast i32 %i.hgk to float
  %i.hgm = getelementptr inbounds nuw i8, ptr %.225143.us, i64 2
  %i.hgn = load i16, ptr %i.hgm, align 2, !tbaa !24
  %i.hgo = zext i16 %i.hgn to i32
  %i.hgp = shl nuw i32 %i.hgo, 16
  %i.hgq = bitcast i32 %i.hgp to float
  %i.hgr = fmul fast float %i.hgq, %i.hgl
  %i.hgs = fadd fast float %i.hgg, %i.hgr         ; 2 uses
  %i.hgt = getelementptr inbounds nuw i8, ptr %.225143.us, i64 4
  %indvars.iv.next5776 = add nuw nsw i64 %indvars.iv5775, 1 ; 2 uses
  %exitcond5781.not = icmp eq i64 %indvars.iv.next5776, %wide.trip.count5780
  br i1 %exitcond5781.not, label %._crit_edge5146.us, label %vec.epilog.scalar.ph6462, !llvm.loop !271

._crit_edge5146.us:                               ; preds = %vec.epilog.scalar.ph6462, %vec.epilog.middle.block6476, %middle.block6454
  %.lcssa6122 = phi float [ %i.hfs, %vec.epilog.middle.block6476 ], [ %i.hcq, %middle.block6454 ], [ %i.hgs, %vec.epilog.scalar.ph6462 ] ; 2 uses
  %scevgep5777 = getelementptr i8, ptr %.215150.us, i64 4
  %scevgep5778 = getelementptr i8, ptr %scevgep5777, i64 %i.foe ; 2 uses
  %indvars.iv.next5783 = add nuw nsw i64 %indvars.iv5782, 2 ; 3 uses
  %i.hgu = trunc i64 %indvars.iv.next5783 to i32
  %i.hgv = or i32 %i.hgu, 1
  %i.hgw = icmp slt i32 %i.hgv, %i.q
  br i1 %i.hgw, label %iter.check6461, label %.preheader4344.loopexit, !llvm.loop !272

.preheader4344.loopexit:                          ; preds = %._crit_edge5146.us
  %i.hgx = trunc nuw i64 %indvars.iv.next5783 to i32
  br label %.preheader4344

.preheader4344:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit2332.preheader, %.preheader4344.loopexit, %._crit_edge5133
  %.11466.lcssa = phi float [ %op.rdx6482, %._crit_edge5133 ], [ %.lcssa6122, %.preheader4344.loopexit ], [ %op.rdx6482, %_ZN4ncnn3MatD2Ev.exit2332.preheader ] ; 3 uses
  %.21.lcssa = phi ptr [ %.16.lcssa, %._crit_edge5133 ], [ %scevgep5778, %.preheader4344.loopexit ], [ %.16.lcssa, %_ZN4ncnn3MatD2Ev.exit2332.preheader ]
  %.3.lcssa = phi i32 [ %.2.lcssa, %._crit_edge5133 ], [ %i.hgx, %.preheader4344.loopexit ], [ %i.gic, %_ZN4ncnn3MatD2Ev.exit2332.preheader ] ; 2 uses
  %i.hgy = icmp slt i32 %.3.lcssa, %i.q
  br i1 %i.hgy, label %_ZN4ncnn3MatD2Ev.exit.lr.ph, label %._crit_edge5173

_ZN4ncnn3MatD2Ev.exit.lr.ph:                      ; preds = %.preheader4344
  %i.hgz = load i32, ptr %i.k, align 4, !tbaa !31, !noalias !307
  %i.hha = load ptr, ptr %0, align 8, !tbaa !15, !noalias !307
  %i.hhb = load i64, ptr %i.r, align 8, !tbaa !16, !noalias !307
  %i.hhc = load i64, ptr %i.dfe, align 8, !tbaa !17, !noalias !307 ; 2 uses
  %factor.op.mul5175 = mul i64 %i.hhb, %i.hhc
  %i.hhd = sext i32 %i.hgz to i64
  %i.hhe = mul i64 %i.hhc, %i.hhd
  %i.hhf = mul i64 %i.hhe, %i.fny
  %invariant.gep5177 = getelementptr i8, ptr %i.hha, i64 %i.hhf
  %i.hhg = mul nsw i64 %indvars.iv5795, %i.fog
  %invariant.gep5178 = getelementptr [2 x i8], ptr %invariant.gep5177, i64 %i.hhg
  %i.hhh = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.fob, label %_ZN4ncnn3MatD2Ev.exit.us.preheader, label %._crit_edge5173

_ZN4ncnn3MatD2Ev.exit.us.preheader:               ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph
  %i.hhi = zext i32 %.3.lcssa to i64
  br label %iter.check6404

iter.check6404:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit.us.preheader, %._crit_edge5167.us
  %indvars.iv5792 = phi i64 [ %i.hhi, %_ZN4ncnn3MatD2Ev.exit.us.preheader ], [ %indvars.iv.next5793, %._crit_edge5167.us ] ; 2 uses
  %.235171.us = phi ptr [ %.21.lcssa, %_ZN4ncnn3MatD2Ev.exit.us.preheader ], [ %scevgep5788, %._crit_edge5167.us ] ; 6 uses
  %.314685170.us = phi float [ %.11466.lcssa, %_ZN4ncnn3MatD2Ev.exit.us.preheader ], [ %.lcssa6123, %._crit_edge5167.us ] ; 3 uses
  %.reass5176.us = mul i64 %factor.op.mul5175, %indvars.iv5792
  %gep5179.us = getelementptr i8, ptr %invariant.gep5178, i64 %.reass5176.us ; 73 uses
  br i1 %min.iters.check6376, label %vec.epilog.scalar.ph6405.preheader, label %vector.main.loop.iter.check6377

vector.main.loop.iter.check6377:                  ; preds = %iter.check6404
  br i1 %min.iters.check6378, label %vec.epilog.ph6408, label %vector.ph6379

vector.ph6379:                                    ; preds = %vector.main.loop.iter.check6377
  %i.hhj = getelementptr i8, ptr %.235171.us, i64 %i.fol
  %i.hhk = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.314685170.us, i64 0
  br label %vector.body6381

vector.body6381:                                  ; preds = %vector.ph6379, %vector.body6381
  %index6382 = phi i64 [ 0, %vector.ph6379 ], [ %index.next6396, %vector.body6381 ] ; 3 uses
  %vec.phi6383 = phi <16 x float> [ %i.hhk, %vector.ph6379 ], [ %i.hsv, %vector.body6381 ]
  %vec.phi6384 = phi <16 x float> [ zeroinitializer, %vector.ph6379 ], [ %i.hsw, %vector.body6381 ]
  %vec.phi6385 = phi <16 x float> [ zeroinitializer, %vector.ph6379 ], [ %i.hsx, %vector.body6381 ]
  %vec.phi6386 = phi <16 x float> [ zeroinitializer, %vector.ph6379 ], [ %i.hsy, %vector.body6381 ]
  %i.hhl = shl i64 %index6382, 1
  %next.gep6387 = getelementptr i8, ptr %.235171.us, i64 %i.hhl ; 4 uses
  %i.hhm = getelementptr inbounds nuw [4 x i8], ptr %i.hhh, i64 %index6382 ; 4 uses
  %i.hhn = getelementptr inbounds nuw i8, ptr %i.hhm, i64 64
  %i.hho = getelementptr inbounds nuw i8, ptr %i.hhm, i64 128
  %i.hhp = getelementptr inbounds nuw i8, ptr %i.hhm, i64 192
  %wide.load6388 = load <16 x i32>, ptr %i.hhm, align 4, !tbaa !30
  %wide.load6389 = load <16 x i32>, ptr %i.hhn, align 4, !tbaa !30
  %wide.load6390 = load <16 x i32>, ptr %i.hho, align 4, !tbaa !30
  %wide.load6391 = load <16 x i32>, ptr %i.hhp, align 4, !tbaa !30
  %i.hhq = sext <16 x i32> %wide.load6388 to <16 x i64> ; 16 uses
  %i.hhr = sext <16 x i32> %wide.load6389 to <16 x i64> ; 16 uses
  %i.hhs = sext <16 x i32> %wide.load6390 to <16 x i64> ; 16 uses
  %i.hht = sext <16 x i32> %wide.load6391 to <16 x i64> ; 16 uses
  %i.hhu = extractelement <16 x i64> %i.hhq, i64 0
  %i.hhv = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hhu
  %i.hhw = extractelement <16 x i64> %i.hhq, i64 1
  %i.hhx = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hhw
  %i.hhy = extractelement <16 x i64> %i.hhq, i64 2
  %i.hhz = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hhy
  %i.hia = extractelement <16 x i64> %i.hhq, i64 3
  %i.hib = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hia
  %i.hic = extractelement <16 x i64> %i.hhq, i64 4
  %i.hid = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hic
  %i.hie = extractelement <16 x i64> %i.hhq, i64 5
  %i.hif = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hie
  %i.hig = extractelement <16 x i64> %i.hhq, i64 6
  %i.hih = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hig
  %i.hii = extractelement <16 x i64> %i.hhq, i64 7
  %i.hij = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hii
  %i.hik = extractelement <16 x i64> %i.hhq, i64 8
  %i.hil = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hik
  %i.him = extractelement <16 x i64> %i.hhq, i64 9
  %i.hin = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.him
  %i.hio = extractelement <16 x i64> %i.hhq, i64 10
  %i.hip = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hio
  %i.hiq = extractelement <16 x i64> %i.hhq, i64 11
  %i.hir = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hiq
  %i.his = extractelement <16 x i64> %i.hhq, i64 12
  %i.hit = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.his
  %i.hiu = extractelement <16 x i64> %i.hhq, i64 13
  %i.hiv = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hiu
  %i.hiw = extractelement <16 x i64> %i.hhq, i64 14
  %i.hix = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hiw
  %i.hiy = extractelement <16 x i64> %i.hhq, i64 15
  %i.hiz = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hiy
  %i.hja = extractelement <16 x i64> %i.hhr, i64 0
  %i.hjb = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hja
  %i.hjc = extractelement <16 x i64> %i.hhr, i64 1
  %i.hjd = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hjc
  %i.hje = extractelement <16 x i64> %i.hhr, i64 2
  %i.hjf = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hje
  %i.hjg = extractelement <16 x i64> %i.hhr, i64 3
  %i.hjh = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hjg
  %i.hji = extractelement <16 x i64> %i.hhr, i64 4
  %i.hjj = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hji
  %i.hjk = extractelement <16 x i64> %i.hhr, i64 5
  %i.hjl = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hjk
  %i.hjm = extractelement <16 x i64> %i.hhr, i64 6
  %i.hjn = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hjm
  %i.hjo = extractelement <16 x i64> %i.hhr, i64 7
  %i.hjp = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hjo
  %i.hjq = extractelement <16 x i64> %i.hhr, i64 8
  %i.hjr = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hjq
  %i.hjs = extractelement <16 x i64> %i.hhr, i64 9
  %i.hjt = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hjs
  %i.hju = extractelement <16 x i64> %i.hhr, i64 10
  %i.hjv = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hju
  %i.hjw = extractelement <16 x i64> %i.hhr, i64 11
  %i.hjx = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hjw
  %i.hjy = extractelement <16 x i64> %i.hhr, i64 12
  %i.hjz = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hjy
  %i.hka = extractelement <16 x i64> %i.hhr, i64 13
  %i.hkb = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hka
  %i.hkc = extractelement <16 x i64> %i.hhr, i64 14
  %i.hkd = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hkc
  %i.hke = extractelement <16 x i64> %i.hhr, i64 15
  %i.hkf = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hke
  %i.hkg = extractelement <16 x i64> %i.hhs, i64 0
  %i.hkh = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hkg
  %i.hki = extractelement <16 x i64> %i.hhs, i64 1
  %i.hkj = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hki
  %i.hkk = extractelement <16 x i64> %i.hhs, i64 2
  %i.hkl = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hkk
  %i.hkm = extractelement <16 x i64> %i.hhs, i64 3
  %i.hkn = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hkm
  %i.hko = extractelement <16 x i64> %i.hhs, i64 4
  %i.hkp = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hko
  %i.hkq = extractelement <16 x i64> %i.hhs, i64 5
  %i.hkr = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hkq
  %i.hks = extractelement <16 x i64> %i.hhs, i64 6
  %i.hkt = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hks
  %i.hku = extractelement <16 x i64> %i.hhs, i64 7
  %i.hkv = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hku
  %i.hkw = extractelement <16 x i64> %i.hhs, i64 8
  %i.hkx = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hkw
  %i.hky = extractelement <16 x i64> %i.hhs, i64 9
  %i.hkz = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hky
  %i.hla = extractelement <16 x i64> %i.hhs, i64 10
  %i.hlb = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hla
  %i.hlc = extractelement <16 x i64> %i.hhs, i64 11
  %i.hld = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hlc
  %i.hle = extractelement <16 x i64> %i.hhs, i64 12
  %i.hlf = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hle
  %i.hlg = extractelement <16 x i64> %i.hhs, i64 13
  %i.hlh = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hlg
  %i.hli = extractelement <16 x i64> %i.hhs, i64 14
  %i.hlj = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hli
  %i.hlk = extractelement <16 x i64> %i.hhs, i64 15
  %i.hll = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hlk
  %i.hlm = extractelement <16 x i64> %i.hht, i64 0
  %i.hln = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hlm
  %i.hlo = extractelement <16 x i64> %i.hht, i64 1
  %i.hlp = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hlo
  %i.hlq = extractelement <16 x i64> %i.hht, i64 2
  %i.hlr = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hlq
  %i.hls = extractelement <16 x i64> %i.hht, i64 3
  %i.hlt = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hls
  %i.hlu = extractelement <16 x i64> %i.hht, i64 4
  %i.hlv = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hlu
  %i.hlw = extractelement <16 x i64> %i.hht, i64 5
  %i.hlx = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hlw
  %i.hly = extractelement <16 x i64> %i.hht, i64 6
  %i.hlz = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hly
  %i.hma = extractelement <16 x i64> %i.hht, i64 7
  %i.hmb = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hma
  %i.hmc = extractelement <16 x i64> %i.hht, i64 8
  %i.hmd = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hmc
  %i.hme = extractelement <16 x i64> %i.hht, i64 9
  %i.hmf = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hme
  %i.hmg = extractelement <16 x i64> %i.hht, i64 10
  %i.hmh = getelementptr inbounds [2 x i8], ptr %gep5179.us, i64 %i.hmg
  %i.hmi = extractelement <16 x i64> %i.hht, i64 11
end_hunk_1
begin_hunk_2_@_ZN4ncnnL47conv3x3s1_winograd43_transform_input_tile_bf16sERKNS_3MatERS0_iiiii:bb.a
  %i.dio = load i16, ptr %i.din, align 2, !tbaa !24
  %i.dip = getelementptr inbounds nuw i8, ptr %i.dgm, i64 10
  %i.diq = load i16, ptr %i.dip, align 2, !tbaa !24
  %i.dir = zext i16 %i.dio to i32
  %i.dis = zext i16 %i.diq to i32
  %i.dit = insertelement <2 x i32> poison, i32 %i.dir, i64 0
  %i.diu = insertelement <2 x i32> %i.dit, i32 %i.dis, i64 1
  %i.div = shl nuw <2 x i32> %i.diu, splat (i32 16)
  %i.diw = bitcast <2 x i32> %i.div to <2 x float>
  %i.dix = fadd fast <2 x float> %i.dhf, %i.diw
  br label %bb.kn

bb.kn:                                            ; preds = %bb.km, %bb.kl
  %i.diy = phi <2 x float> [ %i.dix, %bb.km ], [ %i.dhf, %bb.kl ]
  %i.diz = fadd fast <2 x float> %i.dim, %i.dgu
  br label %bb.ko

bb.ko:                                            ; preds = %bb.kn, %bb.kc
  %i.dja = phi <2 x float> [ %i.diz, %bb.kn ], [ zeroinitializer, %bb.kc ]
  %i.djb = phi <2 x float> [ %i.dhq, %bb.kn ], [ zeroinitializer, %bb.kc ] ; 3 uses
  %i.djc = phi <2 x float> [ %i.dim, %bb.kn ], [ zeroinitializer, %bb.kc ] ; 2 uses
  %i.djd = phi <2 x float> [ %i.dib, %bb.kn ], [ zeroinitializer, %bb.kc ] ; 3 uses
  %i.dje = phi <2 x float> [ %i.dhf, %bb.kn ], [ zeroinitializer, %bb.kc ] ; 2 uses
  %i.djf = phi <2 x float> [ %i.diy, %bb.kn ], [ zeroinitializer, %bb.kc ]
  %i.djg = fmul fast <2 x float> %i.dje, splat (float f0x3FB504F3)
  %i.djh = fmul fast <2 x float> %i.djd, splat (float f0x3F3504F3)
  %i.dji = fmul fast <2 x float> %i.dje, splat (float f0x3F3504F3)
  %i.djj = fmul fast <2 x float> %i.djb, splat (float 2.500000e+00)
  %i.djk = fsub fast <2 x float> %i.dja, %i.djj   ; 3 uses
  %i.djl = fsub fast <2 x float> %i.djg, %i.djh   ; 2 uses
  %i.djm = fmul fast <2 x float> %i.djb, splat (float 2.000000e+00)
  %i.djn = fsub fast <2 x float> %i.djc, %i.djm   ; 2 uses
  %i.djo = fsub fast <2 x float> %i.djn, %i.djl   ; 3 uses
  %i.djp = fadd fast <2 x float> %i.djn, %i.djl   ; 3 uses
  %i.djq = fmul fast <2 x float> %i.djd, splat (float f0x3FB504F3)
  %i.djr = fsub fast <2 x float> %i.djq, %i.dji   ; 2 uses
  %i.djs = fmul fast <2 x float> %i.djb, splat (float 5.000000e-01)
  %i.djt = fsub fast <2 x float> %i.djc, %i.djs   ; 2 uses
  %i.dju = fadd fast <2 x float> %i.djt, %i.djr   ; 3 uses
  %i.djv = fsub fast <2 x float> %i.djt, %i.djr   ; 3 uses
  %i.djw = fmul fast <2 x float> %i.djd, splat (float 2.500000e+00)
  %i.djx = fsub fast <2 x float> %i.djf, %i.djw   ; 3 uses
  %i.djy = getelementptr inbounds [2 x i8], ptr %i.dgk, i64 %i.cqe ; 7 uses
  %i.djz = icmp sgt i64 %invariant.op1247, %i.crr
  br i1 %i.djz, label %bb.kp, label %bb.la

bb.kp:                                            ; preds = %bb.ko
  %i.dka = getelementptr inbounds nuw [2 x i8], ptr %i.djy, i64 %i.crw ; 6 uses
  %i.dkb = load i16, ptr %i.djy, align 2, !tbaa !24
  %i.dkc = load i16, ptr %i.dka, align 2, !tbaa !24
  %i.dkd = zext i16 %i.dkb to i32
  %i.dke = zext i16 %i.dkc to i32
  %i.dkf = insertelement <2 x i32> poison, i32 %i.dkd, i64 0
  %i.dkg = insertelement <2 x i32> %i.dkf, i32 %i.dke, i64 1
  %i.dkh = shl nuw <2 x i32> %i.dkg, splat (i32 16)
  %i.dki = bitcast <2 x i32> %i.dkh to <2 x float>
  br i1 %i.cry, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.dkj = getelementptr inbounds nuw i8, ptr %i.djy, i64 2
  %i.dkk = load i16, ptr %i.dkj, align 2, !tbaa !24
  %i.dkl = getelementptr inbounds nuw i8, ptr %i.dka, i64 2
  %i.dkm = load i16, ptr %i.dkl, align 2, !tbaa !24
  %i.dkn = zext i16 %i.dkk to i32
  %i.dko = zext i16 %i.dkm to i32
  %i.dkp = insertelement <2 x i32> poison, i32 %i.dkn, i64 0
  %i.dkq = insertelement <2 x i32> %i.dkp, i32 %i.dko, i64 1
  %i.dkr = shl nuw <2 x i32> %i.dkq, splat (i32 16)
  %i.dks = bitcast <2 x i32> %i.dkr to <2 x float>
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kq, %bb.kp
  %i.dkt = phi <2 x float> [ %i.dks, %bb.kq ], [ zeroinitializer, %bb.kp ] ; 3 uses
  br i1 %i.csa, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  %i.dku = getelementptr inbounds nuw i8, ptr %i.djy, i64 4
  %i.dkv = load i16, ptr %i.dku, align 2, !tbaa !24
  %i.dkw = getelementptr inbounds nuw i8, ptr %i.dka, i64 4
  %i.dkx = load i16, ptr %i.dkw, align 2, !tbaa !24
  %i.dky = zext i16 %i.dkv to i32
  %i.dkz = zext i16 %i.dkx to i32
  %i.dla = insertelement <2 x i32> poison, i32 %i.dky, i64 0
  %i.dlb = insertelement <2 x i32> %i.dla, i32 %i.dkz, i64 1
  %i.dlc = shl nuw <2 x i32> %i.dlb, splat (i32 16)
  %i.dld = bitcast <2 x i32> %i.dlc to <2 x float>
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.kr
  %i.dle = phi <2 x float> [ %i.dld, %bb.ks ], [ zeroinitializer, %bb.kr ]
  br i1 %i.csc, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  %i.dlf = getelementptr inbounds nuw i8, ptr %i.djy, i64 6
  %i.dlg = load i16, ptr %i.dlf, align 2, !tbaa !24
  %i.dlh = getelementptr inbounds nuw i8, ptr %i.dka, i64 6
  %i.dli = load i16, ptr %i.dlh, align 2, !tbaa !24
  %i.dlj = zext i16 %i.dlg to i32
  %i.dlk = zext i16 %i.dli to i32
  %i.dll = insertelement <2 x i32> poison, i32 %i.dlj, i64 0
  %i.dlm = insertelement <2 x i32> %i.dll, i32 %i.dlk, i64 1
  %i.dln = shl nuw <2 x i32> %i.dlm, splat (i32 16)
  %i.dlo = bitcast <2 x i32> %i.dln to <2 x float>
  br label %bb.kv

bb.kv:                                            ; preds = %bb.ku, %bb.kt
  %i.dlp = phi <2 x float> [ %i.dlo, %bb.ku ], [ zeroinitializer, %bb.kt ]
  br i1 %i.cse, label %bb.kw, label %bb.kx

bb.kw:                                            ; preds = %bb.kv
  %i.dlq = getelementptr inbounds nuw i8, ptr %i.djy, i64 8
  %i.dlr = load i16, ptr %i.dlq, align 2, !tbaa !24
  %i.dls = getelementptr inbounds nuw i8, ptr %i.dka, i64 8
  %i.dlt = load i16, ptr %i.dls, align 2, !tbaa !24
  %i.dlu = zext i16 %i.dlr to i32
  %i.dlv = zext i16 %i.dlt to i32
  %i.dlw = insertelement <2 x i32> poison, i32 %i.dlu, i64 0
  %i.dlx = insertelement <2 x i32> %i.dlw, i32 %i.dlv, i64 1
  %i.dly = shl nuw <2 x i32> %i.dlx, splat (i32 16)
  %i.dlz = bitcast <2 x i32> %i.dly to <2 x float>
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %bb.kv
  %i.dma = phi <2 x float> [ %i.dlz, %bb.kw ], [ zeroinitializer, %bb.kv ] ; 2 uses
  br i1 %i.csg, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %bb.kx
  %i.dmb = getelementptr inbounds nuw i8, ptr %i.djy, i64 10
  %i.dmc = load i16, ptr %i.dmb, align 2, !tbaa !24
  %i.dmd = getelementptr inbounds nuw i8, ptr %i.dka, i64 10
  %i.dme = load i16, ptr %i.dmd, align 2, !tbaa !24
  %i.dmf = zext i16 %i.dmc to i32
  %i.dmg = zext i16 %i.dme to i32
  %i.dmh = insertelement <2 x i32> poison, i32 %i.dmf, i64 0
  %i.dmi = insertelement <2 x i32> %i.dmh, i32 %i.dmg, i64 1
  %i.dmj = shl nuw <2 x i32> %i.dmi, splat (i32 16)
  %i.dmk = bitcast <2 x i32> %i.dmj to <2 x float>
  %i.dml = fadd fast <2 x float> %i.dkt, %i.dmk
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %bb.kx
  %i.dmm = phi <2 x float> [ %i.dml, %bb.ky ], [ %i.dkt, %bb.kx ]
  %i.dmn = fadd fast <2 x float> %i.dma, %i.dki
  br label %bb.la

bb.la:                                            ; preds = %bb.ko, %bb.kz
  %i.dmo = phi <2 x float> [ %i.dmn, %bb.kz ], [ zeroinitializer, %bb.ko ]
  %i.dmp = phi <2 x float> [ %i.dle, %bb.kz ], [ zeroinitializer, %bb.ko ] ; 3 uses
  %i.dmq = phi <2 x float> [ %i.dma, %bb.kz ], [ zeroinitializer, %bb.ko ] ; 2 uses
  %i.dmr = phi <2 x float> [ %i.dlp, %bb.kz ], [ zeroinitializer, %bb.ko ] ; 3 uses
  %i.dms = phi <2 x float> [ %i.dkt, %bb.kz ], [ zeroinitializer, %bb.ko ] ; 2 uses
  %i.dmt = phi <2 x float> [ %i.dmm, %bb.kz ], [ zeroinitializer, %bb.ko ]
  %.idx1233 = shl nuw nsw i64 %indvars.iv1126, 3
  %i.dmu = getelementptr inbounds nuw i8, ptr %i.crl, i64 %.idx1233 ; 7 uses
  %i.dmv = getelementptr inbounds nuw [4 x i8], ptr %i.dmu, i64 %i.cqo ; 2 uses
  %i.dmw = getelementptr inbounds nuw [4 x i8], ptr %i.dmu, i64 %i.cqm ; 2 uses
  %i.dmx = getelementptr inbounds nuw [4 x i8], ptr %i.dmu, i64 %i.cqk ; 2 uses
  %i.dmy = getelementptr inbounds nuw [4 x i8], ptr %i.dmu, i64 %i.cqi ; 2 uses
  %i.dmz = getelementptr inbounds nuw [4 x i8], ptr %i.dmu, i64 %i.cqg ; 2 uses
  %i.dna = fmul fast <2 x float> %i.dmr, splat (float 2.500000e+00)
  %i.dnb = fsub fast <2 x float> %i.dmt, %i.dna
  %i.dnc = fmul fast <2 x float> %i.dmp, splat (float 5.000000e-01)
  %i.dnd = fsub fast <2 x float> %i.dmq, %i.dnc   ; 2 uses
  %i.dne = fmul fast <2 x float> %i.dmr, splat (float f0x3FB504F3)
  %i.dnf = fmul fast <2 x float> %i.dms, splat (float f0x3F3504F3)
  %i.dng = fsub fast <2 x float> %i.dne, %i.dnf   ; 2 uses
  %i.dnh = fsub fast <2 x float> %i.dnd, %i.dng
  %i.dni = fadd fast <2 x float> %i.dnd, %i.dng
  %i.dnj = fmul fast <2 x float> %i.dmp, splat (float 2.000000e+00)
  %i.dnk = fsub fast <2 x float> %i.dmq, %i.dnj   ; 2 uses
  %i.dnl = fmul fast <2 x float> %i.dms, splat (float f0x3FB504F3)
  %i.dnm = fmul fast <2 x float> %i.dmr, splat (float f0x3F3504F3)
  %i.dnn = fsub fast <2 x float> %i.dnl, %i.dnm   ; 2 uses
  %i.dno = fadd fast <2 x float> %i.dnk, %i.dnn
  %i.dnp = fsub fast <2 x float> %i.dnk, %i.dnn
  %i.dnq = fmul fast <2 x float> %i.dmp, splat (float 2.500000e+00)
  %i.dnr = fsub fast <2 x float> %i.dmo, %i.dnq
  %i.dns = fmul fast <2 x float> %i.dci, splat (float -2.500000e+00)
  %i.dnt = fadd fast <2 x float> %i.cvg, %i.dns
  %i.dnu = fadd fast <2 x float> %i.djk, %i.dnt
  %i.dnv = fmul fast <2 x float> %i.cyu, splat (float f0x3FB504F3)
  %i.dnw = fmul fast <2 x float> %i.dfw, splat (float f0x3F3504F3)
  %i.dnx = fsub fast <2 x float> %i.dnv, %i.dnw   ; 2 uses
  %i.dny = fmul fast <2 x float> %i.dci, splat (float 2.000000e+00)
  %i.dnz = fsub fast <2 x float> %i.djk, %i.dny   ; 2 uses
  %i.doa = fsub fast <2 x float> %i.dnz, %i.dnx
  %i.dob = fadd fast <2 x float> %i.dnz, %i.dnx
  %i.doc = fmul fast <2 x float> %i.dci, splat (float 5.000000e-01)
  %i.dod = fsub fast <2 x float> %i.djk, %i.doc   ; 2 uses
  %i.doe = fmul fast <2 x float> %i.dfw, splat (float f0x3FB504F3)
  %i.dof = fmul fast <2 x float> %i.cyu, splat (float f0x3F3504F3)
  %i.dog = fsub fast <2 x float> %i.doe, %i.dof   ; 2 uses
  %i.doh = fadd fast <2 x float> %i.dod, %i.dog
  %i.doi = fsub fast <2 x float> %i.dod, %i.dog
  store <2 x float> %i.dnu, ptr %i.dmu, align 4, !tbaa !22
  store <2 x float> %i.doa, ptr %i.dmz, align 4, !tbaa !22
  store <2 x float> %i.dob, ptr %i.dmy, align 4, !tbaa !22
  store <2 x float> %i.doh, ptr %i.dmx, align 4, !tbaa !22
  store <2 x float> %i.doi, ptr %i.dmw, align 4, !tbaa !22
  %i.doj = fmul fast <2 x float> %i.dfw, splat (float -2.500000e+00)
  %i.dok = fadd fast <2 x float> %i.doj, %i.cyu
  %i.dol = fadd fast <2 x float> %i.dok, %i.dnr
  store <2 x float> %i.dol, ptr %i.dmv, align 4, !tbaa !22
  %i.dom = getelementptr inbounds nuw [4 x i8], ptr %i.dmu, i64 %i.cqq ; 2 uses
  %i.don = getelementptr inbounds nuw [4 x i8], ptr %i.dmz, i64 %i.cqq ; 2 uses
  %i.doo = getelementptr inbounds nuw [4 x i8], ptr %i.dmy, i64 %i.cqq ; 2 uses
  %i.dop = getelementptr inbounds nuw [4 x i8], ptr %i.dmx, i64 %i.cqq ; 2 uses
  %i.doq = getelementptr inbounds nuw [4 x i8], ptr %i.dmw, i64 %i.cqq ; 2 uses
  %i.dor = getelementptr inbounds nuw [4 x i8], ptr %i.dmv, i64 %i.cqq ; 2 uses
  %i.dos = fmul fast <2 x float> %i.dcm, splat (float -2.500000e+00)
  %i.dot = fadd fast <2 x float> %i.cvk, %i.dos
  %i.dou = fadd fast <2 x float> %i.djo, %i.dot
  %i.dov = fmul fast <2 x float> %i.cyy, splat (float f0x3FB504F3)
  %i.dow = fmul fast <2 x float> %i.dga, splat (float f0x3F3504F3)
  %i.dox = fsub fast <2 x float> %i.dov, %i.dow   ; 2 uses
  %i.doy = fmul fast <2 x float> %i.dcm, splat (float 2.000000e+00)
  %i.doz = fsub fast <2 x float> %i.djo, %i.doy   ; 2 uses
  %i.dpa = fsub fast <2 x float> %i.doz, %i.dox
  %i.dpb = fadd fast <2 x float> %i.doz, %i.dox
  %i.dpc = fmul fast <2 x float> %i.dcm, splat (float 5.000000e-01)
  %i.dpd = fsub fast <2 x float> %i.djo, %i.dpc   ; 2 uses
  %i.dpe = fmul fast <2 x float> %i.dga, splat (float f0x3FB504F3)
  %i.dpf = fmul fast <2 x float> %i.cyy, splat (float f0x3F3504F3)
  %i.dpg = fsub fast <2 x float> %i.dpe, %i.dpf   ; 2 uses
  %i.dph = fadd fast <2 x float> %i.dpd, %i.dpg
  %i.dpi = fsub fast <2 x float> %i.dpd, %i.dpg
  store <2 x float> %i.dou, ptr %i.dom, align 4, !tbaa !22
  store <2 x float> %i.dpa, ptr %i.don, align 4, !tbaa !22
  store <2 x float> %i.dpb, ptr %i.doo, align 4, !tbaa !22
  store <2 x float> %i.dph, ptr %i.dop, align 4, !tbaa !22
  store <2 x float> %i.dpi, ptr %i.doq, align 4, !tbaa !22
  %i.dpj = fmul fast <2 x float> %i.dga, splat (float -2.500000e+00)
  %i.dpk = fadd fast <2 x float> %i.dpj, %i.cyy
  %i.dpl = fadd fast <2 x float> %i.dpk, %i.dnp
  store <2 x float> %i.dpl, ptr %i.dor, align 4, !tbaa !22
  %i.dpm = getelementptr inbounds nuw [4 x i8], ptr %i.dom, i64 %i.cqq ; 2 uses
  %i.dpn = getelementptr inbounds nuw [4 x i8], ptr %i.don, i64 %i.cqq ; 2 uses
  %i.dpo = getelementptr inbounds nuw [4 x i8], ptr %i.doo, i64 %i.cqq ; 2 uses
  %i.dpp = getelementptr inbounds nuw [4 x i8], ptr %i.dop, i64 %i.cqq ; 2 uses
  %i.dpq = getelementptr inbounds nuw [4 x i8], ptr %i.doq, i64 %i.cqq ; 2 uses
  %i.dpr = getelementptr inbounds nuw [4 x i8], ptr %i.dor, i64 %i.cqq ; 2 uses
  %i.dps = fmul fast <2 x float> %i.dcn, splat (float -2.500000e+00)
  %i.dpt = fadd fast <2 x float> %i.cvl, %i.dps
  %i.dpu = fadd fast <2 x float> %i.djp, %i.dpt
  %i.dpv = fmul fast <2 x float> %i.cyz, splat (float f0x3FB504F3)
  %i.dpw = fmul fast <2 x float> %i.dgb, splat (float f0x3F3504F3)
  %i.dpx = fsub fast <2 x float> %i.dpv, %i.dpw   ; 2 uses
  %i.dpy = fmul fast <2 x float> %i.dcn, splat (float 2.000000e+00)
  %i.dpz = fsub fast <2 x float> %i.djp, %i.dpy   ; 2 uses
  %i.dqa = fsub fast <2 x float> %i.dpz, %i.dpx
  %i.dqb = fadd fast <2 x float> %i.dpz, %i.dpx
  %i.dqc = fmul fast <2 x float> %i.dcn, splat (float 5.000000e-01)
  %i.dqd = fsub fast <2 x float> %i.djp, %i.dqc   ; 2 uses
  %i.dqe = fmul fast <2 x float> %i.dgb, splat (float f0x3FB504F3)
  %i.dqf = fmul fast <2 x float> %i.cyz, splat (float f0x3F3504F3)
  %i.dqg = fsub fast <2 x float> %i.dqe, %i.dqf   ; 2 uses
  %i.dqh = fadd fast <2 x float> %i.dqd, %i.dqg
  %i.dqi = fsub fast <2 x float> %i.dqd, %i.dqg
  store <2 x float> %i.dpu, ptr %i.dpm, align 4, !tbaa !22
  store <2 x float> %i.dqa, ptr %i.dpn, align 4, !tbaa !22
  store <2 x float> %i.dqb, ptr %i.dpo, align 4, !tbaa !22
  store <2 x float> %i.dqh, ptr %i.dpp, align 4, !tbaa !22
  store <2 x float> %i.dqi, ptr %i.dpq, align 4, !tbaa !22
  %i.dqj = fmul fast <2 x float> %i.dgb, splat (float -2.500000e+00)
  %i.dqk = fadd fast <2 x float> %i.dqj, %i.cyz
  %i.dql = fadd fast <2 x float> %i.dqk, %i.dno
  store <2 x float> %i.dql, ptr %i.dpr, align 4, !tbaa !22
  %i.dqm = getelementptr inbounds nuw [4 x i8], ptr %i.dpm, i64 %i.cqq ; 2 uses
  %i.dqn = getelementptr inbounds nuw [4 x i8], ptr %i.dpn, i64 %i.cqq ; 2 uses
  %i.dqo = getelementptr inbounds nuw [4 x i8], ptr %i.dpo, i64 %i.cqq ; 2 uses
  %i.dqp = getelementptr inbounds nuw [4 x i8], ptr %i.dpp, i64 %i.cqq ; 2 uses
  %i.dqq = getelementptr inbounds nuw [4 x i8], ptr %i.dpq, i64 %i.cqq ; 2 uses
  %i.dqr = getelementptr inbounds nuw [4 x i8], ptr %i.dpr, i64 %i.cqq ; 2 uses
  %i.dqs = fmul fast <2 x float> %i.dcs, splat (float -2.500000e+00)
  %i.dqt = fadd fast <2 x float> %i.cvq, %i.dqs
  %i.dqu = fadd fast <2 x float> %i.dju, %i.dqt
  %i.dqv = fmul fast <2 x float> %i.cze, splat (float f0x3FB504F3)
  %i.dqw = fmul fast <2 x float> %i.dgg, splat (float f0x3F3504F3)
  %i.dqx = fsub fast <2 x float> %i.dqv, %i.dqw   ; 2 uses
  %i.dqy = fmul fast <2 x float> %i.dcs, splat (float 2.000000e+00)
  %i.dqz = fsub fast <2 x float> %i.dju, %i.dqy   ; 2 uses
  %i.dra = fsub fast <2 x float> %i.dqz, %i.dqx
  %i.drb = fadd fast <2 x float> %i.dqz, %i.dqx
  %i.drc = fmul fast <2 x float> %i.dcs, splat (float 5.000000e-01)
  %i.drd = fsub fast <2 x float> %i.dju, %i.drc   ; 2 uses
  %i.dre = fmul fast <2 x float> %i.dgg, splat (float f0x3FB504F3)
  %i.drf = fmul fast <2 x float> %i.cze, splat (float f0x3F3504F3)
  %i.drg = fsub fast <2 x float> %i.dre, %i.drf   ; 2 uses
  %i.drh = fadd fast <2 x float> %i.drd, %i.drg
  %i.dri = fsub fast <2 x float> %i.drd, %i.drg
  store <2 x float> %i.dqu, ptr %i.dqm, align 4, !tbaa !22
  store <2 x float> %i.dra, ptr %i.dqn, align 4, !tbaa !22
  store <2 x float> %i.drb, ptr %i.dqo, align 4, !tbaa !22
  store <2 x float> %i.drh, ptr %i.dqp, align 4, !tbaa !22
  store <2 x float> %i.dri, ptr %i.dqq, align 4, !tbaa !22
  %i.drj = fmul fast <2 x float> %i.dgg, splat (float -2.500000e+00)
  %i.drk = fadd fast <2 x float> %i.drj, %i.cze
  %i.drl = fadd fast <2 x float> %i.drk, %i.dni
  store <2 x float> %i.drl, ptr %i.dqr, align 4, !tbaa !22
  %i.drm = getelementptr inbounds nuw [4 x i8], ptr %i.dqm, i64 %i.cqq ; 2 uses
  %i.drn = getelementptr inbounds nuw [4 x i8], ptr %i.dqn, i64 %i.cqq ; 2 uses
  %i.dro = getelementptr inbounds nuw [4 x i8], ptr %i.dqo, i64 %i.cqq ; 2 uses
  %i.drp = getelementptr inbounds nuw [4 x i8], ptr %i.dqp, i64 %i.cqq ; 2 uses
  %i.drq = getelementptr inbounds nuw [4 x i8], ptr %i.dqq, i64 %i.cqq ; 2 uses
  %i.drr = getelementptr inbounds nuw [4 x i8], ptr %i.dqr, i64 %i.cqq ; 2 uses
  %i.drs = fmul fast <2 x float> %i.dct, splat (float -2.500000e+00)
  %i.drt = fadd fast <2 x float> %i.cvr, %i.drs
  %i.dru = fadd fast <2 x float> %i.djv, %i.drt
  %i.drv = fmul fast <2 x float> %i.czf, splat (float f0x3FB504F3)
  %i.drw = fmul fast <2 x float> %i.dgh, splat (float f0x3F3504F3)
  %i.drx = fsub fast <2 x float> %i.drv, %i.drw   ; 2 uses
  %i.dry = fmul fast <2 x float> %i.dct, splat (float 2.000000e+00)
  %i.drz = fsub fast <2 x float> %i.djv, %i.dry   ; 2 uses
  %i.dsa = fsub fast <2 x float> %i.drz, %i.drx
  %i.dsb = fadd fast <2 x float> %i.drz, %i.drx
  %i.dsc = fmul fast <2 x float> %i.dct, splat (float 5.000000e-01)
  %i.dsd = fsub fast <2 x float> %i.djv, %i.dsc   ; 2 uses
  %i.dse = fmul fast <2 x float> %i.dgh, splat (float f0x3FB504F3)
  %i.dsf = fmul fast <2 x float> %i.czf, splat (float f0x3F3504F3)
  %i.dsg = fsub fast <2 x float> %i.dse, %i.dsf   ; 2 uses
  %i.dsh = fadd fast <2 x float> %i.dsd, %i.dsg
  %i.dsi = fsub fast <2 x float> %i.dsd, %i.dsg
  store <2 x float> %i.dru, ptr %i.drm, align 4, !tbaa !22
  store <2 x float> %i.dsa, ptr %i.drn, align 4, !tbaa !22
  store <2 x float> %i.dsb, ptr %i.dro, align 4, !tbaa !22
  store <2 x float> %i.dsh, ptr %i.drp, align 4, !tbaa !22
  store <2 x float> %i.dsi, ptr %i.drq, align 4, !tbaa !22
  %i.dsj = fmul fast <2 x float> %i.dgh, splat (float -2.500000e+00)
  %i.dsk = fadd fast <2 x float> %i.dsj, %i.czf
  %i.dsl = fadd fast <2 x float> %i.dsk, %i.dnh
  store <2 x float> %i.dsl, ptr %i.drr, align 4, !tbaa !22
  %i.dsm = getelementptr inbounds nuw [4 x i8], ptr %i.drm, i64 %i.cqq
  %i.dsn = getelementptr inbounds nuw [4 x i8], ptr %i.drn, i64 %i.cqq
  %i.dso = getelementptr inbounds nuw [4 x i8], ptr %i.dro, i64 %i.cqq
  %i.dsp = getelementptr inbounds nuw [4 x i8], ptr %i.drp, i64 %i.cqq
  %i.dsq = getelementptr inbounds nuw [4 x i8], ptr %i.drq, i64 %i.cqq
  %i.dsr = getelementptr inbounds nuw [4 x i8], ptr %i.drr, i64 %i.cqq
  %i.dss = fmul fast <2 x float> %i.dcv, splat (float -2.500000e+00)
  %i.dst = fadd fast <2 x float> %i.cvt, %i.dss
  %i.dsu = fadd fast <2 x float> %i.djx, %i.dst
  %i.dsv = fmul fast <2 x float> %i.czh, splat (float f0x3FB504F3)
  %i.dsw = fmul fast <2 x float> %i.dgj, splat (float f0x3F3504F3)
  %i.dsx = fsub fast <2 x float> %i.dsv, %i.dsw   ; 2 uses
  %i.dsy = fmul fast <2 x float> %i.dcv, splat (float 2.000000e+00)
  %i.dsz = fsub fast <2 x float> %i.djx, %i.dsy   ; 2 uses
  %i.dta = fsub fast <2 x float> %i.dsz, %i.dsx
  %i.dtb = fadd fast <2 x float> %i.dsz, %i.dsx
  %i.dtc = fmul fast <2 x float> %i.dcv, splat (float 5.000000e-01)
  %i.dtd = fsub fast <2 x float> %i.djx, %i.dtc   ; 2 uses
  %i.dte = fmul fast <2 x float> %i.dgj, splat (float f0x3FB504F3)
  %i.dtf = fmul fast <2 x float> %i.czh, splat (float f0x3F3504F3)
  %i.dtg = fsub fast <2 x float> %i.dte, %i.dtf   ; 2 uses
  %i.dth = fadd fast <2 x float> %i.dtd, %i.dtg
  %i.dti = fsub fast <2 x float> %i.dtd, %i.dtg
  store <2 x float> %i.dsu, ptr %i.dsm, align 4, !tbaa !22
  store <2 x float> %i.dta, ptr %i.dsn, align 4, !tbaa !22
  store <2 x float> %i.dtb, ptr %i.dso, align 4, !tbaa !22
  store <2 x float> %i.dth, ptr %i.dsp, align 4, !tbaa !22
  store <2 x float> %i.dti, ptr %i.dsq, align 4, !tbaa !22
  %i.dtj = fmul fast <2 x float> %i.dgj, splat (float -2.500000e+00)
  %i.dtk = fadd fast <2 x float> %i.dtj, %i.czh
  %i.dtl = fadd fast <2 x float> %i.dtk, %i.dnb
  store <2 x float> %i.dtl, ptr %i.dsr, align 4, !tbaa !22
  %indvars.iv.next1127 = add nuw nsw i64 %indvars.iv1126, 1 ; 2 uses
  %exitcond1130.not = icmp eq i64 %indvars.iv.next1127, %wide.trip.count1129
  br i1 %exitcond1130.not, label %._crit_edge.us1064, label %_ZN4ncnn3MatD2Ev.exit698.us, !llvm.loop !824

._crit_edge.us1064:                               ; preds = %bb.la
  %indvars.iv.next1132 = add nuw nsw i64 %indvars.iv1131, 1 ; 2 uses
  %exitcond1135.not = icmp eq i64 %indvars.iv.next1132, %wide.trip.count1134
  br i1 %exitcond1135.not, label %._crit_edge1059, label %_ZN4ncnn3MatD2Ev.exit698.lr.ph.us, !llvm.loop !825

._crit_edge1059:                                  ; preds = %._crit_edge.us1064, %.lr.ph1058, %._crit_edge1038
  %i.dtm = shl nsw i32 %i.cpy, 1
  %i.dtn = add nsw i32 %i.dtm, %i.cpw             ; 2 uses
  %i.dto = icmp slt i32 %i.dtn, %5
  br i1 %i.dto, label %.lr.ph1081, label %._crit_edge1082

.lr.ph1081:                                       ; preds = %._crit_edge1059
  %i.dtp = load i32, ptr %i.b, align 4, !tbaa !30 ; 9 uses
  %i.dtq = icmp sgt i32 %i.dtp, 0
  %i.dtr = load i32, ptr %i.j, align 4            ; 2 uses
  %i.dts = load i32, ptr %i.f, align 4
  %i.dtt = sext i32 %i.dts to i64                 ; 5 uses
  %factor.op.mul1083 = mul i32 %i.dtp, 36
  %i.dtu = sext i32 %i.dtp to i64
  %i.dtv = shl nsw i32 %i.dtp, 1
  %i.dtw = sext i32 %i.dtv to i64
  %i.dtx = mul nsw i32 %i.dtp, 3
  %i.dty = sext i32 %i.dtx to i64
  %i.dtz = shl nsw i32 %i.dtp, 2
  %i.dua = sext i32 %i.dtz to i64
  %i.dub = mul nsw i32 %i.dtp, 5
  %i.duc = sext i32 %i.dub to i64
  %i.dud = mul nsw i32 %i.dtp, 6
  %i.due = sext i32 %i.dud to i64                 ; 30 uses
  br i1 %i.dtq, label %.lr.ph1081.split.us, label %._crit_edge1082

.lr.ph1081.split.us:                              ; preds = %.lr.ph1081
  %i.duf = load i32, ptr %i.g, align 4            ; 2 uses
  %i.dug = load i32, ptr %i.c, align 4
  %i.duh = load i32, ptr %i.a, align 4
  %i.dui = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.duj = load i32, ptr %i.m, align 4, !tbaa !31, !noalias !833
  %i.duk = load ptr, ptr %0, align 8, !tbaa !15, !noalias !833
  %i.dul = load i64, ptr %i.s, align 8, !tbaa !16, !noalias !833
  %i.dum = load i64, ptr %i.dui, align 8, !tbaa !17, !noalias !833 ; 2 uses
  %factor.op.mul1086 = mul i64 %i.dul, %i.dum
  %i.dun = sext i32 %i.duj to i64
  %factor.op.mul1077.us = mul i64 %i.dum, %i.dun
  %i.duo = load ptr, ptr %1, align 8, !tbaa !15
  %i.dup = sext i32 %i.duf to i64                 ; 5 uses
  %i.duq = sext i32 %i.dtn to i64
  %i.dur = sext i32 %i.dug to i64
  %wide.trip.count1152 = sext i32 %5 to i64
  %wide.trip.count1147 = zext nneg i32 %i.dtp to i64
  %invariant.op1248 = add nsw i64 %i.dup, -1
  %invariant.op1249 = add nsw i64 %i.dup, -2
  %invariant.op1250 = add nsw i64 %i.dup, -3
  %invariant.op1251 = add nsw i64 %i.dup, -4
  %invariant.op1252 = add nsw i64 %i.dup, -5
  br label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us

_ZN4ncnn3MatD2Ev.exit.lr.ph.us:                   ; preds = %._crit_edge.us1085, %.lr.ph1081.split.us
  %indvars.iv1149 = phi i64 [ %indvars.iv.next1150, %._crit_edge.us1085 ], [ %i.duq, %.lr.ph1081.split.us ] ; 3 uses
  %i.dus = add nsw i64 %indvars.iv1149, %i.dur
  %.reass1087 = mul i64 %factor.op.mul1086, %i.dus
  %i.dut = getelementptr inbounds nuw i8, ptr %i.duk, i64 %.reass1087
  %i.duu = trunc nsw i64 %indvars.iv1149 to i32
  %.reass1084.us = mul i32 %factor.op.mul1083, %i.duu
  %i.duv = sext i32 %.reass1084.us to i64
  %i.duw = getelementptr inbounds [4 x i8], ptr %i.duo, i64 %i.duv
  br label %_ZN4ncnn3MatD2Ev.exit.us

_ZN4ncnn3MatD2Ev.exit.us:                         ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, %bb.no
  %indvars.iv1144 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %indvars.iv.next1145, %bb.no ] ; 3 uses
  %i.dux = trunc i64 %indvars.iv1144 to i32
  %i.duy = add i32 %i.duh, %i.dux                 ; 2 uses
  %i.duz = sdiv i32 %i.duy, %i.dtr
  %i.dva = srem i32 %i.duy, %i.dtr
  %i.dvb = shl nsw i32 %i.duz, 2                  ; 2 uses
  %i.dvc = sext i32 %i.dvb to i64                 ; 6 uses
  %.reass1078.us = mul i64 %factor.op.mul1077.us, %i.dvc
  %i.dvd = getelementptr inbounds nuw i8, ptr %i.dut, i64 %.reass1078.us
  %i.dve = shl nsw i32 %i.dva, 2                  ; 6 uses
  %i.dvf = sext i32 %i.dve to i64
  %i.dvg = getelementptr inbounds [2 x i8], ptr %i.dvd, i64 %i.dvf ; 7 uses
  %i.dvh = or disjoint i32 %i.dve, 1
  %i.dvi = load i32, ptr %i.f, align 4            ; 5 uses
  %i.dvj = icmp slt i32 %i.dvh, %i.dvi            ; 6 uses
  %i.dvk = or disjoint i32 %i.dve, 2
  %i.dvl = icmp slt i32 %i.dvk, %i.dvi            ; 6 uses
  %i.dvm = or disjoint i32 %i.dve, 3
  %i.dvn = icmp slt i32 %i.dvm, %i.dvi            ; 6 uses
  %i.dvo = add nsw i32 %i.dve, 4
  %i.dvp = icmp slt i32 %i.dvo, %i.dvi            ; 6 uses
  %i.dvq = add nsw i32 %i.dve, 5
  %i.dvr = icmp slt i32 %i.dvq, %i.dvi            ; 6 uses
  %i.dvs = icmp slt i32 %i.dvb, %i.duf
  br i1 %i.dvs, label %bb.lb, label %bb.ll

bb.lb:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us
  %i.dvt = load i16, ptr %i.dvg, align 2, !tbaa !24
  %i.dvu = zext i16 %i.dvt to i32
  %i.dvv = shl nuw i32 %i.dvu, 16
  %i.dvw = bitcast i32 %i.dvv to float            ; 2 uses
  br i1 %i.dvj, label %bb.lc, label %bb.ld

bb.lc:                                            ; preds = %bb.lb
  %i.dvx = getelementptr inbounds nuw i8, ptr %i.dvg, i64 2
  %i.dvy = load i16, ptr %i.dvx, align 2, !tbaa !24
  %i.dvz = zext i16 %i.dvy to i32
  %i.dwa = shl nuw i32 %i.dvz, 16
  %i.dwb = bitcast i32 %i.dwa to float
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %bb.lb
  %.0625.us = phi nsz float [ %i.dwb, %bb.lc ], [ 0.000000e+00, %bb.lb ] ; 4 uses
  br i1 %i.dvl, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %bb.ld
  %i.dwc = getelementptr inbounds nuw i8, ptr %i.dvg, i64 4
  %i.dwd = load i16, ptr %i.dwc, align 2, !tbaa !24
  %i.dwe = zext i16 %i.dwd to i32
  %i.dwf = shl nuw i32 %i.dwe, 16
  %i.dwg = bitcast i32 %i.dwf to float
  br label %bb.lf

bb.lf:                                            ; preds = %bb.le, %bb.ld
  %.0623.us = phi nsz float [ %i.dwg, %bb.le ], [ 0.000000e+00, %bb.ld ] ; 2 uses
  br i1 %i.dvn, label %bb.lg, label %bb.lh

bb.lg:                                            ; preds = %bb.lf
  %i.dwh = getelementptr inbounds nuw i8, ptr %i.dvg, i64 6
  %i.dwi = load i16, ptr %i.dwh, align 2, !tbaa !24
  %i.dwj = zext i16 %i.dwi to i32
  %i.dwk = shl nuw i32 %i.dwj, 16
  %i.dwl = bitcast i32 %i.dwk to float
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %.0621.us = phi nsz float [ %i.dwl, %bb.lg ], [ 0.000000e+00, %bb.lf ] ; 2 uses
  br i1 %i.dvp, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %bb.lh
  %i.dwm = getelementptr inbounds nuw i8, ptr %i.dvg, i64 8
  %i.dwn = load i16, ptr %i.dwm, align 2, !tbaa !24
  %i.dwo = zext i16 %i.dwn to i32
  %i.dwp = shl nuw i32 %i.dwo, 16
  %i.dwq = bitcast i32 %i.dwp to float
  br label %bb.lj

bb.lj:                                            ; preds = %bb.li, %bb.lh
  %.0619.us = phi nsz float [ %i.dwq, %bb.li ], [ 0.000000e+00, %bb.lh ] ; 2 uses
  br i1 %i.dvr, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %bb.lj
  %i.dwr = getelementptr inbounds nuw i8, ptr %i.dvg, i64 10
  %i.dws = load i16, ptr %i.dwr, align 2, !tbaa !24
  %i.dwt = zext i16 %i.dws to i32
  %i.dwu = shl nuw i32 %i.dwt, 16
  %i.dwv = bitcast i32 %i.dwu to float
  %i.dww = fadd fast float %.0625.us, %i.dwv
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %bb.lj, %_ZN4ncnn3MatD2Ev.exit.us
  %.0627.us = phi nsz float [ %i.dvw, %bb.lk ], [ %i.dvw, %bb.lj ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ]
  %.1626.us = phi nsz float [ %.0625.us, %bb.lk ], [ %.0625.us, %bb.lj ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 2 uses
  %.1624.us = phi nsz float [ %.0623.us, %bb.lk ], [ %.0623.us, %bb.lj ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 3 uses
  %.1622.us = phi nsz float [ %.0621.us, %bb.lk ], [ %.0621.us, %bb.lj ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 3 uses
  %.1620.us = phi nsz float [ %.0619.us, %bb.lk ], [ %.0619.us, %bb.lj ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 3 uses
  %.0618.us = phi float [ %i.dww, %bb.lk ], [ %.0625.us, %bb.lj ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ]
  %i.dwx = fmul fast float %.1626.us, f0x3FB504F3
  %i.dwy = fmul fast float %.1622.us, f0x3F3504F3
  %i.dwz = fsub fast float %i.dwx, %i.dwy         ; 2 uses
  %i.dxa = fmul fast float %.1624.us, 2.000000e+00
  %i.dxb = fsub fast float %.1620.us, %i.dxa      ; 2 uses
  %i.dxc = fmul fast float %.1622.us, f0x3FB504F3
  %i.dxd = fmul fast float %.1626.us, f0x3F3504F3
  %i.dxe = fsub fast float %i.dxc, %i.dxd         ; 2 uses
  %i.dxf = fmul fast float %.1624.us, 5.000000e-01
  %i.dxg = fsub fast float %.1620.us, %i.dxf      ; 2 uses
  %.neg1005.us = fmul fast float %.1624.us, -2.500000e+00
  %i.dxh = fadd fast float %.0627.us, %.neg1005.us
  %i.dxi = fadd fast float %i.dxh, %.1620.us
  %i.dxj = fsub fast float %i.dxb, %i.dwz
  %i.dxk = fadd fast float %i.dxb, %i.dwz
  %i.dxl = fadd fast float %i.dxg, %i.dxe
  %i.dxm = fsub fast float %i.dxg, %i.dxe
  %i.dxn = fmul fast float %.1622.us, 2.500000e+00
  %i.dxo = fsub fast float %.0618.us, %i.dxn
  %i.dxp = getelementptr inbounds [2 x i8], ptr %i.dvg, i64 %i.dtt ; 7 uses
  %i.dxq = icmp sgt i64 %invariant.op1248, %i.dvc
  br i1 %i.dxq, label %bb.lm, label %bb.lw

bb.lm:                                            ; preds = %bb.ll
  %i.dxr = load i16, ptr %i.dxp, align 2, !tbaa !24
  %i.dxs = zext i16 %i.dxr to i32
  %i.dxt = shl nuw i32 %i.dxs, 16
  %i.dxu = bitcast i32 %i.dxt to float            ; 2 uses
  br i1 %i.dvj, label %bb.ln, label %bb.lo

end_hunk_2
begin_hunk_3_@_ZN4ncnnL47conv3x3s1_winograd43_transform_input_tile_bf16sERKNS_3MatERS0_iiiii:bb.a
  br label %bb.mv

bb.mv:                                            ; preds = %bb.mu, %bb.mt
  %.0625.us.4 = phi nsz float [ %i.edt, %bb.mu ], [ 0.000000e+00, %bb.mt ] ; 4 uses
  br i1 %i.dvl, label %bb.mw, label %bb.mx

bb.mw:                                            ; preds = %bb.mv
  %i.edu = getelementptr inbounds nuw i8, ptr %i.edj, i64 4
  %i.edv = load i16, ptr %i.edu, align 2, !tbaa !24
  %i.edw = zext i16 %i.edv to i32
  %i.edx = shl nuw i32 %i.edw, 16
  %i.edy = bitcast i32 %i.edx to float
  br label %bb.mx

bb.mx:                                            ; preds = %bb.mw, %bb.mv
  %.0623.us.4 = phi nsz float [ %i.edy, %bb.mw ], [ 0.000000e+00, %bb.mv ] ; 2 uses
  br i1 %i.dvn, label %bb.my, label %bb.mz

bb.my:                                            ; preds = %bb.mx
  %i.edz = getelementptr inbounds nuw i8, ptr %i.edj, i64 6
  %i.eea = load i16, ptr %i.edz, align 2, !tbaa !24
  %i.eeb = zext i16 %i.eea to i32
  %i.eec = shl nuw i32 %i.eeb, 16
  %i.eed = bitcast i32 %i.eec to float
  br label %bb.mz

bb.mz:                                            ; preds = %bb.my, %bb.mx
  %.0621.us.4 = phi nsz float [ %i.eed, %bb.my ], [ 0.000000e+00, %bb.mx ] ; 2 uses
  br i1 %i.dvp, label %bb.na, label %bb.nb

bb.na:                                            ; preds = %bb.mz
  %i.eee = getelementptr inbounds nuw i8, ptr %i.edj, i64 8
  %i.eef = load i16, ptr %i.eee, align 2, !tbaa !24
  %i.eeg = zext i16 %i.eef to i32
  %i.eeh = shl nuw i32 %i.eeg, 16
  %i.eei = bitcast i32 %i.eeh to float
  br label %bb.nb

bb.nb:                                            ; preds = %bb.na, %bb.mz
  %.0619.us.4 = phi nsz float [ %i.eei, %bb.na ], [ 0.000000e+00, %bb.mz ] ; 2 uses
  br i1 %i.dvr, label %bb.nc, label %bb.nd

bb.nc:                                            ; preds = %bb.nb
  %i.eej = getelementptr inbounds nuw i8, ptr %i.edj, i64 10
  %i.eek = load i16, ptr %i.eej, align 2, !tbaa !24
  %i.eel = zext i16 %i.eek to i32
  %i.eem = shl nuw i32 %i.eel, 16
  %i.een = bitcast i32 %i.eem to float
  %i.eeo = fadd fast float %.0625.us.4, %i.een
  br label %bb.nd

bb.nd:                                            ; preds = %bb.nc, %bb.nb, %bb.ms
  %.0627.us.4 = phi nsz float [ %i.edo, %bb.nc ], [ %i.edo, %bb.nb ], [ 0.000000e+00, %bb.ms ]
  %.1626.us.4 = phi nsz float [ %.0625.us.4, %bb.nc ], [ %.0625.us.4, %bb.nb ], [ 0.000000e+00, %bb.ms ] ; 2 uses
  %.1624.us.4 = phi nsz float [ %.0623.us.4, %bb.nc ], [ %.0623.us.4, %bb.nb ], [ 0.000000e+00, %bb.ms ] ; 3 uses
  %.1622.us.4 = phi nsz float [ %.0621.us.4, %bb.nc ], [ %.0621.us.4, %bb.nb ], [ 0.000000e+00, %bb.ms ] ; 3 uses
  %.1620.us.4 = phi nsz float [ %.0619.us.4, %bb.nc ], [ %.0619.us.4, %bb.nb ], [ 0.000000e+00, %bb.ms ] ; 3 uses
  %.0618.us.4 = phi float [ %i.eeo, %bb.nc ], [ %.0625.us.4, %bb.nb ], [ 0.000000e+00, %bb.ms ]
  %i.eep = fmul fast float %.1626.us.4, f0x3FB504F3
  %i.eeq = fmul fast float %.1622.us.4, f0x3F3504F3
  %i.eer = fsub fast float %i.eep, %i.eeq         ; 2 uses
  %i.ees = fmul fast float %.1624.us.4, 2.000000e+00
  %i.eet = fsub fast float %.1620.us.4, %i.ees    ; 2 uses
  %i.eeu = fmul fast float %.1622.us.4, f0x3FB504F3
  %i.eev = fmul fast float %.1626.us.4, f0x3F3504F3
  %i.eew = fsub fast float %i.eeu, %i.eev         ; 2 uses
  %i.eex = fmul fast float %.1624.us.4, 5.000000e-01
  %i.eey = fsub fast float %.1620.us.4, %i.eex    ; 2 uses
  %.neg1005.us.4 = fmul fast float %.1624.us.4, -2.500000e+00
  %i.eez = fadd fast float %.0627.us.4, %.neg1005.us.4
  %i.efa = fadd fast float %i.eez, %.1620.us.4    ; 3 uses
  %i.efb = fsub fast float %i.eet, %i.eer         ; 3 uses
  %i.efc = fadd fast float %i.eet, %i.eer         ; 3 uses
  %i.efd = fadd fast float %i.eey, %i.eew         ; 3 uses
  %i.efe = fsub fast float %i.eey, %i.eew         ; 3 uses
  %i.eff = fmul fast float %.1622.us.4, 2.500000e+00
  %i.efg = fsub fast float %.0618.us.4, %i.eff    ; 3 uses
  %i.efh = getelementptr inbounds [2 x i8], ptr %i.edj, i64 %i.dtt ; 6 uses
  %i.efi = icmp sgt i64 %invariant.op1252, %i.dvc
  br i1 %i.efi, label %bb.ne, label %bb.no

bb.ne:                                            ; preds = %bb.nd
  %i.efj = load i16, ptr %i.efh, align 2, !tbaa !24
  %i.efk = zext i16 %i.efj to i32
  %i.efl = shl nuw i32 %i.efk, 16
  %i.efm = bitcast i32 %i.efl to float            ; 2 uses
  br i1 %i.dvj, label %bb.nf, label %bb.ng

bb.nf:                                            ; preds = %bb.ne
  %i.efn = getelementptr inbounds nuw i8, ptr %i.efh, i64 2
  %i.efo = load i16, ptr %i.efn, align 2, !tbaa !24
  %i.efp = zext i16 %i.efo to i32
  %i.efq = shl nuw i32 %i.efp, 16
  %i.efr = bitcast i32 %i.efq to float
  br label %bb.ng

bb.ng:                                            ; preds = %bb.nf, %bb.ne
  %.0625.us.5 = phi nsz float [ %i.efr, %bb.nf ], [ 0.000000e+00, %bb.ne ] ; 4 uses
  br i1 %i.dvl, label %bb.nh, label %bb.ni

bb.nh:                                            ; preds = %bb.ng
  %i.efs = getelementptr inbounds nuw i8, ptr %i.efh, i64 4
  %i.eft = load i16, ptr %i.efs, align 2, !tbaa !24
  %i.efu = zext i16 %i.eft to i32
  %i.efv = shl nuw i32 %i.efu, 16
  %i.efw = bitcast i32 %i.efv to float
  br label %bb.ni

bb.ni:                                            ; preds = %bb.nh, %bb.ng
  %.0623.us.5 = phi nsz float [ %i.efw, %bb.nh ], [ 0.000000e+00, %bb.ng ] ; 2 uses
  br i1 %i.dvn, label %bb.nj, label %bb.nk

bb.nj:                                            ; preds = %bb.ni
  %i.efx = getelementptr inbounds nuw i8, ptr %i.efh, i64 6
  %i.efy = load i16, ptr %i.efx, align 2, !tbaa !24
  %i.efz = zext i16 %i.efy to i32
  %i.ega = shl nuw i32 %i.efz, 16
  %i.egb = bitcast i32 %i.ega to float
  br label %bb.nk

bb.nk:                                            ; preds = %bb.nj, %bb.ni
  %.0621.us.5 = phi nsz float [ %i.egb, %bb.nj ], [ 0.000000e+00, %bb.ni ] ; 2 uses
  br i1 %i.dvp, label %bb.nl, label %bb.nm

bb.nl:                                            ; preds = %bb.nk
  %i.egc = getelementptr inbounds nuw i8, ptr %i.efh, i64 8
  %i.egd = load i16, ptr %i.egc, align 2, !tbaa !24
  %i.ege = zext i16 %i.egd to i32
  %i.egf = shl nuw i32 %i.ege, 16
  %i.egg = bitcast i32 %i.egf to float
  br label %bb.nm

bb.nm:                                            ; preds = %bb.nl, %bb.nk
  %.0619.us.5 = phi nsz float [ %i.egg, %bb.nl ], [ 0.000000e+00, %bb.nk ] ; 2 uses
  br i1 %i.dvr, label %bb.nn, label %bb.no

bb.nn:                                            ; preds = %bb.nm
  %i.egh = getelementptr inbounds nuw i8, ptr %i.efh, i64 10
  %i.egi = load i16, ptr %i.egh, align 2, !tbaa !24
  %i.egj = zext i16 %i.egi to i32
  %i.egk = shl nuw i32 %i.egj, 16
  %i.egl = bitcast i32 %i.egk to float
  %i.egm = fadd fast float %.0625.us.5, %i.egl
  br label %bb.no

bb.no:                                            ; preds = %bb.nn, %bb.nm, %bb.nd
  %.0627.us.5 = phi nsz float [ %i.efm, %bb.nn ], [ %i.efm, %bb.nm ], [ 0.000000e+00, %bb.nd ]
  %.1626.us.5 = phi nsz float [ %.0625.us.5, %bb.nn ], [ %.0625.us.5, %bb.nm ], [ 0.000000e+00, %bb.nd ] ; 2 uses
  %.1624.us.5 = phi nsz float [ %.0623.us.5, %bb.nn ], [ %.0623.us.5, %bb.nm ], [ 0.000000e+00, %bb.nd ] ; 3 uses
  %.1622.us.5 = phi nsz float [ %.0621.us.5, %bb.nn ], [ %.0621.us.5, %bb.nm ], [ 0.000000e+00, %bb.nd ] ; 3 uses
  %.1620.us.5 = phi nsz float [ %.0619.us.5, %bb.nn ], [ %.0619.us.5, %bb.nm ], [ 0.000000e+00, %bb.nd ] ; 3 uses
  %.0618.us.5 = phi float [ %i.egm, %bb.nn ], [ %.0625.us.5, %bb.nm ], [ 0.000000e+00, %bb.nd ]
  %i.egn = fmul fast float %.1626.us.5, f0x3FB504F3
  %i.ego = fmul fast float %.1622.us.5, f0x3F3504F3
  %i.egp = fsub fast float %i.egn, %i.ego         ; 2 uses
  %i.egq = fmul fast float %.1624.us.5, 2.000000e+00
  %i.egr = fsub fast float %.1620.us.5, %i.egq    ; 2 uses
  %i.egs = fmul fast float %.1622.us.5, f0x3FB504F3
  %i.egt = fmul fast float %.1626.us.5, f0x3F3504F3
  %i.egu = fsub fast float %i.egs, %i.egt         ; 2 uses
  %i.egv = fmul fast float %.1624.us.5, 5.000000e-01
  %i.egw = fsub fast float %.1620.us.5, %i.egv    ; 2 uses
  %.neg1005.us.5 = fmul fast float %.1624.us.5, -2.500000e+00
  %i.egx = fadd fast float %.0627.us.5, %.neg1005.us.5
  %i.egy = fadd fast float %i.egx, %.1620.us.5
  %i.egz = fsub fast float %i.egr, %i.egp
  %i.eha = fadd fast float %i.egr, %i.egp
  %i.ehb = fadd fast float %i.egw, %i.egu
  %i.ehc = fsub fast float %i.egw, %i.egu
  %i.ehd = fmul fast float %.1622.us.5, 2.500000e+00
  %i.ehe = fsub fast float %.0618.us.5, %i.ehd
  %i.ehf = getelementptr inbounds nuw [4 x i8], ptr %i.duw, i64 %indvars.iv1144 ; 7 uses
  %i.ehg = getelementptr inbounds nuw [4 x i8], ptr %i.ehf, i64 %i.dtu ; 2 uses
  %i.ehh = getelementptr inbounds nuw [4 x i8], ptr %i.ehf, i64 %i.dtw ; 2 uses
  %i.ehi = getelementptr inbounds nuw [4 x i8], ptr %i.ehf, i64 %i.dty ; 2 uses
  %i.ehj = getelementptr inbounds nuw [4 x i8], ptr %i.ehf, i64 %i.dua ; 2 uses
  %i.ehk = getelementptr inbounds nuw [4 x i8], ptr %i.ehf, i64 %i.duc ; 2 uses
  %i.ehl = fmul fast float %i.dzg, f0x3FB504F3
  %i.ehm = fmul fast float %i.edc, f0x3F3504F3
  %i.ehn = fsub fast float %i.ehl, %i.ehm         ; 2 uses
  %i.eho = fmul fast float %i.ebe, 2.000000e+00
  %i.ehp = fsub fast float %i.efa, %i.eho         ; 2 uses
  %i.ehq = fmul fast float %i.edc, f0x3FB504F3
  %i.ehr = fmul fast float %i.dzg, f0x3F3504F3
  %i.ehs = fsub fast float %i.ehq, %i.ehr         ; 2 uses
  %i.eht = fmul fast float %i.ebe, 5.000000e-01
  %i.ehu = fsub fast float %i.efa, %i.eht         ; 2 uses
  %.neg.us = fmul fast float %i.ebe, -2.500000e+00
  %i.ehv = fadd fast float %i.dxi, %.neg.us
  %i.ehw = fadd fast float %i.ehv, %i.efa
  store float %i.ehw, ptr %i.ehf, align 4, !tbaa !22
  %i.ehx = fsub fast float %i.ehp, %i.ehn
  store float %i.ehx, ptr %i.ehg, align 4, !tbaa !22
  %i.ehy = fadd fast float %i.ehp, %i.ehn
  store float %i.ehy, ptr %i.ehh, align 4, !tbaa !22
  %i.ehz = fadd fast float %i.ehu, %i.ehs
  store float %i.ehz, ptr %i.ehi, align 4, !tbaa !22
  %i.eia = fsub fast float %i.ehu, %i.ehs
  store float %i.eia, ptr %i.ehj, align 4, !tbaa !22
  %.neg1004.us = fmul fast float %i.edc, -2.500000e+00
  %i.eib = fadd fast float %.neg1004.us, %i.dzg
  %i.eic = fadd fast float %i.eib, %i.egy
  store float %i.eic, ptr %i.ehk, align 4, !tbaa !22
  %i.eid = getelementptr inbounds nuw [4 x i8], ptr %i.ehf, i64 %i.due ; 2 uses
  %i.eie = getelementptr inbounds nuw [4 x i8], ptr %i.ehg, i64 %i.due ; 2 uses
  %i.eif = getelementptr inbounds nuw [4 x i8], ptr %i.ehh, i64 %i.due ; 2 uses
  %i.eig = getelementptr inbounds nuw [4 x i8], ptr %i.ehi, i64 %i.due ; 2 uses
  %i.eih = getelementptr inbounds nuw [4 x i8], ptr %i.ehj, i64 %i.due ; 2 uses
  %i.eii = getelementptr inbounds nuw [4 x i8], ptr %i.ehk, i64 %i.due ; 2 uses
  %i.eij = fmul fast float %i.dzh, f0x3FB504F3
  %i.eik = fmul fast float %i.edd, f0x3F3504F3
  %i.eil = fsub fast float %i.eij, %i.eik         ; 2 uses
  %i.eim = fmul fast float %i.ebf, 2.000000e+00
  %i.ein = fsub fast float %i.efb, %i.eim         ; 2 uses
  %i.eio = fmul fast float %i.edd, f0x3FB504F3
  %i.eip = fmul fast float %i.dzh, f0x3F3504F3
  %i.eiq = fsub fast float %i.eio, %i.eip         ; 2 uses
  %i.eir = fmul fast float %i.ebf, 5.000000e-01
  %i.eis = fsub fast float %i.efb, %i.eir         ; 2 uses
  %.neg.us.1 = fmul fast float %i.ebf, -2.500000e+00
  %i.eit = fadd fast float %i.dxj, %.neg.us.1
  %i.eiu = fadd fast float %i.eit, %i.efb
  store float %i.eiu, ptr %i.eid, align 4, !tbaa !22
  %i.eiv = fsub fast float %i.ein, %i.eil
  store float %i.eiv, ptr %i.eie, align 4, !tbaa !22
  %i.eiw = fadd fast float %i.ein, %i.eil
  store float %i.eiw, ptr %i.eif, align 4, !tbaa !22
  %i.eix = fadd fast float %i.eis, %i.eiq
  store float %i.eix, ptr %i.eig, align 4, !tbaa !22
  %i.eiy = fsub fast float %i.eis, %i.eiq
  store float %i.eiy, ptr %i.eih, align 4, !tbaa !22
  %.neg1004.us.1 = fmul fast float %i.edd, -2.500000e+00
  %i.eiz = fadd fast float %.neg1004.us.1, %i.dzh
  %i.eja = fadd fast float %i.eiz, %i.egz
  store float %i.eja, ptr %i.eii, align 4, !tbaa !22
  %i.ejb = getelementptr inbounds nuw [4 x i8], ptr %i.eid, i64 %i.due ; 2 uses
  %i.ejc = getelementptr inbounds nuw [4 x i8], ptr %i.eie, i64 %i.due ; 2 uses
  %i.ejd = getelementptr inbounds nuw [4 x i8], ptr %i.eif, i64 %i.due ; 2 uses
  %i.eje = getelementptr inbounds nuw [4 x i8], ptr %i.eig, i64 %i.due ; 2 uses
  %i.ejf = getelementptr inbounds nuw [4 x i8], ptr %i.eih, i64 %i.due ; 2 uses
  %i.ejg = getelementptr inbounds nuw [4 x i8], ptr %i.eii, i64 %i.due ; 2 uses
  %i.ejh = fmul fast float %i.dzi, f0x3FB504F3
  %i.eji = fmul fast float %i.ede, f0x3F3504F3
  %i.ejj = fsub fast float %i.ejh, %i.eji         ; 2 uses
  %i.ejk = fmul fast float %i.ebg, 2.000000e+00
  %i.ejl = fsub fast float %i.efc, %i.ejk         ; 2 uses
  %i.ejm = fmul fast float %i.ede, f0x3FB504F3
  %i.ejn = fmul fast float %i.dzi, f0x3F3504F3
  %i.ejo = fsub fast float %i.ejm, %i.ejn         ; 2 uses
  %i.ejp = fmul fast float %i.ebg, 5.000000e-01
  %i.ejq = fsub fast float %i.efc, %i.ejp         ; 2 uses
  %.neg.us.2 = fmul fast float %i.ebg, -2.500000e+00
  %i.ejr = fadd fast float %i.dxk, %.neg.us.2
  %i.ejs = fadd fast float %i.ejr, %i.efc
  store float %i.ejs, ptr %i.ejb, align 4, !tbaa !22
  %i.ejt = fsub fast float %i.ejl, %i.ejj
  store float %i.ejt, ptr %i.ejc, align 4, !tbaa !22
  %i.eju = fadd fast float %i.ejl, %i.ejj
  store float %i.eju, ptr %i.ejd, align 4, !tbaa !22
  %i.ejv = fadd fast float %i.ejq, %i.ejo
  store float %i.ejv, ptr %i.eje, align 4, !tbaa !22
  %i.ejw = fsub fast float %i.ejq, %i.ejo
  store float %i.ejw, ptr %i.ejf, align 4, !tbaa !22
  %.neg1004.us.2 = fmul fast float %i.ede, -2.500000e+00
  %i.ejx = fadd fast float %.neg1004.us.2, %i.dzi
  %i.ejy = fadd fast float %i.ejx, %i.eha
  store float %i.ejy, ptr %i.ejg, align 4, !tbaa !22
  %i.ejz = getelementptr inbounds nuw [4 x i8], ptr %i.ejb, i64 %i.due ; 2 uses
  %i.eka = getelementptr inbounds nuw [4 x i8], ptr %i.ejc, i64 %i.due ; 2 uses
  %i.ekb = getelementptr inbounds nuw [4 x i8], ptr %i.ejd, i64 %i.due ; 2 uses
  %i.ekc = getelementptr inbounds nuw [4 x i8], ptr %i.eje, i64 %i.due ; 2 uses
  %i.ekd = getelementptr inbounds nuw [4 x i8], ptr %i.ejf, i64 %i.due ; 2 uses
  %i.eke = getelementptr inbounds nuw [4 x i8], ptr %i.ejg, i64 %i.due ; 2 uses
  %i.ekf = fmul fast float %i.dzj, f0x3FB504F3
  %i.ekg = fmul fast float %i.edf, f0x3F3504F3
  %i.ekh = fsub fast float %i.ekf, %i.ekg         ; 2 uses
  %i.eki = fmul fast float %i.ebh, 2.000000e+00
  %i.ekj = fsub fast float %i.efd, %i.eki         ; 2 uses
  %i.ekk = fmul fast float %i.edf, f0x3FB504F3
  %i.ekl = fmul fast float %i.dzj, f0x3F3504F3
  %i.ekm = fsub fast float %i.ekk, %i.ekl         ; 2 uses
  %i.ekn = fmul fast float %i.ebh, 5.000000e-01
  %i.eko = fsub fast float %i.efd, %i.ekn         ; 2 uses
  %.neg.us.3 = fmul fast float %i.ebh, -2.500000e+00
  %i.ekp = fadd fast float %i.dxl, %.neg.us.3
  %i.ekq = fadd fast float %i.ekp, %i.efd
  store float %i.ekq, ptr %i.ejz, align 4, !tbaa !22
  %i.ekr = fsub fast float %i.ekj, %i.ekh
  store float %i.ekr, ptr %i.eka, align 4, !tbaa !22
  %i.eks = fadd fast float %i.ekj, %i.ekh
  store float %i.eks, ptr %i.ekb, align 4, !tbaa !22
  %i.ekt = fadd fast float %i.eko, %i.ekm
  store float %i.ekt, ptr %i.ekc, align 4, !tbaa !22
  %i.eku = fsub fast float %i.eko, %i.ekm
  store float %i.eku, ptr %i.ekd, align 4, !tbaa !22
  %.neg1004.us.3 = fmul fast float %i.edf, -2.500000e+00
  %i.ekv = fadd fast float %.neg1004.us.3, %i.dzj
  %i.ekw = fadd fast float %i.ekv, %i.ehb
  store float %i.ekw, ptr %i.eke, align 4, !tbaa !22
  %i.ekx = getelementptr inbounds nuw [4 x i8], ptr %i.ejz, i64 %i.due ; 2 uses
  %i.eky = getelementptr inbounds nuw [4 x i8], ptr %i.eka, i64 %i.due ; 2 uses
  %i.ekz = getelementptr inbounds nuw [4 x i8], ptr %i.ekb, i64 %i.due ; 2 uses
  %i.ela = getelementptr inbounds nuw [4 x i8], ptr %i.ekc, i64 %i.due ; 2 uses
  %i.elb = getelementptr inbounds nuw [4 x i8], ptr %i.ekd, i64 %i.due ; 2 uses
  %i.elc = getelementptr inbounds nuw [4 x i8], ptr %i.eke, i64 %i.due ; 2 uses
  %i.eld = fmul fast float %i.dzk, f0x3FB504F3
  %i.ele = fmul fast float %i.edg, f0x3F3504F3
  %i.elf = fsub fast float %i.eld, %i.ele         ; 2 uses
  %i.elg = fmul fast float %i.ebi, 2.000000e+00
  %i.elh = fsub fast float %i.efe, %i.elg         ; 2 uses
  %i.eli = fmul fast float %i.edg, f0x3FB504F3
  %i.elj = fmul fast float %i.dzk, f0x3F3504F3
  %i.elk = fsub fast float %i.eli, %i.elj         ; 2 uses
  %i.ell = fmul fast float %i.ebi, 5.000000e-01
  %i.elm = fsub fast float %i.efe, %i.ell         ; 2 uses
  %.neg.us.4 = fmul fast float %i.ebi, -2.500000e+00
  %i.eln = fadd fast float %i.dxm, %.neg.us.4
  %i.elo = fadd fast float %i.eln, %i.efe
  store float %i.elo, ptr %i.ekx, align 4, !tbaa !22
  %i.elp = fsub fast float %i.elh, %i.elf
  store float %i.elp, ptr %i.eky, align 4, !tbaa !22
  %i.elq = fadd fast float %i.elh, %i.elf
  store float %i.elq, ptr %i.ekz, align 4, !tbaa !22
  %i.elr = fadd fast float %i.elm, %i.elk
  store float %i.elr, ptr %i.ela, align 4, !tbaa !22
  %i.els = fsub fast float %i.elm, %i.elk
  store float %i.els, ptr %i.elb, align 4, !tbaa !22
  %.neg1004.us.4 = fmul fast float %i.edg, -2.500000e+00
  %i.elt = fadd fast float %.neg1004.us.4, %i.dzk
  %i.elu = fadd fast float %i.elt, %i.ehc
  store float %i.elu, ptr %i.elc, align 4, !tbaa !22
  %i.elv = getelementptr inbounds nuw [4 x i8], ptr %i.ekx, i64 %i.due
  %i.elw = getelementptr inbounds nuw [4 x i8], ptr %i.eky, i64 %i.due
  %i.elx = getelementptr inbounds nuw [4 x i8], ptr %i.ekz, i64 %i.due
  %i.ely = getelementptr inbounds nuw [4 x i8], ptr %i.ela, i64 %i.due
  %i.elz = getelementptr inbounds nuw [4 x i8], ptr %i.elb, i64 %i.due
  %i.ema = getelementptr inbounds nuw [4 x i8], ptr %i.elc, i64 %i.due
  %i.emb = fmul fast float %i.dzm, f0x3FB504F3
  %i.emc = fmul fast float %i.edi, f0x3F3504F3
  %i.emd = fsub fast float %i.emb, %i.emc         ; 2 uses
  %i.eme = fmul fast float %i.ebk, 2.000000e+00
  %i.emf = fsub fast float %i.efg, %i.eme         ; 2 uses
  %i.emg = fmul fast float %i.edi, f0x3FB504F3
  %i.emh = fmul fast float %i.dzm, f0x3F3504F3
  %i.emi = fsub fast float %i.emg, %i.emh         ; 2 uses
  %i.emj = fmul fast float %i.ebk, 5.000000e-01
  %i.emk = fsub fast float %i.efg, %i.emj         ; 2 uses
  %.neg.us.5 = fmul fast float %i.ebk, -2.500000e+00
  %i.eml = fadd fast float %i.dxo, %.neg.us.5
  %i.emm = fadd fast float %i.eml, %i.efg
  store float %i.emm, ptr %i.elv, align 4, !tbaa !22
  %i.emn = fsub fast float %i.emf, %i.emd
  store float %i.emn, ptr %i.elw, align 4, !tbaa !22
  %i.emo = fadd fast float %i.emf, %i.emd
  store float %i.emo, ptr %i.elx, align 4, !tbaa !22
  %i.emp = fadd fast float %i.emk, %i.emi
  store float %i.emp, ptr %i.ely, align 4, !tbaa !22
  %i.emq = fsub fast float %i.emk, %i.emi
  store float %i.emq, ptr %i.elz, align 4, !tbaa !22
  %.neg1004.us.5 = fmul fast float %i.edi, -2.500000e+00
  %i.emr = fadd fast float %.neg1004.us.5, %i.dzm
  %i.ems = fadd fast float %i.emr, %i.ehe
  store float %i.ems, ptr %i.ema, align 4, !tbaa !22
  %indvars.iv.next1145 = add nuw nsw i64 %indvars.iv1144, 1 ; 2 uses
  %exitcond1148.not = icmp eq i64 %indvars.iv.next1145, %wide.trip.count1147
  br i1 %exitcond1148.not, label %._crit_edge.us1085, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !828

._crit_edge.us1085:                               ; preds = %bb.no
  %indvars.iv.next1150 = add nsw i64 %indvars.iv1149, 1 ; 2 uses
  %exitcond1153.not = icmp eq i64 %indvars.iv.next1150, %wide.trip.count1152
  br i1 %exitcond1153.not, label %._crit_edge1082, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, !llvm.loop !829

._crit_edge1082:                                  ; preds = %._crit_edge.us1085, %.lr.ph1081, %._crit_edge1059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL47conv3x3s1_winograd43_transform_input_tile_bf16sERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree nonnull readnone align 4 captures(none) %9, ptr nofree nonnull readnone align 4 captures(none) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %14) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !30     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.hj

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !30
  %i.h = load i32, ptr %0, align 4, !tbaa !30     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !30
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !30
  %i.k = load i32, ptr %i.a, align 4, !tbaa !30   ; 2 uses
  %.not592 = icmp sgt i32 %i.k, %i.j
  br i1 %.not592, label %._crit_edge595, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.o = load i32, ptr %3, align 4, !tbaa !30     ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge595

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.dty, %._crit_edge ], [ %i.o, %.lr.ph ] ; 2 uses
  %.0593 = phi i32 [ %i.dtz, %._crit_edge ], [ %i.k, %.lr.ph ] ; 4 uses
  %i.r = shl nsw i32 %.0593, 4
  %i.s = icmp sgt i32 %i.q, 0
  br i1 %i.s, label %_ZN4ncnn3MatD2Ev.exit.lr.ph, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit.lr.ph:                      ; preds = %.lr.ph.split
  %i.t = mul i32 %.0593, 576
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph, %.thread575.5
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph ], [ %indvars.iv.next, %.thread575.5 ] ; 3 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !30
  %i.v = load i32, ptr %5, align 4, !tbaa !30     ; 2 uses
  %i.w = load i32, ptr %7, align 4, !tbaa !30
  %i.x = load i32, ptr %8, align 4, !tbaa !30     ; 5 uses
  %i.y = load i32, ptr %i.l, align 4, !tbaa !31, !noalias !838
  %i.z = load ptr, ptr %6, align 8, !tbaa !15, !noalias !838
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !16, !noalias !838
  %i.ab = load i64, ptr %i.n, align 8, !tbaa !17, !noalias !838 ; 2 uses
  %i.ac = sext i32 %i.y to i64
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
  %i.ae = add nsw i32 %i.w, %i.r
  %i.af = add nsw i32 %i.u, %i.ad                 ; 2 uses
  %i.ag = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %i.ah = insertelement <2 x i32> %i.ag, i32 %i.af, i64 1
  %i.ai = insertelement <2 x i32> poison, i32 %i.x, i64 0
  %i.aj = insertelement <2 x i32> %i.ai, i32 %i.v, i64 1
  %i.ak = sdiv <2 x i32> %i.ah, %i.aj             ; 2 uses
  %i.al = extractelement <2 x i32> %i.ak, i64 0
  %i.am = sext i32 %i.al to i64
  %i.an = mul i64 %i.aa, %i.am
  %i.ao = mul i64 %i.an, %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ao
  %i.aq = srem i32 %i.af, %i.v
  %i.ar = extractelement <2 x i32> %i.ak, i64 1
  %i.as = shl nsw i32 %i.ar, 2                    ; 2 uses
  %i.at = sext i32 %i.as to i64                   ; 6 uses
  %i.au = mul i64 %i.ab, %i.ac
  %i.av = mul i64 %i.au, %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.av
  %i.ax = shl nsw i32 %i.aq, 2                    ; 6 uses
  %i.ay = mul nsw i32 %i.ax, %i.x
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [2 x i8], ptr %i.aw, i64 %i.az ; 41 uses
  %i.bb = load i32, ptr %11, align 4, !tbaa !30   ; 2 uses
  %i.bc = load i32, ptr %12, align 4, !tbaa !30   ; 24 uses
  %i.bd = mul nsw i32 %i.x, %i.bc
  %i.be = sext i32 %i.bd to i64                   ; 5 uses
  %i.bf = or disjoint i32 %i.ax, 1                ; 24 uses
  %i.bg = or disjoint i32 %i.ax, 2                ; 24 uses
  %i.bh = or disjoint i32 %i.ax, 3                ; 24 uses
  %i.bi = add nsw i32 %i.ax, 4                    ; 24 uses
  %i.bj = add nsw i32 %i.ax, 5                    ; 24 uses
  %i.bk = sext i32 %i.bb to i64                   ; 5 uses
  %i.bl = icmp slt i32 %i.as, %i.bb
  %i.bm = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.x)
  %i.bn = icmp eq i32 %i.bm, 1
  %or.cond = select i1 %i.bl, i1 %i.bn, i1 false
  br i1 %or.cond, label %.split, label %.thread575

.split:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit
  %i.bo = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.x, i1 true)
  switch i32 %i.bo, label %.thread575 [
    i32 4, label %bb.c
    i32 3, label %bb.m
    i32 2, label %bb.w
    i32 0, label %bb.ag
  ]

bb.c:                                             ; preds = %.split
  %i.bp = load <16 x bfloat>, ptr %i.ba, align 32, !tbaa !18
  %i.bq = fpext fast <16 x bfloat> %i.bp to <16 x float> ; 2 uses
  %i.br = icmp slt i32 %i.bf, %i.bc
  br i1 %i.br, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bt = load <16 x bfloat>, ptr %i.bs, align 32, !tbaa !18
  %i.bu = fpext fast <16 x bfloat> %i.bt to <16 x float>
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0312 = phi nsz <16 x float> [ %i.bu, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %i.bv = icmp slt i32 %i.bg, %i.bc
  br i1 %i.bv, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.bx = load <16 x bfloat>, ptr %i.bw, align 32, !tbaa !18
  %i.by = fpext fast <16 x bfloat> %i.bx to <16 x float>
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0316 = phi nsz <16 x float> [ %i.by, %bb.f ], [ zeroinitializer, %bb.e ] ; 2 uses
  %i.bz = icmp slt i32 %i.bh, %i.bc
  br i1 %i.bz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  %i.cb = load <16 x bfloat>, ptr %i.ca, align 32, !tbaa !18
  %i.cc = fpext fast <16 x bfloat> %i.cb to <16 x float>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0324 = phi nsz <16 x float> [ %i.cc, %bb.h ], [ zeroinitializer, %bb.g ] ; 2 uses
  %i.cd = icmp slt i32 %i.bi, %i.bc
  br i1 %i.cd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ba, i64 128
  %i.cf = load <16 x bfloat>, ptr %i.ce, align 32, !tbaa !18
  %i.cg = fpext fast <16 x bfloat> %i.cf to <16 x float>
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0332 = phi nsz <16 x float> [ %i.cg, %bb.j ], [ zeroinitializer, %bb.i ] ; 2 uses
  %i.ch = icmp slt i32 %i.bj, %i.bc
  br i1 %i.ch, label %bb.l, label %.thread575

bb.l:                                             ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  %i.cj = load <16 x bfloat>, ptr %i.ci, align 32, !tbaa !18
  %i.ck = fpext fast <16 x bfloat> %i.cj to <16 x float>
  br label %.thread575

bb.m:                                             ; preds = %.split
  %i.cl = load i64, ptr %13, align 8, !tbaa !34
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.cl ; 6 uses
  %i.cn = load <8 x bfloat>, ptr %i.ba, align 16, !tbaa !18
  %i.co = fpext fast <8 x bfloat> %i.cn to <8 x float>
  %i.cp = load <8 x bfloat>, ptr %i.cm, align 16, !tbaa !18
  %i.cq = fpext fast <8 x bfloat> %i.cp to <8 x float>
  %i.cr = shufflevector <8 x float> %i.co, <8 x float> %i.cq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.cs = icmp slt i32 %i.bf, %i.bc
  br i1 %i.cs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
end_hunk_3
begin_hunk_4_@_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_:bb.a
  %i.ddv = load <2 x float>, ptr %i.ddj, align 4, !tbaa !22
  %i.ddw = fadd fast <2 x float> %i.ddu, %i.ddr
  %i.ddx = fadd fast <2 x float> %i.ddw, %i.ddv
  store <2 x float> %i.ddx, ptr %i.dai, align 8, !tbaa !22
  %i.ddy = fsub fast <2 x float> %i.ddp, %i.ddq   ; 2 uses
  %i.ddz = fsub fast <2 x float> %i.dds, %i.ddt   ; 2 uses
  %i.dea = fmul fast <2 x float> %i.ddy, splat (float f0x3F3504F3)
  %i.deb = fmul fast <2 x float> %i.ddz, splat (float f0x3FB504F3)
  %i.dec = fadd fast <2 x float> %i.deb, %i.dea
  store <2 x float> %i.dec, ptr %i.daj, align 8, !tbaa !22
  %i.ded = fmul fast <2 x float> %i.ddr, splat (float 5.000000e-01)
  %i.dee = fmul fast <2 x float> %i.ddu, splat (float 2.000000e+00)
  %i.def = fadd fast <2 x float> %i.dee, %i.ded
  store <2 x float> %i.def, ptr %i.dak, align 8, !tbaa !22
  %i.deg = load <2 x float>, ptr %i.ddo, align 4, !tbaa !22
  %i.deh = fmul fast <2 x float> %i.ddy, splat (float f0x3EB504F3)
  %i.dei = fadd fast <2 x float> %i.deh, %i.deg
  %i.dej = fmul fast <2 x float> %i.ddz, splat (float f0x403504F3)
  %i.dek = fadd fast <2 x float> %i.dei, %i.dej
  store <2 x float> %i.dek, ptr %i.dal, align 8, !tbaa !22
  %i.del = getelementptr inbounds nuw [4 x i8], ptr %i.ddj, i64 %i.czw ; 2 uses
  %i.dem = getelementptr inbounds nuw [4 x i8], ptr %i.ddk, i64 %i.czw ; 2 uses
  %i.den = getelementptr inbounds nuw [4 x i8], ptr %i.ddl, i64 %i.czw ; 2 uses
  %i.deo = getelementptr inbounds nuw [4 x i8], ptr %i.ddm, i64 %i.czw ; 2 uses
  %i.dep = getelementptr inbounds nuw [4 x i8], ptr %i.ddn, i64 %i.czw ; 2 uses
  %i.deq = getelementptr inbounds nuw [4 x i8], ptr %i.ddo, i64 %i.czw ; 2 uses
  %i.der = load <2 x float>, ptr %i.dem, align 4, !tbaa !22 ; 2 uses
  %i.des = load <2 x float>, ptr %i.den, align 4, !tbaa !22 ; 2 uses
  %i.det = fadd fast <2 x float> %i.des, %i.der   ; 2 uses
  %i.deu = load <2 x float>, ptr %i.deo, align 4, !tbaa !22 ; 2 uses
  %i.dev = load <2 x float>, ptr %i.dep, align 4, !tbaa !22 ; 2 uses
  %i.dew = fadd fast <2 x float> %i.dev, %i.deu   ; 2 uses
  %i.dex = load <2 x float>, ptr %i.del, align 4, !tbaa !22
  %i.dey = fadd fast <2 x float> %i.dew, %i.det
  %i.dez = fadd fast <2 x float> %i.dey, %i.dex
  store <2 x float> %i.dez, ptr %i.dam, align 16, !tbaa !22
  %i.dfa = fsub fast <2 x float> %i.der, %i.des   ; 2 uses
  %i.dfb = fsub fast <2 x float> %i.deu, %i.dev   ; 2 uses
  %i.dfc = fmul fast <2 x float> %i.dfa, splat (float f0x3F3504F3)
  %i.dfd = fmul fast <2 x float> %i.dfb, splat (float f0x3FB504F3)
  %i.dfe = fadd fast <2 x float> %i.dfd, %i.dfc
  store <2 x float> %i.dfe, ptr %i.dan, align 16, !tbaa !22
  %i.dff = fmul fast <2 x float> %i.det, splat (float 5.000000e-01)
  %i.dfg = fmul fast <2 x float> %i.dew, splat (float 2.000000e+00)
  %i.dfh = fadd fast <2 x float> %i.dfg, %i.dff
  store <2 x float> %i.dfh, ptr %i.dao, align 16, !tbaa !22
  %i.dfi = load <2 x float>, ptr %i.deq, align 4, !tbaa !22
  %i.dfj = fmul fast <2 x float> %i.dfa, splat (float f0x3EB504F3)
  %i.dfk = fadd fast <2 x float> %i.dfj, %i.dfi
  %i.dfl = fmul fast <2 x float> %i.dfb, splat (float f0x403504F3)
  %i.dfm = fadd fast <2 x float> %i.dfk, %i.dfl
  store <2 x float> %i.dfm, ptr %i.dap, align 16, !tbaa !22
  %i.dfn = getelementptr inbounds nuw [4 x i8], ptr %i.del, i64 %i.czw ; 2 uses
  %i.dfo = getelementptr inbounds nuw [4 x i8], ptr %i.dem, i64 %i.czw ; 2 uses
  %i.dfp = getelementptr inbounds nuw [4 x i8], ptr %i.den, i64 %i.czw ; 2 uses
  %i.dfq = getelementptr inbounds nuw [4 x i8], ptr %i.deo, i64 %i.czw ; 2 uses
  %i.dfr = getelementptr inbounds nuw [4 x i8], ptr %i.dep, i64 %i.czw ; 2 uses
  %i.dfs = getelementptr inbounds nuw [4 x i8], ptr %i.deq, i64 %i.czw ; 2 uses
  %i.dft = load <2 x float>, ptr %i.dfo, align 4, !tbaa !22 ; 2 uses
  %i.dfu = load <2 x float>, ptr %i.dfp, align 4, !tbaa !22 ; 2 uses
  %i.dfv = fadd fast <2 x float> %i.dfu, %i.dft   ; 2 uses
  %i.dfw = load <2 x float>, ptr %i.dfq, align 4, !tbaa !22 ; 2 uses
  %i.dfx = load <2 x float>, ptr %i.dfr, align 4, !tbaa !22 ; 2 uses
  %i.dfy = fadd fast <2 x float> %i.dfx, %i.dfw   ; 2 uses
  %i.dfz = load <2 x float>, ptr %i.dfn, align 4, !tbaa !22
  %i.dga = fadd fast <2 x float> %i.dfy, %i.dfv
  %i.dgb = fadd fast <2 x float> %i.dga, %i.dfz
  store <2 x float> %i.dgb, ptr %i.daq, align 8, !tbaa !22
  %i.dgc = fsub fast <2 x float> %i.dft, %i.dfu   ; 2 uses
  %i.dgd = fsub fast <2 x float> %i.dfw, %i.dfx   ; 2 uses
  %i.dge = fmul fast <2 x float> %i.dgc, splat (float f0x3F3504F3)
  %i.dgf = fmul fast <2 x float> %i.dgd, splat (float f0x3FB504F3)
  %i.dgg = fadd fast <2 x float> %i.dgf, %i.dge
  store <2 x float> %i.dgg, ptr %i.dar, align 8, !tbaa !22
  %i.dgh = fmul fast <2 x float> %i.dfv, splat (float 5.000000e-01)
  %i.dgi = fmul fast <2 x float> %i.dfy, splat (float 2.000000e+00)
  %i.dgj = fadd fast <2 x float> %i.dgi, %i.dgh
  store <2 x float> %i.dgj, ptr %i.das, align 8, !tbaa !22
  %i.dgk = load <2 x float>, ptr %i.dfs, align 4, !tbaa !22
  %i.dgl = fmul fast <2 x float> %i.dgc, splat (float f0x3EB504F3)
  %i.dgm = fadd fast <2 x float> %i.dgl, %i.dgk
  %i.dgn = fmul fast <2 x float> %i.dgd, splat (float f0x403504F3)
  %i.dgo = fadd fast <2 x float> %i.dgm, %i.dgn
  store <2 x float> %i.dgo, ptr %i.dat, align 8, !tbaa !22
  %i.dgp = getelementptr inbounds nuw [4 x i8], ptr %i.dfn, i64 %i.czw ; 2 uses
  %i.dgq = getelementptr inbounds nuw [4 x i8], ptr %i.dfo, i64 %i.czw ; 2 uses
  %i.dgr = getelementptr inbounds nuw [4 x i8], ptr %i.dfp, i64 %i.czw ; 2 uses
  %i.dgs = getelementptr inbounds nuw [4 x i8], ptr %i.dfq, i64 %i.czw ; 2 uses
  %i.dgt = getelementptr inbounds nuw [4 x i8], ptr %i.dfr, i64 %i.czw ; 2 uses
  %i.dgu = getelementptr inbounds nuw [4 x i8], ptr %i.dfs, i64 %i.czw ; 2 uses
  %i.dgv = load <2 x float>, ptr %i.dgq, align 4, !tbaa !22 ; 2 uses
  %i.dgw = load <2 x float>, ptr %i.dgr, align 4, !tbaa !22 ; 2 uses
  %i.dgx = fadd fast <2 x float> %i.dgw, %i.dgv   ; 2 uses
  %i.dgy = load <2 x float>, ptr %i.dgs, align 4, !tbaa !22 ; 2 uses
  %i.dgz = load <2 x float>, ptr %i.dgt, align 4, !tbaa !22 ; 2 uses
  %i.dha = fadd fast <2 x float> %i.dgz, %i.dgy   ; 2 uses
  %i.dhb = load <2 x float>, ptr %i.dgp, align 4, !tbaa !22
  %i.dhc = fadd fast <2 x float> %i.dha, %i.dgx
  %i.dhd = fadd fast <2 x float> %i.dhc, %i.dhb
  store <2 x float> %i.dhd, ptr %i.dau, align 16, !tbaa !22
  %i.dhe = fsub fast <2 x float> %i.dgv, %i.dgw   ; 2 uses
  %i.dhf = fsub fast <2 x float> %i.dgy, %i.dgz   ; 2 uses
  %i.dhg = fmul fast <2 x float> %i.dhe, splat (float f0x3F3504F3)
  %i.dhh = fmul fast <2 x float> %i.dhf, splat (float f0x3FB504F3)
  %i.dhi = fadd fast <2 x float> %i.dhh, %i.dhg
  store <2 x float> %i.dhi, ptr %i.dav, align 16, !tbaa !22
  %i.dhj = fmul fast <2 x float> %i.dgx, splat (float 5.000000e-01)
  %i.dhk = fmul fast <2 x float> %i.dha, splat (float 2.000000e+00)
  %i.dhl = fadd fast <2 x float> %i.dhk, %i.dhj
  store <2 x float> %i.dhl, ptr %i.daw, align 16, !tbaa !22
  %i.dhm = load <2 x float>, ptr %i.dgu, align 4, !tbaa !22
  %i.dhn = fmul fast <2 x float> %i.dhe, splat (float f0x3EB504F3)
  %i.dho = fadd fast <2 x float> %i.dhn, %i.dhm
  %i.dhp = fmul fast <2 x float> %i.dhf, splat (float f0x403504F3)
  %i.dhq = fadd fast <2 x float> %i.dho, %i.dhp
  store <2 x float> %i.dhq, ptr %i.dax, align 16, !tbaa !22
  %i.dhr = getelementptr inbounds nuw [4 x i8], ptr %i.dgp, i64 %i.czw
  %i.dhs = getelementptr inbounds nuw [4 x i8], ptr %i.dgq, i64 %i.czw
  %i.dht = getelementptr inbounds nuw [4 x i8], ptr %i.dgr, i64 %i.czw
  %i.dhu = getelementptr inbounds nuw [4 x i8], ptr %i.dgs, i64 %i.czw
  %i.dhv = getelementptr inbounds nuw [4 x i8], ptr %i.dgt, i64 %i.czw
  %i.dhw = getelementptr inbounds nuw [4 x i8], ptr %i.dgu, i64 %i.czw
  %i.dhx = load <2 x float>, ptr %i.dhs, align 4, !tbaa !22 ; 2 uses
  %i.dhy = load <2 x float>, ptr %i.dht, align 4, !tbaa !22 ; 2 uses
  %i.dhz = fadd fast <2 x float> %i.dhy, %i.dhx   ; 2 uses
  %i.dia = load <2 x float>, ptr %i.dhu, align 4, !tbaa !22 ; 2 uses
  %i.dib = load <2 x float>, ptr %i.dhv, align 4, !tbaa !22 ; 2 uses
  %i.dic = fadd fast <2 x float> %i.dib, %i.dia   ; 2 uses
  %i.did = load <2 x float>, ptr %i.dhr, align 4, !tbaa !22
  %i.die = fadd fast <2 x float> %i.dic, %i.dhz
  %i.dif = fadd fast <2 x float> %i.die, %i.did
  store <2 x float> %i.dif, ptr %i.day, align 8, !tbaa !22
  %i.dig = fsub fast <2 x float> %i.dhx, %i.dhy   ; 2 uses
  %i.dih = fsub fast <2 x float> %i.dia, %i.dib   ; 2 uses
  %i.dii = fmul fast <2 x float> %i.dig, splat (float f0x3F3504F3)
  %i.dij = fmul fast <2 x float> %i.dih, splat (float f0x3FB504F3)
  %i.dik = fadd fast <2 x float> %i.dij, %i.dii
  store <2 x float> %i.dik, ptr %i.daz, align 8, !tbaa !22
  %i.dil = fmul fast <2 x float> %i.dhz, splat (float 5.000000e-01)
  %i.dim = fmul fast <2 x float> %i.dic, splat (float 2.000000e+00)
  %i.din = fadd fast <2 x float> %i.dim, %i.dil
  store <2 x float> %i.din, ptr %i.dba, align 8, !tbaa !22
  %i.dio = load <2 x float>, ptr %i.dhw, align 4, !tbaa !22
  %i.dip = fmul fast <2 x float> %i.dig, splat (float f0x3EB504F3)
  %i.diq = fadd fast <2 x float> %i.dip, %i.dio
  %i.dir = fmul fast <2 x float> %i.dih, splat (float f0x403504F3)
  %i.dis = fadd fast <2 x float> %i.diq, %i.dir
  store <2 x float> %i.dis, ptr %i.dbb, align 8, !tbaa !22
  %i.dit = trunc i64 %indvars.iv2288 to i32
  %i.diu = add i32 %4, %i.dit                     ; 2 uses
  %i.div = sdiv i32 %i.diu, %i.p
  %i.diw = srem i32 %i.diu, %i.p
  %i.dix = shl nsw i32 %i.div, 2                  ; 2 uses
  %i.diy = sext i32 %i.dix to i64
  %.reass2199 = mul i64 %factor.op.mul2198, %i.diy
  %i.diz = getelementptr inbounds nuw i8, ptr %i.dcg, i64 %.reass2199
  %i.dja = shl nsw i32 %i.diw, 2                  ; 4 uses
  %i.djb = sext i32 %i.dja to i64
  %i.djc = getelementptr inbounds [2 x i8], ptr %i.diz, i64 %i.djb
  %i.djd = or disjoint i32 %i.dja, 1
  %i.dje = icmp slt i32 %i.djd, %i.f
  %i.djf = or disjoint i32 %i.dja, 2
  %i.djg = icmp slt i32 %i.djf, %i.f
  %i.djh = or disjoint i32 %i.dja, 3
  %i.dji = icmp slt i32 %i.djh, %i.f
  %i.djj = load ptr, ptr %7, align 8              ; 2 uses
  %i.djk = getelementptr inbounds nuw i8, ptr %i.djj, i64 4
  %i.djl = load ptr, ptr %7, align 8              ; 2 uses
  %i.djm = getelementptr inbounds nuw i8, ptr %i.djl, i64 4
  %i.djn = load ptr, ptr %7, align 8
  br label %bb.cb

bb.ca:                                            ; preds = %bb.da
  %indvars.iv.next2289 = add nuw nsw i64 %indvars.iv2288, 1 ; 2 uses
  %exitcond2292.not = icmp eq i64 %indvars.iv.next2289, %wide.trip.count2291
  br i1 %exitcond2292.not, label %._crit_edge, label %_ZN4ncnn3MatD2Ev.exit1205, !llvm.loop !854

bb.cb:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit1205, %bb.da
  %indvars.iv2284 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1205 ], [ %indvars.iv.next2285, %bb.da ] ; 3 uses
  %.011142195 = phi ptr [ %i.djc, %_ZN4ncnn3MatD2Ev.exit1205 ], [ %.11115, %bb.da ] ; 7 uses
  %i.djo = trunc i64 %indvars.iv2284 to i32
  %i.djp = or i32 %i.dix, %i.djo
  %.not1171 = icmp slt i32 %i.djp, %i.h
  br i1 %.not1171, label %bb.cc, label %bb.da

bb.cc:                                            ; preds = %bb.cb
  %i.djq = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %indvars.iv2284 ; 6 uses
  %i.djr = getelementptr inbounds nuw i8, ptr %i.djq, i64 8
  %i.djs = getelementptr inbounds nuw i8, ptr %i.djq, i64 16
  %i.djt = getelementptr inbounds nuw i8, ptr %i.djq, i64 24
  %i.dju = getelementptr inbounds nuw i8, ptr %i.djq, i64 32
  %i.djv = getelementptr inbounds nuw i8, ptr %i.djq, i64 40
  %i.djw = load <2 x float>, ptr %i.djr, align 8, !tbaa !22 ; 2 uses
  %i.djx = load <2 x float>, ptr %i.djs, align 16, !tbaa !22 ; 2 uses
  %i.djy = load <2 x float>, ptr %i.djt, align 8, !tbaa !22 ; 2 uses
  %i.djz = load <2 x float>, ptr %i.dju, align 16, !tbaa !22 ; 2 uses
  %i.dka = load <2 x float>, ptr %i.djv, align 8, !tbaa !22
  %i.dkb = fsub fast <2 x float> %i.djw, %i.djx   ; 2 uses
  %i.dkc = fsub fast <2 x float> %i.djy, %i.djz   ; 2 uses
  %i.dkd = fmul fast <2 x float> %i.dkb, splat (float f0x3F3504F3)
  %i.dke = fadd fast <2 x float> %i.dkd, %i.dcb
  %i.dkf = fmul fast <2 x float> %i.dkc, splat (float f0x3FB504F3)
  %i.dkg = fadd fast <2 x float> %i.dke, %i.dkf   ; 11 uses
  %i.dkh = fadd fast <2 x float> %i.djx, %i.djw   ; 2 uses
  %i.dki = fadd fast <2 x float> %i.djz, %i.djy   ; 2 uses
  %i.dkj = load <2 x float>, ptr %i.djq, align 16, !tbaa !22
  %i.dkk = fadd fast <2 x float> %i.dkj, %i.dcb
  %i.dkl = fadd fast <2 x float> %i.dkk, %i.dkh
  %i.dkm = fadd fast <2 x float> %i.dkl, %i.dki   ; 11 uses
  %i.dkn = fmul fast <2 x float> %i.dkh, splat (float 5.000000e-01)
  %i.dko = fadd fast <2 x float> %i.dkn, %i.dcb
  %i.dkp = fmul fast <2 x float> %i.dki, splat (float 2.000000e+00)
  %i.dkq = fadd fast <2 x float> %i.dko, %i.dkp   ; 11 uses
  %i.dkr = fmul fast <2 x float> %i.dkb, splat (float f0x3EB504F3)
  %i.dks = fmul fast <2 x float> %i.dkc, splat (float f0x403504F3)
  %i.dkt = fadd fast <2 x float> %i.dkr, %i.dcb
  %i.dku = fadd fast <2 x float> %i.dkt, %i.dka
  %i.dkv = fadd fast <2 x float> %i.dku, %i.dks   ; 13 uses
  switch i32 %6, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1257 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1264.thread1608
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1264.thread1611
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1264.thread1605
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1264.thread1614
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1264.thread1617
    i32 6, label %bb.cd
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit1264.thread1608: ; preds = %bb.cc
  %i.dkw = tail call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dkm, <2 x float> zeroinitializer)
  %i.dkx = tail call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dkg, <2 x float> zeroinitializer)
  %i.dky = tail call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dkq, <2 x float> zeroinitializer)
  %i.dkz = tail call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dkv, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1257

_ZL13activation_ssfiRKN4ncnn3MatE.exit1264.thread1611: ; preds = %bb.cc
  %i.dla = load float, ptr %i.djn, align 4, !tbaa !22
  %i.dlb = fcmp fast ogt <2 x float> %i.dkm, zeroinitializer
  %i.dlc = insertelement <2 x float> poison, float %i.dla, i64 0
  %i.dld = shufflevector <2 x float> %i.dlc, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.dle = select <2 x i1> %i.dlb, <2 x float> splat (float 1.000000e+00), <2 x float> %i.dld
  %i.dlf = fmul fast <2 x float> %i.dle, %i.dkm
  %i.dlg = fcmp fast ogt <2 x float> %i.dkg, zeroinitializer
  %i.dlh = select <2 x i1> %i.dlg, <2 x float> splat (float 1.000000e+00), <2 x float> %i.dld
  %i.dli = fmul fast <2 x float> %i.dlh, %i.dkg
  %i.dlj = fcmp fast ogt <2 x float> %i.dkq, zeroinitializer
  %i.dlk = select <2 x i1> %i.dlj, <2 x float> splat (float 1.000000e+00), <2 x float> %i.dld
  %i.dll = fmul fast <2 x float> %i.dlk, %i.dkq
  %i.dlm = fcmp fast ogt <2 x float> %i.dkv, zeroinitializer
  %i.dln = select <2 x i1> %i.dlm, <2 x float> splat (float 1.000000e+00), <2 x float> %i.dld
  %i.dlo = fmul fast <2 x float> %i.dln, %i.dkv
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1257

_ZL13activation_ssfiRKN4ncnn3MatE.exit1264.thread1605: ; preds = %bb.cc
  %i.dlp = load float, ptr %i.djl, align 4, !tbaa !22 ; 3 uses
  %i.dlq = load float, ptr %i.djm, align 4, !tbaa !22 ; 4 uses
  %i.dlr = insertelement <2 x float> poison, float %i.dlp, i64 0
  %i.dls = shufflevector <2 x float> %i.dlr, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dlt = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dkm, <2 x float> %i.dls) ; 2 uses
  %i.dlu = insertelement <2 x float> poison, float %i.dlq, i64 0
  %i.dlv = shufflevector <2 x float> %i.dlu, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.dlw = fcmp fast ogt <2 x float> %i.dlt, %i.dlv
  %i.dlx = select <2 x i1> %i.dlw, <2 x float> %i.dlv, <2 x float> %i.dlt
  %i.dly = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dkg, <2 x float> %i.dls) ; 2 uses
  %i.dlz = fcmp fast ogt <2 x float> %i.dly, %i.dlv
  %i.dma = select <2 x i1> %i.dlz, <2 x float> %i.dlv, <2 x float> %i.dly
  %i.dmb = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dkq, <2 x float> %i.dls) ; 2 uses
  %i.dmc = fcmp fast ogt <2 x float> %i.dmb, %i.dlv
  %i.dmd = select <2 x i1> %i.dmc, <2 x float> %i.dlv, <2 x float> %i.dmb
  %i.dme = extractelement <2 x float> %i.dkv, i64 0
  %.01297 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.dme, float %i.dlp) ; 2 uses
  %i.dmf = fcmp fast ogt float %.01297, %i.dlq
  %.112981952 = select i1 %i.dmf, float %i.dlq, float %.01297
  %i.dmg = extractelement <2 x float> %i.dkv, i64 1
  %.01299 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.dmg, float %i.dlp)
  %spec.select2113 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.01299, float %i.dlq)
  %i.dmh = insertelement <2 x float> poison, float %.112981952, i64 0
  %i.dmi = insertelement <2 x float> %i.dmh, float %spec.select2113, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1257

_ZL13activation_ssfiRKN4ncnn3MatE.exit1264.thread1614: ; preds = %bb.cc
  %i.dmj = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.dkm, <2 x float> splat (float f0x42B0C0A5))
  %i.dmk = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dmj, <2 x float> splat (float f0xC2B0C0A5))
  %i.dml = fneg fast <2 x float> %i.dmk
  %i.dmm = tail call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.dml)
  %i.dmn = fadd fast <2 x float> %i.dmm, splat (float 1.000000e+00)
  %i.dmo = fdiv fast <2 x float> splat (float 1.000000e+00), %i.dmn
  %i.dmp = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.dkg, <2 x float> splat (float f0x42B0C0A5))
  %i.dmq = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dmp, <2 x float> splat (float f0xC2B0C0A5))
  %i.dmr = fneg fast <2 x float> %i.dmq
  %i.dms = tail call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.dmr)
  %i.dmt = fadd fast <2 x float> %i.dms, splat (float 1.000000e+00)
  %i.dmu = fdiv fast <2 x float> splat (float 1.000000e+00), %i.dmt
  %i.dmv = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.dkq, <2 x float> splat (float f0x42B0C0A5))
  %i.dmw = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dmv, <2 x float> splat (float f0xC2B0C0A5))
  %i.dmx = fneg fast <2 x float> %i.dmw
  %i.dmy = tail call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.dmx)
  %i.dmz = fadd fast <2 x float> %i.dmy, splat (float 1.000000e+00)
  %i.dna = fdiv fast <2 x float> splat (float 1.000000e+00), %i.dmz
  %i.dnb = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.dkv, <2 x float> splat (float f0x42B0C0A5))
  %i.dnc = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dnb, <2 x float> splat (float f0xC2B0C0A5))
  %i.dnd = fneg fast <2 x float> %i.dnc
  %i.dne = tail call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.dnd)
  %i.dnf = fadd fast <2 x float> %i.dne, splat (float 1.000000e+00)
  %i.dng = fdiv fast <2 x float> splat (float 1.000000e+00), %i.dnf
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1257

_ZL13activation_ssfiRKN4ncnn3MatE.exit1264.thread1617: ; preds = %bb.cc
  %i.dnh = extractelement <2 x float> %i.dkm, i64 0
  %i.dni = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.dnh)
  %i.dnj = extractelement <2 x float> %i.dkm, i64 1
  %i.dnk = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.dnj)
  %i.dnl = fadd fast float %i.dni, 1.000000e+00
  %i.dnm = tail call fast float @llvm.log.f32(float %i.dnl)
  %i.dnn = tail call fast float @llvm.tanh.f32(float %i.dnm)
  %i.dno = fadd fast float %i.dnk, 1.000000e+00
  %i.dnp = tail call fast float @llvm.log.f32(float %i.dno)
  %i.dnq = tail call fast float @llvm.tanh.f32(float %i.dnp)
  %i.dnr = insertelement <2 x float> poison, float %i.dnn, i64 0
  %i.dns = insertelement <2 x float> %i.dnr, float %i.dnq, i64 1
  %i.dnt = fmul fast <2 x float> %i.dns, %i.dkm
  %i.dnu = extractelement <2 x float> %i.dkg, i64 0
  %i.dnv = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.dnu)
  %i.dnw = extractelement <2 x float> %i.dkg, i64 1
  %i.dnx = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.dnw)
  %i.dny = fadd fast float %i.dnv, 1.000000e+00
  %i.dnz = tail call fast float @llvm.log.f32(float %i.dny)
  %i.doa = tail call fast float @llvm.tanh.f32(float %i.dnz)
  %i.dob = fadd fast float %i.dnx, 1.000000e+00
  %i.doc = tail call fast float @llvm.log.f32(float %i.dob)
  %i.dod = tail call fast float @llvm.tanh.f32(float %i.doc)
  %i.doe = insertelement <2 x float> poison, float %i.doa, i64 0
  %i.dof = insertelement <2 x float> %i.doe, float %i.dod, i64 1
  %i.dog = fmul fast <2 x float> %i.dof, %i.dkg
  %i.doh = extractelement <2 x float> %i.dkq, i64 0
  %i.doi = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.doh)
  %i.doj = extractelement <2 x float> %i.dkq, i64 1
  %i.dok = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.doj)
  %i.dol = fadd fast float %i.doi, 1.000000e+00
  %i.dom = tail call fast float @llvm.log.f32(float %i.dol)
  %i.don = tail call fast float @llvm.tanh.f32(float %i.dom)
  %i.doo = fadd fast float %i.dok, 1.000000e+00
  %i.dop = tail call fast float @llvm.log.f32(float %i.doo)
  %i.doq = tail call fast float @llvm.tanh.f32(float %i.dop)
  %i.dor = insertelement <2 x float> poison, float %i.don, i64 0
  %i.dos = insertelement <2 x float> %i.dor, float %i.doq, i64 1
  %i.dot = fmul fast <2 x float> %i.dos, %i.dkq
  %i.dou = extractelement <2 x float> %i.dkv, i64 0
  %i.dov = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.dou)
  %i.dow = extractelement <2 x float> %i.dkv, i64 1
  %i.dox = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.dow)
  %i.doy = fadd fast float %i.dov, 1.000000e+00
  %i.doz = tail call fast float @llvm.log.f32(float %i.doy)
  %i.dpa = tail call fast float @llvm.tanh.f32(float %i.doz)
  %i.dpb = fadd fast float %i.dox, 1.000000e+00
  %i.dpc = tail call fast float @llvm.log.f32(float %i.dpb)
  %i.dpd = tail call fast float @llvm.tanh.f32(float %i.dpc)
  %i.dpe = insertelement <2 x float> poison, float %i.dpa, i64 0
  %i.dpf = insertelement <2 x float> %i.dpe, float %i.dpd, i64 1
  %i.dpg = fmul fast <2 x float> %i.dpf, %i.dkv
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1257

bb.cd:                                            ; preds = %bb.cc
  %i.dph = load float, ptr %i.djj, align 4, !tbaa !22 ; 17 uses
  %i.dpi = load float, ptr %i.djk, align 4, !tbaa !22 ; 9 uses
  %i.dpj = fneg fast float %i.dpi
  %i.dpk = fdiv fast float %i.dpj, %i.dph         ; 16 uses
  %i.dpl = extractelement <2 x float> %i.dkm, i64 0 ; 5 uses
  %i.dpm = fcmp fast olt float %i.dpl, %i.dpk
  br i1 %i.dpm, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1264.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.dpn = fdiv fast float 1.000000e+00, %i.dph
  %i.dpo = fadd fast float %i.dpk, %i.dpn
  %i.dpp = fcmp fast ogt float %i.dpl, %i.dpo
  br i1 %i.dpp, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1264.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.dpq = fmul fast float %i.dph, %i.dpl
  %i.dpr = fadd fast float %i.dpq, %i.dpi
  %i.dps = fmul fast float %i.dpr, %i.dpl
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1264.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit1264.thread: ; preds = %bb.cf, %bb.ce, %bb.cd
  %.112861601 = phi float [ %i.dps, %bb.cf ], [ 0.000000e+00, %bb.cd ], [ %i.dpl, %bb.ce ]
  %i.dpt = extractelement <2 x float> %i.dkm, i64 1 ; 5 uses
  %i.dpu = fcmp fast olt float %i.dpt, %i.dpk
  br i1 %i.dpu, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1263.thread, label %bb.cg

bb.cg:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1264.thread
  %i.dpv = fdiv fast float 1.000000e+00, %i.dph
  %i.dpw = fadd fast float %i.dpk, %i.dpv
  %i.dpx = fcmp fast ogt float %i.dpt, %i.dpw
  br i1 %i.dpx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1263.thread, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.dpy = fmul fast float %i.dph, %i.dpt
  %i.dpz = fadd fast float %i.dpy, %i.dpi
  %i.dqa = fmul fast float %i.dpz, %i.dpt
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1263.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit1263.thread: ; preds = %bb.ch, %bb.cg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1264.thread
  %.112881624 = phi float [ %i.dqa, %bb.ch ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1264.thread ], [ %i.dpt, %bb.cg ]
  %i.dqb = extractelement <2 x float> %i.dkg, i64 0 ; 5 uses
  %i.dqc = fcmp fast olt float %i.dqb, %i.dpk
  br i1 %i.dqc, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1262.thread, label %bb.ci

bb.ci:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1263.thread
  %i.dqd = fdiv fast float 1.000000e+00, %i.dph
  %i.dqe = fadd fast float %i.dpk, %i.dqd
  %i.dqf = fcmp fast ogt float %i.dqb, %i.dqe
  br i1 %i.dqf, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1262.thread, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.dqg = fmul fast float %i.dph, %i.dqb
  %i.dqh = fadd fast float %i.dqg, %i.dpi
  %i.dqi = fmul fast float %i.dqh, %i.dqb
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1262.thread

end_hunk_4
begin_hunk_5_@_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_:bb.a
  %i.duy = getelementptr inbounds nuw [4 x i8], ptr %i.dur, i64 %i.dbp ; 2 uses
  %i.duz = getelementptr inbounds nuw [4 x i8], ptr %i.dus, i64 %i.dbp ; 2 uses
  %i.dva = getelementptr inbounds nuw [4 x i8], ptr %i.dut, i64 %i.dbp ; 2 uses
  %i.dvb = load float, ptr %i.duv, align 4, !tbaa !22
  %i.dvc = getelementptr inbounds nuw [4 x i8], ptr %i.duv, i64 %i.dbp ; 2 uses
  %i.dvd = getelementptr inbounds nuw [4 x i8], ptr %i.duw, i64 %i.dbp ; 2 uses
  %i.dve = getelementptr inbounds nuw [4 x i8], ptr %i.dux, i64 %i.dbp ; 2 uses
  %i.dvf = getelementptr inbounds nuw [4 x i8], ptr %i.duy, i64 %i.dbp ; 2 uses
  %i.dvg = getelementptr inbounds nuw [4 x i8], ptr %i.duz, i64 %i.dbp ; 2 uses
  %i.dvh = getelementptr inbounds nuw [4 x i8], ptr %i.dva, i64 %i.dbp ; 2 uses
  %i.dvi = load float, ptr %i.dvc, align 4, !tbaa !22
  %i.dvj = getelementptr inbounds nuw [4 x i8], ptr %i.dvc, i64 %i.dbp ; 2 uses
  %i.dvk = getelementptr inbounds nuw [4 x i8], ptr %i.dvd, i64 %i.dbp ; 2 uses
  %i.dvl = getelementptr inbounds nuw [4 x i8], ptr %i.dve, i64 %i.dbp ; 2 uses
  %i.dvm = getelementptr inbounds nuw [4 x i8], ptr %i.dvf, i64 %i.dbp ; 2 uses
  %i.dvn = getelementptr inbounds nuw [4 x i8], ptr %i.dvg, i64 %i.dbp ; 2 uses
  %i.dvo = getelementptr inbounds nuw [4 x i8], ptr %i.dvh, i64 %i.dbp ; 2 uses
  %i.dvp = load float, ptr %i.dvj, align 4, !tbaa !22
  %i.dvq = getelementptr inbounds nuw [4 x i8], ptr %i.dvj, i64 %i.dbp ; 2 uses
  %i.dvr = getelementptr inbounds nuw [4 x i8], ptr %i.dvk, i64 %i.dbp ; 2 uses
  %i.dvs = getelementptr inbounds nuw [4 x i8], ptr %i.dvl, i64 %i.dbp ; 2 uses
  %i.dvt = getelementptr inbounds nuw [4 x i8], ptr %i.dvm, i64 %i.dbp ; 2 uses
  %i.dvu = getelementptr inbounds nuw [4 x i8], ptr %i.dvn, i64 %i.dbp ; 2 uses
  %i.dvv = getelementptr inbounds nuw [4 x i8], ptr %i.dvo, i64 %i.dbp ; 2 uses
  %i.dvw = load float, ptr %i.dvq, align 4, !tbaa !22
  %i.dvx = load float, ptr %i.dvv, align 4, !tbaa !22
  %i.dvy = getelementptr inbounds nuw [4 x i8], ptr %i.dvq, i64 %i.dbp
  %i.dvz = getelementptr inbounds nuw [4 x i8], ptr %i.dvr, i64 %i.dbp
  %i.dwa = getelementptr inbounds nuw [4 x i8], ptr %i.dvs, i64 %i.dbp
  %i.dwb = getelementptr inbounds nuw [4 x i8], ptr %i.dvt, i64 %i.dbp
  %i.dwc = getelementptr inbounds nuw [4 x i8], ptr %i.dvu, i64 %i.dbp
  %i.dwd = getelementptr inbounds nuw [4 x i8], ptr %i.dvv, i64 %i.dbp
  %i.dwe = load float, ptr %i.dvy, align 4, !tbaa !22
  %i.dwf = load float, ptr %i.dvh, align 4, !tbaa !22
  %i.dwg = load float, ptr %i.dvo, align 4, !tbaa !22
  %i.dwh = load float, ptr %i.dvu, align 4, !tbaa !22 ; 2 uses
  %i.dwi = load float, ptr %i.dwc, align 4, !tbaa !22 ; 2 uses
  %i.dwj = load float, ptr %i.dvf, align 4, !tbaa !22 ; 3 uses
  %i.dwk = load float, ptr %i.dvg, align 4, !tbaa !22 ; 3 uses
  %i.dwl = load float, ptr %i.dvm, align 4, !tbaa !22 ; 2 uses
  %i.dwm = load float, ptr %i.dvn, align 4, !tbaa !22 ; 2 uses
  %i.dwn = insertelement <4 x ptr> poison, ptr %i.dvt, i64 0
  %i.dwo = insertelement <4 x ptr> %i.dwn, ptr %i.dwb, i64 1
  %i.dwp = insertelement <4 x ptr> %i.dwo, ptr %i.dut, i64 2
  %i.dwq = insertelement <4 x ptr> %i.dwp, ptr %i.dva, i64 3
  %i.dwr = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.dwq, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !22 ; 3 uses
  %i.dws = insertelement <8 x float> poison, float %i.dwh, i64 4
  %i.dwt = insertelement <8 x float> %i.dws, float %i.dwi, i64 5
  %i.dwu = fadd fast float %i.dwk, %i.dwj
  %i.dwv = load float, ptr %i.dup, align 4, !tbaa !22 ; 2 uses
  %i.dww = load float, ptr %i.duq, align 4, !tbaa !22 ; 2 uses
  %i.dwx = load float, ptr %i.duw, align 4, !tbaa !22 ; 3 uses
  %i.dwy = load float, ptr %i.dux, align 4, !tbaa !22 ; 3 uses
  %i.dwz = load float, ptr %i.dvd, align 4, !tbaa !22 ; 3 uses
  %i.dxa = load float, ptr %i.dve, align 4, !tbaa !22 ; 3 uses
  %i.dxb = load float, ptr %i.dvk, align 4, !tbaa !22 ; 2 uses
  %i.dxc = load float, ptr %i.dvl, align 4, !tbaa !22 ; 2 uses
  %i.dxd = insertelement <4 x ptr> poison, ptr %i.dvs, i64 0
  %i.dxe = insertelement <4 x ptr> %i.dxd, ptr %i.dwa, i64 1
  %i.dxf = insertelement <4 x ptr> %i.dxe, ptr %i.dur, i64 2
  %i.dxg = insertelement <4 x ptr> %i.dxf, ptr %i.duy, i64 3
  %i.dxh = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.dxg, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !22 ; 5 uses
  %i.dxi = insertelement <4 x ptr> poison, ptr %i.dvr, i64 0
  %i.dxj = insertelement <4 x ptr> %i.dxi, ptr %i.dvz, i64 1
  %i.dxk = insertelement <4 x ptr> %i.dxj, ptr %i.dus, i64 2
  %i.dxl = insertelement <4 x ptr> %i.dxk, ptr %i.duz, i64 3
  %i.dxm = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.dxl, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !22 ; 5 uses
  %i.dxn = insertelement <8 x float> poison, float %i.dww, i64 0
  %i.dxo = insertelement <8 x float> %i.dxn, float %i.dwy, i64 1
  %i.dxp = insertelement <8 x float> %i.dxo, float %i.dxa, i64 2
  %i.dxq = insertelement <8 x float> %i.dxp, float %i.dxc, i64 3
  %i.dxr = shufflevector <4 x float> %i.dxh, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dxs = shufflevector <8 x float> %i.dxq, <8 x float> %i.dxr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.dxt = insertelement <8 x float> poison, float %i.dwv, i64 0
  %i.dxu = insertelement <8 x float> %i.dxt, float %i.dwx, i64 1
  %i.dxv = insertelement <8 x float> %i.dxu, float %i.dwz, i64 2
  %i.dxw = insertelement <8 x float> %i.dxv, float %i.dxb, i64 3
  %i.dxx = shufflevector <4 x float> %i.dxm, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dxy = shufflevector <8 x float> %i.dxw, <8 x float> %i.dxx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.dxz = fadd fast <8 x float> %i.dxs, %i.dxy   ; 5 uses
  %i.dya = fsub fast <8 x float> %i.dxs, %i.dxy
  %i.dyb = shufflevector <8 x float> %i.dxz, <8 x float> %i.dya, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 15>
  %i.dyc = fadd fast float %i.dxa, %i.dwz
  %i.dyd = fadd fast float %i.dwy, %i.dwx
  %i.dye = extractelement <8 x float> %i.dxz, i64 0
  %i.dyf = fadd fast float %i.duu, %i.dye
  %i.dyg = fadd fast float %i.dvb, %i.dyd
  %i.dyh = fsub fast float %i.dwz, %i.dxa         ; 2 uses
  %i.dyi = fadd fast float %i.dvi, %i.dyc
  %i.dyj = fmul fast float %i.dyh, f0x3EB504F3
  %i.dyk = fadd fast float %i.dyj, %i.dwf
  %i.dyl = fsub fast float %i.dxb, %i.dxc         ; 2 uses
  %i.dym = extractelement <8 x float> %i.dxz, i64 3
  %i.dyn = fadd fast float %i.dvp, %i.dym
  %i.dyo = fmul fast float %i.dyl, f0x3EB504F3
  %i.dyp = fadd fast float %i.dyo, %i.dwg
  %foldExtExtBinop = fsub fast <4 x float> %i.dxm, %i.dxh ; 2 uses
  %i.dyq = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.dyr = extractelement <8 x float> %i.dxz, i64 4
  %i.dys = fadd fast float %i.dvw, %i.dyr
  %i.dyt = fmul fast float %i.dyq, f0x3EB504F3
  %i.dyu = fadd fast float %i.dyt, %i.dvx
  %i.dyv = insertelement <2 x float> poison, float %i.dwv, i64 0
  %i.dyw = insertelement <2 x float> %i.dyv, float %i.dwx, i64 1
  %i.dyx = insertelement <2 x float> poison, float %i.dww, i64 0
  %i.dyy = insertelement <2 x float> %i.dyx, float %i.dwy, i64 1
  %i.dyz = fsub fast <2 x float> %i.dyw, %i.dyy   ; 2 uses
  %i.dza = fmul fast <2 x float> %i.dyz, splat (float f0x3EB504F3)
  %i.dzb = shufflevector <4 x float> %i.dxm, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.dzc = insertelement <4 x float> %i.dzb, float %i.dwk, i64 2
  %i.dzd = insertelement <4 x float> %i.dzc, float %i.dwm, i64 3
  %i.dze = shufflevector <4 x float> %i.dzd, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dzf = shufflevector <8 x float> %i.dze, <8 x float> %i.dwt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 poison, i32 poison>
  %i.dzg = shufflevector <2 x float> %i.dza, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dzh = shufflevector <8 x float> %i.dzf, <8 x float> %i.dzg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.dzi = shufflevector <4 x float> %i.dxh, <4 x float> poison, <8 x i32> <i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dzj = insertelement <8 x float> %i.dzi, float %i.dwj, i64 2
  %i.dzk = insertelement <8 x float> %i.dzj, float %i.dwl, i64 3
  %i.dzl = shufflevector <4 x float> %i.dwr, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dzm = shufflevector <8 x float> %i.dzk, <8 x float> %i.dzl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dzn = fadd fast <8 x float> %i.dzh, %i.dzm   ; 5 uses
  %foldExtExtBinop2353 = fadd fast <4 x float> %i.dxm, %i.dxh
  %i.dzo = extractelement <4 x float> %foldExtExtBinop2353, i64 3
  %i.dzp = extractelement <8 x float> %i.dzn, i64 0
  %i.dzq = fadd fast float %i.dyf, %i.dzp
  %i.dzr = fadd fast float %i.dyg, %i.dzo         ; 2 uses
  %i.dzs = fsub fast float %i.dwj, %i.dwk
  %i.dzt = fadd fast float %i.dyi, %i.dwu         ; 2 uses
  %i.dzu = fsub fast float %i.dwl, %i.dwm
  %i.dzv = extractelement <8 x float> %i.dzn, i64 3
  %i.dzw = fadd fast float %i.dyn, %i.dzv         ; 2 uses
  %i.dzx = extractelement <4 x float> %i.dwr, i64 0
  %i.dzy = fsub fast float %i.dzx, %i.dwh         ; 2 uses
  %i.dzz = extractelement <8 x float> %i.dzn, i64 4
  %i.eaa = fadd fast float %i.dys, %i.dzz         ; 2 uses
  %i.eab = fmul fast float %i.dzy, f0x403504F3
  %i.eac = fadd fast float %i.dyu, %i.eab         ; 2 uses
  %foldExtExtBinop2355 = fsub fast <4 x float> %i.dxm, %i.dxh ; 2 uses
  %i.ead = extractelement <4 x float> %foldExtExtBinop2355, i64 1
  %i.eae = extractelement <4 x float> %i.dwr, i64 1
  %i.eaf = fsub fast float %i.eae, %i.dwi         ; 2 uses
  %i.eag = extractelement <8 x float> %i.dxz, i64 5
  %i.eah = fadd fast float %i.dwe, %i.eag
  %i.eai = extractelement <8 x float> %i.dzn, i64 5
  %i.eaj = fadd fast float %i.eah, %i.eai
  %i.eak = shufflevector <2 x float> %i.dyz, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eal = insertelement <16 x float> %i.eak, float %i.dyh, i64 2
  %i.eam = insertelement <16 x float> %i.eal, float %i.dyl, i64 3
  %i.ean = shufflevector <4 x float> %foldExtExtBinop, <4 x float> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eao = shufflevector <16 x float> %i.eam, <16 x float> %i.ean, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eap = shufflevector <4 x float> %foldExtExtBinop2355, <4 x float> poison, <16 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eaq = shufflevector <16 x float> %i.eao, <16 x float> %i.eap, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ear = shufflevector <8 x float> %i.dyb, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eas = shufflevector <16 x float> %i.eaq, <16 x float> %i.ear, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison>
  %i.eat = insertelement <16 x float> %i.eas, float %i.dzs, i64 14
  %i.eau = insertelement <16 x float> %i.eat, float %i.dzu, i64 15 ; 2 uses
  %i.eav = fmul fast <16 x float> %i.eau, <float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float f0x403504F3, float f0x403504F3, float f0x403504F3, float f0x403504F3>
  %i.eaw = shufflevector <16 x float> %i.eau, <16 x float> poison, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eax = insertelement <16 x float> %i.eaw, float %i.dzy, i64 4
  %i.eay = insertelement <16 x float> %i.eax, float %i.eaf, i64 5
  %i.eaz = shufflevector <8 x float> %i.dzn, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eba = shufflevector <16 x float> %i.eay, <16 x float> %i.eaz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison>
  %i.ebb = insertelement <16 x float> %i.eba, float %i.dyk, i64 14
  %i.ebc = insertelement <16 x float> %i.ebb, float %i.dyp, i64 15
  %i.ebd = fmul fast <16 x float> %i.ebc, <float f0x3FB504F3, float f0x3FB504F3, float f0x3FB504F3, float f0x3FB504F3, float f0x3FB504F3, float f0x3FB504F3, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.ebe = fadd fast <16 x float> %i.ebd, %i.eav  ; 16 uses
  %i.ebf = load float, ptr %i.dwd, align 4, !tbaa !22
  %i.ebg = fmul fast float %i.ead, f0x3EB504F3
  %i.ebh = fadd fast float %i.ebg, %i.ebf
  %i.ebi = fmul fast float %i.eaf, f0x403504F3
  %i.ebj = fadd fast float %i.ebh, %i.ebi
  %i.ebk = trunc i64 %indvars.iv2304 to i32
  %i.ebl = add i32 %4, %i.ebk                     ; 2 uses
  %i.ebm = sdiv i32 %i.ebl, %i.p
  %i.ebn = srem i32 %i.ebl, %i.p
  %i.ebo = shl nsw i32 %i.ebm, 2                  ; 5 uses
  %i.ebp = sext i32 %i.ebo to i64
  %.reass2218 = mul i64 %factor.op.mul2217, %i.ebp
  %i.ebq = getelementptr inbounds nuw i8, ptr %i.dtt, i64 %.reass2218
  %i.ebr = shl nsw i32 %i.ebn, 2                  ; 4 uses
  %i.ebs = sext i32 %i.ebr to i64
  %i.ebt = getelementptr inbounds [2 x i8], ptr %i.ebq, i64 %i.ebs ; 6 uses
  %i.ebu = or disjoint i32 %i.ebr, 1
  %i.ebv = icmp slt i32 %i.ebu, %i.f              ; 4 uses
  %i.ebw = or disjoint i32 %i.ebr, 2
  %i.ebx = icmp slt i32 %i.ebw, %i.f              ; 4 uses
  %i.eby = or disjoint i32 %i.ebr, 3
  %i.ebz = icmp slt i32 %i.eby, %i.f              ; 4 uses
  %.not1169 = icmp slt i32 %i.ebo, %i.h
  br i1 %.not1169, label %bb.de, label %bb.du

bb.de:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit
  %i.eca = fadd fast float %i.dzt, %i.dzr         ; 2 uses
  %i.ecb = fadd fast float %i.eaa, %i.dzw         ; 2 uses
  %i.ecc = fsub fast float %i.dzr, %i.dzt         ; 2 uses
  %i.ecd = fsub fast float %i.dzw, %i.eaa         ; 2 uses
  %i.ece = fadd fast float %i.dzq, %i.dto
  %i.ecf = fadd fast float %i.ece, %i.eca
  %i.ecg = fadd fast float %i.ecf, %i.ecb         ; 8 uses
  %i.ech = fmul fast float %i.ecc, f0x3F3504F3
  %i.eci = fadd fast float %i.ech, %i.dto
  %i.ecj = fmul fast float %i.ecd, f0x3FB504F3
  %i.eck = fadd fast float %i.eci, %i.ecj         ; 8 uses
  %i.ecl = fmul fast float %i.eca, 5.000000e-01
  %i.ecm = fadd fast float %i.ecl, %i.dto
  %i.ecn = fmul fast float %i.ecb, 2.000000e+00
  %i.eco = fadd fast float %i.ecm, %i.ecn         ; 8 uses
  %i.ecp = fmul fast float %i.ecc, f0x3EB504F3
  %i.ecq = fmul fast float %i.ecd, f0x403504F3
  %i.ecr = fadd fast float %i.ecp, %i.dto
  %i.ecs = fadd fast float %i.ecr, %i.eaj
  %i.ect = fadd fast float %i.ecs, %i.ecq         ; 8 uses
  %i.ecu = insertelement <4 x float> poison, float %i.ecg, i64 0
  %i.ecv = insertelement <4 x float> %i.ecu, float %i.eck, i64 1
  %i.ecw = insertelement <4 x float> %i.ecv, float %i.eco, i64 2
  %i.ecx = insertelement <4 x float> %i.ecw, float %i.ect, i64 3 ; 6 uses
  switch i32 %6, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2021
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2024
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2018
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2027
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2030
    i32 6, label %bb.df
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2021: ; preds = %bb.de
  %i.ecy = tail call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ecx, <4 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2024: ; preds = %bb.de
  %i.ecz = load float, ptr %i.dty, align 4, !tbaa !22
  %i.eda = fcmp fast ogt <4 x float> %i.ecx, zeroinitializer
  %i.edb = insertelement <4 x float> poison, float %i.ecz, i64 0
  %i.edc = shufflevector <4 x float> %i.edb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.edd = select <4 x i1> %i.eda, <4 x float> splat (float 1.000000e+00), <4 x float> %i.edc
  %i.ede = fmul fast <4 x float> %i.edd, %i.ecx
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2018: ; preds = %bb.de
  %i.edf = load float, ptr %i.dtw, align 4, !tbaa !22 ; 3 uses
  %i.edg = load float, ptr %i.dtx, align 4, !tbaa !22 ; 4 uses
  %i.edh = insertelement <2 x float> poison, float %i.ecg, i64 0
  %i.edi = insertelement <2 x float> %i.edh, float %i.eck, i64 1
  %i.edj = insertelement <2 x float> poison, float %i.edf, i64 0
  %i.edk = shufflevector <2 x float> %i.edj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.edl = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.edi, <2 x float> %i.edk) ; 2 uses
  %i.edm = insertelement <2 x float> poison, float %i.edg, i64 0
  %i.edn = shufflevector <2 x float> %i.edm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.edo = fcmp fast ogt <2 x float> %i.edl, %i.edn
  %i.edp = select <2 x i1> %i.edo, <2 x float> %i.edn, <2 x float> %i.edl
  %.01305 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.eco, float %i.edf) ; 2 uses
  %i.edq = fcmp fast ogt float %.01305, %i.edg
  %.113062083 = select i1 %i.edq, float %i.edg, float %.01305
  %.01307 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.ect, float %i.edf)
  %spec.select2114 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.01307, float %i.edg)
  %i.edr = shufflevector <2 x float> %i.edp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eds = insertelement <4 x float> %i.edr, float %.113062083, i64 2
  %i.edt = insertelement <4 x float> %i.eds, float %spec.select2114, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2027: ; preds = %bb.de
  %i.edu = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.ecx, <4 x float> splat (float f0x42B0C0A5))
  %i.edv = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.edu, <4 x float> splat (float f0xC2B0C0A5))
  %i.edw = fneg fast <4 x float> %i.edv
  %i.edx = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.edw)
  %i.edy = fadd fast <4 x float> %i.edx, splat (float 1.000000e+00)
  %i.edz = fdiv fast <4 x float> splat (float 1.000000e+00), %i.edy
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2030: ; preds = %bb.de
  %i.eea = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.ecg)
  %i.eeb = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.eck)
  %i.eec = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.eco)
  %i.eed = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.ect)
  %i.eee = fadd fast float %i.eea, 1.000000e+00
  %i.eef = tail call fast float @llvm.log.f32(float %i.eee)
  %i.eeg = tail call fast float @llvm.tanh.f32(float %i.eef)
  %i.eeh = fadd fast float %i.eeb, 1.000000e+00
  %i.eei = tail call fast float @llvm.log.f32(float %i.eeh)
  %i.eej = tail call fast float @llvm.tanh.f32(float %i.eei)
  %i.eek = fadd fast float %i.eec, 1.000000e+00
  %i.eel = tail call fast float @llvm.log.f32(float %i.eek)
  %i.eem = tail call fast float @llvm.tanh.f32(float %i.eel)
  %i.een = fadd fast float %i.eed, 1.000000e+00
  %i.eeo = tail call fast float @llvm.log.f32(float %i.een)
  %i.eep = tail call fast float @llvm.tanh.f32(float %i.eeo)
  %i.eeq = insertelement <4 x float> poison, float %i.eeg, i64 0
  %i.eer = insertelement <4 x float> %i.eeq, float %i.eej, i64 1
  %i.ees = insertelement <4 x float> %i.eer, float %i.eem, i64 2
  %i.eet = insertelement <4 x float> %i.ees, float %i.eep, i64 3
  %i.eeu = fmul fast <4 x float> %i.eet, %i.ecx
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.df:                                            ; preds = %bb.de
  %i.eev = load float, ptr %i.dtu, align 4, !tbaa !22 ; 9 uses
  %i.eew = load float, ptr %i.dtv, align 4, !tbaa !22 ; 5 uses
  %i.eex = fneg fast float %i.eew
  %i.eey = fdiv fast float %i.eex, %i.eev         ; 8 uses
  %i.eez = fcmp fast olt float %i.ecg, %i.eey
  br i1 %i.eez, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.efa = fdiv fast float 1.000000e+00, %i.eev
  %i.efb = fadd fast float %i.eey, %i.efa
  %i.efc = fcmp fast ogt float %i.ecg, %i.efb
  br i1 %i.efc, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.efd = fmul fast float %i.eev, %i.ecg
  %i.efe = fadd fast float %i.efd, %i.eew
  %i.eff = fmul fast float %i.efe, %i.ecg
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread: ; preds = %bb.dh, %bb.dg, %bb.df
  %.113022014 = phi float [ %i.eff, %bb.dh ], [ 0.000000e+00, %bb.df ], [ %i.ecg, %bb.dg ]
  %i.efg = fcmp fast olt float %i.eck, %i.eey
  br i1 %i.efg, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread, label %bb.di

bb.di:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread
  %i.efh = fdiv fast float 1.000000e+00, %i.eev
  %i.efi = fadd fast float %i.eey, %i.efh
  %i.efj = fcmp fast ogt float %i.eck, %i.efi
  br i1 %i.efj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.efk = fmul fast float %i.eev, %i.eck
  %i.efl = fadd fast float %i.efk, %i.eew
  %i.efm = fmul fast float %i.efl, %i.eck
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread: ; preds = %bb.dj, %bb.di, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread
  %.113042037 = phi float [ %i.efm, %bb.dj ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread ], [ %i.eck, %bb.di ]
  %i.efn = fcmp fast olt float %i.eco, %i.eey
  br i1 %i.efn, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread, label %bb.dk

bb.dk:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread
  %i.efo = fdiv fast float 1.000000e+00, %i.eev
  %i.efp = fadd fast float %i.eey, %i.efo
  %i.efq = fcmp fast ogt float %i.eco, %i.efp
  br i1 %i.efq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.efr = fmul fast float %i.eev, %i.eco
  %i.efs = fadd fast float %i.efr, %i.eew
  %i.eft = fmul fast float %i.efs, %i.eco
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread: ; preds = %bb.dl, %bb.dk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread
  %.113062073 = phi float [ %i.eft, %bb.dl ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread ], [ %i.eco, %bb.dk ]
  %i.efu = fcmp fast olt float %i.ect, %i.eey
  %i.efv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.113022014, i64 0
  %i.efw = insertelement <4 x float> %i.efv, float %.113042037, i64 1
  %i.efx = insertelement <4 x float> %i.efw, float %.113062073, i64 2 ; 3 uses
  br i1 %i.efu, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.dm

bb.dm:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread
  %i.efy = fdiv fast float 1.000000e+00, %i.eev
  %i.efz = fadd fast float %i.eey, %i.efy
  %i.ega = fcmp fast ogt float %i.ect, %i.efz
  %i.egb = insertelement <4 x float> %i.efx, float %i.ect, i64 3
  br i1 %i.ega, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.egc = fmul fast float %i.eev, %i.ect
  %i.egd = fadd fast float %i.egc, %i.eew
  %i.ege = fmul fast float %i.egd, %i.ect
  %i.egf = insertelement <4 x float> %i.efx, float %i.ege, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2018, %bb.de, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2021, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2024, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2027, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2030, %bb.dm, %bb.dn
  %i.egg = phi <4 x float> [ %i.efx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread ], [ %i.ecy, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2021 ], [ %i.ede, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2024 ], [ %i.ecx, %bb.de ], [ %i.edt, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2018 ], [ %i.edz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2027 ], [ %i.eeu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2030 ], [ %i.egf, %bb.dn ], [ %i.egb, %bb.dm ] ; 4 uses
  %i.egh = bitcast <4 x float> %i.egg to <8 x i16>
  %i.egi = extractelement <8 x i16> %i.egh, i64 1
  store i16 %i.egi, ptr %i.ebt, align 2, !tbaa !24
  br i1 %i.ebv, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %i.egj = bitcast <4 x float> %i.egg to <8 x i16>
  %i.egk = extractelement <8 x i16> %i.egj, i64 3
  %i.egl = getelementptr inbounds nuw i8, ptr %i.ebt, i64 2
  store i16 %i.egk, ptr %i.egl, align 2, !tbaa !24
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  br i1 %i.ebx, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.egm = bitcast <4 x float> %i.egg to <8 x i16>
  %i.egn = extractelement <8 x i16> %i.egm, i64 5
  %i.ego = getelementptr inbounds nuw i8, ptr %i.ebt, i64 4
  store i16 %i.egn, ptr %i.ego, align 2, !tbaa !24
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  br i1 %i.ebz, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.egp = bitcast <4 x float> %i.egg to <8 x i16>
  %i.egq = extractelement <8 x i16> %i.egp, i64 7
  %i.egr = getelementptr inbounds nuw i8, ptr %i.ebt, i64 6
  store i16 %i.egq, ptr %i.egr, align 2, !tbaa !24
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.egs = getelementptr inbounds [2 x i8], ptr %i.ebt, i64 %i.dbr
  br label %bb.du

bb.du:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.dt
  %.1 = phi ptr [ %i.ebt, %_ZN4ncnn3MatD2Ev.exit ], [ %i.egs, %bb.dt ] ; 6 uses
  %i.egt = or disjoint i32 %i.ebo, 1
  %.not1169.1 = icmp slt i32 %i.egt, %i.h
  br i1 %.not1169.1, label %bb.dv, label %bb.el

bb.dv:                                            ; preds = %bb.du
  %.sroa.14.32.vec.extract = extractelement <16 x float> %i.ebe, i64 2 ; 2 uses
  %.sroa.14.44.vec.extract = extractelement <16 x float> %i.ebe, i64 5
  %.sroa.14.24.vec.extract = extractelement <16 x float> %i.ebe, i64 0
  %.sroa.14.28.vec.extract = extractelement <16 x float> %i.ebe, i64 1 ; 2 uses
  %.sroa.14.36.vec.extract = extractelement <16 x float> %i.ebe, i64 3 ; 2 uses
  %.sroa.14.40.vec.extract = extractelement <16 x float> %i.ebe, i64 4 ; 2 uses
  %i.egu = fadd fast float %.sroa.14.32.vec.extract, %.sroa.14.28.vec.extract ; 2 uses
  %i.egv = fadd fast float %.sroa.14.40.vec.extract, %.sroa.14.36.vec.extract ; 2 uses
  %i.egw = fsub fast float %.sroa.14.28.vec.extract, %.sroa.14.32.vec.extract ; 2 uses
  %i.egx = fsub fast float %.sroa.14.36.vec.extract, %.sroa.14.40.vec.extract ; 2 uses
  %i.egy = fadd fast float %.sroa.14.24.vec.extract, %i.dto
  %i.egz = fadd fast float %i.egy, %i.egu
  %i.eha = fadd fast float %i.egz, %i.egv         ; 8 uses
  %i.ehb = fmul fast float %i.egw, f0x3F3504F3
  %i.ehc = fadd fast float %i.ehb, %i.dto
  %i.ehd = fmul fast float %i.egx, f0x3FB504F3
  %i.ehe = fadd fast float %i.ehc, %i.ehd         ; 8 uses
  %i.ehf = fmul fast float %i.egu, 5.000000e-01
  %i.ehg = fadd fast float %i.ehf, %i.dto
  %i.ehh = fmul fast float %i.egv, 2.000000e+00
  %i.ehi = fadd fast float %i.ehg, %i.ehh         ; 8 uses
  %i.ehj = fmul fast float %i.egw, f0x3EB504F3
  %i.ehk = fmul fast float %i.egx, f0x403504F3
  %i.ehl = fadd fast float %i.ehj, %i.dto
  %i.ehm = fadd fast float %i.ehl, %.sroa.14.44.vec.extract
  %i.ehn = fadd fast float %i.ehm, %i.ehk         ; 8 uses
  %i.eho = insertelement <4 x float> poison, float %i.eha, i64 0
  %i.ehp = insertelement <4 x float> %i.eho, float %i.ehe, i64 1
  %i.ehq = insertelement <4 x float> %i.ehp, float %i.ehi, i64 2
  %i.ehr = insertelement <4 x float> %i.ehq, float %i.ehn, i64 3 ; 6 uses
  switch i32 %6, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2021.1
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2024.1
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2018.1
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2027.1
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2030.1
    i32 6, label %bb.dw
  ]

bb.dw:                                            ; preds = %bb.dv
  %i.ehs = load float, ptr %i.dtz, align 4, !tbaa !22 ; 9 uses
  %i.eht = load float, ptr %i.dua, align 4, !tbaa !22 ; 5 uses
  %i.ehu = fneg fast float %i.eht
  %i.ehv = fdiv fast float %i.ehu, %i.ehs         ; 8 uses
  %i.ehw = fcmp fast olt float %i.eha, %i.ehv
  br i1 %i.ehw, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.1, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ehx = fdiv fast float 1.000000e+00, %i.ehs
  %i.ehy = fadd fast float %i.ehv, %i.ehx
  %i.ehz = fcmp fast ogt float %i.eha, %i.ehy
  br i1 %i.ehz, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.1, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.eia = fmul fast float %i.ehs, %i.eha
  %i.eib = fadd fast float %i.eia, %i.eht
  %i.eic = fmul fast float %i.eib, %i.eha
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.1: ; preds = %bb.dy, %bb.dx, %bb.dw
  %.113022014.1 = phi float [ %i.eic, %bb.dy ], [ 0.000000e+00, %bb.dw ], [ %i.eha, %bb.dx ]
  %i.eid = fcmp fast olt float %i.ehe, %i.ehv
  br i1 %i.eid, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.1, label %bb.dz

bb.dz:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.1
  %i.eie = fdiv fast float 1.000000e+00, %i.ehs
  %i.eif = fadd fast float %i.ehv, %i.eie
  %i.eig = fcmp fast ogt float %i.ehe, %i.eif
  br i1 %i.eig, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.1, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.eih = fmul fast float %i.ehs, %i.ehe
  %i.eii = fadd fast float %i.eih, %i.eht
  %i.eij = fmul fast float %i.eii, %i.ehe
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.1: ; preds = %bb.ea, %bb.dz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.1
  %.113042037.1 = phi float [ %i.eij, %bb.ea ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.1 ], [ %i.ehe, %bb.dz ]
  %i.eik = fcmp fast olt float %i.ehi, %i.ehv
  br i1 %i.eik, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.1, label %bb.eb

bb.eb:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.1
  %i.eil = fdiv fast float 1.000000e+00, %i.ehs
  %i.eim = fadd fast float %i.ehv, %i.eil
  %i.ein = fcmp fast ogt float %i.ehi, %i.eim
  br i1 %i.ein, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.1, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.eio = fmul fast float %i.ehs, %i.ehi
  %i.eip = fadd fast float %i.eio, %i.eht
  %i.eiq = fmul fast float %i.eip, %i.ehi
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.1: ; preds = %bb.ec, %bb.eb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.1
  %.113062073.1 = phi float [ %i.eiq, %bb.ec ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.1 ], [ %i.ehi, %bb.eb ]
  %i.eir = fcmp fast olt float %i.ehn, %i.ehv
  %i.eis = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.113022014.1, i64 0
  %i.eit = insertelement <4 x float> %i.eis, float %.113042037.1, i64 1
  %i.eiu = insertelement <4 x float> %i.eit, float %.113062073.1, i64 2 ; 3 uses
  br i1 %i.eir, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1, label %bb.ed

bb.ed:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.1
  %i.eiv = fdiv fast float 1.000000e+00, %i.ehs
  %i.eiw = fadd fast float %i.ehv, %i.eiv
  %i.eix = fcmp fast ogt float %i.ehn, %i.eiw
  %i.eiy = insertelement <4 x float> %i.eiu, float %i.ehn, i64 3
  br i1 %i.eix, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.eiz = fmul fast float %i.ehs, %i.ehn
  %i.eja = fadd fast float %i.eiz, %i.eht
  %i.ejb = fmul fast float %i.eja, %i.ehn
  %i.ejc = insertelement <4 x float> %i.eiu, float %i.ejb, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2030.1: ; preds = %bb.dv
  %i.ejd = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.eha)
  %i.eje = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.ehe)
  %i.ejf = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.ehi)
  %i.ejg = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.ehn)
  %i.ejh = fadd fast float %i.ejd, 1.000000e+00
  %i.eji = tail call fast float @llvm.log.f32(float %i.ejh)
  %i.ejj = tail call fast float @llvm.tanh.f32(float %i.eji)
  %i.ejk = fadd fast float %i.eje, 1.000000e+00
  %i.ejl = tail call fast float @llvm.log.f32(float %i.ejk)
  %i.ejm = tail call fast float @llvm.tanh.f32(float %i.ejl)
  %i.ejn = fadd fast float %i.ejf, 1.000000e+00
  %i.ejo = tail call fast float @llvm.log.f32(float %i.ejn)
  %i.ejp = tail call fast float @llvm.tanh.f32(float %i.ejo)
  %i.ejq = fadd fast float %i.ejg, 1.000000e+00
  %i.ejr = tail call fast float @llvm.log.f32(float %i.ejq)
  %i.ejs = tail call fast float @llvm.tanh.f32(float %i.ejr)
  %i.ejt = insertelement <4 x float> poison, float %i.ejj, i64 0
  %i.eju = insertelement <4 x float> %i.ejt, float %i.ejm, i64 1
  %i.ejv = insertelement <4 x float> %i.eju, float %i.ejp, i64 2
  %i.ejw = insertelement <4 x float> %i.ejv, float %i.ejs, i64 3
  %i.ejx = fmul fast <4 x float> %i.ejw, %i.ehr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2027.1: ; preds = %bb.dv
  %i.ejy = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.ehr, <4 x float> splat (float f0x42B0C0A5))
  %i.ejz = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ejy, <4 x float> splat (float f0xC2B0C0A5))
  %i.eka = fneg fast <4 x float> %i.ejz
  %i.ekb = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.eka)
  %i.ekc = fadd fast <4 x float> %i.ekb, splat (float 1.000000e+00)
  %i.ekd = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ekc
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2018.1: ; preds = %bb.dv
  %i.eke = load float, ptr %i.dub, align 4, !tbaa !22 ; 3 uses
  %i.ekf = load float, ptr %i.duc, align 4, !tbaa !22 ; 4 uses
  %i.ekg = insertelement <2 x float> poison, float %i.eha, i64 0
  %i.ekh = insertelement <2 x float> %i.ekg, float %i.ehe, i64 1
  %i.eki = insertelement <2 x float> poison, float %i.eke, i64 0
  %i.ekj = shufflevector <2 x float> %i.eki, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ekk = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ekh, <2 x float> %i.ekj) ; 2 uses
  %i.ekl = insertelement <2 x float> poison, float %i.ekf, i64 0
  %i.ekm = shufflevector <2 x float> %i.ekl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ekn = fcmp fast ogt <2 x float> %i.ekk, %i.ekm
  %i.eko = select <2 x i1> %i.ekn, <2 x float> %i.ekm, <2 x float> %i.ekk
  %.01305.1 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.ehi, float %i.eke) ; 2 uses
  %i.ekp = fcmp fast ogt float %.01305.1, %i.ekf
  %.113062083.1 = select i1 %i.ekp, float %i.ekf, float %.01305.1
  %.01307.1 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.ehn, float %i.eke)
  %spec.select2114.1 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.01307.1, float %i.ekf)
  %i.ekq = shufflevector <2 x float> %i.eko, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ekr = insertelement <4 x float> %i.ekq, float %.113062083.1, i64 2
  %i.eks = insertelement <4 x float> %i.ekr, float %spec.select2114.1, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2024.1: ; preds = %bb.dv
  %i.ekt = load float, ptr %i.dud, align 4, !tbaa !22
  %i.eku = fcmp fast ogt <4 x float> %i.ehr, zeroinitializer
  %i.ekv = insertelement <4 x float> poison, float %i.ekt, i64 0
  %i.ekw = shufflevector <4 x float> %i.ekv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ekx = select <4 x i1> %i.eku, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ekw
  %i.eky = fmul fast <4 x float> %i.ekx, %i.ehr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2021.1: ; preds = %bb.dv
  %i.ekz = tail call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ehr, <4 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit.1:         ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2021.1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2024.1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2018.1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2027.1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2030.1, %bb.ee, %bb.ed, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.1, %bb.dv
  %i.ela = phi <4 x float> [ %i.eiu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.1 ], [ %i.ekz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2021.1 ], [ %i.eky, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2024.1 ], [ %i.ehr, %bb.dv ], [ %i.eks, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2018.1 ], [ %i.ekd, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2027.1 ], [ %i.ejx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2030.1 ], [ %i.ejc, %bb.ee ], [ %i.eiy, %bb.ed ] ; 4 uses
  %i.elb = bitcast <4 x float> %i.ela to <8 x i16>
  %i.elc = extractelement <8 x i16> %i.elb, i64 1
  store i16 %i.elc, ptr %.1, align 2, !tbaa !24
  br i1 %i.ebv, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1
  %i.eld = bitcast <4 x float> %i.ela to <8 x i16>
  %i.ele = extractelement <8 x i16> %i.eld, i64 3
  %i.elf = getelementptr inbounds nuw i8, ptr %.1, i64 2
  store i16 %i.ele, ptr %i.elf, align 2, !tbaa !24
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1
  br i1 %i.ebx, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.elg = bitcast <4 x float> %i.ela to <8 x i16>
  %i.elh = extractelement <8 x i16> %i.elg, i64 5
  %i.eli = getelementptr inbounds nuw i8, ptr %.1, i64 4
  store i16 %i.elh, ptr %i.eli, align 2, !tbaa !24
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  br i1 %i.ebz, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.elj = bitcast <4 x float> %i.ela to <8 x i16>
  %i.elk = extractelement <8 x i16> %i.elj, i64 7
  %i.ell = getelementptr inbounds nuw i8, ptr %.1, i64 6
  store i16 %i.elk, ptr %i.ell, align 2, !tbaa !24
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.elm = getelementptr inbounds [2 x i8], ptr %.1, i64 %i.dbr
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.du
  %.1.1 = phi ptr [ %.1, %bb.du ], [ %i.elm, %bb.ek ] ; 6 uses
  %i.eln = or disjoint i32 %i.ebo, 2
  %.not1169.2 = icmp slt i32 %i.eln, %i.h
  br i1 %.not1169.2, label %bb.em, label %bb.fc

bb.em:                                            ; preds = %bb.el
  %.sroa.14.56.vec.extract = extractelement <16 x float> %i.ebe, i64 8 ; 2 uses
  %.sroa.14.68.vec.extract = extractelement <16 x float> %i.ebe, i64 11
  %.sroa.14.48.vec.extract = extractelement <16 x float> %i.ebe, i64 6
  %.sroa.14.52.vec.extract = extractelement <16 x float> %i.ebe, i64 7 ; 2 uses
  %.sroa.14.60.vec.extract = extractelement <16 x float> %i.ebe, i64 9 ; 2 uses
  %.sroa.14.64.vec.extract = extractelement <16 x float> %i.ebe, i64 10 ; 2 uses
  %i.elo = fadd fast float %.sroa.14.56.vec.extract, %.sroa.14.52.vec.extract ; 2 uses
  %i.elp = fadd fast float %.sroa.14.64.vec.extract, %.sroa.14.60.vec.extract ; 2 uses
  %i.elq = fsub fast float %.sroa.14.52.vec.extract, %.sroa.14.56.vec.extract ; 2 uses
  %i.elr = fsub fast float %.sroa.14.60.vec.extract, %.sroa.14.64.vec.extract ; 2 uses
  %i.els = fadd fast float %.sroa.14.48.vec.extract, %i.dto
  %i.elt = fadd fast float %i.els, %i.elo
  %i.elu = fadd fast float %i.elt, %i.elp         ; 8 uses
  %i.elv = fmul fast float %i.elq, f0x3F3504F3
  %i.elw = fadd fast float %i.elv, %i.dto
  %i.elx = fmul fast float %i.elr, f0x3FB504F3
  %i.ely = fadd fast float %i.elw, %i.elx         ; 8 uses
  %i.elz = fmul fast float %i.elo, 5.000000e-01
  %i.ema = fadd fast float %i.elz, %i.dto
  %i.emb = fmul fast float %i.elp, 2.000000e+00
  %i.emc = fadd fast float %i.ema, %i.emb         ; 8 uses
  %i.emd = fmul fast float %i.elq, f0x3EB504F3
  %i.eme = fmul fast float %i.elr, f0x403504F3
  %i.emf = fadd fast float %i.emd, %i.dto
  %i.emg = fadd fast float %i.emf, %.sroa.14.68.vec.extract
  %i.emh = fadd fast float %i.emg, %i.eme         ; 8 uses
  %i.emi = insertelement <4 x float> poison, float %i.elu, i64 0
  %i.emj = insertelement <4 x float> %i.emi, float %i.ely, i64 1
  %i.emk = insertelement <4 x float> %i.emj, float %i.emc, i64 2
  %i.eml = insertelement <4 x float> %i.emk, float %i.emh, i64 3 ; 6 uses
  switch i32 %6, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.2 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2021.2
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2024.2
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2018.2
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2027.2
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2030.2
    i32 6, label %bb.en
  ]

bb.en:                                            ; preds = %bb.em
  %i.emm = load float, ptr %i.due, align 4, !tbaa !22 ; 9 uses
  %i.emn = load float, ptr %i.duf, align 4, !tbaa !22 ; 5 uses
  %i.emo = fneg fast float %i.emn
  %i.emp = fdiv fast float %i.emo, %i.emm         ; 8 uses
  %i.emq = fcmp fast olt float %i.elu, %i.emp
  br i1 %i.emq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.2, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.emr = fdiv fast float 1.000000e+00, %i.emm
  %i.ems = fadd fast float %i.emp, %i.emr
  %i.emt = fcmp fast ogt float %i.elu, %i.ems
  br i1 %i.emt, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.2, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.emu = fmul fast float %i.emm, %i.elu
  %i.emv = fadd fast float %i.emu, %i.emn
  %i.emw = fmul fast float %i.emv, %i.elu
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.2: ; preds = %bb.ep, %bb.eo, %bb.en
  %.113022014.2 = phi float [ %i.emw, %bb.ep ], [ 0.000000e+00, %bb.en ], [ %i.elu, %bb.eo ]
  %i.emx = fcmp fast olt float %i.ely, %i.emp
  br i1 %i.emx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.2, label %bb.eq

bb.eq:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.2
  %i.emy = fdiv fast float 1.000000e+00, %i.emm
  %i.emz = fadd fast float %i.emp, %i.emy
  %i.ena = fcmp fast ogt float %i.ely, %i.emz
  br i1 %i.ena, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.2, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.enb = fmul fast float %i.emm, %i.ely
  %i.enc = fadd fast float %i.enb, %i.emn
  %i.end = fmul fast float %i.enc, %i.ely
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.2: ; preds = %bb.er, %bb.eq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.2
  %.113042037.2 = phi float [ %i.end, %bb.er ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.2 ], [ %i.ely, %bb.eq ]
  %i.ene = fcmp fast olt float %i.emc, %i.emp
  br i1 %i.ene, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.2, label %bb.es

bb.es:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.2
  %i.enf = fdiv fast float 1.000000e+00, %i.emm
  %i.eng = fadd fast float %i.emp, %i.enf
  %i.enh = fcmp fast ogt float %i.emc, %i.eng
  br i1 %i.enh, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.2, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.eni = fmul fast float %i.emm, %i.emc
  %i.enj = fadd fast float %i.eni, %i.emn
  %i.enk = fmul fast float %i.enj, %i.emc
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.2: ; preds = %bb.et, %bb.es, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.2
  %.113062073.2 = phi float [ %i.enk, %bb.et ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.2 ], [ %i.emc, %bb.es ]
  %i.enl = fcmp fast olt float %i.emh, %i.emp
  %i.enm = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.113022014.2, i64 0
  %i.enn = insertelement <4 x float> %i.enm, float %.113042037.2, i64 1
  %i.eno = insertelement <4 x float> %i.enn, float %.113062073.2, i64 2 ; 3 uses
  br i1 %i.enl, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.2, label %bb.eu

bb.eu:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.2
  %i.enp = fdiv fast float 1.000000e+00, %i.emm
  %i.enq = fadd fast float %i.emp, %i.enp
  %i.enr = fcmp fast ogt float %i.emh, %i.enq
  %i.ens = insertelement <4 x float> %i.eno, float %i.emh, i64 3
  br i1 %i.enr, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.2, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ent = fmul fast float %i.emm, %i.emh
  %i.enu = fadd fast float %i.ent, %i.emn
  %i.env = fmul fast float %i.enu, %i.emh
  %i.enw = insertelement <4 x float> %i.eno, float %i.env, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2030.2: ; preds = %bb.em
  %i.enx = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.elu)
  %i.eny = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.ely)
  %i.enz = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.emc)
  %i.eoa = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.emh)
  %i.eob = fadd fast float %i.enx, 1.000000e+00
  %i.eoc = tail call fast float @llvm.log.f32(float %i.eob)
  %i.eod = tail call fast float @llvm.tanh.f32(float %i.eoc)
  %i.eoe = fadd fast float %i.eny, 1.000000e+00
  %i.eof = tail call fast float @llvm.log.f32(float %i.eoe)
  %i.eog = tail call fast float @llvm.tanh.f32(float %i.eof)
  %i.eoh = fadd fast float %i.enz, 1.000000e+00
  %i.eoi = tail call fast float @llvm.log.f32(float %i.eoh)
  %i.eoj = tail call fast float @llvm.tanh.f32(float %i.eoi)
  %i.eok = fadd fast float %i.eoa, 1.000000e+00
  %i.eol = tail call fast float @llvm.log.f32(float %i.eok)
  %i.eom = tail call fast float @llvm.tanh.f32(float %i.eol)
  %i.eon = insertelement <4 x float> poison, float %i.eod, i64 0
  %i.eoo = insertelement <4 x float> %i.eon, float %i.eog, i64 1
  %i.eop = insertelement <4 x float> %i.eoo, float %i.eoj, i64 2
  %i.eoq = insertelement <4 x float> %i.eop, float %i.eom, i64 3
  %i.eor = fmul fast <4 x float> %i.eoq, %i.eml
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2027.2: ; preds = %bb.em
  %i.eos = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.eml, <4 x float> splat (float f0x42B0C0A5))
  %i.eot = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.eos, <4 x float> splat (float f0xC2B0C0A5))
  %i.eou = fneg fast <4 x float> %i.eot
  %i.eov = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.eou)
  %i.eow = fadd fast <4 x float> %i.eov, splat (float 1.000000e+00)
  %i.eox = fdiv fast <4 x float> splat (float 1.000000e+00), %i.eow
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2018.2: ; preds = %bb.em
  %i.eoy = load float, ptr %i.dug, align 4, !tbaa !22 ; 3 uses
  %i.eoz = load float, ptr %i.duh, align 4, !tbaa !22 ; 4 uses
  %i.epa = insertelement <2 x float> poison, float %i.elu, i64 0
  %i.epb = insertelement <2 x float> %i.epa, float %i.ely, i64 1
  %i.epc = insertelement <2 x float> poison, float %i.eoy, i64 0
  %i.epd = shufflevector <2 x float> %i.epc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.epe = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.epb, <2 x float> %i.epd) ; 2 uses
  %i.epf = insertelement <2 x float> poison, float %i.eoz, i64 0
  %i.epg = shufflevector <2 x float> %i.epf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eph = fcmp fast ogt <2 x float> %i.epe, %i.epg
  %i.epi = select <2 x i1> %i.eph, <2 x float> %i.epg, <2 x float> %i.epe
  %.01305.2 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.emc, float %i.eoy) ; 2 uses
  %i.epj = fcmp fast ogt float %.01305.2, %i.eoz
  %.113062083.2 = select i1 %i.epj, float %i.eoz, float %.01305.2
  %.01307.2 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.emh, float %i.eoy)
  %spec.select2114.2 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.01307.2, float %i.eoz)
  %i.epk = shufflevector <2 x float> %i.epi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.epl = insertelement <4 x float> %i.epk, float %.113062083.2, i64 2
  %i.epm = insertelement <4 x float> %i.epl, float %spec.select2114.2, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2024.2: ; preds = %bb.em
  %i.epn = load float, ptr %i.dui, align 4, !tbaa !22
  %i.epo = fcmp fast ogt <4 x float> %i.eml, zeroinitializer
  %i.epp = insertelement <4 x float> poison, float %i.epn, i64 0
  %i.epq = shufflevector <4 x float> %i.epp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.epr = select <4 x i1> %i.epo, <4 x float> splat (float 1.000000e+00), <4 x float> %i.epq
  %i.eps = fmul fast <4 x float> %i.epr, %i.eml
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2021.2: ; preds = %bb.em
  %i.ept = tail call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.eml, <4 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.2

_ZL13activation_ssfiRKN4ncnn3MatE.exit.2:         ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2021.2, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2024.2, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2018.2, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2027.2, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2030.2, %bb.ev, %bb.eu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.2, %bb.em
  %i.epu = phi <4 x float> [ %i.eno, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.2 ], [ %i.ept, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2021.2 ], [ %i.eps, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2024.2 ], [ %i.eml, %bb.em ], [ %i.epm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2018.2 ], [ %i.eox, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2027.2 ], [ %i.eor, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2030.2 ], [ %i.enw, %bb.ev ], [ %i.ens, %bb.eu ] ; 4 uses
  %i.epv = bitcast <4 x float> %i.epu to <8 x i16>
  %i.epw = extractelement <8 x i16> %i.epv, i64 1
  store i16 %i.epw, ptr %.1.1, align 2, !tbaa !24
  br i1 %i.ebv, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.2
  %i.epx = bitcast <4 x float> %i.epu to <8 x i16>
  %i.epy = extractelement <8 x i16> %i.epx, i64 3
  %i.epz = getelementptr inbounds nuw i8, ptr %.1.1, i64 2
  store i16 %i.epy, ptr %i.epz, align 2, !tbaa !24
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.2
  br i1 %i.ebx, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.eqa = bitcast <4 x float> %i.epu to <8 x i16>
  %i.eqb = extractelement <8 x i16> %i.eqa, i64 5
  %i.eqc = getelementptr inbounds nuw i8, ptr %.1.1, i64 4
  store i16 %i.eqb, ptr %i.eqc, align 2, !tbaa !24
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  br i1 %i.ebz, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.eqd = bitcast <4 x float> %i.epu to <8 x i16>
  %i.eqe = extractelement <8 x i16> %i.eqd, i64 7
  %i.eqf = getelementptr inbounds nuw i8, ptr %.1.1, i64 6
  store i16 %i.eqe, ptr %i.eqf, align 2, !tbaa !24
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %i.eqg = getelementptr inbounds [2 x i8], ptr %.1.1, i64 %i.dbr
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.el
  %.1.2 = phi ptr [ %.1.1, %bb.el ], [ %i.eqg, %bb.fb ] ; 4 uses
  %i.eqh = or disjoint i32 %i.ebo, 3
  %.not1169.3 = icmp slt i32 %i.eqh, %i.h
  br i1 %.not1169.3, label %bb.fd, label %bb.fs

bb.fd:                                            ; preds = %bb.fc
  %.sroa.14.80.vec.extract = extractelement <16 x float> %i.ebe, i64 14 ; 2 uses
  %.sroa.14.72.vec.extract = extractelement <16 x float> %i.ebe, i64 12
  %.sroa.14.76.vec.extract = extractelement <16 x float> %i.ebe, i64 13 ; 2 uses
  %.sroa.14.84.vec.extract = extractelement <16 x float> %i.ebe, i64 15 ; 2 uses
  %i.eqi = fadd fast float %.sroa.14.80.vec.extract, %.sroa.14.76.vec.extract ; 2 uses
  %i.eqj = fadd fast float %i.eac, %.sroa.14.84.vec.extract ; 2 uses
  %i.eqk = fsub fast float %.sroa.14.76.vec.extract, %.sroa.14.80.vec.extract ; 2 uses
  %i.eql = fsub fast float %.sroa.14.84.vec.extract, %i.eac ; 2 uses
  %i.eqm = fadd fast float %.sroa.14.72.vec.extract, %i.dto
  %i.eqn = fadd fast float %i.eqm, %i.eqi
  %i.eqo = fadd fast float %i.eqn, %i.eqj         ; 8 uses
  %i.eqp = fmul fast float %i.eqk, f0x3F3504F3
  %i.eqq = fadd fast float %i.eqp, %i.dto
  %i.eqr = fmul fast float %i.eql, f0x3FB504F3
  %i.eqs = fadd fast float %i.eqq, %i.eqr         ; 8 uses
  %i.eqt = fmul fast float %i.eqi, 5.000000e-01
  %i.equ = fadd fast float %i.eqt, %i.dto
  %i.eqv = fmul fast float %i.eqj, 2.000000e+00
  %i.eqw = fadd fast float %i.equ, %i.eqv         ; 8 uses
  %i.eqx = fmul fast float %i.eqk, f0x3EB504F3
  %i.eqy = fmul fast float %i.eql, f0x403504F3
  %i.eqz = fadd fast float %i.eqx, %i.dto
  %i.era = fadd fast float %i.eqz, %i.ebj
  %i.erb = fadd fast float %i.era, %i.eqy         ; 8 uses
  %i.erc = insertelement <4 x float> poison, float %i.eqo, i64 0
  %i.erd = insertelement <4 x float> %i.erc, float %i.eqs, i64 1
  %i.ere = insertelement <4 x float> %i.erd, float %i.eqw, i64 2
  %i.erf = insertelement <4 x float> %i.ere, float %i.erb, i64 3 ; 6 uses
  switch i32 %6, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2021.3
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2024.3
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2018.3
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2027.3
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2030.3
    i32 6, label %bb.fe
  ]

bb.fe:                                            ; preds = %bb.fd
  %i.erg = load float, ptr %i.duj, align 4, !tbaa !22 ; 9 uses
  %i.erh = load float, ptr %i.duk, align 4, !tbaa !22 ; 5 uses
  %i.eri = fneg fast float %i.erh
  %i.erj = fdiv fast float %i.eri, %i.erg         ; 8 uses
  %i.erk = fcmp fast olt float %i.eqo, %i.erj
  br i1 %i.erk, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.3, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.erl = fdiv fast float 1.000000e+00, %i.erg
  %i.erm = fadd fast float %i.erj, %i.erl
  %i.ern = fcmp fast ogt float %i.eqo, %i.erm
  br i1 %i.ern, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.3, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ero = fmul fast float %i.erg, %i.eqo
  %i.erp = fadd fast float %i.ero, %i.erh
  %i.erq = fmul fast float %i.erp, %i.eqo
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.3: ; preds = %bb.fg, %bb.ff, %bb.fe
  %.113022014.3 = phi float [ %i.erq, %bb.fg ], [ 0.000000e+00, %bb.fe ], [ %i.eqo, %bb.ff ]
  %i.err = fcmp fast olt float %i.eqs, %i.erj
  br i1 %i.err, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.3, label %bb.fh

bb.fh:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.3
  %i.ers = fdiv fast float 1.000000e+00, %i.erg
  %i.ert = fadd fast float %i.erj, %i.ers
  %i.eru = fcmp fast ogt float %i.eqs, %i.ert
  br i1 %i.eru, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.3, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.erv = fmul fast float %i.erg, %i.eqs
  %i.erw = fadd fast float %i.erv, %i.erh
  %i.erx = fmul fast float %i.erw, %i.eqs
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.3: ; preds = %bb.fi, %bb.fh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.3
  %.113042037.3 = phi float [ %i.erx, %bb.fi ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.3 ], [ %i.eqs, %bb.fh ]
  %i.ery = fcmp fast olt float %i.eqw, %i.erj
  br i1 %i.ery, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.3, label %bb.fj

bb.fj:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.3
  %i.erz = fdiv fast float 1.000000e+00, %i.erg
  %i.esa = fadd fast float %i.erj, %i.erz
  %i.esb = fcmp fast ogt float %i.eqw, %i.esa
  br i1 %i.esb, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.3, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.esc = fmul fast float %i.erg, %i.eqw
  %i.esd = fadd fast float %i.esc, %i.erh
  %i.ese = fmul fast float %i.esd, %i.eqw
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.3: ; preds = %bb.fk, %bb.fj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.3
  %.113062073.3 = phi float [ %i.ese, %bb.fk ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.3 ], [ %i.eqw, %bb.fj ]
  %i.esf = fcmp fast olt float %i.erb, %i.erj
  %i.esg = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.113022014.3, i64 0
  %i.esh = insertelement <4 x float> %i.esg, float %.113042037.3, i64 1
  %i.esi = insertelement <4 x float> %i.esh, float %.113062073.3, i64 2 ; 3 uses
  br i1 %i.esf, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3, label %bb.fl

bb.fl:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.3
  %i.esj = fdiv fast float 1.000000e+00, %i.erg
  %i.esk = fadd fast float %i.erj, %i.esj
  %i.esl = fcmp fast ogt float %i.erb, %i.esk
  %i.esm = insertelement <4 x float> %i.esi, float %i.erb, i64 3
  br i1 %i.esl, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.esn = fmul fast float %i.erg, %i.erb
  %i.eso = fadd fast float %i.esn, %i.erh
  %i.esp = fmul fast float %i.eso, %i.erb
  %i.esq = insertelement <4 x float> %i.esi, float %i.esp, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2030.3: ; preds = %bb.fd
  %i.esr = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.eqo)
  %i.ess = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.eqs)
  %i.est = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.eqw)
  %i.esu = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.erb)
  %i.esv = fadd fast float %i.esr, 1.000000e+00
  %i.esw = tail call fast float @llvm.log.f32(float %i.esv)
  %i.esx = tail call fast float @llvm.tanh.f32(float %i.esw)
  %i.esy = fadd fast float %i.ess, 1.000000e+00
  %i.esz = tail call fast float @llvm.log.f32(float %i.esy)
  %i.eta = tail call fast float @llvm.tanh.f32(float %i.esz)
  %i.etb = fadd fast float %i.est, 1.000000e+00
  %i.etc = tail call fast float @llvm.log.f32(float %i.etb)
  %i.etd = tail call fast float @llvm.tanh.f32(float %i.etc)
  %i.ete = fadd fast float %i.esu, 1.000000e+00
  %i.etf = tail call fast float @llvm.log.f32(float %i.ete)
  %i.etg = tail call fast float @llvm.tanh.f32(float %i.etf)
  %i.eth = insertelement <4 x float> poison, float %i.esx, i64 0
  %i.eti = insertelement <4 x float> %i.eth, float %i.eta, i64 1
  %i.etj = insertelement <4 x float> %i.eti, float %i.etd, i64 2
  %i.etk = insertelement <4 x float> %i.etj, float %i.etg, i64 3
  %i.etl = fmul fast <4 x float> %i.etk, %i.erf
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2027.3: ; preds = %bb.fd
  %i.etm = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.erf, <4 x float> splat (float f0x42B0C0A5))
  %i.etn = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.etm, <4 x float> splat (float f0xC2B0C0A5))
  %i.eto = fneg fast <4 x float> %i.etn
  %i.etp = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.eto)
  %i.etq = fadd fast <4 x float> %i.etp, splat (float 1.000000e+00)
  %i.etr = fdiv fast <4 x float> splat (float 1.000000e+00), %i.etq
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2018.3: ; preds = %bb.fd
  %i.ets = load float, ptr %i.dul, align 4, !tbaa !22 ; 3 uses
  %i.ett = load float, ptr %i.dum, align 4, !tbaa !22 ; 4 uses
  %i.etu = insertelement <2 x float> poison, float %i.eqo, i64 0
  %i.etv = insertelement <2 x float> %i.etu, float %i.eqs, i64 1
  %i.etw = insertelement <2 x float> poison, float %i.ets, i64 0
  %i.etx = shufflevector <2 x float> %i.etw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ety = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.etv, <2 x float> %i.etx) ; 2 uses
  %i.etz = insertelement <2 x float> poison, float %i.ett, i64 0
  %i.eua = shufflevector <2 x float> %i.etz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eub = fcmp fast ogt <2 x float> %i.ety, %i.eua
  %i.euc = select <2 x i1> %i.eub, <2 x float> %i.eua, <2 x float> %i.ety
  %.01305.3 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.eqw, float %i.ets) ; 2 uses
  %i.eud = fcmp fast ogt float %.01305.3, %i.ett
  %.113062083.3 = select i1 %i.eud, float %i.ett, float %.01305.3
  %.01307.3 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.erb, float %i.ets)
  %spec.select2114.3 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.01307.3, float %i.ett)
  %i.eue = shufflevector <2 x float> %i.euc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.euf = insertelement <4 x float> %i.eue, float %.113062083.3, i64 2
  %i.eug = insertelement <4 x float> %i.euf, float %spec.select2114.3, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2024.3: ; preds = %bb.fd
  %i.euh = load float, ptr %i.dun, align 4, !tbaa !22
  %i.eui = fcmp fast ogt <4 x float> %i.erf, zeroinitializer
  %i.euj = insertelement <4 x float> poison, float %i.euh, i64 0
  %i.euk = shufflevector <4 x float> %i.euj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eul = select <4 x i1> %i.eui, <4 x float> splat (float 1.000000e+00), <4 x float> %i.euk
  %i.eum = fmul fast <4 x float> %i.eul, %i.erf
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2021.3: ; preds = %bb.fd
  %i.eun = tail call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.erf, <4 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit.3:         ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2021.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2024.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2018.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2027.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2030.3, %bb.fm, %bb.fl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.3, %bb.fd
  %i.euo = phi <4 x float> [ %i.esi, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.3 ], [ %i.eun, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2021.3 ], [ %i.eum, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2024.3 ], [ %i.erf, %bb.fd ], [ %i.eug, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2018.3 ], [ %i.etr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2027.3 ], [ %i.etl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2030.3 ], [ %i.esq, %bb.fm ], [ %i.esm, %bb.fl ] ; 4 uses
  %i.eup = bitcast <4 x float> %i.euo to <8 x i16>
  %i.euq = extractelement <8 x i16> %i.eup, i64 1
  store i16 %i.euq, ptr %.1.2, align 2, !tbaa !24
  br i1 %i.ebv, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3
  %i.eur = bitcast <4 x float> %i.euo to <8 x i16>
  %i.eus = extractelement <8 x i16> %i.eur, i64 3
  %i.eut = getelementptr inbounds nuw i8, ptr %.1.2, i64 2
  store i16 %i.eus, ptr %i.eut, align 2, !tbaa !24
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3
  br i1 %i.ebx, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.euu = bitcast <4 x float> %i.euo to <8 x i16>
  %i.euv = extractelement <8 x i16> %i.euu, i64 5
  %i.euw = getelementptr inbounds nuw i8, ptr %.1.2, i64 4
  store i16 %i.euv, ptr %i.euw, align 2, !tbaa !24
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  br i1 %i.ebz, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.eux = bitcast <4 x float> %i.euo to <8 x i16>
  %i.euy = extractelement <8 x i16> %i.eux, i64 7
  %i.euz = getelementptr inbounds nuw i8, ptr %.1.2, i64 6
  store i16 %i.euy, ptr %i.euz, align 2, !tbaa !24
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fq, %bb.fr, %bb.fc
  %indvars.iv.next2305 = add nuw nsw i64 %indvars.iv2304, 1 ; 2 uses
  %exitcond2308.not = icmp eq i64 %indvars.iv.next2305, %wide.trip.count2307
  br i1 %exitcond2308.not, label %._crit_edge2216, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !857
end_hunk_5
begin_hunk_6_@_ZN4ncnnL47conv3x3s1_winograd63_transform_input_tile_bf16sERKNS_3MatERS0_iiiii:bb.a
  %i.eqg = getelementptr inbounds nuw i8, ptr %i.epu, i64 %.reass
  %i.eqh = trunc nsw i64 %i.eqe to i32
  %.reass1503.us = mul i32 %factor.op.mul1502, %i.eqh
  %i.eqi = sext i32 %.reass1503.us to i64
  %i.eqj = getelementptr inbounds [4 x i8], ptr %i.epy, i64 %i.eqi
  br label %_ZN4ncnn3MatD2Ev.exit954.us

_ZN4ncnn3MatD2Ev.exit954.us:                      ; preds = %_ZN4ncnn3MatD2Ev.exit954.lr.ph.us, %bb.oz
  %indvars.iv1572 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit954.lr.ph.us ], [ %indvars.iv.next1573, %bb.oz ] ; 3 uses
  %i.eqk = trunc i64 %indvars.iv1572 to i32
  %i.eql = add i32 %i.epr, %i.eqk                 ; 2 uses
  %i.eqm = sdiv i32 %i.eql, %i.eop
  %i.eqn = srem i32 %i.eql, %i.eop
  %i.eqo = mul nsw i32 %i.eqm, 6
  %i.eqp = sext i32 %i.eqo to i64                 ; 2 uses
  %.reass.us1504 = mul i64 %factor.op.mul1496.us, %i.eqp
  %i.eqq = getelementptr inbounds nuw i8, ptr %i.eqg, i64 %.reass.us1504
  %i.eqr = mul nsw i32 %i.eqn, 6                  ; 8 uses
  %i.eqs = sext i32 %i.eqr to i64
  %i.eqt = getelementptr inbounds [2 x i8], ptr %i.eqq, i64 %i.eqs
  %i.equ = load i64, ptr %i.g, align 8
  %i.eqv = or disjoint i32 %i.eqr, 1
  %i.eqw = icmp slt i32 %i.eqv, %i.eqc
  %i.eqx = add nsw i32 %i.eqr, 2
  %i.eqy = icmp slt i32 %i.eqx, %i.eqc
  %i.eqz = add nsw i32 %i.eqr, 3
  %i.era = icmp slt i32 %i.eqz, %i.eqc
  %i.erb = add nsw i32 %i.eqr, 4
  %i.erc = icmp slt i32 %i.erb, %i.eqc
  %i.erd = add nsw i32 %i.eqr, 5
  %i.ere = icmp slt i32 %i.erd, %i.eqc
  %i.erf = add nsw i32 %i.eqr, 6
  %i.erg = icmp slt i32 %i.erf, %i.eqc
  %i.erh = add nsw i32 %i.eqr, 7
  %i.eri = icmp slt i32 %i.erh, %i.eqc
  %invariant.op1621 = sub nsw i64 %i.epz, %i.eqp
  br label %bb.oh

bb.oh:                                            ; preds = %bb.ow, %_ZN4ncnn3MatD2Ev.exit954.us
  %indvars.iv1564 = phi i64 [ %indvars.iv.next1565, %bb.ow ], [ 0, %_ZN4ncnn3MatD2Ev.exit954.us ] ; 10 uses
  %.09421484.us = phi ptr [ %i.ewq, %bb.ow ], [ %i.eqt, %_ZN4ncnn3MatD2Ev.exit954.us ] ; 10 uses
  %i.erj = icmp slt i64 %indvars.iv1564, %invariant.op1621
  br i1 %i.erj, label %bb.oi, label %bb.ow

bb.oi:                                            ; preds = %bb.oh
  %i.erk = getelementptr inbounds nuw [2 x i8], ptr %.09421484.us, i64 %i.equ ; 8 uses
  %i.erl = load i16, ptr %.09421484.us, align 2, !tbaa !24
  %i.erm = load i16, ptr %i.erk, align 2, !tbaa !24
  %i.ern = zext i16 %i.erl to i32
  %i.ero = zext i16 %i.erm to i32
  %i.erp = insertelement <2 x i32> poison, i32 %i.ern, i64 0
  %i.erq = insertelement <2 x i32> %i.erp, i32 %i.ero, i64 1
  %i.err = shl nuw <2 x i32> %i.erq, splat (i32 16)
  %i.ers = bitcast <2 x i32> %i.err to <2 x float> ; 2 uses
  br i1 %i.eqw, label %bb.oj, label %bb.ok

bb.oj:                                            ; preds = %bb.oi
  %i.ert = getelementptr inbounds nuw i8, ptr %.09421484.us, i64 2
  %i.eru = load i16, ptr %i.ert, align 2, !tbaa !24
  %i.erv = getelementptr inbounds nuw i8, ptr %i.erk, i64 2
  %i.erw = load i16, ptr %i.erv, align 2, !tbaa !24
  %i.erx = zext i16 %i.eru to i32
  %i.ery = zext i16 %i.erw to i32
  %i.erz = insertelement <2 x i32> poison, i32 %i.erx, i64 0
  %i.esa = insertelement <2 x i32> %i.erz, i32 %i.ery, i64 1
  %i.esb = shl nuw <2 x i32> %i.esa, splat (i32 16)
  %i.esc = bitcast <2 x i32> %i.esb to <2 x float>
  br label %bb.ok

bb.ok:                                            ; preds = %bb.oj, %bb.oi
  %i.esd = phi <2 x float> [ %i.esc, %bb.oj ], [ zeroinitializer, %bb.oi ] ; 2 uses
  br i1 %i.eqy, label %bb.ol, label %bb.om

bb.ol:                                            ; preds = %bb.ok
  %i.ese = getelementptr inbounds nuw i8, ptr %.09421484.us, i64 4
  %i.esf = load i16, ptr %i.ese, align 2, !tbaa !24
  %i.esg = getelementptr inbounds nuw i8, ptr %i.erk, i64 4
  %i.esh = load i16, ptr %i.esg, align 2, !tbaa !24
  %i.esi = zext i16 %i.esf to i32
  %i.esj = zext i16 %i.esh to i32
  %i.esk = insertelement <2 x i32> poison, i32 %i.esi, i64 0
  %i.esl = insertelement <2 x i32> %i.esk, i32 %i.esj, i64 1
  %i.esm = shl nuw <2 x i32> %i.esl, splat (i32 16)
  %i.esn = bitcast <2 x i32> %i.esm to <2 x float>
  br label %bb.om

bb.om:                                            ; preds = %bb.ol, %bb.ok
  %i.eso = phi <2 x float> [ %i.esn, %bb.ol ], [ zeroinitializer, %bb.ok ] ; 2 uses
  br i1 %i.era, label %bb.on, label %bb.oo

bb.on:                                            ; preds = %bb.om
  %i.esp = getelementptr inbounds nuw i8, ptr %.09421484.us, i64 6
  %i.esq = load i16, ptr %i.esp, align 2, !tbaa !24
  %i.esr = getelementptr inbounds nuw i8, ptr %i.erk, i64 6
  %i.ess = load i16, ptr %i.esr, align 2, !tbaa !24
  %i.est = zext i16 %i.esq to i32
  %i.esu = zext i16 %i.ess to i32
  %i.esv = insertelement <2 x i32> poison, i32 %i.est, i64 0
  %i.esw = insertelement <2 x i32> %i.esv, i32 %i.esu, i64 1
  %i.esx = shl nuw <2 x i32> %i.esw, splat (i32 16)
  %i.esy = bitcast <2 x i32> %i.esx to <2 x float>
  br label %bb.oo

bb.oo:                                            ; preds = %bb.on, %bb.om
  %i.esz = phi <2 x float> [ %i.esy, %bb.on ], [ zeroinitializer, %bb.om ] ; 2 uses
  br i1 %i.erc, label %bb.op, label %bb.oq

bb.op:                                            ; preds = %bb.oo
  %i.eta = getelementptr inbounds nuw i8, ptr %.09421484.us, i64 8
  %i.etb = load i16, ptr %i.eta, align 2, !tbaa !24
  %i.etc = getelementptr inbounds nuw i8, ptr %i.erk, i64 8
  %i.etd = load i16, ptr %i.etc, align 2, !tbaa !24
  %i.ete = zext i16 %i.etb to i32
  %i.etf = zext i16 %i.etd to i32
  %i.etg = insertelement <2 x i32> poison, i32 %i.ete, i64 0
  %i.eth = insertelement <2 x i32> %i.etg, i32 %i.etf, i64 1
  %i.eti = shl nuw <2 x i32> %i.eth, splat (i32 16)
  %i.etj = bitcast <2 x i32> %i.eti to <2 x float>
  br label %bb.oq

bb.oq:                                            ; preds = %bb.op, %bb.oo
  %i.etk = phi <2 x float> [ %i.etj, %bb.op ], [ zeroinitializer, %bb.oo ] ; 2 uses
  br i1 %i.ere, label %bb.or, label %bb.os

bb.or:                                            ; preds = %bb.oq
  %i.etl = getelementptr inbounds nuw i8, ptr %.09421484.us, i64 10
  %i.etm = load i16, ptr %i.etl, align 2, !tbaa !24
  %i.etn = getelementptr inbounds nuw i8, ptr %i.erk, i64 10
  %i.eto = load i16, ptr %i.etn, align 2, !tbaa !24
  %i.etp = zext i16 %i.etm to i32
  %i.etq = zext i16 %i.eto to i32
  %i.etr = insertelement <2 x i32> poison, i32 %i.etp, i64 0
  %i.ets = insertelement <2 x i32> %i.etr, i32 %i.etq, i64 1
  %i.ett = shl nuw <2 x i32> %i.ets, splat (i32 16)
  %i.etu = bitcast <2 x i32> %i.ett to <2 x float>
  br label %bb.os

bb.os:                                            ; preds = %bb.or, %bb.oq
  %i.etv = phi <2 x float> [ %i.etu, %bb.or ], [ zeroinitializer, %bb.oq ] ; 2 uses
  br i1 %i.erg, label %bb.ot, label %bb.ou

bb.ot:                                            ; preds = %bb.os
  %i.etw = getelementptr inbounds nuw i8, ptr %.09421484.us, i64 12
  %i.etx = load i16, ptr %i.etw, align 2, !tbaa !24
  %i.ety = getelementptr inbounds nuw i8, ptr %i.erk, i64 12
  %i.etz = load i16, ptr %i.ety, align 2, !tbaa !24
  %i.eua = zext i16 %i.etx to i32
  %i.eub = zext i16 %i.etz to i32
  %i.euc = insertelement <2 x i32> poison, i32 %i.eua, i64 0
  %i.eud = insertelement <2 x i32> %i.euc, i32 %i.eub, i64 1
  %i.eue = shl nuw <2 x i32> %i.eud, splat (i32 16)
  %i.euf = bitcast <2 x i32> %i.eue to <2 x float>
  br label %bb.ou

bb.ou:                                            ; preds = %bb.ot, %bb.os
  %i.eug = phi <2 x float> [ %i.euf, %bb.ot ], [ zeroinitializer, %bb.os ] ; 2 uses
  br i1 %i.eri, label %bb.ov, label %bb.ow

bb.ov:                                            ; preds = %bb.ou
  %i.euh = getelementptr inbounds nuw i8, ptr %.09421484.us, i64 14
  %i.eui = load i16, ptr %i.euh, align 2, !tbaa !24
  %i.euj = getelementptr inbounds nuw i8, ptr %i.erk, i64 14
  %i.euk = load i16, ptr %i.euj, align 2, !tbaa !24
  %i.eul = zext i16 %i.eui to i32
  %i.eum = zext i16 %i.euk to i32
  %i.eun = insertelement <2 x i32> poison, i32 %i.eul, i64 0
  %i.euo = insertelement <2 x i32> %i.eun, i32 %i.eum, i64 1
  %i.eup = shl nuw <2 x i32> %i.euo, splat (i32 16)
  %i.euq = bitcast <2 x i32> %i.eup to <2 x float>
  br label %bb.ow

bb.ow:                                            ; preds = %bb.ov, %bb.ou, %bb.oh
  %i.eur = phi <2 x float> [ zeroinitializer, %bb.oh ], [ %i.etk, %bb.ov ], [ %i.etk, %bb.ou ] ; 4 uses
  %i.eus = phi <2 x float> [ zeroinitializer, %bb.oh ], [ %i.eso, %bb.ov ], [ %i.eso, %bb.ou ] ; 4 uses
  %i.eut = phi <2 x float> [ zeroinitializer, %bb.oh ], [ %i.ers, %bb.ov ], [ %i.ers, %bb.ou ]
  %i.euu = phi <2 x float> [ zeroinitializer, %bb.oh ], [ %i.eug, %bb.ov ], [ %i.eug, %bb.ou ] ; 4 uses
  %i.euv = phi <2 x float> [ zeroinitializer, %bb.oh ], [ %i.esd, %bb.ov ], [ %i.esd, %bb.ou ] ; 4 uses
  %i.euw = phi <2 x float> [ zeroinitializer, %bb.oh ], [ %i.esz, %bb.ov ], [ %i.esz, %bb.ou ] ; 3 uses
  %i.eux = phi <2 x float> [ zeroinitializer, %bb.oh ], [ %i.etv, %bb.ov ], [ %i.etv, %bb.ou ] ; 4 uses
  %i.euy = phi <2 x float> [ zeroinitializer, %bb.oh ], [ %i.euq, %bb.ov ], [ zeroinitializer, %bb.ou ]
  %i.euz = fmul fast <2 x float> %i.euw, splat (float 4.250000e+00)
  %i.eva = fsub fast <2 x float> %i.eur, %i.eus
  %i.evb = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv1564
  %i.evc = fmul fast <2 x float> %i.eva, splat (float 5.250000e+00)
  %i.evd = fadd fast <2 x float> %i.evc, %i.eut
  %i.eve = fsub fast <2 x float> %i.evd, %i.euu
  store <2 x float> %i.eve, ptr %i.evb, align 8, !tbaa !22
  %i.evf = getelementptr inbounds nuw [8 x i8], ptr %i.eoq, i64 %indvars.iv1564
  %i.evg = fmul fast <2 x float> %i.eur, splat (float 4.250000e+00)
  %i.evh = fsub fast <2 x float> %i.eus, %i.evg
  %i.evi = fadd fast <2 x float> %i.evh, %i.euu   ; 2 uses
  %i.evj = fsub fast <2 x float> %i.euv, %i.euz
  %i.evk = fadd fast <2 x float> %i.evj, %i.eux   ; 2 uses
  %i.evl = fadd fast <2 x float> %i.evi, %i.evk
  store <2 x float> %i.evl, ptr %i.evf, align 8, !tbaa !22
  %i.evm = getelementptr inbounds nuw [8 x i8], ptr %i.eor, i64 %indvars.iv1564
  %i.evn = fsub fast <2 x float> %i.evi, %i.evk
  store <2 x float> %i.evn, ptr %i.evm, align 8, !tbaa !22
  %i.evo = getelementptr inbounds nuw [8 x i8], ptr %i.eos, i64 %indvars.iv1564
  %i.evp = fmul fast <2 x float> %i.eus, splat (float 2.500000e-01)
  %7 = fmul fast <2 x float> %i.eur, splat (float 1.250000e+00)
  %8 = fsub fast <2 x float> %i.evp, %7
  %i.evq = fadd fast <2 x float> %8, %i.euu       ; 2 uses
  %i.evr = fmul fast <2 x float> %i.euv, splat (float 5.000000e-01)
  %i.evs = fmul fast <2 x float> %i.euw, splat (float 2.500000e+00) ; 2 uses
  %i.evt = fsub fast <2 x float> %i.evr, %i.evs
  %i.evu = fmul fast <2 x float> %i.eux, splat (float 2.000000e+00)
  %i.evv = fadd fast <2 x float> %i.evu, %i.evt   ; 2 uses
  %i.evw = fadd fast <2 x float> %i.evq, %i.evv
  store <2 x float> %i.evw, ptr %i.evo, align 8, !tbaa !22
  %i.evx = getelementptr inbounds nuw [8 x i8], ptr %i.eot, i64 %indvars.iv1564
  %i.evy = fsub fast <2 x float> %i.evq, %i.evv
  store <2 x float> %i.evy, ptr %i.evx, align 8, !tbaa !22
  %i.evz = getelementptr inbounds nuw [8 x i8], ptr %i.eou, i64 %indvars.iv1564
  %i.ewa = fmul fast <2 x float> %i.eus, splat (float 4.000000e+00)
  %i.ewb = fmul fast <2 x float> %i.eur, splat (float 5.000000e+00)
  %i.ewc = fsub fast <2 x float> %i.ewa, %i.ewb
  %i.ewd = fadd fast <2 x float> %i.euu, %i.ewc   ; 2 uses
  %i.ewe = fmul fast <2 x float> %i.euv, splat (float 2.000000e+00)
  %i.ewf = fmul fast <2 x float> %i.eux, splat (float 5.000000e-01)
  %i.ewg = fsub fast <2 x float> %i.ewe, %i.evs
  %i.ewh = fadd fast <2 x float> %i.ewf, %i.ewg   ; 2 uses
  %i.ewi = fadd fast <2 x float> %i.ewd, %i.ewh
  store <2 x float> %i.ewi, ptr %i.evz, align 8, !tbaa !22
  %i.ewj = getelementptr inbounds nuw [8 x i8], ptr %i.eov, i64 %indvars.iv1564
  %i.ewk = fsub fast <2 x float> %i.ewd, %i.ewh
  store <2 x float> %i.ewk, ptr %i.ewj, align 8, !tbaa !22
  %i.ewl = getelementptr inbounds nuw [8 x i8], ptr %i.eow, i64 %indvars.iv1564
  %i.ewm = fsub fast <2 x float> %i.euw, %i.eux
  %i.ewn = fmul fast <2 x float> %i.ewm, splat (float 5.250000e+00)
  %i.ewo = fsub fast <2 x float> %i.ewn, %i.euv
  %i.ewp = fadd fast <2 x float> %i.ewo, %i.euy
  store <2 x float> %i.ewp, ptr %i.ewl, align 8, !tbaa !22
  %i.ewq = getelementptr inbounds [2 x i8], ptr %.09421484.us, i64 %i.eoy
  %indvars.iv.next1565 = add nuw nsw i64 %indvars.iv1564, 1 ; 2 uses
  %exitcond1567.not = icmp eq i64 %indvars.iv.next1565, 8
  br i1 %exitcond1567.not, label %bb.ox, label %bb.oh, !llvm.loop !907

bb.ox:                                            ; preds = %bb.ow
  %.idx1607 = shl nuw nsw i64 %indvars.iv1572, 3
  %i.ewr = getelementptr inbounds nuw i8, ptr %i.eqj, i64 %.idx1607 ; 8 uses
  %i.ews = getelementptr inbounds nuw [4 x i8], ptr %i.ewr, i64 %i.epa
  %i.ewt = getelementptr inbounds nuw [4 x i8], ptr %i.ewr, i64 %i.epc
  %i.ewu = getelementptr inbounds nuw [4 x i8], ptr %i.ewr, i64 %i.epe
  %i.ewv = getelementptr inbounds nuw [4 x i8], ptr %i.ewr, i64 %i.epg
  %i.eww = getelementptr inbounds nuw [4 x i8], ptr %i.ewr, i64 %i.epi
  %i.ewx = getelementptr inbounds nuw [4 x i8], ptr %i.ewr, i64 %i.epk
  %i.ewy = getelementptr inbounds nuw [4 x i8], ptr %i.ewr, i64 %i.epm
  br label %bb.oy

bb.oy:                                            ; preds = %bb.oy, %bb.ox
  %indvars.iv1568 = phi i64 [ %indvars.iv.next1569, %bb.oy ], [ 0, %bb.ox ] ; 2 uses
  %.08941493.us = phi ptr [ %i.ezf, %bb.oy ], [ %i.ewy, %bb.ox ] ; 2 uses
  %.08951492.us = phi ptr [ %i.eze, %bb.oy ], [ %i.ewx, %bb.ox ] ; 2 uses
  %.08961491.us = phi ptr [ %i.ezd, %bb.oy ], [ %i.eww, %bb.ox ] ; 2 uses
  %.08971490.us = phi ptr [ %i.ezc, %bb.oy ], [ %i.ewv, %bb.ox ] ; 2 uses
  %.08981489.us = phi ptr [ %i.ezb, %bb.oy ], [ %i.ewu, %bb.ox ] ; 2 uses
  %.08991488.us = phi ptr [ %i.eza, %bb.oy ], [ %i.ewt, %bb.ox ] ; 2 uses
  %.09001487.us = phi ptr [ %i.eyz, %bb.oy ], [ %i.ews, %bb.ox ] ; 2 uses
  %.09011486.us = phi ptr [ %i.eyy, %bb.oy ], [ %i.ewr, %bb.ox ] ; 2 uses
  %i.ewz = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %indvars.iv1568 ; 8 uses
  %i.exa = getelementptr inbounds nuw i8, ptr %i.ewz, i64 8
  %i.exb = getelementptr inbounds nuw i8, ptr %i.ewz, i64 16
  %i.exc = getelementptr inbounds nuw i8, ptr %i.ewz, i64 24
  %i.exd = getelementptr inbounds nuw i8, ptr %i.ewz, i64 32
  %i.exe = getelementptr inbounds nuw i8, ptr %i.ewz, i64 40
  %i.exf = getelementptr inbounds nuw i8, ptr %i.ewz, i64 48
  %i.exg = getelementptr inbounds nuw i8, ptr %i.ewz, i64 56
  %i.exh = load <2 x float>, ptr %i.ewz, align 16, !tbaa !22
  %i.exi = load <2 x float>, ptr %i.exb, align 16, !tbaa !22 ; 4 uses
  %i.exj = load <2 x float>, ptr %i.exd, align 16, !tbaa !22 ; 4 uses
  %i.exk = load <2 x float>, ptr %i.exf, align 16, !tbaa !22 ; 4 uses
  %i.exl = fsub fast <2 x float> %i.exj, %i.exi
  %i.exm = fmul fast <2 x float> %i.exl, splat (float 5.250000e+00)
  %i.exn = fadd fast <2 x float> %i.exm, %i.exh
  %i.exo = fsub fast <2 x float> %i.exn, %i.exk
  store <2 x float> %i.exo, ptr %.09011486.us, align 4, !tbaa !22
  %i.exp = load <2 x float>, ptr %i.exa, align 8, !tbaa !22 ; 4 uses
  %i.exq = load <2 x float>, ptr %i.exc, align 8, !tbaa !22 ; 3 uses
  %i.exr = load <2 x float>, ptr %i.exe, align 8, !tbaa !22 ; 4 uses
  %i.exs = fmul fast <2 x float> %i.exq, splat (float 4.250000e+00)
  %i.ext = fsub fast <2 x float> %i.exp, %i.exs
  %i.exu = fadd fast <2 x float> %i.ext, %i.exr   ; 2 uses
  %i.exv = fmul fast <2 x float> %i.exj, splat (float 4.250000e+00)
  %i.exw = fsub fast <2 x float> %i.exi, %i.exv
  %i.exx = fadd fast <2 x float> %i.exw, %i.exk   ; 2 uses
  %i.exy = fadd fast <2 x float> %i.exx, %i.exu
  store <2 x float> %i.exy, ptr %.09001487.us, align 4, !tbaa !22
  %i.exz = fsub fast <2 x float> %i.exx, %i.exu
  store <2 x float> %i.exz, ptr %.08991488.us, align 4, !tbaa !22
  %i.eya = fmul fast <2 x float> %i.exi, splat (float 2.500000e-01)
  %9 = fmul fast <2 x float> %i.exj, splat (float 1.250000e+00)
  %10 = fsub fast <2 x float> %i.eya, %9
  %i.eyb = fadd fast <2 x float> %10, %i.exk      ; 2 uses
  %i.eyc = fmul fast <2 x float> %i.exp, splat (float 5.000000e-01)
  %i.eyd = fmul fast <2 x float> %i.exq, splat (float 2.500000e+00) ; 2 uses
  %i.eye = fsub fast <2 x float> %i.eyc, %i.eyd
  %i.eyf = fmul fast <2 x float> %i.exr, splat (float 2.000000e+00)
  %i.eyg = fadd fast <2 x float> %i.eyf, %i.eye   ; 2 uses
  %i.eyh = fadd fast <2 x float> %i.eyb, %i.eyg
  store <2 x float> %i.eyh, ptr %.08981489.us, align 4, !tbaa !22
  %i.eyi = fsub fast <2 x float> %i.eyb, %i.eyg
  store <2 x float> %i.eyi, ptr %.08971490.us, align 4, !tbaa !22
  %i.eyj = fmul fast <2 x float> %i.exi, splat (float 4.000000e+00)
  %i.eyk = fmul fast <2 x float> %i.exj, splat (float 5.000000e+00)
  %i.eyl = fsub fast <2 x float> %i.eyj, %i.eyk
  %i.eym = fadd fast <2 x float> %i.exk, %i.eyl   ; 2 uses
  %i.eyn = fmul fast <2 x float> %i.exp, splat (float 2.000000e+00)
  %i.eyo = fmul fast <2 x float> %i.exr, splat (float 5.000000e-01)
  %i.eyp = fsub fast <2 x float> %i.eyn, %i.eyd
  %i.eyq = fadd fast <2 x float> %i.eyo, %i.eyp   ; 2 uses
  %i.eyr = fadd fast <2 x float> %i.eym, %i.eyq
  store <2 x float> %i.eyr, ptr %.08961491.us, align 4, !tbaa !22
  %i.eys = fsub fast <2 x float> %i.eym, %i.eyq
  store <2 x float> %i.eys, ptr %.08951492.us, align 4, !tbaa !22
  %i.eyt = load <2 x float>, ptr %i.exg, align 8, !tbaa !22
  %i.eyu = fsub fast <2 x float> %i.exq, %i.exr
  %i.eyv = fmul fast <2 x float> %i.eyu, splat (float 5.250000e+00)
  %i.eyw = fsub fast <2 x float> %i.eyv, %i.exp
  %i.eyx = fadd fast <2 x float> %i.eyw, %i.eyt
  store <2 x float> %i.eyx, ptr %.08941493.us, align 4, !tbaa !22
  %i.eyy = getelementptr inbounds nuw [4 x i8], ptr %.09011486.us, i64 %i.epo
  %i.eyz = getelementptr inbounds nuw [4 x i8], ptr %.09001487.us, i64 %i.epo
  %i.eza = getelementptr inbounds nuw [4 x i8], ptr %.08991488.us, i64 %i.epo
  %i.ezb = getelementptr inbounds nuw [4 x i8], ptr %.08981489.us, i64 %i.epo
  %i.ezc = getelementptr inbounds nuw [4 x i8], ptr %.08971490.us, i64 %i.epo
  %i.ezd = getelementptr inbounds nuw [4 x i8], ptr %.08961491.us, i64 %i.epo
  %i.eze = getelementptr inbounds nuw [4 x i8], ptr %.08951492.us, i64 %i.epo
  %i.ezf = getelementptr inbounds nuw [4 x i8], ptr %.08941493.us, i64 %i.epo
  %indvars.iv.next1569 = add nuw nsw i64 %indvars.iv1568, 1 ; 2 uses
  %exitcond1571.not = icmp eq i64 %indvars.iv.next1569, 8
  br i1 %exitcond1571.not, label %bb.oz, label %bb.oy, !llvm.loop !908

bb.oz:                                            ; preds = %bb.oy
  %indvars.iv.next1573 = add nuw nsw i64 %indvars.iv1572, 1 ; 2 uses
  %exitcond1576.not = icmp eq i64 %indvars.iv.next1573, %wide.trip.count1575
  br i1 %exitcond1576.not, label %._crit_edge.us1505, label %_ZN4ncnn3MatD2Ev.exit954.us, !llvm.loop !909

._crit_edge.us1505:                               ; preds = %bb.oz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  %indvars.iv.next1578 = add nuw nsw i64 %indvars.iv1577, 1 ; 2 uses
  %exitcond1581.not = icmp eq i64 %indvars.iv.next1578, %wide.trip.count1580
  br i1 %exitcond1581.not, label %._crit_edge1500, label %_ZN4ncnn3MatD2Ev.exit954.lr.ph.us, !llvm.loop !910

._crit_edge1500:                                  ; preds = %._crit_edge.us1505, %.lr.ph1499, %._crit_edge1478
  %i.ezg = shl nsw i32 %i.eol, 1
  %i.ezh = add nsw i32 %i.ezg, %i.eoj             ; 2 uses
  %i.ezi = icmp slt i32 %i.ezh, %5
  br i1 %i.ezi, label %.lr.ph1524, label %._crit_edge1525

.lr.ph1524:                                       ; preds = %._crit_edge1500
  %i.ezj = load i32, ptr %i.b, align 4, !tbaa !30 ; 11 uses
  %i.ezk = icmp sgt i32 %i.ezj, 0
  %i.ezl = load i32, ptr %i.h, align 4            ; 2 uses
  %i.ezm = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ezn = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.ezo = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.ezp = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.ezq = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %i.ezr = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.ezs = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.ezt = load i32, ptr %i.d, align 4
  %i.ezu = sext i32 %i.ezt to i64
  %factor.op.mul1526 = shl i32 %i.ezj, 6
  %i.ezv = sext i32 %i.ezj to i64
  %i.ezw = shl nsw i32 %i.ezj, 1
  %i.ezx = sext i32 %i.ezw to i64
  %i.ezy = mul nsw i32 %i.ezj, 3
  %i.ezz = sext i32 %i.ezy to i64
  %i.faa = shl nsw i32 %i.ezj, 2
  %i.fab = sext i32 %i.faa to i64
  %i.fac = mul nsw i32 %i.ezj, 5
  %i.fad = sext i32 %i.fac to i64
  %i.fae = mul nsw i32 %i.ezj, 6
  %i.faf = sext i32 %i.fae to i64
  %i.fag = mul nsw i32 %i.ezj, 7
  %i.fah = sext i32 %i.fag to i64
  %i.fai = shl nsw i32 %i.ezj, 3
  %i.faj = sext i32 %i.fai to i64                 ; 8 uses
  br i1 %i.ezk, label %.lr.ph1524.split.us, label %._crit_edge1525

.lr.ph1524.split.us:                              ; preds = %.lr.ph1524
  %i.fak = load i32, ptr %i.e, align 4
  %i.fal = load i32, ptr %i.c, align 4
  %i.fam = load i32, ptr %i.a, align 4
  %i.fan = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fao = load i32, ptr %i.o, align 4, !tbaa !31, !noalias !920
  %i.fap = load ptr, ptr %0, align 8, !tbaa !15, !noalias !920
  %i.faq = load i64, ptr %i.u, align 8, !tbaa !16, !noalias !920
  %i.far = load i64, ptr %i.fan, align 8, !tbaa !17, !noalias !920 ; 2 uses
  %factor.op.mul1529 = mul i64 %i.faq, %i.far
  %i.fas = sext i32 %i.fao to i64
  %factor.op.mul1520.us = mul i64 %i.far, %i.fas
  %i.fat = load ptr, ptr %1, align 8, !tbaa !15
  %i.fau = sext i32 %i.fak to i64
  %i.fav = sext i32 %i.ezh to i64
  %i.faw = sext i32 %i.fal to i64
  %wide.trip.count1598 = sext i32 %5 to i64
  %wide.trip.count1593 = zext nneg i32 %i.ezj to i64
  br label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us

_ZN4ncnn3MatD2Ev.exit.lr.ph.us:                   ; preds = %._crit_edge.us1528, %.lr.ph1524.split.us
  %indvars.iv1595 = phi i64 [ %indvars.iv.next1596, %._crit_edge.us1528 ], [ %i.fav, %.lr.ph1524.split.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  %i.fax = add nsw i64 %indvars.iv1595, %i.faw
  %.reass1530 = mul i64 %factor.op.mul1529, %i.fax
  %i.fay = getelementptr inbounds nuw i8, ptr %i.fap, i64 %.reass1530
  %i.faz = trunc nsw i64 %indvars.iv1595 to i32
  %.reass1527.us = mul i32 %factor.op.mul1526, %i.faz
  %i.fba = sext i32 %.reass1527.us to i64
  %i.fbb = getelementptr inbounds [4 x i8], ptr %i.fat, i64 %i.fba
  br label %_ZN4ncnn3MatD2Ev.exit.us

_ZN4ncnn3MatD2Ev.exit.us:                         ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, %bb.ps
  %indvars.iv1590 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %indvars.iv.next1591, %bb.ps ] ; 3 uses
  %i.fbc = trunc i64 %indvars.iv1590 to i32
  %i.fbd = add i32 %i.fam, %i.fbc                 ; 2 uses
  %i.fbe = sdiv i32 %i.fbd, %i.ezl
  %i.fbf = srem i32 %i.fbd, %i.ezl
  %i.fbg = mul nsw i32 %i.fbe, 6
  %i.fbh = sext i32 %i.fbg to i64                 ; 2 uses
  %.reass1521.us = mul i64 %factor.op.mul1520.us, %i.fbh
  %i.fbi = getelementptr inbounds nuw i8, ptr %i.fay, i64 %.reass1521.us
  %i.fbj = mul nsw i32 %i.fbf, 6                  ; 8 uses
  %i.fbk = sext i32 %i.fbj to i64
  %i.fbl = getelementptr inbounds [2 x i8], ptr %i.fbi, i64 %i.fbk
  %i.fbm = or disjoint i32 %i.fbj, 1
  %i.fbn = load i32, ptr %i.d, align 4            ; 7 uses
  %i.fbo = icmp slt i32 %i.fbm, %i.fbn
  %i.fbp = add nsw i32 %i.fbj, 2
  %i.fbq = icmp slt i32 %i.fbp, %i.fbn
  %i.fbr = add nsw i32 %i.fbj, 3
  %i.fbs = icmp slt i32 %i.fbr, %i.fbn
  %i.fbt = add nsw i32 %i.fbj, 4
  %i.fbu = icmp slt i32 %i.fbt, %i.fbn
  %i.fbv = add nsw i32 %i.fbj, 5
  %i.fbw = icmp slt i32 %i.fbv, %i.fbn
  %i.fbx = add nsw i32 %i.fbj, 6
  %i.fby = icmp slt i32 %i.fbx, %i.fbn
  %i.fbz = add nsw i32 %i.fbj, 7
  %i.fca = icmp slt i32 %i.fbz, %i.fbn
  %invariant.op1622 = sub nsw i64 %i.fau, %i.fbh
  br label %bb.pa

bb.pa:                                            ; preds = %bb.pp, %_ZN4ncnn3MatD2Ev.exit.us
  %indvars.iv1582 = phi i64 [ %indvars.iv.next1583, %bb.pp ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ] ; 10 uses
  %.08661508.us = phi ptr [ %i.ffe, %bb.pp ], [ %i.fbl, %_ZN4ncnn3MatD2Ev.exit.us ] ; 9 uses
  %i.fcb = icmp slt i64 %indvars.iv1582, %invariant.op1622
  br i1 %i.fcb, label %bb.pb, label %bb.pp

bb.pb:                                            ; preds = %bb.pa
  %i.fcc = load i16, ptr %.08661508.us, align 2, !tbaa !24
  %i.fcd = zext i16 %i.fcc to i32
  %i.fce = shl nuw i32 %i.fcd, 16
  %i.fcf = bitcast i32 %i.fce to float            ; 2 uses
  br i1 %i.fbo, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %bb.pb
  %i.fcg = getelementptr inbounds nuw i8, ptr %.08661508.us, i64 2
  %i.fch = load i16, ptr %i.fcg, align 2, !tbaa !24
  %i.fci = zext i16 %i.fch to i32
  %i.fcj = shl nuw i32 %i.fci, 16
  %i.fck = bitcast i32 %i.fcj to float
  br label %bb.pd

bb.pd:                                            ; preds = %bb.pc, %bb.pb
  %.0862.us = phi nsz float [ %i.fck, %bb.pc ], [ 0.000000e+00, %bb.pb ] ; 2 uses
  br i1 %i.fbq, label %bb.pe, label %bb.pf

bb.pe:                                            ; preds = %bb.pd
  %i.fcl = getelementptr inbounds nuw i8, ptr %.08661508.us, i64 4
  %i.fcm = load i16, ptr %i.fcl, align 2, !tbaa !24
  %i.fcn = zext i16 %i.fcm to i32
  %i.fco = shl nuw i32 %i.fcn, 16
  %i.fcp = bitcast i32 %i.fco to float
  br label %bb.pf

bb.pf:                                            ; preds = %bb.pe, %bb.pd
  %.0860.us = phi nsz float [ %i.fcp, %bb.pe ], [ 0.000000e+00, %bb.pd ] ; 2 uses
  br i1 %i.fbs, label %bb.pg, label %bb.ph

bb.pg:                                            ; preds = %bb.pf
  %i.fcq = getelementptr inbounds nuw i8, ptr %.08661508.us, i64 6
  %i.fcr = load i16, ptr %i.fcq, align 2, !tbaa !24
  %i.fcs = zext i16 %i.fcr to i32
  %i.fct = shl nuw i32 %i.fcs, 16
  %i.fcu = bitcast i32 %i.fct to float
  br label %bb.ph

bb.ph:                                            ; preds = %bb.pg, %bb.pf
  %.0858.us = phi nsz float [ %i.fcu, %bb.pg ], [ 0.000000e+00, %bb.pf ] ; 2 uses
  br i1 %i.fbu, label %bb.pi, label %bb.pj

bb.pi:                                            ; preds = %bb.ph
  %i.fcv = getelementptr inbounds nuw i8, ptr %.08661508.us, i64 8
  %i.fcw = load i16, ptr %i.fcv, align 2, !tbaa !24
  %i.fcx = zext i16 %i.fcw to i32
  %i.fcy = shl nuw i32 %i.fcx, 16
  %i.fcz = bitcast i32 %i.fcy to float
  br label %bb.pj

bb.pj:                                            ; preds = %bb.pi, %bb.ph
  %.0856.us = phi nsz float [ %i.fcz, %bb.pi ], [ 0.000000e+00, %bb.ph ] ; 2 uses
  br i1 %i.fbw, label %bb.pk, label %bb.pl

bb.pk:                                            ; preds = %bb.pj
  %i.fda = getelementptr inbounds nuw i8, ptr %.08661508.us, i64 10
  %i.fdb = load i16, ptr %i.fda, align 2, !tbaa !24
  %i.fdc = zext i16 %i.fdb to i32
  %i.fdd = shl nuw i32 %i.fdc, 16
  %i.fde = bitcast i32 %i.fdd to float
  br label %bb.pl

bb.pl:                                            ; preds = %bb.pk, %bb.pj
  %.0854.us = phi nsz float [ %i.fde, %bb.pk ], [ 0.000000e+00, %bb.pj ] ; 2 uses
  br i1 %i.fby, label %bb.pm, label %bb.pn

bb.pm:                                            ; preds = %bb.pl
  %i.fdf = getelementptr inbounds nuw i8, ptr %.08661508.us, i64 12
  %i.fdg = load i16, ptr %i.fdf, align 2, !tbaa !24
  %i.fdh = zext i16 %i.fdg to i32
  %i.fdi = shl nuw i32 %i.fdh, 16
  %i.fdj = bitcast i32 %i.fdi to float
  br label %bb.pn

bb.pn:                                            ; preds = %bb.pm, %bb.pl
  %.0852.us = phi nsz float [ %i.fdj, %bb.pm ], [ 0.000000e+00, %bb.pl ] ; 2 uses
  br i1 %i.fca, label %bb.po, label %bb.pp

bb.po:                                            ; preds = %bb.pn
  %i.fdk = getelementptr inbounds nuw i8, ptr %.08661508.us, i64 14
  %i.fdl = load i16, ptr %i.fdk, align 2, !tbaa !24
  %i.fdm = zext i16 %i.fdl to i32
  %i.fdn = shl nuw i32 %i.fdm, 16
  %i.fdo = bitcast i32 %i.fdn to float
  br label %bb.pp

bb.pp:                                            ; preds = %bb.po, %bb.pn, %bb.pa
  %.0864.us = phi nsz float [ %i.fcf, %bb.po ], [ %i.fcf, %bb.pn ], [ 0.000000e+00, %bb.pa ]
  %.1863.us = phi nsz float [ %.0862.us, %bb.po ], [ %.0862.us, %bb.pn ], [ 0.000000e+00, %bb.pa ] ; 4 uses
  %.1861.us = phi nsz float [ %.0860.us, %bb.po ], [ %.0860.us, %bb.pn ], [ 0.000000e+00, %bb.pa ] ; 4 uses
  %.1859.us = phi nsz float [ %.0858.us, %bb.po ], [ %.0858.us, %bb.pn ], [ 0.000000e+00, %bb.pa ] ; 3 uses
  %.1857.us = phi nsz float [ %.0856.us, %bb.po ], [ %.0856.us, %bb.pn ], [ 0.000000e+00, %bb.pa ] ; 4 uses
  %.1855.us = phi nsz float [ %.0854.us, %bb.po ], [ %.0854.us, %bb.pn ], [ 0.000000e+00, %bb.pa ] ; 4 uses
  %.1853.us = phi nsz float [ %.0852.us, %bb.po ], [ %.0852.us, %bb.pn ], [ 0.000000e+00, %bb.pa ] ; 4 uses
  %.0851.us = phi nsz float [ %i.fdo, %bb.po ], [ 0.000000e+00, %bb.pn ], [ 0.000000e+00, %bb.pa ]
  %.neg1427.us = fmul fast float %.1857.us, 4.250000e+00
  %i.fdp = fsub fast float %.1861.us, %.neg1427.us
  %i.fdq = fadd fast float %i.fdp, %.1853.us      ; 2 uses
  %.neg1428.us = fmul fast float %.1859.us, 4.250000e+00
  %i.fdr = fsub fast float %.1863.us, %.neg1428.us
  %i.fds = fadd fast float %i.fdr, %.1855.us      ; 2 uses
  %i.fdt = fmul fast float %.1861.us, 2.500000e-01
  %.neg1429.us = fmul fast float %.1857.us, 1.250000e+00
  %11 = fsub fast float %i.fdt, %.neg1429.us
  %i.fdu = fadd fast float %11, %.1853.us         ; 2 uses
  %i.fdv = fmul fast float %.1863.us, 5.000000e-01
  %i.fdw = fmul fast float %.1859.us, 2.500000e+00 ; 2 uses
  %i.fdx = fsub fast float %i.fdv, %i.fdw
  %i.fdy = fmul fast float %.1855.us, 2.000000e+00
  %i.fdz = fadd fast float %i.fdy, %i.fdx         ; 2 uses
  %i.fea = fmul fast float %.1861.us, 4.000000e+00
  %i.feb = fmul fast float %.1857.us, 5.000000e+00
  %i.fec = fsub fast float %i.fea, %i.feb
  %i.fed = fadd fast float %i.fec, %.1853.us      ; 2 uses
  %i.fee = fmul fast float %.1863.us, 2.000000e+00
  %i.fef = fsub fast float %i.fee, %i.fdw
  %i.feg = fmul fast float %.1855.us, 5.000000e-01
  %i.feh = fadd fast float %i.feg, %i.fef         ; 2 uses
  %i.fei = fsub fast float %.0864.us, %.1853.us
  %i.fej = fsub fast float %.1857.us, %.1861.us
  %i.fek = fmul fast float %i.fej, 5.250000e+00
  %i.fel = fadd fast float %i.fei, %i.fek
  %i.fem = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv1582
  store float %i.fel, ptr %i.fem, align 4, !tbaa !22
  %i.fen = fadd fast float %i.fdq, %i.fds
  %i.feo = getelementptr inbounds nuw [4 x i8], ptr %i.ezm, i64 %indvars.iv1582
  store float %i.fen, ptr %i.feo, align 4, !tbaa !22
  %i.fep = fsub fast float %i.fdq, %i.fds
  %i.feq = getelementptr inbounds nuw [4 x i8], ptr %i.ezn, i64 %indvars.iv1582
  store float %i.fep, ptr %i.feq, align 4, !tbaa !22
  %i.fer = fadd fast float %i.fdu, %i.fdz
  %i.fes = getelementptr inbounds nuw [4 x i8], ptr %i.ezo, i64 %indvars.iv1582
  store float %i.fer, ptr %i.fes, align 4, !tbaa !22
  %i.fet = fsub fast float %i.fdu, %i.fdz
  %i.feu = getelementptr inbounds nuw [4 x i8], ptr %i.ezp, i64 %indvars.iv1582
  store float %i.fet, ptr %i.feu, align 4, !tbaa !22
  %i.fev = fadd fast float %i.fed, %i.feh
  %i.few = getelementptr inbounds nuw [4 x i8], ptr %i.ezq, i64 %indvars.iv1582
  store float %i.fev, ptr %i.few, align 4, !tbaa !22
  %i.fex = fsub fast float %i.fed, %i.feh
  %i.fey = getelementptr inbounds nuw [4 x i8], ptr %i.ezr, i64 %indvars.iv1582
  store float %i.fex, ptr %i.fey, align 4, !tbaa !22
  %i.fez = fsub fast float %.0851.us, %.1863.us
  %i.ffa = fsub fast float %.1859.us, %.1855.us
  %i.ffb = fmul fast float %i.ffa, 5.250000e+00
  %i.ffc = fadd fast float %i.fez, %i.ffb
  %i.ffd = getelementptr inbounds nuw [4 x i8], ptr %i.ezs, i64 %indvars.iv1582
  store float %i.ffc, ptr %i.ffd, align 4, !tbaa !22
  %i.ffe = getelementptr inbounds [2 x i8], ptr %.08661508.us, i64 %i.ezu
  %indvars.iv.next1583 = add nuw nsw i64 %indvars.iv1582, 1 ; 2 uses
  %exitcond1585.not = icmp eq i64 %indvars.iv.next1583, 8
  br i1 %exitcond1585.not, label %bb.pq, label %bb.pa, !llvm.loop !913

bb.pq:                                            ; preds = %bb.pp
  %i.fff = getelementptr inbounds nuw [4 x i8], ptr %i.fbb, i64 %indvars.iv1590 ; 8 uses
  %i.ffg = getelementptr inbounds nuw [4 x i8], ptr %i.fff, i64 %i.ezv
  %i.ffh = getelementptr inbounds nuw [4 x i8], ptr %i.fff, i64 %i.ezx
  %i.ffi = getelementptr inbounds nuw [4 x i8], ptr %i.fff, i64 %i.ezz
  %i.ffj = getelementptr inbounds nuw [4 x i8], ptr %i.fff, i64 %i.fab
  %i.ffk = getelementptr inbounds nuw [4 x i8], ptr %i.fff, i64 %i.fad
  %i.ffl = getelementptr inbounds nuw [4 x i8], ptr %i.fff, i64 %i.faf
  %i.ffm = getelementptr inbounds nuw [4 x i8], ptr %i.fff, i64 %i.fah
  br label %bb.pr

bb.pr:                                            ; preds = %bb.pr, %bb.pq
  %indvars.iv1586 = phi i64 [ %indvars.iv.next1587, %bb.pr ], [ 0, %bb.pq ] ; 2 uses
  %.08431517.us = phi ptr [ %i.fhr, %bb.pr ], [ %i.ffm, %bb.pq ] ; 2 uses
  %.08441516.us = phi ptr [ %i.fhq, %bb.pr ], [ %i.ffl, %bb.pq ] ; 2 uses
  %.08451515.us = phi ptr [ %i.fhp, %bb.pr ], [ %i.ffk, %bb.pq ] ; 2 uses
  %.08461514.us = phi ptr [ %i.fho, %bb.pr ], [ %i.ffj, %bb.pq ] ; 2 uses
  %.08471513.us = phi ptr [ %i.fhn, %bb.pr ], [ %i.ffi, %bb.pq ] ; 2 uses
  %.08481512.us = phi ptr [ %i.fhm, %bb.pr ], [ %i.ffh, %bb.pq ] ; 2 uses
  %.08491511.us = phi ptr [ %i.fhl, %bb.pr ], [ %i.ffg, %bb.pq ] ; 2 uses
  %.08501510.us = phi ptr [ %i.fhk, %bb.pr ], [ %i.fff, %bb.pq ] ; 2 uses
  %i.ffn = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %indvars.iv1586 ; 5 uses
  %i.ffo = load float, ptr %i.ffn, align 16, !tbaa !22
  %i.ffp = getelementptr inbounds nuw i8, ptr %i.ffn, i64 4
  %i.ffq = getelementptr inbounds nuw i8, ptr %i.ffn, i64 12
  %i.ffr = getelementptr inbounds nuw i8, ptr %i.ffn, i64 20
  %i.ffs = getelementptr inbounds nuw i8, ptr %i.ffn, i64 28
  %i.fft = load float, ptr %i.ffs, align 4, !tbaa !22
  %i.ffu = load <2 x float>, ptr %i.ffp, align 4, !tbaa !22 ; 3 uses
  %i.ffv = load <2 x float>, ptr %i.ffq, align 4, !tbaa !22 ; 4 uses
  %i.ffw = load <2 x float>, ptr %i.ffr, align 4, !tbaa !22 ; 4 uses
  %i.ffx = fmul fast <2 x float> %i.ffv, splat (float 4.250000e+00)
  %i.ffy = fsub fast <2 x float> %i.ffu, %i.ffx
  %i.ffz = fadd fast <2 x float> %i.ffy, %i.ffw   ; 2 uses
  %i.fga = extractelement <2 x float> %i.ffu, i64 1 ; 3 uses
  %i.fgb = fmul fast float %i.fga, 2.500000e-01
  %i.fgc = extractelement <2 x float> %i.ffv, i64 1 ; 3 uses
  %.neg1424.us = fmul fast float %i.fgc, 1.250000e+00
  %12 = fsub fast float %i.fgb, %.neg1424.us
  %13 = extractelement <2 x float> %i.ffw, i64 1  ; 3 uses
  %i.fgd = fadd fast float %12, %13               ; 2 uses
  %i.fge = extractelement <2 x float> %i.ffu, i64 0 ; 3 uses
  %i.fgf = fmul fast float %i.fge, 5.000000e-01
  %i.fgg = extractelement <2 x float> %i.ffv, i64 0
  %i.fgh = fmul fast float %i.fgg, 2.500000e+00   ; 2 uses
  %i.fgi = fsub fast float %i.fgf, %i.fgh
  %i.fgj = extractelement <2 x float> %i.ffw, i64 0 ; 2 uses
  %i.fgk = fmul fast float %i.fgj, 2.000000e+00
  %i.fgl = fadd fast float %i.fgk, %i.fgi         ; 2 uses
  %i.fgm = fmul fast float %i.fga, 4.000000e+00
  %i.fgn = fmul fast float %i.fgc, 5.000000e+00
  %i.fgo = fsub fast float %i.fgm, %i.fgn
  %i.fgp = fadd fast float %i.fgo, %13            ; 2 uses
  %i.fgq = fmul fast float %i.fge, 2.000000e+00
  %i.fgr = fsub fast float %i.fgq, %i.fgh
  %i.fgs = fmul fast float %i.fgj, 5.000000e-01
  %i.fgt = fadd fast float %i.fgs, %i.fgr         ; 2 uses
  %i.fgu = fsub fast float %i.ffo, %13
  %i.fgv = fsub fast float %i.fgc, %i.fga
  %i.fgw = fmul fast float %i.fgv, 5.250000e+00
  %i.fgx = fadd fast float %i.fgu, %i.fgw
  store float %i.fgx, ptr %.08501510.us, align 4, !tbaa !22
  %i.fgy = extractelement <2 x float> %i.ffz, i64 0 ; 2 uses
  %i.fgz = extractelement <2 x float> %i.ffz, i64 1 ; 2 uses
  %i.fha = fadd fast float %i.fgz, %i.fgy
  store float %i.fha, ptr %.08491511.us, align 4, !tbaa !22
  %i.fhb = fsub fast float %i.fgz, %i.fgy
  store float %i.fhb, ptr %.08481512.us, align 4, !tbaa !22
  %i.fhc = fadd fast float %i.fgd, %i.fgl
  store float %i.fhc, ptr %.08471513.us, align 4, !tbaa !22
  %i.fhd = fsub fast float %i.fgd, %i.fgl
  store float %i.fhd, ptr %.08461514.us, align 4, !tbaa !22
  %i.fhe = fadd fast float %i.fgp, %i.fgt
  store float %i.fhe, ptr %.08451515.us, align 4, !tbaa !22
  %i.fhf = fsub fast float %i.fgp, %i.fgt
  store float %i.fhf, ptr %.08441516.us, align 4, !tbaa !22
  %i.fhg = fsub fast float %i.fft, %i.fge
  %foldExtExtBinop = fsub fast <2 x float> %i.ffv, %i.ffw
  %i.fhh = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fhi = fmul fast float %i.fhh, 5.250000e+00
  %i.fhj = fadd fast float %i.fhg, %i.fhi
  store float %i.fhj, ptr %.08431517.us, align 4, !tbaa !22
  %i.fhk = getelementptr inbounds nuw [4 x i8], ptr %.08501510.us, i64 %i.faj
  %i.fhl = getelementptr inbounds nuw [4 x i8], ptr %.08491511.us, i64 %i.faj
  %i.fhm = getelementptr inbounds nuw [4 x i8], ptr %.08481512.us, i64 %i.faj
  %i.fhn = getelementptr inbounds nuw [4 x i8], ptr %.08471513.us, i64 %i.faj
  %i.fho = getelementptr inbounds nuw [4 x i8], ptr %.08461514.us, i64 %i.faj
  %i.fhp = getelementptr inbounds nuw [4 x i8], ptr %.08451515.us, i64 %i.faj
  %i.fhq = getelementptr inbounds nuw [4 x i8], ptr %.08441516.us, i64 %i.faj
  %i.fhr = getelementptr inbounds nuw [4 x i8], ptr %.08431517.us, i64 %i.faj
  %indvars.iv.next1587 = add nuw nsw i64 %indvars.iv1586, 1 ; 2 uses
  %exitcond1589.not = icmp eq i64 %indvars.iv.next1587, 8
  br i1 %exitcond1589.not, label %bb.ps, label %bb.pr, !llvm.loop !914

bb.ps:                                            ; preds = %bb.pr
  %indvars.iv.next1591 = add nuw nsw i64 %indvars.iv1590, 1 ; 2 uses
  %exitcond1594.not = icmp eq i64 %indvars.iv.next1591, %wide.trip.count1593
  br i1 %exitcond1594.not, label %._crit_edge.us1528, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !915

._crit_edge.us1528:                               ; preds = %bb.ps
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  %indvars.iv.next1596 = add nsw i64 %indvars.iv1595, 1 ; 2 uses
  %exitcond1599.not = icmp eq i64 %indvars.iv.next1596, %wide.trip.count1598
  br i1 %exitcond1599.not, label %._crit_edge1525, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, !llvm.loop !916

._crit_edge1525:                                  ; preds = %._crit_edge.us1528, %.lr.ph1524, %._crit_edge1500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL47conv3x3s1_winograd63_transform_input_tile_bf16sERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [8 x [8 x [16 x float]]], align 64 ; 67 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !30     ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.np

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.h, ptr %i.b, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !30
  %i.i = load i32, ptr %0, align 4, !tbaa !30     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !30
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !30
  %i.l = load i32, ptr %i.a, align 4, !tbaa !30   ; 2 uses
  %.not835 = icmp sgt i32 %i.l, %i.k
  br i1 %.not835, label %._crit_edge838, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 512
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 1024
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 1536
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 2048
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 2560
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 3072
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 3584
  %i.w = load i32, ptr %3, align 4, !tbaa !30     ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.split.preheader, label %._crit_edge838

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 576
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 1088
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 1600
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 2112
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 2624
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 3136
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 3648
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 640
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 1152
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 1664
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 2176
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 2688
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 3200
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 3712
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 704
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 1216
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 1728
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 2240
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 2752
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 3264
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 3776
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 768
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 1280
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 1792
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 2304
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 2816
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 3328
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 3840
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 832
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 1344
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 1856
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 2368
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 2880
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 3392
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 3904
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 384
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 896
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 1408
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 1920
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 2432
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 2944
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 3456
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 3968
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 960
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 1472
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 1984
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 2496
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 3008
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 3520
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 4032
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %._crit_edge
  %i.cc = phi i32 [ %i.gvv, %._crit_edge ], [ %i.w, %.lr.ph.split.preheader ] ; 2 uses
  %.0836 = phi i32 [ %i.gvw, %._crit_edge ], [ %i.l, %.lr.ph.split.preheader ] ; 4 uses
  %i.cd = shl nsw i32 %.0836, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.ce = icmp sgt i32 %i.cc, 0
  br i1 %i.ce, label %_ZN4ncnn3MatD2Ev.exit.lr.ph, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit.lr.ph:                      ; preds = %.lr.ph.split
  %i.cf = shl i32 %.0836, 10
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph, %bb.nn
  %indvars.iv842 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph ], [ %indvars.iv.next843, %bb.nn ] ; 3 uses
  %i.cg = load i32, ptr %4, align 4, !tbaa !30
  %i.ch = load i32, ptr %5, align 4, !tbaa !30    ; 2 uses
  %i.ci = load i32, ptr %7, align 4, !tbaa !30
  %i.cj = load i32, ptr %8, align 4, !tbaa !30    ; 5 uses
  %i.ck = load i32, ptr %i.m, align 4, !tbaa !31, !noalias !926
  %i.cl = load ptr, ptr %6, align 8, !tbaa !15, !noalias !926
  %i.cm = load i64, ptr %i.n, align 8, !tbaa !16, !noalias !926
  %i.cn = load i64, ptr %i.o, align 8, !tbaa !17, !noalias !926 ; 2 uses
  %i.co = sext i32 %i.ck to i64
  %i.cp = trunc nuw nsw i64 %indvars.iv842 to i32
  %i.cq = add nsw i32 %i.ci, %i.cd
  %i.cr = add nsw i32 %i.cg, %i.cp                ; 2 uses
  %i.cs = insertelement <2 x i32> poison, i32 %i.cq, i64 0
  %i.ct = insertelement <2 x i32> %i.cs, i32 %i.cr, i64 1
  %i.cu = insertelement <2 x i32> poison, i32 %i.cj, i64 0
  %i.cv = insertelement <2 x i32> %i.cu, i32 %i.ch, i64 1
  %i.cw = sdiv <2 x i32> %i.ct, %i.cv             ; 2 uses
  %i.cx = extractelement <2 x i32> %i.cw, i64 0
  %i.cy = sext i32 %i.cx to i64
  %i.cz = mul i64 %i.cm, %i.cy
  %i.da = mul i64 %i.cz, %i.cn
  %i.db = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.da
  %i.dc = srem i32 %i.cr, %i.ch
  %i.dd = extractelement <2 x i32> %i.cw, i64 1
  %i.de = mul nsw i32 %i.dd, 6                    ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_:bb.a
  br label %.preheader3818

.preheader3818:                                   ; preds = %.lr.ph3877.split, %.preheader3818.loopexit, %.preheader3819
  %.2.lcssa = phi i32 [ %.11587.lcssa, %.preheader3819 ], [ %i.fev, %.lr.ph3877.split ], [ %i.few, %.preheader3818.loopexit ] ; 3 uses
  %i.fex = or disjoint i32 %.2.lcssa, 1
  %i.fey = icmp slt i32 %i.fex, %3
  br i1 %i.fey, label %.lr.ph3902, label %.preheader

.lr.ph3902:                                       ; preds = %.preheader3818
  %.not1648 = icmp eq ptr %.0.val, null
  %i.fez = icmp sgt i32 %5, 0
  %i.ffa = shl nuw nsw i32 %5, 1
  %i.ffb = zext nneg i32 %i.ffa to i64
  %i.ffc = shl nuw nsw i32 %5, 2
  %i.ffd = zext nneg i32 %i.ffc to i64
  %i.ffe = mul nuw nsw i32 %5, 6
  %i.fff = zext nneg i32 %i.ffe to i64
  %i.ffg = shl nuw nsw i32 %5, 3
  %i.ffh = zext nneg i32 %i.ffg to i64
  %i.ffi = mul nuw nsw i32 %5, 10
  %i.ffj = zext nneg i32 %i.ffi to i64
  %i.ffk = mul nuw nsw i32 %5, 12
  %i.ffl = zext nneg i32 %i.ffk to i64
  %i.ffm = mul nuw nsw i32 %5, 14
  %i.ffn = zext nneg i32 %i.ffm to i64
  %i.ffo = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ffp = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.ffq = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.ffr = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.ffs = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.fft = shl nuw nsw i32 %5, 4
  %i.ffu = zext nneg i32 %i.fft to i64            ; 8 uses
  %i.ffv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ffw = sext i32 %i.g to i64
  %i.ffx = sext i32 %i.i to i64
  %i.ffy = sext i32 %.2.lcssa to i64
  %i.ffz = sext i32 %3 to i64
  %i.fga = sext i32 %2 to i64                     ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.0.val, i64 %i.fga
  %wide.trip.count3993 = zext nneg i32 %5 to i64
  %invariant.op4063 = add nsw i64 %i.ffz, -1
  %i.fgb = load ptr, ptr %0, align 8
  %i.fgc = load i32, ptr %i.f, align 4
  %i.fgd = load ptr, ptr %1, align 8
  %i.fge = load i64, ptr %i.l, align 8
  %i.fgf = load i64, ptr %i.ffv, align 8          ; 2 uses
  %factor.op.mul = mul i64 %i.fge, %i.fgf
  %i.fgg = sext i32 %i.fgc to i64
  %factor.op.mul3898 = mul i64 %i.fgf, %i.fgg
  br label %bb.di

.preheader.loopexit:                              ; preds = %._crit_edge
  %i.fgh = trunc nsw i64 %indvars.iv.next3996 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader3818
  %.3.lcssa = phi i32 [ %.2.lcssa, %.preheader3818 ], [ %i.fgh, %.preheader.loopexit ] ; 2 uses
  %i.fgi = icmp slt i32 %.3.lcssa, %3
  br i1 %i.fgi, label %.lr.ph3924, label %._crit_edge3925

.lr.ph3924:                                       ; preds = %.preheader
  %.not = icmp eq ptr %.0.val, null
  %i.fgj = icmp sgt i32 %5, 0
  %i.fgk = sext i32 %5 to i64
  %i.fgl = shl nuw nsw i32 %5, 1
  %i.fgm = zext nneg i32 %i.fgl to i64
  %i.fgn = mul nuw nsw i32 %5, 3
  %i.fgo = zext nneg i32 %i.fgn to i64
  %i.fgp = shl nuw nsw i32 %5, 2
  %i.fgq = zext nneg i32 %i.fgp to i64
  %i.fgr = mul nuw nsw i32 %5, 5
  %i.fgs = zext nneg i32 %i.fgr to i64
  %i.fgt = mul nuw nsw i32 %5, 6
  %i.fgu = zext nneg i32 %i.fgt to i64
  %i.fgv = mul nuw nsw i32 %5, 7
  %i.fgw = zext nneg i32 %i.fgv to i64
  %i.fgx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.fgy = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.fgz = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.fha = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.fhb = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.fhc = shl nuw nsw i32 %5, 3
  %i.fhd = zext nneg i32 %i.fhc to i64            ; 8 uses
  %i.fhe = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fhf = sext i32 %i.g to i64
  %i.fhg = sext i32 %i.i to i64
  %i.fhh = sext i32 %.3.lcssa to i64
  %i.fhi = sext i32 %2 to i64                     ; 2 uses
  %wide.trip.count4014 = sext i32 %3 to i64
  %invariant.gep4065 = getelementptr [4 x i8], ptr %.0.val, i64 %i.fhi
  %wide.trip.count4009 = zext nneg i32 %5 to i64
  %i.fhj = load ptr, ptr %0, align 8
  %i.fhk = load i32, ptr %i.f, align 4
  %i.fhl = load ptr, ptr %1, align 8
  %i.fhm = load i64, ptr %i.l, align 8
  %i.fhn = load i64, ptr %i.fhe, align 8          ; 2 uses
  %factor.op.mul4067 = mul i64 %i.fhm, %i.fhn
  %i.fho = sext i32 %i.fhk to i64
  %factor.op.mul3919 = mul i64 %i.fhn, %i.fho
  br label %bb.ez

bb.di:                                            ; preds = %.lr.ph3902, %._crit_edge
  %indvars.iv3995 = phi i64 [ %i.ffy, %.lr.ph3902 ], [ %indvars.iv.next3996, %._crit_edge ] ; 4 uses
  br i1 %.not1648, label %.thread, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv3995
  %i.fhp = load <2 x float>, ptr %gep, align 4, !tbaa !22
  br label %.thread

.thread:                                          ; preds = %bb.di, %bb.dj
  %i.fhq = phi <2 x float> [ %i.fhp, %bb.dj ], [ zeroinitializer, %bb.di ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  br i1 %i.fez, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread
  %i.fhr = trunc nsw i64 %indvars.iv3995 to i32
  %factor.op.mul.reass = mul i32 %factor.op.mul3833, %i.fhr
  %i.fhs = sext i32 %factor.op.mul.reass to i64
  %i.fht = getelementptr inbounds [4 x i8], ptr %i.fgb, i64 %i.fhs
  %i.fhu = add nsw i64 %indvars.iv3995, %i.fga
  %.reass = mul i64 %factor.op.mul, %i.fhu
  %i.fhv = getelementptr inbounds nuw i8, ptr %i.fgd, i64 %.reass
  br label %bb.dk

bb.dk:                                            ; preds = %.lr.ph, %bb.dm
  %indvars.iv3990 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next3991, %bb.dm ] ; 3 uses
  %.idx4057 = shl nuw nsw i64 %indvars.iv3990, 3
  %i.fhw = getelementptr inbounds nuw i8, ptr %i.fht, i64 %.idx4057 ; 8 uses
  %i.fhx = getelementptr inbounds nuw [4 x i8], ptr %i.fhw, i64 %i.ffb
  %i.fhy = getelementptr inbounds nuw [4 x i8], ptr %i.fhw, i64 %i.ffd
  %i.fhz = getelementptr inbounds nuw [4 x i8], ptr %i.fhw, i64 %i.fff
  %i.fia = getelementptr inbounds nuw [4 x i8], ptr %i.fhw, i64 %i.ffh
  %i.fib = getelementptr inbounds nuw [4 x i8], ptr %i.fhw, i64 %i.ffj
  %i.fic = getelementptr inbounds nuw [4 x i8], ptr %i.fhw, i64 %i.ffl
  %i.fid = getelementptr inbounds nuw [4 x i8], ptr %i.fhw, i64 %i.ffn
  br label %bb.dl

_ZN4ncnn3MatD2Ev.exit1683:                        ; preds = %bb.dl
  %i.fie = trunc i64 %indvars.iv3990 to i32
  %i.fif = add i32 %4, %i.fie                     ; 2 uses
  %i.fig = sdiv i32 %i.fif, %i.q
  %i.fih = srem i32 %i.fif, %i.q
  %i.fii = mul nsw i32 %i.fig, 6
  %i.fij = sext i32 %i.fii to i64                 ; 2 uses
  %.reass3899 = mul i64 %factor.op.mul3898, %i.fij
  %i.fik = getelementptr inbounds nuw i8, ptr %i.fhv, i64 %.reass3899
  %i.fil = mul nsw i32 %i.fih, 6                  ; 6 uses
  %i.fim = sext i32 %i.fil to i64
  %i.fin = getelementptr inbounds [2 x i8], ptr %i.fik, i64 %i.fim
  %i.fio = or disjoint i32 %i.fil, 1
  %i.fip = icmp slt i32 %i.fio, %i.g
  %i.fiq = add nsw i32 %i.fil, 2
  %i.fir = icmp slt i32 %i.fiq, %i.g
  %i.fis = add nsw i32 %i.fil, 3
  %i.fit = icmp slt i32 %i.fis, %i.g
  %i.fiu = add nsw i32 %i.fil, 4
  %i.fiv = icmp slt i32 %i.fiu, %i.g
  %i.fiw = add nsw i32 %i.fil, 5
  %i.fix = icmp slt i32 %i.fiw, %i.g
  %invariant.op4062 = sub nsw i64 %i.ffx, %i.fij
  %i.fiy = load ptr, ptr %7, align 8              ; 2 uses
  %i.fiz = getelementptr inbounds nuw i8, ptr %i.fiy, i64 4
  %i.fja = load ptr, ptr %7, align 8              ; 2 uses
  %i.fjb = getelementptr inbounds nuw i8, ptr %i.fja, i64 4
  %i.fjc = load ptr, ptr %7, align 8
  br label %bb.dn

bb.dl:                                            ; preds = %bb.dk, %bb.dl
  %indvars.iv3982 = phi i64 [ 0, %bb.dk ], [ %indvars.iv.next3983, %bb.dl ] ; 7 uses
  %.015973893 = phi ptr [ %i.fid, %bb.dk ], [ %i.fla, %bb.dl ] ; 2 uses
  %.015983892 = phi ptr [ %i.fic, %bb.dk ], [ %i.fkz, %bb.dl ] ; 2 uses
  %.015993891 = phi ptr [ %i.fib, %bb.dk ], [ %i.fky, %bb.dl ] ; 2 uses
  %.016003890 = phi ptr [ %i.fia, %bb.dk ], [ %i.fkx, %bb.dl ] ; 2 uses
  %.016013889 = phi ptr [ %i.fhz, %bb.dk ], [ %i.fkw, %bb.dl ] ; 2 uses
  %.016023888 = phi ptr [ %i.fhy, %bb.dk ], [ %i.fkv, %bb.dl ] ; 2 uses
  %.016033887 = phi ptr [ %i.fhx, %bb.dk ], [ %i.fku, %bb.dl ] ; 2 uses
  %.016043886 = phi ptr [ %i.fhw, %bb.dk ], [ %i.fkt, %bb.dl ] ; 2 uses
  %i.fjd = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv3982
  %i.fje = load <2 x float>, ptr %.016033887, align 4, !tbaa !22 ; 2 uses
  %i.fjf = load <2 x float>, ptr %.016023888, align 4, !tbaa !22 ; 2 uses
  %i.fjg = fadd fast <2 x float> %i.fjf, %i.fje   ; 3 uses
  %i.fjh = load <2 x float>, ptr %.016013889, align 4, !tbaa !22 ; 2 uses
  %i.fji = load <2 x float>, ptr %.016003890, align 4, !tbaa !22 ; 2 uses
  %i.fjj = fadd fast <2 x float> %i.fji, %i.fjh   ; 3 uses
  %i.fjk = load <2 x float>, ptr %.015993891, align 4, !tbaa !22 ; 2 uses
  %i.fjl = load <2 x float>, ptr %.015983892, align 4, !tbaa !22 ; 2 uses
  %i.fjm = fadd fast <2 x float> %i.fjl, %i.fjk   ; 3 uses
  %i.fjn = load <2 x float>, ptr %.016043886, align 4, !tbaa !22
  %i.fjo = fmul fast <2 x float> %i.fjm, splat (float 3.200000e+01)
  %i.fjp = fadd fast <2 x float> %i.fjj, %i.fjg
  %i.fjq = fadd fast <2 x float> %i.fjp, %i.fjo
  %i.fjr = fadd fast <2 x float> %i.fjq, %i.fjn
  store <2 x float> %i.fjr, ptr %i.fjd, align 8, !tbaa !22
  %i.fjs = getelementptr inbounds nuw [8 x i8], ptr %i.ffo, i64 %indvars.iv3982
  %i.fjt = fsub fast <2 x float> %i.fje, %i.fjf   ; 3 uses
  %i.fju = fsub fast <2 x float> %i.fjh, %i.fji   ; 3 uses
  %i.fjv = fsub fast <2 x float> %i.fjk, %i.fjl   ; 3 uses
  %i.fjw = fmul fast <2 x float> %i.fjv, splat (float 1.600000e+01)
  %i.fjx = fmul fast <2 x float> %i.fju, splat (float 2.000000e+00)
  %i.fjy = fadd fast <2 x float> %i.fjx, %i.fjt
  %i.fjz = fadd fast <2 x float> %i.fjy, %i.fjw
  store <2 x float> %i.fjz, ptr %i.fjs, align 8, !tbaa !22
  %i.fka = getelementptr inbounds nuw [8 x i8], ptr %i.ffp, i64 %indvars.iv3982
  %i.fkb = fmul fast <2 x float> %i.fjj, splat (float 4.000000e+00)
  %i.fkc = fadd fast <2 x float> %i.fkb, %i.fjg
  %i.fkd = fmul fast <2 x float> %i.fjm, splat (float 8.000000e+00)
  %i.fke = fadd fast <2 x float> %i.fkc, %i.fkd
  store <2 x float> %i.fke, ptr %i.fka, align 8, !tbaa !22
  %i.fkf = getelementptr inbounds nuw [8 x i8], ptr %i.ffq, i64 %indvars.iv3982
  %i.fkg = fmul fast <2 x float> %i.fju, splat (float 8.000000e+00)
  %i.fkh = fadd fast <2 x float> %i.fkg, %i.fjt
  %i.fki = fmul fast <2 x float> %i.fjv, splat (float 4.000000e+00)
  %i.fkj = fadd fast <2 x float> %i.fkh, %i.fki
  store <2 x float> %i.fkj, ptr %i.fkf, align 8, !tbaa !22
  %i.fkk = getelementptr inbounds nuw [8 x i8], ptr %i.ffr, i64 %indvars.iv3982
  %i.fkl = fmul fast <2 x float> %i.fjj, splat (float 1.600000e+01)
  %8 = fmul fast <2 x float> %i.fjm, splat (float 2.000000e+00)
  %9 = fadd fast <2 x float> %i.fkl, %i.fjg
  %i.fkm = fadd fast <2 x float> %9, %8
  store <2 x float> %i.fkm, ptr %i.fkk, align 8, !tbaa !22
  %i.fkn = getelementptr inbounds nuw [8 x i8], ptr %i.ffs, i64 %indvars.iv3982
  %i.fko = load <2 x float>, ptr %.015973893, align 4, !tbaa !22
  %i.fkp = fmul fast <2 x float> %i.fju, splat (float 3.200000e+01)
  %i.fkq = fadd fast <2 x float> %i.fkp, %i.fjt
  %i.fkr = fadd fast <2 x float> %i.fkq, %i.fjv
  %i.fks = fadd fast <2 x float> %i.fkr, %i.fko
  store <2 x float> %i.fks, ptr %i.fkn, align 8, !tbaa !22
  %i.fkt = getelementptr inbounds nuw [4 x i8], ptr %.016043886, i64 %i.ffu
  %i.fku = getelementptr inbounds nuw [4 x i8], ptr %.016033887, i64 %i.ffu
  %i.fkv = getelementptr inbounds nuw [4 x i8], ptr %.016023888, i64 %i.ffu
  %i.fkw = getelementptr inbounds nuw [4 x i8], ptr %.016013889, i64 %i.ffu
  %i.fkx = getelementptr inbounds nuw [4 x i8], ptr %.016003890, i64 %i.ffu
  %i.fky = getelementptr inbounds nuw [4 x i8], ptr %.015993891, i64 %i.ffu
  %i.fkz = getelementptr inbounds nuw [4 x i8], ptr %.015983892, i64 %i.ffu
  %i.fla = getelementptr inbounds nuw [4 x i8], ptr %.015973893, i64 %i.ffu
  %indvars.iv.next3983 = add nuw nsw i64 %indvars.iv3982, 1 ; 2 uses
  %exitcond3985.not = icmp eq i64 %indvars.iv.next3983, 8
  br i1 %exitcond3985.not, label %_ZN4ncnn3MatD2Ev.exit1683, label %bb.dl, !llvm.loop !942

bb.dm:                                            ; preds = %bb.ey
  %indvars.iv.next3991 = add nuw nsw i64 %indvars.iv3990, 1 ; 2 uses
  %exitcond3994.not = icmp eq i64 %indvars.iv.next3991, %wide.trip.count3993
  br i1 %exitcond3994.not, label %._crit_edge, label %bb.dk, !llvm.loop !943

bb.dn:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit1683, %bb.ey
  %indvars.iv3986 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1683 ], [ %indvars.iv.next3987, %bb.ey ] ; 3 uses
  %.015843895 = phi ptr [ %i.fin, %_ZN4ncnn3MatD2Ev.exit1683 ], [ %.11585, %bb.ey ] ; 9 uses
  %.not1649 = icmp slt i64 %indvars.iv3986, %invariant.op4062
  br i1 %.not1649, label %bb.do, label %bb.ey

bb.do:                                            ; preds = %bb.dn
  %i.flb = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %indvars.iv3986 ; 8 uses
  %i.flc = getelementptr inbounds nuw i8, ptr %i.flb, i64 8
  %i.fld = getelementptr inbounds nuw i8, ptr %i.flb, i64 16
  %i.fle = getelementptr inbounds nuw i8, ptr %i.flb, i64 24
  %i.flf = getelementptr inbounds nuw i8, ptr %i.flb, i64 32
  %i.flg = getelementptr inbounds nuw i8, ptr %i.flb, i64 40
  %i.flh = getelementptr inbounds nuw i8, ptr %i.flb, i64 48
  %i.fli = getelementptr inbounds nuw i8, ptr %i.flb, i64 56
  %i.flj = load <2 x float>, ptr %i.flc, align 8, !tbaa !22 ; 2 uses
  %i.flk = load <2 x float>, ptr %i.fld, align 16, !tbaa !22 ; 2 uses
  %i.fll = load <2 x float>, ptr %i.fle, align 8, !tbaa !22 ; 2 uses
  %i.flm = load <2 x float>, ptr %i.flf, align 16, !tbaa !22 ; 2 uses
  %i.fln = load <2 x float>, ptr %i.flg, align 8, !tbaa !22 ; 2 uses
  %i.flo = load <2 x float>, ptr %i.flh, align 16, !tbaa !22 ; 2 uses
  %i.flp = load <2 x float>, ptr %i.fli, align 8, !tbaa !22
  %i.flq = fsub fast <2 x float> %i.flj, %i.flk
  %i.flr = fsub fast <2 x float> %i.fll, %i.flm   ; 3 uses
  %i.fls = fsub fast <2 x float> %i.fln, %i.flo   ; 3 uses
  %i.flt = fadd fast <2 x float> %i.flq, %i.fhq   ; 3 uses
  %i.flu = fmul fast <2 x float> %i.fls, splat (float 1.600000e+01)
  %i.flv = fmul fast <2 x float> %i.flr, splat (float 2.000000e+00)
  %i.flw = fadd fast <2 x float> %i.flv, %i.flt
  %i.flx = fadd fast <2 x float> %i.flw, %i.flu   ; 11 uses
  %i.fly = fmul fast <2 x float> %i.flr, splat (float 8.000000e+00)
  %i.flz = fadd fast <2 x float> %i.fly, %i.flt
  %i.fma = fmul fast <2 x float> %i.fls, splat (float 4.000000e+00)
  %i.fmb = fadd fast <2 x float> %i.flz, %i.fma   ; 11 uses
  %i.fmc = fadd fast <2 x float> %i.flk, %i.flj
  %i.fmd = fadd fast <2 x float> %i.flm, %i.fll   ; 3 uses
  %i.fme = fadd fast <2 x float> %i.flo, %i.fln   ; 3 uses
  %i.fmf = fadd fast <2 x float> %i.fmc, %i.fhq   ; 3 uses
  %i.fmg = load <2 x float>, ptr %i.flb, align 16, !tbaa !22
  %i.fmh = fmul fast <2 x float> %i.fme, splat (float 3.200000e+01)
  %i.fmi = fadd fast <2 x float> %i.fmf, %i.fmg
  %i.fmj = fadd fast <2 x float> %i.fmi, %i.fmd
  %i.fmk = fadd fast <2 x float> %i.fmj, %i.fmh   ; 11 uses
  %i.fml = fmul fast <2 x float> %i.fmd, splat (float 4.000000e+00)
  %i.fmm = fadd fast <2 x float> %i.fml, %i.fmf
  %i.fmn = fmul fast <2 x float> %i.fme, splat (float 8.000000e+00)
  %i.fmo = fadd fast <2 x float> %i.fmm, %i.fmn   ; 11 uses
  %i.fmp = fmul fast <2 x float> %i.fmd, splat (float 1.600000e+01)
  %10 = fmul fast <2 x float> %i.fme, splat (float 2.000000e+00)
  %11 = fadd fast <2 x float> %i.fmp, %i.fmf
  %i.fmq = fadd fast <2 x float> %11, %10         ; 11 uses
  %i.fmr = fmul fast <2 x float> %i.flr, splat (float 3.200000e+01)
  %i.fms = fadd fast <2 x float> %i.flt, %i.fmr
  %i.fmt = fadd fast <2 x float> %i.fms, %i.fls
  %i.fmu = fadd fast <2 x float> %i.fmt, %i.flp   ; 13 uses
  switch i32 %6, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1749 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2630
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2633
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2627
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2636
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2639
    i32 6, label %bb.dp
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2630: ; preds = %bb.do
  %i.fmv = tail call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fmk, <2 x float> zeroinitializer)
  %i.fmw = tail call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.flx, <2 x float> zeroinitializer)
  %i.fmx = tail call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fmo, <2 x float> zeroinitializer)
  %i.fmy = tail call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fmb, <2 x float> zeroinitializer)
  %i.fmz = tail call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fmq, <2 x float> zeroinitializer)
  %i.fna = tail call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fmu, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1749

_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2633: ; preds = %bb.do
  %i.fnb = load float, ptr %i.fjc, align 4, !tbaa !22
  %i.fnc = fcmp fast ogt <2 x float> %i.fmk, zeroinitializer
  %i.fnd = insertelement <2 x float> poison, float %i.fnb, i64 0
  %i.fne = shufflevector <2 x float> %i.fnd, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.fnf = select <2 x i1> %i.fnc, <2 x float> splat (float 1.000000e+00), <2 x float> %i.fne
  %i.fng = fmul fast <2 x float> %i.fnf, %i.fmk
  %i.fnh = fcmp fast ogt <2 x float> %i.flx, zeroinitializer
  %i.fni = select <2 x i1> %i.fnh, <2 x float> splat (float 1.000000e+00), <2 x float> %i.fne
  %i.fnj = fmul fast <2 x float> %i.fni, %i.flx
  %i.fnk = fcmp fast ogt <2 x float> %i.fmo, zeroinitializer
  %i.fnl = select <2 x i1> %i.fnk, <2 x float> splat (float 1.000000e+00), <2 x float> %i.fne
  %i.fnm = fmul fast <2 x float> %i.fnl, %i.fmo
  %i.fnn = fcmp fast ogt <2 x float> %i.fmb, zeroinitializer
  %i.fno = select <2 x i1> %i.fnn, <2 x float> splat (float 1.000000e+00), <2 x float> %i.fne
  %i.fnp = fmul fast <2 x float> %i.fno, %i.fmb
  %i.fnq = fcmp fast ogt <2 x float> %i.fmq, zeroinitializer
  %i.fnr = select <2 x i1> %i.fnq, <2 x float> splat (float 1.000000e+00), <2 x float> %i.fne
  %i.fns = fmul fast <2 x float> %i.fnr, %i.fmq
  %i.fnt = fcmp fast ogt <2 x float> %i.fmu, zeroinitializer
  %i.fnu = select <2 x i1> %i.fnt, <2 x float> splat (float 1.000000e+00), <2 x float> %i.fne
  %i.fnv = fmul fast <2 x float> %i.fnu, %i.fmu
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1749

_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2627: ; preds = %bb.do
  %i.fnw = load float, ptr %i.fja, align 4, !tbaa !22 ; 3 uses
  %i.fnx = load float, ptr %i.fjb, align 4, !tbaa !22 ; 4 uses
  %i.fny = insertelement <2 x float> poison, float %i.fnw, i64 0
  %i.fnz = shufflevector <2 x float> %i.fny, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.foa = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fmk, <2 x float> %i.fnz) ; 2 uses
  %i.fob = insertelement <2 x float> poison, float %i.fnx, i64 0
  %i.foc = shufflevector <2 x float> %i.fob, <2 x float> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.fod = fcmp fast ogt <2 x float> %i.foa, %i.foc
  %i.foe = select <2 x i1> %i.fod, <2 x float> %i.foc, <2 x float> %i.foa
  %i.fof = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.flx, <2 x float> %i.fnz) ; 2 uses
  %i.fog = fcmp fast ogt <2 x float> %i.fof, %i.foc
  %i.foh = select <2 x i1> %i.fog, <2 x float> %i.foc, <2 x float> %i.fof
  %i.foi = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fmo, <2 x float> %i.fnz) ; 2 uses
  %i.foj = fcmp fast ogt <2 x float> %i.foi, %i.foc
  %i.fok = select <2 x i1> %i.foj, <2 x float> %i.foc, <2 x float> %i.foi
  %i.fol = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fmb, <2 x float> %i.fnz) ; 2 uses
  %i.fom = fcmp fast ogt <2 x float> %i.fol, %i.foc
  %i.fon = select <2 x i1> %i.fom, <2 x float> %i.foc, <2 x float> %i.fol
  %i.foo = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fmq, <2 x float> %i.fnz) ; 2 uses
  %i.fop = fcmp fast ogt <2 x float> %i.foo, %i.foc
  %i.foq = select <2 x i1> %i.fop, <2 x float> %i.foc, <2 x float> %i.foo
  %i.for = extractelement <2 x float> %i.fmu, i64 0
  %.01922 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.for, float %i.fnw) ; 2 uses
  %i.fos = fcmp fast ogt float %.01922, %i.fnx
  %.119233464 = select i1 %i.fos, float %i.fnx, float %.01922
  %i.fot = extractelement <2 x float> %i.fmu, i64 1
  %.01924 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.fot, float %i.fnw)
  %spec.select3788 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.01924, float %i.fnx)
  %i.fou = insertelement <2 x float> poison, float %.119233464, i64 0
  %i.fov = insertelement <2 x float> %i.fou, float %spec.select3788, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1749

_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2636: ; preds = %bb.do
  %i.fow = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.fmk, <2 x float> splat (float f0x42B0C0A5))
  %i.fox = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fow, <2 x float> splat (float f0xC2B0C0A5))
  %i.foy = fneg fast <2 x float> %i.fox
  %i.foz = tail call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.foy)
  %i.fpa = fadd fast <2 x float> %i.foz, splat (float 1.000000e+00)
  %i.fpb = fdiv fast <2 x float> splat (float 1.000000e+00), %i.fpa
  %i.fpc = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.flx, <2 x float> splat (float f0x42B0C0A5))
  %i.fpd = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fpc, <2 x float> splat (float f0xC2B0C0A5))
  %i.fpe = fneg fast <2 x float> %i.fpd
  %i.fpf = tail call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.fpe)
  %i.fpg = fadd fast <2 x float> %i.fpf, splat (float 1.000000e+00)
  %i.fph = fdiv fast <2 x float> splat (float 1.000000e+00), %i.fpg
  %i.fpi = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.fmo, <2 x float> splat (float f0x42B0C0A5))
  %i.fpj = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fpi, <2 x float> splat (float f0xC2B0C0A5))
  %i.fpk = fneg fast <2 x float> %i.fpj
  %i.fpl = tail call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.fpk)
  %i.fpm = fadd fast <2 x float> %i.fpl, splat (float 1.000000e+00)
  %i.fpn = fdiv fast <2 x float> splat (float 1.000000e+00), %i.fpm
  %i.fpo = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.fmb, <2 x float> splat (float f0x42B0C0A5))
  %i.fpp = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fpo, <2 x float> splat (float f0xC2B0C0A5))
  %i.fpq = fneg fast <2 x float> %i.fpp
  %i.fpr = tail call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.fpq)
  %i.fps = fadd fast <2 x float> %i.fpr, splat (float 1.000000e+00)
  %i.fpt = fdiv fast <2 x float> splat (float 1.000000e+00), %i.fps
  %i.fpu = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.fmq, <2 x float> splat (float f0x42B0C0A5))
  %i.fpv = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fpu, <2 x float> splat (float f0xC2B0C0A5))
  %i.fpw = fneg fast <2 x float> %i.fpv
  %i.fpx = tail call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.fpw)
  %i.fpy = fadd fast <2 x float> %i.fpx, splat (float 1.000000e+00)
  %i.fpz = fdiv fast <2 x float> splat (float 1.000000e+00), %i.fpy
  %i.fqa = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.fmu, <2 x float> splat (float f0x42B0C0A5))
  %i.fqb = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fqa, <2 x float> splat (float f0xC2B0C0A5))
  %i.fqc = fneg fast <2 x float> %i.fqb
  %i.fqd = tail call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.fqc)
  %i.fqe = fadd fast <2 x float> %i.fqd, splat (float 1.000000e+00)
  %i.fqf = fdiv fast <2 x float> splat (float 1.000000e+00), %i.fqe
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1749

_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2639: ; preds = %bb.do
  %i.fqg = extractelement <2 x float> %i.fmk, i64 0
  %i.fqh = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.fqg)
  %i.fqi = extractelement <2 x float> %i.fmk, i64 1
  %i.fqj = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.fqi)
  %i.fqk = fadd fast float %i.fqh, 1.000000e+00
  %i.fql = tail call fast float @llvm.log.f32(float %i.fqk)
  %i.fqm = tail call fast float @llvm.tanh.f32(float %i.fql)
  %i.fqn = fadd fast float %i.fqj, 1.000000e+00
  %i.fqo = tail call fast float @llvm.log.f32(float %i.fqn)
  %i.fqp = tail call fast float @llvm.tanh.f32(float %i.fqo)
  %i.fqq = insertelement <2 x float> poison, float %i.fqm, i64 0
  %i.fqr = insertelement <2 x float> %i.fqq, float %i.fqp, i64 1
  %i.fqs = fmul fast <2 x float> %i.fqr, %i.fmk
  %i.fqt = extractelement <2 x float> %i.flx, i64 0
  %i.fqu = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.fqt)
  %i.fqv = extractelement <2 x float> %i.flx, i64 1
  %i.fqw = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.fqv)
  %i.fqx = fadd fast float %i.fqu, 1.000000e+00
  %i.fqy = tail call fast float @llvm.log.f32(float %i.fqx)
  %i.fqz = tail call fast float @llvm.tanh.f32(float %i.fqy)
  %i.fra = fadd fast float %i.fqw, 1.000000e+00
  %i.frb = tail call fast float @llvm.log.f32(float %i.fra)
  %i.frc = tail call fast float @llvm.tanh.f32(float %i.frb)
  %i.frd = insertelement <2 x float> poison, float %i.fqz, i64 0
  %i.fre = insertelement <2 x float> %i.frd, float %i.frc, i64 1
  %i.frf = fmul fast <2 x float> %i.fre, %i.flx
  %i.frg = extractelement <2 x float> %i.fmo, i64 0
  %i.frh = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.frg)
  %i.fri = extractelement <2 x float> %i.fmo, i64 1
  %i.frj = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.fri)
  %i.frk = fadd fast float %i.frh, 1.000000e+00
  %i.frl = tail call fast float @llvm.log.f32(float %i.frk)
  %i.frm = tail call fast float @llvm.tanh.f32(float %i.frl)
  %i.frn = fadd fast float %i.frj, 1.000000e+00
  %i.fro = tail call fast float @llvm.log.f32(float %i.frn)
  %i.frp = tail call fast float @llvm.tanh.f32(float %i.fro)
  %i.frq = insertelement <2 x float> poison, float %i.frm, i64 0
  %i.frr = insertelement <2 x float> %i.frq, float %i.frp, i64 1
  %i.frs = fmul fast <2 x float> %i.frr, %i.fmo
  %i.frt = extractelement <2 x float> %i.fmb, i64 0
  %i.fru = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.frt)
  %i.frv = extractelement <2 x float> %i.fmb, i64 1
  %i.frw = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.frv)
  %i.frx = fadd fast float %i.fru, 1.000000e+00
  %i.fry = tail call fast float @llvm.log.f32(float %i.frx)
  %i.frz = tail call fast float @llvm.tanh.f32(float %i.fry)
  %i.fsa = fadd fast float %i.frw, 1.000000e+00
  %i.fsb = tail call fast float @llvm.log.f32(float %i.fsa)
  %i.fsc = tail call fast float @llvm.tanh.f32(float %i.fsb)
  %i.fsd = insertelement <2 x float> poison, float %i.frz, i64 0
  %i.fse = insertelement <2 x float> %i.fsd, float %i.fsc, i64 1
  %i.fsf = fmul fast <2 x float> %i.fse, %i.fmb
  %i.fsg = extractelement <2 x float> %i.fmq, i64 0
  %i.fsh = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.fsg)
  %i.fsi = extractelement <2 x float> %i.fmq, i64 1
  %i.fsj = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.fsi)
  %i.fsk = fadd fast float %i.fsh, 1.000000e+00
  %i.fsl = tail call fast float @llvm.log.f32(float %i.fsk)
  %i.fsm = tail call fast float @llvm.tanh.f32(float %i.fsl)
  %i.fsn = fadd fast float %i.fsj, 1.000000e+00
  %i.fso = tail call fast float @llvm.log.f32(float %i.fsn)
  %i.fsp = tail call fast float @llvm.tanh.f32(float %i.fso)
  %i.fsq = insertelement <2 x float> poison, float %i.fsm, i64 0
  %i.fsr = insertelement <2 x float> %i.fsq, float %i.fsp, i64 1
  %i.fss = fmul fast <2 x float> %i.fsr, %i.fmq
  %i.fst = extractelement <2 x float> %i.fmu, i64 0
  %i.fsu = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.fst)
  %i.fsv = extractelement <2 x float> %i.fmu, i64 1
  %i.fsw = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.fsv)
  %i.fsx = fadd fast float %i.fsu, 1.000000e+00
  %i.fsy = tail call fast float @llvm.log.f32(float %i.fsx)
  %i.fsz = tail call fast float @llvm.tanh.f32(float %i.fsy)
  %i.fta = fadd fast float %i.fsw, 1.000000e+00
  %i.ftb = tail call fast float @llvm.log.f32(float %i.fta)
  %i.ftc = tail call fast float @llvm.tanh.f32(float %i.ftb)
  %i.ftd = insertelement <2 x float> poison, float %i.fsz, i64 0
  %i.fte = insertelement <2 x float> %i.ftd, float %i.ftc, i64 1
  %i.ftf = fmul fast <2 x float> %i.fte, %i.fmu
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1749

end_hunk_7
begin_hunk_8_@_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_:bb.a
  %i.fxq = phi <2 x float> [ %i.fwy, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1750.thread ], [ %i.fmz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2630 ], [ %i.fns, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2633 ], [ %i.fmq, %bb.do ], [ %i.foq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2627 ], [ %i.fpz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2636 ], [ %i.fss, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2639 ], [ %i.fwy, %bb.en ], [ %i.fwy, %bb.em ]
  %i.fxr = phi <2 x float> [ %i.fxa, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1750.thread ], [ %i.fmy, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2630 ], [ %i.fnp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2633 ], [ %i.fmb, %bb.do ], [ %i.fon, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2627 ], [ %i.fpt, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2636 ], [ %i.fsf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2639 ], [ %i.fxa, %bb.en ], [ %i.fxa, %bb.em ]
  %i.fxs = phi <2 x float> [ %i.fxc, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1750.thread ], [ %i.fmx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2630 ], [ %i.fnm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2633 ], [ %i.fmo, %bb.do ], [ %i.fok, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2627 ], [ %i.fpn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2636 ], [ %i.frs, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2639 ], [ %i.fxc, %bb.en ], [ %i.fxc, %bb.em ]
  %i.fxt = phi <2 x float> [ %i.fxe, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1750.thread ], [ %i.fmw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2630 ], [ %i.fnj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2633 ], [ %i.flx, %bb.do ], [ %i.foh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2627 ], [ %i.fph, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2636 ], [ %i.frf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2639 ], [ %i.fxe, %bb.en ], [ %i.fxe, %bb.em ]
  %i.fxu = phi <2 x float> [ %i.fxg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1750.thread ], [ %i.fmv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2630 ], [ %i.fng, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2633 ], [ %i.fmk, %bb.do ], [ %i.foe, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2627 ], [ %i.fpb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2636 ], [ %i.fqs, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1760.thread2639 ], [ %i.fxg, %bb.en ], [ %i.fxg, %bb.em ]
  %i.fxv = getelementptr inbounds nuw [2 x i8], ptr %.015843895, i64 %i.o ; 6 uses
  %i.fxw = bitcast <2 x float> %i.fxu to <2 x i32>
  %i.fxx = lshr <2 x i32> %i.fxw, splat (i32 16)
  %i.fxy = trunc nuw <2 x i32> %i.fxx to <2 x i16> ; 2 uses
  %i.fxz = extractelement <2 x i16> %i.fxy, i64 0
  store i16 %i.fxz, ptr %.015843895, align 2, !tbaa !24
  %i.fya = extractelement <2 x i16> %i.fxy, i64 1
  store i16 %i.fya, ptr %i.fxv, align 2, !tbaa !24
  br i1 %i.fip, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1749
  %i.fyb = bitcast <2 x float> %i.fxt to <2 x i32>
  %i.fyc = getelementptr inbounds nuw i8, ptr %.015843895, i64 2
  %i.fyd = lshr <2 x i32> %i.fyb, splat (i32 16)
  %i.fye = trunc nuw <2 x i32> %i.fyd to <2 x i16> ; 2 uses
  %i.fyf = extractelement <2 x i16> %i.fye, i64 0
  store i16 %i.fyf, ptr %i.fyc, align 2, !tbaa !24
  %i.fyg = getelementptr inbounds nuw i8, ptr %i.fxv, i64 2
  %i.fyh = extractelement <2 x i16> %i.fye, i64 1
  store i16 %i.fyh, ptr %i.fyg, align 2, !tbaa !24
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1749
  br i1 %i.fir, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.fyi = bitcast <2 x float> %i.fxs to <2 x i32>
  %i.fyj = getelementptr inbounds nuw i8, ptr %.015843895, i64 4
  %i.fyk = lshr <2 x i32> %i.fyi, splat (i32 16)
  %i.fyl = trunc nuw <2 x i32> %i.fyk to <2 x i16> ; 2 uses
  %i.fym = extractelement <2 x i16> %i.fyl, i64 0
  store i16 %i.fym, ptr %i.fyj, align 2, !tbaa !24
  %i.fyn = getelementptr inbounds nuw i8, ptr %i.fxv, i64 4
  %i.fyo = extractelement <2 x i16> %i.fyl, i64 1
  store i16 %i.fyo, ptr %i.fyn, align 2, !tbaa !24
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  br i1 %i.fit, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.fyp = bitcast <2 x float> %i.fxr to <2 x i32>
  %i.fyq = getelementptr inbounds nuw i8, ptr %.015843895, i64 6
  %i.fyr = lshr <2 x i32> %i.fyp, splat (i32 16)
  %i.fys = trunc nuw <2 x i32> %i.fyr to <2 x i16> ; 2 uses
  %i.fyt = extractelement <2 x i16> %i.fys, i64 0
  store i16 %i.fyt, ptr %i.fyq, align 2, !tbaa !24
  %i.fyu = getelementptr inbounds nuw i8, ptr %i.fxv, i64 6
  %i.fyv = extractelement <2 x i16> %i.fys, i64 1
  store i16 %i.fyv, ptr %i.fyu, align 2, !tbaa !24
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  br i1 %i.fiv, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.fyw = bitcast <2 x float> %i.fxq to <2 x i32>
  %i.fyx = getelementptr inbounds nuw i8, ptr %.015843895, i64 8
  %i.fyy = lshr <2 x i32> %i.fyw, splat (i32 16)
  %i.fyz = trunc nuw <2 x i32> %i.fyy to <2 x i16> ; 2 uses
  %i.fza = extractelement <2 x i16> %i.fyz, i64 0
  store i16 %i.fza, ptr %i.fyx, align 2, !tbaa !24
  %i.fzb = getelementptr inbounds nuw i8, ptr %i.fxv, i64 8
  %i.fzc = extractelement <2 x i16> %i.fyz, i64 1
  store i16 %i.fzc, ptr %i.fzb, align 2, !tbaa !24
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  br i1 %i.fix, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.fzd = bitcast <2 x float> %i.fxp to <2 x i32>
  %i.fze = getelementptr inbounds nuw i8, ptr %.015843895, i64 10
  %i.fzf = lshr <2 x i32> %i.fzd, splat (i32 16)
  %i.fzg = trunc nuw <2 x i32> %i.fzf to <2 x i16> ; 2 uses
  %i.fzh = extractelement <2 x i16> %i.fzg, i64 0
  store i16 %i.fzh, ptr %i.fze, align 2, !tbaa !24
  %i.fzi = getelementptr inbounds nuw i8, ptr %i.fxv, i64 10
  %i.fzj = extractelement <2 x i16> %i.fzg, i64 1
  store i16 %i.fzj, ptr %i.fzi, align 2, !tbaa !24
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.fzk = getelementptr inbounds [2 x i8], ptr %.015843895, i64 %i.ffw
  br label %bb.ey

bb.ey:                                            ; preds = %bb.dn, %bb.ex
  %.11585 = phi ptr [ %.015843895, %bb.dn ], [ %i.fzk, %bb.ex ]
  %indvars.iv.next3987 = add nuw nsw i64 %indvars.iv3986, 1 ; 2 uses
  %exitcond3989.not = icmp eq i64 %indvars.iv.next3987, 6
  br i1 %exitcond3989.not, label %bb.dm, label %bb.dn, !llvm.loop !944

._crit_edge:                                      ; preds = %bb.dm, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  %indvars.iv.next3996 = add nuw nsw i64 %indvars.iv3995, 2 ; 3 uses
  %i.fzl = icmp slt i64 %indvars.iv.next3996, %invariant.op4063
  br i1 %i.fzl, label %bb.di, label %.preheader.loopexit, !llvm.loop !945

bb.ez:                                            ; preds = %.lr.ph3924, %._crit_edge3918
  %indvars.iv4011 = phi i64 [ %i.fhh, %.lr.ph3924 ], [ %indvars.iv.next4012, %._crit_edge3918 ] ; 4 uses
  br i1 %.not, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %gep4066 = getelementptr [4 x i8], ptr %invariant.gep4065, i64 %indvars.iv4011
  %i.fzm = load float, ptr %gep4066, align 4, !tbaa !22
  br label %bb.fb

bb.fb:                                            ; preds = %bb.ez, %bb.fa
  %i.fzn = phi fast float [ %i.fzm, %bb.fa ], [ 0.000000e+00, %bb.ez ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  br i1 %i.fgj, label %.lr.ph3917, label %._crit_edge3918

.lr.ph3917:                                       ; preds = %bb.fb
  %i.fzo = trunc nsw i64 %indvars.iv4011 to i32
  %factor.op.mul.reass3922 = mul i32 %factor.op.mul3833, %i.fzo
  %i.fzp = sext i32 %factor.op.mul.reass3922 to i64
  %i.fzq = getelementptr inbounds [4 x i8], ptr %i.fhj, i64 %i.fzp
  %i.fzr = add nsw i64 %indvars.iv4011, %i.fhi
  %.reass4068 = mul i64 %factor.op.mul4067, %i.fzr
  %i.fzs = getelementptr inbounds nuw i8, ptr %i.fhl, i64 %.reass4068
  br label %bb.fc

bb.fc:                                            ; preds = %.lr.ph3917, %bb.fe
  %indvars.iv4006 = phi i64 [ 0, %.lr.ph3917 ], [ %indvars.iv.next4007, %bb.fe ] ; 3 uses
  %i.fzt = getelementptr inbounds nuw [4 x i8], ptr %i.fzq, i64 %indvars.iv4006 ; 8 uses
  %i.fzu = getelementptr inbounds nuw [4 x i8], ptr %i.fzt, i64 %i.fgk
  %i.fzv = getelementptr inbounds nuw [4 x i8], ptr %i.fzt, i64 %i.fgm
  %i.fzw = getelementptr inbounds nuw [4 x i8], ptr %i.fzt, i64 %i.fgo
  %i.fzx = getelementptr inbounds nuw [4 x i8], ptr %i.fzt, i64 %i.fgq
  %i.fzy = getelementptr inbounds nuw [4 x i8], ptr %i.fzt, i64 %i.fgs
  %i.fzz = getelementptr inbounds nuw [4 x i8], ptr %i.fzt, i64 %i.fgu
  %i.gaa = getelementptr inbounds nuw [4 x i8], ptr %i.fzt, i64 %i.fgw
  br label %bb.fd

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.fd
  %i.gab = trunc i64 %indvars.iv4006 to i32
  %i.gac = add i32 %4, %i.gab                     ; 2 uses
  %i.gad = sdiv i32 %i.gac, %i.q
  %i.gae = srem i32 %i.gac, %i.q
  %i.gaf = mul nsw i32 %i.gad, 6
  %i.gag = sext i32 %i.gaf to i64                 ; 2 uses
  %.reass3920 = mul i64 %factor.op.mul3919, %i.gag
  %i.gah = getelementptr inbounds nuw i8, ptr %i.fzs, i64 %.reass3920
  %i.gai = mul nsw i32 %i.gae, 6                  ; 6 uses
  %i.gaj = sext i32 %i.gai to i64
  %i.gak = getelementptr inbounds [2 x i8], ptr %i.gah, i64 %i.gaj
  %i.gal = or disjoint i32 %i.gai, 1
  %i.gam = icmp slt i32 %i.gal, %i.g
  %i.gan = add nsw i32 %i.gai, 2
  %i.gao = icmp slt i32 %i.gan, %i.g
  %i.gap = add nsw i32 %i.gai, 3
  %i.gaq = icmp slt i32 %i.gap, %i.g
  %i.gar = add nsw i32 %i.gai, 4
  %i.gas = icmp slt i32 %i.gar, %i.g
  %i.gat = add nsw i32 %i.gai, 5
  %i.gau = icmp slt i32 %i.gat, %i.g
  %invariant.op4064 = sub nsw i64 %i.fhg, %i.gag
  %i.gav = load ptr, ptr %7, align 8              ; 2 uses
  %i.gaw = getelementptr inbounds nuw i8, ptr %i.gav, i64 4
  %i.gax = load ptr, ptr %7, align 8              ; 2 uses
  %i.gay = getelementptr inbounds nuw i8, ptr %i.gax, i64 4
  %i.gaz = load ptr, ptr %7, align 8
  br label %bb.ff

bb.fd:                                            ; preds = %bb.fc, %bb.fd
  %indvars.iv3998 = phi i64 [ 0, %bb.fc ], [ %indvars.iv.next3999, %bb.fd ] ; 7 uses
  %.015743911 = phi ptr [ %i.gaa, %bb.fc ], [ %i.gcw, %bb.fd ] ; 2 uses
  %.015753910 = phi ptr [ %i.fzz, %bb.fc ], [ %i.gcv, %bb.fd ] ; 2 uses
  %.015763909 = phi ptr [ %i.fzy, %bb.fc ], [ %i.gcu, %bb.fd ] ; 2 uses
  %.015773908 = phi ptr [ %i.fzx, %bb.fc ], [ %i.gct, %bb.fd ] ; 2 uses
  %.015783907 = phi ptr [ %i.fzw, %bb.fc ], [ %i.gcs, %bb.fd ] ; 2 uses
  %.015793906 = phi ptr [ %i.fzv, %bb.fc ], [ %i.gcr, %bb.fd ] ; 2 uses
  %.015803905 = phi ptr [ %i.fzu, %bb.fc ], [ %i.gcq, %bb.fd ] ; 2 uses
  %.015813904 = phi ptr [ %i.fzt, %bb.fc ], [ %i.gcp, %bb.fd ] ; 2 uses
  %i.gba = load float, ptr %.015803905, align 4, !tbaa !22 ; 2 uses
  %i.gbb = load float, ptr %.015793906, align 4, !tbaa !22 ; 2 uses
  %i.gbc = fadd fast float %i.gbb, %i.gba         ; 3 uses
  %i.gbd = fsub fast float %i.gba, %i.gbb         ; 3 uses
  %i.gbe = load float, ptr %.015783907, align 4, !tbaa !22 ; 2 uses
  %i.gbf = load float, ptr %.015773908, align 4, !tbaa !22 ; 2 uses
  %i.gbg = fadd fast float %i.gbf, %i.gbe         ; 3 uses
  %i.gbh = fsub fast float %i.gbe, %i.gbf         ; 3 uses
  %i.gbi = load float, ptr %.015763909, align 4, !tbaa !22 ; 2 uses
  %i.gbj = load float, ptr %.015753910, align 4, !tbaa !22 ; 2 uses
  %i.gbk = fadd fast float %i.gbj, %i.gbi         ; 3 uses
  %i.gbl = fsub fast float %i.gbi, %i.gbj         ; 3 uses
  %i.gbm = load float, ptr %.015813904, align 4, !tbaa !22
  %i.gbn = fmul fast float %i.gbk, 3.200000e+01
  %i.gbo = fadd fast float %i.gbg, %i.gbc
  %i.gbp = fadd fast float %i.gbo, %i.gbm
  %i.gbq = fadd fast float %i.gbp, %i.gbn
  %i.gbr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv3998
  store float %i.gbq, ptr %i.gbr, align 4, !tbaa !22
  %i.gbs = fmul fast float %i.gbl, 1.600000e+01
  %factor3808 = fmul fast float %i.gbh, 2.000000e+00
  %i.gbt = fadd fast float %factor3808, %i.gbd
  %i.gbu = fadd fast float %i.gbt, %i.gbs
  %i.gbv = getelementptr inbounds nuw [4 x i8], ptr %i.fgx, i64 %indvars.iv3998
  store float %i.gbu, ptr %i.gbv, align 4, !tbaa !22
  %i.gbw = fmul fast float %i.gbg, 4.000000e+00
  %i.gbx = fadd fast float %i.gbw, %i.gbc
  %i.gby = fmul fast float %i.gbk, 8.000000e+00
  %i.gbz = fadd fast float %i.gbx, %i.gby
  %i.gca = getelementptr inbounds nuw [4 x i8], ptr %i.fgy, i64 %indvars.iv3998
  store float %i.gbz, ptr %i.gca, align 4, !tbaa !22
  %i.gcb = fmul fast float %i.gbh, 8.000000e+00
  %i.gcc = fadd fast float %i.gcb, %i.gbd
  %i.gcd = fmul fast float %i.gbl, 4.000000e+00
  %i.gce = fadd fast float %i.gcc, %i.gcd
  %i.gcf = getelementptr inbounds nuw [4 x i8], ptr %i.fgz, i64 %indvars.iv3998
  store float %i.gce, ptr %i.gcf, align 4, !tbaa !22
  %i.gcg = fmul fast float %i.gbg, 1.600000e+01
  %factor3809 = fmul fast float %i.gbk, 2.000000e+00
  %12 = fadd fast float %i.gcg, %i.gbc
  %i.gch = fadd fast float %12, %factor3809
  %i.gci = getelementptr inbounds nuw [4 x i8], ptr %i.fha, i64 %indvars.iv3998
  store float %i.gch, ptr %i.gci, align 4, !tbaa !22
  %i.gcj = load float, ptr %.015743911, align 4, !tbaa !22
  %i.gck = fmul fast float %i.gbh, 3.200000e+01
  %i.gcl = fadd fast float %i.gck, %i.gbd
  %i.gcm = fadd fast float %i.gcl, %i.gbl
  %i.gcn = fadd fast float %i.gcm, %i.gcj
  %i.gco = getelementptr inbounds nuw [4 x i8], ptr %i.fhb, i64 %indvars.iv3998
  store float %i.gcn, ptr %i.gco, align 4, !tbaa !22
  %i.gcp = getelementptr inbounds nuw [4 x i8], ptr %.015813904, i64 %i.fhd
  %i.gcq = getelementptr inbounds nuw [4 x i8], ptr %.015803905, i64 %i.fhd
  %i.gcr = getelementptr inbounds nuw [4 x i8], ptr %.015793906, i64 %i.fhd
  %i.gcs = getelementptr inbounds nuw [4 x i8], ptr %.015783907, i64 %i.fhd
  %i.gct = getelementptr inbounds nuw [4 x i8], ptr %.015773908, i64 %i.fhd
  %i.gcu = getelementptr inbounds nuw [4 x i8], ptr %.015763909, i64 %i.fhd
  %i.gcv = getelementptr inbounds nuw [4 x i8], ptr %.015753910, i64 %i.fhd
  %i.gcw = getelementptr inbounds nuw [4 x i8], ptr %.015743911, i64 %i.fhd
  %indvars.iv.next3999 = add nuw nsw i64 %indvars.iv3998, 1 ; 2 uses
  %exitcond4001.not = icmp eq i64 %indvars.iv.next3999, 8
  br i1 %exitcond4001.not, label %_ZN4ncnn3MatD2Ev.exit, label %bb.fd, !llvm.loop !946

bb.fe:                                            ; preds = %bb.ge
  %indvars.iv.next4007 = add nuw nsw i64 %indvars.iv4006, 1 ; 2 uses
  %exitcond4010.not = icmp eq i64 %indvars.iv.next4007, %wide.trip.count4009
  br i1 %exitcond4010.not, label %._crit_edge3918, label %bb.fc, !llvm.loop !947

bb.ff:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.ge
  %indvars.iv4002 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit ], [ %indvars.iv.next4003, %bb.ge ] ; 3 uses
  %.015723913 = phi ptr [ %i.gak, %_ZN4ncnn3MatD2Ev.exit ], [ %.1, %bb.ge ] ; 8 uses
  %.not1647 = icmp slt i64 %indvars.iv4002, %invariant.op4064
  br i1 %.not1647, label %bb.fg, label %bb.ge

bb.fg:                                            ; preds = %bb.ff
  %i.gcx = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %indvars.iv4002 ; 8 uses
  %i.gcy = getelementptr inbounds nuw i8, ptr %i.gcx, i64 4
  %i.gcz = getelementptr inbounds nuw i8, ptr %i.gcx, i64 8
  %i.gda = getelementptr inbounds nuw i8, ptr %i.gcx, i64 12
  %i.gdb = getelementptr inbounds nuw i8, ptr %i.gcx, i64 16
  %i.gdc = getelementptr inbounds nuw i8, ptr %i.gcx, i64 20
  %i.gdd = getelementptr inbounds nuw i8, ptr %i.gcx, i64 24
  %i.gde = getelementptr inbounds nuw i8, ptr %i.gcx, i64 28
  %i.gdf = load float, ptr %i.gcx, align 16, !tbaa !22
  %i.gdg = load float, ptr %i.gde, align 4, !tbaa !22
  %i.gdh = load float, ptr %i.gcy, align 4, !tbaa !22 ; 2 uses
  %i.gdi = load float, ptr %i.gcz, align 8, !tbaa !22 ; 2 uses
  %i.gdj = load float, ptr %i.gda, align 4, !tbaa !22 ; 2 uses
  %i.gdk = load float, ptr %i.gdb, align 16, !tbaa !22 ; 2 uses
  %i.gdl = load float, ptr %i.gdc, align 4, !tbaa !22 ; 2 uses
  %i.gdm = load float, ptr %i.gdd, align 8, !tbaa !22 ; 2 uses
  %i.gdn = fadd fast float %i.gdi, %i.gdh
  %i.gdo = fsub fast float %i.gdh, %i.gdi
  %i.gdp = fadd fast float %i.gdk, %i.gdj         ; 3 uses
  %i.gdq = fsub fast float %i.gdj, %i.gdk         ; 3 uses
  %i.gdr = fadd fast float %i.gdm, %i.gdl         ; 3 uses
  %i.gds = fsub fast float %i.gdl, %i.gdm         ; 3 uses
  %i.gdt = fmul fast float %i.gdr, 3.200000e+01
  %i.gdu = fadd fast float %i.gdn, %i.fzn         ; 3 uses
  %i.gdv = fadd fast float %i.gdu, %i.gdf
  %i.gdw = fadd fast float %i.gdv, %i.gdp
  %i.gdx = fadd fast float %i.gdw, %i.gdt         ; 8 uses
  %i.gdy = fadd fast float %i.gdo, %i.fzn         ; 3 uses
  %i.gdz = fmul fast float %i.gds, 1.600000e+01
  %factor = fmul fast float %i.gdq, 2.000000e+00
  %i.gea = fadd fast float %factor, %i.gdy
  %i.geb = fadd fast float %i.gea, %i.gdz         ; 7 uses
  %i.gec = fmul fast float %i.gdp, 4.000000e+00
  %i.ged = fadd fast float %i.gec, %i.gdu
  %i.gee = fmul fast float %i.gdr, 8.000000e+00
  %i.gef = fadd fast float %i.ged, %i.gee         ; 7 uses
  %i.geg = fmul fast float %i.gdq, 8.000000e+00
  %i.geh = fadd fast float %i.geg, %i.gdy
  %i.gei = fmul fast float %i.gds, 4.000000e+00
  %i.gej = fadd fast float %i.geh, %i.gei         ; 7 uses
  %i.gek = fmul fast float %i.gdp, 1.600000e+01
  %factor3807 = fmul fast float %i.gdr, 2.000000e+00
  %13 = fadd fast float %i.gek, %i.gdu
  %i.gel = fadd fast float %13, %factor3807       ; 7 uses
  %i.gem = fmul fast float %i.gdq, 3.200000e+01
  %i.gen = fadd fast float %i.gdy, %i.gem
  %i.geo = fadd fast float %i.gen, %i.gdg
  %i.gep = fadd fast float %i.geo, %i.gds         ; 7 uses
  %i.geq = insertelement <4 x float> poison, float %i.geb, i64 0
  %i.ger = insertelement <4 x float> %i.geq, float %i.gef, i64 1
  %i.ges = insertelement <4 x float> %i.ger, float %i.gej, i64 2
  %i.get = insertelement <4 x float> %i.ges, float %i.gel, i64 3 ; 7 uses
  %i.geu = insertelement <2 x float> poison, float %i.gdx, i64 0
  %i.gev = insertelement <2 x float> %i.geu, float %i.gep, i64 1 ; 7 uses
  switch i32 %6, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3565
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3568
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3562
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3571
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3574
    i32 6, label %bb.fh
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3565: ; preds = %bb.fg
  %i.gew = tail call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.get, <4 x float> zeroinitializer)
  %i.gex = tail call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gev, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3568: ; preds = %bb.fg
  %i.gey = load float, ptr %i.gaz, align 4, !tbaa !22 ; 2 uses
  %i.gez = fcmp fast ogt <2 x float> %i.gev, zeroinitializer
  %i.gfa = fcmp fast ogt <4 x float> %i.get, zeroinitializer
  %i.gfb = insertelement <4 x float> poison, float %i.gey, i64 0
  %i.gfc = shufflevector <4 x float> %i.gfb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gfd = select <4 x i1> %i.gfa, <4 x float> splat (float 1.000000e+00), <4 x float> %i.gfc
  %i.gfe = fmul fast <4 x float> %i.gfd, %i.get
  %i.gff = insertelement <2 x float> poison, float %i.gey, i64 0
  %i.gfg = shufflevector <2 x float> %i.gff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gfh = select <2 x i1> %i.gez, <2 x float> splat (float 1.000000e+00), <2 x float> %i.gfg
  %i.gfi = fmul fast <2 x float> %i.gfh, %i.gev
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3562: ; preds = %bb.fg
  %i.gfj = load float, ptr %i.gax, align 4, !tbaa !22 ; 3 uses
  %i.gfk = load float, ptr %i.gay, align 4, !tbaa !22 ; 4 uses
  %spec.select3787 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.gdx, float %i.gfj) ; 2 uses
  %i.gfl = fcmp fast ogt float %spec.select3787, %i.gfk
  %.119273564 = select i1 %i.gfl, float %i.gfk, float %spec.select3787
  %i.gfm = insertelement <4 x float> poison, float %i.gfj, i64 0
  %i.gfn = shufflevector <4 x float> %i.gfm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gfo = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.get, <4 x float> %i.gfn) ; 2 uses
  %i.gfp = insertelement <4 x float> poison, float %i.gfk, i64 0
  %i.gfq = shufflevector <4 x float> %i.gfp, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gfr = fcmp fast ogt <4 x float> %i.gfo, %i.gfq
  %i.gfs = select <4 x i1> %i.gfr, <4 x float> %i.gfq, <4 x float> %i.gfo
  %.01936 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.gep, float %i.gfj)
  %spec.select3789 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.01936, float %i.gfk)
  %i.gft = insertelement <2 x float> poison, float %.119273564, i64 0
  %i.gfu = insertelement <2 x float> %i.gft, float %spec.select3789, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3571: ; preds = %bb.fg
  %i.gfv = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.gev, <2 x float> splat (float f0x42B0C0A5))
  %i.gfw = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.get, <4 x float> splat (float f0x42B0C0A5))
  %i.gfx = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.gfw, <4 x float> splat (float f0xC2B0C0A5))
  %i.gfy = fneg fast <4 x float> %i.gfx
  %i.gfz = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.gfy)
  %i.gga = fadd fast <4 x float> %i.gfz, splat (float 1.000000e+00)
  %i.ggb = fdiv fast <4 x float> splat (float 1.000000e+00), %i.gga
  %i.ggc = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gfv, <2 x float> splat (float f0xC2B0C0A5))
  %i.ggd = fneg fast <2 x float> %i.ggc
  %i.gge = tail call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.ggd)
  %i.ggf = fadd fast <2 x float> %i.gge, splat (float 1.000000e+00)
  %i.ggg = fdiv fast <2 x float> splat (float 1.000000e+00), %i.ggf
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3574: ; preds = %bb.fg
  %i.ggh = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.gdx)
  %i.ggi = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.geb)
  %i.ggj = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.gef)
  %i.ggk = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.gej)
  %i.ggl = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.gel)
  %i.ggm = fadd fast float %i.ggi, 1.000000e+00
  %i.ggn = tail call fast float @llvm.log.f32(float %i.ggm)
  %i.ggo = tail call fast float @llvm.tanh.f32(float %i.ggn)
  %i.ggp = fadd fast float %i.ggj, 1.000000e+00
  %i.ggq = tail call fast float @llvm.log.f32(float %i.ggp)
  %i.ggr = tail call fast float @llvm.tanh.f32(float %i.ggq)
  %i.ggs = fadd fast float %i.ggk, 1.000000e+00
  %i.ggt = tail call fast float @llvm.log.f32(float %i.ggs)
  %i.ggu = tail call fast float @llvm.tanh.f32(float %i.ggt)
  %i.ggv = fadd fast float %i.ggl, 1.000000e+00
  %i.ggw = tail call fast float @llvm.log.f32(float %i.ggv)
  %i.ggx = tail call fast float @llvm.tanh.f32(float %i.ggw)
  %i.ggy = insertelement <4 x float> poison, float %i.ggo, i64 0
  %i.ggz = insertelement <4 x float> %i.ggy, float %i.ggr, i64 1
  %i.gha = insertelement <4 x float> %i.ggz, float %i.ggu, i64 2
  %i.ghb = insertelement <4 x float> %i.gha, float %i.ggx, i64 3
  %i.ghc = fmul fast <4 x float> %i.ghb, %i.get
  %i.ghd = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.gep)
  %i.ghe = fadd fast float %i.ggh, 1.000000e+00
  %i.ghf = tail call fast float @llvm.log.f32(float %i.ghe)
  %i.ghg = tail call fast float @llvm.tanh.f32(float %i.ghf)
  %i.ghh = fadd fast float %i.ghd, 1.000000e+00
  %i.ghi = tail call fast float @llvm.log.f32(float %i.ghh)
  %i.ghj = tail call fast float @llvm.tanh.f32(float %i.ghi)
  %i.ghk = insertelement <2 x float> poison, float %i.ghg, i64 0
  %i.ghl = insertelement <2 x float> %i.ghk, float %i.ghj, i64 1
  %i.ghm = fmul fast <2 x float> %i.ghl, %i.gev
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.fh:                                            ; preds = %bb.fg
  %i.ghn = load float, ptr %i.gav, align 4, !tbaa !22 ; 13 uses
  %i.gho = load float, ptr %i.gaw, align 4, !tbaa !22 ; 7 uses
  %i.ghp = fneg fast float %i.gho
  %i.ghq = fdiv fast float %i.ghp, %i.ghn         ; 12 uses
  %i.ghr = fcmp fast olt float %i.gdx, %i.ghq
  br i1 %i.ghr, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.ghs = fdiv fast float 1.000000e+00, %i.ghn
  %i.ght = fadd fast float %i.ghq, %i.ghs
  %i.ghu = fcmp fast ogt float %i.gdx, %i.ght
  br i1 %i.ghu, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ghv = fmul fast float %i.ghn, %i.gdx
  %i.ghw = fadd fast float %i.ghv, %i.gho
  %i.ghx = fmul fast float %i.ghw, %i.gdx
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread: ; preds = %bb.fj, %bb.fi, %bb.fh
  %.119273558 = phi float [ %i.ghx, %bb.fj ], [ 0.000000e+00, %bb.fh ], [ %i.gdx, %bb.fi ] ; 2 uses
  %i.ghy = fcmp fast olt float %i.geb, %i.ghq
  br i1 %i.ghy, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1747.thread, label %bb.fk

bb.fk:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread
  %i.ghz = fdiv fast float 1.000000e+00, %i.ghn
  %i.gia = fadd fast float %i.ghq, %i.ghz
  %i.gib = fcmp fast ogt float %i.geb, %i.gia
  br i1 %i.gib, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1747.thread, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.gic = fmul fast float %i.ghn, %i.geb
  %i.gid = fadd fast float %i.gic, %i.gho
  %i.gie = fmul fast float %i.gid, %i.geb
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1747.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit1747.thread: ; preds = %bb.fl, %bb.fk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread
  %.119293581 = phi float [ %i.gie, %bb.fl ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread ], [ %i.geb, %bb.fk ]
  %i.gif = fcmp fast olt float %i.gef, %i.ghq
  br i1 %i.gif, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1746.thread, label %bb.fm

bb.fm:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1747.thread
  %i.gig = fdiv fast float 1.000000e+00, %i.ghn
  %i.gih = fadd fast float %i.ghq, %i.gig
  %i.gii = fcmp fast ogt float %i.gef, %i.gih
  br i1 %i.gii, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1746.thread, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.gij = fmul fast float %i.ghn, %i.gef
  %i.gik = fadd fast float %i.gij, %i.gho
  %i.gil = fmul fast float %i.gik, %i.gef
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1746.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit1746.thread: ; preds = %bb.fn, %bb.fm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1747.thread
  %.119313617 = phi float [ %i.gil, %bb.fn ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1747.thread ], [ %i.gef, %bb.fm ]
  %i.gim = fcmp fast olt float %i.gej, %i.ghq
  br i1 %i.gim, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1745.thread, label %bb.fo

bb.fo:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1746.thread
  %i.gin = fdiv fast float 1.000000e+00, %i.ghn
  %i.gio = fadd fast float %i.ghq, %i.gin
  %i.gip = fcmp fast ogt float %i.gej, %i.gio
  br i1 %i.gip, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1745.thread, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.giq = fmul fast float %i.ghn, %i.gej
  %i.gir = fadd fast float %i.giq, %i.gho
  %i.gis = fmul fast float %i.gir, %i.gej
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1745.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit1745.thread: ; preds = %bb.fp, %bb.fo, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1746.thread
  %.119333666 = phi float [ %i.gis, %bb.fp ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1746.thread ], [ %i.gej, %bb.fo ]
  %i.git = fcmp fast olt float %i.gel, %i.ghq
  br i1 %i.git, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1744.thread, label %bb.fq

bb.fq:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1745.thread
  %i.giu = fdiv fast float 1.000000e+00, %i.ghn
  %i.giv = fadd fast float %i.ghq, %i.giu
  %i.giw = fcmp fast ogt float %i.gel, %i.giv
  br i1 %i.giw, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1744.thread, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.gix = fmul fast float %i.ghn, %i.gel
  %i.giy = fadd fast float %i.gix, %i.gho
  %i.giz = fmul fast float %i.giy, %i.gel
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1744.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit1744.thread: ; preds = %bb.fr, %bb.fq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1745.thread
  %.119353728 = phi float [ %i.giz, %bb.fr ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1745.thread ], [ %i.gel, %bb.fq ]
  %i.gja = fcmp fast olt float %i.gep, %i.ghq
  %i.gjb = insertelement <4 x float> poison, float %.119293581, i64 0
  %i.gjc = insertelement <4 x float> %i.gjb, float %.119313617, i64 1
end_hunk_8
