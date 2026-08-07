inline.NumInlined: 45
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4ojph5local26ojph_decode_codeblock_avx2EPhPjjjjjjjjb:bb.a
  %i.ahs = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 4 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.ahv = zext i32 %8 to i64
  %i.ahw = trunc nuw i32 %2 to i16
  %i.ahx = sub nsw i16 13, %i.ahw
  %.splatinsert = insertelement <16 x i16> poison, i16 %i.ahx, i64 0
  %.splat = shufflevector <16 x i16> %.splatinsert, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %bb.bn

.critedge862.preheader:                           ; preds = %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit, %bb.bm
  br i1 %i.be, label %.lr.ph1040, label %.critedge862._crit_edge

.lr.ph1040:                                       ; preds = %.critedge862.preheader
  %i.ahy = insertelement <8 x i32> poison, i32 %i.av, i64 0
  %i.ahz = shufflevector <8 x i32> %i.ahy, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aia = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 4 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.aid = zext i32 %8 to i64
  %i.aie = trunc nuw i32 %2 to i16
  %i.aif = sub nsw i16 13, %i.aie
  %.splatinsert1278 = insertelement <16 x i16> poison, i16 %i.aif, i64 0
  %.splat1279 = shufflevector <16 x i16> %.splatinsert1278, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %bb.bu

