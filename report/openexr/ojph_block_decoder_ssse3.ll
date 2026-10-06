Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_block_decoder_ssse3?download=true
inline.NumInlined: 42
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4ojph5local27ojph_decode_codeblock_ssse3EPhPjjjjjjjjb:bb.a
  %i.ahj = and <8 x i16> %i.ahi, <i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592> ; 2 uses
  %i.ahk = icmp eq <8 x i16> %i.ahj, zeroinitializer ; 4 uses
  %i.ahl = sext <8 x i1> %i.ahk to <8 x i16>
  %i.ahm = bitcast <8 x i16> %i.ahl to <16 x i8>
  %i.ahn = icmp sgt <16 x i8> %i.ahm, splat (i8 -1)
  %i.aho = bitcast <16 x i1> %i.ahn to i16
  %.not.i928 = icmp eq i16 %i.aho, 0
  br i1 %.not.i928, label %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ahp = bitcast <4 x i32> %i.aha to <16 x i8>
  %i.ahq = shufflevector <16 x i8> %i.ahp, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5> ; 2 uses
  %i.ahr = shl <8 x i16> %i.ahj, <i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0> ; 2 uses
  %i.ahs = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_17frwd_struct_ssse3E(ptr noundef nonnull %13)
  %i.aht = lshr <8 x i16> %i.ahr, splat (i16 15)  ; 2 uses
  %i.ahu = bitcast <16 x i8> %i.ahq to <8 x i16>
  %i.ahv = sub <8 x i16> %i.ahu, %i.aht
  %.inner1301 = select <8 x i1> %i.ahk, <8 x i16> zeroinitializer, <8 x i16> %i.ahv ; 2 uses
  %i.ahw = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0>, <8 x i16> %.inner1301, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ahx = add <8 x i16> %i.ahw, %.inner1301      ; 2 uses
  %i.ahy = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0>, <8 x i16> %i.ahx, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.ahz = add <8 x i16> %i.ahx, %i.ahy           ; 2 uses
  %i.aia = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ahz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.aib = add <8 x i16> %i.ahz, %i.aia           ; 2 uses
  %i.aic = extractelement <8 x i16> %i.aib, i64 7 ; 2 uses
  %i.aid = bitcast <8 x i16> %i.aib to <16 x i8>
  %i.aie = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.aid, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29> ; 2 uses
  %i.aif = bitcast <16 x i8> %i.aie to <8 x i16>
  %i.aig = lshr <8 x i16> %i.aif, splat (i16 3)
  %i.aih = bitcast <8 x i16> %i.aig to <16 x i8>
  %i.aii = shufflevector <16 x i8> %i.aih, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6, i32 8, i32 8, i32 10, i32 10, i32 12, i32 12, i32 14, i32 14>
  %i.aij = bitcast <16 x i8> %i.aii to <8 x i16>  ; 2 uses
  %i.aik = add <8 x i16> %i.aij, splat (i16 256)
  %i.ail = bitcast <2 x i64> %i.ahs to <16 x i8>  ; 2 uses
  %i.aim = bitcast <8 x i16> %i.aik to <16 x i8>
  %i.ain = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ail, <16 x i8> %i.aim)
  %i.aio = add <8 x i16> %i.aij, splat (i16 513)
  %i.aip = bitcast <8 x i16> %i.aio to <16 x i8>
  %i.aiq = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ail, <16 x i8> %i.aip)
  %i.air = and <16 x i8> %i.aie, <i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0>
  %i.ais = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <16 x i8> %i.air)
  %i.ait = bitcast <16 x i8> %i.ais to <8 x i16>
  %i.aiu = add <8 x i16> %i.ait, splat (i16 257)  ; 2 uses
  %i.aiv = bitcast <16 x i8> %i.ain to <8 x i16>
  %i.aiw = mul <8 x i16> %i.aiu, %i.aiv
  %i.aix = lshr <8 x i16> %i.aiw, splat (i16 8)
  %i.aiy = bitcast <16 x i8> %i.aiq to <8 x i16>
  %i.aiz = mul <8 x i16> %i.aiu, %i.aiy
  %.inner1302 = and <8 x i16> %i.aiz, splat (i16 -256)
  %.inner1303 = or disjoint <8 x i16> %.inner1302, %i.aix
  %i.aja = bitcast <16 x i8> %i.ahq to <4 x i32>
  %i.ajb = add <4 x i32> %i.aja, splat (i32 -65537) ; 2 uses
  %i.ajc = bitcast <4 x i32> %i.ajb to <16 x i8>
  %i.ajd = shufflevector <16 x i8> %i.ajc, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aje = sub nuw nsw <8 x i16> splat (i16 2), %i.aht ; 2 uses
  %i.ajf = and <8 x i16> %i.aje, <i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0>
  %i.ajg = bitcast <4 x i32> %i.ajb to <8 x i16>
  %i.ajh = and <8 x i16> %i.ajg, <i16 31, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>
  %i.aji = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.ajf, <8 x i16> %i.ajh)
  %i.ajj = and <8 x i16> %i.aje, <i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1>
  %i.ajk = bitcast <16 x i8> %i.ajd to <8 x i16>
  %i.ajl = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.ajj, <8 x i16> %i.ajk)
  %i.ajm = or <8 x i16> %i.ajl, %i.aji            ; 2 uses
  %i.ajn = add <8 x i16> %i.ajm, splat (i16 -1)
  %.inner1305 = and <8 x i16> %.inner1303, %i.ajn
  %i.ajo = and <8 x i16> %i.ahr, splat (i16 2048)
  %.not90.i = icmp eq <8 x i16> %i.ajo, zeroinitializer
  %i.ajp = select <8 x i1> %.not90.i, <8 x i16> zeroinitializer, <8 x i16> %i.ajm
  %.inner1306 = or <8 x i16> %.inner1305, %i.ajp  ; 2 uses
  %i.ajq = shl <8 x i16> %.inner1306, splat (i16 15)
  %.inner1307 = or <8 x i16> %.inner1306, splat (i16 1) ; 2 uses
  %i.ajr = add <8 x i16> %.inner1307, splat (i16 2)
  %i.ajs = shl <8 x i16> %i.ajr, %.splat
  %i.ajt = or <8 x i16> %i.ajq, %i.ajs
  %.inner1308 = select <8 x i1> %i.ahk, <8 x i16> zeroinitializer, <8 x i16> %i.ajt
  %i.aju = bitcast <8 x i16> %.inner1308 to <2 x i64> ; 2 uses
  %.inner1309 = select <8 x i1> %i.ahk, <8 x i16> zeroinitializer, <8 x i16> %.inner1307
  %i.ajv = bitcast <8 x i16> %.inner1309 to <16 x i8> ; 2 uses
  %i.ajw = shufflevector <16 x i8> %i.ajv, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 6, i32 7, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %.inner1310 = or <16 x i8> %i.ajw, <i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0>
  %i.ajx = shufflevector <16 x i8> %i.ajv, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 10, i32 11, i32 14, i32 15, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %.inner1311 = or <16 x i8> %.inner1310, %i.ajx
  %i.ajy = bitcast <16 x i8> %.inner1311 to <2 x i64> ; 2 uses
  %.not89.i = icmp eq i16 %i.aic, 0
  br i1 %.not89.i, label %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ajz = zext i16 %i.aic to i32                 ; 3 uses
  %i.aka = load i32, ptr %i.agk, align 8, !tbaa !27
  %i.akb = sub i32 %i.aka, %i.ajz
  store i32 %i.akb, ptr %i.agk, align 8, !tbaa !27
  %i.akc = lshr i32 %i.ajz, 3
  %i.akd = and i32 %i.akc, 24
  %i.ake = zext nneg i32 %i.akd to i64
  %i.akf = getelementptr inbounds nuw i8, ptr %i.agl, i64 %i.ake ; 2 uses
  %i.akg = and i32 %i.ajz, 63                     ; 2 uses
  %i.akh = load <2 x i64>, ptr %i.akf, align 8, !tbaa !12 ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akf, i64 16
  %i.akj = load <2 x i64>, ptr %i.aki, align 8, !tbaa !12 ; 3 uses
  %i.akk = zext nneg i32 %i.akg to i64
  %i.akl = insertelement <2 x i64> poison, i64 %i.akk, i64 0
  %i.akm = shufflevector <2 x i64> %i.akl, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.akn = lshr <2 x i64> %i.akh, %i.akm
  %i.ako = shufflevector <2 x i64> %i.akh, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.akp = sub nuw nsw i32 64, %i.akg
  %i.akq = zext nneg i32 %i.akp to i64
  %i.akr = insertelement <2 x i64> poison, i64 %i.akq, i64 0
  %i.aks = shufflevector <2 x i64> %i.akr, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.akt = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.ako, <2 x i64> %i.aks)
  %i.aku = or <2 x i64> %i.akt, %i.akn
  %i.akv = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.akj, <2 x i32> <i32 1, i32 2>
  %i.akw = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.akv, <2 x i64> %i.aks)
  %i.akx = or <2 x i64> %i.aku, %i.akw
  store <2 x i64> %i.akx, ptr %i.agl, align 8, !tbaa !12
  %i.aky = lshr <2 x i64> %i.akj, %i.akm
  %i.akz = shufflevector <2 x i64> %i.akj, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ala = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.akz, <2 x i64> %i.aks)
  %i.alb = or <2 x i64> %i.ala, %i.aky
  store <2 x i64> %i.alb, ptr %i.agm, align 8, !tbaa !12
  br label %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit

