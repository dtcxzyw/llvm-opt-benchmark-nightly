Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_ac_strategy?download=true
inline.NumInlined: 2681
inline.NumDeleted: 850
loop-unroll.NumCompletelyUnrolled: 531
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 686
begin_hunk_0_@_ZN3jxl6N_SSE212_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_:bb.a
  %i.ahl = getelementptr i8, ptr %i.acj, i64 20
  %i.ahm = getelementptr i8, ptr %i.ack, i64 20
  %i.ahn = getelementptr i8, ptr %i.acl, i64 20
  %i.aho = load float, ptr %i.ahk, align 4, !tbaa !69
  %i.ahp = load float, ptr %i.ahl, align 4, !tbaa !69
  %i.ahq = load float, ptr %i.ahm, align 4, !tbaa !69
  %i.ahr = load float, ptr %i.ahn, align 4, !tbaa !69
  %i.ahs = insertelement <4 x float> poison, float %i.aho, i64 0
  %i.aht = insertelement <4 x float> %i.ahs, float %i.ahp, i64 1
  %i.ahu = insertelement <4 x float> %i.aht, float %i.ahq, i64 2
  %i.ahv = insertelement <4 x float> %i.ahu, float %i.ahr, i64 3 ; 4 uses
  %i.ahw = fadd <4 x float> %i.agl, %i.agx        ; 2 uses
  %i.ahx = fsub <4 x float> %i.agl, %i.agx        ; 2 uses
  %i.ahy = getelementptr i8, ptr %1, i64 24
  %i.ahz = getelementptr i8, ptr %i.acf, i64 24
  %i.aia = getelementptr i8, ptr %i.acg, i64 24
  %i.aib = getelementptr i8, ptr %i.ach, i64 24
  %i.aic = load float, ptr %i.ahy, align 4, !tbaa !69
  %i.aid = load float, ptr %i.ahz, align 4, !tbaa !69
  %i.aie = load float, ptr %i.aia, align 4, !tbaa !69
  %i.aif = load float, ptr %i.aib, align 4, !tbaa !69
  %i.aig = insertelement <4 x float> poison, float %i.aic, i64 0
  %i.aih = insertelement <4 x float> %i.aig, float %i.aid, i64 1
  %i.aii = insertelement <4 x float> %i.aih, float %i.aie, i64 2
  %i.aij = insertelement <4 x float> %i.aii, float %i.aif, i64 3 ; 2 uses
  %i.aik = getelementptr i8, ptr %1, i64 28
  %i.ail = getelementptr i8, ptr %i.acf, i64 28
  %i.aim = getelementptr i8, ptr %i.acg, i64 28
  %i.ain = getelementptr i8, ptr %i.ach, i64 28
  %i.aio = load float, ptr %i.aik, align 4, !tbaa !69
  %i.aip = load float, ptr %i.ail, align 4, !tbaa !69
  %i.aiq = load float, ptr %i.aim, align 4, !tbaa !69
  %i.air = load float, ptr %i.ain, align 4, !tbaa !69
  %i.ais = insertelement <4 x float> poison, float %i.aio, i64 0
  %i.ait = insertelement <4 x float> %i.ais, float %i.aip, i64 1
  %i.aiu = insertelement <4 x float> %i.ait, float %i.aiq, i64 2
  %i.aiv = insertelement <4 x float> %i.aiu, float %i.air, i64 3 ; 2 uses
  %i.aiw = getelementptr i8, ptr %i.aci, i64 24
  %i.aix = getelementptr i8, ptr %i.acj, i64 24
  %i.aiy = getelementptr i8, ptr %i.ack, i64 24
  %i.aiz = getelementptr i8, ptr %i.acl, i64 24
  %i.aja = load float, ptr %i.aiw, align 4, !tbaa !69
  %i.ajb = load float, ptr %i.aix, align 4, !tbaa !69
  %i.ajc = load float, ptr %i.aiy, align 4, !tbaa !69
  %i.ajd = load float, ptr %i.aiz, align 4, !tbaa !69
  %i.aje = insertelement <4 x float> poison, float %i.aja, i64 0
  %i.ajf = insertelement <4 x float> %i.aje, float %i.ajb, i64 1
  %i.ajg = insertelement <4 x float> %i.ajf, float %i.ajc, i64 2
  %i.ajh = insertelement <4 x float> %i.ajg, float %i.ajd, i64 3 ; 4 uses
  %i.aji = getelementptr i8, ptr %i.aci, i64 28
  %i.ajj = getelementptr i8, ptr %i.acj, i64 28
  %i.ajk = getelementptr i8, ptr %i.ack, i64 28
  %i.ajl = getelementptr i8, ptr %i.acl, i64 28
  %i.ajm = load float, ptr %i.aji, align 4, !tbaa !69
  %i.ajn = load float, ptr %i.ajj, align 4, !tbaa !69
  %i.ajo = load float, ptr %i.ajk, align 4, !tbaa !69
  %i.ajp = load float, ptr %i.ajl, align 4, !tbaa !69
  %i.ajq = insertelement <4 x float> poison, float %i.ajm, i64 0
  %i.ajr = insertelement <4 x float> %i.ajq, float %i.ajn, i64 1
  %i.ajs = insertelement <4 x float> %i.ajr, float %i.ajo, i64 2
  %i.ajt = insertelement <4 x float> %i.ajs, float %i.ajp, i64 3 ; 4 uses
  %i.aju = fadd <4 x float> %i.aij, %i.aiv        ; 2 uses
  %i.ajv = fsub <4 x float> %i.aij, %i.aiv        ; 2 uses
  %i.ajw = shufflevector <4 x float> %i.aea, <4 x float> %i.afy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ajx = shufflevector <4 x float> %i.ahw, <4 x float> %i.aju, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ajy = shufflevector <8 x float> %i.ajw, <8 x float> %i.ajx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ajz = shufflevector <4 x float> %i.adn, <4 x float> %i.afl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aka = shufflevector <4 x float> %i.ahj, <4 x float> %i.ajh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.akb = shufflevector <8 x float> %i.ajz, <8 x float> %i.aka, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akc = fadd <16 x float> %i.ajy, %i.akb
  %i.akd = shufflevector <4 x float> %i.adz, <4 x float> %i.afx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ake = shufflevector <4 x float> %i.ahv, <4 x float> %i.ajt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.akf = shufflevector <8 x float> %i.akd, <8 x float> %i.ake, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akg = fadd <16 x float> %i.akc, %i.akf
  %i.akh = shufflevector <4 x float> %i.aea, <4 x float> %i.afy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aki = shufflevector <4 x float> %i.ahw, <4 x float> %i.aju, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.akj = shufflevector <8 x float> %i.akh, <8 x float> %i.aki, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akk = shufflevector <4 x float> %i.adn, <4 x float> %i.afl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.akl = shufflevector <4 x float> %i.ahj, <4 x float> %i.ajh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.akm = shufflevector <8 x float> %i.akk, <8 x float> %i.akl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akn = fsub <16 x float> %i.akj, %i.akm
  %i.ako = shufflevector <4 x float> %i.adz, <4 x float> %i.afx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.akp = shufflevector <4 x float> %i.ahv, <4 x float> %i.ajt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.akq = shufflevector <8 x float> %i.ako, <8 x float> %i.akp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akr = fsub <16 x float> %i.akn, %i.akq
  %i.aks = shufflevector <16 x float> %i.akg, <16 x float> %i.akr, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec = fmul <32 x float> %i.aks, splat (float 2.500000e-01)
  %i.akt = shufflevector <4 x float> %i.aeb, <4 x float> %i.afz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aku = shufflevector <4 x float> %i.ahx, <4 x float> %i.ajv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.akv = shufflevector <8 x float> %i.akt, <8 x float> %i.aku, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akw = shufflevector <4 x float> %i.adn, <4 x float> %i.afl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.akx = shufflevector <4 x float> %i.ahj, <4 x float> %i.ajh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aky = shufflevector <8 x float> %i.akw, <8 x float> %i.akx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akz = fadd <16 x float> %i.akv, %i.aky
  %i.ala = shufflevector <4 x float> %i.adz, <4 x float> %i.afx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.alb = shufflevector <4 x float> %i.ahv, <4 x float> %i.ajt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.alc = shufflevector <8 x float> %i.ala, <8 x float> %i.alb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ald = fsub <16 x float> %i.akz, %i.alc
  %i.ale = shufflevector <4 x float> %i.aeb, <4 x float> %i.afz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.alf = shufflevector <4 x float> %i.ahx, <4 x float> %i.ajv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.alg = shufflevector <8 x float> %i.ale, <8 x float> %i.alf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.alh = shufflevector <4 x float> %i.adn, <4 x float> %i.afl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ali = shufflevector <4 x float> %i.ahj, <4 x float> %i.ajh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.alj = shufflevector <8 x float> %i.alh, <8 x float> %i.ali, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.alk = fsub <16 x float> %i.alg, %i.alj
  %i.all = shufflevector <4 x float> %i.adz, <4 x float> %i.afx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.alm = shufflevector <4 x float> %i.ahv, <4 x float> %i.ajt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aln = shufflevector <8 x float> %i.all, <8 x float> %i.alm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.alo = fadd <16 x float> %i.alk, %i.aln
  %i.alp = shufflevector <16 x float> %i.ald, <16 x float> %i.alo, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec625 = fmul <32 x float> %i.alp, splat (float 2.500000e-01)
  store <32 x float> %interleaved.vec, ptr %3, align 4, !tbaa !69
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 128
  store <32 x float> %interleaved.vec625, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !69
  %i.alq = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.alr = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.als = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.alt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.alu = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.alv = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.alw = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.aly = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.ama = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.amb = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.amc = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.amd = load <4 x float>, ptr %i.alr, align 4, !tbaa !69 ; 6 uses
  %i.ame = load float, ptr %i.alv, align 4, !tbaa !69
  %i.amf = extractelement <4 x float> %i.amd, i64 0
  %i.amg = load <2 x float>, ptr %i.alt, align 4, !tbaa !69 ; 2 uses
  %i.amh = load float, ptr %i.alu, align 4, !tbaa !69
  %i.ami = shufflevector <2 x float> %i.amg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.amj = shufflevector <4 x float> %i.ami, <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.amk = shufflevector <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <4 x float> %i.ami, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.aml = fadd <4 x float> %i.amj, %i.amk        ; 2 uses
  %i.amm = shufflevector <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <4 x float> %i.amd, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.amn = fadd <4 x float> %i.aml, %i.amm
  %i.amo = shufflevector <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float> %i.amd, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %i.amp = fadd <4 x float> %i.amn, %i.amo
  %i.amq = fmul <4 x float> %i.amp, <float 2.500000e-01, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00> ; 3 uses
  %i.amr = load <2 x float>, ptr %3, align 4, !tbaa !69 ; 3 uses
  %i.ams = load float, ptr %i.alq, align 4, !tbaa !69
  %i.amt = extractelement <2 x float> %i.amr, i64 0
  %i.amu = fadd float %i.amt, %i.ams              ; 2 uses
  %i.amv = load <2 x float>, ptr %i.als, align 4, !tbaa !69 ; 3 uses
  %i.amw = shufflevector <2 x float> %i.amr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.amx = insertelement <2 x float> %i.amw, float %i.amh, i64 1
  %i.amy = shufflevector <2 x float> %i.amr, <2 x float> %i.amg, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.amz = shufflevector <2 x float> %i.amx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ana = fsub <4 x float> %i.amy, %i.amz        ; 2 uses
  %i.anb = shufflevector <4 x float> %i.amd, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.anc = shufflevector <2 x float> %i.anb, <2 x float> %i.amv, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %i.and = fadd <4 x float> %i.ana, %i.anc
  %i.ane = fsub <4 x float> %i.ana, %i.anc
  %i.anf = shufflevector <4 x float> %i.and, <4 x float> %i.ane, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.ang = insertelement <2 x float> %i.amv, float %i.ame, i64 1
  %i.anh = shufflevector <2 x float> %i.ang, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ani = fsub <4 x float> %i.anf, %i.anh
  %i.anj = fadd <4 x float> %i.anf, %i.anh
  %i.ank = shufflevector <4 x float> %i.ani, <4 x float> %i.anj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.anl = fmul <4 x float> %i.ank, splat (float 2.500000e-01)
  %i.anm = load <4 x float>, ptr %i.aly, align 4, !tbaa !69 ; 4 uses
  %i.ann = extractelement <4 x float> %i.anm, i64 0
  %i.ano = load <4 x float>, ptr %i.alw, align 4, !tbaa !69 ; 3 uses
  %i.anp = load float, ptr %i.ama, align 4, !tbaa !69
  %i.anq = load <2 x float>, ptr %i.alx, align 4, !tbaa !69
  %i.anr = shufflevector <4 x float> %i.ano, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ans = insertelement <2 x float> %i.anr, float %i.anp, i64 1
  %i.ant = fadd <2 x float> %i.ans, %i.anq        ; 3 uses
  %i.anu = shufflevector <4 x float> %i.ano, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.anv = shufflevector <4 x float> %i.ano, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.anw = fsub <4 x float> %i.anu, %i.anv        ; 2 uses
  store <4 x float> %i.anl, ptr %i.alw, align 4, !tbaa !69
  %i.anx = load <3 x float>, ptr %i.alz, align 4, !tbaa !69 ; 3 uses
  %i.any = load float, ptr %i.amc, align 4, !tbaa !69
  %i.anz = load float, ptr %i.amb, align 4, !tbaa !69
  %i.aoa = extractelement <2 x float> %i.ant, i64 0
  %i.aob = fadd float %i.amu, %i.amf
  %i.aoc = fadd float %i.aoa, %i.ann
  %i.aod = insertelement <4 x float> poison, float %i.aob, i64 0
  %i.aoe = insertelement <4 x float> %i.aod, float %i.aoc, i64 1
  %i.aof = shufflevector <2 x float> %i.amv, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.aog = extractelement <2 x float> %i.ant, i64 1
  %i.aoh = fadd float %i.aog, %i.anz
  %i.aoi = fadd float %i.aoh, %i.any
  %i.aoj = shufflevector <4 x float> %i.anm, <4 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.aok = shufflevector <3 x float> %i.aoj, <3 x float> %i.anx, <4 x i32> <i32 0, i32 4, i32 0, i32 4> ; 2 uses
  %i.aol = fadd <4 x float> %i.anw, %i.aok
  %i.aom = fsub <4 x float> %i.anw, %i.aok
  %i.aon = shufflevector <4 x float> %i.aol, <4 x float> %i.aom, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.aoo = shufflevector <3 x float> %i.anx, <3 x float> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 2 uses
  %i.aop = fsub <4 x float> %i.aon, %i.aoo
  %i.aoq = fadd <4 x float> %i.aon, %i.aoo
  %i.aor = shufflevector <4 x float> %i.aop, <4 x float> %i.aoq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aos = fmul <4 x float> %i.aor, splat (float 2.500000e-01)
  store <4 x float> %i.aos, ptr %i.aly, align 4, !tbaa !69
  %i.aot = shufflevector <3 x float> %i.aof, <3 x float> %i.anx, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.aou = fadd <4 x float> %i.aoe, %i.aot
  %i.aov = shufflevector <4 x float> %i.aou, <4 x float> %i.amd, <4 x i32> <i32 0, i32 1, i32 4, i32 6>
  %i.aow = fmul <4 x float> %i.aov, <float 2.500000e-01, float 2.500000e-01, float 1.000000e+00, float 1.000000e+00> ; 6 uses
  %i.aox = insertelement <4 x float> poison, float %i.aoi, i64 0
  %i.aoy = shufflevector <4 x float> %i.aox, <4 x float> %i.amd, <4 x i32> <i32 0, i32 0, i32 5, i32 7>
  %i.aoz = fmul <4 x float> %i.aoy, <float 2.500000e-01, float 2.500000e-01, float 1.000000e+00, float 1.000000e+00> ; 4 uses
  %i.apa = fadd <4 x float> %i.aow, %i.amq        ; 3 uses
  %foldExtExtBinop634 = fsub <4 x float> %i.aow, %i.amq
  %i.apb = shufflevector <4 x float> %i.aow, <4 x float> %foldExtExtBinop634, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.apc = shufflevector <4 x float> %i.amq, <4 x float> %i.aow, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.apd = fsub <4 x float> %i.apb, %i.apc
  %i.ape = shufflevector <2 x float> %i.ant, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.apf = shufflevector <4 x float> %i.apd, <4 x float> %i.ape, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.apg = shufflevector <4 x float> %i.aow, <4 x float> %i.aoz, <4 x i32> <i32 1, i32 4, i32 poison, i32 poison>
  %i.aph = shufflevector <4 x float> %i.apg, <4 x float> %i.anm, <4 x i32> <i32 0, i32 1, i32 4, i32 6> ; 2 uses
  %i.api = fadd <4 x float> %i.apf, %i.aph
  %i.apj = fsub <4 x float> %i.apf, %i.aph
  %i.apk = shufflevector <4 x float> %i.api, <4 x float> %i.apj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.apl = shufflevector <4 x float> %i.aoz, <4 x float> %i.anm, <4 x i32> <i32 0, i32 poison, i32 5, i32 7>
  %i.apm = insertelement <4 x float> %i.apl, float 0.000000e+00, i64 1
  %i.apn = fsub <4 x float> %i.apk, %i.apm
  %i.apo = fmul <4 x float> %i.apn, splat (float 2.500000e-01)
  %i.app = shufflevector <4 x float> %i.aow, <4 x float> %i.apa, <4 x i32> <i32 1, i32 4, i32 poison, i32 poison>
  %i.apq = shufflevector <4 x float> %i.app, <4 x float> %i.aml, <4 x i32> <i32 0, i32 1, i32 poison, i32 4>
  %i.apr = insertelement <4 x float> %i.apq, float %i.amu, i64 2 ; 2 uses
  %i.aps = fadd <4 x float> %i.apr, %i.apa
  %i.apt = fsub <4 x float> %i.apr, %i.apa
  %i.apu = shufflevector <4 x float> %i.aps, <4 x float> %i.apt, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.apv = fadd <4 x float> %i.apu, %i.aoz
  %i.apw = fsub <4 x float> %i.apu, %i.aoz
  %i.apx = shufflevector <4 x float> %i.apv, <4 x float> %i.apw, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.apy = fmul <4 x float> %i.apx, splat (float 2.500000e-01)
  store <4 x float> %i.apy, ptr %3, align 4, !tbaa !69
  store <4 x float> %i.apo, ptr %i.alr, align 4, !tbaa !69
  br label %bb.z

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #51
  store i64 %2, ptr %103, align 8, !tbaa !179
  %i.apz = getelementptr inbounds nuw i8, ptr %103, i64 8
  store ptr %1, ptr %i.apz, align 8, !tbaa !180
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2551)
  %i.aqa = getelementptr inbounds nuw i8, ptr %4, i64 1024 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #51, !noalias !2551
  store i64 16, ptr %96, align 8, !tbaa !182, !noalias !2551
  %i.aqb = getelementptr inbounds nuw i8, ptr %96, i64 8
  store ptr %3, ptr %i.aqb, align 8, !tbaa !183, !noalias !2551
  call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_115NoInlineWrapperIFvRKNS1_7DCTFromERKNS1_5DCTToEmPfEJS3_S6_mrS9_EEEvRKT_DpRKT0_(ptr noundef nonnull @_ZN3jxl6N_SSE212_GLOBAL__N_112DCT1DWrapperILm16ELm4ELb0ENS1_7DCTFromENS1_5DCTToEEEvRKT2_RKT3_mPf, ptr noundef nonnull align 8 dereferenceable(16) %103, ptr noundef nonnull align 8 dereferenceable(16) %96, i64 16, ptr nonnull %i.aqa) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #51, !noalias !2551
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %bb.d
  %.0.i15.i.i = phi i64 [ 0, %bb.d ], [ %i.aso, %.preheader.i.i ] ; 4 uses
  %.idx.i301 = shl nuw nsw i64 %.0.i15.i.i, 6
  %i.aqc = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i301 ; 16 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 64
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqc, i64 128
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqc, i64 192
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %4, i64 %.0.i15.i.i ; 16 uses
  %i.aqg = load <4 x float>, ptr %i.aqc, align 1, !tbaa !66, !alias.scope !2552, !noalias !2551 ; 2 uses
  %i.aqh = load <4 x float>, ptr %i.aqd, align 1, !tbaa !66, !alias.scope !2553, !noalias !2551 ; 2 uses
  %i.aqi = load <4 x float>, ptr %i.aqe, align 1, !tbaa !66, !alias.scope !2554, !noalias !2551 ; 2 uses
  %i.aqj = load <4 x float>, ptr %i.aqf, align 1, !tbaa !66, !alias.scope !2555, !noalias !2551 ; 2 uses
  %i.aqk = shufflevector <4 x float> %i.aqg, <4 x float> %i.aqi, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aql = shufflevector <4 x float> %i.aqh, <4 x float> %i.aqj, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aqm = shufflevector <4 x float> %i.aqg, <4 x float> %i.aqi, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aqn = shufflevector <4 x float> %i.aqh, <4 x float> %i.aqj, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aqo = shufflevector <4 x float> %i.aqk, <4 x float> %i.aql, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.aqp = shufflevector <4 x float> %i.aqk, <4 x float> %i.aql, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.aqq = shufflevector <4 x float> %i.aqm, <4 x float> %i.aqn, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.aqr = shufflevector <4 x float> %i.aqm, <4 x float> %i.aqn, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.aqo, ptr %invariant.gep.i.i, align 1, !tbaa !66, !alias.scope !2556
  %gep9.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 64
  store <4 x float> %i.aqp, ptr %gep9.i.i, align 1, !tbaa !66, !alias.scope !2557
  %gep11.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 128
  store <4 x float> %i.aqq, ptr %gep11.i.i, align 1, !tbaa !66, !alias.scope !2558
  %gep13.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 192
  store <4 x float> %i.aqr, ptr %gep13.i.i, align 1, !tbaa !66, !alias.scope !2559
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqc, i64 16
  %i.aqt = load <4 x float>, ptr %i.aqs, align 1, !tbaa !66, !alias.scope !2552, !noalias !2551 ; 2 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqc, i64 80
  %i.aqv = load <4 x float>, ptr %i.aqu, align 1, !tbaa !66, !alias.scope !2553, !noalias !2551 ; 2 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqc, i64 144
  %i.aqx = load <4 x float>, ptr %i.aqw, align 1, !tbaa !66, !alias.scope !2554, !noalias !2551 ; 2 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqc, i64 208
  %i.aqz = load <4 x float>, ptr %i.aqy, align 1, !tbaa !66, !alias.scope !2555, !noalias !2551 ; 2 uses
  %i.ara = shufflevector <4 x float> %i.aqt, <4 x float> %i.aqx, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.arb = shufflevector <4 x float> %i.aqv, <4 x float> %i.aqz, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.arc = shufflevector <4 x float> %i.aqt, <4 x float> %i.aqx, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ard = shufflevector <4 x float> %i.aqv, <4 x float> %i.aqz, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.are = shufflevector <4 x float> %i.ara, <4 x float> %i.arb, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.arf = shufflevector <4 x float> %i.ara, <4 x float> %i.arb, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.arg = shufflevector <4 x float> %i.arc, <4 x float> %i.ard, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.arh = shufflevector <4 x float> %i.arc, <4 x float> %i.ard, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %gep.1.i.i302 = getelementptr i8, ptr %invariant.gep.i.i, i64 256
  store <4 x float> %i.are, ptr %gep.1.i.i302, align 1, !tbaa !66, !alias.scope !2556
  %gep9.1.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 320
  store <4 x float> %i.arf, ptr %gep9.1.i.i, align 1, !tbaa !66, !alias.scope !2557
  %gep11.1.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 384
  store <4 x float> %i.arg, ptr %gep11.1.i.i, align 1, !tbaa !66, !alias.scope !2558
  %gep13.1.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 448
  store <4 x float> %i.arh, ptr %gep13.1.i.i, align 1, !tbaa !66, !alias.scope !2559
  %i.ari = getelementptr inbounds nuw i8, ptr %i.aqc, i64 32
  %i.arj = load <4 x float>, ptr %i.ari, align 1, !tbaa !66, !alias.scope !2552, !noalias !2551 ; 2 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %i.aqc, i64 96
  %i.arl = load <4 x float>, ptr %i.ark, align 1, !tbaa !66, !alias.scope !2553, !noalias !2551 ; 2 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %i.aqc, i64 160
  %i.arn = load <4 x float>, ptr %i.arm, align 1, !tbaa !66, !alias.scope !2554, !noalias !2551 ; 2 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %i.aqc, i64 224
  %i.arp = load <4 x float>, ptr %i.aro, align 1, !tbaa !66, !alias.scope !2555, !noalias !2551 ; 2 uses
  %i.arq = shufflevector <4 x float> %i.arj, <4 x float> %i.arn, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.arr = shufflevector <4 x float> %i.arl, <4 x float> %i.arp, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ars = shufflevector <4 x float> %i.arj, <4 x float> %i.arn, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.art = shufflevector <4 x float> %i.arl, <4 x float> %i.arp, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aru = shufflevector <4 x float> %i.arq, <4 x float> %i.arr, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.arv = shufflevector <4 x float> %i.arq, <4 x float> %i.arr, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.arw = shufflevector <4 x float> %i.ars, <4 x float> %i.art, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.arx = shufflevector <4 x float> %i.ars, <4 x float> %i.art, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %gep.2.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 512
  store <4 x float> %i.aru, ptr %gep.2.i.i, align 1, !tbaa !66, !alias.scope !2556
  %gep9.2.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 576
  store <4 x float> %i.arv, ptr %gep9.2.i.i, align 1, !tbaa !66, !alias.scope !2557
  %gep11.2.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 640
  store <4 x float> %i.arw, ptr %gep11.2.i.i, align 1, !tbaa !66, !alias.scope !2558
  %gep13.2.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 704
  store <4 x float> %i.arx, ptr %gep13.2.i.i, align 1, !tbaa !66, !alias.scope !2559
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aqc, i64 48
  %i.arz = load <4 x float>, ptr %i.ary, align 1, !tbaa !66, !alias.scope !2552, !noalias !2551 ; 2 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %i.aqc, i64 112
  %i.asb = load <4 x float>, ptr %i.asa, align 1, !tbaa !66, !alias.scope !2553, !noalias !2551 ; 2 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %i.aqc, i64 176
  %i.asd = load <4 x float>, ptr %i.asc, align 1, !tbaa !66, !alias.scope !2554, !noalias !2551 ; 2 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %i.aqc, i64 240
  %i.asf = load <4 x float>, ptr %i.ase, align 1, !tbaa !66, !alias.scope !2555, !noalias !2551 ; 2 uses
  %i.asg = shufflevector <4 x float> %i.arz, <4 x float> %i.asd, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ash = shufflevector <4 x float> %i.asb, <4 x float> %i.asf, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.asi = shufflevector <4 x float> %i.arz, <4 x float> %i.asd, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.asj = shufflevector <4 x float> %i.asb, <4 x float> %i.asf, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ask = shufflevector <4 x float> %i.asg, <4 x float> %i.ash, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.asl = shufflevector <4 x float> %i.asg, <4 x float> %i.ash, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.asm = shufflevector <4 x float> %i.asi, <4 x float> %i.asj, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.asn = shufflevector <4 x float> %i.asi, <4 x float> %i.asj, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %gep.3.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 768
  store <4 x float> %i.ask, ptr %gep.3.i.i, align 1, !tbaa !66, !alias.scope !2556
  %gep9.3.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 832
  store <4 x float> %i.asl, ptr %gep9.3.i.i, align 1, !tbaa !66, !alias.scope !2557
  %gep11.3.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 896
  store <4 x float> %i.asm, ptr %gep11.3.i.i, align 1, !tbaa !66, !alias.scope !2558
  %gep13.3.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 960
  store <4 x float> %i.asn, ptr %gep13.3.i.i, align 1, !tbaa !66, !alias.scope !2559
  %i.aso = add nuw nsw i64 %.0.i15.i.i, 4
  %i.asp = icmp samesign ult i64 %.0.i15.i.i, 12
  br i1 %i.asp, label %.preheader.i.i, label %_ZN3jxl6N_SSE212_GLOBAL__N_116ComputeScaledDCTILm16ELm16EEclINS1_7DCTFromEEEvRKT_PfS9_.exit, !llvm.loop !16