bb.bn:                                            ; preds = %.lr.ph1026, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit
  %i.aig = phi i32 [ 2, %.lr.ph1026 ], [ %i.aos, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit ]
  %.07921024 = phi ptr [ %i.a, %.lr.ph1026 ], [ %i.aop, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit ] ; 2 uses
  %.07931023 = phi ptr [ %i.c, %.lr.ph1026 ], [ %i.aoq, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit ] ; 2 uses
  %.07971022 = phi ptr [ %1, %.lr.ph1026 ], [ %i.aor, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit ] ; 3 uses
  %.07981021 = phi i32 [ 0, %.lr.ph1026 ], [ %i.aoo, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit ]
  %i.aih = load <2 x i64>, ptr %.07921024, align 1, !tbaa !10 ; 2 uses
  %i.aii = bitcast <2 x i64> %i.aih to <4 x i32>
  %i.aij = lshr <4 x i32> %i.aii, splat (i32 16)  ; 3 uses
  %i.aik = icmp sgt <4 x i32> %i.aij, %i.ahr
  %i.ail = sext <4 x i1> %i.aik to <4 x i32>
  %i.aim = bitcast <4 x i32> %i.ail to <2 x i64>  ; 2 uses
  %i.ain = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %i.aim, <2 x i64> %i.aim)
  %.not.not = icmp eq i32 %i.ain, 0
  br i1 %.not.not, label %.thread933, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.aio = bitcast <2 x i64> %i.aih to <16 x i8>
  %i.aip = shufflevector <16 x i8> %i.aio, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 4, i32 5, i32 4, i32 5, i32 8, i32 9, i32 8, i32 9, i32 12, i32 13, i32 12, i32 13>
  %i.aiq = bitcast <16 x i8> %i.aip to <8 x i16>
  %i.air = shufflevector <8 x i16> %i.aiq, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 2, i32 3, i32 2, i32 3, i32 4, i32 5, i32 4, i32 5, i32 6, i32 7, i32 6, i32 7>
  %i.ais = and <16 x i16> %i.air, <i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592> ; 2 uses
  %i.ait = icmp eq <16 x i16> %i.ais, zeroinitializer ; 4 uses
  %i.aiu = sext <16 x i1> %i.ait to <16 x i16>
  %i.aiv = bitcast <16 x i16> %i.aiu to <32 x i8>
  %i.aiw = icmp sgt <32 x i8> %i.aiv, splat (i8 -1)
  %i.aix = bitcast <32 x i1> %i.aiw to i32
  %.not.i895 = icmp eq i32 %i.aix, 0
  br i1 %.not.i895, label %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.aiy = bitcast <4 x i32> %i.aij to <16 x i8>
  %i.aiz = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.aiy, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.aja = bitcast <16 x i8> %i.aiz to <4 x i32>
  %i.ajb = or disjoint <4 x i32> %i.aij, %i.aja
  %i.ajc = shufflevector <4 x i32> %i.ajb, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.ajd = shl <16 x i16> %i.ais, <i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0> ; 2 uses
  %i.aje = lshr <16 x i16> %i.ajd, splat (i16 15) ; 2 uses
  %i.ajf = bitcast <8 x i32> %i.ajc to <16 x i16>
  %i.ajg = sub <16 x i16> %i.ajf, %i.aje
  %.inner1674 = select <16 x i1> %i.ait, <16 x i16> zeroinitializer, <16 x i16> %i.ajg ; 2 uses
  %i.ajh = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0>, <16 x i16> %.inner1674, <16 x i32> <i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.aji = add <16 x i16> %i.ajh, %.inner1674     ; 2 uses
  %i.ajj = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0>, <16 x i16> %i.aji, <16 x i32> <i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.ajk = add <16 x i16> %i.aji, %i.ajj          ; 2 uses
  %i.ajl = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ajk, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27>
  %i.ajm = add <16 x i16> %i.ajk, %i.ajl          ; 3 uses
  %i.ajn = extractelement <16 x i16> %i.ajm, i64 7 ; 2 uses
  %i.ajo = extractelement <16 x i16> %i.ajm, i64 15 ; 2 uses
  %i.ajp = zext i16 %i.ajo to i32                 ; 3 uses
  %i.ajq = bitcast <16 x i16> %i.ajm to <32 x i8>
  %i.ajr = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <32 x i8> %i.ajq, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61> ; 2 uses
  %.not116.i = icmp eq i16 %i.ajn, 0
  br i1 %.not116.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ajs = zext i16 %i.ajn to i32                 ; 3 uses
  %i.ajt = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %13)
  %i.aju = load i32, ptr %i.ahs, align 8, !tbaa !37
  %i.ajv = sub i32 %i.aju, %i.ajs
  store i32 %i.ajv, ptr %i.ahs, align 8, !tbaa !37
  %i.ajw = lshr i32 %i.ajs, 3
  %i.ajx = and i32 %i.ajw, 24
  %i.ajy = zext nneg i32 %i.ajx to i64
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.aht, i64 %i.ajy ; 2 uses
  %i.aka = and i32 %i.ajs, 63                     ; 2 uses
  %i.akb = load <2 x i64>, ptr %i.ajz, align 8, !tbaa !10 ; 2 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajz, i64 16
  %i.akd = load <2 x i64>, ptr %i.akc, align 8, !tbaa !10 ; 3 uses
  %i.ake = zext nneg i32 %i.aka to i64
  %i.akf = insertelement <2 x i64> poison, i64 %i.ake, i64 0
  %i.akg = shufflevector <2 x i64> %i.akf, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.akh = lshr <2 x i64> %i.akb, %i.akg
  %i.aki = shufflevector <2 x i64> %i.akb, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.akj = sub nuw nsw i32 64, %i.aka
  %i.akk = zext nneg i32 %i.akj to i64
  %i.akl = insertelement <2 x i64> poison, i64 %i.akk, i64 0
  %i.akm = shufflevector <2 x i64> %i.akl, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.akn = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.aki, <2 x i64> %i.akm)
  %i.ako = or <2 x i64> %i.akn, %i.akh
  %i.akp = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.akd, <2 x i32> <i32 1, i32 2>
  %i.akq = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.akp, <2 x i64> %i.akm)
  %i.akr = or <2 x i64> %i.ako, %i.akq
  store <2 x i64> %i.akr, ptr %i.aht, align 8, !tbaa !10
  %i.aks = lshr <2 x i64> %i.akd, %i.akg
  %i.akt = shufflevector <2 x i64> %i.akd, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.aku = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.akt, <2 x i64> %i.akm)
  %i.akv = or <2 x i64> %i.aku, %i.aks
  store <2 x i64> %i.akv, ptr %i.ahu, align 8, !tbaa !10
  %i.akw = shufflevector <2 x i64> %i.ajt, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.0112.i = phi <4 x i64> [ %i.akw, %bb.bq ], [ <i64 0, i64 0, i64 undef, i64 undef>, %bb.bp ]
  %.not117.i = icmp eq i16 %i.ajo, 0
  br i1 %.not117.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.akx = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %13)
  %i.aky = load i32, ptr %i.ahs, align 8, !tbaa !37
  %i.akz = sub i32 %i.aky, %i.ajp
  store i32 %i.akz, ptr %i.ahs, align 8, !tbaa !37
  %i.ala = lshr i32 %i.ajp, 3
  %i.alb = and i32 %i.ala, 24
  %i.alc = zext nneg i32 %i.alb to i64
  %i.ald = getelementptr inbounds nuw i8, ptr %i.aht, i64 %i.alc ; 2 uses
  %i.ale = and i32 %i.ajp, 63                     ; 2 uses
  %i.alf = load <2 x i64>, ptr %i.ald, align 8, !tbaa !10 ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ald, i64 16
  %i.alh = load <2 x i64>, ptr %i.alg, align 8, !tbaa !10 ; 3 uses
  %i.ali = zext nneg i32 %i.ale to i64
  %i.alj = insertelement <2 x i64> poison, i64 %i.ali, i64 0
  %i.alk = shufflevector <2 x i64> %i.alj, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.all = lshr <2 x i64> %i.alf, %i.alk
  %i.alm = shufflevector <2 x i64> %i.alf, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.aln = sub nuw nsw i32 64, %i.ale
  %i.alo = zext nneg i32 %i.aln to i64
  %i.alp = insertelement <2 x i64> poison, i64 %i.alo, i64 0
  %i.alq = shufflevector <2 x i64> %i.alp, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.alr = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.alm, <2 x i64> %i.alq)
  %i.als = or <2 x i64> %i.alr, %i.all
  %i.alt = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.alh, <2 x i32> <i32 1, i32 2>
  %i.alu = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.alt, <2 x i64> %i.alq)
  %i.alv = or <2 x i64> %i.als, %i.alu
  store <2 x i64> %i.alv, ptr %i.aht, align 8, !tbaa !10
  %i.alw = lshr <2 x i64> %i.alh, %i.alk
  %i.alx = shufflevector <2 x i64> %i.alh, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.aly = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.alx, <2 x i64> %i.alq)
  %i.alz = or <2 x i64> %i.aly, %i.alw
  store <2 x i64> %i.alz, ptr %i.ahu, align 8, !tbaa !10
  %i.ama = shufflevector <2 x i64> %i.akx, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.0113.i = phi <4 x i64> [ %i.ama, %bb.bs ], [ <i64 0, i64 0, i64 undef, i64 undef>, %bb.br ]
  %i.amb = shufflevector <4 x i64> %.0112.i, <4 x i64> %.0113.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.amc = bitcast <32 x i8> %i.ajr to <16 x i16>
  %i.amd = lshr <16 x i16> %i.amc, splat (i16 3)
  %i.ame = bitcast <16 x i16> %i.amd to <32 x i8>
  %i.amf = shufflevector <32 x i8> %i.ame, <32 x i8> poison, <32 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6, i32 8, i32 8, i32 10, i32 10, i32 12, i32 12, i32 14, i32 14, i32 16, i32 16, i32 18, i32 18, i32 20, i32 20, i32 22, i32 22, i32 24, i32 24, i32 26, i32 26, i32 28, i32 28, i32 30, i32 30>
  %i.amg = bitcast <32 x i8> %i.amf to <16 x i16> ; 2 uses
  %i.amh = add <16 x i16> %i.amg, splat (i16 256)
  %i.ami = bitcast <4 x i64> %i.amb to <32 x i8>  ; 2 uses
  %i.amj = bitcast <16 x i16> %i.amh to <32 x i8>
  %i.amk = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.ami, <32 x i8> %i.amj)
  %i.aml = add <16 x i16> %i.amg, splat (i16 513)
  %i.amm = bitcast <16 x i16> %i.aml to <32 x i8>
  %i.amn = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.ami, <32 x i8> %i.amm)
  %i.amo = and <32 x i8> %i.ajr, <i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0>
  %i.amp = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <32 x i8> %i.amo)
  %i.amq = bitcast <32 x i8> %i.amp to <16 x i16>
  %i.amr = add <16 x i16> %i.amq, splat (i16 257) ; 2 uses
  %i.ams = bitcast <32 x i8> %i.amk to <16 x i16>
  %i.amt = mul <16 x i16> %i.amr, %i.ams
  %i.amu = lshr <16 x i16> %i.amt, splat (i16 8)
  %i.amv = bitcast <32 x i8> %i.amn to <16 x i16>
  %i.amw = mul <16 x i16> %i.amr, %i.amv
  %.inner1675 = and <16 x i16> %i.amw, splat (i16 -256)
  %.inner1676 = or disjoint <16 x i16> %.inner1675, %i.amu
  %i.amx = add <8 x i32> %i.ajc, splat (i32 -65537) ; 2 uses
  %.inner1677 = and <8 x i32> %i.amx, <i32 31, i32 0, i32 0, i32 0, i32 31, i32 0, i32 0, i32 0> ; 2 uses
  %i.amy = bitcast <8 x i32> %i.amx to <32 x i8>
  %i.amz = shufflevector <32 x i8> %i.amy, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61> ; 2 uses
  %i.ana = sub nuw nsw <16 x i16> splat (i16 2), %i.aje ; 2 uses
  %.inner1678 = and <16 x i16> %i.ana, <i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0> ; 2 uses
  %.inner1679 = and <16 x i16> %i.ana, <i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1> ; 2 uses
  %i.anb = shufflevector <16 x i16> %.inner1678, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.anc = bitcast <8 x i32> %.inner1677 to <16 x i16>
  %i.and = shufflevector <16 x i16> %i.anc, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ane = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.anb, <8 x i16> %i.and)
  %i.anf = shufflevector <16 x i16> %.inner1678, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ang = bitcast <8 x i32> %.inner1677 to <16 x i16>
  %i.anh = shufflevector <16 x i16> %i.ang, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ani = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.anf, <8 x i16> %i.anh)
  %i.anj = shufflevector <16 x i16> %.inner1679, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ank = bitcast <32 x i8> %i.amz to <16 x i16>
  %i.anl = shufflevector <16 x i16> %i.ank, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.anm = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.anj, <8 x i16> %i.anl)
  %i.ann = shufflevector <16 x i16> %.inner1679, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ano = bitcast <32 x i8> %i.amz to <16 x i16>
  %i.anp = shufflevector <16 x i16> %i.ano, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.anq = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.ann, <8 x i16> %i.anp)
  %16 = or <8 x i16> %i.anm, %i.ane
  %17 = or <8 x i16> %i.anq, %i.ani
  %18 = shufflevector <8 x i16> %16, <8 x i16> %17, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.anr = add <16 x i16> %18, splat (i16 -1)
  %.inner1680.a = and <16 x i16> %.inner1676, %i.anr
  %i.ans = and <16 x i16> %i.ajd, splat (i16 2048)
  %.not1705 = icmp eq <16 x i16> %i.ans, zeroinitializer
  %.inner1681 = select <16 x i1> %.not1705, <16 x i16> zeroinitializer, <16 x i16> %18
  %.inner1682 = or <16 x i16> %.inner1680.a, %.inner1681 ; 2 uses
  %i.ant = shl <16 x i16> %.inner1682, splat (i16 15)
  %.inner1683 = or <16 x i16> %.inner1682, splat (i16 1) ; 2 uses
  %i.anu = add <16 x i16> %.inner1683, splat (i16 2)
  %i.anv = shl <16 x i16> %i.anu, %.splat
  %i.anw = or <16 x i16> %i.ant, %i.anv
  %.inner1684 = select <16 x i1> %i.ait, <16 x i16> zeroinitializer, <16 x i16> %i.anw
  %.inner1685 = select <16 x i1> %i.ait, <16 x i16> zeroinitializer, <16 x i16> %.inner1683
  %i.anx = bitcast <16 x i16> %.inner1685 to <32 x i8> ; 2 uses
  %i.any = shufflevector <32 x i8> %i.anx, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 3, i32 6, i32 7, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 18, i32 19, i32 22, i32 23, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48>
  %i.anz = shufflevector <32 x i8> %i.anx, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 10, i32 11, i32 14, i32 15, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 26, i32 27, i32 30, i32 31, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48>
  %i.aoa = or <32 x i8> %i.any, %i.anz
  %i.aob = bitcast <32 x i8> %i.aoa to <4 x i64>  ; 2 uses
  %i.aoc = shufflevector <4 x i64> %i.aob, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.aod = or <2 x i64> %i.aoc, splat (i64 562958543486978)
  %i.aoe = shufflevector <4 x i64> %i.aob, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.aof = or <2 x i64> %i.aod, %i.aoe
  %i.aog = bitcast <16 x i16> %.inner1684 to <32 x i8>
  br label %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit

_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit: ; preds = %bb.bo, %bb.bt
  %.0918 = phi <2 x i64> [ splat (i64 562958543486978), %bb.bo ], [ %i.aof, %bb.bt ]
  %.0.i896 = phi <32 x i8> [ zeroinitializer, %bb.bo ], [ %i.aog, %bb.bt ] ; 2 uses
  %i.aoh = and i32 %i.aig, 65535
  %i.aoi = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.aoh, i64 0
  %i.aoj = bitcast <4 x i32> %i.aoi to <2 x i64>
  %i.aok = or <2 x i64> %.0918, %i.aoj            ; 2 uses
  store <2 x i64> %i.aok, ptr %.07931023, align 1, !tbaa !10
  %i.aol = shufflevector <32 x i8> %.0.i896, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 0, i32 1, i32 32, i32 32, i32 4, i32 5, i32 32, i32 32, i32 8, i32 9, i32 32, i32 32, i32 12, i32 13, i32 48, i32 48, i32 16, i32 17, i32 48, i32 48, i32 20, i32 21, i32 48, i32 48, i32 24, i32 25, i32 48, i32 48, i32 28, i32 29>
  %i.aom = shufflevector <32 x i8> %.0.i896, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 2, i32 3, i32 32, i32 32, i32 6, i32 7, i32 32, i32 32, i32 10, i32 11, i32 32, i32 32, i32 14, i32 15, i32 48, i32 48, i32 18, i32 19, i32 48, i32 48, i32 22, i32 23, i32 48, i32 48, i32 26, i32 27, i32 48, i32 48, i32 30, i32 31>
  store <32 x i8> %i.aol, ptr %.07971022, align 1, !tbaa !10
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %.07971022, i64 %i.ahv
  store <32 x i8> %i.aom, ptr %i.aon, align 1, !tbaa !10
  %i.aoo = add i32 %.07981021, 8                  ; 2 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %.07921024, i64 16
  %i.aoq = getelementptr inbounds nuw i8, ptr %.07931023, i64 8
  %i.aor = getelementptr inbounds nuw i8, ptr %.07971022, i64 32
  %.not = icmp ult i32 %i.aoo, %6
  %bc = bitcast <2 x i64> %i.aok to <4 x i32>
  %i.aos = extractelement <4 x i32> %bc, i64 2
  br i1 %.not, label %bb.bn, label %.critedge862.preheader, !llvm.loop !43