_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit: ; preds = %bb.ay, %bb.az, %bb.ba
  %.0944 = phi <2 x i64> [ splat (i64 562958543486978), %bb.ay ], [ %i.ajy, %bb.az ], [ %i.ajy, %bb.ba ]
  %.0.i929 = phi <2 x i64> [ zeroinitializer, %bb.ay ], [ %i.aju, %bb.az ], [ %i.aju, %bb.ba ]
  %i.alc = load <2 x i64>, ptr %.08421003, align 1, !tbaa !12
  %i.ald = and <2 x i64> %i.alc, <i64 65535, i64 0>
  %i.ale = or <2 x i64> %i.ald, %.0944
  store <2 x i64> %i.ale, ptr %.08421003, align 1, !tbaa !12
  %i.alf = bitcast <2 x i64> %.0.i929 to <16 x i8> ; 2 uses
  %i.alg = shufflevector <16 x i8> %i.alf, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 0, i32 1, i32 16, i32 16, i32 4, i32 5, i32 16, i32 16, i32 8, i32 9, i32 16, i32 16, i32 12, i32 13>
  store <16 x i8> %i.alg, ptr %.08411004, align 16, !tbaa !12
  %i.alh = shufflevector <16 x i8> %i.alf, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 2, i32 3, i32 16, i32 16, i32 6, i32 7, i32 16, i32 16, i32 10, i32 11, i32 16, i32 16, i32 14, i32 15>
  %i.ali = getelementptr inbounds nuw [4 x i8], ptr %.08411004, i64 %i.agn
  store <16 x i8> %i.alh, ptr %i.ali, align 16, !tbaa !12
  %i.alj = add i32 %.08401005, 4                  ; 2 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %.08431002, i64 8
  %i.all = getelementptr inbounds nuw i8, ptr %.08421003, i64 4
  %i.alm = getelementptr inbounds nuw i8, ptr %.08411004, i64 16
  %.not882 = icmp ult i32 %i.alj, %6
  br i1 %.not882, label %bb.ax, label %.critedge910.preheader, !llvm.loop !49

