Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/binaryop_x86_avx512bf16?download=true
inline.NumInlined: 199
inline.NumDeleted: 137
loop-unroll.NumRuntimeUnrolled: 194
loop-unroll.NumUnrolled: 194
begin_hunk_0_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  %i.nyo = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.nyc)
  %i.nyp = shl <8 x i32> %i.nyo, splat (i32 23)
  %i.nyq = add <8 x i32> %i.nyp, splat (i32 1065353216)
  %i.nyr = bitcast <8 x i32> %i.nyq to <8 x float>
  %i.nys = fmul fast <8 x float> %i.nyn, %i.nyr
  %i.nyt = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.nys)
  store <8 x bfloat> %i.nyt, ptr %.131166.i.i1310, align 1, !tbaa !555
  %i.nyu = getelementptr inbounds nuw i8, ptr %.1168.i.i1308, i64 2
  %i.nyv = getelementptr inbounds nuw i8, ptr %.131166.i.i1310, i64 16
  %i.nyw = add nuw nsw i32 %.029167.i.i1309, 1    ; 2 uses
  %exitcond176.not.i.i1311 = icmp eq i32 %i.nyw, %.sroa.speculated98.i1300
  br i1 %exitcond176.not.i.i1311, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph169.i.i1307, !llvm.loop !307

bb.jq:                                            ; preds = %bb.jn
  %i.nyx = load i64, ptr %0, align 1, !tbaa !555
  %i.nyy = insertelement <2 x i64> poison, i64 %i.nyx, i64 0
  %i.nyz = bitcast <2 x i64> %i.nyy to <8 x i16>
  %i.nza = shufflevector <8 x i16> %i.nyz, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.nzb = bitcast <8 x i16> %i.nza to <4 x float>
  br label %.lr.ph.i86.i1302

.lr.ph.i86.i1302:                                 ; preds = %.lr.ph.i86.i1302, %bb.jq
  %.0165.i.i1303 = phi i32 [ %i.obs, %.lr.ph.i86.i1302 ], [ 0, %bb.jq ]
  %.2164.i.i1304 = phi ptr [ %i.obq, %.lr.ph.i86.i1302 ], [ %1, %bb.jq ] ; 2 uses
  %.232163.i.i1305 = phi ptr [ %i.obr, %.lr.ph.i86.i1302 ], [ %2, %bb.jq ] ; 2 uses
  %i.nzc = load i16, ptr %.2164.i.i1304, align 2, !tbaa !558
  %i.nzd = zext i16 %i.nzc to i32
  %i.nze = shl nuw i32 %i.nzd, 16
  %i.nzf = insertelement <4 x i32> poison, i32 %i.nze, i64 0
  %i.nzg = bitcast <4 x i32> %i.nzf to <4 x float>
  %i.nzh = shufflevector <4 x float> %i.nzg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nzi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nzh, <4 x float> splat (float f0x00800000))
  %i.nzj = bitcast <4 x float> %i.nzi to <4 x i32> ; 2 uses
  %i.nzk = lshr <4 x i32> %i.nzj, splat (i32 23)
  %i.nzl = and <4 x i32> %i.nzj, splat (i32 -2139095041)
  %i.nzm = or disjoint <4 x i32> %i.nzl, splat (i32 1056964608)
  %i.nzn = bitcast <4 x i32> %i.nzm to <4 x float> ; 3 uses
  %i.nzo = add nsw <4 x i32> %i.nzk, splat (i32 -127)
  %i.nzp = sitofp fast <4 x i32> %i.nzo to <4 x float> ; 2 uses
  %i.nzq = fadd fast <4 x float> %i.nzp, splat (float 1.000000e+00)
  %i.nzr = fcmp fast olt <4 x float> %i.nzn, splat (float f0x3F3504F3) ; 2 uses
  %i.nzs = select <4 x i1> %i.nzr, <4 x float> %i.nzn, <4 x float> zeroinitializer
  %i.nzt = fadd fast <4 x float> %i.nzn, splat (float -1.000000e+00)
  %i.nzu = select fast <4 x i1> %i.nzr, <4 x float> %i.nzp, <4 x float> %i.nzq ; 2 uses
  %i.nzv = fadd fast <4 x float> %i.nzt, %i.nzs   ; 12 uses
  %i.nzw = fmul fast <4 x float> %i.nzv, %i.nzv   ; 2 uses
  %i.nzx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nzv, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.nzy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nzx, <4 x float> nofpclass(nan inf) %i.nzv, <4 x float> splat (float f0x3DEF251A))
  %i.nzz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nzy, <4 x float> nofpclass(nan inf) %i.nzv, <4 x float> splat (float f0xBDFE5D4F))
  %i.oaa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nzz, <4 x float> nofpclass(nan inf) %i.nzv, <4 x float> splat (float f0x3E11E9BF))
  %i.oab = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.oaa, <4 x float> nofpclass(nan inf) %i.nzv, <4 x float> splat (float f0xBE2AAE50))
  %i.oac = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.oab, <4 x float> nofpclass(nan inf) %i.nzv, <4 x float> splat (float f0x3E4CCEAC))
  %i.oad = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.oac, <4 x float> nofpclass(nan inf) %i.nzv, <4 x float> splat (float f0xBE7FFFFC))
  %i.oae = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.oad, <4 x float> nofpclass(nan inf) %i.nzv, <4 x float> splat (float f0x3EAAAAAA))
  %i.oaf = fmul fast <4 x float> %i.nzw, %i.nzv
  %i.oag = fmul fast <4 x float> %i.oaf, %i.oae
  %i.oah = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nzu, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.oag)
  %i.oai = fneg fast <4 x float> %i.nzw
  %i.oaj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.oai, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.oah)
  %i.oak = fadd fast <4 x float> %i.oaj, %i.nzv
  %i.oal = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nzu, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.oak)
  %i.oam = fmul fast <4 x float> %i.oal, %i.nzb
  %i.oan = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.oam, <4 x float> splat (float f0x42B0C0A5))
  %i.oao = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.oan, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.oap = fmul fast <4 x float> %i.oao, splat (float f0x3FB8AA3B)
  %i.oaq = fadd fast <4 x float> %i.oap, splat (float 5.000000e-01) ; 2 uses
  %i.oar = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.oaq)
  %i.oas = sitofp fast <4 x i32> %i.oar to <4 x float> ; 2 uses
  %i.oat = fcmp fast olt <4 x float> %i.oaq, %i.oas
  %i.oau = select <4 x i1> %i.oat, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.oav = fsub fast <4 x float> %i.oas, %i.oau   ; 2 uses
  %i.oaw = fneg fast <4 x float> %i.oav           ; 2 uses
  %i.oax = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.oaw, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.oao)
  %i.oay = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.oaw, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.oax) ; 8 uses
  %i.oaz = fmul fast <4 x float> %i.oay, %i.oay
  %i.oba = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.oay, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.obb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.oba, <4 x float> nofpclass(nan inf) %i.oay, <4 x float> splat (float f0x3C088908))
  %i.obc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obb, <4 x float> nofpclass(nan inf) %i.oay, <4 x float> splat (float f0x3D2AA9C1))
  %i.obd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obc, <4 x float> nofpclass(nan inf) %i.oay, <4 x float> splat (float f0x3E2AAAAA))
  %i.obe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obd, <4 x float> nofpclass(nan inf) %i.oay, <4 x float> splat (float 5.000000e-01))
  %i.obf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obe, <4 x float> nofpclass(nan inf) %i.oaz, <4 x float> nofpclass(nan inf) %i.oay)
  %i.obg = fadd fast <4 x float> %i.obf, splat (float 1.000000e+00)
  %i.obh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.oav)
  %i.obi = shl <4 x i32> %i.obh, splat (i32 23)
  %i.obj = add <4 x i32> %i.obi, splat (i32 1065353216)
  %i.obk = bitcast <4 x i32> %i.obj to <4 x float>
  %i.obl = fmul fast <4 x float> %i.obg, %i.obk
  %i.obm = shufflevector <4 x float> %i.obl, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.obn = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.obm)
  %i.obo = bitcast <8 x bfloat> %i.obn to <2 x i64>
  %i.obp = extractelement <2 x i64> %i.obo, i64 0
  store i64 %i.obp, ptr %.232163.i.i1305, align 1, !tbaa !555
  %i.obq = getelementptr inbounds nuw i8, ptr %.2164.i.i1304, i64 2
  %i.obr = getelementptr inbounds nuw i8, ptr %.232163.i.i1305, i64 8
  %i.obs = add nuw nsw i32 %.0165.i.i1303, 1      ; 2 uses
  %exitcond.not.i87.i1306 = icmp eq i32 %i.obs, %.sroa.speculated98.i1300
  br i1 %exitcond.not.i87.i1306, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i86.i1302, !llvm.loop !308

bb.jr:                                            ; preds = %bb.a
  %.sroa.speculated104.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 10 uses
  %.sroa.speculated.i1470 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.obt = mul i32 %.sroa.speculated.i1470, %.sroa.speculated104.i ; 48 uses
  %i.obu = icmp eq i32 %5, %6
  br i1 %i.obu, label %bb.js, label %bb.ko

bb.js:                                            ; preds = %bb.jr
  %i.obv = icmp eq i32 %3, %4
  br i1 %i.obv, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %bb.js
  %i.obw = icmp sgt i32 %i.obt, 15
  br i1 %i.obw, label %.lr.ph.i.i1514, label %.preheader133.i.i

.preheader133.loopexit.i.i:                       ; preds = %.lr.ph.i.i1514
  %i.obx = and i32 %i.obt, 2147483632
  br label %.preheader133.i.i

.preheader133.i.i:                                ; preds = %.preheader133.loopexit.i.i, %bb.jt
  %.042.lcssa.i.i1500 = phi ptr [ %2, %bb.jt ], [ %i.ods, %.preheader133.loopexit.i.i ] ; 2 uses
  %.038.lcssa.i.i1501 = phi i32 [ 0, %bb.jt ], [ %i.obx, %.preheader133.loopexit.i.i ] ; 3 uses
  %.034.lcssa.i.i1502 = phi ptr [ %1, %bb.jt ], [ %i.odr, %.preheader133.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i.i1503 = phi ptr [ %0, %bb.jt ], [ %i.odq, %.preheader133.loopexit.i.i ] ; 2 uses
  %i.oby = or disjoint i32 %.038.lcssa.i.i1501, 7
  %i.obz = icmp slt i32 %i.oby, %i.obt
  br i1 %i.obz, label %.lr.ph145.i.i, label %.preheader132.i.i

.lr.ph.i.i1514:                                   ; preds = %bb.jt, %.lr.ph.i.i1514
  %.0137.i.i = phi ptr [ %i.odq, %.lr.ph.i.i1514 ], [ %0, %bb.jt ] ; 2 uses
  %.034136.i.i = phi ptr [ %i.odr, %.lr.ph.i.i1514 ], [ %1, %bb.jt ] ; 2 uses
  %.038135.i.i = phi i32 [ %i.odt, %.lr.ph.i.i1514 ], [ 0, %bb.jt ]
  %.042134.i.i = phi ptr [ %i.ods, %.lr.ph.i.i1514 ], [ %2, %bb.jt ] ; 2 uses
  %i.oca = load <16 x bfloat>, ptr %.0137.i.i, align 1, !tbaa !555 ; 3 uses
  %i.ocb = fpext fast <16 x bfloat> %i.oca to <16 x float> ; 2 uses
  %i.occ = load <16 x bfloat>, ptr %.034136.i.i, align 1, !tbaa !555 ; 4 uses
  %i.ocd = fpext fast <16 x bfloat> %i.occ to <16 x float>
  %i.oce = fcmp fast one <16 x bfloat> %i.occ, zeroinitializer
  %i.ocf = fcmp fast one <16 x bfloat> %i.oca, zeroinitializer
  %i.ocg = fcmp fast olt <16 x bfloat> %i.occ, zeroinitializer
  %i.och = fcmp fast olt <16 x bfloat> %i.oca, zeroinitializer
  %i.oci = select fast <16 x i1> %i.och, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.ocj = select fast <16 x i1> %i.ocg, <16 x float> %i.oci, <16 x float> zeroinitializer
  %i.ock = fdiv fast <16 x float> %i.ocb, %i.ocd  ; 2 uses
  %i.ocl = bitcast <16 x float> %i.ock to <16 x i32>
  %i.ocm = and <16 x i32> %i.ocl, splat (i32 -2147483648)
  %i.ocn = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.ock) ; 3 uses
  %i.oco = fcmp fast ogt <16 x float> %i.ocn, splat (float 1.000000e+00) ; 2 uses
  %i.ocp = select fast <16 x i1> %i.oco, <16 x float> splat (float -1.000000e+00), <16 x float> %i.ocn
  %i.ocq = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.ocn, <16 x float> splat (float 1.000000e+00))
  %i.ocr = fdiv fast <16 x float> %i.ocp, %i.ocq  ; 3 uses
  %i.ocs = fmul fast <16 x float> %i.ocr, %i.ocr  ; 3 uses
  %i.oct = fmul fast <16 x float> %i.ocs, %i.ocs  ; 7 uses
  %i.ocu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.oct, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.ocv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.oct, <16 x float> nofpclass(nan inf) %i.ocu, <16 x float> splat (float f0xBE117200))
  %i.ocw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.oct, <16 x float> nofpclass(nan inf) %i.ocv, <16 x float> splat (float f0xBEAAAA53))
  %i.ocx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.oct, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.ocy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.oct, <16 x float> nofpclass(nan inf) %i.ocx, <16 x float> splat (float f0x3DD9ED24))
  %i.ocz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.oct, <16 x float> nofpclass(nan inf) %i.ocy, <16 x float> splat (float f0x3E4CB974))
  %i.oda = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.oct, <16 x float> nofpclass(nan inf) %i.ocz, <16 x float> splat (float 1.000000e+00))
  %i.odb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ocs, <16 x float> nofpclass(nan inf) %i.ocw, <16 x float> nofpclass(nan inf) %i.oda)
  %i.odc = fmul fast <16 x float> %i.odb, %i.ocr
  %i.odd = select fast <16 x i1> %i.oco, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.ode = fadd fast <16 x float> %i.odc, %i.odd
  %i.odf = bitcast <16 x float> %i.ode to <16 x i32>
  %i.odg = or <16 x i32> %i.ocm, %i.odf
  %i.odh = bitcast <16 x i32> %i.odg to <16 x float>
  %i.odi = fadd fast <16 x float> %i.ocj, %i.odh
  %i.odj = bitcast <16 x bfloat> %i.occ to <16 x i16>
  %i.odk = icmp slt <16 x i16> %i.odj, zeroinitializer
  %i.odl = select fast <16 x i1> %i.odk, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.odm = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.ocb)
  %i.odn = select <16 x i1> %i.oce, <16 x float> %i.odi, <16 x float> %i.odm
  %i.odo = select <16 x i1> %i.ocf, <16 x float> %i.odn, <16 x float> %i.odl
  %i.odp = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.odo)
  store <16 x bfloat> %i.odp, ptr %.042134.i.i, align 1, !tbaa !555
  %i.odq = getelementptr inbounds nuw i8, ptr %.0137.i.i, i64 32 ; 2 uses
  %i.odr = getelementptr inbounds nuw i8, ptr %.034136.i.i, i64 32 ; 2 uses
  %i.ods = getelementptr inbounds nuw i8, ptr %.042134.i.i, i64 32 ; 2 uses
  %i.odt = add nuw nsw i32 %.038135.i.i, 16       ; 2 uses
  %i.odu = or disjoint i32 %i.odt, 15
  %i.odv = icmp slt i32 %i.odu, %i.obt
  br i1 %i.odv, label %.lr.ph.i.i1514, label %.preheader133.loopexit.i.i, !llvm.loop !309

.preheader132.i.i:                                ; preds = %.lr.ph145.i.i, %.preheader133.i.i
  %.143.lcssa.i.i1504 = phi ptr [ %.042.lcssa.i.i1500, %.preheader133.i.i ], [ %i.oft, %.lr.ph145.i.i ] ; 2 uses
  %.139.lcssa.i.i1505 = phi i32 [ %.038.lcssa.i.i1501, %.preheader133.i.i ], [ %i.ofu, %.lr.ph145.i.i ] ; 3 uses
  %.135.lcssa.i.i1506 = phi ptr [ %.034.lcssa.i.i1502, %.preheader133.i.i ], [ %i.ofs, %.lr.ph145.i.i ] ; 2 uses
  %.1.lcssa.i.i1507 = phi ptr [ %.0.lcssa.i.i1503, %.preheader133.i.i ], [ %i.ofr, %.lr.ph145.i.i ] ; 2 uses
  %i.odw = or disjoint i32 %.139.lcssa.i.i1505, 3
  %i.odx = icmp slt i32 %i.odw, %i.obt
  br i1 %i.odx, label %.lr.ph154.i.i, label %.preheader.i.i1508

.lr.ph145.i.i:                                    ; preds = %.preheader133.i.i, %.lr.ph145.i.i
  %.1144.i.i = phi ptr [ %i.ofr, %.lr.ph145.i.i ], [ %.0.lcssa.i.i1503, %.preheader133.i.i ] ; 2 uses
  %.135143.i.i = phi ptr [ %i.ofs, %.lr.ph145.i.i ], [ %.034.lcssa.i.i1502, %.preheader133.i.i ] ; 2 uses
  %.139142.i.i = phi i32 [ %i.ofu, %.lr.ph145.i.i ], [ %.038.lcssa.i.i1501, %.preheader133.i.i ]
  %.143141.i.i = phi ptr [ %i.oft, %.lr.ph145.i.i ], [ %.042.lcssa.i.i1500, %.preheader133.i.i ] ; 2 uses
  %i.ody = load <8 x bfloat>, ptr %.1144.i.i, align 1, !tbaa !555 ; 3 uses
  %i.odz = fpext fast <8 x bfloat> %i.ody to <8 x float> ; 2 uses
  %i.oea = load <8 x bfloat>, ptr %.135143.i.i, align 1, !tbaa !555 ; 4 uses
  %i.oeb = fpext fast <8 x bfloat> %i.oea to <8 x float>
  %i.oec = fcmp fast ueq <8 x bfloat> %i.oea, zeroinitializer
  %i.oed = fcmp fast ueq <8 x bfloat> %i.ody, zeroinitializer
  %i.oee = bitcast <8 x float> %i.odz to <8 x i32>
  %i.oef = and <8 x i32> %i.oee, splat (i32 -2147483648)
  %i.oeg = fcmp fast olt <8 x bfloat> %i.oea, zeroinitializer
  %i.oeh = fcmp fast olt <8 x bfloat> %i.ody, zeroinitializer
  %i.oei = select <8 x i1> %i.oeh, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.oej = select <8 x i1> %i.oeg, <8 x float> %i.oei, <8 x float> zeroinitializer
  %i.oek = fdiv fast <8 x float> %i.odz, %i.oeb   ; 2 uses
  %i.oel = bitcast <8 x float> %i.oek to <8 x i32>
  %i.oem = and <8 x i32> %i.oel, splat (i32 -2147483648)
  %i.oen = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.oek) ; 3 uses
  %i.oeo = fcmp fast ogt <8 x float> %i.oen, splat (float 1.000000e+00) ; 2 uses
  %i.oep = select <8 x i1> %i.oeo, <8 x float> splat (float -1.000000e+00), <8 x float> %i.oen
  %i.oeq = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.oen, <8 x float> splat (float 1.000000e+00))
  %i.oer = fdiv fast <8 x float> %i.oep, %i.oeq   ; 3 uses
  %i.oes = fmul fast <8 x float> %i.oer, %i.oer   ; 3 uses
  %i.oet = fmul fast <8 x float> %i.oes, %i.oes   ; 7 uses
  %i.oeu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oet, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.oev = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oet, <8 x float> nofpclass(nan inf) %i.oeu, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.oew = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oet, <8 x float> nofpclass(nan inf) %i.oev, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.oex = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oet, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.oey = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oet, <8 x float> nofpclass(nan inf) %i.oex, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.oez = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oet, <8 x float> nofpclass(nan inf) %i.oey, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.ofa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oet, <8 x float> nofpclass(nan inf) %i.oez, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.ofb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oes, <8 x float> nofpclass(nan inf) %i.oew, <8 x float> nofpclass(nan inf) %i.ofa)
  %i.ofc = fmul fast <8 x float> %i.ofb, %i.oer
  %i.ofd = select <8 x i1> %i.oeo, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.ofe = fadd fast <8 x float> %i.ofc, %i.ofd
  %i.off = bitcast <8 x float> %i.ofe to <8 x i32>
  %i.ofg = or <8 x i32> %i.oem, %i.off
  %i.ofh = bitcast <8 x i32> %i.ofg to <8 x float>
  %i.ofi = fadd fast <8 x float> %i.oej, %i.ofh
  %i.ofj = bitcast <8 x bfloat> %i.oea to <8 x i16>
  %i.ofk = or disjoint <8 x i32> %i.oef, splat (i32 1070141403)
  %isneg.i.i = icmp sgt <8 x i16> %i.ofj, splat (i16 -1)
  %i.ofl = select <8 x i1> %isneg.i.i, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.ofm = bitcast <8 x float> %i.ofi to <8 x i32>
  %i.ofn = select <8 x i1> %i.oec, <8 x i32> %i.ofk, <8 x i32> %i.ofm
  %i.ofo = select <8 x i1> %i.oed, <8 x i32> %i.ofl, <8 x i32> %i.ofn
  %i.ofp = bitcast <8 x i32> %i.ofo to <8 x float>
  %i.ofq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ofp)
  store <8 x bfloat> %i.ofq, ptr %.143141.i.i, align 1, !tbaa !555
  %i.ofr = getelementptr inbounds nuw i8, ptr %.1144.i.i, i64 16 ; 2 uses
  %i.ofs = getelementptr inbounds nuw i8, ptr %.135143.i.i, i64 16 ; 2 uses
  %i.oft = getelementptr inbounds nuw i8, ptr %.143141.i.i, i64 16 ; 2 uses
  %i.ofu = add nuw nsw i32 %.139142.i.i, 8        ; 3 uses
  %i.ofv = or disjoint i32 %i.ofu, 7
  %i.ofw = icmp slt i32 %i.ofv, %i.obt
  br i1 %i.ofw, label %.lr.ph145.i.i, label %.preheader132.i.i, !llvm.loop !310

.preheader.i.i1508:                               ; preds = %.lr.ph154.i.i, %.preheader132.i.i
  %.244.lcssa.i.i1509 = phi ptr [ %.143.lcssa.i.i1504, %.preheader132.i.i ], [ %i.okp, %.lr.ph154.i.i ] ; 7 uses
  %.240.lcssa.i.i1510 = phi i32 [ %.139.lcssa.i.i1505, %.preheader132.i.i ], [ %i.okq, %.lr.ph154.i.i ] ; 6 uses
  %.236.lcssa.i.i1511 = phi ptr [ %.135.lcssa.i.i1506, %.preheader132.i.i ], [ %i.oko, %.lr.ph154.i.i ] ; 7 uses
  %.2.lcssa.i.i1512 = phi ptr [ %.1.lcssa.i.i1507, %.preheader132.i.i ], [ %i.okn, %.lr.ph154.i.i ] ; 7 uses
  %.236.lcssa.i.i15117321 = ptrtoaddr ptr %.236.lcssa.i.i1511 to i64
  %.2.lcssa.i.i15127322 = ptrtoaddr ptr %.2.lcssa.i.i1512 to i64
  %.244.lcssa.i.i15097323 = ptrtoaddr ptr %.244.lcssa.i.i1509 to i64 ; 2 uses
  %i.ofx = icmp slt i32 %.240.lcssa.i.i1510, %i.obt
  br i1 %i.ofx, label %iter.check7343, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7343:                                   ; preds = %.preheader.i.i1508
  %i.ofy = xor i32 %.240.lcssa.i.i1510, -1
  %i.ofz = add i32 %i.obt, %i.ofy                 ; 3 uses
  %i.oga = zext i32 %i.ofz to i64
  %i.ogb = add nuw nsw i64 %i.oga, 1              ; 5 uses
  %min.iters.check7324.a = icmp ult i32 %i.ofz, 7
  br i1 %min.iters.check7324.a, label %.lr.ph163.i.i.preheader, label %vector.memcheck7325

vector.memcheck7325:                              ; preds = %iter.check7343
  %i.ogc = sub i64 %.2.lcssa.i.i15127322, %.244.lcssa.i.i15097323
  %diff.check7326 = icmp ugt i64 %i.ogc, -64
  %i.ogd = sub i64 %.236.lcssa.i.i15117321, %.244.lcssa.i.i15097323
  %diff.check7327 = icmp ugt i64 %i.ogd, -64
  %conflict.rdx7328 = or i1 %diff.check7326, %diff.check7327
  br i1 %conflict.rdx7328, label %.lr.ph163.i.i.preheader, label %vector.main.loop.iter.check7329

vector.main.loop.iter.check7329:                  ; preds = %vector.memcheck7325
  %min.iters.check7330 = icmp ult i32 %i.ofz, 31
  br i1 %min.iters.check7330, label %vec.epilog.ph7347, label %vector.ph7331

vector.ph7331:                                    ; preds = %vector.main.loop.iter.check7329
  %i.oge = and i64 %i.ogb, 24
  %n.vec7332 = and i64 %i.ogb, 8589934560         ; 5 uses
  %i.ogf = shl nuw nsw i64 %n.vec7332, 1          ; 3 uses
  %i.ogg = getelementptr i8, ptr %.2.lcssa.i.i1512, i64 %i.ogf
  %i.ogh = getelementptr i8, ptr %.236.lcssa.i.i1511, i64 %i.ogf
  %i.ogi = trunc i64 %n.vec7332 to i32
  %i.ogj = add i32 %.240.lcssa.i.i1510, %i.ogi
  %i.ogk = getelementptr i8, ptr %.244.lcssa.i.i1509, i64 %i.ogf
  br label %vector.body7333

vector.body7333:                                  ; preds = %vector.ph7331, %vector.body7333
  %index7334 = phi i64 [ 0, %vector.ph7331 ], [ %index.next7340, %vector.body7333 ] ; 2 uses
  %i.ogl = shl i64 %index7334, 1                  ; 3 uses
  %next.gep7335 = getelementptr i8, ptr %.2.lcssa.i.i1512, i64 %i.ogl
  %next.gep7336 = getelementptr i8, ptr %.236.lcssa.i.i1511, i64 %i.ogl
  %next.gep7337 = getelementptr i8, ptr %.244.lcssa.i.i1509, i64 %i.ogl
  %wide.load7338 = load <32 x i16>, ptr %next.gep7335, align 2, !tbaa !558
  %i.ogm = zext <32 x i16> %wide.load7338 to <32 x i32>
  %i.ogn = shl nuw <32 x i32> %i.ogm, splat (i32 16)
  %i.ogo = bitcast <32 x i32> %i.ogn to <32 x float>
  %wide.load7339 = load <32 x i16>, ptr %next.gep7336, align 2, !tbaa !558
  %i.ogp = zext <32 x i16> %wide.load7339 to <32 x i32>
  %i.ogq = shl nuw <32 x i32> %i.ogp, splat (i32 16)
  %i.ogr = bitcast <32 x i32> %i.ogq to <32 x float>
  %i.ogs = tail call fast <32 x float> @llvm.atan2.v32f32(<32 x float> %i.ogo, <32 x float> %i.ogr)
  %i.ogt = bitcast <32 x float> %i.ogs to <32 x i32>
  %i.ogu = lshr <32 x i32> %i.ogt, splat (i32 16)
  %i.ogv = trunc nuw <32 x i32> %i.ogu to <32 x i16>
  store <32 x i16> %i.ogv, ptr %next.gep7337, align 2, !tbaa !558
  %index.next7340 = add nuw i64 %index7334, 32    ; 2 uses
  %i.ogw = icmp eq i64 %index.next7340, %n.vec7332
  br i1 %i.ogw, label %middle.block7341, label %vector.body7333, !llvm.loop !311

middle.block7341:                                 ; preds = %vector.body7333
  %cmp.n7342 = icmp eq i64 %i.ogb, %n.vec7332
  br i1 %cmp.n7342, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7344

vec.epilog.iter.check7344:                        ; preds = %middle.block7341
  %min.epilog.iters.check7346 = icmp eq i64 %i.oge, 0
  br i1 %min.epilog.iters.check7346, label %.lr.ph163.i.i.preheader, label %vec.epilog.ph7347, !prof !561

vec.epilog.ph7347:                                ; preds = %vector.main.loop.iter.check7329, %vec.epilog.iter.check7344
  %vec.epilog.resume.val7348 = phi i64 [ %n.vec7332, %vec.epilog.iter.check7344 ], [ 0, %vector.main.loop.iter.check7329 ]
  %n.vec7349 = and i64 %i.ogb, 8589934584         ; 4 uses
  %i.ogx = shl nuw nsw i64 %n.vec7349, 1          ; 3 uses
  %i.ogy = getelementptr i8, ptr %.2.lcssa.i.i1512, i64 %i.ogx
  %i.ogz = getelementptr i8, ptr %.236.lcssa.i.i1511, i64 %i.ogx
  %i.oha = trunc i64 %n.vec7349 to i32
  %i.ohb = add i32 %.240.lcssa.i.i1510, %i.oha
  %i.ohc = getelementptr i8, ptr %.244.lcssa.i.i1509, i64 %i.ogx
  br label %vec.epilog.vector.body7350

vec.epilog.vector.body7350:                       ; preds = %vec.epilog.vector.body7350, %vec.epilog.ph7347
  %index7351 = phi i64 [ %vec.epilog.resume.val7348, %vec.epilog.ph7347 ], [ %index.next7357, %vec.epilog.vector.body7350 ] ; 2 uses
  %i.ohd = shl i64 %index7351, 1                  ; 3 uses
  %next.gep7352 = getelementptr i8, ptr %.2.lcssa.i.i1512, i64 %i.ohd
  %next.gep7353 = getelementptr i8, ptr %.236.lcssa.i.i1511, i64 %i.ohd
  %next.gep7354 = getelementptr i8, ptr %.244.lcssa.i.i1509, i64 %i.ohd
  %wide.load7355 = load <8 x i16>, ptr %next.gep7352, align 2, !tbaa !558
  %i.ohe = zext <8 x i16> %wide.load7355 to <8 x i32>
  %i.ohf = shl nuw <8 x i32> %i.ohe, splat (i32 16)
  %i.ohg = bitcast <8 x i32> %i.ohf to <8 x float>
  %wide.load7356 = load <8 x i16>, ptr %next.gep7353, align 2, !tbaa !558
  %i.ohh = zext <8 x i16> %wide.load7356 to <8 x i32>
  %i.ohi = shl nuw <8 x i32> %i.ohh, splat (i32 16)
  %i.ohj = bitcast <8 x i32> %i.ohi to <8 x float>
  %i.ohk = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.ohg, <8 x float> %i.ohj)
  %i.ohl = bitcast <8 x float> %i.ohk to <8 x i32>
  %i.ohm = lshr <8 x i32> %i.ohl, splat (i32 16)
  %i.ohn = trunc nuw <8 x i32> %i.ohm to <8 x i16>
  store <8 x i16> %i.ohn, ptr %next.gep7354, align 2, !tbaa !558
  %index.next7357 = add nuw i64 %index7351, 8     ; 2 uses
  %i.oho = icmp eq i64 %index.next7357, %n.vec7349
  br i1 %i.oho, label %vec.epilog.middle.block7358, label %vec.epilog.vector.body7350, !llvm.loop !312

vec.epilog.middle.block7358:                      ; preds = %vec.epilog.vector.body7350
  %cmp.n7359 = icmp eq i64 %i.ogb, %n.vec7349
  br i1 %cmp.n7359, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph163.i.i.preheader

.lr.ph163.i.i.preheader:                          ; preds = %iter.check7343, %vector.memcheck7325, %vec.epilog.iter.check7344, %vec.epilog.middle.block7358
  %.3162.i.i.ph = phi ptr [ %.2.lcssa.i.i1512, %iter.check7343 ], [ %.2.lcssa.i.i1512, %vector.memcheck7325 ], [ %i.ogg, %vec.epilog.iter.check7344 ], [ %i.ogy, %vec.epilog.middle.block7358 ] ; 3 uses
  %.337161.i.i.ph = phi ptr [ %.236.lcssa.i.i1511, %iter.check7343 ], [ %.236.lcssa.i.i1511, %vector.memcheck7325 ], [ %i.ogh, %vec.epilog.iter.check7344 ], [ %i.ogz, %vec.epilog.middle.block7358 ] ; 3 uses
  %.341160.i.i.ph = phi i32 [ %.240.lcssa.i.i1510, %iter.check7343 ], [ %.240.lcssa.i.i1510, %vector.memcheck7325 ], [ %i.ogj, %vec.epilog.iter.check7344 ], [ %i.ohb, %vec.epilog.middle.block7358 ] ; 4 uses
  %.345159.i.i.ph = phi ptr [ %.244.lcssa.i.i1509, %iter.check7343 ], [ %.244.lcssa.i.i1509, %vector.memcheck7325 ], [ %i.ogk, %vec.epilog.iter.check7344 ], [ %i.ohc, %vec.epilog.middle.block7358 ] ; 3 uses
  %i.ohp = sub i32 %i.obt, %.341160.i.i.ph
  %.neg11076 = add i32 %.341160.i.i.ph, 1
  %xtraiter10481 = and i32 %i.ohp, 1
  %lcmp.mod10482.not = icmp eq i32 %xtraiter10481, 0
  br i1 %lcmp.mod10482.not, label %.lr.ph163.i.i.prol.loopexit, label %.lr.ph163.i.i.prol

.lr.ph163.i.i.prol:                               ; preds = %.lr.ph163.i.i.preheader
  %i.ohq = getelementptr inbounds nuw i8, ptr %.3162.i.i.ph, i64 2
  %i.ohr = load i16, ptr %.3162.i.i.ph, align 2, !tbaa !558
  %i.ohs = zext i16 %i.ohr to i32
  %i.oht = shl nuw i32 %i.ohs, 16
  %i.ohu = bitcast i32 %i.oht to float
  %i.ohv = getelementptr inbounds nuw i8, ptr %.337161.i.i.ph, i64 2
  %i.ohw = load i16, ptr %.337161.i.i.ph, align 2, !tbaa !558
  %i.ohx = zext i16 %i.ohw to i32
  %i.ohy = shl nuw i32 %i.ohx, 16
  %i.ohz = bitcast i32 %i.ohy to float
  %i.oia = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ohu, float %i.ohz)
  %i.oib = bitcast float %i.oia to i32
  %i.oic = lshr i32 %i.oib, 16
  %i.oid = trunc nuw i32 %i.oic to i16
  %i.oie = getelementptr inbounds nuw i8, ptr %.345159.i.i.ph, i64 2
  store i16 %i.oid, ptr %.345159.i.i.ph, align 2, !tbaa !558
  %i.oif = add nuw nsw i32 %.341160.i.i.ph, 1
  br label %.lr.ph163.i.i.prol.loopexit

.lr.ph163.i.i.prol.loopexit:                      ; preds = %.lr.ph163.i.i.prol, %.lr.ph163.i.i.preheader
  %.3162.i.i.unr = phi ptr [ %.3162.i.i.ph, %.lr.ph163.i.i.preheader ], [ %i.ohq, %.lr.ph163.i.i.prol ]
  %.337161.i.i.unr = phi ptr [ %.337161.i.i.ph, %.lr.ph163.i.i.preheader ], [ %i.ohv, %.lr.ph163.i.i.prol ]
  %.341160.i.i.unr = phi i32 [ %.341160.i.i.ph, %.lr.ph163.i.i.preheader ], [ %i.oif, %.lr.ph163.i.i.prol ]
  %.345159.i.i.unr = phi ptr [ %.345159.i.i.ph, %.lr.ph163.i.i.preheader ], [ %i.oie, %.lr.ph163.i.i.prol ]
  %i.oig = icmp eq i32 %i.obt, %.neg11076
  br i1 %i.oig, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph163.i.i

.lr.ph154.i.i:                                    ; preds = %.preheader132.i.i, %.lr.ph154.i.i
  %.2153.i.i = phi ptr [ %i.okn, %.lr.ph154.i.i ], [ %.1.lcssa.i.i1507, %.preheader132.i.i ] ; 2 uses
  %.236152.i.i = phi ptr [ %i.oko, %.lr.ph154.i.i ], [ %.135.lcssa.i.i1506, %.preheader132.i.i ] ; 2 uses
  %.240151.i.i = phi i32 [ %i.okq, %.lr.ph154.i.i ], [ %.139.lcssa.i.i1505, %.preheader132.i.i ]
  %.244150.i.i = phi ptr [ %i.okp, %.lr.ph154.i.i ], [ %.143.lcssa.i.i1504, %.preheader132.i.i ] ; 2 uses
  %i.oih = load i64, ptr %.2153.i.i, align 1, !tbaa !555
  %i.oii = insertelement <2 x i64> poison, i64 %i.oih, i64 0
  %i.oij = bitcast <2 x i64> %i.oii to <8 x i16>
  %i.oik = shufflevector <8 x i16> %i.oij, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 2 uses
  %i.oil = bitcast <8 x i16> %i.oik to <4 x float> ; 3 uses
  %i.oim = load i64, ptr %.236152.i.i, align 1, !tbaa !555
  %i.oin = insertelement <2 x i64> poison, i64 %i.oim, i64 0
  %i.oio = bitcast <2 x i64> %i.oin to <8 x i16>
  %i.oip = shufflevector <8 x i16> %i.oio, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 2 uses
  %i.oiq = bitcast <8 x i16> %i.oip to <4 x float> ; 3 uses
  %i.oir = fcmp fast oeq <4 x float> %i.oiq, zeroinitializer
  %i.ois = fcmp fast oeq <4 x float> %i.oil, zeroinitializer
  %i.oit = fcmp fast olt <4 x float> %i.oiq, zeroinitializer
  %i.oiu = fcmp fast olt <4 x float> %i.oil, zeroinitializer
  %i.oiv = select <4 x i1> %i.oiu, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.oiw = select <4 x i1> %i.oit, <4 x float> %i.oiv, <4 x float> zeroinitializer
  %i.oix = fdiv fast <4 x float> %i.oil, %i.oiq   ; 2 uses
  %i.oiy = bitcast <4 x float> %i.oix to <4 x i32>
  %i.oiz = and <4 x i32> %i.oiy, splat (i32 -2147483648)
  %i.oja = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oix) ; 3 uses
  %i.ojb = fcmp fast ogt <4 x float> %i.oja, splat (float 1.000000e+00) ; 2 uses
  %i.ojc = select <4 x i1> %i.ojb, <4 x float> splat (float -1.000000e+00), <4 x float> %i.oja
  %i.ojd = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.oja, <4 x float> splat (float 1.000000e+00))
  %i.oje = fdiv fast <4 x float> %i.ojc, %i.ojd   ; 3 uses
  %i.ojf = fmul fast <4 x float> %i.oje, %i.oje   ; 3 uses
  %i.ojg = fmul fast <4 x float> %i.ojf, %i.ojf   ; 7 uses
  %i.ojh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ojg, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.oji = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ojg, <4 x float> nofpclass(nan inf) %i.ojh, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.ojj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ojg, <4 x float> nofpclass(nan inf) %i.oji, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.ojk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ojg, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.ojl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ojg, <4 x float> nofpclass(nan inf) %i.ojk, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.ojm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ojg, <4 x float> nofpclass(nan inf) %i.ojl, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.ojn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ojg, <4 x float> nofpclass(nan inf) %i.ojm, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.ojo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ojf, <4 x float> nofpclass(nan inf) %i.ojj, <4 x float> nofpclass(nan inf) %i.ojn)
  %i.ojp = fmul fast <4 x float> %i.ojo, %i.oje
  %i.ojq = select <4 x i1> %i.ojb, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.ojr = fadd fast <4 x float> %i.ojp, %i.ojq
  %i.ojs = bitcast <4 x float> %i.ojr to <4 x i32>
  %i.ojt = or <4 x i32> %i.oiz, %i.ojs
  %i.oju = bitcast <4 x i32> %i.ojt to <4 x float>
  %i.ojv = fadd fast <4 x float> %i.oiw, %i.oju
  %i.ojw = bitcast <8 x i16> %i.oip to <4 x i32>
  %i.ojx = and <4 x i32> %i.ojw, splat (i32 -2147483648)
  %i.ojy = or disjoint <4 x i32> %i.ojx, splat (i32 1078530011)
  %i.ojz = bitcast <4 x i32> %i.ojy to <4 x float>
  %i.oka = fcmp fast uge <4 x float> %i.ojz, zeroinitializer
  %i.okb = bitcast <8 x i16> %i.oik to <4 x i32>
  %i.okc = and <4 x i32> %i.okb, splat (i32 -2147483648)
  %i.okd = or disjoint <4 x i32> %i.okc, splat (i32 1070141403)
  %i.oke = select <4 x i1> %i.oka, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.okf = bitcast <4 x float> %i.ojv to <4 x i32>
  %i.okg = select <4 x i1> %i.oir, <4 x i32> %i.okd, <4 x i32> %i.okf
  %i.okh = select <4 x i1> %i.ois, <4 x i32> %i.oke, <4 x i32> %i.okg
  %i.oki = bitcast <4 x i32> %i.okh to <4 x float>
  %i.okj = shufflevector <4 x float> %i.oki, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.okk = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.okj)
  %i.okl = bitcast <8 x bfloat> %i.okk to <2 x i64>
  %i.okm = extractelement <2 x i64> %i.okl, i64 0
  store i64 %i.okm, ptr %.244150.i.i, align 1, !tbaa !555
  %i.okn = getelementptr inbounds nuw i8, ptr %.2153.i.i, i64 8 ; 2 uses
  %i.oko = getelementptr inbounds nuw i8, ptr %.236152.i.i, i64 8 ; 2 uses
  %i.okp = getelementptr inbounds nuw i8, ptr %.244150.i.i, i64 8 ; 2 uses
  %i.okq = add nuw nsw i32 %.240151.i.i, 4        ; 3 uses
  %i.okr = or disjoint i32 %i.okq, 3
  %i.oks = icmp slt i32 %i.okr, %i.obt
  br i1 %i.oks, label %.lr.ph154.i.i, label %.preheader.i.i1508, !llvm.loop !313

.lr.ph163.i.i:                                    ; preds = %.lr.ph163.i.i.prol.loopexit, %.lr.ph163.i.i
  %.3162.i.i = phi ptr [ %i.oli, %.lr.ph163.i.i ], [ %.3162.i.i.unr, %.lr.ph163.i.i.prol.loopexit ] ; 3 uses
  %.337161.i.i = phi ptr [ %i.oln, %.lr.ph163.i.i ], [ %.337161.i.i.unr, %.lr.ph163.i.i.prol.loopexit ] ; 3 uses
  %.341160.i.i = phi i32 [ %i.olx, %.lr.ph163.i.i ], [ %.341160.i.i.unr, %.lr.ph163.i.i.prol.loopexit ]
  %.345159.i.i = phi ptr [ %i.olw, %.lr.ph163.i.i ], [ %.345159.i.i.unr, %.lr.ph163.i.i.prol.loopexit ] ; 3 uses
  %i.okt = getelementptr inbounds nuw i8, ptr %.3162.i.i, i64 2
  %i.oku = load i16, ptr %.3162.i.i, align 2, !tbaa !558
  %i.okv = zext i16 %i.oku to i32
  %i.okw = shl nuw i32 %i.okv, 16
  %i.okx = bitcast i32 %i.okw to float
  %i.oky = getelementptr inbounds nuw i8, ptr %.337161.i.i, i64 2
  %i.okz = load i16, ptr %.337161.i.i, align 2, !tbaa !558
  %i.ola = zext i16 %i.okz to i32
  %i.olb = shl nuw i32 %i.ola, 16
  %i.olc = bitcast i32 %i.olb to float
  %i.old = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.okx, float %i.olc)
  %i.ole = bitcast float %i.old to i32
  %i.olf = lshr i32 %i.ole, 16
  %i.olg = trunc nuw i32 %i.olf to i16
  %i.olh = getelementptr inbounds nuw i8, ptr %.345159.i.i, i64 2
  store i16 %i.olg, ptr %.345159.i.i, align 2, !tbaa !558
  %i.oli = getelementptr inbounds nuw i8, ptr %.3162.i.i, i64 4
  %i.olj = load i16, ptr %i.okt, align 2, !tbaa !558
  %i.olk = zext i16 %i.olj to i32
  %i.oll = shl nuw i32 %i.olk, 16
  %i.olm = bitcast i32 %i.oll to float
  %i.oln = getelementptr inbounds nuw i8, ptr %.337161.i.i, i64 4
  %i.olo = load i16, ptr %i.oky, align 2, !tbaa !558
  %i.olp = zext i16 %i.olo to i32
  %i.olq = shl nuw i32 %i.olp, 16
  %i.olr = bitcast i32 %i.olq to float
  %i.ols = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.olm, float %i.olr)
  %i.olt = bitcast float %i.ols to i32
  %i.olu = lshr i32 %i.olt, 16
  %i.olv = trunc nuw i32 %i.olu to i16
  %i.olw = getelementptr inbounds nuw i8, ptr %.345159.i.i, i64 4
  store i16 %i.olv, ptr %i.olh, align 2, !tbaa !558
  %i.olx = add nuw nsw i32 %.341160.i.i, 2        ; 2 uses
  %exitcond.not.i.i1513.1 = icmp eq i32 %i.olx, %i.obt
  br i1 %exitcond.not.i.i1513.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph163.i.i, !llvm.loop !314

bb.ju:                                            ; preds = %bb.js
  %i.oly = icmp eq i32 %4, 1
  br i1 %i.oly, label %bb.jv, label %bb.ke

bb.jv:                                            ; preds = %bb.ju
  %i.olz = load i16, ptr %1, align 2, !tbaa !558
  %i.oma = zext i16 %i.olz to i32
  %i.omb = shl nuw i32 %i.oma, 16
  %i.omc = bitcast i32 %i.omb to float            ; 15 uses
  %i.omd = icmp eq i32 %.sroa.speculated.i1470, 4
  br i1 %i.omd, label %.thread129.i.i, label %bb.jw

.thread129.i.i:                                   ; preds = %bb.jv
  %i.ome = load i64, ptr %1, align 2, !tbaa !555
  %i.omf = insertelement <2 x i64> poison, i64 %i.ome, i64 0
  %i.omg = bitcast <2 x i64> %i.omf to <8 x i16>
  %i.omh = shufflevector <8 x i16> %i.omg, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.omi = bitcast <8 x i16> %i.omh to <4 x float> ; 2 uses
  %i.omj = shufflevector <4 x float> %i.omi, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.jz

bb.jw:                                            ; preds = %bb.jv
  %i.omk = insertelement <4 x float> poison, float %i.omc, i64 0 ; 2 uses
  %i.oml = shufflevector <4 x float> %i.omk, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.omm = icmp eq i32 %.sroa.speculated.i1470, 8
  br i1 %i.omm, label %.thread128.i.i, label %bb.jx

.thread128.i.i:                                   ; preds = %bb.jw
  %i.omn = load <8 x bfloat>, ptr %1, align 2, !tbaa !555
  %i.omo = fpext fast <8 x bfloat> %i.omn to <8 x float>
  br label %bb.jz

bb.jx:                                            ; preds = %bb.jw
  %i.omp = shufflevector <4 x float> %i.omk, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.omq = icmp eq i32 %.sroa.speculated.i1470, 16
  br i1 %i.omq, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  %i.omr = load <16 x bfloat>, ptr %1, align 2, !tbaa !555
  %i.oms = fpext fast <16 x bfloat> %i.omr to <16 x float>
  br label %bb.ka

bb.jz:                                            ; preds = %bb.jx, %.thread128.i.i, %.thread129.i.i
  %i.omt = phi <8 x float> [ %i.omo, %.thread128.i.i ], [ %i.omp, %bb.jx ], [ %i.omj, %.thread129.i.i ] ; 2 uses
  %i.omu = phi <4 x float> [ %i.oml, %.thread128.i.i ], [ %i.oml, %bb.jx ], [ %i.omi, %.thread129.i.i ]
  %i.omv = shufflevector <8 x float> %i.omt, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %bb.jy
  %i.omw = phi <8 x float> [ %i.omp, %bb.jy ], [ %i.omt, %bb.jz ] ; 4 uses
  %i.omx = phi <4 x float> [ %i.oml, %bb.jy ], [ %i.omu, %bb.jz ] ; 4 uses
  %i.omy = phi fast <16 x float> [ %i.oms, %bb.jy ], [ %i.omv, %bb.jz ] ; 4 uses
  %i.omz = icmp sgt i32 %i.obt, 15
  br i1 %i.omz, label %.lr.ph.i42.i1499, label %.preheader136.i.i

.lr.ph.i42.i1499:                                 ; preds = %bb.ka
  %i.ona = fcmp fast one <16 x float> %i.omy, zeroinitializer
  %i.onb = fcmp fast olt <16 x float> %i.omy, zeroinitializer
  %i.onc = bitcast <16 x float> %i.omy to <16 x i32>
  %i.ond = icmp slt <16 x i32> %i.onc, zeroinitializer
  %i.one = select fast <16 x i1> %i.ond, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.onf = fdiv fast <16 x float> splat (float 1.000000e+00), %i.omy
  br label %bb.kb

.preheader136.loopexit.i.i:                       ; preds = %bb.kb
  %i.ong = and i32 %i.obt, 2147483632
  br label %.preheader136.i.i

.preheader136.i.i:                                ; preds = %.preheader136.loopexit.i.i, %bb.ka
  %.039.lcssa.i.i1488 = phi i32 [ 0, %bb.ka ], [ %i.ong, %.preheader136.loopexit.i.i ] ; 3 uses
  %.035.lcssa.i.i1489 = phi ptr [ %2, %bb.ka ], [ %i.ooy, %.preheader136.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i34.i1490 = phi ptr [ %0, %bb.ka ], [ %i.oox, %.preheader136.loopexit.i.i ] ; 2 uses
  %i.onh = or disjoint i32 %.039.lcssa.i.i1488, 7
  %i.oni = icmp slt i32 %i.onh, %i.obt
  br i1 %i.oni, label %.lr.ph145.i40.i, label %.preheader135.i.i

.lr.ph145.i40.i:                                  ; preds = %.preheader136.i.i
  %i.onj = fcmp fast ueq <8 x float> %i.omw, zeroinitializer
  %i.onk = fcmp fast olt <8 x float> %i.omw, zeroinitializer
  %i.onl = bitcast <8 x float> %i.omw to <8 x i32>
  %isneg.inv132.i.i = icmp slt <8 x i32> %i.onl, zeroinitializer
  %i.onm = select <8 x i1> %isneg.inv132.i.i, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.onn = fdiv fast <8 x float> splat (float 1.000000e+00), %i.omw
  br label %bb.kc

bb.kb:                                            ; preds = %bb.kb, %.lr.ph.i42.i1499
  %.0139.i.i = phi ptr [ %0, %.lr.ph.i42.i1499 ], [ %i.oox, %bb.kb ] ; 2 uses
  %.035138.i.i = phi ptr [ %2, %.lr.ph.i42.i1499 ], [ %i.ooy, %bb.kb ] ; 2 uses
  %.039137.i.i = phi i32 [ 0, %.lr.ph.i42.i1499 ], [ %i.ooz, %bb.kb ]
  %i.ono = load <16 x bfloat>, ptr %.0139.i.i, align 1, !tbaa !555 ; 3 uses
  %i.onp = fpext fast <16 x bfloat> %i.ono to <16 x float> ; 2 uses
  %i.onq = fcmp fast one <16 x bfloat> %i.ono, zeroinitializer
  %i.onr = fcmp fast olt <16 x bfloat> %i.ono, zeroinitializer
  %i.ons = select fast <16 x i1> %i.onr, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.ont = select fast <16 x i1> %i.onb, <16 x float> %i.ons, <16 x float> zeroinitializer
  %i.onu = fmul fast <16 x float> %i.onp, %i.onf  ; 2 uses
  %i.onv = bitcast <16 x float> %i.onu to <16 x i32>
  %i.onw = and <16 x i32> %i.onv, splat (i32 -2147483648)
  %i.onx = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.onu) ; 3 uses
  %i.ony = fcmp fast ogt <16 x float> %i.onx, splat (float 1.000000e+00) ; 2 uses
  %i.onz = select fast <16 x i1> %i.ony, <16 x float> splat (float -1.000000e+00), <16 x float> %i.onx
  %i.ooa = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.onx, <16 x float> splat (float 1.000000e+00))
  %i.oob = fdiv fast <16 x float> %i.onz, %i.ooa  ; 3 uses
  %i.ooc = fmul fast <16 x float> %i.oob, %i.oob  ; 3 uses
  %i.ood = fmul fast <16 x float> %i.ooc, %i.ooc  ; 7 uses
  %i.ooe = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ood, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.oof = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ood, <16 x float> nofpclass(nan inf) %i.ooe, <16 x float> splat (float f0xBE117200))
  %i.oog = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ood, <16 x float> nofpclass(nan inf) %i.oof, <16 x float> splat (float f0xBEAAAA53))
  %i.ooh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ood, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.ooi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ood, <16 x float> nofpclass(nan inf) %i.ooh, <16 x float> splat (float f0x3DD9ED24))
  %i.ooj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ood, <16 x float> nofpclass(nan inf) %i.ooi, <16 x float> splat (float f0x3E4CB974))
  %i.ook = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ood, <16 x float> nofpclass(nan inf) %i.ooj, <16 x float> splat (float 1.000000e+00))
  %i.ool = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ooc, <16 x float> nofpclass(nan inf) %i.oog, <16 x float> nofpclass(nan inf) %i.ook)
  %i.oom = fmul fast <16 x float> %i.ool, %i.oob
  %i.oon = select fast <16 x i1> %i.ony, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.ooo = fadd fast <16 x float> %i.oom, %i.oon
  %i.oop = bitcast <16 x float> %i.ooo to <16 x i32>
  %i.ooq = or <16 x i32> %i.onw, %i.oop
  %i.oor = bitcast <16 x i32> %i.ooq to <16 x float>
  %i.oos = fadd fast <16 x float> %i.ont, %i.oor
  %i.oot = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.onp)
  %i.oou = select <16 x i1> %i.ona, <16 x float> %i.oos, <16 x float> %i.oot
  %i.oov = select <16 x i1> %i.onq, <16 x float> %i.oou, <16 x float> %i.one
  %i.oow = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.oov)
  store <16 x bfloat> %i.oow, ptr %.035138.i.i, align 1, !tbaa !555
  %i.oox = getelementptr inbounds nuw i8, ptr %.0139.i.i, i64 32 ; 2 uses
  %i.ooy = getelementptr inbounds nuw i8, ptr %.035138.i.i, i64 32 ; 2 uses
  %i.ooz = add nuw nsw i32 %.039137.i.i, 16       ; 2 uses
  %i.opa = or disjoint i32 %i.ooz, 15
  %i.opb = icmp slt i32 %i.opa, %i.obt
  br i1 %i.opb, label %bb.kb, label %.preheader136.loopexit.i.i, !llvm.loop !315

.preheader135.i.i:                                ; preds = %bb.kc, %.preheader136.i.i
  %.140.lcssa.i.i1491 = phi i32 [ %.039.lcssa.i.i1488, %.preheader136.i.i ], [ %i.oqy, %bb.kc ] ; 3 uses
  %.136.lcssa.i.i1492 = phi ptr [ %.035.lcssa.i.i1489, %.preheader136.i.i ], [ %i.oqx, %bb.kc ] ; 2 uses
  %.1.lcssa.i35.i1493 = phi ptr [ %.0.lcssa.i34.i1490, %.preheader136.i.i ], [ %i.oqw, %bb.kc ] ; 2 uses
  %i.opc = or disjoint i32 %.140.lcssa.i.i1491, 3
  %i.opd = icmp slt i32 %i.opc, %i.obt
  br i1 %i.opd, label %.lr.ph152.i.i, label %.preheader.i36.i1494

.lr.ph152.i.i:                                    ; preds = %.preheader135.i.i
  %i.ope = fcmp fast oeq <4 x float> %i.omx, zeroinitializer
  %i.opf = fcmp fast olt <4 x float> %i.omx, zeroinitializer
  %i.opg = bitcast <4 x float> %i.omx to <4 x i32>
  %isneg.inv.i.i = icmp slt <4 x i32> %i.opg, zeroinitializer
  %i.oph = select <4 x i1> %isneg.inv.i.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.opi = fdiv fast <4 x float> splat (float 1.000000e+00), %i.omx
  br label %bb.kd

bb.kc:                                            ; preds = %bb.kc, %.lr.ph145.i40.i
  %.1144.i41.i = phi ptr [ %.0.lcssa.i34.i1490, %.lr.ph145.i40.i ], [ %i.oqw, %bb.kc ] ; 2 uses
  %.136143.i.i = phi ptr [ %.035.lcssa.i.i1489, %.lr.ph145.i40.i ], [ %i.oqx, %bb.kc ] ; 2 uses
  %.140142.i.i = phi i32 [ %.039.lcssa.i.i1488, %.lr.ph145.i40.i ], [ %i.oqy, %bb.kc ]
  %i.opj = load <8 x bfloat>, ptr %.1144.i41.i, align 1, !tbaa !555 ; 3 uses
  %i.opk = fpext fast <8 x bfloat> %i.opj to <8 x float> ; 2 uses
  %i.opl = fcmp fast ueq <8 x bfloat> %i.opj, zeroinitializer
  %i.opm = bitcast <8 x float> %i.opk to <8 x i32>
  %i.opn = and <8 x i32> %i.opm, splat (i32 -2147483648)
  %i.opo = fcmp fast olt <8 x bfloat> %i.opj, zeroinitializer
  %i.opp = select <8 x i1> %i.opo, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.opq = select <8 x i1> %i.onk, <8 x float> %i.opp, <8 x float> zeroinitializer
  %i.opr = fmul fast <8 x float> %i.opk, %i.onn   ; 2 uses
  %i.ops = bitcast <8 x float> %i.opr to <8 x i32>
  %i.opt = and <8 x i32> %i.ops, splat (i32 -2147483648)
  %i.opu = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.opr) ; 3 uses
  %i.opv = fcmp fast ogt <8 x float> %i.opu, splat (float 1.000000e+00) ; 2 uses
  %i.opw = select <8 x i1> %i.opv, <8 x float> splat (float -1.000000e+00), <8 x float> %i.opu
  %i.opx = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.opu, <8 x float> splat (float 1.000000e+00))
  %i.opy = fdiv fast <8 x float> %i.opw, %i.opx   ; 3 uses
  %i.opz = fmul fast <8 x float> %i.opy, %i.opy   ; 3 uses
  %i.oqa = fmul fast <8 x float> %i.opz, %i.opz   ; 7 uses
  %i.oqb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oqa, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.oqc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oqa, <8 x float> nofpclass(nan inf) %i.oqb, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.oqd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oqa, <8 x float> nofpclass(nan inf) %i.oqc, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.oqe = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oqa, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.oqf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oqa, <8 x float> nofpclass(nan inf) %i.oqe, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.oqg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oqa, <8 x float> nofpclass(nan inf) %i.oqf, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.oqh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oqa, <8 x float> nofpclass(nan inf) %i.oqg, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.oqi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.opz, <8 x float> nofpclass(nan inf) %i.oqd, <8 x float> nofpclass(nan inf) %i.oqh)
  %i.oqj = fmul fast <8 x float> %i.oqi, %i.opy
  %i.oqk = select <8 x i1> %i.opv, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.oql = fadd fast <8 x float> %i.oqj, %i.oqk
  %i.oqm = bitcast <8 x float> %i.oql to <8 x i32>
  %i.oqn = or <8 x i32> %i.opt, %i.oqm
  %i.oqo = bitcast <8 x i32> %i.oqn to <8 x float>
  %i.oqp = fadd fast <8 x float> %i.opq, %i.oqo
  %i.oqq = or disjoint <8 x i32> %i.opn, splat (i32 1070141403)
  %i.oqr = bitcast <8 x float> %i.oqp to <8 x i32>
  %i.oqs = select <8 x i1> %i.onj, <8 x i32> %i.oqq, <8 x i32> %i.oqr
  %i.oqt = select <8 x i1> %i.opl, <8 x i32> %i.onm, <8 x i32> %i.oqs
  %i.oqu = bitcast <8 x i32> %i.oqt to <8 x float>
  %i.oqv = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.oqu)
  store <8 x bfloat> %i.oqv, ptr %.136143.i.i, align 1, !tbaa !555
  %i.oqw = getelementptr inbounds nuw i8, ptr %.1144.i41.i, i64 16 ; 2 uses
  %i.oqx = getelementptr inbounds nuw i8, ptr %.136143.i.i, i64 16 ; 2 uses
  %i.oqy = add nuw nsw i32 %.140142.i.i, 8        ; 3 uses
  %i.oqz = or disjoint i32 %i.oqy, 7
  %i.ora = icmp slt i32 %i.oqz, %i.obt
  br i1 %i.ora, label %bb.kc, label %.preheader135.i.i, !llvm.loop !316

.preheader.i36.i1494:                             ; preds = %bb.kd, %.preheader135.i.i
  %.241.lcssa.i.i1495 = phi i32 [ %.140.lcssa.i.i1491, %.preheader135.i.i ], [ %i.owm, %bb.kd ] ; 5 uses
  %.237.lcssa.i.i1496 = phi ptr [ %.136.lcssa.i.i1492, %.preheader135.i.i ], [ %i.owl, %bb.kd ] ; 6 uses
  %.2.lcssa.i37.i1497 = phi ptr [ %.1.lcssa.i35.i1493, %.preheader135.i.i ], [ %i.owk, %bb.kd ] ; 6 uses
  %i.orb = icmp slt i32 %.241.lcssa.i.i1495, %i.obt
  br i1 %i.orb, label %iter.check7296, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7296:                                   ; preds = %.preheader.i36.i1494
  %.237.lcssa.i.i14967280 = ptrtoaddr ptr %.237.lcssa.i.i1496 to i64
  %.2.lcssa.i37.i14977279 = ptrtoaddr ptr %.2.lcssa.i37.i1497 to i64
  %i.orc = xor i32 %.241.lcssa.i.i1495, -1
  %i.ord = add i32 %i.obt, %i.orc                 ; 3 uses
  %i.ore = zext i32 %i.ord to i64
  %i.orf = add nuw nsw i64 %i.ore, 1              ; 5 uses
  %min.iters.check7281 = icmp ult i32 %i.ord, 7
  %i.org = sub i64 %.2.lcssa.i37.i14977279, %.237.lcssa.i.i14967280
  %diff.check7283 = icmp ugt i64 %i.org, -64
  %or.cond9219.a = select i1 %min.iters.check7281, i1 true, i1 %diff.check7283
  br i1 %or.cond9219.a, label %.lr.ph159.i.i.preheader, label %vector.main.loop.iter.check7284

vector.main.loop.iter.check7284:                  ; preds = %iter.check7296
  %min.iters.check7285 = icmp ult i32 %i.ord, 31
  br i1 %min.iters.check7285, label %vec.epilog.ph7300, label %vector.ph7286

vector.ph7286:                                    ; preds = %vector.main.loop.iter.check7284
  %i.orh = and i64 %i.orf, 24
  %n.vec7287 = and i64 %i.orf, 8589934560         ; 5 uses
  %i.ori = shl nuw nsw i64 %n.vec7287, 1          ; 2 uses
  %i.orj = getelementptr i8, ptr %.2.lcssa.i37.i1497, i64 %i.ori
  %i.ork = getelementptr i8, ptr %.237.lcssa.i.i1496, i64 %i.ori
  %i.orl = trunc i64 %n.vec7287 to i32
  %i.orm = add i32 %.241.lcssa.i.i1495, %i.orl
  %i.orn = insertelement <16 x float> poison, float %i.omc, i64 0
  %i.oro = shufflevector <16 x float> %i.orn, <16 x float> poison, <16 x i32> zeroinitializer
  %i.orp = insertelement <8 x float> poison, float %i.omc, i64 0
  %i.orq = shufflevector <8 x float> %i.orp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.orr = insertelement <4 x float> poison, float %i.omc, i64 0
  %i.ors = shufflevector <4 x float> %i.orr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ort = insertelement <2 x float> poison, float %i.omc, i64 0
  %i.oru = shufflevector <2 x float> %i.ort, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7288

vector.body7288:                                  ; preds = %vector.ph7286, %vector.body7288
  %index7289 = phi i64 [ 0, %vector.ph7286 ], [ %index.next7293, %vector.body7288 ] ; 2 uses
  %i.orv = shl i64 %index7289, 1                  ; 2 uses
  %next.gep7290 = getelementptr i8, ptr %.2.lcssa.i37.i1497, i64 %i.orv
  %next.gep7291 = getelementptr i8, ptr %.237.lcssa.i.i1496, i64 %i.orv
  %wide.load7292 = load <32 x i16>, ptr %next.gep7290, align 2, !tbaa !558
  %i.orw = zext <32 x i16> %wide.load7292 to <32 x i32>
  %i.orx = shl nuw <32 x i32> %i.orw, splat (i32 16)
  %i.ory = bitcast <32 x i32> %i.orx to <32 x float> ; 6 uses
  %i.orz = extractelement <32 x float> %i.ory, i64 0
  %i.osa = tail call fast float @llvm.atan2.f32(float %i.orz, float %i.omc)
  %i.osb = shufflevector <32 x float> %i.ory, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.osc = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.osb, <16 x float> %i.oro)
  %i.osd = shufflevector <32 x float> %i.ory, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.ose = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.osd, <8 x float> %i.orq)
  %i.osf = shufflevector <32 x float> %i.ory, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.osg = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.osf, <4 x float> %i.ors)
  %i.osh = extractelement <32 x float> %i.ory, i64 29
  %i.osi = tail call fast float @llvm.atan2.f32(float %i.osh, float %i.omc)
  %i.osj = shufflevector <32 x float> %i.ory, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.osk = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.osj, <2 x float> %i.oru)
  %i.osl = insertelement <32 x float> poison, float %i.osa, i64 0
  %i.osm = shufflevector <16 x float> %i.osc, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.osn = shufflevector <32 x float> %i.osl, <32 x float> %i.osm, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.oso = shufflevector <8 x float> %i.ose, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.osp = shufflevector <32 x float> %i.osn, <32 x float> %i.oso, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.osq = shufflevector <4 x float> %i.osg, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.osr = shufflevector <32 x float> %i.osp, <32 x float> %i.osq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.oss = insertelement <32 x float> %i.osr, float %i.osi, i64 29
  %i.ost = shufflevector <2 x float> %i.osk, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.osu = shufflevector <32 x float> %i.oss, <32 x float> %i.ost, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.osv = bitcast <32 x float> %i.osu to <32 x i32>
  %i.osw = lshr <32 x i32> %i.osv, splat (i32 16)
  %i.osx = trunc nuw <32 x i32> %i.osw to <32 x i16>
  store <32 x i16> %i.osx, ptr %next.gep7291, align 2, !tbaa !558
  %index.next7293 = add nuw i64 %index7289, 32    ; 2 uses
  %i.osy = icmp eq i64 %index.next7293, %n.vec7287
  br i1 %i.osy, label %middle.block7294, label %vector.body7288, !llvm.loop !317

middle.block7294:                                 ; preds = %vector.body7288
  %cmp.n7295 = icmp eq i64 %i.orf, %n.vec7287
  br i1 %cmp.n7295, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7297

vec.epilog.iter.check7297:                        ; preds = %middle.block7294
  %min.epilog.iters.check7299 = icmp eq i64 %i.orh, 0
  br i1 %min.epilog.iters.check7299, label %.lr.ph159.i.i.preheader, label %vec.epilog.ph7300, !prof !561

vec.epilog.ph7300:                                ; preds = %vector.main.loop.iter.check7284, %vec.epilog.iter.check7297
  %vec.epilog.resume.val7301 = phi i64 [ %n.vec7287, %vec.epilog.iter.check7297 ], [ 0, %vector.main.loop.iter.check7284 ]
  %n.vec7302 = and i64 %i.orf, 8589934584         ; 4 uses
  %i.osz = shl nuw nsw i64 %n.vec7302, 1          ; 2 uses
  %i.ota = getelementptr i8, ptr %.2.lcssa.i37.i1497, i64 %i.osz
  %i.otb = getelementptr i8, ptr %.237.lcssa.i.i1496, i64 %i.osz
  %i.otc = trunc i64 %n.vec7302 to i32
  %i.otd = add i32 %.241.lcssa.i.i1495, %i.otc
  %i.ote = insertelement <4 x float> poison, float %i.omc, i64 0
  %i.otf = shufflevector <4 x float> %i.ote, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7303

vec.epilog.vector.body7303:                       ; preds = %vec.epilog.vector.body7303, %vec.epilog.ph7300
  %index7304 = phi i64 [ %vec.epilog.resume.val7301, %vec.epilog.ph7300 ], [ %index.next7308, %vec.epilog.vector.body7303 ] ; 2 uses
  %i.otg = shl i64 %index7304, 1                  ; 2 uses
  %next.gep7305 = getelementptr i8, ptr %.2.lcssa.i37.i1497, i64 %i.otg
  %next.gep7306 = getelementptr i8, ptr %.237.lcssa.i.i1496, i64 %i.otg
  %wide.load7307 = load <8 x i16>, ptr %next.gep7305, align 2, !tbaa !558
  %i.oth = zext <8 x i16> %wide.load7307 to <8 x i32>
  %i.oti = shl nuw <8 x i32> %i.oth, splat (i32 16)
  %i.otj = bitcast <8 x i32> %i.oti to <8 x float> ; 5 uses
  %i.otk = extractelement <8 x float> %i.otj, i64 0
  %i.otl = tail call fast float @llvm.atan2.f32(float %i.otk, float %i.omc)
  %i.otm = extractelement <8 x float> %i.otj, i64 1
  %i.otn = tail call fast float @llvm.atan2.f32(float %i.otm, float %i.omc)
  %i.oto = extractelement <8 x float> %i.otj, i64 2
  %i.otp = tail call fast float @llvm.atan2.f32(float %i.oto, float %i.omc)
  %i.otq = shufflevector <8 x float> %i.otj, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.otr = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.otq, <4 x float> %i.otf)
  %i.ots = extractelement <8 x float> %i.otj, i64 7
  %i.ott = tail call fast float @llvm.atan2.f32(float %i.ots, float %i.omc)
  %i.otu = insertelement <8 x float> poison, float %i.otl, i64 0
  %i.otv = insertelement <8 x float> %i.otu, float %i.otn, i64 1
  %i.otw = insertelement <8 x float> %i.otv, float %i.otp, i64 2
  %i.otx = shufflevector <4 x float> %i.otr, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.oty = shufflevector <8 x float> %i.otw, <8 x float> %i.otx, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.otz = insertelement <8 x float> %i.oty, float %i.ott, i64 7
  %i.oua = bitcast <8 x float> %i.otz to <8 x i32>
  %i.oub = lshr <8 x i32> %i.oua, splat (i32 16)
  %i.ouc = trunc nuw <8 x i32> %i.oub to <8 x i16>
  store <8 x i16> %i.ouc, ptr %next.gep7306, align 2, !tbaa !558
  %index.next7308 = add nuw i64 %index7304, 8     ; 2 uses
  %i.oud = icmp eq i64 %index.next7308, %n.vec7302
  br i1 %i.oud, label %vec.epilog.middle.block7309, label %vec.epilog.vector.body7303, !llvm.loop !318

vec.epilog.middle.block7309:                      ; preds = %vec.epilog.vector.body7303
  %cmp.n7310 = icmp eq i64 %i.orf, %n.vec7302
  br i1 %cmp.n7310, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i.i.preheader

.lr.ph159.i.i.preheader:                          ; preds = %iter.check7296, %vec.epilog.iter.check7297, %vec.epilog.middle.block7309
  %.3158.i.i.ph = phi ptr [ %.2.lcssa.i37.i1497, %iter.check7296 ], [ %i.orj, %vec.epilog.iter.check7297 ], [ %i.ota, %vec.epilog.middle.block7309 ] ; 3 uses
  %.338157.i.i.ph = phi ptr [ %.237.lcssa.i.i1496, %iter.check7296 ], [ %i.ork, %vec.epilog.iter.check7297 ], [ %i.otb, %vec.epilog.middle.block7309 ] ; 3 uses
  %.342156.i.i.ph = phi i32 [ %.241.lcssa.i.i1495, %iter.check7296 ], [ %i.orm, %vec.epilog.iter.check7297 ], [ %i.otd, %vec.epilog.middle.block7309 ] ; 4 uses
  %i.oue = sub i32 %i.obt, %.342156.i.i.ph
  %.neg11075 = add i32 %.342156.i.i.ph, 1
  %xtraiter10479 = and i32 %i.oue, 1
  %lcmp.mod10480.not = icmp eq i32 %xtraiter10479, 0
  br i1 %lcmp.mod10480.not, label %.lr.ph159.i.i.prol.loopexit, label %.lr.ph159.i.i.prol

.lr.ph159.i.i.prol:                               ; preds = %.lr.ph159.i.i.preheader
  %i.ouf = getelementptr inbounds nuw i8, ptr %.3158.i.i.ph, i64 2
  %i.oug = load i16, ptr %.3158.i.i.ph, align 2, !tbaa !558
  %i.ouh = zext i16 %i.oug to i32
  %i.oui = shl nuw i32 %i.ouh, 16
  %i.ouj = bitcast i32 %i.oui to float
  %i.ouk = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ouj, float %i.omc)
  %i.oul = bitcast float %i.ouk to i32
  %i.oum = lshr i32 %i.oul, 16
  %i.oun = trunc nuw i32 %i.oum to i16
  %i.ouo = getelementptr inbounds nuw i8, ptr %.338157.i.i.ph, i64 2
  store i16 %i.oun, ptr %.338157.i.i.ph, align 2, !tbaa !558
  %i.oup = add nuw nsw i32 %.342156.i.i.ph, 1
  br label %.lr.ph159.i.i.prol.loopexit

.lr.ph159.i.i.prol.loopexit:                      ; preds = %.lr.ph159.i.i.prol, %.lr.ph159.i.i.preheader
  %.3158.i.i.unr = phi ptr [ %.3158.i.i.ph, %.lr.ph159.i.i.preheader ], [ %i.ouf, %.lr.ph159.i.i.prol ]
  %.338157.i.i.unr = phi ptr [ %.338157.i.i.ph, %.lr.ph159.i.i.preheader ], [ %i.ouo, %.lr.ph159.i.i.prol ]
  %.342156.i.i.unr = phi i32 [ %.342156.i.i.ph, %.lr.ph159.i.i.preheader ], [ %i.oup, %.lr.ph159.i.i.prol ]
  %i.ouq = icmp eq i32 %i.obt, %.neg11075
  br i1 %i.ouq, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i.i

bb.kd:                                            ; preds = %bb.kd, %.lr.ph152.i.i
  %.2151.i.i = phi ptr [ %.1.lcssa.i35.i1493, %.lr.ph152.i.i ], [ %i.owk, %bb.kd ] ; 2 uses
  %.237150.i.i = phi ptr [ %.136.lcssa.i.i1492, %.lr.ph152.i.i ], [ %i.owl, %bb.kd ] ; 2 uses
  %.241149.i.i = phi i32 [ %.140.lcssa.i.i1491, %.lr.ph152.i.i ], [ %i.owm, %bb.kd ]
  %i.our = load i64, ptr %.2151.i.i, align 1, !tbaa !555
  %i.ous = insertelement <2 x i64> poison, i64 %i.our, i64 0
  %i.out = bitcast <2 x i64> %i.ous to <8 x i16>
  %i.ouu = shufflevector <8 x i16> %i.out, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 2 uses
  %i.ouv = bitcast <8 x i16> %i.ouu to <4 x float> ; 3 uses
  %i.ouw = fcmp fast oeq <4 x float> %i.ouv, zeroinitializer
  %i.oux = fcmp fast olt <4 x float> %i.ouv, zeroinitializer
  %i.ouy = select <4 x i1> %i.oux, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.ouz = select <4 x i1> %i.opf, <4 x float> %i.ouy, <4 x float> zeroinitializer
  %i.ova = fmul fast <4 x float> %i.ouv, %i.opi   ; 2 uses
  %i.ovb = bitcast <4 x float> %i.ova to <4 x i32>
  %i.ovc = and <4 x i32> %i.ovb, splat (i32 -2147483648)
  %i.ovd = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ova) ; 3 uses
  %i.ove = fcmp fast ogt <4 x float> %i.ovd, splat (float 1.000000e+00) ; 2 uses
  %i.ovf = select <4 x i1> %i.ove, <4 x float> splat (float -1.000000e+00), <4 x float> %i.ovd
  %i.ovg = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ovd, <4 x float> splat (float 1.000000e+00))
  %i.ovh = fdiv fast <4 x float> %i.ovf, %i.ovg   ; 3 uses
  %i.ovi = fmul fast <4 x float> %i.ovh, %i.ovh   ; 3 uses
  %i.ovj = fmul fast <4 x float> %i.ovi, %i.ovi   ; 7 uses
  %i.ovk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ovj, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.ovl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ovj, <4 x float> nofpclass(nan inf) %i.ovk, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.ovm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ovj, <4 x float> nofpclass(nan inf) %i.ovl, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.ovn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ovj, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.ovo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ovj, <4 x float> nofpclass(nan inf) %i.ovn, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.ovp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ovj, <4 x float> nofpclass(nan inf) %i.ovo, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.ovq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ovj, <4 x float> nofpclass(nan inf) %i.ovp, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.ovr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ovi, <4 x float> nofpclass(nan inf) %i.ovm, <4 x float> nofpclass(nan inf) %i.ovq)
  %i.ovs = fmul fast <4 x float> %i.ovr, %i.ovh
  %i.ovt = select <4 x i1> %i.ove, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.ovu = fadd fast <4 x float> %i.ovs, %i.ovt
  %i.ovv = bitcast <4 x float> %i.ovu to <4 x i32>
  %i.ovw = or <4 x i32> %i.ovc, %i.ovv
  %i.ovx = bitcast <4 x i32> %i.ovw to <4 x float>
  %i.ovy = fadd fast <4 x float> %i.ouz, %i.ovx
  %i.ovz = bitcast <8 x i16> %i.ouu to <4 x i32>
  %i.owa = and <4 x i32> %i.ovz, splat (i32 -2147483648)
  %i.owb = or disjoint <4 x i32> %i.owa, splat (i32 1070141403)
  %i.owc = bitcast <4 x float> %i.ovy to <4 x i32>
  %i.owd = select <4 x i1> %i.ope, <4 x i32> %i.owb, <4 x i32> %i.owc
  %i.owe = select <4 x i1> %i.ouw, <4 x i32> %i.oph, <4 x i32> %i.owd
  %i.owf = bitcast <4 x i32> %i.owe to <4 x float>
  %i.owg = shufflevector <4 x float> %i.owf, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.owh = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.owg)
  %i.owi = bitcast <8 x bfloat> %i.owh to <2 x i64>
  %i.owj = extractelement <2 x i64> %i.owi, i64 0
  store i64 %i.owj, ptr %.237150.i.i, align 1, !tbaa !555
  %i.owk = getelementptr inbounds nuw i8, ptr %.2151.i.i, i64 8 ; 2 uses
  %i.owl = getelementptr inbounds nuw i8, ptr %.237150.i.i, i64 8 ; 2 uses
  %i.owm = add nuw nsw i32 %.241149.i.i, 4        ; 3 uses
  %i.own = or disjoint i32 %i.owm, 3
  %i.owo = icmp slt i32 %i.own, %i.obt
  br i1 %i.owo, label %bb.kd, label %.preheader.i36.i1494, !llvm.loop !319

.lr.ph159.i.i:                                    ; preds = %.lr.ph159.i.i.prol.loopexit, %.lr.ph159.i.i
  %.3158.i.i = phi ptr [ %i.owz, %.lr.ph159.i.i ], [ %.3158.i.i.unr, %.lr.ph159.i.i.prol.loopexit ] ; 3 uses
  %.338157.i.i = phi ptr [ %i.oxi, %.lr.ph159.i.i ], [ %.338157.i.i.unr, %.lr.ph159.i.i.prol.loopexit ] ; 3 uses
  %.342156.i.i = phi i32 [ %i.oxj, %.lr.ph159.i.i ], [ %.342156.i.i.unr, %.lr.ph159.i.i.prol.loopexit ]
  %i.owp = getelementptr inbounds nuw i8, ptr %.3158.i.i, i64 2
  %i.owq = load i16, ptr %.3158.i.i, align 2, !tbaa !558
  %i.owr = zext i16 %i.owq to i32
  %i.ows = shl nuw i32 %i.owr, 16
  %i.owt = bitcast i32 %i.ows to float
  %i.owu = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.owt, float %i.omc)
  %i.owv = bitcast float %i.owu to i32
  %i.oww = lshr i32 %i.owv, 16
  %i.owx = trunc nuw i32 %i.oww to i16
  %i.owy = getelementptr inbounds nuw i8, ptr %.338157.i.i, i64 2
  store i16 %i.owx, ptr %.338157.i.i, align 2, !tbaa !558
  %i.owz = getelementptr inbounds nuw i8, ptr %.3158.i.i, i64 4
  %i.oxa = load i16, ptr %i.owp, align 2, !tbaa !558
  %i.oxb = zext i16 %i.oxa to i32
  %i.oxc = shl nuw i32 %i.oxb, 16
  %i.oxd = bitcast i32 %i.oxc to float
  %i.oxe = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oxd, float %i.omc)
  %i.oxf = bitcast float %i.oxe to i32
  %i.oxg = lshr i32 %i.oxf, 16
  %i.oxh = trunc nuw i32 %i.oxg to i16
  %i.oxi = getelementptr inbounds nuw i8, ptr %.338157.i.i, i64 4
  store i16 %i.oxh, ptr %i.owy, align 2, !tbaa !558
  %i.oxj = add nuw nsw i32 %.342156.i.i, 2        ; 2 uses
  %exitcond.not.i38.i1498.1 = icmp eq i32 %i.oxj, %i.obt
  br i1 %exitcond.not.i38.i1498.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i.i, !llvm.loop !320

bb.ke:                                            ; preds = %bb.ju
  %i.oxk = icmp eq i32 %3, 1
  br i1 %i.oxk, label %bb.kf, label %bb.ko

bb.kf:                                            ; preds = %bb.ke
  %i.oxl = load i16, ptr %0, align 2, !tbaa !558
  %i.oxm = zext i16 %i.oxl to i32
  %i.oxn = shl nuw i32 %i.oxm, 16
  %i.oxo = bitcast i32 %i.oxn to float            ; 15 uses
  %i.oxp = icmp eq i32 %.sroa.speculated.i1470, 4
  br i1 %i.oxp, label %.thread129.i76.i, label %bb.kg

.thread129.i76.i:                                 ; preds = %bb.kf
  %i.oxq = load i64, ptr %0, align 2, !tbaa !555
  %i.oxr = insertelement <2 x i64> poison, i64 %i.oxq, i64 0
  %i.oxs = bitcast <2 x i64> %i.oxr to <8 x i16>
  %i.oxt = shufflevector <8 x i16> %i.oxs, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.oxu = bitcast <8 x i16> %i.oxt to <4 x float> ; 2 uses
  %i.oxv = shufflevector <4 x float> %i.oxu, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.kj

bb.kg:                                            ; preds = %bb.kf
  %i.oxw = insertelement <4 x float> poison, float %i.oxo, i64 0 ; 2 uses
  %i.oxx = shufflevector <4 x float> %i.oxw, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.oxy = icmp eq i32 %.sroa.speculated.i1470, 8
  br i1 %i.oxy, label %.thread128.i75.i, label %bb.kh

.thread128.i75.i:                                 ; preds = %bb.kg
  %i.oxz = load <8 x bfloat>, ptr %0, align 2, !tbaa !555
  %i.oya = fpext fast <8 x bfloat> %i.oxz to <8 x float>
  br label %bb.kj

bb.kh:                                            ; preds = %bb.kg
  %i.oyb = shufflevector <4 x float> %i.oxw, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.oyc = icmp eq i32 %.sroa.speculated.i1470, 16
  br i1 %i.oyc, label %bb.ki, label %bb.kj

bb.ki:                                            ; preds = %bb.kh
  %i.oyd = load <16 x bfloat>, ptr %0, align 2, !tbaa !555
  %i.oye = fpext fast <16 x bfloat> %i.oyd to <16 x float>
  br label %bb.kk

bb.kj:                                            ; preds = %bb.kh, %.thread128.i75.i, %.thread129.i76.i
  %i.oyf = phi <8 x float> [ %i.oya, %.thread128.i75.i ], [ %i.oyb, %bb.kh ], [ %i.oxv, %.thread129.i76.i ] ; 2 uses
  %i.oyg = phi <4 x float> [ %i.oxx, %.thread128.i75.i ], [ %i.oxx, %bb.kh ], [ %i.oxu, %.thread129.i76.i ]
  %i.oyh = shufflevector <8 x float> %i.oyf, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %bb.ki
  %i.oyi = phi <8 x float> [ %i.oyb, %bb.ki ], [ %i.oyf, %bb.kj ] ; 4 uses
  %i.oyj = phi <4 x float> [ %i.oxx, %bb.ki ], [ %i.oyg, %bb.kj ] ; 4 uses
  %i.oyk = phi fast <16 x float> [ %i.oye, %bb.ki ], [ %i.oyh, %bb.kj ] ; 4 uses
  %i.oyl = icmp sgt i32 %i.obt, 15
  br i1 %i.oyl, label %.lr.ph.i70.i.a, label %.preheader136.i43.i.a

.lr.ph.i70.i.a:                                   ; preds = %bb.kk
  %i.oym = fcmp fast one <16 x float> %i.oyk, zeroinitializer
  %i.oyn = fcmp fast olt <16 x float> %i.oyk, zeroinitializer
  %i.oyo = select fast <16 x i1> %i.oyn, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.oyp = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.oyk)
  br label %bb.kl

.preheader136.loopexit.i74.i:                     ; preds = %bb.kl
  %i.oyq = and i32 %i.obt, 2147483632
  br label %.preheader136.i43.i.a

.preheader136.i43.i.a:                            ; preds = %.preheader136.loopexit.i74.i, %bb.kk
  %.039.lcssa.i44.i1478 = phi i32 [ 0, %bb.kk ], [ %i.oyq, %.preheader136.loopexit.i74.i ] ; 3 uses
  %.035.lcssa.i45.i1479 = phi ptr [ %2, %bb.kk ], [ %i.pak, %.preheader136.loopexit.i74.i ] ; 2 uses
  %.0.lcssa.i46.i1480 = phi ptr [ %1, %bb.kk ], [ %i.paj, %.preheader136.loopexit.i74.i ] ; 2 uses
  %i.oyr = or disjoint i32 %.039.lcssa.i44.i1478, 7
  %i.oys = icmp slt i32 %i.oyr, %i.obt
  br i1 %i.oys, label %.lr.ph145.i64.i.a, label %.preheader135.i47.i.a

.lr.ph145.i64.i.a:                                ; preds = %.preheader136.i43.i.a
  %i.oyt = fcmp fast ueq <8 x float> %i.oyi, zeroinitializer
  %i.oyu = bitcast <8 x float> %i.oyi to <8 x i32>
  %i.oyv = and <8 x i32> %i.oyu, splat (i32 -2147483648)
  %i.oyw = fcmp fast olt <8 x float> %i.oyi, zeroinitializer
  %i.oyx = select <8 x i1> %i.oyw, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.oyy = or disjoint <8 x i32> %i.oyv, splat (i32 1070141403)
  br label %bb.km

bb.kl:                                            ; preds = %bb.kl, %.lr.ph.i70.i.a
  %.0139.i71.i = phi ptr [ %1, %.lr.ph.i70.i.a ], [ %i.paj, %bb.kl ] ; 2 uses
  %.035138.i72.i = phi ptr [ %2, %.lr.ph.i70.i.a ], [ %i.pak, %bb.kl ] ; 2 uses
  %.039137.i73.i = phi i32 [ 0, %.lr.ph.i70.i.a ], [ %i.pal, %bb.kl ]
  %i.oyz = load <16 x bfloat>, ptr %.0139.i71.i, align 1, !tbaa !555 ; 4 uses
  %i.oza = fpext fast <16 x bfloat> %i.oyz to <16 x float>
  %i.ozb = fcmp fast one <16 x bfloat> %i.oyz, zeroinitializer
  %i.ozc = fcmp fast olt <16 x bfloat> %i.oyz, zeroinitializer
  %i.ozd = select fast <16 x i1> %i.ozc, <16 x float> %i.oyo, <16 x float> zeroinitializer
  %i.oze = fdiv fast <16 x float> %i.oyk, %i.oza  ; 2 uses
  %i.ozf = bitcast <16 x float> %i.oze to <16 x i32>
  %i.ozg = and <16 x i32> %i.ozf, splat (i32 -2147483648)
  %i.ozh = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.oze) ; 3 uses
  %i.ozi = fcmp fast ogt <16 x float> %i.ozh, splat (float 1.000000e+00) ; 2 uses
  %i.ozj = select fast <16 x i1> %i.ozi, <16 x float> splat (float -1.000000e+00), <16 x float> %i.ozh
  %i.ozk = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.ozh, <16 x float> splat (float 1.000000e+00))
  %i.ozl = fdiv fast <16 x float> %i.ozj, %i.ozk  ; 3 uses
  %i.ozm = fmul fast <16 x float> %i.ozl, %i.ozl  ; 3 uses
  %i.ozn = fmul fast <16 x float> %i.ozm, %i.ozm  ; 7 uses
  %i.ozo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ozn, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.ozp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ozn, <16 x float> nofpclass(nan inf) %i.ozo, <16 x float> splat (float f0xBE117200))
  %i.ozq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ozn, <16 x float> nofpclass(nan inf) %i.ozp, <16 x float> splat (float f0xBEAAAA53))
  %i.ozr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ozn, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.ozs = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ozn, <16 x float> nofpclass(nan inf) %i.ozr, <16 x float> splat (float f0x3DD9ED24))
  %i.ozt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ozn, <16 x float> nofpclass(nan inf) %i.ozs, <16 x float> splat (float f0x3E4CB974))
  %i.ozu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ozn, <16 x float> nofpclass(nan inf) %i.ozt, <16 x float> splat (float 1.000000e+00))
  %i.ozv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ozm, <16 x float> nofpclass(nan inf) %i.ozq, <16 x float> nofpclass(nan inf) %i.ozu)
  %i.ozw = fmul fast <16 x float> %i.ozv, %i.ozl
  %i.ozx = select fast <16 x i1> %i.ozi, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.ozy = fadd fast <16 x float> %i.ozw, %i.ozx
  %i.ozz = bitcast <16 x float> %i.ozy to <16 x i32>
  %i.paa = or <16 x i32> %i.ozg, %i.ozz
  %i.pab = bitcast <16 x i32> %i.paa to <16 x float>
  %i.pac = fadd fast <16 x float> %i.ozd, %i.pab
  %i.pad = bitcast <16 x bfloat> %i.oyz to <16 x i16>
  %i.pae = icmp slt <16 x i16> %i.pad, zeroinitializer
  %i.paf = select fast <16 x i1> %i.pae, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.pag = select <16 x i1> %i.ozb, <16 x float> %i.pac, <16 x float> %i.oyp
  %i.pah = select <16 x i1> %i.oym, <16 x float> %i.pag, <16 x float> %i.paf
  %i.pai = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.pah)
  store <16 x bfloat> %i.pai, ptr %.035138.i72.i, align 1, !tbaa !555
  %i.paj = getelementptr inbounds nuw i8, ptr %.0139.i71.i, i64 32 ; 2 uses
  %i.pak = getelementptr inbounds nuw i8, ptr %.035138.i72.i, i64 32 ; 2 uses
  %i.pal = add nuw nsw i32 %.039137.i73.i, 16     ; 2 uses
  %i.pam = or disjoint i32 %i.pal, 15
  %i.pan = icmp slt i32 %i.pam, %i.obt
  br i1 %i.pan, label %bb.kl, label %.preheader136.loopexit.i74.i, !llvm.loop !321

.preheader135.i47.i.a:                            ; preds = %bb.km, %.preheader136.i43.i.a
  %.140.lcssa.i48.i1481 = phi i32 [ %.039.lcssa.i44.i1478, %.preheader136.i43.i.a ], [ %i.pcj, %bb.km ] ; 3 uses
  %.136.lcssa.i49.i1482 = phi ptr [ %.035.lcssa.i45.i1479, %.preheader136.i43.i.a ], [ %i.pci, %bb.km ] ; 2 uses
  %.1.lcssa.i50.i1483 = phi ptr [ %.0.lcssa.i46.i1480, %.preheader136.i43.i.a ], [ %i.pch, %bb.km ] ; 2 uses
  %i.pao = or disjoint i32 %.140.lcssa.i48.i1481, 3
  %i.pap = icmp slt i32 %i.pao, %i.obt
  br i1 %i.pap, label %.lr.ph152.i60.i.a, label %.preheader.i51.i1484

.lr.ph152.i60.i.a:                                ; preds = %.preheader135.i47.i.a
  %i.paq = fcmp fast oeq <4 x float> %i.oyj, zeroinitializer
  %i.par = bitcast <4 x float> %i.oyj to <4 x i32>
  %i.pas = and <4 x i32> %i.par, splat (i32 -2147483648)
  %i.pat = fcmp fast olt <4 x float> %i.oyj, zeroinitializer
  %i.pau = select <4 x i1> %i.pat, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.pav = or disjoint <4 x i32> %i.pas, splat (i32 1070141403)
  br label %bb.kn

bb.km:                                            ; preds = %bb.km, %.lr.ph145.i64.i.a
  %.1144.i65.i.a = phi ptr [ %.0.lcssa.i46.i1480, %.lr.ph145.i64.i.a ], [ %i.pch, %bb.km ] ; 2 uses
  %.136143.i66.i.a = phi ptr [ %.035.lcssa.i45.i1479, %.lr.ph145.i64.i.a ], [ %i.pci, %bb.km ] ; 2 uses
  %.140142.i67.i.a = phi i32 [ %.039.lcssa.i44.i1478, %.lr.ph145.i64.i.a ], [ %i.pcj, %bb.km ]
  %i.paw = load <8 x bfloat>, ptr %.1144.i65.i.a, align 1, !tbaa !555 ; 4 uses
  %i.pax = fpext fast <8 x bfloat> %i.paw to <8 x float>
  %i.pay = fcmp fast ueq <8 x bfloat> %i.paw, zeroinitializer
  %i.paz = fcmp fast olt <8 x bfloat> %i.paw, zeroinitializer
  %i.pba = select <8 x i1> %i.paz, <8 x float> %i.oyx, <8 x float> zeroinitializer
  %i.pbb = fdiv fast <8 x float> %i.oyi, %i.pax   ; 2 uses
  %i.pbc = bitcast <8 x float> %i.pbb to <8 x i32>
  %i.pbd = and <8 x i32> %i.pbc, splat (i32 -2147483648)
  %i.pbe = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.pbb) ; 3 uses
  %i.pbf = fcmp fast ogt <8 x float> %i.pbe, splat (float 1.000000e+00) ; 2 uses
  %i.pbg = select <8 x i1> %i.pbf, <8 x float> splat (float -1.000000e+00), <8 x float> %i.pbe
  %i.pbh = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.pbe, <8 x float> splat (float 1.000000e+00))
  %i.pbi = fdiv fast <8 x float> %i.pbg, %i.pbh   ; 3 uses
  %i.pbj = fmul fast <8 x float> %i.pbi, %i.pbi   ; 3 uses
  %i.pbk = fmul fast <8 x float> %i.pbj, %i.pbj   ; 7 uses
  %i.pbl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pbk, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.pbm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pbk, <8 x float> nofpclass(nan inf) %i.pbl, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.pbn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pbk, <8 x float> nofpclass(nan inf) %i.pbm, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.pbo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pbk, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.pbp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pbk, <8 x float> nofpclass(nan inf) %i.pbo, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.pbq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pbk, <8 x float> nofpclass(nan inf) %i.pbp, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.pbr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pbk, <8 x float> nofpclass(nan inf) %i.pbq, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.pbs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pbj, <8 x float> nofpclass(nan inf) %i.pbn, <8 x float> nofpclass(nan inf) %i.pbr)
  %i.pbt = fmul fast <8 x float> %i.pbs, %i.pbi
  %i.pbu = select <8 x i1> %i.pbf, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.pbv = fadd fast <8 x float> %i.pbt, %i.pbu
  %i.pbw = bitcast <8 x float> %i.pbv to <8 x i32>
  %i.pbx = or <8 x i32> %i.pbd, %i.pbw
  %i.pby = bitcast <8 x i32> %i.pbx to <8 x float>
  %i.pbz = fadd fast <8 x float> %i.pba, %i.pby
  %i.pca = bitcast <8 x bfloat> %i.paw to <8 x i16>
  %isneg.i69.i = icmp sgt <8 x i16> %i.pca, splat (i16 -1)
  %i.pcb = select <8 x i1> %isneg.i69.i, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.pcc = bitcast <8 x float> %i.pbz to <8 x i32>
  %i.pcd = select <8 x i1> %i.pay, <8 x i32> %i.oyy, <8 x i32> %i.pcc
  %i.pce = select <8 x i1> %i.oyt, <8 x i32> %i.pcb, <8 x i32> %i.pcd
  %i.pcf = bitcast <8 x i32> %i.pce to <8 x float>
  %i.pcg = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.pcf)
  store <8 x bfloat> %i.pcg, ptr %.136143.i66.i.a, align 1, !tbaa !555
  %i.pch = getelementptr inbounds nuw i8, ptr %.1144.i65.i.a, i64 16 ; 2 uses
  %i.pci = getelementptr inbounds nuw i8, ptr %.136143.i66.i.a, i64 16 ; 2 uses
  %i.pcj = add nuw nsw i32 %.140142.i67.i.a, 8    ; 3 uses
  %i.pck = or disjoint i32 %i.pcj, 7
  %i.pcl = icmp slt i32 %i.pck, %i.obt
  br i1 %i.pcl, label %bb.km, label %.preheader135.i47.i.a, !llvm.loop !322

.preheader.i51.i1484:                             ; preds = %bb.kn, %.preheader135.i47.i.a
  %.241.lcssa.i52.i1485 = phi i32 [ %.140.lcssa.i48.i1481, %.preheader135.i47.i.a ], [ %i.phz, %bb.kn ] ; 5 uses
  %.237.lcssa.i53.i1486 = phi ptr [ %.136.lcssa.i49.i1482, %.preheader135.i47.i.a ], [ %i.phy, %bb.kn ] ; 6 uses
  %.2.lcssa.i54.i1487 = phi ptr [ %.1.lcssa.i50.i1483, %.preheader135.i47.i.a ], [ %i.phx, %bb.kn ] ; 6 uses
  %i.pcm = icmp slt i32 %.241.lcssa.i52.i1485, %i.obt
  br i1 %i.pcm, label %iter.check7257, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7257:                                   ; preds = %.preheader.i51.i1484
  %.237.lcssa.i53.i14867241 = ptrtoaddr ptr %.237.lcssa.i53.i1486 to i64
  %.2.lcssa.i54.i14877240 = ptrtoaddr ptr %.2.lcssa.i54.i1487 to i64
  %i.pcn = xor i32 %.241.lcssa.i52.i1485, -1
  %i.pco = add i32 %i.obt, %i.pcn                 ; 3 uses
  %i.pcp = zext i32 %i.pco to i64
  %i.pcq = add nuw nsw i64 %i.pcp, 1              ; 5 uses
  %min.iters.check7242 = icmp ult i32 %i.pco, 7
  %i.pcr = sub i64 %.2.lcssa.i54.i14877240, %.237.lcssa.i53.i14867241
  %diff.check7244 = icmp ugt i64 %i.pcr, -64
  %or.cond9220.a = select i1 %min.iters.check7242, i1 true, i1 %diff.check7244
  br i1 %or.cond9220.a, label %.lr.ph159.i55.i.preheader.a, label %vector.main.loop.iter.check7245

vector.main.loop.iter.check7245:                  ; preds = %iter.check7257
  %min.iters.check7246 = icmp ult i32 %i.pco, 31
  br i1 %min.iters.check7246, label %vec.epilog.ph7261, label %vector.ph7247

vector.ph7247:                                    ; preds = %vector.main.loop.iter.check7245
  %i.pcs = and i64 %i.pcq, 24
  %n.vec7248 = and i64 %i.pcq, 8589934560         ; 5 uses
  %i.pct = shl nuw nsw i64 %n.vec7248, 1          ; 2 uses
  %i.pcu = getelementptr i8, ptr %.2.lcssa.i54.i1487, i64 %i.pct
  %i.pcv = getelementptr i8, ptr %.237.lcssa.i53.i1486, i64 %i.pct
  %i.pcw = trunc i64 %n.vec7248 to i32
  %i.pcx = add i32 %.241.lcssa.i52.i1485, %i.pcw
  %i.pcy = insertelement <16 x float> poison, float %i.oxo, i64 0
  %i.pcz = shufflevector <16 x float> %i.pcy, <16 x float> poison, <16 x i32> zeroinitializer
  %i.pda = insertelement <8 x float> poison, float %i.oxo, i64 0
  %i.pdb = shufflevector <8 x float> %i.pda, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pdc = insertelement <4 x float> poison, float %i.oxo, i64 0
  %i.pdd = shufflevector <4 x float> %i.pdc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pde = insertelement <2 x float> poison, float %i.oxo, i64 0
  %i.pdf = shufflevector <2 x float> %i.pde, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7249

vector.body7249:                                  ; preds = %vector.ph7247, %vector.body7249
  %index7250 = phi i64 [ 0, %vector.ph7247 ], [ %index.next7254, %vector.body7249 ] ; 2 uses
  %i.pdg = shl i64 %index7250, 1                  ; 2 uses
  %next.gep7251 = getelementptr i8, ptr %.2.lcssa.i54.i1487, i64 %i.pdg
  %next.gep7252 = getelementptr i8, ptr %.237.lcssa.i53.i1486, i64 %i.pdg
  %wide.load7253 = load <32 x i16>, ptr %next.gep7251, align 2, !tbaa !558
  %i.pdh = zext <32 x i16> %wide.load7253 to <32 x i32>
  %i.pdi = shl nuw <32 x i32> %i.pdh, splat (i32 16)
  %i.pdj = bitcast <32 x i32> %i.pdi to <32 x float> ; 6 uses
  %i.pdk = extractelement <32 x float> %i.pdj, i64 0
  %i.pdl = tail call fast float @llvm.atan2.f32(float %i.oxo, float %i.pdk)
  %i.pdm = shufflevector <32 x float> %i.pdj, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.pdn = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.pcz, <16 x float> %i.pdm)
  %i.pdo = shufflevector <32 x float> %i.pdj, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.pdp = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.pdb, <8 x float> %i.pdo)
  %i.pdq = shufflevector <32 x float> %i.pdj, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.pdr = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.pdd, <4 x float> %i.pdq)
  %i.pds = extractelement <32 x float> %i.pdj, i64 29
  %i.pdt = tail call fast float @llvm.atan2.f32(float %i.oxo, float %i.pds)
  %i.pdu = shufflevector <32 x float> %i.pdj, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.pdv = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.pdf, <2 x float> %i.pdu)
  %i.pdw = insertelement <32 x float> poison, float %i.pdl, i64 0
  %i.pdx = shufflevector <16 x float> %i.pdn, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pdy = shufflevector <32 x float> %i.pdw, <32 x float> %i.pdx, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pdz = shufflevector <8 x float> %i.pdp, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pea = shufflevector <32 x float> %i.pdy, <32 x float> %i.pdz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.peb = shufflevector <4 x float> %i.pdr, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pec = shufflevector <32 x float> %i.pea, <32 x float> %i.peb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.ped = insertelement <32 x float> %i.pec, float %i.pdt, i64 29
  %i.pee = shufflevector <2 x float> %i.pdv, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pef = shufflevector <32 x float> %i.ped, <32 x float> %i.pee, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.peg = bitcast <32 x float> %i.pef to <32 x i32>
  %i.peh = lshr <32 x i32> %i.peg, splat (i32 16)
  %i.pei = trunc nuw <32 x i32> %i.peh to <32 x i16>
  store <32 x i16> %i.pei, ptr %next.gep7252, align 2, !tbaa !558
  %index.next7254 = add nuw i64 %index7250, 32    ; 2 uses
  %i.pej = icmp eq i64 %index.next7254, %n.vec7248
  br i1 %i.pej, label %middle.block7255, label %vector.body7249, !llvm.loop !323

middle.block7255:                                 ; preds = %vector.body7249
  %cmp.n7256 = icmp eq i64 %i.pcq, %n.vec7248
  br i1 %cmp.n7256, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7258

vec.epilog.iter.check7258:                        ; preds = %middle.block7255
  %min.epilog.iters.check7260 = icmp eq i64 %i.pcs, 0
  br i1 %min.epilog.iters.check7260, label %.lr.ph159.i55.i.preheader.a, label %vec.epilog.ph7261, !prof !561

vec.epilog.ph7261:                                ; preds = %vector.main.loop.iter.check7245, %vec.epilog.iter.check7258
  %vec.epilog.resume.val7262 = phi i64 [ %n.vec7248, %vec.epilog.iter.check7258 ], [ 0, %vector.main.loop.iter.check7245 ]
  %n.vec7263 = and i64 %i.pcq, 8589934584         ; 4 uses
  %i.pek = shl nuw nsw i64 %n.vec7263, 1          ; 2 uses
  %i.pel = getelementptr i8, ptr %.2.lcssa.i54.i1487, i64 %i.pek
  %i.pem = getelementptr i8, ptr %.237.lcssa.i53.i1486, i64 %i.pek
  %i.pen = trunc i64 %n.vec7263 to i32
  %i.peo = add i32 %.241.lcssa.i52.i1485, %i.pen
  %i.pep = insertelement <4 x float> poison, float %i.oxo, i64 0
  %i.peq = shufflevector <4 x float> %i.pep, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7264

vec.epilog.vector.body7264:                       ; preds = %vec.epilog.vector.body7264, %vec.epilog.ph7261
  %index7265 = phi i64 [ %vec.epilog.resume.val7262, %vec.epilog.ph7261 ], [ %index.next7269, %vec.epilog.vector.body7264 ] ; 2 uses
  %i.per = shl i64 %index7265, 1                  ; 2 uses
  %next.gep7266 = getelementptr i8, ptr %.2.lcssa.i54.i1487, i64 %i.per
  %next.gep7267 = getelementptr i8, ptr %.237.lcssa.i53.i1486, i64 %i.per
  %wide.load7268 = load <8 x i16>, ptr %next.gep7266, align 2, !tbaa !558
  %i.pes = zext <8 x i16> %wide.load7268 to <8 x i32>
  %i.pet = shl nuw <8 x i32> %i.pes, splat (i32 16)
  %i.peu = bitcast <8 x i32> %i.pet to <8 x float> ; 5 uses
  %i.pev = extractelement <8 x float> %i.peu, i64 0
  %i.pew = tail call fast float @llvm.atan2.f32(float %i.oxo, float %i.pev)
  %i.pex = extractelement <8 x float> %i.peu, i64 1
  %i.pey = tail call fast float @llvm.atan2.f32(float %i.oxo, float %i.pex)
  %i.pez = extractelement <8 x float> %i.peu, i64 2
  %i.pfa = tail call fast float @llvm.atan2.f32(float %i.oxo, float %i.pez)
  %i.pfb = shufflevector <8 x float> %i.peu, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.pfc = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.peq, <4 x float> %i.pfb)
  %i.pfd = extractelement <8 x float> %i.peu, i64 7
  %i.pfe = tail call fast float @llvm.atan2.f32(float %i.oxo, float %i.pfd)
  %i.pff = insertelement <8 x float> poison, float %i.pew, i64 0
  %i.pfg = insertelement <8 x float> %i.pff, float %i.pey, i64 1
  %i.pfh = insertelement <8 x float> %i.pfg, float %i.pfa, i64 2
  %i.pfi = shufflevector <4 x float> %i.pfc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pfj = shufflevector <8 x float> %i.pfh, <8 x float> %i.pfi, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.pfk = insertelement <8 x float> %i.pfj, float %i.pfe, i64 7
  %i.pfl = bitcast <8 x float> %i.pfk to <8 x i32>
  %i.pfm = lshr <8 x i32> %i.pfl, splat (i32 16)
  %i.pfn = trunc nuw <8 x i32> %i.pfm to <8 x i16>
  store <8 x i16> %i.pfn, ptr %next.gep7267, align 2, !tbaa !558
  %index.next7269 = add nuw i64 %index7265, 8     ; 2 uses
  %i.pfo = icmp eq i64 %index.next7269, %n.vec7263
  br i1 %i.pfo, label %vec.epilog.middle.block7270, label %vec.epilog.vector.body7264, !llvm.loop !324

vec.epilog.middle.block7270:                      ; preds = %vec.epilog.vector.body7264
  %cmp.n7271 = icmp eq i64 %i.pcq, %n.vec7263
  br i1 %cmp.n7271, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i55.i.preheader.a

.lr.ph159.i55.i.preheader.a:                      ; preds = %iter.check7257, %vec.epilog.iter.check7258, %vec.epilog.middle.block7270
  %.3158.i56.i.ph.a = phi ptr [ %.2.lcssa.i54.i1487, %iter.check7257 ], [ %i.pcu, %vec.epilog.iter.check7258 ], [ %i.pel, %vec.epilog.middle.block7270 ] ; 3 uses
  %.338157.i57.i.ph.a = phi ptr [ %.237.lcssa.i53.i1486, %iter.check7257 ], [ %i.pcv, %vec.epilog.iter.check7258 ], [ %i.pem, %vec.epilog.middle.block7270 ] ; 3 uses
  %.342156.i58.i.ph.a = phi i32 [ %.241.lcssa.i52.i1485, %iter.check7257 ], [ %i.pcx, %vec.epilog.iter.check7258 ], [ %i.peo, %vec.epilog.middle.block7270 ] ; 4 uses
  %i.pfp = sub i32 %i.obt, %.342156.i58.i.ph.a
  %.neg11074 = add i32 %.342156.i58.i.ph.a, 1
  %xtraiter10477 = and i32 %i.pfp, 1
  %lcmp.mod10478.not = icmp eq i32 %xtraiter10477, 0
  br i1 %lcmp.mod10478.not, label %.lr.ph159.i55.i.prol.loopexit.a, label %.lr.ph159.i55.i.prol.a

.lr.ph159.i55.i.prol.a:                           ; preds = %.lr.ph159.i55.i.preheader.a
  %i.pfq = getelementptr inbounds nuw i8, ptr %.3158.i56.i.ph.a, i64 2
  %i.pfr = load i16, ptr %.3158.i56.i.ph.a, align 2, !tbaa !558
  %i.pfs = zext i16 %i.pfr to i32
  %i.pft = shl nuw i32 %i.pfs, 16
  %i.pfu = bitcast i32 %i.pft to float
  %i.pfv = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oxo, float %i.pfu)
  %i.pfw = bitcast float %i.pfv to i32
  %i.pfx = lshr i32 %i.pfw, 16
  %i.pfy = trunc nuw i32 %i.pfx to i16
  %i.pfz = getelementptr inbounds nuw i8, ptr %.338157.i57.i.ph.a, i64 2
  store i16 %i.pfy, ptr %.338157.i57.i.ph.a, align 2, !tbaa !558
  %i.pga = add nuw nsw i32 %.342156.i58.i.ph.a, 1
  br label %.lr.ph159.i55.i.prol.loopexit.a

.lr.ph159.i55.i.prol.loopexit.a:                  ; preds = %.lr.ph159.i55.i.prol.a, %.lr.ph159.i55.i.preheader.a
  %.3158.i56.i.unr.a = phi ptr [ %.3158.i56.i.ph.a, %.lr.ph159.i55.i.preheader.a ], [ %i.pfq, %.lr.ph159.i55.i.prol.a ]
  %.338157.i57.i.unr.a = phi ptr [ %.338157.i57.i.ph.a, %.lr.ph159.i55.i.preheader.a ], [ %i.pfz, %.lr.ph159.i55.i.prol.a ]
  %.342156.i58.i.unr.a = phi i32 [ %.342156.i58.i.ph.a, %.lr.ph159.i55.i.preheader.a ], [ %i.pga, %.lr.ph159.i55.i.prol.a ]
  %i.pgb = icmp eq i32 %i.obt, %.neg11074
  br i1 %i.pgb, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i55.i.a

bb.kn:                                            ; preds = %bb.kn, %.lr.ph152.i60.i.a
  %.2151.i61.i.a = phi ptr [ %.1.lcssa.i50.i1483, %.lr.ph152.i60.i.a ], [ %i.phx, %bb.kn ] ; 2 uses
  %.237150.i62.i.a = phi ptr [ %.136.lcssa.i49.i1482, %.lr.ph152.i60.i.a ], [ %i.phy, %bb.kn ] ; 2 uses
  %.241149.i63.i.a = phi i32 [ %.140.lcssa.i48.i1481, %.lr.ph152.i60.i.a ], [ %i.phz, %bb.kn ]
  %i.pgc = load i64, ptr %.2151.i61.i.a, align 1, !tbaa !555
  %i.pgd = insertelement <2 x i64> poison, i64 %i.pgc, i64 0
  %i.pge = bitcast <2 x i64> %i.pgd to <8 x i16>
  %i.pgf = shufflevector <8 x i16> %i.pge, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 2 uses
  %i.pgg = bitcast <8 x i16> %i.pgf to <4 x float> ; 3 uses
  %i.pgh = fcmp fast oeq <4 x float> %i.pgg, zeroinitializer
  %i.pgi = fcmp fast olt <4 x float> %i.pgg, zeroinitializer
  %i.pgj = select <4 x i1> %i.pgi, <4 x float> %i.pau, <4 x float> zeroinitializer
  %i.pgk = fdiv fast <4 x float> %i.oyj, %i.pgg   ; 2 uses
  %i.pgl = bitcast <4 x float> %i.pgk to <4 x i32>
  %i.pgm = and <4 x i32> %i.pgl, splat (i32 -2147483648)
  %i.pgn = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pgk) ; 3 uses
  %i.pgo = fcmp fast ogt <4 x float> %i.pgn, splat (float 1.000000e+00) ; 2 uses
  %i.pgp = select <4 x i1> %i.pgo, <4 x float> splat (float -1.000000e+00), <4 x float> %i.pgn
  %i.pgq = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.pgn, <4 x float> splat (float 1.000000e+00))
  %i.pgr = fdiv fast <4 x float> %i.pgp, %i.pgq   ; 3 uses
  %i.pgs = fmul fast <4 x float> %i.pgr, %i.pgr   ; 3 uses
  %i.pgt = fmul fast <4 x float> %i.pgs, %i.pgs   ; 7 uses
  %i.pgu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pgt, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.pgv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pgt, <4 x float> nofpclass(nan inf) %i.pgu, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.pgw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pgt, <4 x float> nofpclass(nan inf) %i.pgv, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.pgx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pgt, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.pgy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pgt, <4 x float> nofpclass(nan inf) %i.pgx, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.pgz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pgt, <4 x float> nofpclass(nan inf) %i.pgy, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.pha = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pgt, <4 x float> nofpclass(nan inf) %i.pgz, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.phb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pgs, <4 x float> nofpclass(nan inf) %i.pgw, <4 x float> nofpclass(nan inf) %i.pha)
  %i.phc = fmul fast <4 x float> %i.phb, %i.pgr
  %i.phd = select <4 x i1> %i.pgo, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.phe = fadd fast <4 x float> %i.phc, %i.phd
  %i.phf = bitcast <4 x float> %i.phe to <4 x i32>
  %i.phg = or <4 x i32> %i.pgm, %i.phf
  %i.phh = bitcast <4 x i32> %i.phg to <4 x float>
  %i.phi = fadd fast <4 x float> %i.pgj, %i.phh
  %i.phj = bitcast <8 x i16> %i.pgf to <4 x i32>
  %i.phk = and <4 x i32> %i.phj, splat (i32 -2147483648)
  %i.phl = or disjoint <4 x i32> %i.phk, splat (i32 1078530011)
  %i.phm = bitcast <4 x i32> %i.phl to <4 x float>
  %i.phn = fcmp fast uge <4 x float> %i.phm, zeroinitializer
  %i.pho = select <4 x i1> %i.phn, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.php = bitcast <4 x float> %i.phi to <4 x i32>
  %i.phq = select <4 x i1> %i.pgh, <4 x i32> %i.pav, <4 x i32> %i.php
  %i.phr = select <4 x i1> %i.paq, <4 x i32> %i.pho, <4 x i32> %i.phq
  %i.phs = bitcast <4 x i32> %i.phr to <4 x float>
  %i.pht = shufflevector <4 x float> %i.phs, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.phu = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.pht)
  %i.phv = bitcast <8 x bfloat> %i.phu to <2 x i64>
  %i.phw = extractelement <2 x i64> %i.phv, i64 0
  store i64 %i.phw, ptr %.237150.i62.i.a, align 1, !tbaa !555
  %i.phx = getelementptr inbounds nuw i8, ptr %.2151.i61.i.a, i64 8 ; 2 uses
  %i.phy = getelementptr inbounds nuw i8, ptr %.237150.i62.i.a, i64 8 ; 2 uses
  %i.phz = add nuw nsw i32 %.241149.i63.i.a, 4    ; 3 uses
  %i.pia = or disjoint i32 %i.phz, 3
  %i.pib = icmp slt i32 %i.pia, %i.obt
  br i1 %i.pib, label %bb.kn, label %.preheader.i51.i1484, !llvm.loop !325

.lr.ph159.i55.i.a:                                ; preds = %.lr.ph159.i55.i.prol.loopexit.a, %.lr.ph159.i55.i.a
  %.3158.i56.i.a = phi ptr [ %i.pim, %.lr.ph159.i55.i.a ], [ %.3158.i56.i.unr.a, %.lr.ph159.i55.i.prol.loopexit.a ] ; 3 uses
  %.338157.i57.i.a = phi ptr [ %i.piv, %.lr.ph159.i55.i.a ], [ %.338157.i57.i.unr.a, %.lr.ph159.i55.i.prol.loopexit.a ] ; 3 uses
  %.342156.i58.i.a = phi i32 [ %i.piw, %.lr.ph159.i55.i.a ], [ %.342156.i58.i.unr.a, %.lr.ph159.i55.i.prol.loopexit.a ]
  %i.pic = getelementptr inbounds nuw i8, ptr %.3158.i56.i.a, i64 2
  %i.pid = load i16, ptr %.3158.i56.i.a, align 2, !tbaa !558
  %i.pie = zext i16 %i.pid to i32
  %i.pif = shl nuw i32 %i.pie, 16
  %i.pig = bitcast i32 %i.pif to float
  %i.pih = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oxo, float %i.pig)
  %i.pii = bitcast float %i.pih to i32
  %i.pij = lshr i32 %i.pii, 16
  %i.pik = trunc nuw i32 %i.pij to i16
  %i.pil = getelementptr inbounds nuw i8, ptr %.338157.i57.i.a, i64 2
  store i16 %i.pik, ptr %.338157.i57.i.a, align 2, !tbaa !558
  %i.pim = getelementptr inbounds nuw i8, ptr %.3158.i56.i.a, i64 4
  %i.pin = load i16, ptr %i.pic, align 2, !tbaa !558
  %i.pio = zext i16 %i.pin to i32
  %i.pip = shl nuw i32 %i.pio, 16
  %i.piq = bitcast i32 %i.pip to float
  %i.pir = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oxo, float %i.piq)
  %i.pis = bitcast float %i.pir to i32
  %i.pit = lshr i32 %i.pis, 16
  %i.piu = trunc nuw i32 %i.pit to i16
  %i.piv = getelementptr inbounds nuw i8, ptr %.338157.i57.i.a, i64 4
  store i16 %i.piu, ptr %i.pil, align 2, !tbaa !558
  %i.piw = add nuw nsw i32 %.342156.i58.i.a, 2    ; 2 uses
  %exitcond.not.i59.i.1.a = icmp eq i32 %i.piw, %i.obt
  br i1 %exitcond.not.i59.i.1.a, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i55.i.a, !llvm.loop !326

bb.ko:                                            ; preds = %bb.ke, %bb.jr
  %i.pix = icmp eq i32 %6, 1
  br i1 %i.pix, label %bb.kp, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.kp:                                            ; preds = %bb.ko
  %i.piy = icmp eq i32 %3, %4
  br i1 %i.piy, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  switch i32 %.sroa.speculated.i1470, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 16, label %.preheader.i80.i
    i32 8, label %.preheader123.i.i
    i32 4, label %.preheader125.i.i
  ]

.preheader125.i.i:                                ; preds = %bb.kq
  %i.piz = icmp sgt i32 %.sroa.speculated104.i, 0
  br i1 %i.piz, label %.lr.ph.i77.i.a, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader123.i.i:                                ; preds = %bb.kq
  %i.pja = icmp sgt i32 %.sroa.speculated104.i, 0
  br i1 %i.pja, label %.lr.ph135.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader.i80.i:                                 ; preds = %bb.kq
  %i.pjb = icmp sgt i32 %.sroa.speculated104.i, 0
  br i1 %i.pjb, label %.lr.ph140.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph140.i.i:                                    ; preds = %.preheader.i80.i, %.lr.ph140.i.i
  %.031139.i.i = phi ptr [ %i.pkw, %.lr.ph140.i.i ], [ %0, %.preheader.i80.i ] ; 2 uses
  %.033138.i.i = phi ptr [ %i.pkx, %.lr.ph140.i.i ], [ %1, %.preheader.i80.i ] ; 2 uses
  %.036137.i.i = phi i32 [ %i.pkz, %.lr.ph140.i.i ], [ 0, %.preheader.i80.i ]
  %.037136.i.i = phi ptr [ %i.pky, %.lr.ph140.i.i ], [ %2, %.preheader.i80.i ] ; 2 uses
  %i.pjc = load <16 x bfloat>, ptr %.031139.i.i, align 1, !tbaa !555 ; 3 uses
  %i.pjd = fpext fast <16 x bfloat> %i.pjc to <16 x float> ; 2 uses
  %i.pje = load i16, ptr %.033138.i.i, align 2, !tbaa !558
  %i.pjf = zext i16 %i.pje to i32
  %i.pjg = shl nuw i32 %i.pjf, 16
  %i.pjh = insertelement <16 x i32> poison, i32 %i.pjg, i64 0
  %i.pji = bitcast <16 x i32> %i.pjh to <16 x float>
  %i.pjj = shufflevector <16 x float> %i.pji, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.pjk = fcmp fast one <16 x float> %i.pjj, zeroinitializer
  %i.pjl = fcmp fast one <16 x bfloat> %i.pjc, zeroinitializer
  %i.pjm = fcmp fast olt <16 x float> %i.pjj, zeroinitializer
  %i.pjn = fcmp fast olt <16 x bfloat> %i.pjc, zeroinitializer
  %i.pjo = select fast <16 x i1> %i.pjn, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.pjp = select fast <16 x i1> %i.pjm, <16 x float> %i.pjo, <16 x float> zeroinitializer
  %i.pjq = fdiv fast <16 x float> %i.pjd, %i.pjj  ; 2 uses
  %i.pjr = bitcast <16 x float> %i.pjq to <16 x i32>
  %i.pjs = and <16 x i32> %i.pjr, splat (i32 -2147483648)
  %i.pjt = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.pjq) ; 3 uses
  %i.pju = fcmp fast ogt <16 x float> %i.pjt, splat (float 1.000000e+00) ; 2 uses
  %i.pjv = select fast <16 x i1> %i.pju, <16 x float> splat (float -1.000000e+00), <16 x float> %i.pjt
  %i.pjw = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.pjt, <16 x float> splat (float 1.000000e+00))
  %i.pjx = fdiv fast <16 x float> %i.pjv, %i.pjw  ; 3 uses
  %i.pjy = fmul fast <16 x float> %i.pjx, %i.pjx  ; 3 uses
  %i.pjz = fmul fast <16 x float> %i.pjy, %i.pjy  ; 7 uses
  %i.pka = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pjz, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.pkb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pjz, <16 x float> nofpclass(nan inf) %i.pka, <16 x float> splat (float f0xBE117200))
  %i.pkc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pjz, <16 x float> nofpclass(nan inf) %i.pkb, <16 x float> splat (float f0xBEAAAA53))
  %i.pkd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pjz, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.pke = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pjz, <16 x float> nofpclass(nan inf) %i.pkd, <16 x float> splat (float f0x3DD9ED24))
  %i.pkf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pjz, <16 x float> nofpclass(nan inf) %i.pke, <16 x float> splat (float f0x3E4CB974))
  %i.pkg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pjz, <16 x float> nofpclass(nan inf) %i.pkf, <16 x float> splat (float 1.000000e+00))
  %i.pkh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pjy, <16 x float> nofpclass(nan inf) %i.pkc, <16 x float> nofpclass(nan inf) %i.pkg)
  %i.pki = fmul fast <16 x float> %i.pkh, %i.pjx
  %i.pkj = select fast <16 x i1> %i.pju, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.pkk = fadd fast <16 x float> %i.pki, %i.pkj
  %i.pkl = bitcast <16 x float> %i.pkk to <16 x i32>
  %i.pkm = or <16 x i32> %i.pjs, %i.pkl
  %i.pkn = bitcast <16 x i32> %i.pkm to <16 x float>
  %i.pko = fadd fast <16 x float> %i.pjp, %i.pkn
  %i.pkp = bitcast <16 x float> %i.pjj to <16 x i32>
  %i.pkq = icmp slt <16 x i32> %i.pkp, zeroinitializer
  %i.pkr = select fast <16 x i1> %i.pkq, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.pks = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.pjd)
  %i.pkt = select <16 x i1> %i.pjk, <16 x float> %i.pko, <16 x float> %i.pks
  %i.pku = select <16 x i1> %i.pjl, <16 x float> %i.pkt, <16 x float> %i.pkr
  %i.pkv = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.pku)
  store <16 x bfloat> %i.pkv, ptr %.037136.i.i, align 1, !tbaa !555
  %i.pkw = getelementptr inbounds nuw i8, ptr %.031139.i.i, i64 32
  %i.pkx = getelementptr inbounds nuw i8, ptr %.033138.i.i, i64 2
  %i.pky = getelementptr inbounds nuw i8, ptr %.037136.i.i, i64 32
  %i.pkz = add nuw nsw i32 %.036137.i.i, 1        ; 2 uses
  %exitcond144.not.i.i = icmp eq i32 %i.pkz, %.sroa.speculated104.i
  br i1 %exitcond144.not.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph140.i.i, !llvm.loop !327

.lr.ph135.i.i:                                    ; preds = %.preheader123.i.i, %.lr.ph135.i.i
  %.1134.i.i = phi ptr [ %i.pmx, %.lr.ph135.i.i ], [ %0, %.preheader123.i.i ] ; 2 uses
  %.032133.i.i = phi i32 [ %i.pna, %.lr.ph135.i.i ], [ 0, %.preheader123.i.i ]
  %.134132.i.i = phi ptr [ %i.pmy, %.lr.ph135.i.i ], [ %1, %.preheader123.i.i ] ; 2 uses
  %.138131.i.i = phi ptr [ %i.pmz, %.lr.ph135.i.i ], [ %2, %.preheader123.i.i ] ; 2 uses
  %i.pla = load <8 x bfloat>, ptr %.1134.i.i, align 1, !tbaa !555 ; 3 uses
  %i.plb = fpext fast <8 x bfloat> %i.pla to <8 x float> ; 2 uses
  %i.plc = load i16, ptr %.134132.i.i, align 2, !tbaa !558
  %i.pld = zext i16 %i.plc to i32
  %i.ple = shl nuw i32 %i.pld, 16
  %i.plf = insertelement <8 x i32> poison, i32 %i.ple, i64 0
  %i.plg = bitcast <8 x i32> %i.plf to <8 x float>
  %i.plh = shufflevector <8 x float> %i.plg, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.pli = fcmp fast ueq <8 x float> %i.plh, zeroinitializer
  %i.plj = fcmp fast ueq <8 x bfloat> %i.pla, zeroinitializer
  %i.plk = bitcast <8 x float> %i.plb to <8 x i32>
  %i.pll = and <8 x i32> %i.plk, splat (i32 -2147483648)
  %i.plm = fcmp fast olt <8 x float> %i.plh, zeroinitializer
  %i.pln = fcmp fast olt <8 x bfloat> %i.pla, zeroinitializer
  %i.plo = select <8 x i1> %i.pln, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.plp = select <8 x i1> %i.plm, <8 x float> %i.plo, <8 x float> zeroinitializer
  %i.plq = fdiv fast <8 x float> %i.plb, %i.plh   ; 2 uses
  %i.plr = bitcast <8 x float> %i.plq to <8 x i32>
  %i.pls = and <8 x i32> %i.plr, splat (i32 -2147483648)
  %i.plt = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.plq) ; 3 uses
  %i.plu = fcmp fast ogt <8 x float> %i.plt, splat (float 1.000000e+00) ; 2 uses
  %i.plv = select <8 x i1> %i.plu, <8 x float> splat (float -1.000000e+00), <8 x float> %i.plt
  %i.plw = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.plt, <8 x float> splat (float 1.000000e+00))
  %i.plx = fdiv fast <8 x float> %i.plv, %i.plw   ; 3 uses
  %i.ply = fmul fast <8 x float> %i.plx, %i.plx   ; 3 uses
  %i.plz = fmul fast <8 x float> %i.ply, %i.ply   ; 7 uses
  %i.pma = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.plz, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.pmb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.plz, <8 x float> nofpclass(nan inf) %i.pma, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.pmc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.plz, <8 x float> nofpclass(nan inf) %i.pmb, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.pmd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.plz, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.pme = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.plz, <8 x float> nofpclass(nan inf) %i.pmd, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.pmf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.plz, <8 x float> nofpclass(nan inf) %i.pme, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.pmg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.plz, <8 x float> nofpclass(nan inf) %i.pmf, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.pmh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ply, <8 x float> nofpclass(nan inf) %i.pmc, <8 x float> nofpclass(nan inf) %i.pmg)
  %i.pmi = fmul fast <8 x float> %i.pmh, %i.plx
  %i.pmj = select <8 x i1> %i.plu, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.pmk = fadd fast <8 x float> %i.pmi, %i.pmj
  %i.pml = bitcast <8 x float> %i.pmk to <8 x i32>
  %i.pmm = or <8 x i32> %i.pls, %i.pml
  %i.pmn = bitcast <8 x i32> %i.pmm to <8 x float>
  %i.pmo = fadd fast <8 x float> %i.plp, %i.pmn
  %i.pmp = bitcast <8 x float> %i.plh to <8 x i32>
  %i.pmq = or disjoint <8 x i32> %i.pll, splat (i32 1070141403)
  %isneg.inv120.i.i = icmp slt <8 x i32> %i.pmp, zeroinitializer
  %i.pmr = select <8 x i1> %isneg.inv120.i.i, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.pms = bitcast <8 x float> %i.pmo to <8 x i32>
  %i.pmt = select <8 x i1> %i.pli, <8 x i32> %i.pmq, <8 x i32> %i.pms
  %i.pmu = select <8 x i1> %i.plj, <8 x i32> %i.pmr, <8 x i32> %i.pmt
  %i.pmv = bitcast <8 x i32> %i.pmu to <8 x float>
  %i.pmw = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.pmv)
  store <8 x bfloat> %i.pmw, ptr %.138131.i.i, align 1, !tbaa !555
  %i.pmx = getelementptr inbounds nuw i8, ptr %.1134.i.i, i64 16
  %i.pmy = getelementptr inbounds nuw i8, ptr %.134132.i.i, i64 2
  %i.pmz = getelementptr inbounds nuw i8, ptr %.138131.i.i, i64 16
  %i.pna = add nuw nsw i32 %.032133.i.i, 1        ; 2 uses
  %exitcond143.not.i.i = icmp eq i32 %i.pna, %.sroa.speculated104.i
  br i1 %exitcond143.not.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph135.i.i, !llvm.loop !328

.lr.ph.i77.i.a:                                   ; preds = %.preheader125.i.i, %.lr.ph.i77.i.a
  %.0130.i.i = phi i32 [ %i.pph, %.lr.ph.i77.i.a ], [ 0, %.preheader125.i.i ]
  %.2129.i.i = phi ptr [ %i.ppe, %.lr.ph.i77.i.a ], [ %0, %.preheader125.i.i ] ; 2 uses
  %.235128.i.i = phi ptr [ %i.ppf, %.lr.ph.i77.i.a ], [ %1, %.preheader125.i.i ] ; 2 uses
  %.239127.i.i = phi ptr [ %i.ppg, %.lr.ph.i77.i.a ], [ %2, %.preheader125.i.i ] ; 2 uses
  %i.pnb = load i64, ptr %.2129.i.i, align 1, !tbaa !555
  %i.pnc = insertelement <2 x i64> poison, i64 %i.pnb, i64 0
  %i.pnd = bitcast <2 x i64> %i.pnc to <8 x i16>
  %i.pne = shufflevector <8 x i16> %i.pnd, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 2 uses
  %i.pnf = bitcast <8 x i16> %i.pne to <4 x float> ; 3 uses
  %i.png = load i16, ptr %.235128.i.i, align 2, !tbaa !558
  %i.pnh = zext i16 %i.png to i32
  %i.pni = shl nuw i32 %i.pnh, 16
  %i.pnj = insertelement <4 x i32> poison, i32 %i.pni, i64 0
  %i.pnk = bitcast <4 x i32> %i.pnj to <4 x float>
  %i.pnl = shufflevector <4 x float> %i.pnk, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.pnm = fcmp fast oeq <4 x float> %i.pnl, zeroinitializer
  %i.pnn = fcmp fast oeq <4 x float> %i.pnf, zeroinitializer
  %i.pno = fcmp fast olt <4 x float> %i.pnl, zeroinitializer
  %i.pnp = fcmp fast olt <4 x float> %i.pnf, zeroinitializer
  %i.pnq = select <4 x i1> %i.pnp, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.pnr = select <4 x i1> %i.pno, <4 x float> %i.pnq, <4 x float> zeroinitializer
  %i.pns = fdiv fast <4 x float> %i.pnf, %i.pnl   ; 2 uses
  %i.pnt = bitcast <4 x float> %i.pns to <4 x i32>
  %i.pnu = and <4 x i32> %i.pnt, splat (i32 -2147483648)
  %i.pnv = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pns) ; 3 uses
  %i.pnw = fcmp fast ogt <4 x float> %i.pnv, splat (float 1.000000e+00) ; 2 uses
  %i.pnx = select <4 x i1> %i.pnw, <4 x float> splat (float -1.000000e+00), <4 x float> %i.pnv
  %i.pny = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.pnv, <4 x float> splat (float 1.000000e+00))
  %i.pnz = fdiv fast <4 x float> %i.pnx, %i.pny   ; 3 uses
  %i.poa = fmul fast <4 x float> %i.pnz, %i.pnz   ; 3 uses
  %i.pob = fmul fast <4 x float> %i.poa, %i.poa   ; 7 uses
  %i.poc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pob, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.pod = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pob, <4 x float> nofpclass(nan inf) %i.poc, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.poe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pob, <4 x float> nofpclass(nan inf) %i.pod, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.pof = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pob, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.pog = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pob, <4 x float> nofpclass(nan inf) %i.pof, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.poh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pob, <4 x float> nofpclass(nan inf) %i.pog, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.poi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pob, <4 x float> nofpclass(nan inf) %i.poh, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.poj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.poa, <4 x float> nofpclass(nan inf) %i.poe, <4 x float> nofpclass(nan inf) %i.poi)
  %i.pok = fmul fast <4 x float> %i.poj, %i.pnz
  %i.pol = select <4 x i1> %i.pnw, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.pom = fadd fast <4 x float> %i.pok, %i.pol
  %i.pon = bitcast <4 x float> %i.pom to <4 x i32>
  %i.poo = or <4 x i32> %i.pnu, %i.pon
  %i.pop = bitcast <4 x i32> %i.poo to <4 x float>
  %i.poq = fadd fast <4 x float> %i.pnr, %i.pop
  %i.por = bitcast <4 x float> %i.pnl to <4 x i32>
  %i.pos = bitcast <8 x i16> %i.pne to <4 x i32>
  %i.pot = and <4 x i32> %i.pos, splat (i32 -2147483648)
  %i.pou = or disjoint <4 x i32> %i.pot, splat (i32 1070141403)
  %isneg.inv.i78.i = icmp slt <4 x i32> %i.por, zeroinitializer
  %i.pov = select <4 x i1> %isneg.inv.i78.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.pow = bitcast <4 x float> %i.poq to <4 x i32>
  %i.pox = select <4 x i1> %i.pnm, <4 x i32> %i.pou, <4 x i32> %i.pow
  %i.poy = select <4 x i1> %i.pnn, <4 x i32> %i.pov, <4 x i32> %i.pox
  %i.poz = bitcast <4 x i32> %i.poy to <4 x float>
  %i.ppa = shufflevector <4 x float> %i.poz, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ppb = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ppa)
  %i.ppc = bitcast <8 x bfloat> %i.ppb to <2 x i64>
  %i.ppd = extractelement <2 x i64> %i.ppc, i64 0
  store i64 %i.ppd, ptr %.239127.i.i, align 1, !tbaa !555
  %i.ppe = getelementptr inbounds nuw i8, ptr %.2129.i.i, i64 8
  %i.ppf = getelementptr inbounds nuw i8, ptr %.235128.i.i, i64 2
  %i.ppg = getelementptr inbounds nuw i8, ptr %.239127.i.i, i64 8
  %i.pph = add nuw nsw i32 %.0130.i.i, 1          ; 2 uses
  %exitcond.not.i79.i = icmp eq i32 %i.pph, %.sroa.speculated104.i
  br i1 %exitcond.not.i79.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i77.i.a, !llvm.loop !329

bb.kr:                                            ; preds = %bb.kp
  %i.ppi = icmp eq i32 %4, 1
  br i1 %i.ppi, label %bb.ks, label %bb.kw

bb.ks:                                            ; preds = %bb.kr
  %.val.i1471 = load i16, ptr %1, align 2, !tbaa !558
  %i.ppj = zext i16 %.val.i1471 to i32
  %i.ppk = shl nuw i32 %i.ppj, 16
  %i.ppl = bitcast i32 %i.ppk to float            ; 17 uses
  %i.ppm = icmp sgt i32 %i.obt, 15
  br i1 %i.ppm, label %.lr.ph.i90.i.a, label %._crit_edge.i.i1472

.lr.ph.i90.i.a:                                   ; preds = %bb.ks
  %i.ppn = insertelement <16 x float> poison, float %i.ppl, i64 0
  %i.ppo = shufflevector <16 x float> %i.ppn, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.ppp = fcmp fast one <16 x float> %i.ppo, zeroinitializer
  %i.ppq = fcmp fast olt <16 x float> %i.ppo, zeroinitializer
  %i.ppr = bitcast <16 x float> %i.ppo to <16 x i32>
  %i.pps = icmp slt <16 x i32> %i.ppr, zeroinitializer
  %i.ppt = select fast <16 x i1> %i.pps, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.ppu = fdiv fast <16 x float> splat (float 1.000000e+00), %i.ppo
  br label %bb.kt

bb.kt:                                            ; preds = %bb.kt, %.lr.ph.i90.i.a
  %.087.i.i = phi ptr [ %0, %.lr.ph.i90.i.a ], [ %i.pre, %bb.kt ] ; 2 uses
  %.03086.i.i = phi ptr [ %2, %.lr.ph.i90.i.a ], [ %i.prf, %bb.kt ] ; 2 uses
  %.03485.i.i = phi i32 [ 0, %.lr.ph.i90.i.a ], [ %i.prg, %bb.kt ]
  %i.ppv = load <16 x bfloat>, ptr %.087.i.i, align 1, !tbaa !555 ; 3 uses
  %i.ppw = fpext fast <16 x bfloat> %i.ppv to <16 x float> ; 2 uses
  %i.ppx = fcmp fast one <16 x bfloat> %i.ppv, zeroinitializer
  %i.ppy = fcmp fast olt <16 x bfloat> %i.ppv, zeroinitializer
  %i.ppz = select fast <16 x i1> %i.ppy, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.pqa = select fast <16 x i1> %i.ppq, <16 x float> %i.ppz, <16 x float> zeroinitializer
  %i.pqb = fmul fast <16 x float> %i.ppw, %i.ppu  ; 2 uses
  %i.pqc = bitcast <16 x float> %i.pqb to <16 x i32>
  %i.pqd = and <16 x i32> %i.pqc, splat (i32 -2147483648)
  %i.pqe = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.pqb) ; 3 uses
  %i.pqf = fcmp fast ogt <16 x float> %i.pqe, splat (float 1.000000e+00) ; 2 uses
  %i.pqg = select fast <16 x i1> %i.pqf, <16 x float> splat (float -1.000000e+00), <16 x float> %i.pqe
  %i.pqh = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.pqe, <16 x float> splat (float 1.000000e+00))
  %i.pqi = fdiv fast <16 x float> %i.pqg, %i.pqh  ; 3 uses
  %i.pqj = fmul fast <16 x float> %i.pqi, %i.pqi  ; 3 uses
  %i.pqk = fmul fast <16 x float> %i.pqj, %i.pqj  ; 7 uses
  %i.pql = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pqk, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.pqm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pqk, <16 x float> nofpclass(nan inf) %i.pql, <16 x float> splat (float f0xBE117200))
  %i.pqn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pqk, <16 x float> nofpclass(nan inf) %i.pqm, <16 x float> splat (float f0xBEAAAA53))
  %i.pqo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pqk, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.pqp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pqk, <16 x float> nofpclass(nan inf) %i.pqo, <16 x float> splat (float f0x3DD9ED24))
  %i.pqq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pqk, <16 x float> nofpclass(nan inf) %i.pqp, <16 x float> splat (float f0x3E4CB974))
  %i.pqr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pqk, <16 x float> nofpclass(nan inf) %i.pqq, <16 x float> splat (float 1.000000e+00))
  %i.pqs = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pqj, <16 x float> nofpclass(nan inf) %i.pqn, <16 x float> nofpclass(nan inf) %i.pqr)
  %i.pqt = fmul fast <16 x float> %i.pqs, %i.pqi
  %i.pqu = select fast <16 x i1> %i.pqf, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.pqv = fadd fast <16 x float> %i.pqt, %i.pqu
  %i.pqw = bitcast <16 x float> %i.pqv to <16 x i32>
  %i.pqx = or <16 x i32> %i.pqd, %i.pqw
  %i.pqy = bitcast <16 x i32> %i.pqx to <16 x float>
  %i.pqz = fadd fast <16 x float> %i.pqa, %i.pqy
  %i.pra = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.ppw)
  %i.prb = select <16 x i1> %i.ppp, <16 x float> %i.pqz, <16 x float> %i.pra
  %i.prc = select <16 x i1> %i.ppx, <16 x float> %i.prb, <16 x float> %i.ppt
  %i.prd = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.prc)
  store <16 x bfloat> %i.prd, ptr %.03086.i.i, align 1, !tbaa !555
  %i.pre = getelementptr inbounds nuw i8, ptr %.087.i.i, i64 32 ; 2 uses
  %i.prf = getelementptr inbounds nuw i8, ptr %.03086.i.i, i64 32 ; 2 uses
  %i.prg = add nuw nsw i32 %.03485.i.i, 16        ; 2 uses
  %i.prh = or disjoint i32 %i.prg, 15
  %i.pri = icmp slt i32 %i.prh, %i.obt
  br i1 %i.pri, label %bb.kt, label %._crit_edge.loopexit.i.i1477, !llvm.loop !330

._crit_edge.loopexit.i.i1477:                     ; preds = %bb.kt
  %i.prj = and i32 %i.obt, 2147483632
  br label %._crit_edge.i.i1472

._crit_edge.i.i1472:                              ; preds = %._crit_edge.loopexit.i.i1477, %bb.ks
  %.034.lcssa.i81.i = phi i32 [ 0, %bb.ks ], [ %i.prj, %._crit_edge.loopexit.i.i1477 ] ; 3 uses
  %.030.lcssa.i.i1473 = phi ptr [ %2, %bb.ks ], [ %i.prf, %._crit_edge.loopexit.i.i1477 ] ; 2 uses
  %.0.lcssa.i82.i = phi ptr [ %0, %bb.ks ], [ %i.pre, %._crit_edge.loopexit.i.i1477 ] ; 2 uses
  %i.prk = or disjoint i32 %.034.lcssa.i81.i, 7
  %i.prl = icmp slt i32 %i.prk, %i.obt
  br i1 %i.prl, label %.lr.ph94.i.i, label %._crit_edge95.i.i

.lr.ph94.i.i:                                     ; preds = %._crit_edge.i.i1472
  %i.prm = insertelement <8 x float> poison, float %i.ppl, i64 0
  %i.prn = shufflevector <8 x float> %i.prm, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.pro = fcmp fast ueq <8 x float> %i.prn, zeroinitializer
  %i.prp = fcmp fast olt <8 x float> %i.prn, zeroinitializer
  %i.prq = bitcast <8 x float> %i.prn to <8 x i32>
  %isneg.inv82.i.i = icmp slt <8 x i32> %i.prq, zeroinitializer
  %i.prr = select <8 x i1> %isneg.inv82.i.i, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.prs = fdiv fast <8 x float> splat (float 1.000000e+00), %i.prn
  br label %bb.ku

bb.ku:                                            ; preds = %bb.ku, %.lr.ph94.i.i
  %.192.i.i = phi ptr [ %.0.lcssa.i82.i, %.lr.ph94.i.i ], [ %i.ptg, %bb.ku ] ; 2 uses
  %.13191.i.i = phi ptr [ %.030.lcssa.i.i1473, %.lr.ph94.i.i ], [ %i.pth, %bb.ku ] ; 2 uses
  %.13590.i.i = phi i32 [ %.034.lcssa.i81.i, %.lr.ph94.i.i ], [ %i.pti, %bb.ku ]
  %i.prt = load <8 x bfloat>, ptr %.192.i.i, align 1, !tbaa !555 ; 3 uses
  %i.pru = fpext fast <8 x bfloat> %i.prt to <8 x float> ; 2 uses
  %i.prv = fcmp fast ueq <8 x bfloat> %i.prt, zeroinitializer
  %i.prw = bitcast <8 x float> %i.pru to <8 x i32>
  %i.prx = and <8 x i32> %i.prw, splat (i32 -2147483648)
  %i.pry = fcmp fast olt <8 x bfloat> %i.prt, zeroinitializer
  %i.prz = select <8 x i1> %i.pry, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.psa = select <8 x i1> %i.prp, <8 x float> %i.prz, <8 x float> zeroinitializer
  %i.psb = fmul fast <8 x float> %i.pru, %i.prs   ; 2 uses
  %i.psc = bitcast <8 x float> %i.psb to <8 x i32>
  %i.psd = and <8 x i32> %i.psc, splat (i32 -2147483648)
  %i.pse = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.psb) ; 3 uses
  %i.psf = fcmp fast ogt <8 x float> %i.pse, splat (float 1.000000e+00) ; 2 uses
  %i.psg = select <8 x i1> %i.psf, <8 x float> splat (float -1.000000e+00), <8 x float> %i.pse
  %i.psh = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.pse, <8 x float> splat (float 1.000000e+00))
  %i.psi = fdiv fast <8 x float> %i.psg, %i.psh   ; 3 uses
  %i.psj = fmul fast <8 x float> %i.psi, %i.psi   ; 3 uses
  %i.psk = fmul fast <8 x float> %i.psj, %i.psj   ; 7 uses
  %i.psl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.psk, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.psm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.psk, <8 x float> nofpclass(nan inf) %i.psl, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.psn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.psk, <8 x float> nofpclass(nan inf) %i.psm, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.pso = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.psk, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.psp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.psk, <8 x float> nofpclass(nan inf) %i.pso, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.psq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.psk, <8 x float> nofpclass(nan inf) %i.psp, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.psr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.psk, <8 x float> nofpclass(nan inf) %i.psq, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.pss = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.psj, <8 x float> nofpclass(nan inf) %i.psn, <8 x float> nofpclass(nan inf) %i.psr)
  %i.pst = fmul fast <8 x float> %i.pss, %i.psi
  %i.psu = select <8 x i1> %i.psf, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.psv = fadd fast <8 x float> %i.pst, %i.psu
  %i.psw = bitcast <8 x float> %i.psv to <8 x i32>
  %i.psx = or <8 x i32> %i.psd, %i.psw
  %i.psy = bitcast <8 x i32> %i.psx to <8 x float>
  %i.psz = fadd fast <8 x float> %i.psa, %i.psy
  %i.pta = or disjoint <8 x i32> %i.prx, splat (i32 1070141403)
  %i.ptb = bitcast <8 x float> %i.psz to <8 x i32>
  %i.ptc = select <8 x i1> %i.pro, <8 x i32> %i.pta, <8 x i32> %i.ptb
  %i.ptd = select <8 x i1> %i.prv, <8 x i32> %i.prr, <8 x i32> %i.ptc
  %i.pte = bitcast <8 x i32> %i.ptd to <8 x float>
  %i.ptf = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.pte)
  store <8 x bfloat> %i.ptf, ptr %.13191.i.i, align 1, !tbaa !555
  %i.ptg = getelementptr inbounds nuw i8, ptr %.192.i.i, i64 16 ; 2 uses
  %i.pth = getelementptr inbounds nuw i8, ptr %.13191.i.i, i64 16 ; 2 uses
  %i.pti = add nuw nsw i32 %.13590.i.i, 8         ; 3 uses
  %i.ptj = or disjoint i32 %i.pti, 7
  %i.ptk = icmp slt i32 %i.ptj, %i.obt
  br i1 %i.ptk, label %bb.ku, label %._crit_edge95.i.i, !llvm.loop !331

._crit_edge95.i.i:                                ; preds = %bb.ku, %._crit_edge.i.i1472
  %.135.lcssa.i83.i = phi i32 [ %.034.lcssa.i81.i, %._crit_edge.i.i1472 ], [ %i.pti, %bb.ku ] ; 3 uses
  %.131.lcssa.i.i1474 = phi ptr [ %.030.lcssa.i.i1473, %._crit_edge.i.i1472 ], [ %i.pth, %bb.ku ] ; 2 uses
  %.1.lcssa.i84.i = phi ptr [ %.0.lcssa.i82.i, %._crit_edge.i.i1472 ], [ %i.ptg, %bb.ku ] ; 2 uses
  %i.ptl = or disjoint i32 %.135.lcssa.i83.i, 3
  %i.ptm = icmp slt i32 %i.ptl, %i.obt
  br i1 %i.ptm, label %.lr.ph103.i.i, label %.preheader.i85.i

.lr.ph103.i.i:                                    ; preds = %._crit_edge95.i.i
  %i.ptn = insertelement <4 x float> poison, float %i.ppl, i64 0
  %i.pto = shufflevector <4 x float> %i.ptn, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ptp = fcmp fast oeq <4 x float> %i.pto, zeroinitializer
  %i.ptq = fcmp fast olt <4 x float> %i.pto, zeroinitializer
  %i.ptr = bitcast <4 x float> %i.pto to <4 x i32>
  %isneg.inv.i89.i = icmp slt <4 x i32> %i.ptr, zeroinitializer
  %i.pts = select <4 x i1> %isneg.inv.i89.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.ptt = fdiv fast <4 x float> splat (float 1.000000e+00), %i.pto
  br label %bb.kv

.preheader.i85.i:                                 ; preds = %bb.kv, %._crit_edge95.i.i
  %.236.lcssa.i86.i = phi i32 [ %.135.lcssa.i83.i, %._crit_edge95.i.i ], [ %i.pzf, %bb.kv ] ; 5 uses
  %.232.lcssa.i.i1475 = phi ptr [ %.131.lcssa.i.i1474, %._crit_edge95.i.i ], [ %i.pze, %bb.kv ] ; 6 uses
  %.2.lcssa.i87.i = phi ptr [ %.1.lcssa.i84.i, %._crit_edge95.i.i ], [ %i.pzd, %bb.kv ] ; 6 uses
  %i.ptu = icmp slt i32 %.236.lcssa.i86.i, %i.obt
  br i1 %i.ptu, label %iter.check7218, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7218:                                   ; preds = %.preheader.i85.i
  %.232.lcssa.i.i14757202 = ptrtoaddr ptr %.232.lcssa.i.i1475 to i64
  %.2.lcssa.i87.i7201 = ptrtoaddr ptr %.2.lcssa.i87.i to i64
  %i.ptv = xor i32 %.236.lcssa.i86.i, -1
  %i.ptw = add i32 %i.obt, %i.ptv                 ; 3 uses
  %i.ptx = zext i32 %i.ptw to i64
  %i.pty = add nuw nsw i64 %i.ptx, 1              ; 5 uses
  %min.iters.check7203 = icmp ult i32 %i.ptw, 7
  %i.ptz = sub i64 %.2.lcssa.i87.i7201, %.232.lcssa.i.i14757202
  %diff.check7205 = icmp ugt i64 %i.ptz, -64
  %or.cond9221.a = select i1 %min.iters.check7203, i1 true, i1 %diff.check7205
  br i1 %or.cond9221.a, label %.lr.ph110.i.i.preheader, label %vector.main.loop.iter.check7206

vector.main.loop.iter.check7206:                  ; preds = %iter.check7218
  %min.iters.check7207 = icmp ult i32 %i.ptw, 31
  br i1 %min.iters.check7207, label %vec.epilog.ph7222, label %vector.ph7208

vector.ph7208:                                    ; preds = %vector.main.loop.iter.check7206
  %i.pua = and i64 %i.pty, 24
  %n.vec7209 = and i64 %i.pty, 8589934560         ; 5 uses
  %i.pub = shl nuw nsw i64 %n.vec7209, 1          ; 2 uses
  %i.puc = getelementptr i8, ptr %.2.lcssa.i87.i, i64 %i.pub
  %i.pud = getelementptr i8, ptr %.232.lcssa.i.i1475, i64 %i.pub
  %i.pue = trunc i64 %n.vec7209 to i32
  %i.puf = add i32 %.236.lcssa.i86.i, %i.pue
  %i.pug = insertelement <16 x float> poison, float %i.ppl, i64 0
  %i.puh = shufflevector <16 x float> %i.pug, <16 x float> poison, <16 x i32> zeroinitializer
  %i.pui = insertelement <8 x float> poison, float %i.ppl, i64 0
  %i.puj = shufflevector <8 x float> %i.pui, <8 x float> poison, <8 x i32> zeroinitializer
  %i.puk = insertelement <4 x float> poison, float %i.ppl, i64 0
  %i.pul = shufflevector <4 x float> %i.puk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pum = insertelement <2 x float> poison, float %i.ppl, i64 0
  %i.pun = shufflevector <2 x float> %i.pum, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7210

vector.body7210:                                  ; preds = %vector.ph7208, %vector.body7210
  %index7211 = phi i64 [ 0, %vector.ph7208 ], [ %index.next7215, %vector.body7210 ] ; 2 uses
  %i.puo = shl i64 %index7211, 1                  ; 2 uses
  %next.gep7212 = getelementptr i8, ptr %.2.lcssa.i87.i, i64 %i.puo
  %next.gep7213 = getelementptr i8, ptr %.232.lcssa.i.i1475, i64 %i.puo
  %wide.load7214 = load <32 x i16>, ptr %next.gep7212, align 2, !tbaa !558
  %i.pup = zext <32 x i16> %wide.load7214 to <32 x i32>
  %i.puq = shl nuw <32 x i32> %i.pup, splat (i32 16)
  %i.pur = bitcast <32 x i32> %i.puq to <32 x float> ; 6 uses
  %i.pus = extractelement <32 x float> %i.pur, i64 0
  %i.put = tail call fast float @llvm.atan2.f32(float %i.pus, float %i.ppl)
  %i.puu = shufflevector <32 x float> %i.pur, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.puv = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.puu, <16 x float> %i.puh)
  %i.puw = shufflevector <32 x float> %i.pur, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.pux = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.puw, <8 x float> %i.puj)
  %i.puy = shufflevector <32 x float> %i.pur, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.puz = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.puy, <4 x float> %i.pul)
  %i.pva = extractelement <32 x float> %i.pur, i64 29
  %i.pvb = tail call fast float @llvm.atan2.f32(float %i.pva, float %i.ppl)
  %i.pvc = shufflevector <32 x float> %i.pur, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.pvd = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.pvc, <2 x float> %i.pun)
  %i.pve = insertelement <32 x float> poison, float %i.put, i64 0
  %i.pvf = shufflevector <16 x float> %i.puv, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pvg = shufflevector <32 x float> %i.pve, <32 x float> %i.pvf, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pvh = shufflevector <8 x float> %i.pux, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pvi = shufflevector <32 x float> %i.pvg, <32 x float> %i.pvh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pvj = shufflevector <4 x float> %i.puz, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pvk = shufflevector <32 x float> %i.pvi, <32 x float> %i.pvj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.pvl = insertelement <32 x float> %i.pvk, float %i.pvb, i64 29
  %i.pvm = shufflevector <2 x float> %i.pvd, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pvn = shufflevector <32 x float> %i.pvl, <32 x float> %i.pvm, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.pvo = bitcast <32 x float> %i.pvn to <32 x i32>
  %i.pvp = lshr <32 x i32> %i.pvo, splat (i32 16)
  %i.pvq = trunc nuw <32 x i32> %i.pvp to <32 x i16>
  store <32 x i16> %i.pvq, ptr %next.gep7213, align 2, !tbaa !558
  %index.next7215 = add nuw i64 %index7211, 32    ; 2 uses
  %i.pvr = icmp eq i64 %index.next7215, %n.vec7209
  br i1 %i.pvr, label %middle.block7216, label %vector.body7210, !llvm.loop !332

middle.block7216:                                 ; preds = %vector.body7210
  %cmp.n7217 = icmp eq i64 %i.pty, %n.vec7209
  br i1 %cmp.n7217, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7219

vec.epilog.iter.check7219:                        ; preds = %middle.block7216
  %min.epilog.iters.check7221 = icmp eq i64 %i.pua, 0
  br i1 %min.epilog.iters.check7221, label %.lr.ph110.i.i.preheader, label %vec.epilog.ph7222, !prof !561

vec.epilog.ph7222:                                ; preds = %vector.main.loop.iter.check7206, %vec.epilog.iter.check7219
  %vec.epilog.resume.val7223 = phi i64 [ %n.vec7209, %vec.epilog.iter.check7219 ], [ 0, %vector.main.loop.iter.check7206 ]
  %n.vec7224 = and i64 %i.pty, 8589934584         ; 4 uses
  %i.pvs = shl nuw nsw i64 %n.vec7224, 1          ; 2 uses
  %i.pvt = getelementptr i8, ptr %.2.lcssa.i87.i, i64 %i.pvs
  %i.pvu = getelementptr i8, ptr %.232.lcssa.i.i1475, i64 %i.pvs
  %i.pvv = trunc i64 %n.vec7224 to i32
  %i.pvw = add i32 %.236.lcssa.i86.i, %i.pvv
  %i.pvx = insertelement <4 x float> poison, float %i.ppl, i64 0
  %i.pvy = shufflevector <4 x float> %i.pvx, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7225

vec.epilog.vector.body7225:                       ; preds = %vec.epilog.vector.body7225, %vec.epilog.ph7222
  %index7226 = phi i64 [ %vec.epilog.resume.val7223, %vec.epilog.ph7222 ], [ %index.next7230, %vec.epilog.vector.body7225 ] ; 2 uses
  %i.pvz = shl i64 %index7226, 1                  ; 2 uses
  %next.gep7227 = getelementptr i8, ptr %.2.lcssa.i87.i, i64 %i.pvz
  %next.gep7228 = getelementptr i8, ptr %.232.lcssa.i.i1475, i64 %i.pvz
  %wide.load7229 = load <8 x i16>, ptr %next.gep7227, align 2, !tbaa !558
  %i.pwa = zext <8 x i16> %wide.load7229 to <8 x i32>
  %i.pwb = shl nuw <8 x i32> %i.pwa, splat (i32 16)
  %i.pwc = bitcast <8 x i32> %i.pwb to <8 x float> ; 5 uses
  %i.pwd = extractelement <8 x float> %i.pwc, i64 0
  %i.pwe = tail call fast float @llvm.atan2.f32(float %i.pwd, float %i.ppl)
  %i.pwf = extractelement <8 x float> %i.pwc, i64 1
  %i.pwg = tail call fast float @llvm.atan2.f32(float %i.pwf, float %i.ppl)
  %i.pwh = extractelement <8 x float> %i.pwc, i64 2
  %i.pwi = tail call fast float @llvm.atan2.f32(float %i.pwh, float %i.ppl)
  %i.pwj = shufflevector <8 x float> %i.pwc, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.pwk = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.pwj, <4 x float> %i.pvy)
  %i.pwl = extractelement <8 x float> %i.pwc, i64 7
  %i.pwm = tail call fast float @llvm.atan2.f32(float %i.pwl, float %i.ppl)
  %i.pwn = insertelement <8 x float> poison, float %i.pwe, i64 0
  %i.pwo = insertelement <8 x float> %i.pwn, float %i.pwg, i64 1
  %i.pwp = insertelement <8 x float> %i.pwo, float %i.pwi, i64 2
  %i.pwq = shufflevector <4 x float> %i.pwk, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pwr = shufflevector <8 x float> %i.pwp, <8 x float> %i.pwq, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.pws = insertelement <8 x float> %i.pwr, float %i.pwm, i64 7
  %i.pwt = bitcast <8 x float> %i.pws to <8 x i32>
  %i.pwu = lshr <8 x i32> %i.pwt, splat (i32 16)
  %i.pwv = trunc nuw <8 x i32> %i.pwu to <8 x i16>
  store <8 x i16> %i.pwv, ptr %next.gep7228, align 2, !tbaa !558
  %index.next7230 = add nuw i64 %index7226, 8     ; 2 uses
  %i.pww = icmp eq i64 %index.next7230, %n.vec7224
  br i1 %i.pww, label %vec.epilog.middle.block7231, label %vec.epilog.vector.body7225, !llvm.loop !333

vec.epilog.middle.block7231:                      ; preds = %vec.epilog.vector.body7225
  %cmp.n7232 = icmp eq i64 %i.pty, %n.vec7224
  br i1 %cmp.n7232, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph110.i.i.preheader

.lr.ph110.i.i.preheader:                          ; preds = %iter.check7218, %vec.epilog.iter.check7219, %vec.epilog.middle.block7231
  %.3109.i.i.ph = phi ptr [ %.2.lcssa.i87.i, %iter.check7218 ], [ %i.puc, %vec.epilog.iter.check7219 ], [ %i.pvt, %vec.epilog.middle.block7231 ] ; 3 uses
  %.333108.i.i.ph = phi ptr [ %.232.lcssa.i.i1475, %iter.check7218 ], [ %i.pud, %vec.epilog.iter.check7219 ], [ %i.pvu, %vec.epilog.middle.block7231 ] ; 3 uses
  %.337107.i.i.ph = phi i32 [ %.236.lcssa.i86.i, %iter.check7218 ], [ %i.puf, %vec.epilog.iter.check7219 ], [ %i.pvw, %vec.epilog.middle.block7231 ] ; 4 uses
  %i.pwx = sub i32 %i.obt, %.337107.i.i.ph
  %.neg11073 = add i32 %.337107.i.i.ph, 1
  %xtraiter10475 = and i32 %i.pwx, 1
  %lcmp.mod10476.not = icmp eq i32 %xtraiter10475, 0
  br i1 %lcmp.mod10476.not, label %.lr.ph110.i.i.prol.loopexit, label %.lr.ph110.i.i.prol

.lr.ph110.i.i.prol:                               ; preds = %.lr.ph110.i.i.preheader
  %i.pwy = getelementptr inbounds nuw i8, ptr %.3109.i.i.ph, i64 2
  %i.pwz = load i16, ptr %.3109.i.i.ph, align 2, !tbaa !558
  %i.pxa = zext i16 %i.pwz to i32
  %i.pxb = shl nuw i32 %i.pxa, 16
  %i.pxc = bitcast i32 %i.pxb to float
  %i.pxd = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.pxc, float %i.ppl)
  %i.pxe = bitcast float %i.pxd to i32
  %i.pxf = lshr i32 %i.pxe, 16
  %i.pxg = trunc nuw i32 %i.pxf to i16
  %i.pxh = getelementptr inbounds nuw i8, ptr %.333108.i.i.ph, i64 2
  store i16 %i.pxg, ptr %.333108.i.i.ph, align 2, !tbaa !558
  %i.pxi = add nuw nsw i32 %.337107.i.i.ph, 1
  br label %.lr.ph110.i.i.prol.loopexit

.lr.ph110.i.i.prol.loopexit:                      ; preds = %.lr.ph110.i.i.prol, %.lr.ph110.i.i.preheader
  %.3109.i.i.unr = phi ptr [ %.3109.i.i.ph, %.lr.ph110.i.i.preheader ], [ %i.pwy, %.lr.ph110.i.i.prol ]
  %.333108.i.i.unr = phi ptr [ %.333108.i.i.ph, %.lr.ph110.i.i.preheader ], [ %i.pxh, %.lr.ph110.i.i.prol ]
  %.337107.i.i.unr = phi i32 [ %.337107.i.i.ph, %.lr.ph110.i.i.preheader ], [ %i.pxi, %.lr.ph110.i.i.prol ]
  %i.pxj = icmp eq i32 %i.obt, %.neg11073
  br i1 %i.pxj, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph110.i.i

bb.kv:                                            ; preds = %bb.kv, %.lr.ph103.i.i
  %.2101.i.i = phi ptr [ %.1.lcssa.i84.i, %.lr.ph103.i.i ], [ %i.pzd, %bb.kv ] ; 2 uses
  %.232100.i.i = phi ptr [ %.131.lcssa.i.i1474, %.lr.ph103.i.i ], [ %i.pze, %bb.kv ] ; 2 uses
  %.23699.i.i = phi i32 [ %.135.lcssa.i83.i, %.lr.ph103.i.i ], [ %i.pzf, %bb.kv ]
  %i.pxk = load i64, ptr %.2101.i.i, align 1, !tbaa !555
  %i.pxl = insertelement <2 x i64> poison, i64 %i.pxk, i64 0
  %i.pxm = bitcast <2 x i64> %i.pxl to <8 x i16>
  %i.pxn = shufflevector <8 x i16> %i.pxm, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 2 uses
  %i.pxo = bitcast <8 x i16> %i.pxn to <4 x float> ; 3 uses
  %i.pxp = fcmp fast oeq <4 x float> %i.pxo, zeroinitializer
  %i.pxq = fcmp fast olt <4 x float> %i.pxo, zeroinitializer
  %i.pxr = select <4 x i1> %i.pxq, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.pxs = select <4 x i1> %i.ptq, <4 x float> %i.pxr, <4 x float> zeroinitializer
  %i.pxt = fmul fast <4 x float> %i.pxo, %i.ptt   ; 2 uses
  %i.pxu = bitcast <4 x float> %i.pxt to <4 x i32>
  %i.pxv = and <4 x i32> %i.pxu, splat (i32 -2147483648)
  %i.pxw = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pxt) ; 3 uses
  %i.pxx = fcmp fast ogt <4 x float> %i.pxw, splat (float 1.000000e+00) ; 2 uses
  %i.pxy = select <4 x i1> %i.pxx, <4 x float> splat (float -1.000000e+00), <4 x float> %i.pxw
  %i.pxz = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.pxw, <4 x float> splat (float 1.000000e+00))
  %i.pya = fdiv fast <4 x float> %i.pxy, %i.pxz   ; 3 uses
  %i.pyb = fmul fast <4 x float> %i.pya, %i.pya   ; 3 uses
  %i.pyc = fmul fast <4 x float> %i.pyb, %i.pyb   ; 7 uses
  %i.pyd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pyc, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.pye = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pyc, <4 x float> nofpclass(nan inf) %i.pyd, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.pyf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pyc, <4 x float> nofpclass(nan inf) %i.pye, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.pyg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pyc, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.pyh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pyc, <4 x float> nofpclass(nan inf) %i.pyg, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.pyi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pyc, <4 x float> nofpclass(nan inf) %i.pyh, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.pyj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pyc, <4 x float> nofpclass(nan inf) %i.pyi, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.pyk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pyb, <4 x float> nofpclass(nan inf) %i.pyf, <4 x float> nofpclass(nan inf) %i.pyj)
  %i.pyl = fmul fast <4 x float> %i.pyk, %i.pya
  %i.pym = select <4 x i1> %i.pxx, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.pyn = fadd fast <4 x float> %i.pyl, %i.pym
  %i.pyo = bitcast <4 x float> %i.pyn to <4 x i32>
  %i.pyp = or <4 x i32> %i.pxv, %i.pyo
  %i.pyq = bitcast <4 x i32> %i.pyp to <4 x float>
  %i.pyr = fadd fast <4 x float> %i.pxs, %i.pyq
  %i.pys = bitcast <8 x i16> %i.pxn to <4 x i32>
  %i.pyt = and <4 x i32> %i.pys, splat (i32 -2147483648)
  %i.pyu = or disjoint <4 x i32> %i.pyt, splat (i32 1070141403)
  %i.pyv = bitcast <4 x float> %i.pyr to <4 x i32>
  %i.pyw = select <4 x i1> %i.ptp, <4 x i32> %i.pyu, <4 x i32> %i.pyv
  %i.pyx = select <4 x i1> %i.pxp, <4 x i32> %i.pts, <4 x i32> %i.pyw
  %i.pyy = bitcast <4 x i32> %i.pyx to <4 x float>
  %i.pyz = shufflevector <4 x float> %i.pyy, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.pza = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.pyz)
  %i.pzb = bitcast <8 x bfloat> %i.pza to <2 x i64>
  %i.pzc = extractelement <2 x i64> %i.pzb, i64 0
  store i64 %i.pzc, ptr %.232100.i.i, align 1, !tbaa !555
  %i.pzd = getelementptr inbounds nuw i8, ptr %.2101.i.i, i64 8 ; 2 uses
  %i.pze = getelementptr inbounds nuw i8, ptr %.232100.i.i, i64 8 ; 2 uses
  %i.pzf = add nuw nsw i32 %.23699.i.i, 4         ; 3 uses
  %i.pzg = or disjoint i32 %i.pzf, 3
  %i.pzh = icmp slt i32 %i.pzg, %i.obt
  br i1 %i.pzh, label %bb.kv, label %.preheader.i85.i, !llvm.loop !334

.lr.ph110.i.i:                                    ; preds = %.lr.ph110.i.i.prol.loopexit, %.lr.ph110.i.i
  %.3109.i.i = phi ptr [ %i.pzs, %.lr.ph110.i.i ], [ %.3109.i.i.unr, %.lr.ph110.i.i.prol.loopexit ] ; 3 uses
  %.333108.i.i = phi ptr [ %i.qab, %.lr.ph110.i.i ], [ %.333108.i.i.unr, %.lr.ph110.i.i.prol.loopexit ] ; 3 uses
  %.337107.i.i = phi i32 [ %i.qac, %.lr.ph110.i.i ], [ %.337107.i.i.unr, %.lr.ph110.i.i.prol.loopexit ]
  %i.pzi = getelementptr inbounds nuw i8, ptr %.3109.i.i, i64 2
  %i.pzj = load i16, ptr %.3109.i.i, align 2, !tbaa !558
  %i.pzk = zext i16 %i.pzj to i32
  %i.pzl = shl nuw i32 %i.pzk, 16
  %i.pzm = bitcast i32 %i.pzl to float
  %i.pzn = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.pzm, float %i.ppl)
  %i.pzo = bitcast float %i.pzn to i32
  %i.pzp = lshr i32 %i.pzo, 16
  %i.pzq = trunc nuw i32 %i.pzp to i16
  %i.pzr = getelementptr inbounds nuw i8, ptr %.333108.i.i, i64 2
  store i16 %i.pzq, ptr %.333108.i.i, align 2, !tbaa !558
  %i.pzs = getelementptr inbounds nuw i8, ptr %.3109.i.i, i64 4
  %i.pzt = load i16, ptr %i.pzi, align 2, !tbaa !558
  %i.pzu = zext i16 %i.pzt to i32
  %i.pzv = shl nuw i32 %i.pzu, 16
  %i.pzw = bitcast i32 %i.pzv to float
  %i.pzx = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.pzw, float %i.ppl)
  %i.pzy = bitcast float %i.pzx to i32
  %i.pzz = lshr i32 %i.pzy, 16
  %i.qaa = trunc nuw i32 %i.pzz to i16
  %i.qab = getelementptr inbounds nuw i8, ptr %.333108.i.i, i64 4
  store i16 %i.qaa, ptr %i.pzr, align 2, !tbaa !558
  %i.qac = add nuw nsw i32 %.337107.i.i, 2        ; 2 uses
  %exitcond.not.i88.i1476.1 = icmp eq i32 %i.qac, %i.obt
  br i1 %exitcond.not.i88.i1476.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph110.i.i, !llvm.loop !335

bb.kw:                                            ; preds = %bb.kr
  %i.qad = icmp eq i32 %3, 1
  br i1 %i.qad, label %bb.kx, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.kx:                                            ; preds = %bb.kw
  switch i32 %.sroa.speculated.i1470, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 16, label %.lr.ph129.i.i
    i32 8, label %.lr.ph125.i.i
    i32 4, label %.lr.ph.i91.i
  ]

.lr.ph129.i.i:                                    ; preds = %bb.kx
  %i.qae = load <16 x bfloat>, ptr %0, align 1, !tbaa !555 ; 3 uses
  %i.qaf = fpext fast <16 x bfloat> %i.qae to <16 x float> ; 2 uses
  %i.qag = fcmp fast one <16 x bfloat> %i.qae, zeroinitializer
  %i.qah = fcmp fast olt <16 x bfloat> %i.qae, zeroinitializer
  %i.qai = select fast <16 x i1> %i.qah, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.qaj = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.qaf)
  br label %bb.ky

bb.ky:                                            ; preds = %bb.ky, %.lr.ph129.i.i
  %.028128.i.i = phi ptr [ %1, %.lr.ph129.i.i ], [ %i.qby, %bb.ky ] ; 2 uses
  %.030127.i.i = phi ptr [ %2, %.lr.ph129.i.i ], [ %i.qbz, %bb.ky ] ; 2 uses
  %.033126.i.i = phi i32 [ 0, %.lr.ph129.i.i ], [ %i.qca, %bb.ky ]
  %i.qak = load i16, ptr %.028128.i.i, align 2, !tbaa !558
  %i.qal = zext i16 %i.qak to i32
  %i.qam = shl nuw i32 %i.qal, 16
  %i.qan = insertelement <16 x i32> poison, i32 %i.qam, i64 0
  %i.qao = bitcast <16 x i32> %i.qan to <16 x float>
  %i.qap = shufflevector <16 x float> %i.qao, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.qaq = fcmp fast one <16 x float> %i.qap, zeroinitializer
  %i.qar = fcmp fast olt <16 x float> %i.qap, zeroinitializer
  %i.qas = select fast <16 x i1> %i.qar, <16 x float> %i.qai, <16 x float> zeroinitializer
  %i.qat = fdiv fast <16 x float> %i.qaf, %i.qap  ; 2 uses
  %i.qau = bitcast <16 x float> %i.qat to <16 x i32>
  %i.qav = and <16 x i32> %i.qau, splat (i32 -2147483648)
  %i.qaw = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.qat) ; 3 uses
  %i.qax = fcmp fast ogt <16 x float> %i.qaw, splat (float 1.000000e+00) ; 2 uses
  %i.qay = select fast <16 x i1> %i.qax, <16 x float> splat (float -1.000000e+00), <16 x float> %i.qaw
  %i.qaz = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.qaw, <16 x float> splat (float 1.000000e+00))
  %i.qba = fdiv fast <16 x float> %i.qay, %i.qaz  ; 3 uses
  %i.qbb = fmul fast <16 x float> %i.qba, %i.qba  ; 3 uses
  %i.qbc = fmul fast <16 x float> %i.qbb, %i.qbb  ; 7 uses
  %i.qbd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qbc, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.qbe = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qbc, <16 x float> nofpclass(nan inf) %i.qbd, <16 x float> splat (float f0xBE117200))
  %i.qbf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qbc, <16 x float> nofpclass(nan inf) %i.qbe, <16 x float> splat (float f0xBEAAAA53))
  %i.qbg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qbc, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.qbh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qbc, <16 x float> nofpclass(nan inf) %i.qbg, <16 x float> splat (float f0x3DD9ED24))
  %i.qbi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qbc, <16 x float> nofpclass(nan inf) %i.qbh, <16 x float> splat (float f0x3E4CB974))
  %i.qbj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qbc, <16 x float> nofpclass(nan inf) %i.qbi, <16 x float> splat (float 1.000000e+00))
  %i.qbk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qbb, <16 x float> nofpclass(nan inf) %i.qbf, <16 x float> nofpclass(nan inf) %i.qbj)
  %i.qbl = fmul fast <16 x float> %i.qbk, %i.qba
  %i.qbm = select fast <16 x i1> %i.qax, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.qbn = fadd fast <16 x float> %i.qbl, %i.qbm
  %i.qbo = bitcast <16 x float> %i.qbn to <16 x i32>
  %i.qbp = or <16 x i32> %i.qav, %i.qbo
  %i.qbq = bitcast <16 x i32> %i.qbp to <16 x float>
  %i.qbr = fadd fast <16 x float> %i.qas, %i.qbq
  %i.qbs = bitcast <16 x float> %i.qap to <16 x i32>
  %i.qbt = icmp slt <16 x i32> %i.qbs, zeroinitializer
  %i.qbu = select fast <16 x i1> %i.qbt, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.qbv = select <16 x i1> %i.qaq, <16 x float> %i.qbr, <16 x float> %i.qaj
  %i.qbw = select <16 x i1> %i.qag, <16 x float> %i.qbv, <16 x float> %i.qbu
  %i.qbx = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.qbw)
  store <16 x bfloat> %i.qbx, ptr %.030127.i.i, align 1, !tbaa !555
  %i.qby = getelementptr inbounds nuw i8, ptr %.028128.i.i, i64 2
  %i.qbz = getelementptr inbounds nuw i8, ptr %.030127.i.i, i64 32
  %i.qca = add nuw nsw i32 %.033126.i.i, 1        ; 2 uses
  %exitcond133.not.i.i = icmp eq i32 %i.qca, %.sroa.speculated104.i
  br i1 %exitcond133.not.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.ky, !llvm.loop !336

.lr.ph125.i.i:                                    ; preds = %bb.kx
  %i.qcb = load <8 x bfloat>, ptr %0, align 1, !tbaa !555 ; 3 uses
  %i.qcc = fpext fast <8 x bfloat> %i.qcb to <8 x float> ; 2 uses
  %i.qcd = fcmp fast ueq <8 x bfloat> %i.qcb, zeroinitializer
  %i.qce = bitcast <8 x float> %i.qcc to <8 x i32>
  %i.qcf = and <8 x i32> %i.qce, splat (i32 -2147483648)
  %i.qcg = fcmp fast olt <8 x bfloat> %i.qcb, zeroinitializer
  %i.qch = select <8 x i1> %i.qcg, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.qci = or disjoint <8 x i32> %i.qcf, splat (i32 1070141403)
  br label %bb.kz

bb.kz:                                            ; preds = %bb.kz, %.lr.ph125.i.i
  %.1124.i.i = phi ptr [ %1, %.lr.ph125.i.i ], [ %i.qdy, %bb.kz ] ; 2 uses
  %.029123.i.i = phi i32 [ 0, %.lr.ph125.i.i ], [ %i.qea, %bb.kz ]
  %.131122.i.i = phi ptr [ %2, %.lr.ph125.i.i ], [ %i.qdz, %bb.kz ] ; 2 uses
  %i.qcj = load i16, ptr %.1124.i.i, align 2, !tbaa !558
  %i.qck = zext i16 %i.qcj to i32
  %i.qcl = shl nuw i32 %i.qck, 16
  %i.qcm = insertelement <8 x i32> poison, i32 %i.qcl, i64 0
  %i.qcn = bitcast <8 x i32> %i.qcm to <8 x float>
  %i.qco = shufflevector <8 x float> %i.qcn, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.qcp = fcmp fast ueq <8 x float> %i.qco, zeroinitializer
  %i.qcq = fcmp fast olt <8 x float> %i.qco, zeroinitializer
  %i.qcr = select <8 x i1> %i.qcq, <8 x float> %i.qch, <8 x float> zeroinitializer
  %i.qcs = fdiv fast <8 x float> %i.qcc, %i.qco   ; 2 uses
  %i.qct = bitcast <8 x float> %i.qcs to <8 x i32>
  %i.qcu = and <8 x i32> %i.qct, splat (i32 -2147483648)
  %i.qcv = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.qcs) ; 3 uses
  %i.qcw = fcmp fast ogt <8 x float> %i.qcv, splat (float 1.000000e+00) ; 2 uses
  %i.qcx = select <8 x i1> %i.qcw, <8 x float> splat (float -1.000000e+00), <8 x float> %i.qcv
  %i.qcy = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.qcv, <8 x float> splat (float 1.000000e+00))
  %i.qcz = fdiv fast <8 x float> %i.qcx, %i.qcy   ; 3 uses
  %i.qda = fmul fast <8 x float> %i.qcz, %i.qcz   ; 3 uses
  %i.qdb = fmul fast <8 x float> %i.qda, %i.qda   ; 7 uses
  %i.qdc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qdb, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.qdd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qdb, <8 x float> nofpclass(nan inf) %i.qdc, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.qde = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qdb, <8 x float> nofpclass(nan inf) %i.qdd, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.qdf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qdb, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.qdg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qdb, <8 x float> nofpclass(nan inf) %i.qdf, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.qdh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qdb, <8 x float> nofpclass(nan inf) %i.qdg, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.qdi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qdb, <8 x float> nofpclass(nan inf) %i.qdh, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.qdj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qda, <8 x float> nofpclass(nan inf) %i.qde, <8 x float> nofpclass(nan inf) %i.qdi)
  %i.qdk = fmul fast <8 x float> %i.qdj, %i.qcz
  %i.qdl = select <8 x i1> %i.qcw, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.qdm = fadd fast <8 x float> %i.qdk, %i.qdl
  %i.qdn = bitcast <8 x float> %i.qdm to <8 x i32>
  %i.qdo = or <8 x i32> %i.qcu, %i.qdn
  %i.qdp = bitcast <8 x i32> %i.qdo to <8 x float>
  %i.qdq = fadd fast <8 x float> %i.qcr, %i.qdp
  %i.qdr = bitcast <8 x float> %i.qco to <8 x i32>
  %isneg.inv114.i.i = icmp slt <8 x i32> %i.qdr, zeroinitializer
  %i.qds = select <8 x i1> %isneg.inv114.i.i, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.qdt = bitcast <8 x float> %i.qdq to <8 x i32>
  %i.qdu = select <8 x i1> %i.qcp, <8 x i32> %i.qci, <8 x i32> %i.qdt
  %i.qdv = select <8 x i1> %i.qcd, <8 x i32> %i.qds, <8 x i32> %i.qdu
  %i.qdw = bitcast <8 x i32> %i.qdv to <8 x float>
  %i.qdx = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.qdw)
  store <8 x bfloat> %i.qdx, ptr %.131122.i.i, align 1, !tbaa !555
  %i.qdy = getelementptr inbounds nuw i8, ptr %.1124.i.i, i64 2
  %i.qdz = getelementptr inbounds nuw i8, ptr %.131122.i.i, i64 16
  %i.qea = add nuw nsw i32 %.029123.i.i, 1        ; 2 uses
  %exitcond132.not.i.i = icmp eq i32 %i.qea, %.sroa.speculated104.i
  br i1 %exitcond132.not.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.kz, !llvm.loop !337

.lr.ph.i91.i:                                     ; preds = %bb.kx
  %i.qeb = load i64, ptr %0, align 1, !tbaa !555
  %i.qec = insertelement <2 x i64> poison, i64 %i.qeb, i64 0
  %i.qed = bitcast <2 x i64> %i.qec to <8 x i16>
  %i.qee = shufflevector <8 x i16> %i.qed, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 2 uses
  %i.qef = bitcast <8 x i16> %i.qee to <4 x float> ; 3 uses
  %i.qeg = fcmp fast oeq <4 x float> %i.qef, zeroinitializer
  %i.qeh = fcmp fast olt <4 x float> %i.qef, zeroinitializer
  %i.qei = select <4 x i1> %i.qeh, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.qej = bitcast <8 x i16> %i.qee to <4 x i32>
  %i.qek = and <4 x i32> %i.qej, splat (i32 -2147483648)
  %i.qel = or disjoint <4 x i32> %i.qek, splat (i32 1070141403)
  br label %bb.la

bb.la:                                            ; preds = %bb.la, %.lr.ph.i91.i
  %.0121.i.i = phi i32 [ 0, %.lr.ph.i91.i ], [ %i.qgg, %bb.la ]
  %.2120.i.i = phi ptr [ %1, %.lr.ph.i91.i ], [ %i.qge, %bb.la ] ; 2 uses
  %.232119.i.i = phi ptr [ %2, %.lr.ph.i91.i ], [ %i.qgf, %bb.la ] ; 2 uses
  %i.qem = load i16, ptr %.2120.i.i, align 2, !tbaa !558
  %i.qen = zext i16 %i.qem to i32
  %i.qeo = shl nuw i32 %i.qen, 16
  %i.qep = insertelement <4 x i32> poison, i32 %i.qeo, i64 0
  %i.qeq = bitcast <4 x i32> %i.qep to <4 x float>
  %i.qer = shufflevector <4 x float> %i.qeq, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.qes = fcmp fast oeq <4 x float> %i.qer, zeroinitializer
  %i.qet = fcmp fast olt <4 x float> %i.qer, zeroinitializer
  %i.qeu = select <4 x i1> %i.qet, <4 x float> %i.qei, <4 x float> zeroinitializer
  %i.qev = fdiv fast <4 x float> %i.qef, %i.qer   ; 2 uses
  %i.qew = bitcast <4 x float> %i.qev to <4 x i32>
  %i.qex = and <4 x i32> %i.qew, splat (i32 -2147483648)
  %i.qey = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.qev) ; 3 uses
  %i.qez = fcmp fast ogt <4 x float> %i.qey, splat (float 1.000000e+00) ; 2 uses
  %i.qfa = select <4 x i1> %i.qez, <4 x float> splat (float -1.000000e+00), <4 x float> %i.qey
  %i.qfb = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.qey, <4 x float> splat (float 1.000000e+00))
  %i.qfc = fdiv fast <4 x float> %i.qfa, %i.qfb   ; 3 uses
  %i.qfd = fmul fast <4 x float> %i.qfc, %i.qfc   ; 3 uses
  %i.qfe = fmul fast <4 x float> %i.qfd, %i.qfd   ; 7 uses
  %i.qff = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qfe, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.qfg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qfe, <4 x float> nofpclass(nan inf) %i.qff, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.qfh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qfe, <4 x float> nofpclass(nan inf) %i.qfg, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.qfi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qfe, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.qfj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qfe, <4 x float> nofpclass(nan inf) %i.qfi, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.qfk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qfe, <4 x float> nofpclass(nan inf) %i.qfj, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.qfl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qfe, <4 x float> nofpclass(nan inf) %i.qfk, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.qfm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qfd, <4 x float> nofpclass(nan inf) %i.qfh, <4 x float> nofpclass(nan inf) %i.qfl)
  %i.qfn = fmul fast <4 x float> %i.qfm, %i.qfc
  %i.qfo = select <4 x i1> %i.qez, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.qfp = fadd fast <4 x float> %i.qfn, %i.qfo
  %i.qfq = bitcast <4 x float> %i.qfp to <4 x i32>
  %i.qfr = or <4 x i32> %i.qex, %i.qfq
  %i.qfs = bitcast <4 x i32> %i.qfr to <4 x float>
  %i.qft = fadd fast <4 x float> %i.qeu, %i.qfs
  %i.qfu = bitcast <4 x float> %i.qer to <4 x i32>
  %isneg.inv.i92.i = icmp slt <4 x i32> %i.qfu, zeroinitializer
  %i.qfv = select <4 x i1> %isneg.inv.i92.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.qfw = bitcast <4 x float> %i.qft to <4 x i32>
  %i.qfx = select <4 x i1> %i.qes, <4 x i32> %i.qel, <4 x i32> %i.qfw
  %i.qfy = select <4 x i1> %i.qeg, <4 x i32> %i.qfv, <4 x i32> %i.qfx
  %i.qfz = bitcast <4 x i32> %i.qfy to <4 x float>
  %i.qga = shufflevector <4 x float> %i.qfz, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.qgb = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.qga)
  %i.qgc = bitcast <8 x bfloat> %i.qgb to <2 x i64>
  %i.qgd = extractelement <2 x i64> %i.qgc, i64 0
  store i64 %i.qgd, ptr %.232119.i.i, align 1, !tbaa !555
  %i.qge = getelementptr inbounds nuw i8, ptr %.2120.i.i, i64 2
  %i.qgf = getelementptr inbounds nuw i8, ptr %.232119.i.i, i64 8
  %i.qgg = add nuw nsw i32 %.0121.i.i, 1          ; 2 uses
  %exitcond.not.i93.i = icmp eq i32 %i.qgg, %.sroa.speculated104.i
  br i1 %exitcond.not.i93.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.la, !llvm.loop !338

bb.lb:                                            ; preds = %bb.a
  %.sroa.speculated104.i1515 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 10 uses
  %.sroa.speculated.i1516 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.qgh = mul i32 %.sroa.speculated.i1516, %.sroa.speculated104.i1515 ; 48 uses
  %i.qgi = icmp eq i32 %5, %6
  br i1 %i.qgi, label %bb.lc, label %bb.ly

bb.lc:                                            ; preds = %bb.lb
  %i.qgj = icmp eq i32 %3, %4
  br i1 %i.qgj, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %bb.lc
  %i.qgk = icmp sgt i32 %i.qgh, 15
  br i1 %i.qgk, label %.lr.ph.i.i1681, label %.preheader133.i.i1647

.preheader133.loopexit.i.i1686:                   ; preds = %.lr.ph.i.i1681
  %i.qgl = and i32 %i.qgh, 2147483632
  br label %.preheader133.i.i1647

.preheader133.i.i1647:                            ; preds = %.preheader133.loopexit.i.i1686, %bb.ld
  %.042.lcssa.i.i1648 = phi ptr [ %2, %bb.ld ], [ %i.qig, %.preheader133.loopexit.i.i1686 ] ; 2 uses
  %.038.lcssa.i.i1649 = phi i32 [ 0, %bb.ld ], [ %i.qgl, %.preheader133.loopexit.i.i1686 ] ; 3 uses
  %.034.lcssa.i.i1650 = phi ptr [ %1, %bb.ld ], [ %i.qif, %.preheader133.loopexit.i.i1686 ] ; 2 uses
  %.0.lcssa.i.i1651 = phi ptr [ %0, %bb.ld ], [ %i.qie, %.preheader133.loopexit.i.i1686 ] ; 2 uses
  %i.qgm = or disjoint i32 %.038.lcssa.i.i1649, 7
  %i.qgn = icmp slt i32 %i.qgm, %i.qgh
  br i1 %i.qgn, label %.lr.ph145.i.i1674, label %.preheader132.i.i1652

.lr.ph.i.i1681:                                   ; preds = %bb.ld, %.lr.ph.i.i1681
  %.0137.i.i1682 = phi ptr [ %i.qie, %.lr.ph.i.i1681 ], [ %0, %bb.ld ] ; 2 uses
  %.034136.i.i1683 = phi ptr [ %i.qif, %.lr.ph.i.i1681 ], [ %1, %bb.ld ] ; 2 uses
  %.038135.i.i1684 = phi i32 [ %i.qih, %.lr.ph.i.i1681 ], [ 0, %bb.ld ]
  %.042134.i.i1685 = phi ptr [ %i.qig, %.lr.ph.i.i1681 ], [ %2, %bb.ld ] ; 2 uses
  %i.qgo = load <16 x bfloat>, ptr %.0137.i.i1682, align 1, !tbaa !555 ; 4 uses
  %i.qgp = fpext fast <16 x bfloat> %i.qgo to <16 x float>
  %i.qgq = load <16 x bfloat>, ptr %.034136.i.i1683, align 1, !tbaa !555 ; 3 uses
  %i.qgr = fpext fast <16 x bfloat> %i.qgq to <16 x float> ; 2 uses
  %i.qgs = fcmp fast one <16 x bfloat> %i.qgo, zeroinitializer
  %i.qgt = fcmp fast one <16 x bfloat> %i.qgq, zeroinitializer
  %i.qgu = fcmp fast olt <16 x bfloat> %i.qgo, zeroinitializer
  %i.qgv = fcmp fast olt <16 x bfloat> %i.qgq, zeroinitializer
  %i.qgw = select fast <16 x i1> %i.qgv, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.qgx = select fast <16 x i1> %i.qgu, <16 x float> %i.qgw, <16 x float> zeroinitializer
  %i.qgy = fdiv fast <16 x float> %i.qgr, %i.qgp  ; 2 uses
  %i.qgz = bitcast <16 x float> %i.qgy to <16 x i32>
  %i.qha = and <16 x i32> %i.qgz, splat (i32 -2147483648)
  %i.qhb = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.qgy) ; 3 uses
  %i.qhc = fcmp fast ogt <16 x float> %i.qhb, splat (float 1.000000e+00) ; 2 uses
  %i.qhd = select fast <16 x i1> %i.qhc, <16 x float> splat (float -1.000000e+00), <16 x float> %i.qhb
  %i.qhe = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.qhb, <16 x float> splat (float 1.000000e+00))
  %i.qhf = fdiv fast <16 x float> %i.qhd, %i.qhe  ; 3 uses
  %i.qhg = fmul fast <16 x float> %i.qhf, %i.qhf  ; 3 uses
  %i.qhh = fmul fast <16 x float> %i.qhg, %i.qhg  ; 7 uses
  %i.qhi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qhh, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.qhj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qhh, <16 x float> nofpclass(nan inf) %i.qhi, <16 x float> splat (float f0xBE117200))
  %i.qhk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qhh, <16 x float> nofpclass(nan inf) %i.qhj, <16 x float> splat (float f0xBEAAAA53))
  %i.qhl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qhh, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.qhm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qhh, <16 x float> nofpclass(nan inf) %i.qhl, <16 x float> splat (float f0x3DD9ED24))
  %i.qhn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qhh, <16 x float> nofpclass(nan inf) %i.qhm, <16 x float> splat (float f0x3E4CB974))
  %i.qho = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qhh, <16 x float> nofpclass(nan inf) %i.qhn, <16 x float> splat (float 1.000000e+00))
  %i.qhp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qhg, <16 x float> nofpclass(nan inf) %i.qhk, <16 x float> nofpclass(nan inf) %i.qho)
  %i.qhq = fmul fast <16 x float> %i.qhp, %i.qhf
  %i.qhr = select fast <16 x i1> %i.qhc, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.qhs = fadd fast <16 x float> %i.qhq, %i.qhr
  %i.qht = bitcast <16 x float> %i.qhs to <16 x i32>
  %i.qhu = or <16 x i32> %i.qha, %i.qht
  %i.qhv = bitcast <16 x i32> %i.qhu to <16 x float>
  %i.qhw = fadd fast <16 x float> %i.qgx, %i.qhv
  %i.qhx = bitcast <16 x bfloat> %i.qgo to <16 x i16>
  %i.qhy = icmp slt <16 x i16> %i.qhx, zeroinitializer
  %i.qhz = select fast <16 x i1> %i.qhy, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.qia = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.qgr)
  %i.qib = select <16 x i1> %i.qgs, <16 x float> %i.qhw, <16 x float> %i.qia
  %i.qic = select <16 x i1> %i.qgt, <16 x float> %i.qib, <16 x float> %i.qhz
  %i.qid = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.qic)
  store <16 x bfloat> %i.qid, ptr %.042134.i.i1685, align 1, !tbaa !555
  %i.qie = getelementptr inbounds nuw i8, ptr %.0137.i.i1682, i64 32 ; 2 uses
  %i.qif = getelementptr inbounds nuw i8, ptr %.034136.i.i1683, i64 32 ; 2 uses
  %i.qig = getelementptr inbounds nuw i8, ptr %.042134.i.i1685, i64 32 ; 2 uses
  %i.qih = add nuw nsw i32 %.038135.i.i1684, 16   ; 2 uses
  %i.qii = or disjoint i32 %i.qih, 15
  %i.qij = icmp slt i32 %i.qii, %i.qgh
  br i1 %i.qij, label %.lr.ph.i.i1681, label %.preheader133.loopexit.i.i1686, !llvm.loop !339

.preheader132.i.i1652:                            ; preds = %.lr.ph145.i.i1674, %.preheader133.i.i1647
  %.143.lcssa.i.i1653 = phi ptr [ %.042.lcssa.i.i1648, %.preheader133.i.i1647 ], [ %i.qkh, %.lr.ph145.i.i1674 ] ; 2 uses
  %.139.lcssa.i.i1654 = phi i32 [ %.038.lcssa.i.i1649, %.preheader133.i.i1647 ], [ %i.qki, %.lr.ph145.i.i1674 ] ; 3 uses
  %.135.lcssa.i.i1655 = phi ptr [ %.034.lcssa.i.i1650, %.preheader133.i.i1647 ], [ %i.qkg, %.lr.ph145.i.i1674 ] ; 2 uses
  %.1.lcssa.i.i1656 = phi ptr [ %.0.lcssa.i.i1651, %.preheader133.i.i1647 ], [ %i.qkf, %.lr.ph145.i.i1674 ] ; 2 uses
  %i.qik = or disjoint i32 %.139.lcssa.i.i1654, 3
  %i.qil = icmp slt i32 %i.qik, %i.qgh
  br i1 %i.qil, label %.lr.ph154.i.i1668, label %.preheader.i.i1657

.lr.ph145.i.i1674:                                ; preds = %.preheader133.i.i1647, %.lr.ph145.i.i1674
  %.1144.i.i1675 = phi ptr [ %i.qkf, %.lr.ph145.i.i1674 ], [ %.0.lcssa.i.i1651, %.preheader133.i.i1647 ] ; 2 uses
  %.135143.i.i1676 = phi ptr [ %i.qkg, %.lr.ph145.i.i1674 ], [ %.034.lcssa.i.i1650, %.preheader133.i.i1647 ] ; 2 uses
  %.139142.i.i1677 = phi i32 [ %i.qki, %.lr.ph145.i.i1674 ], [ %.038.lcssa.i.i1649, %.preheader133.i.i1647 ]
  %.143141.i.i1678 = phi ptr [ %i.qkh, %.lr.ph145.i.i1674 ], [ %.042.lcssa.i.i1648, %.preheader133.i.i1647 ] ; 2 uses
  %i.qim = load <8 x bfloat>, ptr %.1144.i.i1675, align 1, !tbaa !555 ; 4 uses
  %i.qin = fpext fast <8 x bfloat> %i.qim to <8 x float>
  %i.qio = load <8 x bfloat>, ptr %.135143.i.i1676, align 1, !tbaa !555 ; 3 uses
  %i.qip = fpext fast <8 x bfloat> %i.qio to <8 x float> ; 2 uses
  %i.qiq = fcmp fast ueq <8 x bfloat> %i.qim, zeroinitializer
  %i.qir = fcmp fast ueq <8 x bfloat> %i.qio, zeroinitializer
  %i.qis = bitcast <8 x float> %i.qip to <8 x i32>
  %i.qit = and <8 x i32> %i.qis, splat (i32 -2147483648)
  %i.qiu = fcmp fast olt <8 x bfloat> %i.qim, zeroinitializer
  %i.qiv = fcmp fast olt <8 x bfloat> %i.qio, zeroinitializer
  %i.qiw = select <8 x i1> %i.qiv, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.qix = select <8 x i1> %i.qiu, <8 x float> %i.qiw, <8 x float> zeroinitializer
  %i.qiy = fdiv fast <8 x float> %i.qip, %i.qin   ; 2 uses
  %i.qiz = bitcast <8 x float> %i.qiy to <8 x i32>
  %i.qja = and <8 x i32> %i.qiz, splat (i32 -2147483648)
  %i.qjb = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.qiy) ; 3 uses
  %i.qjc = fcmp fast ogt <8 x float> %i.qjb, splat (float 1.000000e+00) ; 2 uses
  %i.qjd = select <8 x i1> %i.qjc, <8 x float> splat (float -1.000000e+00), <8 x float> %i.qjb
  %i.qje = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.qjb, <8 x float> splat (float 1.000000e+00))
  %i.qjf = fdiv fast <8 x float> %i.qjd, %i.qje   ; 3 uses
  %i.qjg = fmul fast <8 x float> %i.qjf, %i.qjf   ; 3 uses
  %i.qjh = fmul fast <8 x float> %i.qjg, %i.qjg   ; 7 uses
  %i.qji = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qjh, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.qjj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qjh, <8 x float> nofpclass(nan inf) %i.qji, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.qjk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qjh, <8 x float> nofpclass(nan inf) %i.qjj, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.qjl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qjh, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.qjm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qjh, <8 x float> nofpclass(nan inf) %i.qjl, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.qjn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qjh, <8 x float> nofpclass(nan inf) %i.qjm, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.qjo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qjh, <8 x float> nofpclass(nan inf) %i.qjn, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.qjp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qjg, <8 x float> nofpclass(nan inf) %i.qjk, <8 x float> nofpclass(nan inf) %i.qjo)
  %i.qjq = fmul fast <8 x float> %i.qjp, %i.qjf
  %i.qjr = select <8 x i1> %i.qjc, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.qjs = fadd fast <8 x float> %i.qjq, %i.qjr
  %i.qjt = bitcast <8 x float> %i.qjs to <8 x i32>
  %i.qju = or <8 x i32> %i.qja, %i.qjt
  %i.qjv = bitcast <8 x i32> %i.qju to <8 x float>
  %i.qjw = fadd fast <8 x float> %i.qix, %i.qjv
  %i.qjx = bitcast <8 x bfloat> %i.qim to <8 x i16>
  %i.qjy = or disjoint <8 x i32> %i.qit, splat (i32 1070141403)
  %isneg.i.i1680 = icmp sgt <8 x i16> %i.qjx, splat (i16 -1)
  %i.qjz = select <8 x i1> %isneg.i.i1680, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.qka = bitcast <8 x float> %i.qjw to <8 x i32>
  %i.qkb = select <8 x i1> %i.qiq, <8 x i32> %i.qjy, <8 x i32> %i.qka
  %i.qkc = select <8 x i1> %i.qir, <8 x i32> %i.qjz, <8 x i32> %i.qkb
  %i.qkd = bitcast <8 x i32> %i.qkc to <8 x float>
  %i.qke = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.qkd)
  store <8 x bfloat> %i.qke, ptr %.143141.i.i1678, align 1, !tbaa !555
  %i.qkf = getelementptr inbounds nuw i8, ptr %.1144.i.i1675, i64 16 ; 2 uses
  %i.qkg = getelementptr inbounds nuw i8, ptr %.135143.i.i1676, i64 16 ; 2 uses
  %i.qkh = getelementptr inbounds nuw i8, ptr %.143141.i.i1678, i64 16 ; 2 uses
  %i.qki = add nuw nsw i32 %.139142.i.i1677, 8    ; 3 uses
  %i.qkj = or disjoint i32 %i.qki, 7
  %i.qkk = icmp slt i32 %i.qkj, %i.qgh
  br i1 %i.qkk, label %.lr.ph145.i.i1674, label %.preheader132.i.i1652, !llvm.loop !340

.preheader.i.i1657:                               ; preds = %.lr.ph154.i.i1668, %.preheader132.i.i1652
  %.244.lcssa.i.i1658 = phi ptr [ %.143.lcssa.i.i1653, %.preheader132.i.i1652 ], [ %i.qpd, %.lr.ph154.i.i1668 ] ; 7 uses
  %.240.lcssa.i.i1659 = phi i32 [ %.139.lcssa.i.i1654, %.preheader132.i.i1652 ], [ %i.qpe, %.lr.ph154.i.i1668 ] ; 6 uses
  %.236.lcssa.i.i1660 = phi ptr [ %.135.lcssa.i.i1655, %.preheader132.i.i1652 ], [ %i.qpc, %.lr.ph154.i.i1668 ] ; 7 uses
  %.2.lcssa.i.i1661 = phi ptr [ %.1.lcssa.i.i1656, %.preheader132.i.i1652 ], [ %i.qpb, %.lr.ph154.i.i1668 ] ; 7 uses
  %.236.lcssa.i.i16607154 = ptrtoaddr ptr %.236.lcssa.i.i1660 to i64
  %.2.lcssa.i.i16617155 = ptrtoaddr ptr %.2.lcssa.i.i1661 to i64
  %.244.lcssa.i.i16587156 = ptrtoaddr ptr %.244.lcssa.i.i1658 to i64 ; 2 uses
  %i.qkl = icmp slt i32 %.240.lcssa.i.i1659, %i.qgh
  br i1 %i.qkl, label %iter.check7176, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7176:                                   ; preds = %.preheader.i.i1657
  %i.qkm = xor i32 %.240.lcssa.i.i1659, -1
  %i.qkn = add i32 %i.qgh, %i.qkm                 ; 3 uses
  %i.qko = zext i32 %i.qkn to i64
  %i.qkp = add nuw nsw i64 %i.qko, 1              ; 5 uses
  %min.iters.check7157.a = icmp ult i32 %i.qkn, 7
  br i1 %min.iters.check7157.a, label %.lr.ph163.i.i1662.preheader, label %vector.memcheck7158

vector.memcheck7158:                              ; preds = %iter.check7176
  %i.qkq = sub i64 %.2.lcssa.i.i16617155, %.244.lcssa.i.i16587156
  %diff.check7159 = icmp ugt i64 %i.qkq, -64
  %i.qkr = sub i64 %.236.lcssa.i.i16607154, %.244.lcssa.i.i16587156
  %diff.check7160 = icmp ugt i64 %i.qkr, -64
  %conflict.rdx7161 = or i1 %diff.check7159, %diff.check7160
  br i1 %conflict.rdx7161, label %.lr.ph163.i.i1662.preheader, label %vector.main.loop.iter.check7162

vector.main.loop.iter.check7162:                  ; preds = %vector.memcheck7158
  %min.iters.check7163 = icmp ult i32 %i.qkn, 31
  br i1 %min.iters.check7163, label %vec.epilog.ph7180, label %vector.ph7164

vector.ph7164:                                    ; preds = %vector.main.loop.iter.check7162
  %i.qks = and i64 %i.qkp, 24
  %n.vec7165 = and i64 %i.qkp, 8589934560         ; 5 uses
  %i.qkt = shl nuw nsw i64 %n.vec7165, 1          ; 3 uses
  %i.qku = getelementptr i8, ptr %.2.lcssa.i.i1661, i64 %i.qkt
  %i.qkv = getelementptr i8, ptr %.236.lcssa.i.i1660, i64 %i.qkt
  %i.qkw = trunc i64 %n.vec7165 to i32
  %i.qkx = add i32 %.240.lcssa.i.i1659, %i.qkw
  %i.qky = getelementptr i8, ptr %.244.lcssa.i.i1658, i64 %i.qkt
  br label %vector.body7166

vector.body7166:                                  ; preds = %vector.ph7164, %vector.body7166
  %index7167 = phi i64 [ 0, %vector.ph7164 ], [ %index.next7173, %vector.body7166 ] ; 2 uses
  %i.qkz = shl i64 %index7167, 1                  ; 3 uses
  %next.gep7168 = getelementptr i8, ptr %.2.lcssa.i.i1661, i64 %i.qkz
  %next.gep7169 = getelementptr i8, ptr %.236.lcssa.i.i1660, i64 %i.qkz
  %next.gep7170 = getelementptr i8, ptr %.244.lcssa.i.i1658, i64 %i.qkz
  %wide.load7171 = load <32 x i16>, ptr %next.gep7168, align 2, !tbaa !558
  %i.qla = zext <32 x i16> %wide.load7171 to <32 x i32>
  %i.qlb = shl nuw <32 x i32> %i.qla, splat (i32 16)
  %i.qlc = bitcast <32 x i32> %i.qlb to <32 x float>
  %wide.load7172 = load <32 x i16>, ptr %next.gep7169, align 2, !tbaa !558
  %i.qld = zext <32 x i16> %wide.load7172 to <32 x i32>
  %i.qle = shl nuw <32 x i32> %i.qld, splat (i32 16)
  %i.qlf = bitcast <32 x i32> %i.qle to <32 x float>
  %i.qlg = tail call fast <32 x float> @llvm.atan2.v32f32(<32 x float> %i.qlf, <32 x float> %i.qlc)
  %i.qlh = bitcast <32 x float> %i.qlg to <32 x i32>
  %i.qli = lshr <32 x i32> %i.qlh, splat (i32 16)
  %i.qlj = trunc nuw <32 x i32> %i.qli to <32 x i16>
  store <32 x i16> %i.qlj, ptr %next.gep7170, align 2, !tbaa !558
  %index.next7173 = add nuw i64 %index7167, 32    ; 2 uses
  %i.qlk = icmp eq i64 %index.next7173, %n.vec7165
  br i1 %i.qlk, label %middle.block7174, label %vector.body7166, !llvm.loop !341

middle.block7174:                                 ; preds = %vector.body7166
  %cmp.n7175 = icmp eq i64 %i.qkp, %n.vec7165
  br i1 %cmp.n7175, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7177

vec.epilog.iter.check7177:                        ; preds = %middle.block7174
  %min.epilog.iters.check7179 = icmp eq i64 %i.qks, 0
  br i1 %min.epilog.iters.check7179, label %.lr.ph163.i.i1662.preheader, label %vec.epilog.ph7180, !prof !561

vec.epilog.ph7180:                                ; preds = %vector.main.loop.iter.check7162, %vec.epilog.iter.check7177
  %vec.epilog.resume.val7181 = phi i64 [ %n.vec7165, %vec.epilog.iter.check7177 ], [ 0, %vector.main.loop.iter.check7162 ]
  %n.vec7182 = and i64 %i.qkp, 8589934584         ; 4 uses
  %i.qll = shl nuw nsw i64 %n.vec7182, 1          ; 3 uses
  %i.qlm = getelementptr i8, ptr %.2.lcssa.i.i1661, i64 %i.qll
  %i.qln = getelementptr i8, ptr %.236.lcssa.i.i1660, i64 %i.qll
  %i.qlo = trunc i64 %n.vec7182 to i32
  %i.qlp = add i32 %.240.lcssa.i.i1659, %i.qlo
  %i.qlq = getelementptr i8, ptr %.244.lcssa.i.i1658, i64 %i.qll
  br label %vec.epilog.vector.body7183

vec.epilog.vector.body7183:                       ; preds = %vec.epilog.vector.body7183, %vec.epilog.ph7180
  %index7184 = phi i64 [ %vec.epilog.resume.val7181, %vec.epilog.ph7180 ], [ %index.next7190, %vec.epilog.vector.body7183 ] ; 2 uses
  %i.qlr = shl i64 %index7184, 1                  ; 3 uses
  %next.gep7185 = getelementptr i8, ptr %.2.lcssa.i.i1661, i64 %i.qlr
  %next.gep7186 = getelementptr i8, ptr %.236.lcssa.i.i1660, i64 %i.qlr
  %next.gep7187 = getelementptr i8, ptr %.244.lcssa.i.i1658, i64 %i.qlr
  %wide.load7188 = load <8 x i16>, ptr %next.gep7185, align 2, !tbaa !558
  %i.qls = zext <8 x i16> %wide.load7188 to <8 x i32>
  %i.qlt = shl nuw <8 x i32> %i.qls, splat (i32 16)
  %i.qlu = bitcast <8 x i32> %i.qlt to <8 x float>
  %wide.load7189 = load <8 x i16>, ptr %next.gep7186, align 2, !tbaa !558
  %i.qlv = zext <8 x i16> %wide.load7189 to <8 x i32>
  %i.qlw = shl nuw <8 x i32> %i.qlv, splat (i32 16)
  %i.qlx = bitcast <8 x i32> %i.qlw to <8 x float>
  %i.qly = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.qlx, <8 x float> %i.qlu)
  %i.qlz = bitcast <8 x float> %i.qly to <8 x i32>
  %i.qma = lshr <8 x i32> %i.qlz, splat (i32 16)
  %i.qmb = trunc nuw <8 x i32> %i.qma to <8 x i16>
  store <8 x i16> %i.qmb, ptr %next.gep7187, align 2, !tbaa !558
  %index.next7190 = add nuw i64 %index7184, 8     ; 2 uses
  %i.qmc = icmp eq i64 %index.next7190, %n.vec7182
  br i1 %i.qmc, label %vec.epilog.middle.block7191, label %vec.epilog.vector.body7183, !llvm.loop !342

vec.epilog.middle.block7191:                      ; preds = %vec.epilog.vector.body7183
  %cmp.n7192 = icmp eq i64 %i.qkp, %n.vec7182
  br i1 %cmp.n7192, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph163.i.i1662.preheader

.lr.ph163.i.i1662.preheader:                      ; preds = %iter.check7176, %vector.memcheck7158, %vec.epilog.iter.check7177, %vec.epilog.middle.block7191
  %.3162.i.i1663.ph = phi ptr [ %.2.lcssa.i.i1661, %iter.check7176 ], [ %.2.lcssa.i.i1661, %vector.memcheck7158 ], [ %i.qku, %vec.epilog.iter.check7177 ], [ %i.qlm, %vec.epilog.middle.block7191 ] ; 3 uses
  %.337161.i.i1664.ph = phi ptr [ %.236.lcssa.i.i1660, %iter.check7176 ], [ %.236.lcssa.i.i1660, %vector.memcheck7158 ], [ %i.qkv, %vec.epilog.iter.check7177 ], [ %i.qln, %vec.epilog.middle.block7191 ] ; 3 uses
  %.341160.i.i1665.ph = phi i32 [ %.240.lcssa.i.i1659, %iter.check7176 ], [ %.240.lcssa.i.i1659, %vector.memcheck7158 ], [ %i.qkx, %vec.epilog.iter.check7177 ], [ %i.qlp, %vec.epilog.middle.block7191 ] ; 4 uses
  %.345159.i.i1666.ph = phi ptr [ %.244.lcssa.i.i1658, %iter.check7176 ], [ %.244.lcssa.i.i1658, %vector.memcheck7158 ], [ %i.qky, %vec.epilog.iter.check7177 ], [ %i.qlq, %vec.epilog.middle.block7191 ] ; 3 uses
  %i.qmd = sub i32 %i.qgh, %.341160.i.i1665.ph
  %.neg11072 = add i32 %.341160.i.i1665.ph, 1
  %xtraiter10473 = and i32 %i.qmd, 1
  %lcmp.mod10474.not = icmp eq i32 %xtraiter10473, 0
  br i1 %lcmp.mod10474.not, label %.lr.ph163.i.i1662.prol.loopexit, label %.lr.ph163.i.i1662.prol

.lr.ph163.i.i1662.prol:                           ; preds = %.lr.ph163.i.i1662.preheader
  %i.qme = getelementptr inbounds nuw i8, ptr %.3162.i.i1663.ph, i64 2
  %i.qmf = load i16, ptr %.3162.i.i1663.ph, align 2, !tbaa !558
  %i.qmg = zext i16 %i.qmf to i32
  %i.qmh = shl nuw i32 %i.qmg, 16
  %i.qmi = bitcast i32 %i.qmh to float
  %i.qmj = getelementptr inbounds nuw i8, ptr %.337161.i.i1664.ph, i64 2
  %i.qmk = load i16, ptr %.337161.i.i1664.ph, align 2, !tbaa !558
  %i.qml = zext i16 %i.qmk to i32
  %i.qmm = shl nuw i32 %i.qml, 16
  %i.qmn = bitcast i32 %i.qmm to float
  %i.qmo = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qmn, float %i.qmi)
  %i.qmp = bitcast float %i.qmo to i32
  %i.qmq = lshr i32 %i.qmp, 16
  %i.qmr = trunc nuw i32 %i.qmq to i16
  %i.qms = getelementptr inbounds nuw i8, ptr %.345159.i.i1666.ph, i64 2
  store i16 %i.qmr, ptr %.345159.i.i1666.ph, align 2, !tbaa !558
  %i.qmt = add nuw nsw i32 %.341160.i.i1665.ph, 1
  br label %.lr.ph163.i.i1662.prol.loopexit

.lr.ph163.i.i1662.prol.loopexit:                  ; preds = %.lr.ph163.i.i1662.prol, %.lr.ph163.i.i1662.preheader
  %.3162.i.i1663.unr = phi ptr [ %.3162.i.i1663.ph, %.lr.ph163.i.i1662.preheader ], [ %i.qme, %.lr.ph163.i.i1662.prol ]
  %.337161.i.i1664.unr = phi ptr [ %.337161.i.i1664.ph, %.lr.ph163.i.i1662.preheader ], [ %i.qmj, %.lr.ph163.i.i1662.prol ]
  %.341160.i.i1665.unr = phi i32 [ %.341160.i.i1665.ph, %.lr.ph163.i.i1662.preheader ], [ %i.qmt, %.lr.ph163.i.i1662.prol ]
  %.345159.i.i1666.unr = phi ptr [ %.345159.i.i1666.ph, %.lr.ph163.i.i1662.preheader ], [ %i.qms, %.lr.ph163.i.i1662.prol ]
  %i.qmu = icmp eq i32 %i.qgh, %.neg11072
  br i1 %i.qmu, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph163.i.i1662

.lr.ph154.i.i1668:                                ; preds = %.preheader132.i.i1652, %.lr.ph154.i.i1668
  %.2153.i.i1669 = phi ptr [ %i.qpb, %.lr.ph154.i.i1668 ], [ %.1.lcssa.i.i1656, %.preheader132.i.i1652 ] ; 2 uses
  %.236152.i.i1670 = phi ptr [ %i.qpc, %.lr.ph154.i.i1668 ], [ %.135.lcssa.i.i1655, %.preheader132.i.i1652 ] ; 2 uses
  %.240151.i.i1671 = phi i32 [ %i.qpe, %.lr.ph154.i.i1668 ], [ %.139.lcssa.i.i1654, %.preheader132.i.i1652 ]
  %.244150.i.i1672 = phi ptr [ %i.qpd, %.lr.ph154.i.i1668 ], [ %.143.lcssa.i.i1653, %.preheader132.i.i1652 ] ; 2 uses
  %i.qmv = load i64, ptr %.2153.i.i1669, align 1, !tbaa !555
  %i.qmw = insertelement <2 x i64> poison, i64 %i.qmv, i64 0
  %i.qmx = bitcast <2 x i64> %i.qmw to <8 x i16>
  %i.qmy = shufflevector <8 x i16> %i.qmx, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 2 uses
  %i.qmz = bitcast <8 x i16> %i.qmy to <4 x float> ; 3 uses
  %i.qna = load i64, ptr %.236152.i.i1670, align 1, !tbaa !555
  %i.qnb = insertelement <2 x i64> poison, i64 %i.qna, i64 0
  %i.qnc = bitcast <2 x i64> %i.qnb to <8 x i16>
  %i.qnd = shufflevector <8 x i16> %i.qnc, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 2 uses
  %i.qne = bitcast <8 x i16> %i.qnd to <4 x float> ; 3 uses
  %i.qnf = fcmp fast oeq <4 x float> %i.qmz, zeroinitializer
  %i.qng = fcmp fast oeq <4 x float> %i.qne, zeroinitializer
  %i.qnh = fcmp fast olt <4 x float> %i.qmz, zeroinitializer
  %i.qni = fcmp fast olt <4 x float> %i.qne, zeroinitializer
  %i.qnj = select <4 x i1> %i.qni, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.qnk = select <4 x i1> %i.qnh, <4 x float> %i.qnj, <4 x float> zeroinitializer
  %i.qnl = fdiv fast <4 x float> %i.qne, %i.qmz   ; 2 uses
  %i.qnm = bitcast <4 x float> %i.qnl to <4 x i32>
  %i.qnn = and <4 x i32> %i.qnm, splat (i32 -2147483648)
  %i.qno = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.qnl) ; 3 uses
  %i.qnp = fcmp fast ogt <4 x float> %i.qno, splat (float 1.000000e+00) ; 2 uses
  %i.qnq = select <4 x i1> %i.qnp, <4 x float> splat (float -1.000000e+00), <4 x float> %i.qno
  %i.qnr = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.qno, <4 x float> splat (float 1.000000e+00))
  %i.qns = fdiv fast <4 x float> %i.qnq, %i.qnr   ; 3 uses
  %i.qnt = fmul fast <4 x float> %i.qns, %i.qns   ; 3 uses
  %i.qnu = fmul fast <4 x float> %i.qnt, %i.qnt   ; 7 uses
  %i.qnv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qnu, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.qnw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qnu, <4 x float> nofpclass(nan inf) %i.qnv, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.qnx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qnu, <4 x float> nofpclass(nan inf) %i.qnw, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.qny = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qnu, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.qnz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qnu, <4 x float> nofpclass(nan inf) %i.qny, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.qoa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qnu, <4 x float> nofpclass(nan inf) %i.qnz, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.qob = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qnu, <4 x float> nofpclass(nan inf) %i.qoa, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.qoc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qnt, <4 x float> nofpclass(nan inf) %i.qnx, <4 x float> nofpclass(nan inf) %i.qob)
  %i.qod = fmul fast <4 x float> %i.qoc, %i.qns
  %i.qoe = select <4 x i1> %i.qnp, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.qof = fadd fast <4 x float> %i.qod, %i.qoe
  %i.qog = bitcast <4 x float> %i.qof to <4 x i32>
  %i.qoh = or <4 x i32> %i.qnn, %i.qog
  %i.qoi = bitcast <4 x i32> %i.qoh to <4 x float>
  %i.qoj = fadd fast <4 x float> %i.qnk, %i.qoi
  %i.qok = bitcast <8 x i16> %i.qmy to <4 x i32>
  %i.qol = and <4 x i32> %i.qok, splat (i32 -2147483648)
  %i.qom = or disjoint <4 x i32> %i.qol, splat (i32 1078530011)
  %i.qon = bitcast <4 x i32> %i.qom to <4 x float>
  %i.qoo = fcmp fast uge <4 x float> %i.qon, zeroinitializer
  %i.qop = bitcast <8 x i16> %i.qnd to <4 x i32>
  %i.qoq = and <4 x i32> %i.qop, splat (i32 -2147483648)
  %i.qor = or disjoint <4 x i32> %i.qoq, splat (i32 1070141403)
  %i.qos = select <4 x i1> %i.qoo, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.qot = bitcast <4 x float> %i.qoj to <4 x i32>
  %i.qou = select <4 x i1> %i.qnf, <4 x i32> %i.qor, <4 x i32> %i.qot
  %i.qov = select <4 x i1> %i.qng, <4 x i32> %i.qos, <4 x i32> %i.qou
  %i.qow = bitcast <4 x i32> %i.qov to <4 x float>
  %i.qox = shufflevector <4 x float> %i.qow, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.qoy = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.qox)
  %i.qoz = bitcast <8 x bfloat> %i.qoy to <2 x i64>
  %i.qpa = extractelement <2 x i64> %i.qoz, i64 0
  store i64 %i.qpa, ptr %.244150.i.i1672, align 1, !tbaa !555
  %i.qpb = getelementptr inbounds nuw i8, ptr %.2153.i.i1669, i64 8 ; 2 uses
  %i.qpc = getelementptr inbounds nuw i8, ptr %.236152.i.i1670, i64 8 ; 2 uses
  %i.qpd = getelementptr inbounds nuw i8, ptr %.244150.i.i1672, i64 8 ; 2 uses
  %i.qpe = add nuw nsw i32 %.240151.i.i1671, 4    ; 3 uses
  %i.qpf = or disjoint i32 %i.qpe, 3
  %i.qpg = icmp slt i32 %i.qpf, %i.qgh
  br i1 %i.qpg, label %.lr.ph154.i.i1668, label %.preheader.i.i1657, !llvm.loop !343

.lr.ph163.i.i1662:                                ; preds = %.lr.ph163.i.i1662.prol.loopexit, %.lr.ph163.i.i1662
  %.3162.i.i1663 = phi ptr [ %i.qpw, %.lr.ph163.i.i1662 ], [ %.3162.i.i1663.unr, %.lr.ph163.i.i1662.prol.loopexit ] ; 3 uses
  %.337161.i.i1664 = phi ptr [ %i.qqb, %.lr.ph163.i.i1662 ], [ %.337161.i.i1664.unr, %.lr.ph163.i.i1662.prol.loopexit ] ; 3 uses
  %.341160.i.i1665 = phi i32 [ %i.qql, %.lr.ph163.i.i1662 ], [ %.341160.i.i1665.unr, %.lr.ph163.i.i1662.prol.loopexit ]
  %.345159.i.i1666 = phi ptr [ %i.qqk, %.lr.ph163.i.i1662 ], [ %.345159.i.i1666.unr, %.lr.ph163.i.i1662.prol.loopexit ] ; 3 uses
  %i.qph = getelementptr inbounds nuw i8, ptr %.3162.i.i1663, i64 2
  %i.qpi = load i16, ptr %.3162.i.i1663, align 2, !tbaa !558
  %i.qpj = zext i16 %i.qpi to i32
  %i.qpk = shl nuw i32 %i.qpj, 16
  %i.qpl = bitcast i32 %i.qpk to float
  %i.qpm = getelementptr inbounds nuw i8, ptr %.337161.i.i1664, i64 2
  %i.qpn = load i16, ptr %.337161.i.i1664, align 2, !tbaa !558
  %i.qpo = zext i16 %i.qpn to i32
  %i.qpp = shl nuw i32 %i.qpo, 16
  %i.qpq = bitcast i32 %i.qpp to float
  %i.qpr = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qpq, float %i.qpl)
  %i.qps = bitcast float %i.qpr to i32
  %i.qpt = lshr i32 %i.qps, 16
  %i.qpu = trunc nuw i32 %i.qpt to i16
  %i.qpv = getelementptr inbounds nuw i8, ptr %.345159.i.i1666, i64 2
  store i16 %i.qpu, ptr %.345159.i.i1666, align 2, !tbaa !558
  %i.qpw = getelementptr inbounds nuw i8, ptr %.3162.i.i1663, i64 4
  %i.qpx = load i16, ptr %i.qph, align 2, !tbaa !558
  %i.qpy = zext i16 %i.qpx to i32
  %i.qpz = shl nuw i32 %i.qpy, 16
  %i.qqa = bitcast i32 %i.qpz to float
  %i.qqb = getelementptr inbounds nuw i8, ptr %.337161.i.i1664, i64 4
  %i.qqc = load i16, ptr %i.qpm, align 2, !tbaa !558
  %i.qqd = zext i16 %i.qqc to i32
  %i.qqe = shl nuw i32 %i.qqd, 16
  %i.qqf = bitcast i32 %i.qqe to float
  %i.qqg = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qqf, float %i.qqa)
  %i.qqh = bitcast float %i.qqg to i32
  %i.qqi = lshr i32 %i.qqh, 16
  %i.qqj = trunc nuw i32 %i.qqi to i16
  %i.qqk = getelementptr inbounds nuw i8, ptr %.345159.i.i1666, i64 4
  store i16 %i.qqj, ptr %i.qpv, align 2, !tbaa !558
  %i.qql = add nuw nsw i32 %.341160.i.i1665, 2    ; 2 uses
  %exitcond.not.i.i1667.1 = icmp eq i32 %i.qql, %i.qgh
  br i1 %exitcond.not.i.i1667.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph163.i.i1662, !llvm.loop !344

bb.le:                                            ; preds = %bb.lc
  %i.qqm = icmp eq i32 %4, 1
  br i1 %i.qqm, label %bb.lf, label %bb.lo

bb.lf:                                            ; preds = %bb.le
  %i.qqn = load i16, ptr %1, align 2, !tbaa !558
  %i.qqo = zext i16 %i.qqn to i32
  %i.qqp = shl nuw i32 %i.qqo, 16
  %i.qqq = bitcast i32 %i.qqp to float            ; 15 uses
  %i.qqr = icmp eq i32 %.sroa.speculated.i1516, 4
  br i1 %i.qqr, label %.thread129.i.i1646, label %bb.lg

.thread129.i.i1646:                               ; preds = %bb.lf
  %i.qqs = load i64, ptr %1, align 2, !tbaa !555
  %i.qqt = insertelement <2 x i64> poison, i64 %i.qqs, i64 0
  %i.qqu = bitcast <2 x i64> %i.qqt to <8 x i16>
  %i.qqv = shufflevector <8 x i16> %i.qqu, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.qqw = bitcast <8 x i16> %i.qqv to <4 x float> ; 2 uses
  %i.qqx = shufflevector <4 x float> %i.qqw, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.lj

bb.lg:                                            ; preds = %bb.lf
  %i.qqy = insertelement <4 x float> poison, float %i.qqq, i64 0 ; 2 uses
  %i.qqz = shufflevector <4 x float> %i.qqy, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.qra = icmp eq i32 %.sroa.speculated.i1516, 8
  br i1 %i.qra, label %.thread128.i.i1645, label %bb.lh

.thread128.i.i1645:                               ; preds = %bb.lg
  %i.qrb = load <8 x bfloat>, ptr %1, align 2, !tbaa !555
  %i.qrc = fpext fast <8 x bfloat> %i.qrb to <8 x float>
  br label %bb.lj

bb.lh:                                            ; preds = %bb.lg
  %i.qrd = shufflevector <4 x float> %i.qqy, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.qre = icmp eq i32 %.sroa.speculated.i1516, 16
  br i1 %i.qre, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %bb.lh
  %i.qrf = load <16 x bfloat>, ptr %1, align 2, !tbaa !555
  %i.qrg = fpext fast <16 x bfloat> %i.qrf to <16 x float>
  br label %bb.lk

bb.lj:                                            ; preds = %bb.lh, %.thread128.i.i1645, %.thread129.i.i1646
  %i.qrh = phi <8 x float> [ %i.qrc, %.thread128.i.i1645 ], [ %i.qrd, %bb.lh ], [ %i.qqx, %.thread129.i.i1646 ] ; 2 uses
  %i.qri = phi <4 x float> [ %i.qqz, %.thread128.i.i1645 ], [ %i.qqz, %bb.lh ], [ %i.qqw, %.thread129.i.i1646 ]
  %i.qrj = shufflevector <8 x float> %i.qrh, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %bb.li
  %i.qrk = phi <8 x float> [ %i.qrd, %bb.li ], [ %i.qrh, %bb.lj ] ; 4 uses
  %i.qrl = phi <4 x float> [ %i.qqz, %bb.li ], [ %i.qri, %bb.lj ] ; 4 uses
  %i.qrm = phi fast <16 x float> [ %i.qrg, %bb.li ], [ %i.qrj, %bb.lj ] ; 4 uses
  %i.qrn = icmp sgt i32 %i.qgh, 15
  br i1 %i.qrn, label %.lr.ph.i42.i1640, label %.preheader136.i.i1615

.lr.ph.i42.i1640:                                 ; preds = %bb.lk
  %i.qro = fcmp fast one <16 x float> %i.qrm, zeroinitializer
  %i.qrp = fcmp fast olt <16 x float> %i.qrm, zeroinitializer
  %i.qrq = select fast <16 x i1> %i.qrp, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.qrr = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.qrm)
  br label %bb.ll

.preheader136.loopexit.i.i1644:                   ; preds = %bb.ll
  %i.qrs = and i32 %i.qgh, 2147483632
  br label %.preheader136.i.i1615

.preheader136.i.i1615:                            ; preds = %.preheader136.loopexit.i.i1644, %bb.lk
  %.039.lcssa.i.i1616 = phi i32 [ 0, %bb.lk ], [ %i.qrs, %.preheader136.loopexit.i.i1644 ] ; 3 uses
  %.035.lcssa.i.i1617 = phi ptr [ %2, %bb.lk ], [ %i.qtm, %.preheader136.loopexit.i.i1644 ] ; 2 uses
  %.0.lcssa.i34.i1618 = phi ptr [ %0, %bb.lk ], [ %i.qtl, %.preheader136.loopexit.i.i1644 ] ; 2 uses
  %i.qrt = or disjoint i32 %.039.lcssa.i.i1616, 7
  %i.qru = icmp slt i32 %i.qrt, %i.qgh
  br i1 %i.qru, label %.lr.ph145.i39.i, label %.preheader135.i.i1619

.lr.ph145.i39.i:                                  ; preds = %.preheader136.i.i1615
  %i.qrv = fcmp fast ueq <8 x float> %i.qrk, zeroinitializer
  %i.qrw = bitcast <8 x float> %i.qrk to <8 x i32>
  %i.qrx = and <8 x i32> %i.qrw, splat (i32 -2147483648)
  %i.qry = fcmp fast olt <8 x float> %i.qrk, zeroinitializer
  %i.qrz = select <8 x i1> %i.qry, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.qsa = or disjoint <8 x i32> %i.qrx, splat (i32 1070141403)
  br label %bb.lm

bb.ll:                                            ; preds = %bb.ll, %.lr.ph.i42.i1640
  %.0139.i.i1641 = phi ptr [ %0, %.lr.ph.i42.i1640 ], [ %i.qtl, %bb.ll ] ; 2 uses
  %.035138.i.i1642 = phi ptr [ %2, %.lr.ph.i42.i1640 ], [ %i.qtm, %bb.ll ] ; 2 uses
  %.039137.i.i1643 = phi i32 [ 0, %.lr.ph.i42.i1640 ], [ %i.qtn, %bb.ll ]
  %i.qsb = load <16 x bfloat>, ptr %.0139.i.i1641, align 1, !tbaa !555 ; 4 uses
  %i.qsc = fpext fast <16 x bfloat> %i.qsb to <16 x float>
  %i.qsd = fcmp fast one <16 x bfloat> %i.qsb, zeroinitializer
  %i.qse = fcmp fast olt <16 x bfloat> %i.qsb, zeroinitializer
  %i.qsf = select fast <16 x i1> %i.qse, <16 x float> %i.qrq, <16 x float> zeroinitializer
  %i.qsg = fdiv fast <16 x float> %i.qrm, %i.qsc  ; 2 uses
  %i.qsh = bitcast <16 x float> %i.qsg to <16 x i32>
  %i.qsi = and <16 x i32> %i.qsh, splat (i32 -2147483648)
  %i.qsj = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.qsg) ; 3 uses
  %i.qsk = fcmp fast ogt <16 x float> %i.qsj, splat (float 1.000000e+00) ; 2 uses
  %i.qsl = select fast <16 x i1> %i.qsk, <16 x float> splat (float -1.000000e+00), <16 x float> %i.qsj
  %i.qsm = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.qsj, <16 x float> splat (float 1.000000e+00))
  %i.qsn = fdiv fast <16 x float> %i.qsl, %i.qsm  ; 3 uses
  %i.qso = fmul fast <16 x float> %i.qsn, %i.qsn  ; 3 uses
  %i.qsp = fmul fast <16 x float> %i.qso, %i.qso  ; 7 uses
  %i.qsq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qsp, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.qsr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qsp, <16 x float> nofpclass(nan inf) %i.qsq, <16 x float> splat (float f0xBE117200))
  %i.qss = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qsp, <16 x float> nofpclass(nan inf) %i.qsr, <16 x float> splat (float f0xBEAAAA53))
  %i.qst = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qsp, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.qsu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qsp, <16 x float> nofpclass(nan inf) %i.qst, <16 x float> splat (float f0x3DD9ED24))
  %i.qsv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qsp, <16 x float> nofpclass(nan inf) %i.qsu, <16 x float> splat (float f0x3E4CB974))
  %i.qsw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qsp, <16 x float> nofpclass(nan inf) %i.qsv, <16 x float> splat (float 1.000000e+00))
  %i.qsx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qso, <16 x float> nofpclass(nan inf) %i.qss, <16 x float> nofpclass(nan inf) %i.qsw)
  %i.qsy = fmul fast <16 x float> %i.qsx, %i.qsn
  %i.qsz = select fast <16 x i1> %i.qsk, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.qta = fadd fast <16 x float> %i.qsy, %i.qsz
  %i.qtb = bitcast <16 x float> %i.qta to <16 x i32>
  %i.qtc = or <16 x i32> %i.qsi, %i.qtb
  %i.qtd = bitcast <16 x i32> %i.qtc to <16 x float>
  %i.qte = fadd fast <16 x float> %i.qsf, %i.qtd
  %i.qtf = bitcast <16 x bfloat> %i.qsb to <16 x i16>
  %i.qtg = icmp slt <16 x i16> %i.qtf, zeroinitializer
  %i.qth = select fast <16 x i1> %i.qtg, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.qti = select <16 x i1> %i.qsd, <16 x float> %i.qte, <16 x float> %i.qrr
  %i.qtj = select <16 x i1> %i.qro, <16 x float> %i.qti, <16 x float> %i.qth
  %i.qtk = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.qtj)
  store <16 x bfloat> %i.qtk, ptr %.035138.i.i1642, align 1, !tbaa !555
  %i.qtl = getelementptr inbounds nuw i8, ptr %.0139.i.i1641, i64 32 ; 2 uses
  %i.qtm = getelementptr inbounds nuw i8, ptr %.035138.i.i1642, i64 32 ; 2 uses
  %i.qtn = add nuw nsw i32 %.039137.i.i1643, 16   ; 2 uses
  %i.qto = or disjoint i32 %i.qtn, 15
  %i.qtp = icmp slt i32 %i.qto, %i.qgh
  br i1 %i.qtp, label %bb.ll, label %.preheader136.loopexit.i.i1644, !llvm.loop !345

.preheader135.i.i1619:                            ; preds = %bb.lm, %.preheader136.i.i1615
  %.140.lcssa.i.i1620 = phi i32 [ %.039.lcssa.i.i1616, %.preheader136.i.i1615 ], [ %i.qvl, %bb.lm ] ; 3 uses
  %.136.lcssa.i.i1621 = phi ptr [ %.035.lcssa.i.i1617, %.preheader136.i.i1615 ], [ %i.qvk, %bb.lm ] ; 2 uses
  %.1.lcssa.i35.i1622 = phi ptr [ %.0.lcssa.i34.i1618, %.preheader136.i.i1615 ], [ %i.qvj, %bb.lm ] ; 2 uses
  %i.qtq = or disjoint i32 %.140.lcssa.i.i1620, 3
  %i.qtr = icmp slt i32 %i.qtq, %i.qgh
  br i1 %i.qtr, label %.lr.ph152.i.i1632, label %.preheader.i36.i1623

.lr.ph152.i.i1632:                                ; preds = %.preheader135.i.i1619
  %i.qts = fcmp fast oeq <4 x float> %i.qrl, zeroinitializer
  %i.qtt = bitcast <4 x float> %i.qrl to <4 x i32>
  %i.qtu = and <4 x i32> %i.qtt, splat (i32 -2147483648)
  %i.qtv = fcmp fast olt <4 x float> %i.qrl, zeroinitializer
  %i.qtw = select <4 x i1> %i.qtv, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.qtx = or disjoint <4 x i32> %i.qtu, splat (i32 1070141403)
  br label %bb.ln

bb.lm:                                            ; preds = %bb.lm, %.lr.ph145.i39.i
  %.1144.i40.i = phi ptr [ %.0.lcssa.i34.i1618, %.lr.ph145.i39.i ], [ %i.qvj, %bb.lm ] ; 2 uses
  %.136143.i.i1637 = phi ptr [ %.035.lcssa.i.i1617, %.lr.ph145.i39.i ], [ %i.qvk, %bb.lm ] ; 2 uses
  %.140142.i.i1638 = phi i32 [ %.039.lcssa.i.i1616, %.lr.ph145.i39.i ], [ %i.qvl, %bb.lm ]
  %i.qty = load <8 x bfloat>, ptr %.1144.i40.i, align 1, !tbaa !555 ; 4 uses
  %i.qtz = fpext fast <8 x bfloat> %i.qty to <8 x float>
  %i.qua = fcmp fast ueq <8 x bfloat> %i.qty, zeroinitializer
  %i.qub = fcmp fast olt <8 x bfloat> %i.qty, zeroinitializer
  %i.quc = select <8 x i1> %i.qub, <8 x float> %i.qrz, <8 x float> zeroinitializer
  %i.qud = fdiv fast <8 x float> %i.qrk, %i.qtz   ; 2 uses
  %i.que = bitcast <8 x float> %i.qud to <8 x i32>
  %i.quf = and <8 x i32> %i.que, splat (i32 -2147483648)
  %i.qug = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.qud) ; 3 uses
  %i.quh = fcmp fast ogt <8 x float> %i.qug, splat (float 1.000000e+00) ; 2 uses
  %i.qui = select <8 x i1> %i.quh, <8 x float> splat (float -1.000000e+00), <8 x float> %i.qug
  %i.quj = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.qug, <8 x float> splat (float 1.000000e+00))
  %i.quk = fdiv fast <8 x float> %i.qui, %i.quj   ; 3 uses
  %i.qul = fmul fast <8 x float> %i.quk, %i.quk   ; 3 uses
  %i.qum = fmul fast <8 x float> %i.qul, %i.qul   ; 7 uses
  %i.qun = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qum, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.quo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qum, <8 x float> nofpclass(nan inf) %i.qun, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.qup = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qum, <8 x float> nofpclass(nan inf) %i.quo, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.quq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qum, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.qur = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qum, <8 x float> nofpclass(nan inf) %i.quq, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.qus = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qum, <8 x float> nofpclass(nan inf) %i.qur, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.qut = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qum, <8 x float> nofpclass(nan inf) %i.qus, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.quu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qul, <8 x float> nofpclass(nan inf) %i.qup, <8 x float> nofpclass(nan inf) %i.qut)
  %i.quv = fmul fast <8 x float> %i.quu, %i.quk
  %i.quw = select <8 x i1> %i.quh, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.qux = fadd fast <8 x float> %i.quv, %i.quw
  %i.quy = bitcast <8 x float> %i.qux to <8 x i32>
  %i.quz = or <8 x i32> %i.quf, %i.quy
  %i.qva = bitcast <8 x i32> %i.quz to <8 x float>
  %i.qvb = fadd fast <8 x float> %i.quc, %i.qva
  %i.qvc = bitcast <8 x bfloat> %i.qty to <8 x i16>
  %isneg.i41.i = icmp sgt <8 x i16> %i.qvc, splat (i16 -1)
  %i.qvd = select <8 x i1> %isneg.i41.i, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.qve = bitcast <8 x float> %i.qvb to <8 x i32>
  %i.qvf = select <8 x i1> %i.qua, <8 x i32> %i.qsa, <8 x i32> %i.qve
  %i.qvg = select <8 x i1> %i.qrv, <8 x i32> %i.qvd, <8 x i32> %i.qvf
  %i.qvh = bitcast <8 x i32> %i.qvg to <8 x float>
  %i.qvi = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.qvh)
  store <8 x bfloat> %i.qvi, ptr %.136143.i.i1637, align 1, !tbaa !555
  %i.qvj = getelementptr inbounds nuw i8, ptr %.1144.i40.i, i64 16 ; 2 uses
  %i.qvk = getelementptr inbounds nuw i8, ptr %.136143.i.i1637, i64 16 ; 2 uses
  %i.qvl = add nuw nsw i32 %.140142.i.i1638, 8    ; 3 uses
  %i.qvm = or disjoint i32 %i.qvl, 7
  %i.qvn = icmp slt i32 %i.qvm, %i.qgh
  br i1 %i.qvn, label %bb.lm, label %.preheader135.i.i1619, !llvm.loop !346

.preheader.i36.i1623:                             ; preds = %bb.ln, %.preheader135.i.i1619
  %.241.lcssa.i.i1624 = phi i32 [ %.140.lcssa.i.i1620, %.preheader135.i.i1619 ], [ %i.rbb, %bb.ln ] ; 5 uses
  %.237.lcssa.i.i1625 = phi ptr [ %.136.lcssa.i.i1621, %.preheader135.i.i1619 ], [ %i.rba, %bb.ln ] ; 6 uses
  %.2.lcssa.i37.i1626 = phi ptr [ %.1.lcssa.i35.i1622, %.preheader135.i.i1619 ], [ %i.raz, %bb.ln ] ; 6 uses
  %i.qvo = icmp slt i32 %.241.lcssa.i.i1624, %i.qgh
  br i1 %i.qvo, label %iter.check7129, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7129:                                   ; preds = %.preheader.i36.i1623
  %.237.lcssa.i.i16257113 = ptrtoaddr ptr %.237.lcssa.i.i1625 to i64
  %.2.lcssa.i37.i16267112 = ptrtoaddr ptr %.2.lcssa.i37.i1626 to i64
  %i.qvp = xor i32 %.241.lcssa.i.i1624, -1
  %i.qvq = add i32 %i.qgh, %i.qvp                 ; 3 uses
  %i.qvr = zext i32 %i.qvq to i64
  %i.qvs = add nuw nsw i64 %i.qvr, 1              ; 5 uses
  %min.iters.check7114 = icmp ult i32 %i.qvq, 7
  %i.qvt = sub i64 %.2.lcssa.i37.i16267112, %.237.lcssa.i.i16257113
  %diff.check7116 = icmp ugt i64 %i.qvt, -64
  %or.cond9222.a = select i1 %min.iters.check7114, i1 true, i1 %diff.check7116
  br i1 %or.cond9222.a, label %.lr.ph159.i.i1627.preheader, label %vector.main.loop.iter.check7117

vector.main.loop.iter.check7117:                  ; preds = %iter.check7129
  %min.iters.check7118 = icmp ult i32 %i.qvq, 31
  br i1 %min.iters.check7118, label %vec.epilog.ph7133, label %vector.ph7119

vector.ph7119:                                    ; preds = %vector.main.loop.iter.check7117
  %i.qvu = and i64 %i.qvs, 24
  %n.vec7120 = and i64 %i.qvs, 8589934560         ; 5 uses
  %i.qvv = shl nuw nsw i64 %n.vec7120, 1          ; 2 uses
  %i.qvw = getelementptr i8, ptr %.2.lcssa.i37.i1626, i64 %i.qvv
  %i.qvx = getelementptr i8, ptr %.237.lcssa.i.i1625, i64 %i.qvv
  %i.qvy = trunc i64 %n.vec7120 to i32
  %i.qvz = add i32 %.241.lcssa.i.i1624, %i.qvy
  %i.qwa = insertelement <16 x float> poison, float %i.qqq, i64 0
  %i.qwb = shufflevector <16 x float> %i.qwa, <16 x float> poison, <16 x i32> zeroinitializer
  %i.qwc = insertelement <8 x float> poison, float %i.qqq, i64 0
  %i.qwd = shufflevector <8 x float> %i.qwc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qwe = insertelement <4 x float> poison, float %i.qqq, i64 0
  %i.qwf = shufflevector <4 x float> %i.qwe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qwg = insertelement <2 x float> poison, float %i.qqq, i64 0
  %i.qwh = shufflevector <2 x float> %i.qwg, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7121

vector.body7121:                                  ; preds = %vector.ph7119, %vector.body7121
  %index7122 = phi i64 [ 0, %vector.ph7119 ], [ %index.next7126, %vector.body7121 ] ; 2 uses
  %i.qwi = shl i64 %index7122, 1                  ; 2 uses
  %next.gep7123 = getelementptr i8, ptr %.2.lcssa.i37.i1626, i64 %i.qwi
  %next.gep7124 = getelementptr i8, ptr %.237.lcssa.i.i1625, i64 %i.qwi
  %wide.load7125 = load <32 x i16>, ptr %next.gep7123, align 2, !tbaa !558
  %i.qwj = zext <32 x i16> %wide.load7125 to <32 x i32>
  %i.qwk = shl nuw <32 x i32> %i.qwj, splat (i32 16)
  %i.qwl = bitcast <32 x i32> %i.qwk to <32 x float> ; 6 uses
  %i.qwm = extractelement <32 x float> %i.qwl, i64 0
  %i.qwn = tail call fast float @llvm.atan2.f32(float %i.qqq, float %i.qwm)
  %i.qwo = shufflevector <32 x float> %i.qwl, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.qwp = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.qwb, <16 x float> %i.qwo)
  %i.qwq = shufflevector <32 x float> %i.qwl, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.qwr = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.qwd, <8 x float> %i.qwq)
  %i.qws = shufflevector <32 x float> %i.qwl, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.qwt = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.qwf, <4 x float> %i.qws)
  %i.qwu = extractelement <32 x float> %i.qwl, i64 29
  %i.qwv = tail call fast float @llvm.atan2.f32(float %i.qqq, float %i.qwu)
  %i.qww = shufflevector <32 x float> %i.qwl, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.qwx = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.qwh, <2 x float> %i.qww)
  %i.qwy = insertelement <32 x float> poison, float %i.qwn, i64 0
  %i.qwz = shufflevector <16 x float> %i.qwp, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qxa = shufflevector <32 x float> %i.qwy, <32 x float> %i.qwz, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qxb = shufflevector <8 x float> %i.qwr, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qxc = shufflevector <32 x float> %i.qxa, <32 x float> %i.qxb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qxd = shufflevector <4 x float> %i.qwt, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qxe = shufflevector <32 x float> %i.qxc, <32 x float> %i.qxd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.qxf = insertelement <32 x float> %i.qxe, float %i.qwv, i64 29
  %i.qxg = shufflevector <2 x float> %i.qwx, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qxh = shufflevector <32 x float> %i.qxf, <32 x float> %i.qxg, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.qxi = bitcast <32 x float> %i.qxh to <32 x i32>
  %i.qxj = lshr <32 x i32> %i.qxi, splat (i32 16)
  %i.qxk = trunc nuw <32 x i32> %i.qxj to <32 x i16>
  store <32 x i16> %i.qxk, ptr %next.gep7124, align 2, !tbaa !558
  %index.next7126 = add nuw i64 %index7122, 32    ; 2 uses
  %i.qxl = icmp eq i64 %index.next7126, %n.vec7120
  br i1 %i.qxl, label %middle.block7127, label %vector.body7121, !llvm.loop !347

middle.block7127:                                 ; preds = %vector.body7121
  %cmp.n7128 = icmp eq i64 %i.qvs, %n.vec7120
  br i1 %cmp.n7128, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7130

vec.epilog.iter.check7130:                        ; preds = %middle.block7127
  %min.epilog.iters.check7132 = icmp eq i64 %i.qvu, 0
  br i1 %min.epilog.iters.check7132, label %.lr.ph159.i.i1627.preheader, label %vec.epilog.ph7133, !prof !561

vec.epilog.ph7133:                                ; preds = %vector.main.loop.iter.check7117, %vec.epilog.iter.check7130
  %vec.epilog.resume.val7134 = phi i64 [ %n.vec7120, %vec.epilog.iter.check7130 ], [ 0, %vector.main.loop.iter.check7117 ]
  %n.vec7135 = and i64 %i.qvs, 8589934584         ; 4 uses
  %i.qxm = shl nuw nsw i64 %n.vec7135, 1          ; 2 uses
  %i.qxn = getelementptr i8, ptr %.2.lcssa.i37.i1626, i64 %i.qxm
  %i.qxo = getelementptr i8, ptr %.237.lcssa.i.i1625, i64 %i.qxm
  %i.qxp = trunc i64 %n.vec7135 to i32
  %i.qxq = add i32 %.241.lcssa.i.i1624, %i.qxp
  %i.qxr = insertelement <4 x float> poison, float %i.qqq, i64 0
  %i.qxs = shufflevector <4 x float> %i.qxr, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7136

vec.epilog.vector.body7136:                       ; preds = %vec.epilog.vector.body7136, %vec.epilog.ph7133
  %index7137 = phi i64 [ %vec.epilog.resume.val7134, %vec.epilog.ph7133 ], [ %index.next7141, %vec.epilog.vector.body7136 ] ; 2 uses
  %i.qxt = shl i64 %index7137, 1                  ; 2 uses
  %next.gep7138 = getelementptr i8, ptr %.2.lcssa.i37.i1626, i64 %i.qxt
  %next.gep7139 = getelementptr i8, ptr %.237.lcssa.i.i1625, i64 %i.qxt
  %wide.load7140 = load <8 x i16>, ptr %next.gep7138, align 2, !tbaa !558
  %i.qxu = zext <8 x i16> %wide.load7140 to <8 x i32>
  %i.qxv = shl nuw <8 x i32> %i.qxu, splat (i32 16)
  %i.qxw = bitcast <8 x i32> %i.qxv to <8 x float> ; 5 uses
  %i.qxx = extractelement <8 x float> %i.qxw, i64 0
  %i.qxy = tail call fast float @llvm.atan2.f32(float %i.qqq, float %i.qxx)
  %i.qxz = extractelement <8 x float> %i.qxw, i64 1
  %i.qya = tail call fast float @llvm.atan2.f32(float %i.qqq, float %i.qxz)
  %i.qyb = extractelement <8 x float> %i.qxw, i64 2
  %i.qyc = tail call fast float @llvm.atan2.f32(float %i.qqq, float %i.qyb)
  %i.qyd = shufflevector <8 x float> %i.qxw, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.qye = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.qxs, <4 x float> %i.qyd)
  %i.qyf = extractelement <8 x float> %i.qxw, i64 7
  %i.qyg = tail call fast float @llvm.atan2.f32(float %i.qqq, float %i.qyf)
  %i.qyh = insertelement <8 x float> poison, float %i.qxy, i64 0
  %i.qyi = insertelement <8 x float> %i.qyh, float %i.qya, i64 1
  %i.qyj = insertelement <8 x float> %i.qyi, float %i.qyc, i64 2
  %i.qyk = shufflevector <4 x float> %i.qye, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qyl = shufflevector <8 x float> %i.qyj, <8 x float> %i.qyk, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.qym = insertelement <8 x float> %i.qyl, float %i.qyg, i64 7
  %i.qyn = bitcast <8 x float> %i.qym to <8 x i32>
  %i.qyo = lshr <8 x i32> %i.qyn, splat (i32 16)
  %i.qyp = trunc nuw <8 x i32> %i.qyo to <8 x i16>
  store <8 x i16> %i.qyp, ptr %next.gep7139, align 2, !tbaa !558
  %index.next7141 = add nuw i64 %index7137, 8     ; 2 uses
  %i.qyq = icmp eq i64 %index.next7141, %n.vec7135
  br i1 %i.qyq, label %vec.epilog.middle.block7142, label %vec.epilog.vector.body7136, !llvm.loop !348

vec.epilog.middle.block7142:                      ; preds = %vec.epilog.vector.body7136
  %cmp.n7143 = icmp eq i64 %i.qvs, %n.vec7135
  br i1 %cmp.n7143, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i.i1627.preheader

.lr.ph159.i.i1627.preheader:                      ; preds = %iter.check7129, %vec.epilog.iter.check7130, %vec.epilog.middle.block7142
  %.3158.i.i1628.ph = phi ptr [ %.2.lcssa.i37.i1626, %iter.check7129 ], [ %i.qvw, %vec.epilog.iter.check7130 ], [ %i.qxn, %vec.epilog.middle.block7142 ] ; 3 uses
  %.338157.i.i1629.ph = phi ptr [ %.237.lcssa.i.i1625, %iter.check7129 ], [ %i.qvx, %vec.epilog.iter.check7130 ], [ %i.qxo, %vec.epilog.middle.block7142 ] ; 3 uses
  %.342156.i.i1630.ph = phi i32 [ %.241.lcssa.i.i1624, %iter.check7129 ], [ %i.qvz, %vec.epilog.iter.check7130 ], [ %i.qxq, %vec.epilog.middle.block7142 ] ; 4 uses
  %i.qyr = sub i32 %i.qgh, %.342156.i.i1630.ph
  %.neg11071 = add i32 %.342156.i.i1630.ph, 1
  %xtraiter10471 = and i32 %i.qyr, 1
  %lcmp.mod10472.not = icmp eq i32 %xtraiter10471, 0
  br i1 %lcmp.mod10472.not, label %.lr.ph159.i.i1627.prol.loopexit, label %.lr.ph159.i.i1627.prol

.lr.ph159.i.i1627.prol:                           ; preds = %.lr.ph159.i.i1627.preheader
  %i.qys = getelementptr inbounds nuw i8, ptr %.3158.i.i1628.ph, i64 2
  %i.qyt = load i16, ptr %.3158.i.i1628.ph, align 2, !tbaa !558
  %i.qyu = zext i16 %i.qyt to i32
  %i.qyv = shl nuw i32 %i.qyu, 16
  %i.qyw = bitcast i32 %i.qyv to float
  %i.qyx = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qqq, float %i.qyw)
  %i.qyy = bitcast float %i.qyx to i32
  %i.qyz = lshr i32 %i.qyy, 16
  %i.qza = trunc nuw i32 %i.qyz to i16
  %i.qzb = getelementptr inbounds nuw i8, ptr %.338157.i.i1629.ph, i64 2
  store i16 %i.qza, ptr %.338157.i.i1629.ph, align 2, !tbaa !558
  %i.qzc = add nuw nsw i32 %.342156.i.i1630.ph, 1
  br label %.lr.ph159.i.i1627.prol.loopexit

.lr.ph159.i.i1627.prol.loopexit:                  ; preds = %.lr.ph159.i.i1627.prol, %.lr.ph159.i.i1627.preheader
  %.3158.i.i1628.unr = phi ptr [ %.3158.i.i1628.ph, %.lr.ph159.i.i1627.preheader ], [ %i.qys, %.lr.ph159.i.i1627.prol ]
  %.338157.i.i1629.unr = phi ptr [ %.338157.i.i1629.ph, %.lr.ph159.i.i1627.preheader ], [ %i.qzb, %.lr.ph159.i.i1627.prol ]
  %.342156.i.i1630.unr = phi i32 [ %.342156.i.i1630.ph, %.lr.ph159.i.i1627.preheader ], [ %i.qzc, %.lr.ph159.i.i1627.prol ]
  %i.qzd = icmp eq i32 %i.qgh, %.neg11071
  br i1 %i.qzd, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i.i1627

bb.ln:                                            ; preds = %bb.ln, %.lr.ph152.i.i1632
  %.2151.i.i1633 = phi ptr [ %.1.lcssa.i35.i1622, %.lr.ph152.i.i1632 ], [ %i.raz, %bb.ln ] ; 2 uses
  %.237150.i.i1634 = phi ptr [ %.136.lcssa.i.i1621, %.lr.ph152.i.i1632 ], [ %i.rba, %bb.ln ] ; 2 uses
  %.241149.i.i1635 = phi i32 [ %.140.lcssa.i.i1620, %.lr.ph152.i.i1632 ], [ %i.rbb, %bb.ln ]
  %i.qze = load i64, ptr %.2151.i.i1633, align 1, !tbaa !555
  %i.qzf = insertelement <2 x i64> poison, i64 %i.qze, i64 0
  %i.qzg = bitcast <2 x i64> %i.qzf to <8 x i16>
  %i.qzh = shufflevector <8 x i16> %i.qzg, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 2 uses
  %i.qzi = bitcast <8 x i16> %i.qzh to <4 x float> ; 3 uses
  %i.qzj = fcmp fast oeq <4 x float> %i.qzi, zeroinitializer
  %i.qzk = fcmp fast olt <4 x float> %i.qzi, zeroinitializer
  %i.qzl = select <4 x i1> %i.qzk, <4 x float> %i.qtw, <4 x float> zeroinitializer
  %i.qzm = fdiv fast <4 x float> %i.qrl, %i.qzi   ; 2 uses
  %i.qzn = bitcast <4 x float> %i.qzm to <4 x i32>
  %i.qzo = and <4 x i32> %i.qzn, splat (i32 -2147483648)
  %i.qzp = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.qzm) ; 3 uses
  %i.qzq = fcmp fast ogt <4 x float> %i.qzp, splat (float 1.000000e+00) ; 2 uses
  %i.qzr = select <4 x i1> %i.qzq, <4 x float> splat (float -1.000000e+00), <4 x float> %i.qzp
  %i.qzs = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.qzp, <4 x float> splat (float 1.000000e+00))
  %i.qzt = fdiv fast <4 x float> %i.qzr, %i.qzs   ; 3 uses
  %i.qzu = fmul fast <4 x float> %i.qzt, %i.qzt   ; 3 uses
  %i.qzv = fmul fast <4 x float> %i.qzu, %i.qzu   ; 7 uses
  %i.qzw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qzv, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.qzx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qzv, <4 x float> nofpclass(nan inf) %i.qzw, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.qzy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qzv, <4 x float> nofpclass(nan inf) %i.qzx, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.qzz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qzv, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.raa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qzv, <4 x float> nofpclass(nan inf) %i.qzz, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.rab = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qzv, <4 x float> nofpclass(nan inf) %i.raa, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.rac = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qzv, <4 x float> nofpclass(nan inf) %i.rab, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.rad = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qzu, <4 x float> nofpclass(nan inf) %i.qzy, <4 x float> nofpclass(nan inf) %i.rac)
  %i.rae = fmul fast <4 x float> %i.rad, %i.qzt
  %i.raf = select <4 x i1> %i.qzq, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.rag = fadd fast <4 x float> %i.rae, %i.raf
  %i.rah = bitcast <4 x float> %i.rag to <4 x i32>
  %i.rai = or <4 x i32> %i.qzo, %i.rah
  %i.raj = bitcast <4 x i32> %i.rai to <4 x float>
  %i.rak = fadd fast <4 x float> %i.qzl, %i.raj
  %i.ral = bitcast <8 x i16> %i.qzh to <4 x i32>
  %i.ram = and <4 x i32> %i.ral, splat (i32 -2147483648)
  %i.ran = or disjoint <4 x i32> %i.ram, splat (i32 1078530011)
  %i.rao = bitcast <4 x i32> %i.ran to <4 x float>
  %i.rap = fcmp fast uge <4 x float> %i.rao, zeroinitializer
  %i.raq = select <4 x i1> %i.rap, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.rar = bitcast <4 x float> %i.rak to <4 x i32>
  %i.ras = select <4 x i1> %i.qzj, <4 x i32> %i.qtx, <4 x i32> %i.rar
  %i.rat = select <4 x i1> %i.qts, <4 x i32> %i.raq, <4 x i32> %i.ras
  %i.rau = bitcast <4 x i32> %i.rat to <4 x float>
  %i.rav = shufflevector <4 x float> %i.rau, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.raw = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.rav)
  %i.rax = bitcast <8 x bfloat> %i.raw to <2 x i64>
  %i.ray = extractelement <2 x i64> %i.rax, i64 0
  store i64 %i.ray, ptr %.237150.i.i1634, align 1, !tbaa !555
  %i.raz = getelementptr inbounds nuw i8, ptr %.2151.i.i1633, i64 8 ; 2 uses
  %i.rba = getelementptr inbounds nuw i8, ptr %.237150.i.i1634, i64 8 ; 2 uses
  %i.rbb = add nuw nsw i32 %.241149.i.i1635, 4    ; 3 uses
  %i.rbc = or disjoint i32 %i.rbb, 3
  %i.rbd = icmp slt i32 %i.rbc, %i.qgh
  br i1 %i.rbd, label %bb.ln, label %.preheader.i36.i1623, !llvm.loop !349

.lr.ph159.i.i1627:                                ; preds = %.lr.ph159.i.i1627.prol.loopexit, %.lr.ph159.i.i1627
  %.3158.i.i1628 = phi ptr [ %i.rbo, %.lr.ph159.i.i1627 ], [ %.3158.i.i1628.unr, %.lr.ph159.i.i1627.prol.loopexit ] ; 3 uses
  %.338157.i.i1629 = phi ptr [ %i.rbx, %.lr.ph159.i.i1627 ], [ %.338157.i.i1629.unr, %.lr.ph159.i.i1627.prol.loopexit ] ; 3 uses
  %.342156.i.i1630 = phi i32 [ %i.rby, %.lr.ph159.i.i1627 ], [ %.342156.i.i1630.unr, %.lr.ph159.i.i1627.prol.loopexit ]
  %i.rbe = getelementptr inbounds nuw i8, ptr %.3158.i.i1628, i64 2
  %i.rbf = load i16, ptr %.3158.i.i1628, align 2, !tbaa !558
  %i.rbg = zext i16 %i.rbf to i32
  %i.rbh = shl nuw i32 %i.rbg, 16
  %i.rbi = bitcast i32 %i.rbh to float
  %i.rbj = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qqq, float %i.rbi)
  %i.rbk = bitcast float %i.rbj to i32
  %i.rbl = lshr i32 %i.rbk, 16
  %i.rbm = trunc nuw i32 %i.rbl to i16
  %i.rbn = getelementptr inbounds nuw i8, ptr %.338157.i.i1629, i64 2
  store i16 %i.rbm, ptr %.338157.i.i1629, align 2, !tbaa !558
  %i.rbo = getelementptr inbounds nuw i8, ptr %.3158.i.i1628, i64 4
  %i.rbp = load i16, ptr %i.rbe, align 2, !tbaa !558
  %i.rbq = zext i16 %i.rbp to i32
  %i.rbr = shl nuw i32 %i.rbq, 16
  %i.rbs = bitcast i32 %i.rbr to float
  %i.rbt = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qqq, float %i.rbs)
  %i.rbu = bitcast float %i.rbt to i32
  %i.rbv = lshr i32 %i.rbu, 16
  %i.rbw = trunc nuw i32 %i.rbv to i16
  %i.rbx = getelementptr inbounds nuw i8, ptr %.338157.i.i1629, i64 4
  store i16 %i.rbw, ptr %i.rbn, align 2, !tbaa !558
  %i.rby = add nuw nsw i32 %.342156.i.i1630, 2    ; 2 uses
  %exitcond.not.i38.i1631.1 = icmp eq i32 %i.rby, %i.qgh
  br i1 %exitcond.not.i38.i1631.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i.i1627, !llvm.loop !350

bb.lo:                                            ; preds = %bb.le
  %i.rbz = icmp eq i32 %3, 1
  br i1 %i.rbz, label %bb.lp, label %bb.ly

bb.lp:                                            ; preds = %bb.lo
  %i.rca = load i16, ptr %0, align 2, !tbaa !558
  %i.rcb = zext i16 %i.rca to i32
  %i.rcc = shl nuw i32 %i.rcb, 16
  %i.rcd = bitcast i32 %i.rcc to float            ; 15 uses
  %i.rce = icmp eq i32 %.sroa.speculated.i1516, 4
  br i1 %i.rce, label %.thread129.i76.i1614, label %bb.lq

.thread129.i76.i1614:                             ; preds = %bb.lp
  %i.rcf = load i64, ptr %0, align 2, !tbaa !555
  %i.rcg = insertelement <2 x i64> poison, i64 %i.rcf, i64 0
  %i.rch = bitcast <2 x i64> %i.rcg to <8 x i16>
  %i.rci = shufflevector <8 x i16> %i.rch, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.rcj = bitcast <8 x i16> %i.rci to <4 x float> ; 2 uses
  %i.rck = shufflevector <4 x float> %i.rcj, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.lt

bb.lq:                                            ; preds = %bb.lp
  %i.rcl = insertelement <4 x float> poison, float %i.rcd, i64 0 ; 2 uses
  %i.rcm = shufflevector <4 x float> %i.rcl, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.rcn = icmp eq i32 %.sroa.speculated.i1516, 8
  br i1 %i.rcn, label %.thread128.i75.i1613, label %bb.lr

.thread128.i75.i1613:                             ; preds = %bb.lq
  %i.rco = load <8 x bfloat>, ptr %0, align 2, !tbaa !555
  %i.rcp = fpext fast <8 x bfloat> %i.rco to <8 x float>
  br label %bb.lt

bb.lr:                                            ; preds = %bb.lq
  %i.rcq = shufflevector <4 x float> %i.rcl, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.rcr = icmp eq i32 %.sroa.speculated.i1516, 16
  br i1 %i.rcr, label %bb.ls, label %bb.lt

bb.ls:                                            ; preds = %bb.lr
  %i.rcs = load <16 x bfloat>, ptr %0, align 2, !tbaa !555
  %i.rct = fpext fast <16 x bfloat> %i.rcs to <16 x float>
  br label %bb.lu

bb.lt:                                            ; preds = %bb.lr, %.thread128.i75.i1613, %.thread129.i76.i1614
  %i.rcu = phi <8 x float> [ %i.rcp, %.thread128.i75.i1613 ], [ %i.rcq, %bb.lr ], [ %i.rck, %.thread129.i76.i1614 ] ; 2 uses
  %i.rcv = phi <4 x float> [ %i.rcm, %.thread128.i75.i1613 ], [ %i.rcm, %bb.lr ], [ %i.rcj, %.thread129.i76.i1614 ]
  %i.rcw = shufflevector <8 x float> %i.rcu, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  %i.rcx = phi <8 x float> [ %i.rcq, %bb.ls ], [ %i.rcu, %bb.lt ] ; 4 uses
  %i.rcy = phi <4 x float> [ %i.rcm, %bb.ls ], [ %i.rcv, %bb.lt ] ; 4 uses
  %i.rcz = phi fast <16 x float> [ %i.rct, %bb.ls ], [ %i.rcw, %bb.lt ] ; 4 uses
  %i.rda = icmp sgt i32 %i.qgh, 15
  br i1 %i.rda, label %.lr.ph.i70.i1608, label %.preheader136.i43.i1585

.lr.ph.i70.i1608:                                 ; preds = %bb.lu
  %i.rdb = fcmp fast one <16 x float> %i.rcz, zeroinitializer
  %i.rdc = fcmp fast olt <16 x float> %i.rcz, zeroinitializer
  %i.rdd = bitcast <16 x float> %i.rcz to <16 x i32>
  %i.rde = icmp slt <16 x i32> %i.rdd, zeroinitializer
  %i.rdf = select fast <16 x i1> %i.rde, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.rdg = fdiv fast <16 x float> splat (float 1.000000e+00), %i.rcz
  br label %bb.lv

.preheader136.loopexit.i74.i1612:                 ; preds = %bb.lv
  %i.rdh = and i32 %i.qgh, 2147483632
  br label %.preheader136.i43.i1585

.preheader136.i43.i1585:                          ; preds = %.preheader136.loopexit.i74.i1612, %bb.lu
  %.039.lcssa.i44.i1586 = phi i32 [ 0, %bb.lu ], [ %i.rdh, %.preheader136.loopexit.i74.i1612 ] ; 3 uses
  %.035.lcssa.i45.i1587 = phi ptr [ %2, %bb.lu ], [ %i.rez, %.preheader136.loopexit.i74.i1612 ] ; 2 uses
  %.0.lcssa.i46.i1588 = phi ptr [ %1, %bb.lu ], [ %i.rey, %.preheader136.loopexit.i74.i1612 ] ; 2 uses
  %i.rdi = or disjoint i32 %.039.lcssa.i44.i1586, 7
  %i.rdj = icmp slt i32 %i.rdi, %i.qgh
  br i1 %i.rdj, label %.lr.ph145.i65.i, label %.preheader135.i47.i1589

.lr.ph145.i65.i:                                  ; preds = %.preheader136.i43.i1585
  %i.rdk = fcmp fast ueq <8 x float> %i.rcx, zeroinitializer
  %i.rdl = fcmp fast olt <8 x float> %i.rcx, zeroinitializer
  %i.rdm = bitcast <8 x float> %i.rcx to <8 x i32>
  %isneg.inv132.i.i1607 = icmp slt <8 x i32> %i.rdm, zeroinitializer
  %i.rdn = select <8 x i1> %isneg.inv132.i.i1607, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.rdo = fdiv fast <8 x float> splat (float 1.000000e+00), %i.rcx
  br label %bb.lw

bb.lv:                                            ; preds = %bb.lv, %.lr.ph.i70.i1608
  %.0139.i71.i1609 = phi ptr [ %1, %.lr.ph.i70.i1608 ], [ %i.rey, %bb.lv ] ; 2 uses
  %.035138.i72.i1610 = phi ptr [ %2, %.lr.ph.i70.i1608 ], [ %i.rez, %bb.lv ] ; 2 uses
  %.039137.i73.i1611 = phi i32 [ 0, %.lr.ph.i70.i1608 ], [ %i.rfa, %bb.lv ]
  %i.rdp = load <16 x bfloat>, ptr %.0139.i71.i1609, align 1, !tbaa !555 ; 3 uses
  %i.rdq = fpext fast <16 x bfloat> %i.rdp to <16 x float> ; 2 uses
  %i.rdr = fcmp fast one <16 x bfloat> %i.rdp, zeroinitializer
  %i.rds = fcmp fast olt <16 x bfloat> %i.rdp, zeroinitializer
  %i.rdt = select fast <16 x i1> %i.rds, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.rdu = select fast <16 x i1> %i.rdc, <16 x float> %i.rdt, <16 x float> zeroinitializer
  %i.rdv = fmul fast <16 x float> %i.rdq, %i.rdg  ; 2 uses
  %i.rdw = bitcast <16 x float> %i.rdv to <16 x i32>
  %i.rdx = and <16 x i32> %i.rdw, splat (i32 -2147483648)
  %i.rdy = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.rdv) ; 3 uses
  %i.rdz = fcmp fast ogt <16 x float> %i.rdy, splat (float 1.000000e+00) ; 2 uses
  %i.rea = select fast <16 x i1> %i.rdz, <16 x float> splat (float -1.000000e+00), <16 x float> %i.rdy
  %i.reb = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.rdy, <16 x float> splat (float 1.000000e+00))
  %i.rec = fdiv fast <16 x float> %i.rea, %i.reb  ; 3 uses
  %i.red = fmul fast <16 x float> %i.rec, %i.rec  ; 3 uses
  %i.ree = fmul fast <16 x float> %i.red, %i.red  ; 7 uses
  %i.ref = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ree, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.reg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ree, <16 x float> nofpclass(nan inf) %i.ref, <16 x float> splat (float f0xBE117200))
  %i.reh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ree, <16 x float> nofpclass(nan inf) %i.reg, <16 x float> splat (float f0xBEAAAA53))
  %i.rei = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ree, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.rej = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ree, <16 x float> nofpclass(nan inf) %i.rei, <16 x float> splat (float f0x3DD9ED24))
  %i.rek = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ree, <16 x float> nofpclass(nan inf) %i.rej, <16 x float> splat (float f0x3E4CB974))
  %i.rel = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ree, <16 x float> nofpclass(nan inf) %i.rek, <16 x float> splat (float 1.000000e+00))
  %i.rem = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.red, <16 x float> nofpclass(nan inf) %i.reh, <16 x float> nofpclass(nan inf) %i.rel)
  %i.ren = fmul fast <16 x float> %i.rem, %i.rec
  %i.reo = select fast <16 x i1> %i.rdz, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.rep = fadd fast <16 x float> %i.ren, %i.reo
  %i.req = bitcast <16 x float> %i.rep to <16 x i32>
  %i.rer = or <16 x i32> %i.rdx, %i.req
  %i.res = bitcast <16 x i32> %i.rer to <16 x float>
  %i.ret = fadd fast <16 x float> %i.rdu, %i.res
  %i.reu = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.rdq)
  %i.rev = select <16 x i1> %i.rdb, <16 x float> %i.ret, <16 x float> %i.reu
  %i.rew = select <16 x i1> %i.rdr, <16 x float> %i.rev, <16 x float> %i.rdf
  %i.rex = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rew)
  store <16 x bfloat> %i.rex, ptr %.035138.i72.i1610, align 1, !tbaa !555
  %i.rey = getelementptr inbounds nuw i8, ptr %.0139.i71.i1609, i64 32 ; 2 uses
  %i.rez = getelementptr inbounds nuw i8, ptr %.035138.i72.i1610, i64 32 ; 2 uses
  %i.rfa = add nuw nsw i32 %.039137.i73.i1611, 16 ; 2 uses
  %i.rfb = or disjoint i32 %i.rfa, 15
  %i.rfc = icmp slt i32 %i.rfb, %i.qgh
  br i1 %i.rfc, label %bb.lv, label %.preheader136.loopexit.i74.i1612, !llvm.loop !351

.preheader135.i47.i1589:                          ; preds = %bb.lw, %.preheader136.i43.i1585
  %.140.lcssa.i48.i1590 = phi i32 [ %.039.lcssa.i44.i1586, %.preheader136.i43.i1585 ], [ %i.rgz, %bb.lw ] ; 3 uses
  %.136.lcssa.i49.i1591 = phi ptr [ %.035.lcssa.i45.i1587, %.preheader136.i43.i1585 ], [ %i.rgy, %bb.lw ] ; 2 uses
  %.1.lcssa.i50.i1592 = phi ptr [ %.0.lcssa.i46.i1588, %.preheader136.i43.i1585 ], [ %i.rgx, %bb.lw ] ; 2 uses
  %i.rfd = or disjoint i32 %.140.lcssa.i48.i1590, 3
  %i.rfe = icmp slt i32 %i.rfd, %i.qgh
  br i1 %i.rfe, label %.lr.ph152.i60.i1602, label %.preheader.i51.i1593

.lr.ph152.i60.i1602:                              ; preds = %.preheader135.i47.i1589
  %i.rff = fcmp fast oeq <4 x float> %i.rcy, zeroinitializer
  %i.rfg = fcmp fast olt <4 x float> %i.rcy, zeroinitializer
  %i.rfh = bitcast <4 x float> %i.rcy to <4 x i32>
  %isneg.inv.i.i1603 = icmp slt <4 x i32> %i.rfh, zeroinitializer
  %i.rfi = select <4 x i1> %isneg.inv.i.i1603, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.rfj = fdiv fast <4 x float> splat (float 1.000000e+00), %i.rcy
  br label %bb.lx

bb.lw:                                            ; preds = %bb.lw, %.lr.ph145.i65.i
  %.1144.i66.i = phi ptr [ %.0.lcssa.i46.i1588, %.lr.ph145.i65.i ], [ %i.rgx, %bb.lw ] ; 2 uses
  %.136143.i67.i = phi ptr [ %.035.lcssa.i45.i1587, %.lr.ph145.i65.i ], [ %i.rgy, %bb.lw ] ; 2 uses
  %.140142.i68.i = phi i32 [ %.039.lcssa.i44.i1586, %.lr.ph145.i65.i ], [ %i.rgz, %bb.lw ]
  %i.rfk = load <8 x bfloat>, ptr %.1144.i66.i, align 1, !tbaa !555 ; 3 uses
  %i.rfl = fpext fast <8 x bfloat> %i.rfk to <8 x float> ; 2 uses
  %i.rfm = fcmp fast ueq <8 x bfloat> %i.rfk, zeroinitializer
  %i.rfn = bitcast <8 x float> %i.rfl to <8 x i32>
  %i.rfo = and <8 x i32> %i.rfn, splat (i32 -2147483648)
  %i.rfp = fcmp fast olt <8 x bfloat> %i.rfk, zeroinitializer
  %i.rfq = select <8 x i1> %i.rfp, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.rfr = select <8 x i1> %i.rdl, <8 x float> %i.rfq, <8 x float> zeroinitializer
  %i.rfs = fmul fast <8 x float> %i.rfl, %i.rdo   ; 2 uses
  %i.rft = bitcast <8 x float> %i.rfs to <8 x i32>
  %i.rfu = and <8 x i32> %i.rft, splat (i32 -2147483648)
  %i.rfv = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.rfs) ; 3 uses
  %i.rfw = fcmp fast ogt <8 x float> %i.rfv, splat (float 1.000000e+00) ; 2 uses
  %i.rfx = select <8 x i1> %i.rfw, <8 x float> splat (float -1.000000e+00), <8 x float> %i.rfv
  %i.rfy = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.rfv, <8 x float> splat (float 1.000000e+00))
  %i.rfz = fdiv fast <8 x float> %i.rfx, %i.rfy   ; 3 uses
  %i.rga = fmul fast <8 x float> %i.rfz, %i.rfz   ; 3 uses
  %i.rgb = fmul fast <8 x float> %i.rga, %i.rga   ; 7 uses
  %i.rgc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rgb, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.rgd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rgb, <8 x float> nofpclass(nan inf) %i.rgc, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.rge = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rgb, <8 x float> nofpclass(nan inf) %i.rgd, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.rgf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rgb, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.rgg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rgb, <8 x float> nofpclass(nan inf) %i.rgf, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.rgh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rgb, <8 x float> nofpclass(nan inf) %i.rgg, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.rgi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rgb, <8 x float> nofpclass(nan inf) %i.rgh, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.rgj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rga, <8 x float> nofpclass(nan inf) %i.rge, <8 x float> nofpclass(nan inf) %i.rgi)
  %i.rgk = fmul fast <8 x float> %i.rgj, %i.rfz
  %i.rgl = select <8 x i1> %i.rfw, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.rgm = fadd fast <8 x float> %i.rgk, %i.rgl
  %i.rgn = bitcast <8 x float> %i.rgm to <8 x i32>
  %i.rgo = or <8 x i32> %i.rfu, %i.rgn
  %i.rgp = bitcast <8 x i32> %i.rgo to <8 x float>
  %i.rgq = fadd fast <8 x float> %i.rfr, %i.rgp
  %i.rgr = or disjoint <8 x i32> %i.rfo, splat (i32 1070141403)
  %i.rgs = bitcast <8 x float> %i.rgq to <8 x i32>
  %i.rgt = select <8 x i1> %i.rdk, <8 x i32> %i.rgr, <8 x i32> %i.rgs
  %i.rgu = select <8 x i1> %i.rfm, <8 x i32> %i.rdn, <8 x i32> %i.rgt
  %i.rgv = bitcast <8 x i32> %i.rgu to <8 x float>
  %i.rgw = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.rgv)
  store <8 x bfloat> %i.rgw, ptr %.136143.i67.i, align 1, !tbaa !555
  %i.rgx = getelementptr inbounds nuw i8, ptr %.1144.i66.i, i64 16 ; 2 uses
  %i.rgy = getelementptr inbounds nuw i8, ptr %.136143.i67.i, i64 16 ; 2 uses
  %i.rgz = add nuw nsw i32 %.140142.i68.i, 8      ; 3 uses
  %i.rha = or disjoint i32 %i.rgz, 7
  %i.rhb = icmp slt i32 %i.rha, %i.qgh
  br i1 %i.rhb, label %bb.lw, label %.preheader135.i47.i1589, !llvm.loop !352

.preheader.i51.i1593:                             ; preds = %bb.lx, %.preheader135.i47.i1589
  %.241.lcssa.i52.i1594 = phi i32 [ %.140.lcssa.i48.i1590, %.preheader135.i47.i1589 ], [ %i.rmn, %bb.lx ] ; 5 uses
  %.237.lcssa.i53.i1595 = phi ptr [ %.136.lcssa.i49.i1591, %.preheader135.i47.i1589 ], [ %i.rmm, %bb.lx ] ; 6 uses
  %.2.lcssa.i54.i1596 = phi ptr [ %.1.lcssa.i50.i1592, %.preheader135.i47.i1589 ], [ %i.rml, %bb.lx ] ; 6 uses
  %i.rhc = icmp slt i32 %.241.lcssa.i52.i1594, %i.qgh
  br i1 %i.rhc, label %iter.check7090, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7090:                                   ; preds = %.preheader.i51.i1593
  %.237.lcssa.i53.i15957074 = ptrtoaddr ptr %.237.lcssa.i53.i1595 to i64
  %.2.lcssa.i54.i15967073 = ptrtoaddr ptr %.2.lcssa.i54.i1596 to i64
  %i.rhd = xor i32 %.241.lcssa.i52.i1594, -1
  %i.rhe = add i32 %i.qgh, %i.rhd                 ; 3 uses
  %i.rhf = zext i32 %i.rhe to i64
  %i.rhg = add nuw nsw i64 %i.rhf, 1              ; 5 uses
  %min.iters.check7075 = icmp ult i32 %i.rhe, 7
  %i.rhh = sub i64 %.2.lcssa.i54.i15967073, %.237.lcssa.i53.i15957074
  %diff.check7077 = icmp ugt i64 %i.rhh, -64
  %or.cond9223.a = select i1 %min.iters.check7075, i1 true, i1 %diff.check7077
  br i1 %or.cond9223.a, label %.lr.ph159.i55.i1597.preheader, label %vector.main.loop.iter.check7078

vector.main.loop.iter.check7078:                  ; preds = %iter.check7090
  %min.iters.check7079 = icmp ult i32 %i.rhe, 31
  br i1 %min.iters.check7079, label %vec.epilog.ph7094, label %vector.ph7080

vector.ph7080:                                    ; preds = %vector.main.loop.iter.check7078
  %i.rhi = and i64 %i.rhg, 24
  %n.vec7081 = and i64 %i.rhg, 8589934560         ; 5 uses
  %i.rhj = shl nuw nsw i64 %n.vec7081, 1          ; 2 uses
  %i.rhk = getelementptr i8, ptr %.2.lcssa.i54.i1596, i64 %i.rhj
  %i.rhl = getelementptr i8, ptr %.237.lcssa.i53.i1595, i64 %i.rhj
  %i.rhm = trunc i64 %n.vec7081 to i32
  %i.rhn = add i32 %.241.lcssa.i52.i1594, %i.rhm
  %i.rho = insertelement <16 x float> poison, float %i.rcd, i64 0
  %i.rhp = shufflevector <16 x float> %i.rho, <16 x float> poison, <16 x i32> zeroinitializer
  %i.rhq = insertelement <8 x float> poison, float %i.rcd, i64 0
  %i.rhr = shufflevector <8 x float> %i.rhq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rhs = insertelement <4 x float> poison, float %i.rcd, i64 0
  %i.rht = shufflevector <4 x float> %i.rhs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rhu = insertelement <2 x float> poison, float %i.rcd, i64 0
  %i.rhv = shufflevector <2 x float> %i.rhu, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7082

vector.body7082:                                  ; preds = %vector.ph7080, %vector.body7082
  %index7083 = phi i64 [ 0, %vector.ph7080 ], [ %index.next7087, %vector.body7082 ] ; 2 uses
  %i.rhw = shl i64 %index7083, 1                  ; 2 uses
  %next.gep7084 = getelementptr i8, ptr %.2.lcssa.i54.i1596, i64 %i.rhw
  %next.gep7085 = getelementptr i8, ptr %.237.lcssa.i53.i1595, i64 %i.rhw
  %wide.load7086 = load <32 x i16>, ptr %next.gep7084, align 2, !tbaa !558
  %i.rhx = zext <32 x i16> %wide.load7086 to <32 x i32>
  %i.rhy = shl nuw <32 x i32> %i.rhx, splat (i32 16)
  %i.rhz = bitcast <32 x i32> %i.rhy to <32 x float> ; 6 uses
  %i.ria = extractelement <32 x float> %i.rhz, i64 0
  %i.rib = tail call fast float @llvm.atan2.f32(float %i.ria, float %i.rcd)
  %i.ric = shufflevector <32 x float> %i.rhz, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.rid = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.ric, <16 x float> %i.rhp)
  %i.rie = shufflevector <32 x float> %i.rhz, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.rif = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.rie, <8 x float> %i.rhr)
  %i.rig = shufflevector <32 x float> %i.rhz, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.rih = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.rig, <4 x float> %i.rht)
  %i.rii = extractelement <32 x float> %i.rhz, i64 29
  %i.rij = tail call fast float @llvm.atan2.f32(float %i.rii, float %i.rcd)
  %i.rik = shufflevector <32 x float> %i.rhz, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.ril = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.rik, <2 x float> %i.rhv)
  %i.rim = insertelement <32 x float> poison, float %i.rib, i64 0
  %i.rin = shufflevector <16 x float> %i.rid, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rio = shufflevector <32 x float> %i.rim, <32 x float> %i.rin, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rip = shufflevector <8 x float> %i.rif, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.riq = shufflevector <32 x float> %i.rio, <32 x float> %i.rip, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rir = shufflevector <4 x float> %i.rih, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ris = shufflevector <32 x float> %i.riq, <32 x float> %i.rir, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.rit = insertelement <32 x float> %i.ris, float %i.rij, i64 29
  %i.riu = shufflevector <2 x float> %i.ril, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.riv = shufflevector <32 x float> %i.rit, <32 x float> %i.riu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.riw = bitcast <32 x float> %i.riv to <32 x i32>
  %i.rix = lshr <32 x i32> %i.riw, splat (i32 16)
  %i.riy = trunc nuw <32 x i32> %i.rix to <32 x i16>
  store <32 x i16> %i.riy, ptr %next.gep7085, align 2, !tbaa !558
  %index.next7087 = add nuw i64 %index7083, 32    ; 2 uses
  %i.riz = icmp eq i64 %index.next7087, %n.vec7081
  br i1 %i.riz, label %middle.block7088, label %vector.body7082, !llvm.loop !353

middle.block7088:                                 ; preds = %vector.body7082
  %cmp.n7089 = icmp eq i64 %i.rhg, %n.vec7081
  br i1 %cmp.n7089, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7091

vec.epilog.iter.check7091:                        ; preds = %middle.block7088
  %min.epilog.iters.check7093 = icmp eq i64 %i.rhi, 0
  br i1 %min.epilog.iters.check7093, label %.lr.ph159.i55.i1597.preheader, label %vec.epilog.ph7094, !prof !561

vec.epilog.ph7094:                                ; preds = %vector.main.loop.iter.check7078, %vec.epilog.iter.check7091
  %vec.epilog.resume.val7095 = phi i64 [ %n.vec7081, %vec.epilog.iter.check7091 ], [ 0, %vector.main.loop.iter.check7078 ]
  %n.vec7096 = and i64 %i.rhg, 8589934584         ; 4 uses
  %i.rja = shl nuw nsw i64 %n.vec7096, 1          ; 2 uses
  %i.rjb = getelementptr i8, ptr %.2.lcssa.i54.i1596, i64 %i.rja
  %i.rjc = getelementptr i8, ptr %.237.lcssa.i53.i1595, i64 %i.rja
  %i.rjd = trunc i64 %n.vec7096 to i32
  %i.rje = add i32 %.241.lcssa.i52.i1594, %i.rjd
  %i.rjf = insertelement <4 x float> poison, float %i.rcd, i64 0
  %i.rjg = shufflevector <4 x float> %i.rjf, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7097

vec.epilog.vector.body7097:                       ; preds = %vec.epilog.vector.body7097, %vec.epilog.ph7094
  %index7098 = phi i64 [ %vec.epilog.resume.val7095, %vec.epilog.ph7094 ], [ %index.next7102, %vec.epilog.vector.body7097 ] ; 2 uses
  %i.rjh = shl i64 %index7098, 1                  ; 2 uses
  %next.gep7099 = getelementptr i8, ptr %.2.lcssa.i54.i1596, i64 %i.rjh
  %next.gep7100 = getelementptr i8, ptr %.237.lcssa.i53.i1595, i64 %i.rjh
  %wide.load7101 = load <8 x i16>, ptr %next.gep7099, align 2, !tbaa !558
  %i.rji = zext <8 x i16> %wide.load7101 to <8 x i32>
  %i.rjj = shl nuw <8 x i32> %i.rji, splat (i32 16)
  %i.rjk = bitcast <8 x i32> %i.rjj to <8 x float> ; 5 uses
  %i.rjl = extractelement <8 x float> %i.rjk, i64 0
  %i.rjm = tail call fast float @llvm.atan2.f32(float %i.rjl, float %i.rcd)
  %i.rjn = extractelement <8 x float> %i.rjk, i64 1
  %i.rjo = tail call fast float @llvm.atan2.f32(float %i.rjn, float %i.rcd)
  %i.rjp = extractelement <8 x float> %i.rjk, i64 2
  %i.rjq = tail call fast float @llvm.atan2.f32(float %i.rjp, float %i.rcd)
  %i.rjr = shufflevector <8 x float> %i.rjk, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.rjs = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.rjr, <4 x float> %i.rjg)
  %i.rjt = extractelement <8 x float> %i.rjk, i64 7
  %i.rju = tail call fast float @llvm.atan2.f32(float %i.rjt, float %i.rcd)
  %i.rjv = insertelement <8 x float> poison, float %i.rjm, i64 0
  %i.rjw = insertelement <8 x float> %i.rjv, float %i.rjo, i64 1
  %i.rjx = insertelement <8 x float> %i.rjw, float %i.rjq, i64 2
  %i.rjy = shufflevector <4 x float> %i.rjs, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rjz = shufflevector <8 x float> %i.rjx, <8 x float> %i.rjy, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.rka = insertelement <8 x float> %i.rjz, float %i.rju, i64 7
  %i.rkb = bitcast <8 x float> %i.rka to <8 x i32>
  %i.rkc = lshr <8 x i32> %i.rkb, splat (i32 16)
  %i.rkd = trunc nuw <8 x i32> %i.rkc to <8 x i16>
  store <8 x i16> %i.rkd, ptr %next.gep7100, align 2, !tbaa !558
  %index.next7102 = add nuw i64 %index7098, 8     ; 2 uses
  %i.rke = icmp eq i64 %index.next7102, %n.vec7096
  br i1 %i.rke, label %vec.epilog.middle.block7103, label %vec.epilog.vector.body7097, !llvm.loop !354

vec.epilog.middle.block7103:                      ; preds = %vec.epilog.vector.body7097
  %cmp.n7104 = icmp eq i64 %i.rhg, %n.vec7096
  br i1 %cmp.n7104, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i55.i1597.preheader

.lr.ph159.i55.i1597.preheader:                    ; preds = %iter.check7090, %vec.epilog.iter.check7091, %vec.epilog.middle.block7103
  %.3158.i56.i1598.ph = phi ptr [ %.2.lcssa.i54.i1596, %iter.check7090 ], [ %i.rhk, %vec.epilog.iter.check7091 ], [ %i.rjb, %vec.epilog.middle.block7103 ] ; 3 uses
  %.338157.i57.i1599.ph = phi ptr [ %.237.lcssa.i53.i1595, %iter.check7090 ], [ %i.rhl, %vec.epilog.iter.check7091 ], [ %i.rjc, %vec.epilog.middle.block7103 ] ; 3 uses
  %.342156.i58.i1600.ph = phi i32 [ %.241.lcssa.i52.i1594, %iter.check7090 ], [ %i.rhn, %vec.epilog.iter.check7091 ], [ %i.rje, %vec.epilog.middle.block7103 ] ; 4 uses
  %i.rkf = sub i32 %i.qgh, %.342156.i58.i1600.ph
  %.neg11070 = add i32 %.342156.i58.i1600.ph, 1
  %xtraiter10469 = and i32 %i.rkf, 1
  %lcmp.mod10470.not = icmp eq i32 %xtraiter10469, 0
  br i1 %lcmp.mod10470.not, label %.lr.ph159.i55.i1597.prol.loopexit, label %.lr.ph159.i55.i1597.prol

.lr.ph159.i55.i1597.prol:                         ; preds = %.lr.ph159.i55.i1597.preheader
  %i.rkg = getelementptr inbounds nuw i8, ptr %.3158.i56.i1598.ph, i64 2
  %i.rkh = load i16, ptr %.3158.i56.i1598.ph, align 2, !tbaa !558
  %i.rki = zext i16 %i.rkh to i32
  %i.rkj = shl nuw i32 %i.rki, 16
  %i.rkk = bitcast i32 %i.rkj to float
  %i.rkl = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rkk, float %i.rcd)
  %i.rkm = bitcast float %i.rkl to i32
  %i.rkn = lshr i32 %i.rkm, 16
  %i.rko = trunc nuw i32 %i.rkn to i16
  %i.rkp = getelementptr inbounds nuw i8, ptr %.338157.i57.i1599.ph, i64 2
  store i16 %i.rko, ptr %.338157.i57.i1599.ph, align 2, !tbaa !558
  %i.rkq = add nuw nsw i32 %.342156.i58.i1600.ph, 1
  br label %.lr.ph159.i55.i1597.prol.loopexit

.lr.ph159.i55.i1597.prol.loopexit:                ; preds = %.lr.ph159.i55.i1597.prol, %.lr.ph159.i55.i1597.preheader
  %.3158.i56.i1598.unr = phi ptr [ %.3158.i56.i1598.ph, %.lr.ph159.i55.i1597.preheader ], [ %i.rkg, %.lr.ph159.i55.i1597.prol ]
  %.338157.i57.i1599.unr = phi ptr [ %.338157.i57.i1599.ph, %.lr.ph159.i55.i1597.preheader ], [ %i.rkp, %.lr.ph159.i55.i1597.prol ]
  %.342156.i58.i1600.unr = phi i32 [ %.342156.i58.i1600.ph, %.lr.ph159.i55.i1597.preheader ], [ %i.rkq, %.lr.ph159.i55.i1597.prol ]
  %i.rkr = icmp eq i32 %i.qgh, %.neg11070
  br i1 %i.rkr, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i55.i1597

bb.lx:                                            ; preds = %bb.lx, %.lr.ph152.i60.i1602
  %.2151.i61.i1604 = phi ptr [ %.1.lcssa.i50.i1592, %.lr.ph152.i60.i1602 ], [ %i.rml, %bb.lx ] ; 2 uses
  %.237150.i62.i1605 = phi ptr [ %.136.lcssa.i49.i1591, %.lr.ph152.i60.i1602 ], [ %i.rmm, %bb.lx ] ; 2 uses
  %.241149.i63.i1606 = phi i32 [ %.140.lcssa.i48.i1590, %.lr.ph152.i60.i1602 ], [ %i.rmn, %bb.lx ]
  %i.rks = load i64, ptr %.2151.i61.i1604, align 1, !tbaa !555
  %i.rkt = insertelement <2 x i64> poison, i64 %i.rks, i64 0
  %i.rku = bitcast <2 x i64> %i.rkt to <8 x i16>
  %i.rkv = shufflevector <8 x i16> %i.rku, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 2 uses
  %i.rkw = bitcast <8 x i16> %i.rkv to <4 x float> ; 3 uses
  %i.rkx = fcmp fast oeq <4 x float> %i.rkw, zeroinitializer
  %i.rky = fcmp fast olt <4 x float> %i.rkw, zeroinitializer
  %i.rkz = select <4 x i1> %i.rky, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.rla = select <4 x i1> %i.rfg, <4 x float> %i.rkz, <4 x float> zeroinitializer
  %i.rlb = fmul fast <4 x float> %i.rkw, %i.rfj   ; 2 uses
  %i.rlc = bitcast <4 x float> %i.rlb to <4 x i32>
  %i.rld = and <4 x i32> %i.rlc, splat (i32 -2147483648)
  %i.rle = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.rlb) ; 3 uses
  %i.rlf = fcmp fast ogt <4 x float> %i.rle, splat (float 1.000000e+00) ; 2 uses
  %i.rlg = select <4 x i1> %i.rlf, <4 x float> splat (float -1.000000e+00), <4 x float> %i.rle
  %i.rlh = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.rle, <4 x float> splat (float 1.000000e+00))
  %i.rli = fdiv fast <4 x float> %i.rlg, %i.rlh   ; 3 uses
  %i.rlj = fmul fast <4 x float> %i.rli, %i.rli   ; 3 uses
  %i.rlk = fmul fast <4 x float> %i.rlj, %i.rlj   ; 7 uses
  %i.rll = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rlk, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.rlm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rlk, <4 x float> nofpclass(nan inf) %i.rll, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.rln = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rlk, <4 x float> nofpclass(nan inf) %i.rlm, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.rlo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rlk, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.rlp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rlk, <4 x float> nofpclass(nan inf) %i.rlo, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.rlq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rlk, <4 x float> nofpclass(nan inf) %i.rlp, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.rlr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rlk, <4 x float> nofpclass(nan inf) %i.rlq, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.rls = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rlj, <4 x float> nofpclass(nan inf) %i.rln, <4 x float> nofpclass(nan inf) %i.rlr)
  %i.rlt = fmul fast <4 x float> %i.rls, %i.rli
  %i.rlu = select <4 x i1> %i.rlf, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.rlv = fadd fast <4 x float> %i.rlt, %i.rlu
  %i.rlw = bitcast <4 x float> %i.rlv to <4 x i32>
  %i.rlx = or <4 x i32> %i.rld, %i.rlw
  %i.rly = bitcast <4 x i32> %i.rlx to <4 x float>
  %i.rlz = fadd fast <4 x float> %i.rla, %i.rly
  %i.rma = bitcast <8 x i16> %i.rkv to <4 x i32>
  %i.rmb = and <4 x i32> %i.rma, splat (i32 -2147483648)
  %i.rmc = or disjoint <4 x i32> %i.rmb, splat (i32 1070141403)
  %i.rmd = bitcast <4 x float> %i.rlz to <4 x i32>
  %i.rme = select <4 x i1> %i.rff, <4 x i32> %i.rmc, <4 x i32> %i.rmd
  %i.rmf = select <4 x i1> %i.rkx, <4 x i32> %i.rfi, <4 x i32> %i.rme
  %i.rmg = bitcast <4 x i32> %i.rmf to <4 x float>
  %i.rmh = shufflevector <4 x float> %i.rmg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.rmi = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.rmh)
  %i.rmj = bitcast <8 x bfloat> %i.rmi to <2 x i64>
  %i.rmk = extractelement <2 x i64> %i.rmj, i64 0
  store i64 %i.rmk, ptr %.237150.i62.i1605, align 1, !tbaa !555
  %i.rml = getelementptr inbounds nuw i8, ptr %.2151.i61.i1604, i64 8 ; 2 uses
  %i.rmm = getelementptr inbounds nuw i8, ptr %.237150.i62.i1605, i64 8 ; 2 uses
  %i.rmn = add nuw nsw i32 %.241149.i63.i1606, 4  ; 3 uses
  %i.rmo = or disjoint i32 %i.rmn, 3
  %i.rmp = icmp slt i32 %i.rmo, %i.qgh
  br i1 %i.rmp, label %bb.lx, label %.preheader.i51.i1593, !llvm.loop !355

.lr.ph159.i55.i1597:                              ; preds = %.lr.ph159.i55.i1597.prol.loopexit, %.lr.ph159.i55.i1597
  %.3158.i56.i1598 = phi ptr [ %i.rna, %.lr.ph159.i55.i1597 ], [ %.3158.i56.i1598.unr, %.lr.ph159.i55.i1597.prol.loopexit ] ; 3 uses
  %.338157.i57.i1599 = phi ptr [ %i.rnj, %.lr.ph159.i55.i1597 ], [ %.338157.i57.i1599.unr, %.lr.ph159.i55.i1597.prol.loopexit ] ; 3 uses
  %.342156.i58.i1600 = phi i32 [ %i.rnk, %.lr.ph159.i55.i1597 ], [ %.342156.i58.i1600.unr, %.lr.ph159.i55.i1597.prol.loopexit ]
  %i.rmq = getelementptr inbounds nuw i8, ptr %.3158.i56.i1598, i64 2
  %i.rmr = load i16, ptr %.3158.i56.i1598, align 2, !tbaa !558
  %i.rms = zext i16 %i.rmr to i32
  %i.rmt = shl nuw i32 %i.rms, 16
  %i.rmu = bitcast i32 %i.rmt to float
  %i.rmv = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rmu, float %i.rcd)
  %i.rmw = bitcast float %i.rmv to i32
  %i.rmx = lshr i32 %i.rmw, 16
  %i.rmy = trunc nuw i32 %i.rmx to i16
  %i.rmz = getelementptr inbounds nuw i8, ptr %.338157.i57.i1599, i64 2
  store i16 %i.rmy, ptr %.338157.i57.i1599, align 2, !tbaa !558
  %i.rna = getelementptr inbounds nuw i8, ptr %.3158.i56.i1598, i64 4
  %i.rnb = load i16, ptr %i.rmq, align 2, !tbaa !558
  %i.rnc = zext i16 %i.rnb to i32
  %i.rnd = shl nuw i32 %i.rnc, 16
  %i.rne = bitcast i32 %i.rnd to float
  %i.rnf = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rne, float %i.rcd)
  %i.rng = bitcast float %i.rnf to i32
  %i.rnh = lshr i32 %i.rng, 16
  %i.rni = trunc nuw i32 %i.rnh to i16
  %i.rnj = getelementptr inbounds nuw i8, ptr %.338157.i57.i1599, i64 4
  store i16 %i.rni, ptr %i.rmz, align 2, !tbaa !558
  %i.rnk = add nuw nsw i32 %.342156.i58.i1600, 2  ; 2 uses
  %exitcond.not.i59.i1601.1 = icmp eq i32 %i.rnk, %i.qgh
  br i1 %exitcond.not.i59.i1601.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i55.i1597, !llvm.loop !356

bb.ly:                                            ; preds = %bb.lo, %bb.lb
  %i.rnl = icmp eq i32 %6, 1
  br i1 %i.rnl, label %bb.lz, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.lz:                                            ; preds = %bb.ly
  %i.rnm = icmp eq i32 %3, %4
  br i1 %i.rnm, label %bb.ma, label %bb.mb

bb.ma:                                            ; preds = %bb.lz
  switch i32 %.sroa.speculated.i1516, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 16, label %.preheader.i80.i1578
    i32 8, label %.preheader123.i.i1570
    i32 4, label %.preheader125.i.i1564
  ]

.preheader125.i.i1564:                            ; preds = %bb.ma
  %i.rnn = icmp sgt i32 %.sroa.speculated104.i1515, 0
  br i1 %i.rnn, label %.lr.ph.i77.i1565, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader123.i.i1570:                            ; preds = %bb.ma
  %i.rno = icmp sgt i32 %.sroa.speculated104.i1515, 0
  br i1 %i.rno, label %.lr.ph135.i.i1571, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader.i80.i1578:                             ; preds = %bb.ma
  %i.rnp = icmp sgt i32 %.sroa.speculated104.i1515, 0
  br i1 %i.rnp, label %.lr.ph140.i.i1579, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph140.i.i1579:                                ; preds = %.preheader.i80.i1578, %.lr.ph140.i.i1579
  %.031139.i.i1580 = phi ptr [ %i.rpk, %.lr.ph140.i.i1579 ], [ %0, %.preheader.i80.i1578 ] ; 2 uses
  %.033138.i.i1581 = phi ptr [ %i.rpl, %.lr.ph140.i.i1579 ], [ %1, %.preheader.i80.i1578 ] ; 2 uses
  %.036137.i.i1582 = phi i32 [ %i.rpn, %.lr.ph140.i.i1579 ], [ 0, %.preheader.i80.i1578 ]
  %.037136.i.i1583 = phi ptr [ %i.rpm, %.lr.ph140.i.i1579 ], [ %2, %.preheader.i80.i1578 ] ; 2 uses
  %i.rnq = load <16 x bfloat>, ptr %.031139.i.i1580, align 1, !tbaa !555 ; 4 uses
  %i.rnr = fpext fast <16 x bfloat> %i.rnq to <16 x float>
  %i.rns = load i16, ptr %.033138.i.i1581, align 2, !tbaa !558
  %i.rnt = zext i16 %i.rns to i32
  %i.rnu = shl nuw i32 %i.rnt, 16
  %i.rnv = insertelement <16 x i32> poison, i32 %i.rnu, i64 0
  %i.rnw = bitcast <16 x i32> %i.rnv to <16 x float>
  %i.rnx = shufflevector <16 x float> %i.rnw, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.rny = fcmp fast one <16 x bfloat> %i.rnq, zeroinitializer
  %i.rnz = fcmp fast one <16 x float> %i.rnx, zeroinitializer
  %i.roa = fcmp fast olt <16 x bfloat> %i.rnq, zeroinitializer
  %i.rob = fcmp fast olt <16 x float> %i.rnx, zeroinitializer
  %i.roc = select fast <16 x i1> %i.rob, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.rod = select fast <16 x i1> %i.roa, <16 x float> %i.roc, <16 x float> zeroinitializer
  %i.roe = fdiv fast <16 x float> %i.rnx, %i.rnr  ; 2 uses
  %i.rof = bitcast <16 x float> %i.roe to <16 x i32>
  %i.rog = and <16 x i32> %i.rof, splat (i32 -2147483648)
  %i.roh = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.roe) ; 3 uses
  %i.roi = fcmp fast ogt <16 x float> %i.roh, splat (float 1.000000e+00) ; 2 uses
  %i.roj = select fast <16 x i1> %i.roi, <16 x float> splat (float -1.000000e+00), <16 x float> %i.roh
  %i.rok = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.roh, <16 x float> splat (float 1.000000e+00))
  %i.rol = fdiv fast <16 x float> %i.roj, %i.rok  ; 3 uses
  %i.rom = fmul fast <16 x float> %i.rol, %i.rol  ; 3 uses
  %i.ron = fmul fast <16 x float> %i.rom, %i.rom  ; 7 uses
  %i.roo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ron, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.rop = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ron, <16 x float> nofpclass(nan inf) %i.roo, <16 x float> splat (float f0xBE117200))
  %i.roq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ron, <16 x float> nofpclass(nan inf) %i.rop, <16 x float> splat (float f0xBEAAAA53))
  %i.ror = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ron, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.ros = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ron, <16 x float> nofpclass(nan inf) %i.ror, <16 x float> splat (float f0x3DD9ED24))
  %i.rot = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ron, <16 x float> nofpclass(nan inf) %i.ros, <16 x float> splat (float f0x3E4CB974))
  %i.rou = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ron, <16 x float> nofpclass(nan inf) %i.rot, <16 x float> splat (float 1.000000e+00))
  %i.rov = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rom, <16 x float> nofpclass(nan inf) %i.roq, <16 x float> nofpclass(nan inf) %i.rou)
  %i.row = fmul fast <16 x float> %i.rov, %i.rol
  %i.rox = select fast <16 x i1> %i.roi, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.roy = fadd fast <16 x float> %i.row, %i.rox
  %i.roz = bitcast <16 x float> %i.roy to <16 x i32>
  %i.rpa = or <16 x i32> %i.rog, %i.roz
  %i.rpb = bitcast <16 x i32> %i.rpa to <16 x float>
  %i.rpc = fadd fast <16 x float> %i.rod, %i.rpb
  %i.rpd = bitcast <16 x bfloat> %i.rnq to <16 x i16>
  %i.rpe = icmp slt <16 x i16> %i.rpd, zeroinitializer
  %i.rpf = select fast <16 x i1> %i.rpe, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.rpg = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.rnx)
  %i.rph = select <16 x i1> %i.rny, <16 x float> %i.rpc, <16 x float> %i.rpg
  %i.rpi = select <16 x i1> %i.rnz, <16 x float> %i.rph, <16 x float> %i.rpf
  %i.rpj = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rpi)
  store <16 x bfloat> %i.rpj, ptr %.037136.i.i1583, align 1, !tbaa !555
  %i.rpk = getelementptr inbounds nuw i8, ptr %.031139.i.i1580, i64 32
  %i.rpl = getelementptr inbounds nuw i8, ptr %.033138.i.i1581, i64 2
  %i.rpm = getelementptr inbounds nuw i8, ptr %.037136.i.i1583, i64 32
  %i.rpn = add nuw nsw i32 %.036137.i.i1582, 1    ; 2 uses
  %exitcond144.not.i.i1584 = icmp eq i32 %i.rpn, %.sroa.speculated104.i1515
  br i1 %exitcond144.not.i.i1584, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph140.i.i1579, !llvm.loop !357

.lr.ph135.i.i1571:                                ; preds = %.preheader123.i.i1570, %.lr.ph135.i.i1571
  %.1134.i.i1572 = phi ptr [ %i.rrl, %.lr.ph135.i.i1571 ], [ %0, %.preheader123.i.i1570 ] ; 2 uses
  %.032133.i.i1573 = phi i32 [ %i.rro, %.lr.ph135.i.i1571 ], [ 0, %.preheader123.i.i1570 ]
  %.134132.i.i1574 = phi ptr [ %i.rrm, %.lr.ph135.i.i1571 ], [ %1, %.preheader123.i.i1570 ] ; 2 uses
  %.138131.i.i1575 = phi ptr [ %i.rrn, %.lr.ph135.i.i1571 ], [ %2, %.preheader123.i.i1570 ] ; 2 uses
  %i.rpo = load <8 x bfloat>, ptr %.1134.i.i1572, align 1, !tbaa !555 ; 4 uses
  %i.rpp = fpext fast <8 x bfloat> %i.rpo to <8 x float>
  %i.rpq = load i16, ptr %.134132.i.i1574, align 2, !tbaa !558
  %i.rpr = zext i16 %i.rpq to i32
  %i.rps = shl nuw i32 %i.rpr, 16
  %i.rpt = insertelement <8 x i32> poison, i32 %i.rps, i64 0
  %i.rpu = bitcast <8 x i32> %i.rpt to <8 x float>
  %i.rpv = shufflevector <8 x float> %i.rpu, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.rpw = fcmp fast ueq <8 x bfloat> %i.rpo, zeroinitializer
  %i.rpx = fcmp fast ueq <8 x float> %i.rpv, zeroinitializer
  %i.rpy = bitcast <8 x float> %i.rpv to <8 x i32>
  %i.rpz = and <8 x i32> %i.rpy, splat (i32 -2147483648)
  %i.rqa = fcmp fast olt <8 x bfloat> %i.rpo, zeroinitializer
  %i.rqb = fcmp fast olt <8 x float> %i.rpv, zeroinitializer
  %i.rqc = select <8 x i1> %i.rqb, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.rqd = select <8 x i1> %i.rqa, <8 x float> %i.rqc, <8 x float> zeroinitializer
  %i.rqe = fdiv fast <8 x float> %i.rpv, %i.rpp   ; 2 uses
  %i.rqf = bitcast <8 x float> %i.rqe to <8 x i32>
  %i.rqg = and <8 x i32> %i.rqf, splat (i32 -2147483648)
  %i.rqh = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.rqe) ; 3 uses
  %i.rqi = fcmp fast ogt <8 x float> %i.rqh, splat (float 1.000000e+00) ; 2 uses
  %i.rqj = select <8 x i1> %i.rqi, <8 x float> splat (float -1.000000e+00), <8 x float> %i.rqh
  %i.rqk = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.rqh, <8 x float> splat (float 1.000000e+00))
  %i.rql = fdiv fast <8 x float> %i.rqj, %i.rqk   ; 3 uses
  %i.rqm = fmul fast <8 x float> %i.rql, %i.rql   ; 3 uses
  %i.rqn = fmul fast <8 x float> %i.rqm, %i.rqm   ; 7 uses
  %i.rqo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rqn, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.rqp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rqn, <8 x float> nofpclass(nan inf) %i.rqo, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.rqq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rqn, <8 x float> nofpclass(nan inf) %i.rqp, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.rqr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rqn, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.rqs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rqn, <8 x float> nofpclass(nan inf) %i.rqr, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.rqt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rqn, <8 x float> nofpclass(nan inf) %i.rqs, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.rqu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rqn, <8 x float> nofpclass(nan inf) %i.rqt, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.rqv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rqm, <8 x float> nofpclass(nan inf) %i.rqq, <8 x float> nofpclass(nan inf) %i.rqu)
  %i.rqw = fmul fast <8 x float> %i.rqv, %i.rql
  %i.rqx = select <8 x i1> %i.rqi, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.rqy = fadd fast <8 x float> %i.rqw, %i.rqx
  %i.rqz = bitcast <8 x float> %i.rqy to <8 x i32>
  %i.rra = or <8 x i32> %i.rqg, %i.rqz
  %i.rrb = bitcast <8 x i32> %i.rra to <8 x float>
  %i.rrc = fadd fast <8 x float> %i.rqd, %i.rrb
  %i.rrd = bitcast <8 x bfloat> %i.rpo to <8 x i16>
  %i.rre = or disjoint <8 x i32> %i.rpz, splat (i32 1070141403)
  %isneg.i79.i = icmp sgt <8 x i16> %i.rrd, splat (i16 -1)
  %i.rrf = select <8 x i1> %isneg.i79.i, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.rrg = bitcast <8 x float> %i.rrc to <8 x i32>
  %i.rrh = select <8 x i1> %i.rpw, <8 x i32> %i.rre, <8 x i32> %i.rrg
  %i.rri = select <8 x i1> %i.rpx, <8 x i32> %i.rrf, <8 x i32> %i.rrh
  %i.rrj = bitcast <8 x i32> %i.rri to <8 x float>
  %i.rrk = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.rrj)
  store <8 x bfloat> %i.rrk, ptr %.138131.i.i1575, align 1, !tbaa !555
  %i.rrl = getelementptr inbounds nuw i8, ptr %.1134.i.i1572, i64 16
  %i.rrm = getelementptr inbounds nuw i8, ptr %.134132.i.i1574, i64 2
  %i.rrn = getelementptr inbounds nuw i8, ptr %.138131.i.i1575, i64 16
  %i.rro = add nuw nsw i32 %.032133.i.i1573, 1    ; 2 uses
  %exitcond143.not.i.i1577 = icmp eq i32 %i.rro, %.sroa.speculated104.i1515
  br i1 %exitcond143.not.i.i1577, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph135.i.i1571, !llvm.loop !358

.lr.ph.i77.i1565:                                 ; preds = %.preheader125.i.i1564, %.lr.ph.i77.i1565
  %.0130.i.i1566 = phi i32 [ %i.rtz, %.lr.ph.i77.i1565 ], [ 0, %.preheader125.i.i1564 ]
  %.2129.i.i1567 = phi ptr [ %i.rtw, %.lr.ph.i77.i1565 ], [ %0, %.preheader125.i.i1564 ] ; 2 uses
  %.235128.i.i1568 = phi ptr [ %i.rtx, %.lr.ph.i77.i1565 ], [ %1, %.preheader125.i.i1564 ] ; 2 uses
  %.239127.i.i1569 = phi ptr [ %i.rty, %.lr.ph.i77.i1565 ], [ %2, %.preheader125.i.i1564 ] ; 2 uses
  %i.rrp = load i64, ptr %.2129.i.i1567, align 1, !tbaa !555
  %i.rrq = insertelement <2 x i64> poison, i64 %i.rrp, i64 0
  %i.rrr = bitcast <2 x i64> %i.rrq to <8 x i16>
  %i.rrs = shufflevector <8 x i16> %i.rrr, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 2 uses
  %i.rrt = bitcast <8 x i16> %i.rrs to <4 x float> ; 3 uses
  %i.rru = load i16, ptr %.235128.i.i1568, align 2, !tbaa !558
  %i.rrv = zext i16 %i.rru to i32
  %i.rrw = shl nuw i32 %i.rrv, 16
  %i.rrx = insertelement <4 x i32> poison, i32 %i.rrw, i64 0
  %i.rry = bitcast <4 x i32> %i.rrx to <4 x float>
  %i.rrz = shufflevector <4 x float> %i.rry, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.rsa = fcmp fast oeq <4 x float> %i.rrt, zeroinitializer
  %i.rsb = fcmp fast oeq <4 x float> %i.rrz, zeroinitializer
  %i.rsc = bitcast <4 x float> %i.rrz to <4 x i32>
  %i.rsd = and <4 x i32> %i.rsc, splat (i32 -2147483648)
  %i.rse = fcmp fast olt <4 x float> %i.rrt, zeroinitializer
  %i.rsf = fcmp fast olt <4 x float> %i.rrz, zeroinitializer
  %i.rsg = select <4 x i1> %i.rsf, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.rsh = select <4 x i1> %i.rse, <4 x float> %i.rsg, <4 x float> zeroinitializer
  %i.rsi = fdiv fast <4 x float> %i.rrz, %i.rrt   ; 2 uses
  %i.rsj = bitcast <4 x float> %i.rsi to <4 x i32>
  %i.rsk = and <4 x i32> %i.rsj, splat (i32 -2147483648)
  %i.rsl = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.rsi) ; 3 uses
  %i.rsm = fcmp fast ogt <4 x float> %i.rsl, splat (float 1.000000e+00) ; 2 uses
  %i.rsn = select <4 x i1> %i.rsm, <4 x float> splat (float -1.000000e+00), <4 x float> %i.rsl
  %i.rso = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.rsl, <4 x float> splat (float 1.000000e+00))
  %i.rsp = fdiv fast <4 x float> %i.rsn, %i.rso   ; 3 uses
  %i.rsq = fmul fast <4 x float> %i.rsp, %i.rsp   ; 3 uses
  %i.rsr = fmul fast <4 x float> %i.rsq, %i.rsq   ; 7 uses
  %i.rss = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rsr, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.rst = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rsr, <4 x float> nofpclass(nan inf) %i.rss, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.rsu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rsr, <4 x float> nofpclass(nan inf) %i.rst, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.rsv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rsr, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.rsw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rsr, <4 x float> nofpclass(nan inf) %i.rsv, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.rsx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rsr, <4 x float> nofpclass(nan inf) %i.rsw, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.rsy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rsr, <4 x float> nofpclass(nan inf) %i.rsx, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.rsz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rsq, <4 x float> nofpclass(nan inf) %i.rsu, <4 x float> nofpclass(nan inf) %i.rsy)
  %i.rta = fmul fast <4 x float> %i.rsz, %i.rsp
  %i.rtb = select <4 x i1> %i.rsm, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.rtc = fadd fast <4 x float> %i.rta, %i.rtb
  %i.rtd = bitcast <4 x float> %i.rtc to <4 x i32>
  %i.rte = or <4 x i32> %i.rsk, %i.rtd
  %i.rtf = bitcast <4 x i32> %i.rte to <4 x float>
  %i.rtg = fadd fast <4 x float> %i.rsh, %i.rtf
  %i.rth = bitcast <8 x i16> %i.rrs to <4 x i32>
  %i.rti = and <4 x i32> %i.rth, splat (i32 -2147483648)
  %i.rtj = or disjoint <4 x i32> %i.rti, splat (i32 1078530011)
  %i.rtk = bitcast <4 x i32> %i.rtj to <4 x float>
  %i.rtl = fcmp fast uge <4 x float> %i.rtk, zeroinitializer
  %i.rtm = or disjoint <4 x i32> %i.rsd, splat (i32 1070141403)
  %i.rtn = select <4 x i1> %i.rtl, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.rto = bitcast <4 x float> %i.rtg to <4 x i32>
  %i.rtp = select <4 x i1> %i.rsa, <4 x i32> %i.rtm, <4 x i32> %i.rto
  %i.rtq = select <4 x i1> %i.rsb, <4 x i32> %i.rtn, <4 x i32> %i.rtp
  %i.rtr = bitcast <4 x i32> %i.rtq to <4 x float>
  %i.rts = shufflevector <4 x float> %i.rtr, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.rtt = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.rts)
  %i.rtu = bitcast <8 x bfloat> %i.rtt to <2 x i64>
  %i.rtv = extractelement <2 x i64> %i.rtu, i64 0
  store i64 %i.rtv, ptr %.239127.i.i1569, align 1, !tbaa !555
  %i.rtw = getelementptr inbounds nuw i8, ptr %.2129.i.i1567, i64 8
  %i.rtx = getelementptr inbounds nuw i8, ptr %.235128.i.i1568, i64 2
  %i.rty = getelementptr inbounds nuw i8, ptr %.239127.i.i1569, i64 8
  %i.rtz = add nuw nsw i32 %.0130.i.i1566, 1      ; 2 uses
  %exitcond.not.i78.i.a = icmp eq i32 %i.rtz, %.sroa.speculated104.i1515
  br i1 %exitcond.not.i78.i.a, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i77.i1565, !llvm.loop !359

bb.mb:                                            ; preds = %bb.lz
  %i.rua = icmp eq i32 %4, 1
  br i1 %i.rua, label %bb.mc, label %bb.mg

bb.mc:                                            ; preds = %bb.mb
  %.val.i1532 = load i16, ptr %1, align 2, !tbaa !558
  %i.rub = zext i16 %.val.i1532 to i32
  %i.ruc = shl nuw i32 %i.rub, 16
  %i.rud = bitcast i32 %i.ruc to float            ; 17 uses
  %i.rue = insertelement <16 x float> poison, float %i.rud, i64 0
  %i.ruf = shufflevector <16 x float> %i.rue, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.rug = icmp sgt i32 %i.qgh, 15
  br i1 %i.rug, label %.lr.ph.i90.i1559, label %._crit_edge.i.i1533

.lr.ph.i90.i1559:                                 ; preds = %bb.mc
  %i.ruh = fcmp fast one <16 x float> %i.ruf, zeroinitializer
  %i.rui = fcmp fast olt <16 x float> %i.ruf, zeroinitializer
  %i.ruj = select fast <16 x i1> %i.rui, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.ruk = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.ruf)
  br label %bb.md

bb.md:                                            ; preds = %bb.md, %.lr.ph.i90.i1559
  %.087.i.i1560 = phi ptr [ %0, %.lr.ph.i90.i1559 ], [ %i.rvv, %bb.md ] ; 2 uses
  %.03086.i.i1561 = phi ptr [ %2, %.lr.ph.i90.i1559 ], [ %i.rvw, %bb.md ] ; 2 uses
  %.03485.i.i1562 = phi i32 [ 0, %.lr.ph.i90.i1559 ], [ %i.rvx, %bb.md ]
  %i.rul = load <16 x bfloat>, ptr %.087.i.i1560, align 1, !tbaa !555 ; 4 uses
  %i.rum = fpext fast <16 x bfloat> %i.rul to <16 x float>
  %i.run = fcmp fast one <16 x bfloat> %i.rul, zeroinitializer
  %i.ruo = fcmp fast olt <16 x bfloat> %i.rul, zeroinitializer
  %i.rup = select fast <16 x i1> %i.ruo, <16 x float> %i.ruj, <16 x float> zeroinitializer
  %i.ruq = fdiv fast <16 x float> %i.ruf, %i.rum  ; 2 uses
  %i.rur = bitcast <16 x float> %i.ruq to <16 x i32>
  %i.rus = and <16 x i32> %i.rur, splat (i32 -2147483648)
  %i.rut = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.ruq) ; 3 uses
  %i.ruu = fcmp fast ogt <16 x float> %i.rut, splat (float 1.000000e+00) ; 2 uses
  %i.ruv = select fast <16 x i1> %i.ruu, <16 x float> splat (float -1.000000e+00), <16 x float> %i.rut
  %i.ruw = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.rut, <16 x float> splat (float 1.000000e+00))
  %i.rux = fdiv fast <16 x float> %i.ruv, %i.ruw  ; 3 uses
  %i.ruy = fmul fast <16 x float> %i.rux, %i.rux  ; 3 uses
  %i.ruz = fmul fast <16 x float> %i.ruy, %i.ruy  ; 7 uses
  %i.rva = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ruz, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.rvb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ruz, <16 x float> nofpclass(nan inf) %i.rva, <16 x float> splat (float f0xBE117200))
  %i.rvc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ruz, <16 x float> nofpclass(nan inf) %i.rvb, <16 x float> splat (float f0xBEAAAA53))
  %i.rvd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ruz, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.rve = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ruz, <16 x float> nofpclass(nan inf) %i.rvd, <16 x float> splat (float f0x3DD9ED24))
  %i.rvf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ruz, <16 x float> nofpclass(nan inf) %i.rve, <16 x float> splat (float f0x3E4CB974))
  %i.rvg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ruz, <16 x float> nofpclass(nan inf) %i.rvf, <16 x float> splat (float 1.000000e+00))
  %i.rvh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ruy, <16 x float> nofpclass(nan inf) %i.rvc, <16 x float> nofpclass(nan inf) %i.rvg)
  %i.rvi = fmul fast <16 x float> %i.rvh, %i.rux
  %i.rvj = select fast <16 x i1> %i.ruu, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.rvk = fadd fast <16 x float> %i.rvi, %i.rvj
  %i.rvl = bitcast <16 x float> %i.rvk to <16 x i32>
  %i.rvm = or <16 x i32> %i.rus, %i.rvl
  %i.rvn = bitcast <16 x i32> %i.rvm to <16 x float>
  %i.rvo = fadd fast <16 x float> %i.rup, %i.rvn
  %i.rvp = bitcast <16 x bfloat> %i.rul to <16 x i16>
  %i.rvq = icmp slt <16 x i16> %i.rvp, zeroinitializer
  %i.rvr = select fast <16 x i1> %i.rvq, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.rvs = select <16 x i1> %i.run, <16 x float> %i.rvo, <16 x float> %i.ruk
  %i.rvt = select <16 x i1> %i.ruh, <16 x float> %i.rvs, <16 x float> %i.rvr
  %i.rvu = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rvt)
  store <16 x bfloat> %i.rvu, ptr %.03086.i.i1561, align 1, !tbaa !555
  %i.rvv = getelementptr inbounds nuw i8, ptr %.087.i.i1560, i64 32 ; 2 uses
  %i.rvw = getelementptr inbounds nuw i8, ptr %.03086.i.i1561, i64 32 ; 2 uses
  %i.rvx = add nuw nsw i32 %.03485.i.i1562, 16    ; 2 uses
  %i.rvy = or disjoint i32 %i.rvx, 15
  %i.rvz = icmp slt i32 %i.rvy, %i.qgh
  br i1 %i.rvz, label %bb.md, label %._crit_edge.loopexit.i.i1563, !llvm.loop !360

._crit_edge.loopexit.i.i1563:                     ; preds = %bb.md
  %i.rwa = and i32 %i.qgh, 2147483632
  br label %._crit_edge.i.i1533

._crit_edge.i.i1533:                              ; preds = %._crit_edge.loopexit.i.i1563, %bb.mc
  %.034.lcssa.i81.i1534 = phi i32 [ 0, %bb.mc ], [ %i.rwa, %._crit_edge.loopexit.i.i1563 ] ; 3 uses
  %.030.lcssa.i.i1535 = phi ptr [ %2, %bb.mc ], [ %i.rvw, %._crit_edge.loopexit.i.i1563 ] ; 2 uses
  %.0.lcssa.i82.i1536 = phi ptr [ %0, %bb.mc ], [ %i.rvv, %._crit_edge.loopexit.i.i1563 ] ; 2 uses
  %i.rwb = insertelement <8 x float> poison, float %i.rud, i64 0
  %i.rwc = shufflevector <8 x float> %i.rwb, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.rwd = or disjoint i32 %.034.lcssa.i81.i1534, 7
  %i.rwe = icmp slt i32 %i.rwd, %i.qgh
  br i1 %i.rwe, label %.lr.ph94.i.i1554, label %._crit_edge95.i.i1537

.lr.ph94.i.i1554:                                 ; preds = %._crit_edge.i.i1533
  %i.rwf = fcmp fast ueq <8 x float> %i.rwc, zeroinitializer
  %i.rwg = bitcast <8 x float> %i.rwc to <8 x i32>
  %i.rwh = and <8 x i32> %i.rwg, splat (i32 -2147483648)
  %i.rwi = fcmp fast olt <8 x float> %i.rwc, zeroinitializer
  %i.rwj = select <8 x i1> %i.rwi, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.rwk = or disjoint <8 x i32> %i.rwh, splat (i32 1070141403)
  br label %bb.me

bb.me:                                            ; preds = %bb.me, %.lr.ph94.i.i1554
  %.192.i.i1555 = phi ptr [ %.0.lcssa.i82.i1536, %.lr.ph94.i.i1554 ], [ %i.rxw, %bb.me ] ; 2 uses
  %.13191.i.i1556 = phi ptr [ %.030.lcssa.i.i1535, %.lr.ph94.i.i1554 ], [ %i.rxx, %bb.me ] ; 2 uses
  %.13590.i.i1557 = phi i32 [ %.034.lcssa.i81.i1534, %.lr.ph94.i.i1554 ], [ %i.rxy, %bb.me ]
  %i.rwl = load <8 x bfloat>, ptr %.192.i.i1555, align 1, !tbaa !555 ; 4 uses
  %i.rwm = fpext fast <8 x bfloat> %i.rwl to <8 x float>
  %i.rwn = fcmp fast ueq <8 x bfloat> %i.rwl, zeroinitializer
  %i.rwo = fcmp fast olt <8 x bfloat> %i.rwl, zeroinitializer
  %i.rwp = select <8 x i1> %i.rwo, <8 x float> %i.rwj, <8 x float> zeroinitializer
  %i.rwq = fdiv fast <8 x float> %i.rwc, %i.rwm   ; 2 uses
  %i.rwr = bitcast <8 x float> %i.rwq to <8 x i32>
  %i.rws = and <8 x i32> %i.rwr, splat (i32 -2147483648)
  %i.rwt = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.rwq) ; 3 uses
  %i.rwu = fcmp fast ogt <8 x float> %i.rwt, splat (float 1.000000e+00) ; 2 uses
  %i.rwv = select <8 x i1> %i.rwu, <8 x float> splat (float -1.000000e+00), <8 x float> %i.rwt
  %i.rww = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.rwt, <8 x float> splat (float 1.000000e+00))
  %i.rwx = fdiv fast <8 x float> %i.rwv, %i.rww   ; 3 uses
  %i.rwy = fmul fast <8 x float> %i.rwx, %i.rwx   ; 3 uses
  %i.rwz = fmul fast <8 x float> %i.rwy, %i.rwy   ; 7 uses
  %i.rxa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rwz, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.rxb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rwz, <8 x float> nofpclass(nan inf) %i.rxa, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.rxc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rwz, <8 x float> nofpclass(nan inf) %i.rxb, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.rxd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rwz, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.rxe = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rwz, <8 x float> nofpclass(nan inf) %i.rxd, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.rxf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rwz, <8 x float> nofpclass(nan inf) %i.rxe, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.rxg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rwz, <8 x float> nofpclass(nan inf) %i.rxf, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.rxh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rwy, <8 x float> nofpclass(nan inf) %i.rxc, <8 x float> nofpclass(nan inf) %i.rxg)
  %i.rxi = fmul fast <8 x float> %i.rxh, %i.rwx
  %i.rxj = select <8 x i1> %i.rwu, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.rxk = fadd fast <8 x float> %i.rxi, %i.rxj
  %i.rxl = bitcast <8 x float> %i.rxk to <8 x i32>
  %i.rxm = or <8 x i32> %i.rws, %i.rxl
  %i.rxn = bitcast <8 x i32> %i.rxm to <8 x float>
  %i.rxo = fadd fast <8 x float> %i.rwp, %i.rxn
  %i.rxp = bitcast <8 x bfloat> %i.rwl to <8 x i16>
  %isneg.i89.i = icmp sgt <8 x i16> %i.rxp, splat (i16 -1)
  %i.rxq = select <8 x i1> %isneg.i89.i, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.rxr = bitcast <8 x float> %i.rxo to <8 x i32>
  %i.rxs = select <8 x i1> %i.rwn, <8 x i32> %i.rwk, <8 x i32> %i.rxr
  %i.rxt = select <8 x i1> %i.rwf, <8 x i32> %i.rxq, <8 x i32> %i.rxs
  %i.rxu = bitcast <8 x i32> %i.rxt to <8 x float>
  %i.rxv = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.rxu)
  store <8 x bfloat> %i.rxv, ptr %.13191.i.i1556, align 1, !tbaa !555
  %i.rxw = getelementptr inbounds nuw i8, ptr %.192.i.i1555, i64 16 ; 2 uses
  %i.rxx = getelementptr inbounds nuw i8, ptr %.13191.i.i1556, i64 16 ; 2 uses
  %i.rxy = add nuw nsw i32 %.13590.i.i1557, 8     ; 3 uses
  %i.rxz = or disjoint i32 %i.rxy, 7
  %i.rya = icmp slt i32 %i.rxz, %i.qgh
  br i1 %i.rya, label %bb.me, label %._crit_edge95.i.i1537, !llvm.loop !361

._crit_edge95.i.i1537:                            ; preds = %bb.me, %._crit_edge.i.i1533
  %.135.lcssa.i83.i1538 = phi i32 [ %.034.lcssa.i81.i1534, %._crit_edge.i.i1533 ], [ %i.rxy, %bb.me ] ; 3 uses
  %.131.lcssa.i.i1539 = phi ptr [ %.030.lcssa.i.i1535, %._crit_edge.i.i1533 ], [ %i.rxx, %bb.me ] ; 2 uses
  %.1.lcssa.i84.i1540 = phi ptr [ %.0.lcssa.i82.i1536, %._crit_edge.i.i1533 ], [ %i.rxw, %bb.me ] ; 2 uses
  %i.ryb = insertelement <4 x float> poison, float %i.rud, i64 0
  %i.ryc = shufflevector <4 x float> %i.ryb, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ryd = or disjoint i32 %.135.lcssa.i83.i1538, 3
  %i.rye = icmp slt i32 %i.ryd, %i.qgh
  br i1 %i.rye, label %.lr.ph103.i.i1550, label %.preheader.i85.i1541

.lr.ph103.i.i1550:                                ; preds = %._crit_edge95.i.i1537
  %i.ryf = fcmp fast oeq <4 x float> %i.ryc, zeroinitializer
  %i.ryg = bitcast <4 x float> %i.ryc to <4 x i32>
  %i.ryh = and <4 x i32> %i.ryg, splat (i32 -2147483648)
  %i.ryi = fcmp fast olt <4 x float> %i.ryc, zeroinitializer
  %i.ryj = select <4 x i1> %i.ryi, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.ryk = or disjoint <4 x i32> %i.ryh, splat (i32 1070141403)
  br label %bb.mf

.preheader.i85.i1541:                             ; preds = %bb.mf, %._crit_edge95.i.i1537
  %.236.lcssa.i86.i1542 = phi i32 [ %.135.lcssa.i83.i1538, %._crit_edge95.i.i1537 ], [ %i.sdy, %bb.mf ] ; 5 uses
  %.232.lcssa.i.i1543 = phi ptr [ %.131.lcssa.i.i1539, %._crit_edge95.i.i1537 ], [ %i.sdx, %bb.mf ] ; 6 uses
  %.2.lcssa.i87.i1544 = phi ptr [ %.1.lcssa.i84.i1540, %._crit_edge95.i.i1537 ], [ %i.sdw, %bb.mf ] ; 6 uses
  %i.ryl = icmp slt i32 %.236.lcssa.i86.i1542, %i.qgh
  br i1 %i.ryl, label %iter.check7051, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7051:                                   ; preds = %.preheader.i85.i1541
  %.232.lcssa.i.i15437035 = ptrtoaddr ptr %.232.lcssa.i.i1543 to i64
  %.2.lcssa.i87.i15447034 = ptrtoaddr ptr %.2.lcssa.i87.i1544 to i64
  %i.rym = xor i32 %.236.lcssa.i86.i1542, -1
  %i.ryn = add i32 %i.qgh, %i.rym                 ; 3 uses
  %i.ryo = zext i32 %i.ryn to i64
  %i.ryp = add nuw nsw i64 %i.ryo, 1              ; 5 uses
  %min.iters.check7036 = icmp ult i32 %i.ryn, 7
  %i.ryq = sub i64 %.2.lcssa.i87.i15447034, %.232.lcssa.i.i15437035
  %diff.check7038 = icmp ugt i64 %i.ryq, -64
  %or.cond9224.a = select i1 %min.iters.check7036, i1 true, i1 %diff.check7038
  br i1 %or.cond9224.a, label %.lr.ph110.i.i1545.preheader, label %vector.main.loop.iter.check7039

vector.main.loop.iter.check7039:                  ; preds = %iter.check7051
  %min.iters.check7040 = icmp ult i32 %i.ryn, 31
  br i1 %min.iters.check7040, label %vec.epilog.ph7055, label %vector.ph7041

vector.ph7041:                                    ; preds = %vector.main.loop.iter.check7039
  %i.ryr = and i64 %i.ryp, 24
  %n.vec7042 = and i64 %i.ryp, 8589934560         ; 5 uses
  %i.rys = shl nuw nsw i64 %n.vec7042, 1          ; 2 uses
  %i.ryt = getelementptr i8, ptr %.2.lcssa.i87.i1544, i64 %i.rys
  %i.ryu = getelementptr i8, ptr %.232.lcssa.i.i1543, i64 %i.rys
  %i.ryv = trunc i64 %n.vec7042 to i32
  %i.ryw = add i32 %.236.lcssa.i86.i1542, %i.ryv
  %i.ryx = insertelement <16 x float> poison, float %i.rud, i64 0
  %i.ryy = shufflevector <16 x float> %i.ryx, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ryz = insertelement <8 x float> poison, float %i.rud, i64 0
  %i.rza = shufflevector <8 x float> %i.ryz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rzb = insertelement <4 x float> poison, float %i.rud, i64 0
  %i.rzc = shufflevector <4 x float> %i.rzb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rzd = insertelement <2 x float> poison, float %i.rud, i64 0
  %i.rze = shufflevector <2 x float> %i.rzd, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7043

vector.body7043:                                  ; preds = %vector.ph7041, %vector.body7043
  %index7044 = phi i64 [ 0, %vector.ph7041 ], [ %index.next7048, %vector.body7043 ] ; 2 uses
  %i.rzf = shl i64 %index7044, 1                  ; 2 uses
  %next.gep7045 = getelementptr i8, ptr %.2.lcssa.i87.i1544, i64 %i.rzf
  %next.gep7046 = getelementptr i8, ptr %.232.lcssa.i.i1543, i64 %i.rzf
  %wide.load7047 = load <32 x i16>, ptr %next.gep7045, align 2, !tbaa !558
  %i.rzg = zext <32 x i16> %wide.load7047 to <32 x i32>
  %i.rzh = shl nuw <32 x i32> %i.rzg, splat (i32 16)
  %i.rzi = bitcast <32 x i32> %i.rzh to <32 x float> ; 6 uses
  %i.rzj = extractelement <32 x float> %i.rzi, i64 0
  %i.rzk = tail call fast float @llvm.atan2.f32(float %i.rud, float %i.rzj)
  %i.rzl = shufflevector <32 x float> %i.rzi, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.rzm = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.ryy, <16 x float> %i.rzl)
  %i.rzn = shufflevector <32 x float> %i.rzi, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.rzo = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.rza, <8 x float> %i.rzn)
  %i.rzp = shufflevector <32 x float> %i.rzi, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.rzq = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.rzc, <4 x float> %i.rzp)
  %i.rzr = extractelement <32 x float> %i.rzi, i64 29
  %i.rzs = tail call fast float @llvm.atan2.f32(float %i.rud, float %i.rzr)
  %i.rzt = shufflevector <32 x float> %i.rzi, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.rzu = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.rze, <2 x float> %i.rzt)
  %i.rzv = insertelement <32 x float> poison, float %i.rzk, i64 0
  %i.rzw = shufflevector <16 x float> %i.rzm, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rzx = shufflevector <32 x float> %i.rzv, <32 x float> %i.rzw, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rzy = shufflevector <8 x float> %i.rzo, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rzz = shufflevector <32 x float> %i.rzx, <32 x float> %i.rzy, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.saa = shufflevector <4 x float> %i.rzq, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sab = shufflevector <32 x float> %i.rzz, <32 x float> %i.saa, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.sac = insertelement <32 x float> %i.sab, float %i.rzs, i64 29
  %i.sad = shufflevector <2 x float> %i.rzu, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sae = shufflevector <32 x float> %i.sac, <32 x float> %i.sad, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.saf = bitcast <32 x float> %i.sae to <32 x i32>
  %i.sag = lshr <32 x i32> %i.saf, splat (i32 16)
  %i.sah = trunc nuw <32 x i32> %i.sag to <32 x i16>
  store <32 x i16> %i.sah, ptr %next.gep7046, align 2, !tbaa !558
  %index.next7048 = add nuw i64 %index7044, 32    ; 2 uses
  %i.sai = icmp eq i64 %index.next7048, %n.vec7042
  br i1 %i.sai, label %middle.block7049, label %vector.body7043, !llvm.loop !362

middle.block7049:                                 ; preds = %vector.body7043
  %cmp.n7050 = icmp eq i64 %i.ryp, %n.vec7042
  br i1 %cmp.n7050, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7052

vec.epilog.iter.check7052:                        ; preds = %middle.block7049
  %min.epilog.iters.check7054 = icmp eq i64 %i.ryr, 0
  br i1 %min.epilog.iters.check7054, label %.lr.ph110.i.i1545.preheader, label %vec.epilog.ph7055, !prof !561

vec.epilog.ph7055:                                ; preds = %vector.main.loop.iter.check7039, %vec.epilog.iter.check7052
  %vec.epilog.resume.val7056 = phi i64 [ %n.vec7042, %vec.epilog.iter.check7052 ], [ 0, %vector.main.loop.iter.check7039 ]
  %n.vec7057 = and i64 %i.ryp, 8589934584         ; 4 uses
  %i.saj = shl nuw nsw i64 %n.vec7057, 1          ; 2 uses
  %i.sak = getelementptr i8, ptr %.2.lcssa.i87.i1544, i64 %i.saj
  %i.sal = getelementptr i8, ptr %.232.lcssa.i.i1543, i64 %i.saj
  %i.sam = trunc i64 %n.vec7057 to i32
  %i.san = add i32 %.236.lcssa.i86.i1542, %i.sam
  %i.sao = insertelement <4 x float> poison, float %i.rud, i64 0
  %i.sap = shufflevector <4 x float> %i.sao, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7058

vec.epilog.vector.body7058:                       ; preds = %vec.epilog.vector.body7058, %vec.epilog.ph7055
  %index7059 = phi i64 [ %vec.epilog.resume.val7056, %vec.epilog.ph7055 ], [ %index.next7063, %vec.epilog.vector.body7058 ] ; 2 uses
  %i.saq = shl i64 %index7059, 1                  ; 2 uses
  %next.gep7060 = getelementptr i8, ptr %.2.lcssa.i87.i1544, i64 %i.saq
  %next.gep7061 = getelementptr i8, ptr %.232.lcssa.i.i1543, i64 %i.saq
  %wide.load7062 = load <8 x i16>, ptr %next.gep7060, align 2, !tbaa !558
  %i.sar = zext <8 x i16> %wide.load7062 to <8 x i32>
  %i.sas = shl nuw <8 x i32> %i.sar, splat (i32 16)
  %i.sat = bitcast <8 x i32> %i.sas to <8 x float> ; 5 uses
  %i.sau = extractelement <8 x float> %i.sat, i64 0
  %i.sav = tail call fast float @llvm.atan2.f32(float %i.rud, float %i.sau)
  %i.saw = extractelement <8 x float> %i.sat, i64 1
  %i.sax = tail call fast float @llvm.atan2.f32(float %i.rud, float %i.saw)
  %i.say = extractelement <8 x float> %i.sat, i64 2
  %i.saz = tail call fast float @llvm.atan2.f32(float %i.rud, float %i.say)
  %i.sba = shufflevector <8 x float> %i.sat, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.sbb = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.sap, <4 x float> %i.sba)
  %i.sbc = extractelement <8 x float> %i.sat, i64 7
  %i.sbd = tail call fast float @llvm.atan2.f32(float %i.rud, float %i.sbc)
  %i.sbe = insertelement <8 x float> poison, float %i.sav, i64 0
  %i.sbf = insertelement <8 x float> %i.sbe, float %i.sax, i64 1
  %i.sbg = insertelement <8 x float> %i.sbf, float %i.saz, i64 2
  %i.sbh = shufflevector <4 x float> %i.sbb, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sbi = shufflevector <8 x float> %i.sbg, <8 x float> %i.sbh, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.sbj = insertelement <8 x float> %i.sbi, float %i.sbd, i64 7
  %i.sbk = bitcast <8 x float> %i.sbj to <8 x i32>
  %i.sbl = lshr <8 x i32> %i.sbk, splat (i32 16)
  %i.sbm = trunc nuw <8 x i32> %i.sbl to <8 x i16>
  store <8 x i16> %i.sbm, ptr %next.gep7061, align 2, !tbaa !558
  %index.next7063 = add nuw i64 %index7059, 8     ; 2 uses
  %i.sbn = icmp eq i64 %index.next7063, %n.vec7057
  br i1 %i.sbn, label %vec.epilog.middle.block7064, label %vec.epilog.vector.body7058, !llvm.loop !363

vec.epilog.middle.block7064:                      ; preds = %vec.epilog.vector.body7058
  %cmp.n7065 = icmp eq i64 %i.ryp, %n.vec7057
  br i1 %cmp.n7065, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph110.i.i1545.preheader

.lr.ph110.i.i1545.preheader:                      ; preds = %iter.check7051, %vec.epilog.iter.check7052, %vec.epilog.middle.block7064
  %.3109.i.i1546.ph = phi ptr [ %.2.lcssa.i87.i1544, %iter.check7051 ], [ %i.ryt, %vec.epilog.iter.check7052 ], [ %i.sak, %vec.epilog.middle.block7064 ] ; 3 uses
  %.333108.i.i1547.ph = phi ptr [ %.232.lcssa.i.i1543, %iter.check7051 ], [ %i.ryu, %vec.epilog.iter.check7052 ], [ %i.sal, %vec.epilog.middle.block7064 ] ; 3 uses
  %.337107.i.i1548.ph = phi i32 [ %.236.lcssa.i86.i1542, %iter.check7051 ], [ %i.ryw, %vec.epilog.iter.check7052 ], [ %i.san, %vec.epilog.middle.block7064 ] ; 4 uses
  %i.sbo = sub i32 %i.qgh, %.337107.i.i1548.ph
  %.neg11069 = add i32 %.337107.i.i1548.ph, 1
  %xtraiter10467 = and i32 %i.sbo, 1
  %lcmp.mod10468.not = icmp eq i32 %xtraiter10467, 0
  br i1 %lcmp.mod10468.not, label %.lr.ph110.i.i1545.prol.loopexit, label %.lr.ph110.i.i1545.prol

.lr.ph110.i.i1545.prol:                           ; preds = %.lr.ph110.i.i1545.preheader
  %i.sbp = getelementptr inbounds nuw i8, ptr %.3109.i.i1546.ph, i64 2
  %i.sbq = load i16, ptr %.3109.i.i1546.ph, align 2, !tbaa !558
  %i.sbr = zext i16 %i.sbq to i32
  %i.sbs = shl nuw i32 %i.sbr, 16
  %i.sbt = bitcast i32 %i.sbs to float
  %i.sbu = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rud, float %i.sbt)
  %i.sbv = bitcast float %i.sbu to i32
  %i.sbw = lshr i32 %i.sbv, 16
  %i.sbx = trunc nuw i32 %i.sbw to i16
  %i.sby = getelementptr inbounds nuw i8, ptr %.333108.i.i1547.ph, i64 2
  store i16 %i.sbx, ptr %.333108.i.i1547.ph, align 2, !tbaa !558
  %i.sbz = add nuw nsw i32 %.337107.i.i1548.ph, 1
  br label %.lr.ph110.i.i1545.prol.loopexit

.lr.ph110.i.i1545.prol.loopexit:                  ; preds = %.lr.ph110.i.i1545.prol, %.lr.ph110.i.i1545.preheader
  %.3109.i.i1546.unr = phi ptr [ %.3109.i.i1546.ph, %.lr.ph110.i.i1545.preheader ], [ %i.sbp, %.lr.ph110.i.i1545.prol ]
  %.333108.i.i1547.unr = phi ptr [ %.333108.i.i1547.ph, %.lr.ph110.i.i1545.preheader ], [ %i.sby, %.lr.ph110.i.i1545.prol ]
  %.337107.i.i1548.unr = phi i32 [ %.337107.i.i1548.ph, %.lr.ph110.i.i1545.preheader ], [ %i.sbz, %.lr.ph110.i.i1545.prol ]
  %i.sca = icmp eq i32 %i.qgh, %.neg11069
  br i1 %i.sca, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph110.i.i1545

bb.mf:                                            ; preds = %bb.mf, %.lr.ph103.i.i1550
  %.2101.i.i1551 = phi ptr [ %.1.lcssa.i84.i1540, %.lr.ph103.i.i1550 ], [ %i.sdw, %bb.mf ] ; 2 uses
  %.232100.i.i1552 = phi ptr [ %.131.lcssa.i.i1539, %.lr.ph103.i.i1550 ], [ %i.sdx, %bb.mf ] ; 2 uses
  %.23699.i.i1553 = phi i32 [ %.135.lcssa.i83.i1538, %.lr.ph103.i.i1550 ], [ %i.sdy, %bb.mf ]
  %i.scb = load i64, ptr %.2101.i.i1551, align 1, !tbaa !555
  %i.scc = insertelement <2 x i64> poison, i64 %i.scb, i64 0
  %i.scd = bitcast <2 x i64> %i.scc to <8 x i16>
  %i.sce = shufflevector <8 x i16> %i.scd, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 2 uses
  %i.scf = bitcast <8 x i16> %i.sce to <4 x float> ; 3 uses
  %i.scg = fcmp fast oeq <4 x float> %i.scf, zeroinitializer
  %i.sch = fcmp fast olt <4 x float> %i.scf, zeroinitializer
  %i.sci = select <4 x i1> %i.sch, <4 x float> %i.ryj, <4 x float> zeroinitializer
  %i.scj = fdiv fast <4 x float> %i.ryc, %i.scf   ; 2 uses
  %i.sck = bitcast <4 x float> %i.scj to <4 x i32>
  %i.scl = and <4 x i32> %i.sck, splat (i32 -2147483648)
  %i.scm = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.scj) ; 3 uses
  %i.scn = fcmp fast ogt <4 x float> %i.scm, splat (float 1.000000e+00) ; 2 uses
  %i.sco = select <4 x i1> %i.scn, <4 x float> splat (float -1.000000e+00), <4 x float> %i.scm
  %i.scp = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.scm, <4 x float> splat (float 1.000000e+00))
  %i.scq = fdiv fast <4 x float> %i.sco, %i.scp   ; 3 uses
  %i.scr = fmul fast <4 x float> %i.scq, %i.scq   ; 3 uses
  %i.scs = fmul fast <4 x float> %i.scr, %i.scr   ; 7 uses
  %i.sct = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.scs, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.scu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.scs, <4 x float> nofpclass(nan inf) %i.sct, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.scv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.scs, <4 x float> nofpclass(nan inf) %i.scu, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.scw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.scs, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.scx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.scs, <4 x float> nofpclass(nan inf) %i.scw, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.scy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.scs, <4 x float> nofpclass(nan inf) %i.scx, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.scz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.scs, <4 x float> nofpclass(nan inf) %i.scy, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.sda = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.scr, <4 x float> nofpclass(nan inf) %i.scv, <4 x float> nofpclass(nan inf) %i.scz)
  %i.sdb = fmul fast <4 x float> %i.sda, %i.scq
  %i.sdc = select <4 x i1> %i.scn, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.sdd = fadd fast <4 x float> %i.sdb, %i.sdc
  %i.sde = bitcast <4 x float> %i.sdd to <4 x i32>
  %i.sdf = or <4 x i32> %i.scl, %i.sde
  %i.sdg = bitcast <4 x i32> %i.sdf to <4 x float>
  %i.sdh = fadd fast <4 x float> %i.sci, %i.sdg
  %i.sdi = bitcast <8 x i16> %i.sce to <4 x i32>
  %i.sdj = and <4 x i32> %i.sdi, splat (i32 -2147483648)
  %i.sdk = or disjoint <4 x i32> %i.sdj, splat (i32 1078530011)
  %i.sdl = bitcast <4 x i32> %i.sdk to <4 x float>
  %i.sdm = fcmp fast uge <4 x float> %i.sdl, zeroinitializer
  %i.sdn = select <4 x i1> %i.sdm, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.sdo = bitcast <4 x float> %i.sdh to <4 x i32>
  %i.sdp = select <4 x i1> %i.scg, <4 x i32> %i.ryk, <4 x i32> %i.sdo
  %i.sdq = select <4 x i1> %i.ryf, <4 x i32> %i.sdn, <4 x i32> %i.sdp
  %i.sdr = bitcast <4 x i32> %i.sdq to <4 x float>
  %i.sds = shufflevector <4 x float> %i.sdr, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.sdt = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.sds)
  %i.sdu = bitcast <8 x bfloat> %i.sdt to <2 x i64>
  %i.sdv = extractelement <2 x i64> %i.sdu, i64 0
  store i64 %i.sdv, ptr %.232100.i.i1552, align 1, !tbaa !555
  %i.sdw = getelementptr inbounds nuw i8, ptr %.2101.i.i1551, i64 8 ; 2 uses
  %i.sdx = getelementptr inbounds nuw i8, ptr %.232100.i.i1552, i64 8 ; 2 uses
  %i.sdy = add nuw nsw i32 %.23699.i.i1553, 4     ; 3 uses
  %i.sdz = or disjoint i32 %i.sdy, 3
  %i.sea = icmp slt i32 %i.sdz, %i.qgh
  br i1 %i.sea, label %bb.mf, label %.preheader.i85.i1541, !llvm.loop !364

.lr.ph110.i.i1545:                                ; preds = %.lr.ph110.i.i1545.prol.loopexit, %.lr.ph110.i.i1545
  %.3109.i.i1546 = phi ptr [ %i.sel, %.lr.ph110.i.i1545 ], [ %.3109.i.i1546.unr, %.lr.ph110.i.i1545.prol.loopexit ] ; 3 uses
  %.333108.i.i1547 = phi ptr [ %i.seu, %.lr.ph110.i.i1545 ], [ %.333108.i.i1547.unr, %.lr.ph110.i.i1545.prol.loopexit ] ; 3 uses
  %.337107.i.i1548 = phi i32 [ %i.sev, %.lr.ph110.i.i1545 ], [ %.337107.i.i1548.unr, %.lr.ph110.i.i1545.prol.loopexit ]
  %i.seb = getelementptr inbounds nuw i8, ptr %.3109.i.i1546, i64 2
  %i.sec = load i16, ptr %.3109.i.i1546, align 2, !tbaa !558
  %i.sed = zext i16 %i.sec to i32
  %i.see = shl nuw i32 %i.sed, 16
  %i.sef = bitcast i32 %i.see to float
  %i.seg = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rud, float %i.sef)
  %i.seh = bitcast float %i.seg to i32
  %i.sei = lshr i32 %i.seh, 16
  %i.sej = trunc nuw i32 %i.sei to i16
  %i.sek = getelementptr inbounds nuw i8, ptr %.333108.i.i1547, i64 2
  store i16 %i.sej, ptr %.333108.i.i1547, align 2, !tbaa !558
  %i.sel = getelementptr inbounds nuw i8, ptr %.3109.i.i1546, i64 4
  %i.sem = load i16, ptr %i.seb, align 2, !tbaa !558
  %i.sen = zext i16 %i.sem to i32
  %i.seo = shl nuw i32 %i.sen, 16
  %i.sep = bitcast i32 %i.seo to float
  %i.seq = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rud, float %i.sep)
  %i.ser = bitcast float %i.seq to i32
  %i.ses = lshr i32 %i.ser, 16
  %i.set = trunc nuw i32 %i.ses to i16
  %i.seu = getelementptr inbounds nuw i8, ptr %.333108.i.i1547, i64 4
  store i16 %i.set, ptr %i.sek, align 2, !tbaa !558
  %i.sev = add nuw nsw i32 %.337107.i.i1548, 2    ; 2 uses
  %exitcond.not.i88.i1549.1 = icmp eq i32 %i.sev, %i.qgh
  br i1 %exitcond.not.i88.i1549.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph110.i.i1545, !llvm.loop !365

bb.mg:                                            ; preds = %bb.mb
  %i.sew = icmp eq i32 %3, 1
  br i1 %i.sew, label %bb.mh, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.mh:                                            ; preds = %bb.mg
  switch i32 %.sroa.speculated.i1516, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 16, label %.lr.ph129.i.i1527
    i32 8, label %.lr.ph125.i.i1521
    i32 4, label %.lr.ph.i91.i1517
  ]

.lr.ph129.i.i1527:                                ; preds = %bb.mh
  %i.sex = load <16 x bfloat>, ptr %0, align 1, !tbaa !555 ; 4 uses
  %i.sey = fpext fast <16 x bfloat> %i.sex to <16 x float>
  %i.sez = fcmp fast one <16 x bfloat> %i.sex, zeroinitializer
  %i.sfa = fcmp fast olt <16 x bfloat> %i.sex, zeroinitializer
  %i.sfb = bitcast <16 x bfloat> %i.sex to <16 x i16>
  %i.sfc = icmp slt <16 x i16> %i.sfb, zeroinitializer
  %i.sfd = select fast <16 x i1> %i.sfc, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.sfe = fdiv fast <16 x float> splat (float 1.000000e+00), %i.sey
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mi, %.lr.ph129.i.i1527
  %.028128.i.i1528 = phi ptr [ %1, %.lr.ph129.i.i1527 ], [ %i.sgs, %bb.mi ] ; 2 uses
  %.030127.i.i1529 = phi ptr [ %2, %.lr.ph129.i.i1527 ], [ %i.sgt, %bb.mi ] ; 2 uses
  %.033126.i.i1530 = phi i32 [ 0, %.lr.ph129.i.i1527 ], [ %i.sgu, %bb.mi ]
  %i.sff = load i16, ptr %.028128.i.i1528, align 2, !tbaa !558
  %i.sfg = zext i16 %i.sff to i32
  %i.sfh = shl nuw i32 %i.sfg, 16
  %i.sfi = insertelement <16 x i32> poison, i32 %i.sfh, i64 0
  %i.sfj = bitcast <16 x i32> %i.sfi to <16 x float>
  %i.sfk = shufflevector <16 x float> %i.sfj, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.sfl = fcmp fast one <16 x float> %i.sfk, zeroinitializer
  %i.sfm = fcmp fast olt <16 x float> %i.sfk, zeroinitializer
  %i.sfn = select fast <16 x i1> %i.sfm, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.sfo = select fast <16 x i1> %i.sfa, <16 x float> %i.sfn, <16 x float> zeroinitializer
  %i.sfp = fmul fast <16 x float> %i.sfk, %i.sfe  ; 2 uses
  %i.sfq = bitcast <16 x float> %i.sfp to <16 x i32>
  %i.sfr = and <16 x i32> %i.sfq, splat (i32 -2147483648)
  %i.sfs = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.sfp) ; 3 uses
  %i.sft = fcmp fast ogt <16 x float> %i.sfs, splat (float 1.000000e+00) ; 2 uses
  %i.sfu = select fast <16 x i1> %i.sft, <16 x float> splat (float -1.000000e+00), <16 x float> %i.sfs
  %i.sfv = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.sfs, <16 x float> splat (float 1.000000e+00))
  %i.sfw = fdiv fast <16 x float> %i.sfu, %i.sfv  ; 3 uses
  %i.sfx = fmul fast <16 x float> %i.sfw, %i.sfw  ; 3 uses
  %i.sfy = fmul fast <16 x float> %i.sfx, %i.sfx  ; 7 uses
  %i.sfz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.sfy, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.sga = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.sfy, <16 x float> nofpclass(nan inf) %i.sfz, <16 x float> splat (float f0xBE117200))
  %i.sgb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.sfy, <16 x float> nofpclass(nan inf) %i.sga, <16 x float> splat (float f0xBEAAAA53))
  %i.sgc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.sfy, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.sgd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.sfy, <16 x float> nofpclass(nan inf) %i.sgc, <16 x float> splat (float f0x3DD9ED24))
  %i.sge = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.sfy, <16 x float> nofpclass(nan inf) %i.sgd, <16 x float> splat (float f0x3E4CB974))
  %i.sgf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.sfy, <16 x float> nofpclass(nan inf) %i.sge, <16 x float> splat (float 1.000000e+00))
  %i.sgg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.sfx, <16 x float> nofpclass(nan inf) %i.sgb, <16 x float> nofpclass(nan inf) %i.sgf)
  %i.sgh = fmul fast <16 x float> %i.sgg, %i.sfw
  %i.sgi = select fast <16 x i1> %i.sft, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.sgj = fadd fast <16 x float> %i.sgh, %i.sgi
  %i.sgk = bitcast <16 x float> %i.sgj to <16 x i32>
  %i.sgl = or <16 x i32> %i.sfr, %i.sgk
  %i.sgm = bitcast <16 x i32> %i.sgl to <16 x float>
  %i.sgn = fadd fast <16 x float> %i.sfo, %i.sgm
  %i.sgo = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.sfk)
  %i.sgp = select <16 x i1> %i.sez, <16 x float> %i.sgn, <16 x float> %i.sgo
  %i.sgq = select <16 x i1> %i.sfl, <16 x float> %i.sgp, <16 x float> %i.sfd
  %i.sgr = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.sgq)
  store <16 x bfloat> %i.sgr, ptr %.030127.i.i1529, align 1, !tbaa !555
  %i.sgs = getelementptr inbounds nuw i8, ptr %.028128.i.i1528, i64 2
  %i.sgt = getelementptr inbounds nuw i8, ptr %.030127.i.i1529, i64 32
  %i.sgu = add nuw nsw i32 %.033126.i.i1530, 1    ; 2 uses
  %exitcond133.not.i.i1531 = icmp eq i32 %i.sgu, %.sroa.speculated104.i1515
  br i1 %exitcond133.not.i.i1531, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.mi, !llvm.loop !366

.lr.ph125.i.i1521:                                ; preds = %bb.mh
  %i.sgv = load <8 x bfloat>, ptr %0, align 1, !tbaa !555 ; 4 uses
  %i.sgw = fpext fast <8 x bfloat> %i.sgv to <8 x float>
  %i.sgx = fcmp fast ueq <8 x bfloat> %i.sgv, zeroinitializer
  %i.sgy = fcmp fast olt <8 x bfloat> %i.sgv, zeroinitializer
  %i.sgz = bitcast <8 x bfloat> %i.sgv to <8 x i16>
  %isneg.i93.i = icmp sgt <8 x i16> %i.sgz, splat (i16 -1)
  %i.sha = select <8 x i1> %isneg.i93.i, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.shb = fdiv fast <8 x float> splat (float 1.000000e+00), %i.sgw
  br label %bb.mj

bb.mj:                                            ; preds = %bb.mj, %.lr.ph125.i.i1521
  %.1124.i.i1522 = phi ptr [ %1, %.lr.ph125.i.i1521 ], [ %i.sit, %bb.mj ] ; 2 uses
  %.029123.i.i1523 = phi i32 [ 0, %.lr.ph125.i.i1521 ], [ %i.siv, %bb.mj ]
  %.131122.i.i1524 = phi ptr [ %2, %.lr.ph125.i.i1521 ], [ %i.siu, %bb.mj ] ; 2 uses
  %i.shc = load i16, ptr %.1124.i.i1522, align 2, !tbaa !558
  %i.shd = zext i16 %i.shc to i32
  %i.she = shl nuw i32 %i.shd, 16
  %i.shf = insertelement <8 x i32> poison, i32 %i.she, i64 0
  %i.shg = bitcast <8 x i32> %i.shf to <8 x float>
  %i.shh = shufflevector <8 x float> %i.shg, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.shi = fcmp fast ueq <8 x float> %i.shh, zeroinitializer
  %i.shj = bitcast <8 x float> %i.shh to <8 x i32>
  %i.shk = and <8 x i32> %i.shj, splat (i32 -2147483648)
  %i.shl = fcmp fast olt <8 x float> %i.shh, zeroinitializer
  %i.shm = select <8 x i1> %i.shl, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.shn = select <8 x i1> %i.sgy, <8 x float> %i.shm, <8 x float> zeroinitializer
  %i.sho = fmul fast <8 x float> %i.shh, %i.shb   ; 2 uses
  %i.shp = bitcast <8 x float> %i.sho to <8 x i32>
  %i.shq = and <8 x i32> %i.shp, splat (i32 -2147483648)
  %i.shr = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.sho) ; 3 uses
  %i.shs = fcmp fast ogt <8 x float> %i.shr, splat (float 1.000000e+00) ; 2 uses
  %i.sht = select <8 x i1> %i.shs, <8 x float> splat (float -1.000000e+00), <8 x float> %i.shr
  %i.shu = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.shr, <8 x float> splat (float 1.000000e+00))
  %i.shv = fdiv fast <8 x float> %i.sht, %i.shu   ; 3 uses
  %i.shw = fmul fast <8 x float> %i.shv, %i.shv   ; 3 uses
  %i.shx = fmul fast <8 x float> %i.shw, %i.shw   ; 7 uses
  %i.shy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.shx, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.shz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.shx, <8 x float> nofpclass(nan inf) %i.shy, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.sia = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.shx, <8 x float> nofpclass(nan inf) %i.shz, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.sib = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.shx, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.sic = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.shx, <8 x float> nofpclass(nan inf) %i.sib, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.sid = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.shx, <8 x float> nofpclass(nan inf) %i.sic, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.sie = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.shx, <8 x float> nofpclass(nan inf) %i.sid, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.sif = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.shw, <8 x float> nofpclass(nan inf) %i.sia, <8 x float> nofpclass(nan inf) %i.sie)
  %i.sig = fmul fast <8 x float> %i.sif, %i.shv
  %i.sih = select <8 x i1> %i.shs, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.sii = fadd fast <8 x float> %i.sig, %i.sih
  %i.sij = bitcast <8 x float> %i.sii to <8 x i32>
  %i.sik = or <8 x i32> %i.shq, %i.sij
  %i.sil = bitcast <8 x i32> %i.sik to <8 x float>
  %i.sim = fadd fast <8 x float> %i.shn, %i.sil
  %i.sin = or disjoint <8 x i32> %i.shk, splat (i32 1070141403)
  %i.sio = bitcast <8 x float> %i.sim to <8 x i32>
  %i.sip = select <8 x i1> %i.sgx, <8 x i32> %i.sin, <8 x i32> %i.sio
  %i.siq = select <8 x i1> %i.shi, <8 x i32> %i.sha, <8 x i32> %i.sip
  %i.sir = bitcast <8 x i32> %i.siq to <8 x float>
  %i.sis = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.sir)
  store <8 x bfloat> %i.sis, ptr %.131122.i.i1524, align 1, !tbaa !555
  %i.sit = getelementptr inbounds nuw i8, ptr %.1124.i.i1522, i64 2
  %i.siu = getelementptr inbounds nuw i8, ptr %.131122.i.i1524, i64 16
  %i.siv = add nuw nsw i32 %.029123.i.i1523, 1    ; 2 uses
  %exitcond132.not.i.i1526 = icmp eq i32 %i.siv, %.sroa.speculated104.i1515
  br i1 %exitcond132.not.i.i1526, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.mj, !llvm.loop !367

.lr.ph.i91.i1517:                                 ; preds = %bb.mh
  %i.siw = load i64, ptr %0, align 1, !tbaa !555
  %i.six = insertelement <2 x i64> poison, i64 %i.siw, i64 0
  %i.siy = bitcast <2 x i64> %i.six to <8 x i16>
  %i.siz = shufflevector <8 x i16> %i.siy, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3> ; 2 uses
  %i.sja = bitcast <8 x i16> %i.siz to <4 x float> ; 3 uses
  %i.sjb = fcmp fast oeq <4 x float> %i.sja, zeroinitializer
  %i.sjc = fcmp fast olt <4 x float> %i.sja, zeroinitializer
  %i.sjd = bitcast <8 x i16> %i.siz to <4 x i32>
  %i.sje = and <4 x i32> %i.sjd, splat (i32 -2147483648)
  %i.sjf = or disjoint <4 x i32> %i.sje, splat (i32 1078530011)
  %i.sjg = bitcast <4 x i32> %i.sjf to <4 x float>
  %i.sjh = fcmp fast uge <4 x float> %i.sjg, zeroinitializer
  %i.sji = select <4 x i1> %i.sjh, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.sjj = fdiv fast <4 x float> splat (float 1.000000e+00), %i.sja
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mk, %.lr.ph.i91.i1517
  %.0121.i.i1518 = phi i32 [ 0, %.lr.ph.i91.i1517 ], [ %i.slg, %bb.mk ]
  %.2120.i.i1519 = phi ptr [ %1, %.lr.ph.i91.i1517 ], [ %i.sle, %bb.mk ] ; 2 uses
  %.232119.i.i1520 = phi ptr [ %2, %.lr.ph.i91.i1517 ], [ %i.slf, %bb.mk ] ; 2 uses
  %i.sjk = load i16, ptr %.2120.i.i1519, align 2, !tbaa !558
  %i.sjl = zext i16 %i.sjk to i32
  %i.sjm = shl nuw i32 %i.sjl, 16
  %i.sjn = insertelement <4 x i32> poison, i32 %i.sjm, i64 0
  %i.sjo = bitcast <4 x i32> %i.sjn to <4 x float>
  %i.sjp = shufflevector <4 x float> %i.sjo, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.sjq = fcmp fast oeq <4 x float> %i.sjp, zeroinitializer
  %i.sjr = bitcast <4 x float> %i.sjp to <4 x i32>
  %i.sjs = and <4 x i32> %i.sjr, splat (i32 -2147483648)
  %i.sjt = fcmp fast olt <4 x float> %i.sjp, zeroinitializer
  %i.sju = select <4 x i1> %i.sjt, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.sjv = select <4 x i1> %i.sjc, <4 x float> %i.sju, <4 x float> zeroinitializer
  %i.sjw = fmul fast <4 x float> %i.sjp, %i.sjj   ; 2 uses
  %i.sjx = bitcast <4 x float> %i.sjw to <4 x i32>
  %i.sjy = and <4 x i32> %i.sjx, splat (i32 -2147483648)
  %i.sjz = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.sjw) ; 3 uses
  %i.ska = fcmp fast ogt <4 x float> %i.sjz, splat (float 1.000000e+00) ; 2 uses
  %i.skb = select <4 x i1> %i.ska, <4 x float> splat (float -1.000000e+00), <4 x float> %i.sjz
  %i.skc = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.sjz, <4 x float> splat (float 1.000000e+00))
  %i.skd = fdiv fast <4 x float> %i.skb, %i.skc   ; 3 uses
  %i.ske = fmul fast <4 x float> %i.skd, %i.skd   ; 3 uses
  %i.skf = fmul fast <4 x float> %i.ske, %i.ske   ; 7 uses
  %i.skg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.skf, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.skh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.skf, <4 x float> nofpclass(nan inf) %i.skg, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.ski = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.skf, <4 x float> nofpclass(nan inf) %i.skh, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.skj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.skf, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.skk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.skf, <4 x float> nofpclass(nan inf) %i.skj, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.skl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.skf, <4 x float> nofpclass(nan inf) %i.skk, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.skm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.skf, <4 x float> nofpclass(nan inf) %i.skl, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.skn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ske, <4 x float> nofpclass(nan inf) %i.ski, <4 x float> nofpclass(nan inf) %i.skm)
  %i.sko = fmul fast <4 x float> %i.skn, %i.skd
  %i.skp = select <4 x i1> %i.ska, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.skq = fadd fast <4 x float> %i.sko, %i.skp
  %i.skr = bitcast <4 x float> %i.skq to <4 x i32>
  %i.sks = or <4 x i32> %i.sjy, %i.skr
  %i.skt = bitcast <4 x i32> %i.sks to <4 x float>
  %i.sku = fadd fast <4 x float> %i.sjv, %i.skt
  %i.skv = or disjoint <4 x i32> %i.sjs, splat (i32 1070141403)
  %i.skw = bitcast <4 x float> %i.sku to <4 x i32>
  %i.skx = select <4 x i1> %i.sjb, <4 x i32> %i.skv, <4 x i32> %i.skw
  %i.sky = select <4 x i1> %i.sjq, <4 x i32> %i.sji, <4 x i32> %i.skx
  %i.skz = bitcast <4 x i32> %i.sky to <4 x float>
  %i.sla = shufflevector <4 x float> %i.skz, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.slb = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.sla)
  %i.slc = bitcast <8 x bfloat> %i.slb to <2 x i64>
  %i.sld = extractelement <2 x i64> %i.slc, i64 0
  store i64 %i.sld, ptr %.232119.i.i1520, align 1, !tbaa !555
  %i.sle = getelementptr inbounds nuw i8, ptr %.2120.i.i1519, i64 2
  %i.slf = getelementptr inbounds nuw i8, ptr %.232119.i.i1520, i64 8
  %i.slg = add nuw nsw i32 %.0121.i.i1518, 1      ; 2 uses
  %exitcond.not.i92.i = icmp eq i32 %i.slg, %.sroa.speculated104.i1515
  br i1 %exitcond.not.i92.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.mk, !llvm.loop !368

bb.ml:                                            ; preds = %bb.a
  %.sroa.speculated99.i1687 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 22 uses
  %.sroa.speculated.i1688 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.slh = mul i32 %.sroa.speculated.i1688, %.sroa.speculated99.i1687 ; 46 uses
  %i.sli = icmp eq i32 %5, %6
  br i1 %i.sli, label %bb.mm, label %bb.nc

bb.mm:                                            ; preds = %bb.ml
  %i.slj = icmp eq i32 %3, %4
  br i1 %i.slj, label %bb.mn, label %bb.mo

bb.mn:                                            ; preds = %bb.mm
  %i.slk = icmp sgt i32 %i.slh, 15
  br i1 %i.slk, label %.lr.ph.i.i1757.preheader, label %.preheader72.i.i

.lr.ph.i.i1757.preheader:                         ; preds = %bb.mn
  %i.sll = add nsw i32 %i.slh, -16                ; 2 uses
  %i.slm = lshr i32 %i.sll, 4                     ; 2 uses
  %i.sln = add nuw nsw i32 %i.slm, 1              ; 2 uses
  %i.slo = icmp eq i32 %i.slm, 0
  br i1 %i.slo, label %.lr.ph.i.i1757.epil.preheader, label %.lr.ph.i.i1757.preheader.new

.lr.ph.i.i1757.preheader.new:                     ; preds = %.lr.ph.i.i1757.preheader
  %unroll_iter10465 = and i32 %i.sln, 536870910
  br label %.lr.ph.i.i1757

.preheader72.loopexit.i.i.unr-lcssa:              ; preds = %.lr.ph.i.i1757
  %i.slp = and i32 %i.sll, 16
  %lcmp.mod10460.not.not = icmp eq i32 %i.slp, 0
  br i1 %lcmp.mod10460.not.not, label %.lr.ph.i.i1757.epil.preheader, label %.preheader72.loopexit.i.i

.lr.ph.i.i1757.epil.preheader:                    ; preds = %.preheader72.loopexit.i.i.unr-lcssa, %.lr.ph.i.i1757.preheader
  %.076.i.i.epil.init = phi ptr [ %0, %.lr.ph.i.i1757.preheader ], [ %i.sna, %.preheader72.loopexit.i.i.unr-lcssa ] ; 2 uses
  %.03475.i.i.epil.init = phi ptr [ %1, %.lr.ph.i.i1757.preheader ], [ %i.snb, %.preheader72.loopexit.i.i.unr-lcssa ] ; 2 uses
  %.04273.i.i.epil.init = phi ptr [ %2, %.lr.ph.i.i1757.preheader ], [ %i.snc, %.preheader72.loopexit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod10464 = trunc i32 %i.sln to i1
  tail call void @llvm.assume(i1 %lcmp.mod10464)
  %i.slq = load <16 x bfloat>, ptr %.076.i.i.epil.init, align 1, !tbaa !555
  %i.slr = fpext fast <16 x bfloat> %i.slq to <16 x float> ; 2 uses
  %i.sls = load <16 x bfloat>, ptr %.03475.i.i.epil.init, align 1, !tbaa !555
  %i.slt = fpext fast <16 x bfloat> %i.sls to <16 x float> ; 2 uses
  %i.slu = fdiv fast <16 x float> %i.slr, %i.slt
  %i.slv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.slu, i32 11, <16 x float> zeroinitializer, i16 -1, i32 4)
  %i.slw = fmul fast <16 x float> %i.slv, %i.slt
  %i.slx = fsub fast <16 x float> %i.slr, %i.slw
  %i.sly = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.slx)
  store <16 x bfloat> %i.sly, ptr %.04273.i.i.epil.init, align 1, !tbaa !555
  %i.slz = getelementptr inbounds nuw i8, ptr %.076.i.i.epil.init, i64 32
  %i.sma = getelementptr inbounds nuw i8, ptr %.03475.i.i.epil.init, i64 32
  %i.smb = getelementptr inbounds nuw i8, ptr %.04273.i.i.epil.init, i64 32
  br label %.preheader72.loopexit.i.i

.preheader72.loopexit.i.i:                        ; preds = %.preheader72.loopexit.i.i.unr-lcssa, %.lr.ph.i.i1757.epil.preheader
  %.lcssa9813 = phi ptr [ %i.sna, %.preheader72.loopexit.i.i.unr-lcssa ], [ %i.slz, %.lr.ph.i.i1757.epil.preheader ]
  %.lcssa9812 = phi ptr [ %i.snb, %.preheader72.loopexit.i.i.unr-lcssa ], [ %i.sma, %.lr.ph.i.i1757.epil.preheader ]
  %.lcssa9811 = phi ptr [ %i.snc, %.preheader72.loopexit.i.i.unr-lcssa ], [ %i.smb, %.lr.ph.i.i1757.epil.preheader ]
  %i.smc = and i32 %i.slh, 2147483632
  br label %.preheader72.i.i

.preheader72.i.i:                                 ; preds = %.preheader72.loopexit.i.i, %bb.mn
  %.042.lcssa.i.i1741 = phi ptr [ %2, %bb.mn ], [ %.lcssa9811, %.preheader72.loopexit.i.i ] ; 2 uses
  %.038.lcssa.i.i1742 = phi i32 [ 0, %bb.mn ], [ %i.smc, %.preheader72.loopexit.i.i ] ; 3 uses
  %.034.lcssa.i.i1743 = phi ptr [ %1, %bb.mn ], [ %.lcssa9812, %.preheader72.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i.i1744 = phi ptr [ %0, %bb.mn ], [ %.lcssa9813, %.preheader72.loopexit.i.i ] ; 2 uses
  %i.smd = or disjoint i32 %.038.lcssa.i.i1742, 7
  %i.sme = icmp slt i32 %i.smd, %i.slh
  br i1 %i.sme, label %.lr.ph84.i.i1756, label %.preheader71.i.i

.lr.ph.i.i1757:                                   ; preds = %.lr.ph.i.i1757, %.lr.ph.i.i1757.preheader.new
  %.076.i.i = phi ptr [ %0, %.lr.ph.i.i1757.preheader.new ], [ %i.sna, %.lr.ph.i.i1757 ] ; 3 uses
  %.03475.i.i = phi ptr [ %1, %.lr.ph.i.i1757.preheader.new ], [ %i.snb, %.lr.ph.i.i1757 ] ; 3 uses
  %.04273.i.i = phi ptr [ %2, %.lr.ph.i.i1757.preheader.new ], [ %i.snc, %.lr.ph.i.i1757 ] ; 3 uses
  %niter10466 = phi i32 [ 0, %.lr.ph.i.i1757.preheader.new ], [ %niter10466.next.1, %.lr.ph.i.i1757 ]
  %i.smf = load <16 x bfloat>, ptr %.076.i.i, align 1, !tbaa !555
  %i.smg = fpext fast <16 x bfloat> %i.smf to <16 x float> ; 2 uses
  %i.smh = load <16 x bfloat>, ptr %.03475.i.i, align 1, !tbaa !555
  %i.smi = fpext fast <16 x bfloat> %i.smh to <16 x float> ; 2 uses
  %i.smj = fdiv fast <16 x float> %i.smg, %i.smi
  %i.smk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.smj, i32 11, <16 x float> zeroinitializer, i16 -1, i32 4)
  %i.sml = fmul fast <16 x float> %i.smk, %i.smi
  %i.smm = fsub fast <16 x float> %i.smg, %i.sml
  %i.smn = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.smm)
  store <16 x bfloat> %i.smn, ptr %.04273.i.i, align 1, !tbaa !555
  %i.smo = getelementptr inbounds nuw i8, ptr %.076.i.i, i64 32
  %i.smp = getelementptr inbounds nuw i8, ptr %.03475.i.i, i64 32
  %i.smq = getelementptr inbounds nuw i8, ptr %.04273.i.i, i64 32
  %i.smr = load <16 x bfloat>, ptr %i.smo, align 1, !tbaa !555
  %i.sms = fpext fast <16 x bfloat> %i.smr to <16 x float> ; 2 uses
  %i.smt = load <16 x bfloat>, ptr %i.smp, align 1, !tbaa !555
  %i.smu = fpext fast <16 x bfloat> %i.smt to <16 x float> ; 2 uses
  %i.smv = fdiv fast <16 x float> %i.sms, %i.smu
  %i.smw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.smv, i32 11, <16 x float> zeroinitializer, i16 -1, i32 4)
  %i.smx = fmul fast <16 x float> %i.smw, %i.smu
  %i.smy = fsub fast <16 x float> %i.sms, %i.smx
  %i.smz = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.smy)
  store <16 x bfloat> %i.smz, ptr %i.smq, align 1, !tbaa !555
  %i.sna = getelementptr inbounds nuw i8, ptr %.076.i.i, i64 64 ; 3 uses
  %i.snb = getelementptr inbounds nuw i8, ptr %.03475.i.i, i64 64 ; 3 uses
  %i.snc = getelementptr inbounds nuw i8, ptr %.04273.i.i, i64 64 ; 3 uses
  %niter10466.next.1 = add i32 %niter10466, 2     ; 2 uses
  %niter10466.ncmp.1.not = icmp eq i32 %niter10466.next.1, %unroll_iter10465
  br i1 %niter10466.ncmp.1.not, label %.preheader72.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i1757, !llvm.loop !369

.preheader71.i.i:                                 ; preds = %.lr.ph84.i.i1756, %.preheader72.i.i
  %.143.lcssa.i.i1745 = phi ptr [ %.042.lcssa.i.i1741, %.preheader72.i.i ], [ %i.snq, %.lr.ph84.i.i1756 ] ; 2 uses
  %.139.lcssa.i.i1746 = phi i32 [ %.038.lcssa.i.i1742, %.preheader72.i.i ], [ %i.snr, %.lr.ph84.i.i1756 ] ; 3 uses
  %.135.lcssa.i.i1747 = phi ptr [ %.034.lcssa.i.i1743, %.preheader72.i.i ], [ %i.snp, %.lr.ph84.i.i1756 ] ; 2 uses
  %.1.lcssa.i.i1748 = phi ptr [ %.0.lcssa.i.i1744, %.preheader72.i.i ], [ %i.sno, %.lr.ph84.i.i1756 ] ; 2 uses
  %i.snd = or disjoint i32 %.139.lcssa.i.i1746, 3
  %i.sne = icmp slt i32 %i.snd, %i.slh
  br i1 %i.sne, label %.lr.ph93.i.i1755, label %.preheader.i.i1749

.lr.ph84.i.i1756:                                 ; preds = %.preheader72.i.i, %.lr.ph84.i.i1756
  %.183.i.i = phi ptr [ %i.sno, %.lr.ph84.i.i1756 ], [ %.0.lcssa.i.i1744, %.preheader72.i.i ] ; 2 uses
  %.13582.i.i = phi ptr [ %i.snp, %.lr.ph84.i.i1756 ], [ %.034.lcssa.i.i1743, %.preheader72.i.i ] ; 2 uses
  %.13981.i.i = phi i32 [ %i.snr, %.lr.ph84.i.i1756 ], [ %.038.lcssa.i.i1742, %.preheader72.i.i ]
  %.14380.i.i = phi ptr [ %i.snq, %.lr.ph84.i.i1756 ], [ %.042.lcssa.i.i1741, %.preheader72.i.i ] ; 2 uses
  %i.snf = load <8 x bfloat>, ptr %.183.i.i, align 1, !tbaa !555
  %i.sng = fpext fast <8 x bfloat> %i.snf to <8 x float> ; 2 uses
  %i.snh = load <8 x bfloat>, ptr %.13582.i.i, align 1, !tbaa !555
  %i.sni = fpext fast <8 x bfloat> %i.snh to <8 x float> ; 2 uses
  %i.snj = fdiv fast <8 x float> %i.sng, %i.sni
  %i.snk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.trunc.v8f32(<8 x float> %i.snj)
  %i.snl = fmul fast <8 x float> %i.snk, %i.sni
  %i.snm = fsub fast <8 x float> %i.sng, %i.snl
  %i.snn = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.snm)
  store <8 x bfloat> %i.snn, ptr %.14380.i.i, align 1, !tbaa !555
  %i.sno = getelementptr inbounds nuw i8, ptr %.183.i.i, i64 16 ; 2 uses
  %i.snp = getelementptr inbounds nuw i8, ptr %.13582.i.i, i64 16 ; 2 uses
  %i.snq = getelementptr inbounds nuw i8, ptr %.14380.i.i, i64 16 ; 2 uses
  %i.snr = add nuw nsw i32 %.13981.i.i, 8         ; 3 uses
  %i.sns = or disjoint i32 %i.snr, 7
  %i.snt = icmp slt i32 %i.sns, %i.slh
  br i1 %i.snt, label %.lr.ph84.i.i1756, label %.preheader71.i.i, !llvm.loop !370

.preheader.i.i1749:                               ; preds = %.lr.ph93.i.i1755, %.preheader71.i.i
  %.244.lcssa.i.i1750 = phi ptr [ %.143.lcssa.i.i1745, %.preheader71.i.i ], [ %i.sqh, %.lr.ph93.i.i1755 ] ; 7 uses
  %.240.lcssa.i.i1751 = phi i32 [ %.139.lcssa.i.i1746, %.preheader71.i.i ], [ %i.sqi, %.lr.ph93.i.i1755 ] ; 6 uses
  %.236.lcssa.i.i1752 = phi ptr [ %.135.lcssa.i.i1747, %.preheader71.i.i ], [ %i.sqg, %.lr.ph93.i.i1755 ] ; 7 uses
  %.2.lcssa.i.i1753 = phi ptr [ %.1.lcssa.i.i1748, %.preheader71.i.i ], [ %i.sqf, %.lr.ph93.i.i1755 ] ; 7 uses
  %.236.lcssa.i.i17526987 = ptrtoaddr ptr %.236.lcssa.i.i1752 to i64
  %.2.lcssa.i.i17536988 = ptrtoaddr ptr %.2.lcssa.i.i1753 to i64
  %.244.lcssa.i.i17506989 = ptrtoaddr ptr %.244.lcssa.i.i1750 to i64 ; 2 uses
  %i.snu = icmp slt i32 %.240.lcssa.i.i1751, %i.slh
  br i1 %i.snu, label %iter.check7009, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7009:                                   ; preds = %.preheader.i.i1749
  %i.snv = xor i32 %.240.lcssa.i.i1751, -1
  %i.snw = add i32 %i.slh, %i.snv                 ; 3 uses
  %i.snx = zext i32 %i.snw to i64
  %i.sny = add nuw nsw i64 %i.snx, 1              ; 5 uses
  %min.iters.check6990.a = icmp ult i32 %i.snw, 7
  br i1 %min.iters.check6990.a, label %.lr.ph102.i.i.preheader, label %vector.memcheck6991

vector.memcheck6991:                              ; preds = %iter.check7009
  %i.snz = sub i64 %.2.lcssa.i.i17536988, %.244.lcssa.i.i17506989
  %diff.check6992 = icmp ugt i64 %i.snz, -64
  %i.soa = sub i64 %.236.lcssa.i.i17526987, %.244.lcssa.i.i17506989
  %diff.check6993 = icmp ugt i64 %i.soa, -64
  %conflict.rdx6994 = or i1 %diff.check6992, %diff.check6993
  br i1 %conflict.rdx6994, label %.lr.ph102.i.i.preheader, label %vector.main.loop.iter.check6995

vector.main.loop.iter.check6995:                  ; preds = %vector.memcheck6991
  %min.iters.check6996 = icmp ult i32 %i.snw, 31
  br i1 %min.iters.check6996, label %vec.epilog.ph7013, label %vector.ph6997

vector.ph6997:                                    ; preds = %vector.main.loop.iter.check6995
  %i.sob = and i64 %i.sny, 24
  %n.vec6998 = and i64 %i.sny, 8589934560         ; 5 uses
  %i.soc = shl nuw nsw i64 %n.vec6998, 1          ; 3 uses
  %i.sod = getelementptr i8, ptr %.2.lcssa.i.i1753, i64 %i.soc
  %i.soe = getelementptr i8, ptr %.236.lcssa.i.i1752, i64 %i.soc
  %i.sof = trunc i64 %n.vec6998 to i32
  %i.sog = add i32 %.240.lcssa.i.i1751, %i.sof
  %i.soh = getelementptr i8, ptr %.244.lcssa.i.i1750, i64 %i.soc
  br label %vector.body6999

vector.body6999:                                  ; preds = %vector.ph6997, %vector.body6999
  %index7000 = phi i64 [ 0, %vector.ph6997 ], [ %index.next7006, %vector.body6999 ] ; 2 uses
  %i.soi = shl i64 %index7000, 1                  ; 3 uses
  %next.gep7001 = getelementptr i8, ptr %.2.lcssa.i.i1753, i64 %i.soi
  %next.gep7002 = getelementptr i8, ptr %.236.lcssa.i.i1752, i64 %i.soi
  %next.gep7003 = getelementptr i8, ptr %.244.lcssa.i.i1750, i64 %i.soi
  %wide.load7004 = load <32 x i16>, ptr %next.gep7001, align 2, !tbaa !558
  %i.soj = zext <32 x i16> %wide.load7004 to <32 x i32>
  %i.sok = shl nuw <32 x i32> %i.soj, splat (i32 16)
  %i.sol = bitcast <32 x i32> %i.sok to <32 x float>
  %wide.load7005 = load <32 x i16>, ptr %next.gep7002, align 2, !tbaa !558
  %i.som = zext <32 x i16> %wide.load7005 to <32 x i32>
end_hunk_0