bb.bu:                                            ; preds = %.lr.ph1040, %.critedge862
  %.08001039 = phi i32 [ 2, %.lr.ph1040 ], [ %i.aqk, %.critedge862 ] ; 3 uses
  %i.aot = lshr exact i32 %.08001039, 1
  %i.aou = mul i32 %i.aot, %i.au
  %i.aov = zext i32 %i.aou to i64
  %i.aow = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.aov ; 2 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bw
  %.08011030 = phi ptr [ %i.c, %bb.bu ], [ %i.aqe, %bb.bw ] ; 3 uses
  %.08021029 = phi ptr [ %i.d, %bb.bu ], [ %i.aqg, %bb.bw ] ; 2 uses
  %.08031028 = phi ptr [ %i.aow, %bb.bu ], [ %i.aqf, %bb.bw ] ; 2 uses
  %.08041027 = phi i32 [ 0, %bb.bu ], [ %i.aqd, %bb.bw ]
  %i.aox = load <2 x i64>, ptr %.08011030, align 1, !tbaa !10
  %i.aoy = getelementptr inbounds nuw i8, ptr %.08011030, i64 2
  %i.aoz = load <2 x i64>, ptr %i.aoy, align 1, !tbaa !10
  %i.apa = or <2 x i64> %i.aoz, %i.aox
  %i.apb = bitcast <2 x i64> %i.apa to <8 x i16>
  %i.apc = zext <8 x i16> %i.apb to <8 x i32>     ; 2 uses
  %i.apd = lshr <8 x i32> %i.apc, splat (i32 8)
  %i.ape = xor <8 x i32> %i.apd, splat (i32 -1)
  %i.apf = and <8 x i32> %i.ape, %i.apc
  %i.apg = uitofp nneg <8 x i32> %i.apf to <8 x float>
  %i.aph = bitcast <8 x float> %i.apg to <8 x i32>
  %i.api = lshr <8 x i32> %i.aph, splat (i32 23)
  %i.apj = bitcast <8 x i32> %i.api to <16 x i16>
  %i.apk = tail call <16 x i16> @llvm.usub.sat.v16i16(<16 x i16> <i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0, i16 158, i16 0>, <16 x i16> %i.apj)
  %i.apl = tail call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.apk, <16 x i16> <i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0, i16 32, i16 0>)
  %i.apm = bitcast <16 x i16> %i.apl to <8 x i32>
  %i.apn = sub nsw <8 x i32> splat (i32 31), %i.apm
  %i.apo = load <4 x i64>, ptr %.08031028, align 1, !tbaa !10 ; 3 uses
  %i.app = bitcast <4 x i64> %i.apo to <8 x i32>
  %i.apq = bitcast <4 x i64> %i.apo to <8 x i32>
  %i.apr = and <8 x i32> %i.apq, splat (i32 240)
  %i.aps = add <8 x i32> %i.app, splat (i32 240)
  %i.apt = and <8 x i32> %i.aps, %i.apr
  %.not942 = icmp eq <8 x i32> %i.apt, zeroinitializer
  %i.apu = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.apn, <8 x i32> splat (i32 1))
  %i.apv = select <8 x i1> %.not942, <8 x i32> splat (i32 1), <8 x i32> %i.apu
  %i.apw = bitcast <4 x i64> %i.apo to <8 x i32>
  %i.apx = lshr <8 x i32> %i.apw, splat (i32 16)
  %i.apy = add nuw <8 x i32> %i.apv, %i.apx       ; 2 uses
  %i.apz = icmp sgt <8 x i32> %i.apy, %i.ahz
  %i.aqa = sext <8 x i1> %i.apz to <8 x i32>
  %i.aqb = bitcast <8 x i32> %i.aqa to <4 x i64>  ; 2 uses
  %i.aqc = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.aqb, <4 x i64> %i.aqb)
  %.not838.not = icmp eq i32 %i.aqc, 0
  br i1 %.not838.not, label %.thread933, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store <8 x i32> %i.apy, ptr %.08021029, align 1, !tbaa !10
  %i.aqd = add i32 %.08041027, 16                 ; 2 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %.08011030, i64 16
  %i.aqf = getelementptr inbounds nuw i8, ptr %.08031028, i64 32
  %i.aqg = getelementptr inbounds nuw i8, ptr %.08021029, i64 32
  %.not837 = icmp ugt i32 %i.aqd, %6
  br i1 %.not837, label %bb.bx, label %bb.bv, !llvm.loop !44

bb.bx:                                            ; preds = %bb.bw
  store i16 2, ptr %i.c, align 16, !tbaa !21
  br i1 %.not1159, label %.critedge862, label %.lr.ph1037.preheader

.lr.ph1037.preheader:                             ; preds = %bb.bx
  %i.aqh = mul i32 %.08001039, %8
  %i.aqi = zext i32 %i.aqh to i64
  %i.aqj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aqi
  br label %.lr.ph1037

.critedge862:                                     ; preds = %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903, %bb.bx
  %i.aqk = add i32 %.08001039, 2                  ; 2 uses
  %i.aql = icmp ult i32 %i.aqk, %7
  br i1 %i.aql, label %bb.bu, label %.critedge862._crit_edge, !llvm.loop !45

.lr.ph1037:                                       ; preds = %.lr.ph1037.preheader, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903
  %i.aqm = phi i32 [ %i.awv, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903 ], [ 2, %.lr.ph1037.preheader ]
  %.08051035 = phi ptr [ %i.awr, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903 ], [ %i.c, %.lr.ph1037.preheader ] ; 2 uses
  %.08061034 = phi i32 [ %i.awp, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903 ], [ 0, %.lr.ph1037.preheader ]
  %.08071033 = phi ptr [ %i.aws, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903 ], [ %i.aqj, %.lr.ph1037.preheader ] ; 3 uses
  %.08081032 = phi ptr [ %i.awq, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903 ], [ %i.aow, %.lr.ph1037.preheader ] ; 2 uses
  %.08091031 = phi ptr [ %i.awt, %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903 ], [ %i.d, %.lr.ph1037.preheader ] ; 2 uses
  %i.aqn = load <16 x i8>, ptr %.08081032, align 1, !tbaa !10
  %i.aqo = shufflevector <16 x i8> %i.aqn, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 4, i32 5, i32 4, i32 5, i32 8, i32 9, i32 8, i32 9, i32 12, i32 13, i32 12, i32 13>
  %i.aqp = bitcast <16 x i8> %i.aqo to <8 x i16>
  %i.aqq = shufflevector <8 x i16> %i.aqp, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 2, i32 3, i32 2, i32 3, i32 4, i32 5, i32 4, i32 5, i32 6, i32 7, i32 6, i32 7>
  %i.aqr = and <16 x i16> %i.aqq, <i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592> ; 2 uses
  %i.aqs = icmp eq <16 x i16> %i.aqr, zeroinitializer ; 4 uses
  %i.aqt = sext <16 x i1> %i.aqs to <16 x i16>
  %i.aqu = bitcast <16 x i16> %i.aqt to <32 x i8>
  %i.aqv = icmp sgt <32 x i8> %i.aqu, splat (i8 -1)
  %i.aqw = bitcast <32 x i1> %i.aqv to i32
  %.not.i897 = icmp eq i32 %i.aqw, 0
  br i1 %.not.i897, label %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903, label %bb.by