.preheader975:                                    ; preds = %.preheader975.lr.ph, %.critedge912
  %.08391017 = phi i32 [ 2, %.preheader975.lr.ph ], [ %i.arx, %.critedge912 ] ; 3 uses
  br label %bb.bc

bb.bb:                                            ; preds = %bb.bc
  store i16 2, ptr %i.c, align 16, !tbaa !65
  br i1 %.not1131, label %.critedge912, label %.lr.ph1016.preheader

.lr.ph1016.preheader:                             ; preds = %bb.bb
  %i.aln = mul i32 %.08391017, %8
  %i.alo = zext i32 %i.aln to i64
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.alo
  %i.alq = lshr exact i32 %.08391017, 1
  %i.alr = mul i32 %i.alq, %i.at
  %i.als = zext i32 %i.alr to i64
  %i.alt = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.als
  br label %.lr.ph1016

bb.bc:                                            ; preds = %.preheader975, %bb.bc
  %.08371009 = phi i32 [ 0, %.preheader975 ], [ %i.amm, %bb.bc ]
  %.08381008 = phi ptr [ %i.c, %.preheader975 ], [ %i.amn, %bb.bc ] ; 3 uses
  %i.alu = load <2 x i64>, ptr %.08381008, align 1, !tbaa !12 ; 2 uses
  %i.alv = bitcast <2 x i64> %i.alu to <8 x i16>
  %i.alw = lshr <8 x i16> %i.alv, splat (i16 4)
  %i.alx = bitcast <2 x i64> %i.alu to <16 x i8>
  %i.aly = and <16 x i8> %i.alx, splat (i8 15)
  %i.alz = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 15, i8 7, i8 6, i8 6, i8 5, i8 5, i8 5, i8 5, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, <16 x i8> %i.aly)
  %i.ama = bitcast <8 x i16> %i.alw to <16 x i8>
  %i.amb = and <16 x i8> %i.ama, splat (i8 15)
  %i.amc = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 15, i8 3, i8 2, i8 2, i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.amb)
  %i.amd = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.amc, <16 x i8> %i.alz) ; 2 uses
  %i.ame = bitcast <16 x i8> %i.amd to <8 x i16>
  %i.amf = lshr <8 x i16> %i.ame, splat (i16 8)
  %i.amg = or <16 x i8> %i.amd, <i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0>
  %i.amh = bitcast <8 x i16> %i.amf to <16 x i8>
  %i.ami = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.amg, <16 x i8> %i.amh)
  %i.amj = bitcast <16 x i8> %i.ami to <8 x i16>
  %i.amk = sub nsw <8 x i16> splat (i16 15), %i.amj
  %i.aml = getelementptr inbounds nuw i8, ptr %.08381008, i64 1040
  store <8 x i16> %i.amk, ptr %i.aml, align 1, !tbaa !12
  %i.amm = add i32 %.08371009, 16                 ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %.08381008, i64 16
  %.not883 = icmp ugt i32 %i.amm, %6
  br i1 %.not883, label %bb.bb, label %bb.bc, !llvm.loop !50