_ZN3jxl6N_SSE212_GLOBAL__N_116ComputeScaledDCTILm16ELm16EEclINS1_7DCTFromEEEvRKT_PfS9_.exit: ; preds = %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #51, !noalias !2551
  store i64 16, ptr %97, align 8, !tbaa !179, !noalias !2551
  %i.asq = getelementptr inbounds nuw i8, ptr %97, i64 8
  store ptr %4, ptr %i.asq, align 8, !tbaa !180, !noalias !2551
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #51, !noalias !2551
  store i64 16, ptr %98, align 8, !tbaa !182, !noalias !2551
  %i.asr = getelementptr inbounds nuw i8, ptr %98, i64 8
  store ptr %3, ptr %i.asr, align 8, !tbaa !183, !noalias !2551
  call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_115NoInlineWrapperIFvRKNS1_7DCTFromERKNS1_5DCTToEmPfEJS3_S6_mrS9_EEEvRKT_DpRKT0_(ptr noundef nonnull @_ZN3jxl6N_SSE212_GLOBAL__N_112DCT1DWrapperILm16ELm4ELb0ENS1_7DCTFromENS1_5DCTToEEEvRKT2_RKT3_mPf, ptr noundef nonnull align 8 dereferenceable(16) %97, ptr noundef nonnull align 8 dereferenceable(16) %98, i64 16, ptr nonnull %i.aqa) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #51, !noalias !2551
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #51, !noalias !2551
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #51
  br label %bb.z

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #51
  store i64 %2, ptr %104, align 8, !tbaa !179
  %i.ass = getelementptr inbounds nuw i8, ptr %104, i64 8
  store ptr %1, ptr %i.ass, align 8, !tbaa !180
  %i.ast = getelementptr inbounds nuw i8, ptr %4, i64 512 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #51, !noalias !2560
  store i64 8, ptr %93, align 8, !tbaa !182, !noalias !2560
  %i.asu = getelementptr inbounds nuw i8, ptr %93, i64 8
  store ptr %3, ptr %i.asu, align 8, !tbaa !183, !noalias !2560
  call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_115NoInlineWrapperIFvRKNS1_7DCTFromERKNS1_5DCTToEmPfEJS3_S6_mrS9_EEEvRKT_DpRKT0_(ptr noundef nonnull @_ZN3jxl6N_SSE212_GLOBAL__N_112DCT1DWrapperILm16ELm4ELb0ENS1_7DCTFromENS1_5DCTToEEEvRKT2_RKT3_mPf, ptr noundef nonnull align 8 dereferenceable(16) %104, ptr noundef nonnull align 8 dereferenceable(16) %93, i64 8, ptr nonnull %i.ast) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #51, !noalias !2560
  call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_19TransposeILm16ELm8EvE3RunINS1_7DCTFromENS1_5DCTToEEEvRKT_RKT0_(i64 8, ptr %3, i64 16, ptr %4) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #51, !noalias !2560
  store i64 16, ptr %94, align 8, !tbaa !179, !noalias !2560
  %i.asv = getelementptr inbounds nuw i8, ptr %94, i64 8
  store ptr %4, ptr %i.asv, align 8, !tbaa !180, !noalias !2560
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #51, !noalias !2560
  store i64 16, ptr %95, align 8, !tbaa !182, !noalias !2560
  %i.asw = getelementptr inbounds nuw i8, ptr %95, i64 8
  store ptr %3, ptr %i.asw, align 8, !tbaa !183, !noalias !2560
  call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_115NoInlineWrapperIFvRKNS1_7DCTFromERKNS1_5DCTToEmPfEJS3_S6_mrS9_EEEvRKT_DpRKT0_(ptr noundef nonnull @_ZN3jxl6N_SSE212_GLOBAL__N_112DCT1DWrapperILm8ELm4ELb0ENS1_7DCTFromENS1_5DCTToEEEvRKT2_RKT3_mPf, ptr noundef nonnull align 8 dereferenceable(16) %94, ptr noundef nonnull align 8 dereferenceable(16) %95, i64 16, ptr nonnull %i.ast) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #51, !noalias !2560
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #51, !noalias !2560
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #51
  br label %bb.z

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #51
  store i64 %2, ptr %105, align 8, !tbaa !179
  %i.asx = getelementptr inbounds nuw i8, ptr %105, i64 8
  store ptr %1, ptr %i.asx, align 8, !tbaa !180
  %i.asy = getelementptr inbounds nuw i8, ptr %4, i64 512 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #51, !noalias !2561
  store i64 16, ptr %90, align 8, !tbaa !182, !noalias !2561
  %i.asz = getelementptr inbounds nuw i8, ptr %90, i64 8
  store ptr %4, ptr %i.asz, align 8, !tbaa !183, !noalias !2561
  call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_115NoInlineWrapperIFvRKNS1_7DCTFromERKNS1_5DCTToEmPfEJS3_S6_mrS9_EEEvRKT_DpRKT0_(ptr noundef nonnull @_ZN3jxl6N_SSE212_GLOBAL__N_112DCT1DWrapperILm8ELm4ELb0ENS1_7DCTFromENS1_5DCTToEEEvRKT2_RKT3_mPf, ptr noundef nonnull align 8 dereferenceable(16) %105, ptr noundef nonnull align 8 dereferenceable(16) %90, i64 16, ptr nonnull %i.asy) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #51, !noalias !2561
  call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_19TransposeILm8ELm16EvE3RunINS1_7DCTFromENS1_5DCTToEEEvRKT_RKT0_(i64 16, ptr %4, i64 8, ptr %3) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #51, !noalias !2561
  store i64 8, ptr %91, align 8, !tbaa !179, !noalias !2561
  %i.ata = getelementptr inbounds nuw i8, ptr %91, i64 8
  store ptr %3, ptr %i.ata, align 8, !tbaa !180, !noalias !2561
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #51, !noalias !2561
end_hunk_0