bb.by:                                            ; preds = %.lr.ph1037
  %i.aqx = load <2 x i64>, ptr %.08091031, align 1, !tbaa !10 ; 2 uses
  %i.aqy = bitcast <2 x i64> %i.aqx to <16 x i8>
  %i.aqz = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.aqy, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.ara = bitcast <16 x i8> %i.aqz to <2 x i64>
  %i.arb = or <2 x i64> %i.aqx, %i.ara
  %i.arc = bitcast <2 x i64> %i.arb to <4 x i32>
  %i.ard = shufflevector <4 x i32> %i.arc, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.are = shl <16 x i16> %i.aqr, <i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0> ; 2 uses
  %i.arf = lshr <16 x i16> %i.are, splat (i16 15) ; 2 uses
  %i.arg = bitcast <8 x i32> %i.ard to <16 x i16>
  %i.arh = sub <16 x i16> %i.arg, %i.arf
  %.inner1688 = select <16 x i1> %i.aqs, <16 x i16> zeroinitializer, <16 x i16> %i.arh ; 2 uses
  %i.ari = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0>, <16 x i16> %.inner1688, <16 x i32> <i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.arj = add <16 x i16> %i.ari, %.inner1688     ; 2 uses
  %i.ark = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0>, <16 x i16> %i.arj, <16 x i32> <i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.arl = add <16 x i16> %i.arj, %i.ark          ; 2 uses
  %i.arm = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.arl, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27>
  %i.arn = add <16 x i16> %i.arl, %i.arm          ; 3 uses
  %i.aro = extractelement <16 x i16> %i.arn, i64 7 ; 2 uses
  %i.arp = extractelement <16 x i16> %i.arn, i64 15 ; 2 uses
  %i.arq = zext i16 %i.arp to i32                 ; 3 uses
  %i.arr = bitcast <16 x i16> %i.arn to <32 x i8>
  %i.ars = shufflevector <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <32 x i8> %i.arr, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61> ; 2 uses
  %.not116.i898 = icmp eq i16 %i.aro, 0
  br i1 %.not116.i898, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.art = zext i16 %i.aro to i32                 ; 3 uses
  %i.aru = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %13)
  %i.arv = load i32, ptr %i.aia, align 8, !tbaa !37
  %i.arw = sub i32 %i.arv, %i.art
  store i32 %i.arw, ptr %i.aia, align 8, !tbaa !37
  %i.arx = lshr i32 %i.art, 3
  %i.ary = and i32 %i.arx, 24
  %i.arz = zext nneg i32 %i.ary to i64
  %i.asa = getelementptr inbounds nuw i8, ptr %i.aib, i64 %i.arz ; 2 uses
  %i.asb = and i32 %i.art, 63                     ; 2 uses
  %i.asc = load <2 x i64>, ptr %i.asa, align 8, !tbaa !10 ; 2 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asa, i64 16
  %i.ase = load <2 x i64>, ptr %i.asd, align 8, !tbaa !10 ; 3 uses
  %i.asf = zext nneg i32 %i.asb to i64
  %i.asg = insertelement <2 x i64> poison, i64 %i.asf, i64 0
  %i.ash = shufflevector <2 x i64> %i.asg, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.asi = lshr <2 x i64> %i.asc, %i.ash
  %i.asj = shufflevector <2 x i64> %i.asc, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ask = sub nuw nsw i32 64, %i.asb
  %i.asl = zext nneg i32 %i.ask to i64
  %i.asm = insertelement <2 x i64> poison, i64 %i.asl, i64 0
  %i.asn = shufflevector <2 x i64> %i.asm, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.aso = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.asj, <2 x i64> %i.asn)
  %i.asp = or <2 x i64> %i.aso, %i.asi
  %i.asq = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.ase, <2 x i32> <i32 1, i32 2>
  %i.asr = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.asq, <2 x i64> %i.asn)
  %i.ass = or <2 x i64> %i.asp, %i.asr
  store <2 x i64> %i.ass, ptr %i.aib, align 8, !tbaa !10
  %i.ast = lshr <2 x i64> %i.ase, %i.ash
  %i.asu = shufflevector <2 x i64> %i.ase, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.asv = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.asu, <2 x i64> %i.asn)
  %i.asw = or <2 x i64> %i.asv, %i.ast
  store <2 x i64> %i.asw, ptr %i.aic, align 8, !tbaa !10
  %i.asx = shufflevector <2 x i64> %i.aru, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.0112.i899 = phi <4 x i64> [ %i.asx, %bb.bz ], [ <i64 0, i64 0, i64 undef, i64 undef>, %bb.by ]
  %.not117.i900 = icmp eq i16 %i.arp, 0
  br i1 %.not117.i900, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.asy = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_16frwd_struct_avx2E(ptr noundef nonnull %13)
  %i.asz = load i32, ptr %i.aia, align 8, !tbaa !37
  %i.ata = sub i32 %i.asz, %i.arq
  store i32 %i.ata, ptr %i.aia, align 8, !tbaa !37
  %i.atb = lshr i32 %i.arq, 3
  %i.atc = and i32 %i.atb, 24
  %i.atd = zext nneg i32 %i.atc to i64
  %i.ate = getelementptr inbounds nuw i8, ptr %i.aib, i64 %i.atd ; 2 uses
  %i.atf = and i32 %i.arq, 63                     ; 2 uses
  %i.atg = load <2 x i64>, ptr %i.ate, align 8, !tbaa !10 ; 2 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %i.ate, i64 16
  %i.ati = load <2 x i64>, ptr %i.ath, align 8, !tbaa !10 ; 3 uses
  %i.atj = zext nneg i32 %i.atf to i64
  %i.atk = insertelement <2 x i64> poison, i64 %i.atj, i64 0
  %i.atl = shufflevector <2 x i64> %i.atk, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.atm = lshr <2 x i64> %i.atg, %i.atl
  %i.atn = shufflevector <2 x i64> %i.atg, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ato = sub nuw nsw i32 64, %i.atf
  %i.atp = zext nneg i32 %i.ato to i64
  %i.atq = insertelement <2 x i64> poison, i64 %i.atp, i64 0
  %i.atr = shufflevector <2 x i64> %i.atq, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ats = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.atn, <2 x i64> %i.atr)
  %i.att = or <2 x i64> %i.ats, %i.atm
  %i.atu = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.ati, <2 x i32> <i32 1, i32 2>
  %i.atv = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.atu, <2 x i64> %i.atr)
  %i.atw = or <2 x i64> %i.att, %i.atv
  store <2 x i64> %i.atw, ptr %i.aib, align 8, !tbaa !10
  %i.atx = lshr <2 x i64> %i.ati, %i.atl
  %i.aty = shufflevector <2 x i64> %i.ati, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.atz = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.aty, <2 x i64> %i.atr)
  %i.aua = or <2 x i64> %i.atz, %i.atx
  store <2 x i64> %i.aua, ptr %i.aic, align 8, !tbaa !10
  %i.aub = shufflevector <2 x i64> %i.asy, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.0113.i901 = phi <4 x i64> [ %i.aub, %bb.cb ], [ <i64 0, i64 0, i64 undef, i64 undef>, %bb.ca ]
  %i.auc = shufflevector <4 x i64> %.0112.i899, <4 x i64> %.0113.i901, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aud = bitcast <32 x i8> %i.ars to <16 x i16>
  %i.aue = lshr <16 x i16> %i.aud, splat (i16 3)
  %i.auf = bitcast <16 x i16> %i.aue to <32 x i8>
  %i.aug = shufflevector <32 x i8> %i.auf, <32 x i8> poison, <32 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6, i32 8, i32 8, i32 10, i32 10, i32 12, i32 12, i32 14, i32 14, i32 16, i32 16, i32 18, i32 18, i32 20, i32 20, i32 22, i32 22, i32 24, i32 24, i32 26, i32 26, i32 28, i32 28, i32 30, i32 30>
  %i.auh = bitcast <32 x i8> %i.aug to <16 x i16> ; 2 uses
  %i.aui = add <16 x i16> %i.auh, splat (i16 256)
  %i.auj = bitcast <4 x i64> %i.auc to <32 x i8>  ; 2 uses
  %i.auk = bitcast <16 x i16> %i.aui to <32 x i8>
  %i.aul = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.auj, <32 x i8> %i.auk)
  %i.aum = add <16 x i16> %i.auh, splat (i16 513)
  %i.aun = bitcast <16 x i16> %i.aum to <32 x i8>
  %i.auo = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %i.auj, <32 x i8> %i.aun)
  %i.aup = and <32 x i8> %i.ars, <i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0>
  %i.auq = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <32 x i8> %i.aup)
  %i.aur = bitcast <32 x i8> %i.auq to <16 x i16>
  %i.aus = add <16 x i16> %i.aur, splat (i16 257) ; 2 uses
  %i.aut = bitcast <32 x i8> %i.aul to <16 x i16>
  %i.auu = mul <16 x i16> %i.aus, %i.aut
  %i.auv = lshr <16 x i16> %i.auu, splat (i16 8)
  %i.auw = bitcast <32 x i8> %i.auo to <16 x i16>
  %i.aux = mul <16 x i16> %i.aus, %i.auw
  %.inner1689 = and <16 x i16> %i.aux, splat (i16 -256)
  %.inner1690 = or disjoint <16 x i16> %.inner1689, %i.auv
  %i.auy = add <8 x i32> %i.ard, splat (i32 -65537) ; 2 uses
  %.inner1691 = and <8 x i32> %i.auy, <i32 31, i32 0, i32 0, i32 0, i32 31, i32 0, i32 0, i32 0> ; 2 uses
  %i.auz = bitcast <8 x i32> %i.auy to <32 x i8>
  %i.ava = shufflevector <32 x i8> %i.auz, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison>, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61> ; 2 uses
  %i.avb = sub nuw nsw <16 x i16> splat (i16 2), %i.arf ; 2 uses
  %.inner1692 = and <16 x i16> %i.avb, <i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0> ; 2 uses
  %.inner1693 = and <16 x i16> %i.avb, <i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1> ; 2 uses
  %i.avc = shufflevector <16 x i16> %.inner1692, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.avd = bitcast <8 x i32> %.inner1691 to <16 x i16>
  %i.ave = shufflevector <16 x i16> %i.avd, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avf = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.avc, <8 x i16> %i.ave)
  %i.avg = shufflevector <16 x i16> %.inner1692, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.avh = bitcast <8 x i32> %.inner1691 to <16 x i16>
  %i.avi = shufflevector <16 x i16> %i.avh, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avj = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.avg, <8 x i16> %i.avi)
  %i.avk = shufflevector <16 x i16> %.inner1693, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.avl = bitcast <32 x i8> %i.ava to <16 x i16>
  %i.avm = shufflevector <16 x i16> %i.avl, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avn = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.avk, <8 x i16> %i.avm)
  %i.avo = shufflevector <16 x i16> %.inner1693, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.avp = bitcast <32 x i8> %i.ava to <16 x i16>
  %i.avq = shufflevector <16 x i16> %i.avp, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avr = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.avo, <8 x i16> %i.avq)
  %19 = or <8 x i16> %i.avn, %i.avf
  %20 = or <8 x i16> %i.avr, %i.avj
  %21 = shufflevector <8 x i16> %19, <8 x i16> %20, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.avs = add <16 x i16> %21, splat (i16 -1)
  %.inner1694 = and <16 x i16> %.inner1690, %i.avs
  %i.avt = and <16 x i16> %i.are, splat (i16 2048)
  %.not1706 = icmp eq <16 x i16> %i.avt, zeroinitializer
  %.inner1695.a = select <16 x i1> %.not1706, <16 x i16> zeroinitializer, <16 x i16> %21
  %.inner1696 = or <16 x i16> %.inner1694, %.inner1695.a ; 2 uses
  %i.avu = shl <16 x i16> %.inner1696, splat (i16 15)
  %.inner1697 = or <16 x i16> %.inner1696, splat (i16 1) ; 2 uses
  %i.avv = add <16 x i16> %.inner1697, splat (i16 2)
  %i.avw = shl <16 x i16> %i.avv, %.splat1279
  %i.avx = or <16 x i16> %i.avu, %i.avw
  %.inner1698 = select <16 x i1> %i.aqs, <16 x i16> zeroinitializer, <16 x i16> %i.avx
  %.inner1699 = select <16 x i1> %i.aqs, <16 x i16> zeroinitializer, <16 x i16> %.inner1697
  %i.avy = bitcast <16 x i16> %.inner1699 to <32 x i8> ; 2 uses
  %i.avz = shufflevector <32 x i8> %i.avy, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 2, i32 3, i32 6, i32 7, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 18, i32 19, i32 22, i32 23, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48>
  %i.awa = shufflevector <32 x i8> %i.avy, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 10, i32 11, i32 14, i32 15, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 26, i32 27, i32 30, i32 31, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48>
  %i.awb = or <32 x i8> %i.avz, %i.awa
  %i.awc = bitcast <32 x i8> %i.awb to <4 x i64>  ; 2 uses
  %i.awd = shufflevector <4 x i64> %i.awc, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.awe = or <2 x i64> %i.awd, splat (i64 562958543486978)
  %i.awf = shufflevector <4 x i64> %i.awc, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.awg = or <2 x i64> %i.awe, %i.awf
  %i.awh = bitcast <16 x i16> %.inner1698 to <32 x i8>
  br label %_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903