.lr.ph1016:                                       ; preds = %.lr.ph1016.preheader, %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934
  %.08311014 = phi i32 [ %i.art, %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934 ], [ 0, %.lr.ph1016.preheader ]
  %.08321013 = phi ptr [ %i.arw, %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934 ], [ %i.alp, %.lr.ph1016.preheader ] ; 3 uses
  %.08331012 = phi ptr [ %i.aru, %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934 ], [ %i.alt, %.lr.ph1016.preheader ] ; 2 uses
  %.08341011 = phi ptr [ %i.arv, %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934 ], [ %i.c, %.lr.ph1016.preheader ] ; 4 uses
  %i.amo = load <2 x i64>, ptr %.08331012, align 1, !tbaa !12 ; 4 uses
  %i.amp = bitcast <2 x i64> %i.amo to <4 x i32>
  %i.amq = bitcast <2 x i64> %i.amo to <4 x i32>
  %i.amr = and <4 x i32> %i.amq, splat (i32 240)
  %i.ams = add <4 x i32> %i.amp, splat (i32 240)
  %i.amt = and <4 x i32> %i.ams, %i.amr
  %i.amu = icmp ne <4 x i32> %i.amt, zeroinitializer
  %i.amv = getelementptr inbounds nuw i8, ptr %.08341011, i64 1040
  %i.amw = load <2 x i64>, ptr %i.amv, align 1, !tbaa !12 ; 2 uses
  %16 = bitcast <2 x i64> %i.amw to <16 x i8>
  %17 = shufflevector <16 x i8> %16, <16 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17>
  %18 = bitcast <16 x i8> %17 to <8 x i16>
  %i.amx = bitcast <2 x i64> %i.amw to <8 x i16>
  %i.amy = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %18, <8 x i16> %i.amx)
  %i.amz = bitcast <8 x i16> %i.amy to <16 x i8>
  %i.ana = shufflevector <16 x i8> %i.amz, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 16, i32 16, i32 2, i32 3, i32 16, i32 16, i32 4, i32 5, i32 16, i32 16, i32 6, i32 7, i32 16, i32 16>
  %i.anb = bitcast <16 x i8> %i.ana to <2 x i64>
  %i.anc = sext <4 x i1> %i.amu to <4 x i32>
  %i.and = bitcast <4 x i32> %i.anc to <2 x i64>
  %i.ane = and <2 x i64> %i.anb, %i.and
  %i.anf = bitcast <2 x i64> %i.ane to <8 x i16>
  %i.ang = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.anf, <8 x i16> <i16 1, i16 0, i16 1, i16 0, i16 1, i16 0, i16 1, i16 0>)
  %i.anh = bitcast <2 x i64> %i.amo to <4 x i32>
  %i.ani = lshr <4 x i32> %i.anh, splat (i32 16)
  %i.anj = bitcast <8 x i16> %i.ang to <4 x i32>
  %i.ank = add nuw nsw <4 x i32> %i.ani, %i.anj   ; 2 uses
  %i.anl = icmp sgt <4 x i32> %i.ank, %i.agr
  %i.anm = sext <4 x i1> %i.anl to <4 x i32>
  %i.ann = bitcast <4 x i32> %i.anm to <16 x i8>
  %i.ano = icmp slt <16 x i8> %i.ann, zeroinitializer
  %i.anp = bitcast <16 x i1> %i.ano to i16
  %i.anq = and i16 %i.anp, 255
  %.not884 = icmp eq i16 %i.anq, 0
  br i1 %.not884, label %bb.bd, label %.thread961

bb.bd:                                            ; preds = %.lr.ph1016
  %i.anr = bitcast <2 x i64> %i.amo to <8 x i16>
  %i.ans = shufflevector <8 x i16> %i.anr, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.ant = and <8 x i16> %i.ans, <i16 4368, i16 8736, i16 17472, i16 -30592, i16 4368, i16 8736, i16 17472, i16 -30592> ; 2 uses
  %i.anu = icmp eq <8 x i16> %i.ant, zeroinitializer ; 4 uses
  %i.anv = sext <8 x i1> %i.anu to <8 x i16>
  %i.anw = bitcast <8 x i16> %i.anv to <16 x i8>
  %i.anx = icmp sgt <16 x i8> %i.anw, splat (i8 -1)
  %i.any = bitcast <16 x i1> %i.anx to i16
  %.not.i930 = icmp eq i16 %i.any, 0
  br i1 %.not.i930, label %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.anz = bitcast <4 x i32> %i.ank to <16 x i8>
  %i.aoa = shufflevector <16 x i8> %i.anz, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5> ; 2 uses
  %i.aob = shl <8 x i16> %i.ant, <i16 3, i16 2, i16 1, i16 0, i16 3, i16 2, i16 1, i16 0> ; 2 uses
  %i.aoc = call fastcc noundef <2 x i64> @_ZN4ojph5localL10frwd_fetchILi255EEEDv2_xPNS0_17frwd_struct_ssse3E(ptr noundef nonnull %13)
  %i.aod = lshr <8 x i16> %i.aob, splat (i16 15)  ; 2 uses
  %i.aoe = bitcast <16 x i8> %i.aoa to <8 x i16>
  %i.aof = sub <8 x i16> %i.aoe, %i.aod
  %.inner1316 = select <8 x i1> %i.anu, <8 x i16> zeroinitializer, <8 x i16> %i.aof ; 2 uses
  %i.aog = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0>, <8 x i16> %.inner1316, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.aoh = add <8 x i16> %i.aog, %.inner1316      ; 2 uses
  %i.aoi = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0>, <8 x i16> %i.aoh, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.aoj = add <8 x i16> %i.aoh, %i.aoi           ; 2 uses
  %i.aok = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aoj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.aol = add <8 x i16> %i.aoj, %i.aok           ; 2 uses
  %i.aom = extractelement <8 x i16> %i.aol, i64 7 ; 2 uses
  %i.aon = bitcast <8 x i16> %i.aol to <16 x i8>
  %i.aoo = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.aon, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29> ; 2 uses
  %i.aop = bitcast <16 x i8> %i.aoo to <8 x i16>
  %i.aoq = lshr <8 x i16> %i.aop, splat (i16 3)
  %i.aor = bitcast <8 x i16> %i.aoq to <16 x i8>
  %i.aos = shufflevector <16 x i8> %i.aor, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6, i32 8, i32 8, i32 10, i32 10, i32 12, i32 12, i32 14, i32 14>
  %i.aot = bitcast <16 x i8> %i.aos to <8 x i16>  ; 2 uses
  %i.aou = add <8 x i16> %i.aot, splat (i16 256)
  %i.aov = bitcast <2 x i64> %i.aoc to <16 x i8>  ; 2 uses
  %i.aow = bitcast <8 x i16> %i.aou to <16 x i8>
  %i.aox = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.aov, <16 x i8> %i.aow)
  %i.aoy = add <8 x i16> %i.aot, splat (i16 513)
  %i.aoz = bitcast <8 x i16> %i.aoy to <16 x i8>
  %i.apa = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.aov, <16 x i8> %i.aoz)
  %i.apb = and <16 x i8> %i.aoo, <i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0, i8 7, i8 0>
  %i.apc = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1, i8 -1, i8 127, i8 63, i8 31, i8 15, i8 7, i8 3, i8 1>, <16 x i8> %i.apb)
  %i.apd = bitcast <16 x i8> %i.apc to <8 x i16>
  %i.ape = add <8 x i16> %i.apd, splat (i16 257)  ; 2 uses
  %i.apf = bitcast <16 x i8> %i.aox to <8 x i16>
  %i.apg = mul <8 x i16> %i.ape, %i.apf
  %i.aph = lshr <8 x i16> %i.apg, splat (i16 8)
  %i.api = bitcast <16 x i8> %i.apa to <8 x i16>
  %i.apj = mul <8 x i16> %i.ape, %i.api
  %.inner1317 = and <8 x i16> %i.apj, splat (i16 -256)
  %.inner1318 = or disjoint <8 x i16> %.inner1317, %i.aph
  %i.apk = bitcast <16 x i8> %i.aoa to <4 x i32>
  %i.apl = add <4 x i32> %i.apk, splat (i32 -65537) ; 2 uses
  %i.apm = bitcast <4 x i32> %i.apl to <16 x i8>
  %i.apn = shufflevector <16 x i8> %i.apm, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apo = sub nuw nsw <8 x i16> splat (i16 2), %i.aod ; 2 uses
  %i.app = and <8 x i16> %i.apo, <i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0>
  %i.apq = bitcast <4 x i32> %i.apl to <8 x i16>
  %i.apr = and <8 x i16> %i.apq, <i16 31, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>
  %i.aps = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.app, <8 x i16> %i.apr)
  %i.apt = and <8 x i16> %i.apo, <i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1>
  %i.apu = bitcast <16 x i8> %i.apn to <8 x i16>
  %i.apv = tail call <8 x i16> @llvm.x86.sse2.psll.w(<8 x i16> %i.apt, <8 x i16> %i.apu)
  %i.apw = or <8 x i16> %i.apv, %i.aps            ; 2 uses
  %i.apx = add <8 x i16> %i.apw, splat (i16 -1)
  %.inner1320 = and <8 x i16> %.inner1318, %i.apx
  %i.apy = and <8 x i16> %i.aob, splat (i16 2048)
  %.not90.i931 = icmp eq <8 x i16> %i.apy, zeroinitializer
  %i.apz = select <8 x i1> %.not90.i931, <8 x i16> zeroinitializer, <8 x i16> %i.apw
  %.inner1321 = or <8 x i16> %.inner1320, %i.apz  ; 2 uses
  %i.aqa = shl <8 x i16> %.inner1321, splat (i16 15)
  %.inner1322 = or <8 x i16> %.inner1321, splat (i16 1) ; 2 uses
  %i.aqb = add <8 x i16> %.inner1322, splat (i16 2)
  %i.aqc = shl <8 x i16> %i.aqb, %.splat1134
  %i.aqd = or <8 x i16> %i.aqa, %i.aqc
  %.inner1323 = select <8 x i1> %i.anu, <8 x i16> zeroinitializer, <8 x i16> %i.aqd
  %i.aqe = bitcast <8 x i16> %.inner1323 to <2 x i64> ; 2 uses
  %.inner1324 = select <8 x i1> %i.anu, <8 x i16> zeroinitializer, <8 x i16> %.inner1322
  %i.aqf = bitcast <8 x i16> %.inner1324 to <16 x i8> ; 2 uses
  %i.aqg = shufflevector <16 x i8> %i.aqf, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 6, i32 7, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %.inner1325 = or <16 x i8> %i.aqg, <i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 0>
  %i.aqh = shufflevector <16 x i8> %i.aqf, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 10, i32 11, i32 14, i32 15, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16>
  %.inner1326 = or <16 x i8> %.inner1325, %i.aqh
  %i.aqi = bitcast <16 x i8> %.inner1326 to <2 x i64> ; 2 uses
  %.not89.i932 = icmp eq i16 %i.aom, 0
  br i1 %.not89.i932, label %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.aqj = zext i16 %i.aom to i32                 ; 3 uses
  %i.aqk = load i32, ptr %i.ags, align 8, !tbaa !27
  %i.aql = sub i32 %i.aqk, %i.aqj
  store i32 %i.aql, ptr %i.ags, align 8, !tbaa !27
  %i.aqm = lshr i32 %i.aqj, 3
  %i.aqn = and i32 %i.aqm, 24
  %i.aqo = zext nneg i32 %i.aqn to i64
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.agt, i64 %i.aqo ; 2 uses
  %i.aqq = and i32 %i.aqj, 63                     ; 2 uses
  %i.aqr = load <2 x i64>, ptr %i.aqp, align 8, !tbaa !12 ; 2 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqp, i64 16
  %i.aqt = load <2 x i64>, ptr %i.aqs, align 8, !tbaa !12 ; 3 uses
  %i.aqu = zext nneg i32 %i.aqq to i64
  %i.aqv = insertelement <2 x i64> poison, i64 %i.aqu, i64 0
  %i.aqw = shufflevector <2 x i64> %i.aqv, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aqx = lshr <2 x i64> %i.aqr, %i.aqw
  %i.aqy = shufflevector <2 x i64> %i.aqr, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.aqz = sub nuw nsw i32 64, %i.aqq
  %i.ara = zext nneg i32 %i.aqz to i64
  %i.arb = insertelement <2 x i64> poison, i64 %i.ara, i64 0
  %i.arc = shufflevector <2 x i64> %i.arb, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ard = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.aqy, <2 x i64> %i.arc)
  %i.are = or <2 x i64> %i.ard, %i.aqx
  %i.arf = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.aqt, <2 x i32> <i32 1, i32 2>
  %i.arg = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.arf, <2 x i64> %i.arc)
  %i.arh = or <2 x i64> %i.are, %i.arg
  store <2 x i64> %i.arh, ptr %i.agt, align 8, !tbaa !12
  %i.ari = lshr <2 x i64> %i.aqt, %i.aqw
  %i.arj = shufflevector <2 x i64> %i.aqt, <2 x i64> <i64 0, i64 poison>, <2 x i32> <i32 1, i32 2>
  %i.ark = tail call noundef <2 x i64> @llvm.x86.sse2.psll.q(<2 x i64> %i.arj, <2 x i64> %i.arc)
  %i.arl = or <2 x i64> %i.ark, %i.ari
  store <2 x i64> %i.arl, ptr %i.agu, align 8, !tbaa !12
  br label %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934