_ZN4ojph5localL18decode_four_quad16EDv2_xS1_PNS0_16frwd_struct_avx2EjRS1_.exit903: ; preds = %.lr.ph1037, %bb.cc
  %.0 = phi <2 x i64> [ splat (i64 562958543486978), %.lr.ph1037 ], [ %i.awg, %bb.cc ]
  %.0.i902 = phi <32 x i8> [ zeroinitializer, %.lr.ph1037 ], [ %i.awh, %bb.cc ] ; 2 uses
  %i.awi = and i32 %i.aqm, 65535
  %i.awj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.awi, i64 0
  %i.awk = bitcast <4 x i32> %i.awj to <2 x i64>
  %i.awl = or <2 x i64> %.0, %i.awk               ; 2 uses
  store <2 x i64> %i.awl, ptr %.08051035, align 1, !tbaa !10
  %i.awm = shufflevector <32 x i8> %.0.i902, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 0, i32 1, i32 32, i32 32, i32 4, i32 5, i32 32, i32 32, i32 8, i32 9, i32 32, i32 32, i32 12, i32 13, i32 48, i32 48, i32 16, i32 17, i32 48, i32 48, i32 20, i32 21, i32 48, i32 48, i32 24, i32 25, i32 48, i32 48, i32 28, i32 29>
  %i.awn = shufflevector <32 x i8> %.0.i902, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 32, i32 2, i32 3, i32 32, i32 32, i32 6, i32 7, i32 32, i32 32, i32 10, i32 11, i32 32, i32 32, i32 14, i32 15, i32 48, i32 48, i32 18, i32 19, i32 48, i32 48, i32 22, i32 23, i32 48, i32 48, i32 26, i32 27, i32 48, i32 48, i32 30, i32 31>
  store <32 x i8> %i.awm, ptr %.08071033, align 1, !tbaa !10
  %i.awo = getelementptr inbounds nuw [4 x i8], ptr %.08071033, i64 %i.aid
  store <32 x i8> %i.awn, ptr %i.awo, align 1, !tbaa !10
  %i.awp = add i32 %.08061034, 8                  ; 2 uses
  %i.awq = getelementptr inbounds nuw i8, ptr %.08081032, i64 16
  %i.awr = getelementptr inbounds nuw i8, ptr %.08051035, i64 8
  %i.aws = getelementptr inbounds nuw i8, ptr %.08071033, i64 32
  %i.awt = getelementptr inbounds nuw i8, ptr %.08091031, i64 16
  %i.awu = icmp ult i32 %i.awp, %6
  %bc1280 = bitcast <2 x i64> %i.awl to <4 x i32>
  %i.awv = extractelement <4 x i32> %bc1280, i64 2
  br i1 %i.awu, label %.lr.ph1037, label %.critedge862, !llvm.loop !46

.thread933:                                       ; preds = %bb.bn, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.ei

.critedge862._crit_edge:                          ; preds = %.critedge862, %.critedge862.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.cd

bb.cd:                                            ; preds = %.critedge862._crit_edge, %.critedge860
  %i.aww = icmp ugt i32 %.1697, 1
  br i1 %i.aww, label %bb.ce, label %bb.ei

bb.ce:                                            ; preds = %bb.cd
  %i.awx = add i32 %6, 3
  %i.awy = lshr i32 %i.awx, 2
  %i.awz = add nuw nsw i32 %i.awy, 9
  %i.axa = and i32 %i.awz, 2147483640             ; 11 uses
  %.not1163 = icmp eq i32 %7, 0                   ; 3 uses
  br i1 %.not1163, label %._crit_edge1070, label %.lr.ph1069

.lr.ph1069:                                       ; preds = %bb.ce
  %i.axb = zext i32 %i.au to i64
  %i.axc = zext i32 %7 to i64                     ; 2 uses
  br i1 %.not1159, label %.lr.ph1069.split.preheader, label %.lr.ph1064.us

.lr.ph1069.split.preheader:                       ; preds = %.lr.ph1069
  %i.axd = add nsw i64 %i.axc, -1
  %i.axe = lshr i64 %i.axd, 2
  %i.axf = add nuw nsw i64 %i.axe, 1              ; 2 uses
  %xtraiter = and i64 %i.axf, 3                   ; 3 uses
  %i.axg = icmp ult i32 %7, 13
  br i1 %i.axg, label %.lr.ph1069.split.epil.preheader, label %.lr.ph1069.split.preheader.new

.lr.ph1069.split.preheader.new:                   ; preds = %.lr.ph1069.split.preheader
  %unroll_iter = and i64 %i.axf, 9223372036854775804
  br label %.lr.ph1069.split