_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934: ; preds = %bb.bd, %bb.be, %bb.bf
  %.0 = phi <2 x i64> [ splat (i64 562958543486978), %bb.bd ], [ %i.aqi, %bb.be ], [ %i.aqi, %bb.bf ]
  %.0.i933 = phi <2 x i64> [ zeroinitializer, %bb.bd ], [ %i.aqe, %bb.be ], [ %i.aqe, %bb.bf ]
  %i.arm = load <2 x i64>, ptr %.08341011, align 1, !tbaa !12
  %i.arn = and <2 x i64> %i.arm, <i64 65535, i64 0>
  %i.aro = or <2 x i64> %i.arn, %.0
  store <2 x i64> %i.aro, ptr %.08341011, align 1, !tbaa !12
  %i.arp = bitcast <2 x i64> %.0.i933 to <16 x i8> ; 2 uses
  %i.arq = shufflevector <16 x i8> %i.arp, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 0, i32 1, i32 16, i32 16, i32 4, i32 5, i32 16, i32 16, i32 8, i32 9, i32 16, i32 16, i32 12, i32 13>
  store <16 x i8> %i.arq, ptr %.08321013, align 16, !tbaa !12
  %i.arr = shufflevector <16 x i8> %i.arp, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 16, i32 16, i32 2, i32 3, i32 16, i32 16, i32 6, i32 7, i32 16, i32 16, i32 10, i32 11, i32 16, i32 16, i32 14, i32 15>
  %i.ars = getelementptr inbounds nuw [4 x i8], ptr %.08321013, i64 %i.agv
  store <16 x i8> %i.arr, ptr %i.ars, align 16, !tbaa !12
  %i.art = add i32 %.08311014, 4                  ; 2 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %.08331012, i64 8
  %i.arv = getelementptr inbounds nuw i8, ptr %.08341011, i64 4
  %i.arw = getelementptr inbounds nuw i8, ptr %.08321013, i64 16
  %.not885 = icmp ult i32 %i.art, %6
  br i1 %.not885, label %.lr.ph1016, label %.critedge912, !llvm.loop !51

.critedge912:                                     ; preds = %_ZN4ojph5localL17decode_two_quad16EDv2_xS1_PNS0_17frwd_struct_ssse3EjRS1_.exit934, %bb.bb
  %i.arx = add i32 %.08391017, 2                  ; 2 uses
  %i.ary = icmp ult i32 %i.arx, %7
  br i1 %i.ary, label %.preheader975, label %.critedge910._crit_edge, !llvm.loop !52

.thread961:                                       ; preds = %bb.ax, %.lr.ph1016
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.dl

.critedge910._crit_edge:                          ; preds = %.critedge912, %.critedge910.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.bg

bb.bg:                                            ; preds = %.critedge910._crit_edge, %.critedge._crit_edge
  %i.arz = icmp ugt i32 %.1742, 1
  br i1 %i.arz, label %bb.bh, label %bb.dl

bb.bh:                                            ; preds = %bb.bg
  %i.asa = add i32 %6, 3
  %i.asb = lshr i32 %i.asa, 2
  %i.asc = add nuw nsw i32 %i.asb, 9
  %i.asd = and i32 %i.asc, 2147483640             ; 11 uses
  %.not1143 = icmp eq i32 %7, 0                   ; 3 uses
  br i1 %.not1143, label %._crit_edge1045, label %.lr.ph1044

.lr.ph1044:                                       ; preds = %bb.bh
  %i.ase = zext i32 %i.at to i64
  %i.asf = zext i32 %7 to i64                     ; 2 uses
  br i1 %.not1131, label %.lr.ph1044.split.preheader, label %.lr.ph1039.us

.lr.ph1044.split.preheader:                       ; preds = %.lr.ph1044
  %i.asg = add nsw i64 %i.asf, -1
  %i.ash = lshr i64 %i.asg, 2
end_hunk_0