.lr.ph1064.us:                                    ; preds = %.lr.ph1069, %._crit_edge1065.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge1065.us ], [ 0, %.lr.ph1069 ] ; 3 uses
  %i.axh = lshr exact i64 %indvars.iv, 1
  %i.axi = trunc nuw nsw i64 %i.axh to i32
  %i.axj = mul i32 %i.au, %i.axi
  %i.axk = zext i32 %i.axj to i64
  %i.axl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.axk
  %i.axm = lshr exact i64 %indvars.iv, 2
  %i.axn = trunc nuw nsw i64 %i.axm to i32
  %i.axo = mul i32 %i.axa, %i.axn
  %i.axp = zext i32 %i.axo to i64
  %i.axq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.axp
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph1064.us, %bb.cf
  %.07941062.us = phi i32 [ 0, %.lr.ph1064.us ], [ %i.aym, %bb.cf ]
  %.07951061.us = phi ptr [ %i.axq, %.lr.ph1064.us ], [ %i.ayo, %bb.cf ] ; 2 uses
  %.07961060.us = phi ptr [ %i.axl, %.lr.ph1064.us ], [ %i.ayn, %bb.cf ] ; 3 uses
  %i.axr = load <4 x i32>, ptr %.07961060.us, align 1, !tbaa !10 ; 2 uses
  %i.axs = lshr <4 x i32> %i.axr, splat (i32 4)
  %i.axt = bitcast <4 x i32> %i.axs to <2 x i64>
  %i.axu = and <2 x i64> %i.axt, splat (i64 12884901891)
  %i.axv = lshr <4 x i32> %i.axr, splat (i32 2)
  %i.axw = bitcast <4 x i32> %i.axv to <2 x i64>
  %i.axx = and <2 x i64> %i.axw, splat (i64 206158430256)
  %i.axy = getelementptr inbounds nuw [2 x i8], ptr %.07961060.us, i64 %i.axb
  %i.axz = load <2 x i64>, ptr %i.axy, align 1, !tbaa !10 ; 2 uses
  %i.aya = bitcast <2 x i64> %i.axz to <4 x i32>
  %i.ayb = lshr <4 x i32> %i.aya, splat (i32 2)
  %i.ayc = bitcast <4 x i32> %i.ayb to <2 x i64>
  %i.ayd = and <2 x i64> %i.ayc, splat (i64 51539607564)
  %i.aye = and <2 x i64> %i.axz, splat (i64 824633721024)
  %i.ayf = or disjoint <2 x i64> %i.axx, %i.aye
  %i.ayg = or disjoint <2 x i64> %i.ayf, %i.axu
  %i.ayh = or disjoint <2 x i64> %i.ayg, %i.ayd
  %i.ayi = bitcast <2 x i64> %i.ayh to <16 x i8>
  %i.ayj = shufflevector <16 x i8> %i.ayi, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ayk = bitcast <16 x i8> %i.ayj to <4 x i32>
  %i.ayl = extractelement <4 x i32> %i.ayk, i64 0
  store i32 %i.ayl, ptr %.07951061.us, align 4, !tbaa !23
  %i.aym = add nuw i32 %.07941062.us, 8           ; 2 uses
  %i.ayn = getelementptr inbounds nuw i8, ptr %.07961060.us, i64 16
  %i.ayo = getelementptr inbounds nuw i8, ptr %.07951061.us, i64 4 ; 2 uses
  %i.ayp = icmp ult i32 %i.aym, %6
  br i1 %i.ayp, label %bb.cf, label %._crit_edge1065.us, !llvm.loop !47

._crit_edge1065.us:                               ; preds = %bb.cf
  store i16 0, ptr %i.ayo, align 2, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.ayq = icmp samesign ult i64 %indvars.iv.next, %i.axc
  br i1 %i.ayq, label %.lr.ph1064.us, label %._crit_edge1070.loopexit1171, !llvm.loop !48

.lr.ph1069.split:                                 ; preds = %.lr.ph1069.split, %.lr.ph1069.split.preheader.new
  %indvars.iv1213 = phi i64 [ 0, %.lr.ph1069.split.preheader.new ], [ %indvars.iv.next1214.3, %.lr.ph1069.split ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph1069.split.preheader.new ], [ %niter.next.3, %.lr.ph1069.split ]
  %i.ayr = lshr exact i64 %indvars.iv1213, 2
  %i.ays = trunc nuw nsw i64 %i.ayr to i32
  %i.ayt = mul i32 %i.axa, %i.ays
  %i.ayu = zext i32 %i.ayt to i64
  %i.ayv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ayu
  store i16 0, ptr %i.ayv, align 16, !tbaa !21
  %indvars.iv.next1214 = lshr exact i64 %indvars.iv1213, 2
  %i.ayw = trunc i64 %indvars.iv.next1214 to i32
  %i.ayx = or disjoint i32 %i.ayw, 1
  %i.ayy = mul i32 %i.axa, %i.ayx
  %i.ayz = zext i32 %i.ayy to i64
  %i.aza = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ayz
  store i16 0, ptr %i.aza, align 16, !tbaa !21
  %indvars.iv.next1214.1 = lshr exact i64 %indvars.iv1213, 2
  %i.azb = trunc i64 %indvars.iv.next1214.1 to i32
  %i.azc = or disjoint i32 %i.azb, 2
  %i.azd = mul i32 %i.axa, %i.azc
  %i.aze = zext i32 %i.azd to i64
  %i.azf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.aze
  store i16 0, ptr %i.azf, align 16, !tbaa !21
  %indvars.iv.next1214.2 = lshr exact i64 %indvars.iv1213, 2
  %i.azg = trunc i64 %indvars.iv.next1214.2 to i32
  %i.azh = or disjoint i32 %i.azg, 3
  %i.azi = mul i32 %i.axa, %i.azh
  %i.azj = zext i32 %i.azi to i64
  %i.azk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.azj
  store i16 0, ptr %i.azk, align 16, !tbaa !21
  %indvars.iv.next1214.3 = add nuw nsw i64 %indvars.iv1213, 16 ; 3 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge1070.thread.unr-lcssa, label %.lr.ph1069.split, !llvm.loop !48

._crit_edge1070.thread.unr-lcssa:                 ; preds = %.lr.ph1069.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge1070.thread, label %.lr.ph1069.split.epil.preheader

.lr.ph1069.split.epil.preheader:                  ; preds = %._crit_edge1070.thread.unr-lcssa, %.lr.ph1069.split.preheader
  %indvars.iv1213.epil.init = phi i64 [ 0, %.lr.ph1069.split.preheader ], [ %indvars.iv.next1214.3, %._crit_edge1070.thread.unr-lcssa ]
  %lcmp.mod1726 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1726)
  br label %.lr.ph1069.split.epil

.lr.ph1069.split.epil:                            ; preds = %.lr.ph1069.split.epil, %.lr.ph1069.split.epil.preheader
  %indvars.iv1213.epil = phi i64 [ %indvars.iv.next1214.epil, %.lr.ph1069.split.epil ], [ %indvars.iv1213.epil.init, %.lr.ph1069.split.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph1069.split.epil ], [ 0, %.lr.ph1069.split.epil.preheader ]
  %i.azl = lshr exact i64 %indvars.iv1213.epil, 2
  %i.azm = trunc nuw nsw i64 %i.azl to i32
  %i.azn = mul i32 %i.axa, %i.azm
  %i.azo = zext i32 %i.azn to i64
  %i.azp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.azo
  store i16 0, ptr %i.azp, align 16, !tbaa !21
  %indvars.iv.next1214.epil = add nuw nsw i64 %indvars.iv1213.epil, 4 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge1070.thread, label %.lr.ph1069.split.epil, !llvm.loop !49

._crit_edge1070.thread:                           ; preds = %.lr.ph1069.split.epil, %._crit_edge1070.thread.unr-lcssa
  %indvars.iv.next1214.lcssa = phi i64 [ %indvars.iv.next1214.3, %._crit_edge1070.thread.unr-lcssa ], [ %indvars.iv.next1214.epil, %.lr.ph1069.split.epil ]
  %i.azq = trunc nuw i64 %indvars.iv.next1214.lcssa to i32
  %i.azr = lshr exact i32 %i.azq, 2
  %i.azs = mul i32 %i.azr, %i.axa
end_hunk_0
