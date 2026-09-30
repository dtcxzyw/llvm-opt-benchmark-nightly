Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/binaryop_x86_avx512bf16?download=true
inline.NumInlined: 199
inline.NumDeleted: 137
loop-unroll.NumRuntimeUnrolled: 194
loop-unroll.NumUnrolled: 194
begin_hunk_0_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  %i.nqu = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.nqi)
  %i.nqv = shl <8 x i32> %i.nqu, splat (i32 23)
  %i.nqw = add <8 x i32> %i.nqv, splat (i32 1065353216)
  %i.nqx = bitcast <8 x i32> %i.nqw to <8 x float>
  %i.nqy = fmul fast <8 x float> %i.nqt, %i.nqx
  %i.nqz = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.nqy)
  store <8 x bfloat> %i.nqz, ptr %.131166.i.i1310, align 1, !tbaa !555
  %i.nra = getelementptr inbounds nuw i8, ptr %.1168.i.i1308, i64 2
  %i.nrb = getelementptr inbounds nuw i8, ptr %.131166.i.i1310, i64 16
  %i.nrc = add nuw nsw i32 %.029167.i.i1309, 1    ; 2 uses
  %exitcond176.not.i.i1311 = icmp eq i32 %i.nrc, %.sroa.speculated98.i1300
  br i1 %exitcond176.not.i.i1311, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph169.i.i1307, !llvm.loop !307

bb.jq:                                            ; preds = %bb.jn
  %i.nrd = load i64, ptr %0, align 1, !tbaa !555
  %i.nre = insertelement <2 x i64> poison, i64 %i.nrd, i64 0
  %i.nrf = bitcast <2 x i64> %i.nre to <8 x i16>
  %i.nrg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nrf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nrh = bitcast <8 x i16> %i.nrg to <4 x float>
  br label %.lr.ph.i86.i1302

.lr.ph.i86.i1302:                                 ; preds = %.lr.ph.i86.i1302, %bb.jq
  %.0165.i.i1303 = phi i32 [ %i.nty, %.lr.ph.i86.i1302 ], [ 0, %bb.jq ]
  %.2164.i.i1304 = phi ptr [ %i.ntw, %.lr.ph.i86.i1302 ], [ %1, %bb.jq ] ; 2 uses
  %.232163.i.i1305 = phi ptr [ %i.ntx, %.lr.ph.i86.i1302 ], [ %2, %bb.jq ] ; 2 uses
  %i.nri = load i16, ptr %.2164.i.i1304, align 2, !tbaa !558
  %i.nrj = zext i16 %i.nri to i32
  %i.nrk = shl nuw i32 %i.nrj, 16
  %i.nrl = insertelement <4 x i32> poison, i32 %i.nrk, i64 0
  %i.nrm = bitcast <4 x i32> %i.nrl to <4 x float>
  %i.nrn = shufflevector <4 x float> %i.nrm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nro = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nrn, <4 x float> splat (float f0x00800000))
  %i.nrp = bitcast <4 x float> %i.nro to <4 x i32> ; 2 uses
  %i.nrq = lshr <4 x i32> %i.nrp, splat (i32 23)
  %i.nrr = and <4 x i32> %i.nrp, splat (i32 -2139095041)
  %i.nrs = or disjoint <4 x i32> %i.nrr, splat (i32 1056964608)
  %i.nrt = bitcast <4 x i32> %i.nrs to <4 x float> ; 3 uses
  %i.nru = add nsw <4 x i32> %i.nrq, splat (i32 -127)
  %i.nrv = sitofp fast <4 x i32> %i.nru to <4 x float> ; 2 uses
  %i.nrw = fadd fast <4 x float> %i.nrv, splat (float 1.000000e+00)
  %i.nrx = fcmp fast olt <4 x float> %i.nrt, splat (float f0x3F3504F3) ; 2 uses
  %i.nry = select <4 x i1> %i.nrx, <4 x float> %i.nrt, <4 x float> zeroinitializer
  %i.nrz = fadd fast <4 x float> %i.nrt, splat (float -1.000000e+00)
  %i.nsa = select fast <4 x i1> %i.nrx, <4 x float> %i.nrv, <4 x float> %i.nrw ; 2 uses
  %i.nsb = fadd fast <4 x float> %i.nrz, %i.nry   ; 12 uses
  %i.nsc = fmul fast <4 x float> %i.nsb, %i.nsb   ; 2 uses
  %i.nsd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nsb, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.nse = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nsd, <4 x float> nofpclass(nan inf) %i.nsb, <4 x float> splat (float f0x3DEF251A))
  %i.nsf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nse, <4 x float> nofpclass(nan inf) %i.nsb, <4 x float> splat (float f0xBDFE5D4F))
  %i.nsg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nsf, <4 x float> nofpclass(nan inf) %i.nsb, <4 x float> splat (float f0x3E11E9BF))
  %i.nsh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nsg, <4 x float> nofpclass(nan inf) %i.nsb, <4 x float> splat (float f0xBE2AAE50))
  %i.nsi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nsh, <4 x float> nofpclass(nan inf) %i.nsb, <4 x float> splat (float f0x3E4CCEAC))
  %i.nsj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nsi, <4 x float> nofpclass(nan inf) %i.nsb, <4 x float> splat (float f0xBE7FFFFC))
  %i.nsk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nsj, <4 x float> nofpclass(nan inf) %i.nsb, <4 x float> splat (float f0x3EAAAAAA))
  %i.nsl = fmul fast <4 x float> %i.nsc, %i.nsb
  %i.nsm = fmul fast <4 x float> %i.nsl, %i.nsk
  %i.nsn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nsa, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.nsm)
  %i.nso = fneg fast <4 x float> %i.nsc
  %i.nsp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.nso, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.nsn)
  %i.nsq = fadd fast <4 x float> %i.nsp, %i.nsb
  %i.nsr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nsa, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.nsq)
  %i.nss = fmul fast <4 x float> %i.nsr, %i.nrh
  %i.nst = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nss, <4 x float> splat (float f0x42B0C0A5))
  %i.nsu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nst, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.nsv = fmul fast <4 x float> %i.nsu, splat (float f0x3FB8AA3B)
  %i.nsw = fadd fast <4 x float> %i.nsv, splat (float 5.000000e-01) ; 2 uses
  %i.nsx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nsw)
  %i.nsy = sitofp fast <4 x i32> %i.nsx to <4 x float> ; 2 uses
  %i.nsz = fcmp fast olt <4 x float> %i.nsw, %i.nsy
  %i.nta = select <4 x i1> %i.nsz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ntb = fsub fast <4 x float> %i.nsy, %i.nta   ; 2 uses
  %i.ntc = fneg fast <4 x float> %i.ntb           ; 2 uses
  %i.ntd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ntc, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.nsu)
  %i.nte = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ntc, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ntd) ; 8 uses
  %i.ntf = fmul fast <4 x float> %i.nte, %i.nte
  %i.ntg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nte, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.nth = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ntg, <4 x float> nofpclass(nan inf) %i.nte, <4 x float> splat (float f0x3C088908))
  %i.nti = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nth, <4 x float> nofpclass(nan inf) %i.nte, <4 x float> splat (float f0x3D2AA9C1))
  %i.ntj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nti, <4 x float> nofpclass(nan inf) %i.nte, <4 x float> splat (float f0x3E2AAAAA))
  %i.ntk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ntj, <4 x float> nofpclass(nan inf) %i.nte, <4 x float> splat (float 5.000000e-01))
  %i.ntl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ntk, <4 x float> nofpclass(nan inf) %i.ntf, <4 x float> nofpclass(nan inf) %i.nte)
  %i.ntm = fadd fast <4 x float> %i.ntl, splat (float 1.000000e+00)
  %i.ntn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ntb)
  %i.nto = shl <4 x i32> %i.ntn, splat (i32 23)
  %i.ntp = add <4 x i32> %i.nto, splat (i32 1065353216)
  %i.ntq = bitcast <4 x i32> %i.ntp to <4 x float>
  %i.ntr = fmul fast <4 x float> %i.ntm, %i.ntq
  %i.nts = shufflevector <4 x float> %i.ntr, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ntt = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.nts)
  %i.ntu = bitcast <8 x bfloat> %i.ntt to <2 x i64>
  %i.ntv = extractelement <2 x i64> %i.ntu, i64 0
  store i64 %i.ntv, ptr %.232163.i.i1305, align 1, !tbaa !555
  %i.ntw = getelementptr inbounds nuw i8, ptr %.2164.i.i1304, i64 2
  %i.ntx = getelementptr inbounds nuw i8, ptr %.232163.i.i1305, i64 8
  %i.nty = add nuw nsw i32 %.0165.i.i1303, 1      ; 2 uses
  %exitcond.not.i87.i1306 = icmp eq i32 %i.nty, %.sroa.speculated98.i1300
  br i1 %exitcond.not.i87.i1306, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i86.i1302, !llvm.loop !308

bb.jr:                                            ; preds = %bb.a
  %.sroa.speculated104.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 10 uses
  %.sroa.speculated.i1470 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.ntz = mul i32 %.sroa.speculated.i1470, %.sroa.speculated104.i ; 48 uses
  %i.nua = icmp eq i32 %5, %6
  br i1 %i.nua, label %bb.js, label %bb.ko

bb.js:                                            ; preds = %bb.jr
  %i.nub = icmp eq i32 %3, %4
  br i1 %i.nub, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %bb.js
  %i.nuc = icmp sgt i32 %i.ntz, 15
  br i1 %i.nuc, label %.lr.ph.i.i1514, label %.preheader133.i.i

.preheader133.loopexit.i.i:                       ; preds = %.lr.ph.i.i1514
  %i.nud = and i32 %i.ntz, 2147483632
  br label %.preheader133.i.i

.preheader133.i.i:                                ; preds = %.preheader133.loopexit.i.i, %bb.jt
  %.042.lcssa.i.i1500 = phi ptr [ %2, %bb.jt ], [ %i.nvy, %.preheader133.loopexit.i.i ] ; 2 uses
  %.038.lcssa.i.i1501 = phi i32 [ 0, %bb.jt ], [ %i.nud, %.preheader133.loopexit.i.i ] ; 3 uses
  %.034.lcssa.i.i1502 = phi ptr [ %1, %bb.jt ], [ %i.nvx, %.preheader133.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i.i1503 = phi ptr [ %0, %bb.jt ], [ %i.nvw, %.preheader133.loopexit.i.i ] ; 2 uses
  %i.nue = or disjoint i32 %.038.lcssa.i.i1501, 7
  %i.nuf = icmp slt i32 %i.nue, %i.ntz
  br i1 %i.nuf, label %.lr.ph145.i.i, label %.preheader132.i.i

.lr.ph.i.i1514:                                   ; preds = %bb.jt, %.lr.ph.i.i1514
  %.0137.i.i = phi ptr [ %i.nvw, %.lr.ph.i.i1514 ], [ %0, %bb.jt ] ; 2 uses
  %.034136.i.i = phi ptr [ %i.nvx, %.lr.ph.i.i1514 ], [ %1, %bb.jt ] ; 2 uses
  %.038135.i.i = phi i32 [ %i.nvz, %.lr.ph.i.i1514 ], [ 0, %bb.jt ]
  %.042134.i.i = phi ptr [ %i.nvy, %.lr.ph.i.i1514 ], [ %2, %bb.jt ] ; 2 uses
  %i.nug = load <16 x bfloat>, ptr %.0137.i.i, align 1, !tbaa !555 ; 3 uses
  %i.nuh = fpext fast <16 x bfloat> %i.nug to <16 x float> ; 2 uses
  %i.nui = load <16 x bfloat>, ptr %.034136.i.i, align 1, !tbaa !555 ; 4 uses
  %i.nuj = fpext fast <16 x bfloat> %i.nui to <16 x float>
  %i.nuk = fcmp fast one <16 x bfloat> %i.nui, zeroinitializer
  %i.nul = fcmp fast one <16 x bfloat> %i.nug, zeroinitializer
  %i.num = fcmp fast olt <16 x bfloat> %i.nui, zeroinitializer
  %i.nun = fcmp fast olt <16 x bfloat> %i.nug, zeroinitializer
  %i.nuo = select fast <16 x i1> %i.nun, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.nup = select fast <16 x i1> %i.num, <16 x float> %i.nuo, <16 x float> zeroinitializer
  %i.nuq = fdiv fast <16 x float> %i.nuh, %i.nuj  ; 2 uses
  %i.nur = bitcast <16 x float> %i.nuq to <16 x i32>
  %i.nus = and <16 x i32> %i.nur, splat (i32 -2147483648)
  %i.nut = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.nuq) ; 3 uses
  %i.nuu = fcmp fast ogt <16 x float> %i.nut, splat (float 1.000000e+00) ; 2 uses
  %i.nuv = select fast <16 x i1> %i.nuu, <16 x float> splat (float -1.000000e+00), <16 x float> %i.nut
  %i.nuw = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.nut, <16 x float> splat (float 1.000000e+00))
  %i.nux = fdiv fast <16 x float> %i.nuv, %i.nuw  ; 3 uses
  %i.nuy = fmul fast <16 x float> %i.nux, %i.nux  ; 3 uses
  %i.nuz = fmul fast <16 x float> %i.nuy, %i.nuy  ; 7 uses
  %i.nva = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nuz, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.nvb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nuz, <16 x float> nofpclass(nan inf) %i.nva, <16 x float> splat (float f0xBE117200))
  %i.nvc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nuz, <16 x float> nofpclass(nan inf) %i.nvb, <16 x float> splat (float f0xBEAAAA53))
  %i.nvd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nuz, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.nve = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nuz, <16 x float> nofpclass(nan inf) %i.nvd, <16 x float> splat (float f0x3DD9ED24))
  %i.nvf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nuz, <16 x float> nofpclass(nan inf) %i.nve, <16 x float> splat (float f0x3E4CB974))
  %i.nvg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nuz, <16 x float> nofpclass(nan inf) %i.nvf, <16 x float> splat (float 1.000000e+00))
  %i.nvh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nuy, <16 x float> nofpclass(nan inf) %i.nvc, <16 x float> nofpclass(nan inf) %i.nvg)
  %i.nvi = fmul fast <16 x float> %i.nvh, %i.nux
  %i.nvj = select fast <16 x i1> %i.nuu, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.nvk = fadd fast <16 x float> %i.nvi, %i.nvj
  %i.nvl = bitcast <16 x float> %i.nvk to <16 x i32>
  %i.nvm = or <16 x i32> %i.nus, %i.nvl
  %i.nvn = bitcast <16 x i32> %i.nvm to <16 x float>
  %i.nvo = fadd fast <16 x float> %i.nup, %i.nvn
  %i.nvp = bitcast <16 x bfloat> %i.nui to <16 x i16>
  %i.nvq = icmp slt <16 x i16> %i.nvp, zeroinitializer
  %i.nvr = select fast <16 x i1> %i.nvq, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.nvs = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.nuh)
  %i.nvt = select <16 x i1> %i.nuk, <16 x float> %i.nvo, <16 x float> %i.nvs
  %i.nvu = select <16 x i1> %i.nul, <16 x float> %i.nvt, <16 x float> %i.nvr
  %i.nvv = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.nvu)
  store <16 x bfloat> %i.nvv, ptr %.042134.i.i, align 1, !tbaa !555
  %i.nvw = getelementptr inbounds nuw i8, ptr %.0137.i.i, i64 32 ; 2 uses
  %i.nvx = getelementptr inbounds nuw i8, ptr %.034136.i.i, i64 32 ; 2 uses
  %i.nvy = getelementptr inbounds nuw i8, ptr %.042134.i.i, i64 32 ; 2 uses
  %i.nvz = add nuw nsw i32 %.038135.i.i, 16       ; 2 uses
  %i.nwa = or disjoint i32 %i.nvz, 15
  %i.nwb = icmp slt i32 %i.nwa, %i.ntz
  br i1 %i.nwb, label %.lr.ph.i.i1514, label %.preheader133.loopexit.i.i, !llvm.loop !309

.preheader132.i.i:                                ; preds = %.lr.ph145.i.i, %.preheader133.i.i
  %.143.lcssa.i.i1504 = phi ptr [ %.042.lcssa.i.i1500, %.preheader133.i.i ], [ %i.nxz, %.lr.ph145.i.i ] ; 2 uses
  %.139.lcssa.i.i1505 = phi i32 [ %.038.lcssa.i.i1501, %.preheader133.i.i ], [ %i.nya, %.lr.ph145.i.i ] ; 3 uses
  %.135.lcssa.i.i1506 = phi ptr [ %.034.lcssa.i.i1502, %.preheader133.i.i ], [ %i.nxy, %.lr.ph145.i.i ] ; 2 uses
  %.1.lcssa.i.i1507 = phi ptr [ %.0.lcssa.i.i1503, %.preheader133.i.i ], [ %i.nxx, %.lr.ph145.i.i ] ; 2 uses
  %i.nwc = or disjoint i32 %.139.lcssa.i.i1505, 3
  %i.nwd = icmp slt i32 %i.nwc, %i.ntz
  br i1 %i.nwd, label %.lr.ph154.i.i, label %.preheader.i.i1508

.lr.ph145.i.i:                                    ; preds = %.preheader133.i.i, %.lr.ph145.i.i
  %.1144.i.i = phi ptr [ %i.nxx, %.lr.ph145.i.i ], [ %.0.lcssa.i.i1503, %.preheader133.i.i ] ; 2 uses
  %.135143.i.i = phi ptr [ %i.nxy, %.lr.ph145.i.i ], [ %.034.lcssa.i.i1502, %.preheader133.i.i ] ; 2 uses
  %.139142.i.i = phi i32 [ %i.nya, %.lr.ph145.i.i ], [ %.038.lcssa.i.i1501, %.preheader133.i.i ]
  %.143141.i.i = phi ptr [ %i.nxz, %.lr.ph145.i.i ], [ %.042.lcssa.i.i1500, %.preheader133.i.i ] ; 2 uses
  %i.nwe = load <8 x bfloat>, ptr %.1144.i.i, align 1, !tbaa !555 ; 3 uses
  %i.nwf = fpext fast <8 x bfloat> %i.nwe to <8 x float> ; 2 uses
  %i.nwg = load <8 x bfloat>, ptr %.135143.i.i, align 1, !tbaa !555 ; 4 uses
  %i.nwh = fpext fast <8 x bfloat> %i.nwg to <8 x float>
  %i.nwi = fcmp fast ueq <8 x bfloat> %i.nwg, zeroinitializer
  %i.nwj = fcmp fast ueq <8 x bfloat> %i.nwe, zeroinitializer
  %i.nwk = bitcast <8 x float> %i.nwf to <8 x i32>
  %i.nwl = and <8 x i32> %i.nwk, splat (i32 -2147483648)
  %i.nwm = fcmp fast olt <8 x bfloat> %i.nwg, zeroinitializer
  %i.nwn = fcmp fast olt <8 x bfloat> %i.nwe, zeroinitializer
  %i.nwo = select <8 x i1> %i.nwn, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.nwp = select <8 x i1> %i.nwm, <8 x float> %i.nwo, <8 x float> zeroinitializer
  %i.nwq = fdiv fast <8 x float> %i.nwf, %i.nwh   ; 2 uses
  %i.nwr = bitcast <8 x float> %i.nwq to <8 x i32>
  %i.nws = and <8 x i32> %i.nwr, splat (i32 -2147483648)
  %i.nwt = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.nwq) ; 3 uses
  %i.nwu = fcmp fast ogt <8 x float> %i.nwt, splat (float 1.000000e+00) ; 2 uses
  %i.nwv = select <8 x i1> %i.nwu, <8 x float> splat (float -1.000000e+00), <8 x float> %i.nwt
  %i.nww = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.nwt, <8 x float> splat (float 1.000000e+00))
  %i.nwx = fdiv fast <8 x float> %i.nwv, %i.nww   ; 3 uses
  %i.nwy = fmul fast <8 x float> %i.nwx, %i.nwx   ; 3 uses
  %i.nwz = fmul fast <8 x float> %i.nwy, %i.nwy   ; 7 uses
  %i.nxa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nwz, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.nxb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nwz, <8 x float> nofpclass(nan inf) %i.nxa, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.nxc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nwz, <8 x float> nofpclass(nan inf) %i.nxb, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.nxd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nwz, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.nxe = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nwz, <8 x float> nofpclass(nan inf) %i.nxd, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.nxf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nwz, <8 x float> nofpclass(nan inf) %i.nxe, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.nxg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nwz, <8 x float> nofpclass(nan inf) %i.nxf, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.nxh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nwy, <8 x float> nofpclass(nan inf) %i.nxc, <8 x float> nofpclass(nan inf) %i.nxg)
  %i.nxi = fmul fast <8 x float> %i.nxh, %i.nwx
  %i.nxj = select <8 x i1> %i.nwu, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.nxk = fadd fast <8 x float> %i.nxi, %i.nxj
  %i.nxl = bitcast <8 x float> %i.nxk to <8 x i32>
  %i.nxm = or <8 x i32> %i.nws, %i.nxl
  %i.nxn = bitcast <8 x i32> %i.nxm to <8 x float>
  %i.nxo = fadd fast <8 x float> %i.nwp, %i.nxn
  %i.nxp = bitcast <8 x bfloat> %i.nwg to <8 x i16>
  %i.nxq = or disjoint <8 x i32> %i.nwl, splat (i32 1070141403)
  %isneg.i.i = icmp sgt <8 x i16> %i.nxp, splat (i16 -1)
  %i.nxr = select <8 x i1> %isneg.i.i, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.nxs = bitcast <8 x float> %i.nxo to <8 x i32>
  %i.nxt = select <8 x i1> %i.nwi, <8 x i32> %i.nxq, <8 x i32> %i.nxs
  %i.nxu = select <8 x i1> %i.nwj, <8 x i32> %i.nxr, <8 x i32> %i.nxt
  %i.nxv = bitcast <8 x i32> %i.nxu to <8 x float>
  %i.nxw = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.nxv)
  store <8 x bfloat> %i.nxw, ptr %.143141.i.i, align 1, !tbaa !555
  %i.nxx = getelementptr inbounds nuw i8, ptr %.1144.i.i, i64 16 ; 2 uses
  %i.nxy = getelementptr inbounds nuw i8, ptr %.135143.i.i, i64 16 ; 2 uses
  %i.nxz = getelementptr inbounds nuw i8, ptr %.143141.i.i, i64 16 ; 2 uses
  %i.nya = add nuw nsw i32 %.139142.i.i, 8        ; 3 uses
  %i.nyb = or disjoint i32 %i.nya, 7
  %i.nyc = icmp slt i32 %i.nyb, %i.ntz
  br i1 %i.nyc, label %.lr.ph145.i.i, label %.preheader132.i.i, !llvm.loop !310

.preheader.i.i1508:                               ; preds = %.lr.ph154.i.i, %.preheader132.i.i
  %.244.lcssa.i.i1509 = phi ptr [ %.143.lcssa.i.i1504, %.preheader132.i.i ], [ %i.ocv, %.lr.ph154.i.i ] ; 7 uses
  %.240.lcssa.i.i1510 = phi i32 [ %.139.lcssa.i.i1505, %.preheader132.i.i ], [ %i.ocw, %.lr.ph154.i.i ] ; 6 uses
  %.236.lcssa.i.i1511 = phi ptr [ %.135.lcssa.i.i1506, %.preheader132.i.i ], [ %i.ocu, %.lr.ph154.i.i ] ; 7 uses
  %.2.lcssa.i.i1512 = phi ptr [ %.1.lcssa.i.i1507, %.preheader132.i.i ], [ %i.oct, %.lr.ph154.i.i ] ; 7 uses
  %.244.lcssa.i.i15097263 = ptrtoaddr ptr %.244.lcssa.i.i1509 to i64 ; 2 uses
  %.2.lcssa.i.i15127264 = ptrtoaddr ptr %.2.lcssa.i.i1512 to i64
  %.236.lcssa.i.i15117266 = ptrtoaddr ptr %.236.lcssa.i.i1511 to i64
  %i.nyd = icmp slt i32 %.240.lcssa.i.i1510, %i.ntz
  br i1 %i.nyd, label %iter.check7288, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7288:                                   ; preds = %.preheader.i.i1508
  %i.nye = xor i32 %.240.lcssa.i.i1510, -1
  %i.nyf = add i32 %i.ntz, %i.nye                 ; 3 uses
  %i.nyg = zext i32 %i.nyf to i64
  %i.nyh = add nuw nsw i64 %i.nyg, 1              ; 5 uses
  %min.iters.check7269 = icmp ult i32 %i.nyf, 7
  br i1 %min.iters.check7269, label %.lr.ph163.i.i.preheader, label %vector.memcheck7262

vector.memcheck7262:                              ; preds = %iter.check7288
  %i.nyi = sub i64 %.2.lcssa.i.i15127264, %.244.lcssa.i.i15097263
  %diff.check7265 = icmp ugt i64 %i.nyi, -64
  %i.nyj = sub i64 %.236.lcssa.i.i15117266, %.244.lcssa.i.i15097263
  %diff.check7267 = icmp ugt i64 %i.nyj, -64
  %conflict.rdx7268 = or i1 %diff.check7265, %diff.check7267
  br i1 %conflict.rdx7268, label %.lr.ph163.i.i.preheader, label %vector.main.loop.iter.check7270

vector.main.loop.iter.check7270:                  ; preds = %vector.memcheck7262
  %min.iters.check7271 = icmp ult i32 %i.nyf, 31
  br i1 %min.iters.check7271, label %vec.epilog.ph7292, label %vector.ph7272

vector.ph7272:                                    ; preds = %vector.main.loop.iter.check7270
  %i.nyk = and i64 %i.nyh, 24
  %n.vec7273 = and i64 %i.nyh, 8589934560         ; 5 uses
  %i.nyl = shl nuw nsw i64 %n.vec7273, 1          ; 3 uses
  %i.nym = getelementptr i8, ptr %.2.lcssa.i.i1512, i64 %i.nyl
  %i.nyn = getelementptr i8, ptr %.236.lcssa.i.i1511, i64 %i.nyl
  %i.nyo = trunc i64 %n.vec7273 to i32
  %i.nyp = add i32 %.240.lcssa.i.i1510, %i.nyo
  %i.nyq = getelementptr i8, ptr %.244.lcssa.i.i1509, i64 %i.nyl
  br label %vector.body7274

vector.body7274:                                  ; preds = %vector.ph7272, %vector.body7274
  %index7275 = phi i64 [ 0, %vector.ph7272 ], [ %index.next7281, %vector.body7274 ] ; 2 uses
  %i.nyr = shl i64 %index7275, 1                  ; 3 uses
  %next.gep7276 = getelementptr i8, ptr %.2.lcssa.i.i1512, i64 %i.nyr
  %next.gep7277 = getelementptr i8, ptr %.236.lcssa.i.i1511, i64 %i.nyr
  %next.gep7278 = getelementptr i8, ptr %.244.lcssa.i.i1509, i64 %i.nyr
  %wide.load7279 = load <32 x i16>, ptr %next.gep7276, align 2, !tbaa !558
  %i.nys = zext <32 x i16> %wide.load7279 to <32 x i32>
  %i.nyt = shl nuw <32 x i32> %i.nys, splat (i32 16)
  %i.nyu = bitcast <32 x i32> %i.nyt to <32 x float>
  %wide.load7280 = load <32 x i16>, ptr %next.gep7277, align 2, !tbaa !558
  %i.nyv = zext <32 x i16> %wide.load7280 to <32 x i32>
  %i.nyw = shl nuw <32 x i32> %i.nyv, splat (i32 16)
  %i.nyx = bitcast <32 x i32> %i.nyw to <32 x float>
  %i.nyy = tail call fast <32 x float> @llvm.atan2.v32f32(<32 x float> %i.nyu, <32 x float> %i.nyx)
  %i.nyz = bitcast <32 x float> %i.nyy to <32 x i32>
  %i.nza = lshr <32 x i32> %i.nyz, splat (i32 16)
  %i.nzb = trunc nuw <32 x i32> %i.nza to <32 x i16>
  store <32 x i16> %i.nzb, ptr %next.gep7278, align 2, !tbaa !558
  %index.next7281 = add nuw i64 %index7275, 32    ; 2 uses
  %i.nzc = icmp eq i64 %index.next7281, %n.vec7273
  br i1 %i.nzc, label %middle.block7282, label %vector.body7274, !llvm.loop !311

middle.block7282:                                 ; preds = %vector.body7274
  %cmp.n7283 = icmp eq i64 %i.nyh, %n.vec7273
  br i1 %cmp.n7283, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7290

vec.epilog.iter.check7290:                        ; preds = %middle.block7282
  %min.epilog.iters.check7291 = icmp eq i64 %i.nyk, 0
  br i1 %min.epilog.iters.check7291, label %.lr.ph163.i.i.preheader, label %vec.epilog.ph7292, !prof !561

vec.epilog.ph7292:                                ; preds = %vector.main.loop.iter.check7270, %vec.epilog.iter.check7290
  %vec.epilog.resume.val7284 = phi i64 [ %n.vec7273, %vec.epilog.iter.check7290 ], [ 0, %vector.main.loop.iter.check7270 ]
  %n.vec7293 = and i64 %i.nyh, 8589934584         ; 4 uses
  %i.nzd = shl nuw nsw i64 %n.vec7293, 1          ; 3 uses
  %i.nze = getelementptr i8, ptr %.2.lcssa.i.i1512, i64 %i.nzd
  %i.nzf = getelementptr i8, ptr %.236.lcssa.i.i1511, i64 %i.nzd
  %i.nzg = trunc i64 %n.vec7293 to i32
  %i.nzh = add i32 %.240.lcssa.i.i1510, %i.nzg
  %i.nzi = getelementptr i8, ptr %.244.lcssa.i.i1509, i64 %i.nzd
  br label %vec.epilog.vector.body7294

vec.epilog.vector.body7294:                       ; preds = %vec.epilog.vector.body7294, %vec.epilog.ph7292
  %index7295 = phi i64 [ %vec.epilog.resume.val7284, %vec.epilog.ph7292 ], [ %index.next7301, %vec.epilog.vector.body7294 ] ; 2 uses
  %i.nzj = shl i64 %index7295, 1                  ; 3 uses
  %next.gep7296 = getelementptr i8, ptr %.2.lcssa.i.i1512, i64 %i.nzj
  %next.gep7297 = getelementptr i8, ptr %.236.lcssa.i.i1511, i64 %i.nzj
  %next.gep7298 = getelementptr i8, ptr %.244.lcssa.i.i1509, i64 %i.nzj
  %wide.load7299 = load <8 x i16>, ptr %next.gep7296, align 2, !tbaa !558
  %i.nzk = zext <8 x i16> %wide.load7299 to <8 x i32>
  %i.nzl = shl nuw <8 x i32> %i.nzk, splat (i32 16)
  %i.nzm = bitcast <8 x i32> %i.nzl to <8 x float>
  %wide.load7300 = load <8 x i16>, ptr %next.gep7297, align 2, !tbaa !558
  %i.nzn = zext <8 x i16> %wide.load7300 to <8 x i32>
  %i.nzo = shl nuw <8 x i32> %i.nzn, splat (i32 16)
  %i.nzp = bitcast <8 x i32> %i.nzo to <8 x float>
  %i.nzq = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.nzm, <8 x float> %i.nzp)
  %i.nzr = bitcast <8 x float> %i.nzq to <8 x i32>
  %i.nzs = lshr <8 x i32> %i.nzr, splat (i32 16)
  %i.nzt = trunc nuw <8 x i32> %i.nzs to <8 x i16>
  store <8 x i16> %i.nzt, ptr %next.gep7298, align 2, !tbaa !558
  %index.next7301 = add nuw i64 %index7295, 8     ; 2 uses
  %i.nzu = icmp eq i64 %index.next7301, %n.vec7293
  br i1 %i.nzu, label %vec.epilog.middle.block7302, label %vec.epilog.vector.body7294, !llvm.loop !312

vec.epilog.middle.block7302:                      ; preds = %vec.epilog.vector.body7294
  %cmp.n7303 = icmp eq i64 %i.nyh, %n.vec7293
  br i1 %cmp.n7303, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph163.i.i.preheader

.lr.ph163.i.i.preheader:                          ; preds = %iter.check7288, %vector.memcheck7262, %vec.epilog.iter.check7290, %vec.epilog.middle.block7302
  %.3162.i.i.ph = phi ptr [ %.2.lcssa.i.i1512, %iter.check7288 ], [ %.2.lcssa.i.i1512, %vector.memcheck7262 ], [ %i.nym, %vec.epilog.iter.check7290 ], [ %i.nze, %vec.epilog.middle.block7302 ] ; 3 uses
  %.337161.i.i.ph = phi ptr [ %.236.lcssa.i.i1511, %iter.check7288 ], [ %.236.lcssa.i.i1511, %vector.memcheck7262 ], [ %i.nyn, %vec.epilog.iter.check7290 ], [ %i.nzf, %vec.epilog.middle.block7302 ] ; 3 uses
  %.341160.i.i.ph = phi i32 [ %.240.lcssa.i.i1510, %iter.check7288 ], [ %.240.lcssa.i.i1510, %vector.memcheck7262 ], [ %i.nyp, %vec.epilog.iter.check7290 ], [ %i.nzh, %vec.epilog.middle.block7302 ] ; 4 uses
  %.345159.i.i.ph = phi ptr [ %.244.lcssa.i.i1509, %iter.check7288 ], [ %.244.lcssa.i.i1509, %vector.memcheck7262 ], [ %i.nyq, %vec.epilog.iter.check7290 ], [ %i.nzi, %vec.epilog.middle.block7302 ] ; 3 uses
  %i.nzv = sub i32 %i.ntz, %.341160.i.i.ph
  %.neg10896 = add i32 %.341160.i.i.ph, 1
  %xtraiter10301 = and i32 %i.nzv, 1
  %lcmp.mod10302.not = icmp eq i32 %xtraiter10301, 0
  br i1 %lcmp.mod10302.not, label %.lr.ph163.i.i.prol.loopexit, label %.lr.ph163.i.i.prol

.lr.ph163.i.i.prol:                               ; preds = %.lr.ph163.i.i.preheader
  %i.nzw = getelementptr inbounds nuw i8, ptr %.3162.i.i.ph, i64 2
  %i.nzx = load i16, ptr %.3162.i.i.ph, align 2, !tbaa !558
  %i.nzy = zext i16 %i.nzx to i32
  %i.nzz = shl nuw i32 %i.nzy, 16
  %i.oaa = bitcast i32 %i.nzz to float
  %i.oab = getelementptr inbounds nuw i8, ptr %.337161.i.i.ph, i64 2
  %i.oac = load i16, ptr %.337161.i.i.ph, align 2, !tbaa !558
  %i.oad = zext i16 %i.oac to i32
  %i.oae = shl nuw i32 %i.oad, 16
  %i.oaf = bitcast i32 %i.oae to float
  %i.oag = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oaa, float %i.oaf)
  %i.oah = bitcast float %i.oag to i32
  %i.oai = lshr i32 %i.oah, 16
  %i.oaj = trunc nuw i32 %i.oai to i16
  %i.oak = getelementptr inbounds nuw i8, ptr %.345159.i.i.ph, i64 2
  store i16 %i.oaj, ptr %.345159.i.i.ph, align 2, !tbaa !558
  %i.oal = add nuw nsw i32 %.341160.i.i.ph, 1
  br label %.lr.ph163.i.i.prol.loopexit

.lr.ph163.i.i.prol.loopexit:                      ; preds = %.lr.ph163.i.i.prol, %.lr.ph163.i.i.preheader
  %.3162.i.i.unr = phi ptr [ %.3162.i.i.ph, %.lr.ph163.i.i.preheader ], [ %i.nzw, %.lr.ph163.i.i.prol ]
  %.337161.i.i.unr = phi ptr [ %.337161.i.i.ph, %.lr.ph163.i.i.preheader ], [ %i.oab, %.lr.ph163.i.i.prol ]
  %.341160.i.i.unr = phi i32 [ %.341160.i.i.ph, %.lr.ph163.i.i.preheader ], [ %i.oal, %.lr.ph163.i.i.prol ]
  %.345159.i.i.unr = phi ptr [ %.345159.i.i.ph, %.lr.ph163.i.i.preheader ], [ %i.oak, %.lr.ph163.i.i.prol ]
  %i.oam = icmp eq i32 %i.ntz, %.neg10896
  br i1 %i.oam, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph163.i.i

.lr.ph154.i.i:                                    ; preds = %.preheader132.i.i, %.lr.ph154.i.i
  %.2153.i.i = phi ptr [ %i.oct, %.lr.ph154.i.i ], [ %.1.lcssa.i.i1507, %.preheader132.i.i ] ; 2 uses
  %.236152.i.i = phi ptr [ %i.ocu, %.lr.ph154.i.i ], [ %.135.lcssa.i.i1506, %.preheader132.i.i ] ; 2 uses
  %.240151.i.i = phi i32 [ %i.ocw, %.lr.ph154.i.i ], [ %.139.lcssa.i.i1505, %.preheader132.i.i ]
  %.244150.i.i = phi ptr [ %i.ocv, %.lr.ph154.i.i ], [ %.143.lcssa.i.i1504, %.preheader132.i.i ] ; 2 uses
  %i.oan = load i64, ptr %.2153.i.i, align 1, !tbaa !555
  %i.oao = insertelement <2 x i64> poison, i64 %i.oan, i64 0
  %i.oap = bitcast <2 x i64> %i.oao to <8 x i16>
  %i.oaq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.oap, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.oar = bitcast <8 x i16> %i.oaq to <4 x float> ; 3 uses
  %i.oas = load i64, ptr %.236152.i.i, align 1, !tbaa !555
  %i.oat = insertelement <2 x i64> poison, i64 %i.oas, i64 0
  %i.oau = bitcast <2 x i64> %i.oat to <8 x i16>
  %i.oav = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.oau, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.oaw = bitcast <8 x i16> %i.oav to <4 x float> ; 3 uses
  %i.oax = fcmp fast oeq <4 x float> %i.oaw, zeroinitializer
  %i.oay = fcmp fast oeq <4 x float> %i.oar, zeroinitializer
  %i.oaz = fcmp fast olt <4 x float> %i.oaw, zeroinitializer
  %i.oba = fcmp fast olt <4 x float> %i.oar, zeroinitializer
  %i.obb = select <4 x i1> %i.oba, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.obc = select <4 x i1> %i.oaz, <4 x float> %i.obb, <4 x float> zeroinitializer
  %i.obd = fdiv fast <4 x float> %i.oar, %i.oaw   ; 2 uses
  %i.obe = bitcast <4 x float> %i.obd to <4 x i32>
  %i.obf = and <4 x i32> %i.obe, splat (i32 -2147483648)
  %i.obg = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.obd) ; 3 uses
  %i.obh = fcmp fast ogt <4 x float> %i.obg, splat (float 1.000000e+00) ; 2 uses
  %i.obi = select <4 x i1> %i.obh, <4 x float> splat (float -1.000000e+00), <4 x float> %i.obg
  %i.obj = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.obg, <4 x float> splat (float 1.000000e+00))
  %i.obk = fdiv fast <4 x float> %i.obi, %i.obj   ; 3 uses
  %i.obl = fmul fast <4 x float> %i.obk, %i.obk   ; 3 uses
  %i.obm = fmul fast <4 x float> %i.obl, %i.obl   ; 7 uses
  %i.obn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obm, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.obo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obm, <4 x float> nofpclass(nan inf) %i.obn, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.obp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obm, <4 x float> nofpclass(nan inf) %i.obo, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.obq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obm, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.obr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obm, <4 x float> nofpclass(nan inf) %i.obq, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.obs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obm, <4 x float> nofpclass(nan inf) %i.obr, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.obt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obm, <4 x float> nofpclass(nan inf) %i.obs, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.obu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obl, <4 x float> nofpclass(nan inf) %i.obp, <4 x float> nofpclass(nan inf) %i.obt)
  %i.obv = fmul fast <4 x float> %i.obu, %i.obk
  %i.obw = select <4 x i1> %i.obh, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.obx = fadd fast <4 x float> %i.obv, %i.obw
  %i.oby = bitcast <4 x float> %i.obx to <4 x i32>
  %i.obz = or <4 x i32> %i.obf, %i.oby
  %i.oca = bitcast <4 x i32> %i.obz to <4 x float>
  %i.ocb = fadd fast <4 x float> %i.obc, %i.oca
  %i.occ = bitcast <8 x i16> %i.oav to <4 x i32>
  %i.ocd = and <4 x i32> %i.occ, splat (i32 -2147483648)
  %i.oce = or disjoint <4 x i32> %i.ocd, splat (i32 1078530011)
  %i.ocf = bitcast <4 x i32> %i.oce to <4 x float>
  %i.ocg = fcmp fast uge <4 x float> %i.ocf, zeroinitializer
  %i.och = bitcast <8 x i16> %i.oaq to <4 x i32>
  %i.oci = and <4 x i32> %i.och, splat (i32 -2147483648)
  %i.ocj = or disjoint <4 x i32> %i.oci, splat (i32 1070141403)
  %i.ock = select <4 x i1> %i.ocg, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.ocl = bitcast <4 x float> %i.ocb to <4 x i32>
  %i.ocm = select <4 x i1> %i.oax, <4 x i32> %i.ocj, <4 x i32> %i.ocl
  %i.ocn = select <4 x i1> %i.oay, <4 x i32> %i.ock, <4 x i32> %i.ocm
  %i.oco = bitcast <4 x i32> %i.ocn to <4 x float>
  %i.ocp = shufflevector <4 x float> %i.oco, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ocq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ocp)
  %i.ocr = bitcast <8 x bfloat> %i.ocq to <2 x i64>
  %i.ocs = extractelement <2 x i64> %i.ocr, i64 0
  store i64 %i.ocs, ptr %.244150.i.i, align 1, !tbaa !555
  %i.oct = getelementptr inbounds nuw i8, ptr %.2153.i.i, i64 8 ; 2 uses
  %i.ocu = getelementptr inbounds nuw i8, ptr %.236152.i.i, i64 8 ; 2 uses
  %i.ocv = getelementptr inbounds nuw i8, ptr %.244150.i.i, i64 8 ; 2 uses
  %i.ocw = add nuw nsw i32 %.240151.i.i, 4        ; 3 uses
  %i.ocx = or disjoint i32 %i.ocw, 3
  %i.ocy = icmp slt i32 %i.ocx, %i.ntz
  br i1 %i.ocy, label %.lr.ph154.i.i, label %.preheader.i.i1508, !llvm.loop !313

.lr.ph163.i.i:                                    ; preds = %.lr.ph163.i.i.prol.loopexit, %.lr.ph163.i.i
  %.3162.i.i = phi ptr [ %i.odo, %.lr.ph163.i.i ], [ %.3162.i.i.unr, %.lr.ph163.i.i.prol.loopexit ] ; 3 uses
  %.337161.i.i = phi ptr [ %i.odt, %.lr.ph163.i.i ], [ %.337161.i.i.unr, %.lr.ph163.i.i.prol.loopexit ] ; 3 uses
  %.341160.i.i = phi i32 [ %i.oed, %.lr.ph163.i.i ], [ %.341160.i.i.unr, %.lr.ph163.i.i.prol.loopexit ]
  %.345159.i.i = phi ptr [ %i.oec, %.lr.ph163.i.i ], [ %.345159.i.i.unr, %.lr.ph163.i.i.prol.loopexit ] ; 3 uses
  %i.ocz = getelementptr inbounds nuw i8, ptr %.3162.i.i, i64 2
  %i.oda = load i16, ptr %.3162.i.i, align 2, !tbaa !558
  %i.odb = zext i16 %i.oda to i32
  %i.odc = shl nuw i32 %i.odb, 16
  %i.odd = bitcast i32 %i.odc to float
  %i.ode = getelementptr inbounds nuw i8, ptr %.337161.i.i, i64 2
  %i.odf = load i16, ptr %.337161.i.i, align 2, !tbaa !558
  %i.odg = zext i16 %i.odf to i32
  %i.odh = shl nuw i32 %i.odg, 16
  %i.odi = bitcast i32 %i.odh to float
  %i.odj = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.odd, float %i.odi)
  %i.odk = bitcast float %i.odj to i32
  %i.odl = lshr i32 %i.odk, 16
  %i.odm = trunc nuw i32 %i.odl to i16
  %i.odn = getelementptr inbounds nuw i8, ptr %.345159.i.i, i64 2
  store i16 %i.odm, ptr %.345159.i.i, align 2, !tbaa !558
  %i.odo = getelementptr inbounds nuw i8, ptr %.3162.i.i, i64 4
  %i.odp = load i16, ptr %i.ocz, align 2, !tbaa !558
  %i.odq = zext i16 %i.odp to i32
  %i.odr = shl nuw i32 %i.odq, 16
  %i.ods = bitcast i32 %i.odr to float
  %i.odt = getelementptr inbounds nuw i8, ptr %.337161.i.i, i64 4
  %i.odu = load i16, ptr %i.ode, align 2, !tbaa !558
  %i.odv = zext i16 %i.odu to i32
  %i.odw = shl nuw i32 %i.odv, 16
  %i.odx = bitcast i32 %i.odw to float
  %i.ody = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ods, float %i.odx)
  %i.odz = bitcast float %i.ody to i32
  %i.oea = lshr i32 %i.odz, 16
  %i.oeb = trunc nuw i32 %i.oea to i16
  %i.oec = getelementptr inbounds nuw i8, ptr %.345159.i.i, i64 4
  store i16 %i.oeb, ptr %i.odn, align 2, !tbaa !558
  %i.oed = add nuw nsw i32 %.341160.i.i, 2        ; 2 uses
  %exitcond.not.i.i1513.1 = icmp eq i32 %i.oed, %i.ntz
  br i1 %exitcond.not.i.i1513.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph163.i.i, !llvm.loop !314

bb.ju:                                            ; preds = %bb.js
  %i.oee = icmp eq i32 %4, 1
  br i1 %i.oee, label %bb.jv, label %bb.ke

bb.jv:                                            ; preds = %bb.ju
  %i.oef = load i16, ptr %1, align 2, !tbaa !558
  %i.oeg = zext i16 %i.oef to i32
  %i.oeh = shl nuw i32 %i.oeg, 16
  %i.oei = bitcast i32 %i.oeh to float            ; 15 uses
  %i.oej = icmp eq i32 %.sroa.speculated.i1470, 4
  br i1 %i.oej, label %.thread129.i.i, label %bb.jw

.thread129.i.i:                                   ; preds = %bb.jv
  %i.oek = load i64, ptr %1, align 2, !tbaa !555
  %i.oel = insertelement <2 x i64> poison, i64 %i.oek, i64 0
  %i.oem = bitcast <2 x i64> %i.oel to <8 x i16>
  %i.oen = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.oem, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.oeo = bitcast <8 x i16> %i.oen to <4 x float> ; 2 uses
  %i.oep = shufflevector <4 x float> %i.oeo, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.jz

bb.jw:                                            ; preds = %bb.jv
  %i.oeq = insertelement <4 x float> poison, float %i.oei, i64 0 ; 2 uses
  %i.oer = shufflevector <4 x float> %i.oeq, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.oes = icmp eq i32 %.sroa.speculated.i1470, 8
  br i1 %i.oes, label %.thread128.i.i, label %bb.jx

.thread128.i.i:                                   ; preds = %bb.jw
  %i.oet = load <8 x bfloat>, ptr %1, align 2, !tbaa !555
  %i.oeu = fpext fast <8 x bfloat> %i.oet to <8 x float>
  br label %bb.jz

bb.jx:                                            ; preds = %bb.jw
  %i.oev = shufflevector <4 x float> %i.oeq, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.oew = icmp eq i32 %.sroa.speculated.i1470, 16
  br i1 %i.oew, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  %i.oex = load <16 x bfloat>, ptr %1, align 2, !tbaa !555
  %i.oey = fpext fast <16 x bfloat> %i.oex to <16 x float>
  br label %bb.ka

bb.jz:                                            ; preds = %bb.jx, %.thread128.i.i, %.thread129.i.i
  %i.oez = phi <8 x float> [ %i.oeu, %.thread128.i.i ], [ %i.oev, %bb.jx ], [ %i.oep, %.thread129.i.i ] ; 2 uses
  %i.ofa = phi <4 x float> [ %i.oer, %.thread128.i.i ], [ %i.oer, %bb.jx ], [ %i.oeo, %.thread129.i.i ]
  %i.ofb = shufflevector <8 x float> %i.oez, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %bb.jy
  %i.ofc = phi <8 x float> [ %i.oev, %bb.jy ], [ %i.oez, %bb.jz ] ; 4 uses
  %i.ofd = phi <4 x float> [ %i.oer, %bb.jy ], [ %i.ofa, %bb.jz ] ; 4 uses
  %i.ofe = phi fast <16 x float> [ %i.oey, %bb.jy ], [ %i.ofb, %bb.jz ] ; 4 uses
  %i.off = icmp sgt i32 %i.ntz, 15
  br i1 %i.off, label %.lr.ph.i42.i1499, label %.preheader136.i.i

.lr.ph.i42.i1499:                                 ; preds = %bb.ka
  %i.ofg = fcmp fast one <16 x float> %i.ofe, zeroinitializer
  %i.ofh = fcmp fast olt <16 x float> %i.ofe, zeroinitializer
  %i.ofi = bitcast <16 x float> %i.ofe to <16 x i32>
  %i.ofj = icmp slt <16 x i32> %i.ofi, zeroinitializer
  %i.ofk = select fast <16 x i1> %i.ofj, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.ofl = fdiv fast <16 x float> splat (float 1.000000e+00), %i.ofe
  br label %bb.kb

.preheader136.loopexit.i.i:                       ; preds = %bb.kb
  %i.ofm = and i32 %i.ntz, 2147483632
  br label %.preheader136.i.i

.preheader136.i.i:                                ; preds = %.preheader136.loopexit.i.i, %bb.ka
  %.039.lcssa.i.i1488 = phi i32 [ 0, %bb.ka ], [ %i.ofm, %.preheader136.loopexit.i.i ] ; 3 uses
  %.035.lcssa.i.i1489 = phi ptr [ %2, %bb.ka ], [ %i.ohe, %.preheader136.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i34.i1490 = phi ptr [ %0, %bb.ka ], [ %i.ohd, %.preheader136.loopexit.i.i ] ; 2 uses
  %i.ofn = or disjoint i32 %.039.lcssa.i.i1488, 7
  %i.ofo = icmp slt i32 %i.ofn, %i.ntz
  br i1 %i.ofo, label %.lr.ph145.i40.i, label %.preheader135.i.i

.lr.ph145.i40.i:                                  ; preds = %.preheader136.i.i
  %i.ofp = fcmp fast ueq <8 x float> %i.ofc, zeroinitializer
  %i.ofq = fcmp fast olt <8 x float> %i.ofc, zeroinitializer
  %i.ofr = bitcast <8 x float> %i.ofc to <8 x i32>
  %isneg.inv132.i.i = icmp slt <8 x i32> %i.ofr, zeroinitializer
  %i.ofs = select <8 x i1> %isneg.inv132.i.i, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.oft = fdiv fast <8 x float> splat (float 1.000000e+00), %i.ofc
  br label %bb.kc

bb.kb:                                            ; preds = %bb.kb, %.lr.ph.i42.i1499
  %.0139.i.i = phi ptr [ %0, %.lr.ph.i42.i1499 ], [ %i.ohd, %bb.kb ] ; 2 uses
  %.035138.i.i = phi ptr [ %2, %.lr.ph.i42.i1499 ], [ %i.ohe, %bb.kb ] ; 2 uses
  %.039137.i.i = phi i32 [ 0, %.lr.ph.i42.i1499 ], [ %i.ohf, %bb.kb ]
  %i.ofu = load <16 x bfloat>, ptr %.0139.i.i, align 1, !tbaa !555 ; 3 uses
  %i.ofv = fpext fast <16 x bfloat> %i.ofu to <16 x float> ; 2 uses
  %i.ofw = fcmp fast one <16 x bfloat> %i.ofu, zeroinitializer
  %i.ofx = fcmp fast olt <16 x bfloat> %i.ofu, zeroinitializer
  %i.ofy = select fast <16 x i1> %i.ofx, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.ofz = select fast <16 x i1> %i.ofh, <16 x float> %i.ofy, <16 x float> zeroinitializer
  %i.oga = fmul fast <16 x float> %i.ofv, %i.ofl  ; 2 uses
  %i.ogb = bitcast <16 x float> %i.oga to <16 x i32>
  %i.ogc = and <16 x i32> %i.ogb, splat (i32 -2147483648)
  %i.ogd = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.oga) ; 3 uses
  %i.oge = fcmp fast ogt <16 x float> %i.ogd, splat (float 1.000000e+00) ; 2 uses
  %i.ogf = select fast <16 x i1> %i.oge, <16 x float> splat (float -1.000000e+00), <16 x float> %i.ogd
  %i.ogg = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.ogd, <16 x float> splat (float 1.000000e+00))
  %i.ogh = fdiv fast <16 x float> %i.ogf, %i.ogg  ; 3 uses
  %i.ogi = fmul fast <16 x float> %i.ogh, %i.ogh  ; 3 uses
  %i.ogj = fmul fast <16 x float> %i.ogi, %i.ogi  ; 7 uses
  %i.ogk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ogj, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.ogl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ogj, <16 x float> nofpclass(nan inf) %i.ogk, <16 x float> splat (float f0xBE117200))
  %i.ogm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ogj, <16 x float> nofpclass(nan inf) %i.ogl, <16 x float> splat (float f0xBEAAAA53))
  %i.ogn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ogj, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.ogo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ogj, <16 x float> nofpclass(nan inf) %i.ogn, <16 x float> splat (float f0x3DD9ED24))
  %i.ogp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ogj, <16 x float> nofpclass(nan inf) %i.ogo, <16 x float> splat (float f0x3E4CB974))
  %i.ogq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ogj, <16 x float> nofpclass(nan inf) %i.ogp, <16 x float> splat (float 1.000000e+00))
  %i.ogr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ogi, <16 x float> nofpclass(nan inf) %i.ogm, <16 x float> nofpclass(nan inf) %i.ogq)
  %i.ogs = fmul fast <16 x float> %i.ogr, %i.ogh
  %i.ogt = select fast <16 x i1> %i.oge, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.ogu = fadd fast <16 x float> %i.ogs, %i.ogt
  %i.ogv = bitcast <16 x float> %i.ogu to <16 x i32>
  %i.ogw = or <16 x i32> %i.ogc, %i.ogv
  %i.ogx = bitcast <16 x i32> %i.ogw to <16 x float>
  %i.ogy = fadd fast <16 x float> %i.ofz, %i.ogx
  %i.ogz = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.ofv)
  %i.oha = select <16 x i1> %i.ofg, <16 x float> %i.ogy, <16 x float> %i.ogz
  %i.ohb = select <16 x i1> %i.ofw, <16 x float> %i.oha, <16 x float> %i.ofk
  %i.ohc = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ohb)
  store <16 x bfloat> %i.ohc, ptr %.035138.i.i, align 1, !tbaa !555
  %i.ohd = getelementptr inbounds nuw i8, ptr %.0139.i.i, i64 32 ; 2 uses
  %i.ohe = getelementptr inbounds nuw i8, ptr %.035138.i.i, i64 32 ; 2 uses
  %i.ohf = add nuw nsw i32 %.039137.i.i, 16       ; 2 uses
  %i.ohg = or disjoint i32 %i.ohf, 15
  %i.ohh = icmp slt i32 %i.ohg, %i.ntz
  br i1 %i.ohh, label %bb.kb, label %.preheader136.loopexit.i.i, !llvm.loop !315

.preheader135.i.i:                                ; preds = %bb.kc, %.preheader136.i.i
  %.140.lcssa.i.i1491 = phi i32 [ %.039.lcssa.i.i1488, %.preheader136.i.i ], [ %i.oje, %bb.kc ] ; 3 uses
  %.136.lcssa.i.i1492 = phi ptr [ %.035.lcssa.i.i1489, %.preheader136.i.i ], [ %i.ojd, %bb.kc ] ; 2 uses
  %.1.lcssa.i35.i1493 = phi ptr [ %.0.lcssa.i34.i1490, %.preheader136.i.i ], [ %i.ojc, %bb.kc ] ; 2 uses
  %i.ohi = or disjoint i32 %.140.lcssa.i.i1491, 3
  %i.ohj = icmp slt i32 %i.ohi, %i.ntz
  br i1 %i.ohj, label %.lr.ph152.i.i, label %.preheader.i36.i1494

.lr.ph152.i.i:                                    ; preds = %.preheader135.i.i
  %i.ohk = fcmp fast oeq <4 x float> %i.ofd, zeroinitializer
  %i.ohl = fcmp fast olt <4 x float> %i.ofd, zeroinitializer
  %i.ohm = bitcast <4 x float> %i.ofd to <4 x i32>
  %isneg.inv.i.i = icmp slt <4 x i32> %i.ohm, zeroinitializer
  %i.ohn = select <4 x i1> %isneg.inv.i.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.oho = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ofd
  br label %bb.kd

bb.kc:                                            ; preds = %bb.kc, %.lr.ph145.i40.i
  %.1144.i41.i = phi ptr [ %.0.lcssa.i34.i1490, %.lr.ph145.i40.i ], [ %i.ojc, %bb.kc ] ; 2 uses
  %.136143.i.i = phi ptr [ %.035.lcssa.i.i1489, %.lr.ph145.i40.i ], [ %i.ojd, %bb.kc ] ; 2 uses
  %.140142.i.i = phi i32 [ %.039.lcssa.i.i1488, %.lr.ph145.i40.i ], [ %i.oje, %bb.kc ]
  %i.ohp = load <8 x bfloat>, ptr %.1144.i41.i, align 1, !tbaa !555 ; 3 uses
  %i.ohq = fpext fast <8 x bfloat> %i.ohp to <8 x float> ; 2 uses
  %i.ohr = fcmp fast ueq <8 x bfloat> %i.ohp, zeroinitializer
  %i.ohs = bitcast <8 x float> %i.ohq to <8 x i32>
  %i.oht = and <8 x i32> %i.ohs, splat (i32 -2147483648)
  %i.ohu = fcmp fast olt <8 x bfloat> %i.ohp, zeroinitializer
  %i.ohv = select <8 x i1> %i.ohu, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.ohw = select <8 x i1> %i.ofq, <8 x float> %i.ohv, <8 x float> zeroinitializer
  %i.ohx = fmul fast <8 x float> %i.ohq, %i.oft   ; 2 uses
  %i.ohy = bitcast <8 x float> %i.ohx to <8 x i32>
  %i.ohz = and <8 x i32> %i.ohy, splat (i32 -2147483648)
  %i.oia = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ohx) ; 3 uses
  %i.oib = fcmp fast ogt <8 x float> %i.oia, splat (float 1.000000e+00) ; 2 uses
  %i.oic = select <8 x i1> %i.oib, <8 x float> splat (float -1.000000e+00), <8 x float> %i.oia
  %i.oid = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.oia, <8 x float> splat (float 1.000000e+00))
  %i.oie = fdiv fast <8 x float> %i.oic, %i.oid   ; 3 uses
  %i.oif = fmul fast <8 x float> %i.oie, %i.oie   ; 3 uses
  %i.oig = fmul fast <8 x float> %i.oif, %i.oif   ; 7 uses
  %i.oih = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oig, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.oii = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oig, <8 x float> nofpclass(nan inf) %i.oih, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.oij = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oig, <8 x float> nofpclass(nan inf) %i.oii, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.oik = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oig, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.oil = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oig, <8 x float> nofpclass(nan inf) %i.oik, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.oim = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oig, <8 x float> nofpclass(nan inf) %i.oil, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.oin = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oig, <8 x float> nofpclass(nan inf) %i.oim, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.oio = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oif, <8 x float> nofpclass(nan inf) %i.oij, <8 x float> nofpclass(nan inf) %i.oin)
  %i.oip = fmul fast <8 x float> %i.oio, %i.oie
  %i.oiq = select <8 x i1> %i.oib, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.oir = fadd fast <8 x float> %i.oip, %i.oiq
  %i.ois = bitcast <8 x float> %i.oir to <8 x i32>
  %i.oit = or <8 x i32> %i.ohz, %i.ois
  %i.oiu = bitcast <8 x i32> %i.oit to <8 x float>
  %i.oiv = fadd fast <8 x float> %i.ohw, %i.oiu
  %i.oiw = or disjoint <8 x i32> %i.oht, splat (i32 1070141403)
  %i.oix = bitcast <8 x float> %i.oiv to <8 x i32>
  %i.oiy = select <8 x i1> %i.ofp, <8 x i32> %i.oiw, <8 x i32> %i.oix
  %i.oiz = select <8 x i1> %i.ohr, <8 x i32> %i.ofs, <8 x i32> %i.oiy
  %i.oja = bitcast <8 x i32> %i.oiz to <8 x float>
  %i.ojb = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.oja)
  store <8 x bfloat> %i.ojb, ptr %.136143.i.i, align 1, !tbaa !555
  %i.ojc = getelementptr inbounds nuw i8, ptr %.1144.i41.i, i64 16 ; 2 uses
  %i.ojd = getelementptr inbounds nuw i8, ptr %.136143.i.i, i64 16 ; 2 uses
  %i.oje = add nuw nsw i32 %.140142.i.i, 8        ; 3 uses
  %i.ojf = or disjoint i32 %i.oje, 7
  %i.ojg = icmp slt i32 %i.ojf, %i.ntz
  br i1 %i.ojg, label %bb.kc, label %.preheader135.i.i, !llvm.loop !316

.preheader.i36.i1494:                             ; preds = %bb.kd, %.preheader135.i.i
  %.241.lcssa.i.i1495 = phi i32 [ %.140.lcssa.i.i1491, %.preheader135.i.i ], [ %i.oos, %bb.kd ] ; 5 uses
  %.237.lcssa.i.i1496 = phi ptr [ %.136.lcssa.i.i1492, %.preheader135.i.i ], [ %i.oor, %bb.kd ] ; 6 uses
  %.2.lcssa.i37.i1497 = phi ptr [ %.1.lcssa.i35.i1493, %.preheader135.i.i ], [ %i.ooq, %bb.kd ] ; 6 uses
  %i.ojh = icmp slt i32 %.241.lcssa.i.i1495, %i.ntz
  br i1 %i.ojh, label %iter.check7245, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7245:                                   ; preds = %.preheader.i36.i1494
  %.2.lcssa.i37.i14977227 = ptrtoaddr ptr %.2.lcssa.i37.i1497 to i64
  %.237.lcssa.i.i14967226 = ptrtoaddr ptr %.237.lcssa.i.i1496 to i64
  %i.oji = xor i32 %.241.lcssa.i.i1495, -1
  %i.ojj = add i32 %i.ntz, %i.oji                 ; 3 uses
  %i.ojk = zext i32 %i.ojj to i64
  %i.ojl = add nuw nsw i64 %i.ojk, 1              ; 5 uses
  %min.iters.check7229 = icmp ult i32 %i.ojj, 7
  %i.ojm = sub i64 %.2.lcssa.i37.i14977227, %.237.lcssa.i.i14967226
  %diff.check7228 = icmp ugt i64 %i.ojm, -64
  %or.cond9039.a = select i1 %min.iters.check7229, i1 true, i1 %diff.check7228
  br i1 %or.cond9039.a, label %.lr.ph159.i.i.preheader, label %vector.main.loop.iter.check7230

vector.main.loop.iter.check7230:                  ; preds = %iter.check7245
  %min.iters.check7231 = icmp ult i32 %i.ojj, 31
  br i1 %min.iters.check7231, label %vec.epilog.ph7249, label %vector.ph7232

vector.ph7232:                                    ; preds = %vector.main.loop.iter.check7230
  %i.ojn = and i64 %i.ojl, 24
  %n.vec7233 = and i64 %i.ojl, 8589934560         ; 5 uses
  %i.ojo = shl nuw nsw i64 %n.vec7233, 1          ; 2 uses
  %i.ojp = getelementptr i8, ptr %.2.lcssa.i37.i1497, i64 %i.ojo
  %i.ojq = getelementptr i8, ptr %.237.lcssa.i.i1496, i64 %i.ojo
  %i.ojr = trunc i64 %n.vec7233 to i32
  %i.ojs = add i32 %.241.lcssa.i.i1495, %i.ojr
  %i.ojt = insertelement <16 x float> poison, float %i.oei, i64 0
  %i.oju = shufflevector <16 x float> %i.ojt, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ojv = insertelement <8 x float> poison, float %i.oei, i64 0
  %i.ojw = shufflevector <8 x float> %i.ojv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ojx = insertelement <4 x float> poison, float %i.oei, i64 0
  %i.ojy = shufflevector <4 x float> %i.ojx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ojz = insertelement <2 x float> poison, float %i.oei, i64 0
  %i.oka = shufflevector <2 x float> %i.ojz, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7234

vector.body7234:                                  ; preds = %vector.ph7232, %vector.body7234
  %index7235 = phi i64 [ 0, %vector.ph7232 ], [ %index.next7239, %vector.body7234 ] ; 2 uses
  %i.okb = shl i64 %index7235, 1                  ; 2 uses
  %next.gep7236 = getelementptr i8, ptr %.2.lcssa.i37.i1497, i64 %i.okb
  %next.gep7237 = getelementptr i8, ptr %.237.lcssa.i.i1496, i64 %i.okb
  %wide.load7238 = load <32 x i16>, ptr %next.gep7236, align 2, !tbaa !558
  %i.okc = zext <32 x i16> %wide.load7238 to <32 x i32>
  %i.okd = shl nuw <32 x i32> %i.okc, splat (i32 16)
  %i.oke = bitcast <32 x i32> %i.okd to <32 x float> ; 6 uses
  %i.okf = extractelement <32 x float> %i.oke, i64 0
  %i.okg = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.okf, float %i.oei)
  %i.okh = shufflevector <32 x float> %i.oke, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.oki = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.okh, <16 x float> %i.oju)
  %i.okj = shufflevector <32 x float> %i.oke, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.okk = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.okj, <8 x float> %i.ojw)
  %i.okl = shufflevector <32 x float> %i.oke, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.okm = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.okl, <4 x float> %i.ojy)
  %i.okn = extractelement <32 x float> %i.oke, i64 29
  %i.oko = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.okn, float %i.oei)
  %i.okp = shufflevector <32 x float> %i.oke, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.okq = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.okp, <2 x float> %i.oka)
  %i.okr = insertelement <32 x float> poison, float %i.okg, i64 0
  %i.oks = shufflevector <16 x float> %i.oki, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.okt = shufflevector <32 x float> %i.okr, <32 x float> %i.oks, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.oku = shufflevector <8 x float> %i.okk, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.okv = shufflevector <32 x float> %i.okt, <32 x float> %i.oku, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.okw = shufflevector <4 x float> %i.okm, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.okx = shufflevector <32 x float> %i.okv, <32 x float> %i.okw, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.oky = insertelement <32 x float> %i.okx, float %i.oko, i64 29
  %i.okz = shufflevector <2 x float> %i.okq, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ola = shufflevector <32 x float> %i.oky, <32 x float> %i.okz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.olb = bitcast <32 x float> %i.ola to <32 x i32>
  %i.olc = lshr <32 x i32> %i.olb, splat (i32 16)
  %i.old = trunc nuw <32 x i32> %i.olc to <32 x i16>
  store <32 x i16> %i.old, ptr %next.gep7237, align 2, !tbaa !558
  %index.next7239 = add nuw i64 %index7235, 32    ; 2 uses
  %i.ole = icmp eq i64 %index.next7239, %n.vec7233
  br i1 %i.ole, label %middle.block7240, label %vector.body7234, !llvm.loop !317

middle.block7240:                                 ; preds = %vector.body7234
  %cmp.n7241 = icmp eq i64 %i.ojl, %n.vec7233
  br i1 %cmp.n7241, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7247

vec.epilog.iter.check7247:                        ; preds = %middle.block7240
  %min.epilog.iters.check7248 = icmp eq i64 %i.ojn, 0
  br i1 %min.epilog.iters.check7248, label %.lr.ph159.i.i.preheader, label %vec.epilog.ph7249, !prof !561

vec.epilog.ph7249:                                ; preds = %vector.main.loop.iter.check7230, %vec.epilog.iter.check7247
  %vec.epilog.resume.val7242 = phi i64 [ %n.vec7233, %vec.epilog.iter.check7247 ], [ 0, %vector.main.loop.iter.check7230 ]
  %n.vec7250 = and i64 %i.ojl, 8589934584         ; 4 uses
  %i.olf = shl nuw nsw i64 %n.vec7250, 1          ; 2 uses
  %i.olg = getelementptr i8, ptr %.2.lcssa.i37.i1497, i64 %i.olf
  %i.olh = getelementptr i8, ptr %.237.lcssa.i.i1496, i64 %i.olf
  %i.oli = trunc i64 %n.vec7250 to i32
  %i.olj = add i32 %.241.lcssa.i.i1495, %i.oli
  %i.olk = insertelement <4 x float> poison, float %i.oei, i64 0
  %i.oll = shufflevector <4 x float> %i.olk, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7251

vec.epilog.vector.body7251:                       ; preds = %vec.epilog.vector.body7251, %vec.epilog.ph7249
  %index7252 = phi i64 [ %vec.epilog.resume.val7242, %vec.epilog.ph7249 ], [ %index.next7256, %vec.epilog.vector.body7251 ] ; 2 uses
  %i.olm = shl i64 %index7252, 1                  ; 2 uses
  %next.gep7253 = getelementptr i8, ptr %.2.lcssa.i37.i1497, i64 %i.olm
  %next.gep7254 = getelementptr i8, ptr %.237.lcssa.i.i1496, i64 %i.olm
  %wide.load7255 = load <8 x i16>, ptr %next.gep7253, align 2, !tbaa !558
  %i.oln = zext <8 x i16> %wide.load7255 to <8 x i32>
  %i.olo = shl nuw <8 x i32> %i.oln, splat (i32 16)
  %i.olp = bitcast <8 x i32> %i.olo to <8 x float> ; 5 uses
  %i.olq = extractelement <8 x float> %i.olp, i64 0
  %i.olr = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.olq, float %i.oei)
  %i.ols = extractelement <8 x float> %i.olp, i64 1
  %i.olt = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ols, float %i.oei)
  %i.olu = extractelement <8 x float> %i.olp, i64 2
  %i.olv = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.olu, float %i.oei)
  %i.olw = shufflevector <8 x float> %i.olp, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.olx = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.olw, <4 x float> %i.oll)
  %i.oly = extractelement <8 x float> %i.olp, i64 7
  %i.olz = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oly, float %i.oei)
  %i.oma = insertelement <8 x float> poison, float %i.olr, i64 0
  %i.omb = insertelement <8 x float> %i.oma, float %i.olt, i64 1
  %i.omc = insertelement <8 x float> %i.omb, float %i.olv, i64 2
  %i.omd = shufflevector <4 x float> %i.olx, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ome = shufflevector <8 x float> %i.omc, <8 x float> %i.omd, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.omf = insertelement <8 x float> %i.ome, float %i.olz, i64 7
  %i.omg = bitcast <8 x float> %i.omf to <8 x i32>
  %i.omh = lshr <8 x i32> %i.omg, splat (i32 16)
  %i.omi = trunc nuw <8 x i32> %i.omh to <8 x i16>
  store <8 x i16> %i.omi, ptr %next.gep7254, align 2, !tbaa !558
  %index.next7256 = add nuw i64 %index7252, 8     ; 2 uses
  %i.omj = icmp eq i64 %index.next7256, %n.vec7250
  br i1 %i.omj, label %vec.epilog.middle.block7257, label %vec.epilog.vector.body7251, !llvm.loop !318

vec.epilog.middle.block7257:                      ; preds = %vec.epilog.vector.body7251
  %cmp.n7258 = icmp eq i64 %i.ojl, %n.vec7250
  br i1 %cmp.n7258, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i.i.preheader

.lr.ph159.i.i.preheader:                          ; preds = %iter.check7245, %vec.epilog.iter.check7247, %vec.epilog.middle.block7257
  %.3158.i.i.ph = phi ptr [ %.2.lcssa.i37.i1497, %iter.check7245 ], [ %i.ojp, %vec.epilog.iter.check7247 ], [ %i.olg, %vec.epilog.middle.block7257 ] ; 3 uses
  %.338157.i.i.ph = phi ptr [ %.237.lcssa.i.i1496, %iter.check7245 ], [ %i.ojq, %vec.epilog.iter.check7247 ], [ %i.olh, %vec.epilog.middle.block7257 ] ; 3 uses
  %.342156.i.i.ph = phi i32 [ %.241.lcssa.i.i1495, %iter.check7245 ], [ %i.ojs, %vec.epilog.iter.check7247 ], [ %i.olj, %vec.epilog.middle.block7257 ] ; 4 uses
  %i.omk = sub i32 %i.ntz, %.342156.i.i.ph
  %.neg10895 = add i32 %.342156.i.i.ph, 1
  %xtraiter10299 = and i32 %i.omk, 1
  %lcmp.mod10300.not = icmp eq i32 %xtraiter10299, 0
  br i1 %lcmp.mod10300.not, label %.lr.ph159.i.i.prol.loopexit, label %.lr.ph159.i.i.prol

.lr.ph159.i.i.prol:                               ; preds = %.lr.ph159.i.i.preheader
  %i.oml = getelementptr inbounds nuw i8, ptr %.3158.i.i.ph, i64 2
  %i.omm = load i16, ptr %.3158.i.i.ph, align 2, !tbaa !558
  %i.omn = zext i16 %i.omm to i32
  %i.omo = shl nuw i32 %i.omn, 16
  %i.omp = bitcast i32 %i.omo to float
  %i.omq = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.omp, float %i.oei)
  %i.omr = bitcast float %i.omq to i32
  %i.oms = lshr i32 %i.omr, 16
  %i.omt = trunc nuw i32 %i.oms to i16
  %i.omu = getelementptr inbounds nuw i8, ptr %.338157.i.i.ph, i64 2
  store i16 %i.omt, ptr %.338157.i.i.ph, align 2, !tbaa !558
  %i.omv = add nuw nsw i32 %.342156.i.i.ph, 1
  br label %.lr.ph159.i.i.prol.loopexit

.lr.ph159.i.i.prol.loopexit:                      ; preds = %.lr.ph159.i.i.prol, %.lr.ph159.i.i.preheader
  %.3158.i.i.unr = phi ptr [ %.3158.i.i.ph, %.lr.ph159.i.i.preheader ], [ %i.oml, %.lr.ph159.i.i.prol ]
  %.338157.i.i.unr = phi ptr [ %.338157.i.i.ph, %.lr.ph159.i.i.preheader ], [ %i.omu, %.lr.ph159.i.i.prol ]
  %.342156.i.i.unr = phi i32 [ %.342156.i.i.ph, %.lr.ph159.i.i.preheader ], [ %i.omv, %.lr.ph159.i.i.prol ]
  %i.omw = icmp eq i32 %i.ntz, %.neg10895
  br i1 %i.omw, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i.i

bb.kd:                                            ; preds = %bb.kd, %.lr.ph152.i.i
  %.2151.i.i = phi ptr [ %.1.lcssa.i35.i1493, %.lr.ph152.i.i ], [ %i.ooq, %bb.kd ] ; 2 uses
  %.237150.i.i = phi ptr [ %.136.lcssa.i.i1492, %.lr.ph152.i.i ], [ %i.oor, %bb.kd ] ; 2 uses
  %.241149.i.i = phi i32 [ %.140.lcssa.i.i1491, %.lr.ph152.i.i ], [ %i.oos, %bb.kd ]
  %i.omx = load i64, ptr %.2151.i.i, align 1, !tbaa !555
  %i.omy = insertelement <2 x i64> poison, i64 %i.omx, i64 0
  %i.omz = bitcast <2 x i64> %i.omy to <8 x i16>
  %i.ona = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.omz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.onb = bitcast <8 x i16> %i.ona to <4 x float> ; 3 uses
  %i.onc = fcmp fast oeq <4 x float> %i.onb, zeroinitializer
  %i.ond = fcmp fast olt <4 x float> %i.onb, zeroinitializer
  %i.one = select <4 x i1> %i.ond, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.onf = select <4 x i1> %i.ohl, <4 x float> %i.one, <4 x float> zeroinitializer
  %i.ong = fmul fast <4 x float> %i.onb, %i.oho   ; 2 uses
  %i.onh = bitcast <4 x float> %i.ong to <4 x i32>
  %i.oni = and <4 x i32> %i.onh, splat (i32 -2147483648)
  %i.onj = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ong) ; 3 uses
  %i.onk = fcmp fast ogt <4 x float> %i.onj, splat (float 1.000000e+00) ; 2 uses
  %i.onl = select <4 x i1> %i.onk, <4 x float> splat (float -1.000000e+00), <4 x float> %i.onj
  %i.onm = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.onj, <4 x float> splat (float 1.000000e+00))
  %i.onn = fdiv fast <4 x float> %i.onl, %i.onm   ; 3 uses
  %i.ono = fmul fast <4 x float> %i.onn, %i.onn   ; 3 uses
  %i.onp = fmul fast <4 x float> %i.ono, %i.ono   ; 7 uses
  %i.onq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.onp, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.onr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.onp, <4 x float> nofpclass(nan inf) %i.onq, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.ons = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.onp, <4 x float> nofpclass(nan inf) %i.onr, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.ont = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.onp, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.onu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.onp, <4 x float> nofpclass(nan inf) %i.ont, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.onv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.onp, <4 x float> nofpclass(nan inf) %i.onu, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.onw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.onp, <4 x float> nofpclass(nan inf) %i.onv, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.onx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ono, <4 x float> nofpclass(nan inf) %i.ons, <4 x float> nofpclass(nan inf) %i.onw)
  %i.ony = fmul fast <4 x float> %i.onx, %i.onn
  %i.onz = select <4 x i1> %i.onk, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.ooa = fadd fast <4 x float> %i.ony, %i.onz
  %i.oob = bitcast <4 x float> %i.ooa to <4 x i32>
  %i.ooc = or <4 x i32> %i.oni, %i.oob
  %i.ood = bitcast <4 x i32> %i.ooc to <4 x float>
  %i.ooe = fadd fast <4 x float> %i.onf, %i.ood
  %i.oof = bitcast <8 x i16> %i.ona to <4 x i32>
  %i.oog = and <4 x i32> %i.oof, splat (i32 -2147483648)
  %i.ooh = or disjoint <4 x i32> %i.oog, splat (i32 1070141403)
  %i.ooi = bitcast <4 x float> %i.ooe to <4 x i32>
  %i.ooj = select <4 x i1> %i.ohk, <4 x i32> %i.ooh, <4 x i32> %i.ooi
  %i.ook = select <4 x i1> %i.onc, <4 x i32> %i.ohn, <4 x i32> %i.ooj
  %i.ool = bitcast <4 x i32> %i.ook to <4 x float>
  %i.oom = shufflevector <4 x float> %i.ool, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.oon = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.oom)
  %i.ooo = bitcast <8 x bfloat> %i.oon to <2 x i64>
  %i.oop = extractelement <2 x i64> %i.ooo, i64 0
  store i64 %i.oop, ptr %.237150.i.i, align 1, !tbaa !555
  %i.ooq = getelementptr inbounds nuw i8, ptr %.2151.i.i, i64 8 ; 2 uses
  %i.oor = getelementptr inbounds nuw i8, ptr %.237150.i.i, i64 8 ; 2 uses
  %i.oos = add nuw nsw i32 %.241149.i.i, 4        ; 3 uses
  %i.oot = or disjoint i32 %i.oos, 3
  %i.oou = icmp slt i32 %i.oot, %i.ntz
  br i1 %i.oou, label %bb.kd, label %.preheader.i36.i1494, !llvm.loop !319

.lr.ph159.i.i:                                    ; preds = %.lr.ph159.i.i.prol.loopexit, %.lr.ph159.i.i
  %.3158.i.i = phi ptr [ %i.opf, %.lr.ph159.i.i ], [ %.3158.i.i.unr, %.lr.ph159.i.i.prol.loopexit ] ; 3 uses
  %.338157.i.i = phi ptr [ %i.opo, %.lr.ph159.i.i ], [ %.338157.i.i.unr, %.lr.ph159.i.i.prol.loopexit ] ; 3 uses
  %.342156.i.i = phi i32 [ %i.opp, %.lr.ph159.i.i ], [ %.342156.i.i.unr, %.lr.ph159.i.i.prol.loopexit ]
  %i.oov = getelementptr inbounds nuw i8, ptr %.3158.i.i, i64 2
  %i.oow = load i16, ptr %.3158.i.i, align 2, !tbaa !558
  %i.oox = zext i16 %i.oow to i32
  %i.ooy = shl nuw i32 %i.oox, 16
  %i.ooz = bitcast i32 %i.ooy to float
  %i.opa = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ooz, float %i.oei)
  %i.opb = bitcast float %i.opa to i32
  %i.opc = lshr i32 %i.opb, 16
  %i.opd = trunc nuw i32 %i.opc to i16
  %i.ope = getelementptr inbounds nuw i8, ptr %.338157.i.i, i64 2
  store i16 %i.opd, ptr %.338157.i.i, align 2, !tbaa !558
  %i.opf = getelementptr inbounds nuw i8, ptr %.3158.i.i, i64 4
  %i.opg = load i16, ptr %i.oov, align 2, !tbaa !558
  %i.oph = zext i16 %i.opg to i32
  %i.opi = shl nuw i32 %i.oph, 16
  %i.opj = bitcast i32 %i.opi to float
  %i.opk = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.opj, float %i.oei)
  %i.opl = bitcast float %i.opk to i32
  %i.opm = lshr i32 %i.opl, 16
  %i.opn = trunc nuw i32 %i.opm to i16
  %i.opo = getelementptr inbounds nuw i8, ptr %.338157.i.i, i64 4
  store i16 %i.opn, ptr %i.ope, align 2, !tbaa !558
  %i.opp = add nuw nsw i32 %.342156.i.i, 2        ; 2 uses
  %exitcond.not.i38.i1498.1 = icmp eq i32 %i.opp, %i.ntz
  br i1 %exitcond.not.i38.i1498.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i.i, !llvm.loop !320

bb.ke:                                            ; preds = %bb.ju
  %i.opq = icmp eq i32 %3, 1
  br i1 %i.opq, label %bb.kf, label %bb.ko

bb.kf:                                            ; preds = %bb.ke
  %i.opr = load i16, ptr %0, align 2, !tbaa !558
  %i.ops = zext i16 %i.opr to i32
  %i.opt = shl nuw i32 %i.ops, 16
  %i.opu = bitcast i32 %i.opt to float            ; 15 uses
  %i.opv = icmp eq i32 %.sroa.speculated.i1470, 4
  br i1 %i.opv, label %.thread129.i76.i, label %bb.kg

.thread129.i76.i:                                 ; preds = %bb.kf
  %i.opw = load i64, ptr %0, align 2, !tbaa !555
  %i.opx = insertelement <2 x i64> poison, i64 %i.opw, i64 0
  %i.opy = bitcast <2 x i64> %i.opx to <8 x i16>
  %i.opz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.opy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.oqa = bitcast <8 x i16> %i.opz to <4 x float> ; 2 uses
  %i.oqb = shufflevector <4 x float> %i.oqa, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.kj

bb.kg:                                            ; preds = %bb.kf
  %i.oqc = insertelement <4 x float> poison, float %i.opu, i64 0 ; 2 uses
  %i.oqd = shufflevector <4 x float> %i.oqc, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.oqe = icmp eq i32 %.sroa.speculated.i1470, 8
  br i1 %i.oqe, label %.thread128.i75.i, label %bb.kh

.thread128.i75.i:                                 ; preds = %bb.kg
  %i.oqf = load <8 x bfloat>, ptr %0, align 2, !tbaa !555
  %i.oqg = fpext fast <8 x bfloat> %i.oqf to <8 x float>
  br label %bb.kj

bb.kh:                                            ; preds = %bb.kg
  %i.oqh = shufflevector <4 x float> %i.oqc, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.oqi = icmp eq i32 %.sroa.speculated.i1470, 16
  br i1 %i.oqi, label %bb.ki, label %bb.kj

bb.ki:                                            ; preds = %bb.kh
  %i.oqj = load <16 x bfloat>, ptr %0, align 2, !tbaa !555
  %i.oqk = fpext fast <16 x bfloat> %i.oqj to <16 x float>
  br label %bb.kk

bb.kj:                                            ; preds = %bb.kh, %.thread128.i75.i, %.thread129.i76.i
  %i.oql = phi <8 x float> [ %i.oqg, %.thread128.i75.i ], [ %i.oqh, %bb.kh ], [ %i.oqb, %.thread129.i76.i ] ; 2 uses
  %i.oqm = phi <4 x float> [ %i.oqd, %.thread128.i75.i ], [ %i.oqd, %bb.kh ], [ %i.oqa, %.thread129.i76.i ]
  %i.oqn = shufflevector <8 x float> %i.oql, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %bb.ki
  %i.oqo = phi <8 x float> [ %i.oqh, %bb.ki ], [ %i.oql, %bb.kj ] ; 4 uses
  %i.oqp = phi <4 x float> [ %i.oqd, %bb.ki ], [ %i.oqm, %bb.kj ] ; 4 uses
  %i.oqq = phi fast <16 x float> [ %i.oqk, %bb.ki ], [ %i.oqn, %bb.kj ] ; 4 uses
  %i.oqr = icmp sgt i32 %i.ntz, 15
  br i1 %i.oqr, label %.lr.ph.i70.i.a, label %.preheader136.i43.i.a

.lr.ph.i70.i.a:                                   ; preds = %bb.kk
  %i.oqs = fcmp fast one <16 x float> %i.oqq, zeroinitializer
  %i.oqt = fcmp fast olt <16 x float> %i.oqq, zeroinitializer
  %i.oqu = select fast <16 x i1> %i.oqt, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.oqv = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.oqq)
  br label %bb.kl

.preheader136.loopexit.i74.i:                     ; preds = %bb.kl
  %i.oqw = and i32 %i.ntz, 2147483632
  br label %.preheader136.i43.i.a

.preheader136.i43.i.a:                            ; preds = %.preheader136.loopexit.i74.i, %bb.kk
  %.039.lcssa.i44.i1478 = phi i32 [ 0, %bb.kk ], [ %i.oqw, %.preheader136.loopexit.i74.i ] ; 3 uses
  %.035.lcssa.i45.i1479 = phi ptr [ %2, %bb.kk ], [ %i.osq, %.preheader136.loopexit.i74.i ] ; 2 uses
  %.0.lcssa.i46.i1480 = phi ptr [ %1, %bb.kk ], [ %i.osp, %.preheader136.loopexit.i74.i ] ; 2 uses
  %i.oqx = or disjoint i32 %.039.lcssa.i44.i1478, 7
  %i.oqy = icmp slt i32 %i.oqx, %i.ntz
  br i1 %i.oqy, label %.lr.ph145.i64.i.a, label %.preheader135.i47.i.a

.lr.ph145.i64.i.a:                                ; preds = %.preheader136.i43.i.a
  %i.oqz = fcmp fast ueq <8 x float> %i.oqo, zeroinitializer
  %i.ora = bitcast <8 x float> %i.oqo to <8 x i32>
  %i.orb = and <8 x i32> %i.ora, splat (i32 -2147483648)
  %i.orc = fcmp fast olt <8 x float> %i.oqo, zeroinitializer
  %i.ord = select <8 x i1> %i.orc, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.ore = or disjoint <8 x i32> %i.orb, splat (i32 1070141403)
  br label %bb.km

bb.kl:                                            ; preds = %bb.kl, %.lr.ph.i70.i.a
  %.0139.i71.i = phi ptr [ %1, %.lr.ph.i70.i.a ], [ %i.osp, %bb.kl ] ; 2 uses
  %.035138.i72.i = phi ptr [ %2, %.lr.ph.i70.i.a ], [ %i.osq, %bb.kl ] ; 2 uses
  %.039137.i73.i = phi i32 [ 0, %.lr.ph.i70.i.a ], [ %i.osr, %bb.kl ]
  %i.orf = load <16 x bfloat>, ptr %.0139.i71.i, align 1, !tbaa !555 ; 4 uses
  %i.org = fpext fast <16 x bfloat> %i.orf to <16 x float>
  %i.orh = fcmp fast one <16 x bfloat> %i.orf, zeroinitializer
  %i.ori = fcmp fast olt <16 x bfloat> %i.orf, zeroinitializer
  %i.orj = select fast <16 x i1> %i.ori, <16 x float> %i.oqu, <16 x float> zeroinitializer
  %i.ork = fdiv fast <16 x float> %i.oqq, %i.org  ; 2 uses
  %i.orl = bitcast <16 x float> %i.ork to <16 x i32>
  %i.orm = and <16 x i32> %i.orl, splat (i32 -2147483648)
  %i.orn = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.ork) ; 3 uses
  %i.oro = fcmp fast ogt <16 x float> %i.orn, splat (float 1.000000e+00) ; 2 uses
  %i.orp = select fast <16 x i1> %i.oro, <16 x float> splat (float -1.000000e+00), <16 x float> %i.orn
  %i.orq = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.orn, <16 x float> splat (float 1.000000e+00))
  %i.orr = fdiv fast <16 x float> %i.orp, %i.orq  ; 3 uses
  %i.ors = fmul fast <16 x float> %i.orr, %i.orr  ; 3 uses
  %i.ort = fmul fast <16 x float> %i.ors, %i.ors  ; 7 uses
  %i.oru = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ort, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.orv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ort, <16 x float> nofpclass(nan inf) %i.oru, <16 x float> splat (float f0xBE117200))
  %i.orw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ort, <16 x float> nofpclass(nan inf) %i.orv, <16 x float> splat (float f0xBEAAAA53))
  %i.orx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ort, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.ory = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ort, <16 x float> nofpclass(nan inf) %i.orx, <16 x float> splat (float f0x3DD9ED24))
  %i.orz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ort, <16 x float> nofpclass(nan inf) %i.ory, <16 x float> splat (float f0x3E4CB974))
  %i.osa = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ort, <16 x float> nofpclass(nan inf) %i.orz, <16 x float> splat (float 1.000000e+00))
  %i.osb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ors, <16 x float> nofpclass(nan inf) %i.orw, <16 x float> nofpclass(nan inf) %i.osa)
  %i.osc = fmul fast <16 x float> %i.osb, %i.orr
  %i.osd = select fast <16 x i1> %i.oro, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.ose = fadd fast <16 x float> %i.osc, %i.osd
  %i.osf = bitcast <16 x float> %i.ose to <16 x i32>
  %i.osg = or <16 x i32> %i.orm, %i.osf
  %i.osh = bitcast <16 x i32> %i.osg to <16 x float>
  %i.osi = fadd fast <16 x float> %i.orj, %i.osh
  %i.osj = bitcast <16 x bfloat> %i.orf to <16 x i16>
  %i.osk = icmp slt <16 x i16> %i.osj, zeroinitializer
  %i.osl = select fast <16 x i1> %i.osk, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.osm = select <16 x i1> %i.orh, <16 x float> %i.osi, <16 x float> %i.oqv
  %i.osn = select <16 x i1> %i.oqs, <16 x float> %i.osm, <16 x float> %i.osl
  %i.oso = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.osn)
  store <16 x bfloat> %i.oso, ptr %.035138.i72.i, align 1, !tbaa !555
  %i.osp = getelementptr inbounds nuw i8, ptr %.0139.i71.i, i64 32 ; 2 uses
  %i.osq = getelementptr inbounds nuw i8, ptr %.035138.i72.i, i64 32 ; 2 uses
  %i.osr = add nuw nsw i32 %.039137.i73.i, 16     ; 2 uses
  %i.oss = or disjoint i32 %i.osr, 15
  %i.ost = icmp slt i32 %i.oss, %i.ntz
  br i1 %i.ost, label %bb.kl, label %.preheader136.loopexit.i74.i, !llvm.loop !321

.preheader135.i47.i.a:                            ; preds = %bb.km, %.preheader136.i43.i.a
  %.140.lcssa.i48.i1481 = phi i32 [ %.039.lcssa.i44.i1478, %.preheader136.i43.i.a ], [ %i.oup, %bb.km ] ; 3 uses
  %.136.lcssa.i49.i1482 = phi ptr [ %.035.lcssa.i45.i1479, %.preheader136.i43.i.a ], [ %i.ouo, %bb.km ] ; 2 uses
  %.1.lcssa.i50.i1483 = phi ptr [ %.0.lcssa.i46.i1480, %.preheader136.i43.i.a ], [ %i.oun, %bb.km ] ; 2 uses
  %i.osu = or disjoint i32 %.140.lcssa.i48.i1481, 3
  %i.osv = icmp slt i32 %i.osu, %i.ntz
  br i1 %i.osv, label %.lr.ph152.i60.i.a, label %.preheader.i51.i1484

.lr.ph152.i60.i.a:                                ; preds = %.preheader135.i47.i.a
  %i.osw = fcmp fast oeq <4 x float> %i.oqp, zeroinitializer
  %i.osx = bitcast <4 x float> %i.oqp to <4 x i32>
  %i.osy = and <4 x i32> %i.osx, splat (i32 -2147483648)
  %i.osz = fcmp fast olt <4 x float> %i.oqp, zeroinitializer
  %i.ota = select <4 x i1> %i.osz, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.otb = or disjoint <4 x i32> %i.osy, splat (i32 1070141403)
  br label %bb.kn

bb.km:                                            ; preds = %bb.km, %.lr.ph145.i64.i.a
  %.1144.i65.i.a = phi ptr [ %.0.lcssa.i46.i1480, %.lr.ph145.i64.i.a ], [ %i.oun, %bb.km ] ; 2 uses
  %.136143.i66.i.a = phi ptr [ %.035.lcssa.i45.i1479, %.lr.ph145.i64.i.a ], [ %i.ouo, %bb.km ] ; 2 uses
  %.140142.i67.i.a = phi i32 [ %.039.lcssa.i44.i1478, %.lr.ph145.i64.i.a ], [ %i.oup, %bb.km ]
  %i.otc = load <8 x bfloat>, ptr %.1144.i65.i.a, align 1, !tbaa !555 ; 4 uses
  %i.otd = fpext fast <8 x bfloat> %i.otc to <8 x float>
  %i.ote = fcmp fast ueq <8 x bfloat> %i.otc, zeroinitializer
  %i.otf = fcmp fast olt <8 x bfloat> %i.otc, zeroinitializer
  %i.otg = select <8 x i1> %i.otf, <8 x float> %i.ord, <8 x float> zeroinitializer
  %i.oth = fdiv fast <8 x float> %i.oqo, %i.otd   ; 2 uses
  %i.oti = bitcast <8 x float> %i.oth to <8 x i32>
  %i.otj = and <8 x i32> %i.oti, splat (i32 -2147483648)
  %i.otk = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.oth) ; 3 uses
  %i.otl = fcmp fast ogt <8 x float> %i.otk, splat (float 1.000000e+00) ; 2 uses
  %i.otm = select <8 x i1> %i.otl, <8 x float> splat (float -1.000000e+00), <8 x float> %i.otk
  %i.otn = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.otk, <8 x float> splat (float 1.000000e+00))
  %i.oto = fdiv fast <8 x float> %i.otm, %i.otn   ; 3 uses
  %i.otp = fmul fast <8 x float> %i.oto, %i.oto   ; 3 uses
  %i.otq = fmul fast <8 x float> %i.otp, %i.otp   ; 7 uses
  %i.otr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.otq, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.ots = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.otq, <8 x float> nofpclass(nan inf) %i.otr, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.ott = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.otq, <8 x float> nofpclass(nan inf) %i.ots, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.otu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.otq, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.otv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.otq, <8 x float> nofpclass(nan inf) %i.otu, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.otw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.otq, <8 x float> nofpclass(nan inf) %i.otv, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.otx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.otq, <8 x float> nofpclass(nan inf) %i.otw, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.oty = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.otp, <8 x float> nofpclass(nan inf) %i.ott, <8 x float> nofpclass(nan inf) %i.otx)
  %i.otz = fmul fast <8 x float> %i.oty, %i.oto
  %i.oua = select <8 x i1> %i.otl, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.oub = fadd fast <8 x float> %i.otz, %i.oua
  %i.ouc = bitcast <8 x float> %i.oub to <8 x i32>
  %i.oud = or <8 x i32> %i.otj, %i.ouc
  %i.oue = bitcast <8 x i32> %i.oud to <8 x float>
  %i.ouf = fadd fast <8 x float> %i.otg, %i.oue
  %i.oug = bitcast <8 x bfloat> %i.otc to <8 x i16>
  %isneg.i69.i = icmp sgt <8 x i16> %i.oug, splat (i16 -1)
  %i.ouh = select <8 x i1> %isneg.i69.i, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.oui = bitcast <8 x float> %i.ouf to <8 x i32>
  %i.ouj = select <8 x i1> %i.ote, <8 x i32> %i.ore, <8 x i32> %i.oui
  %i.ouk = select <8 x i1> %i.oqz, <8 x i32> %i.ouh, <8 x i32> %i.ouj
  %i.oul = bitcast <8 x i32> %i.ouk to <8 x float>
  %i.oum = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.oul)
  store <8 x bfloat> %i.oum, ptr %.136143.i66.i.a, align 1, !tbaa !555
  %i.oun = getelementptr inbounds nuw i8, ptr %.1144.i65.i.a, i64 16 ; 2 uses
  %i.ouo = getelementptr inbounds nuw i8, ptr %.136143.i66.i.a, i64 16 ; 2 uses
  %i.oup = add nuw nsw i32 %.140142.i67.i.a, 8    ; 3 uses
  %i.ouq = or disjoint i32 %i.oup, 7
  %i.our = icmp slt i32 %i.ouq, %i.ntz
  br i1 %i.our, label %bb.km, label %.preheader135.i47.i.a, !llvm.loop !322

.preheader.i51.i1484:                             ; preds = %bb.kn, %.preheader135.i47.i.a
  %.241.lcssa.i52.i1485 = phi i32 [ %.140.lcssa.i48.i1481, %.preheader135.i47.i.a ], [ %i.paf, %bb.kn ] ; 5 uses
  %.237.lcssa.i53.i1486 = phi ptr [ %.136.lcssa.i49.i1482, %.preheader135.i47.i.a ], [ %i.pae, %bb.kn ] ; 6 uses
  %.2.lcssa.i54.i1487 = phi ptr [ %.1.lcssa.i50.i1483, %.preheader135.i47.i.a ], [ %i.pad, %bb.kn ] ; 6 uses
  %i.ous = icmp slt i32 %.241.lcssa.i52.i1485, %i.ntz
  br i1 %i.ous, label %iter.check7208, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7208:                                   ; preds = %.preheader.i51.i1484
  %.2.lcssa.i54.i14877190 = ptrtoaddr ptr %.2.lcssa.i54.i1487 to i64
  %.237.lcssa.i53.i14867189 = ptrtoaddr ptr %.237.lcssa.i53.i1486 to i64
  %i.out = xor i32 %.241.lcssa.i52.i1485, -1
  %i.ouu = add i32 %i.ntz, %i.out                 ; 3 uses
  %i.ouv = zext i32 %i.ouu to i64
  %i.ouw = add nuw nsw i64 %i.ouv, 1              ; 5 uses
  %min.iters.check7192 = icmp ult i32 %i.ouu, 7
  %i.oux = sub i64 %.2.lcssa.i54.i14877190, %.237.lcssa.i53.i14867189
  %diff.check7191 = icmp ugt i64 %i.oux, -64
  %or.cond9040.a = select i1 %min.iters.check7192, i1 true, i1 %diff.check7191
  br i1 %or.cond9040.a, label %.lr.ph159.i55.i.preheader.a, label %vector.main.loop.iter.check7193

vector.main.loop.iter.check7193:                  ; preds = %iter.check7208
  %min.iters.check7194 = icmp ult i32 %i.ouu, 31
  br i1 %min.iters.check7194, label %vec.epilog.ph7212, label %vector.ph7195

vector.ph7195:                                    ; preds = %vector.main.loop.iter.check7193
  %i.ouy = and i64 %i.ouw, 24
  %n.vec7196 = and i64 %i.ouw, 8589934560         ; 5 uses
  %i.ouz = shl nuw nsw i64 %n.vec7196, 1          ; 2 uses
  %i.ova = getelementptr i8, ptr %.2.lcssa.i54.i1487, i64 %i.ouz
  %i.ovb = getelementptr i8, ptr %.237.lcssa.i53.i1486, i64 %i.ouz
  %i.ovc = trunc i64 %n.vec7196 to i32
  %i.ovd = add i32 %.241.lcssa.i52.i1485, %i.ovc
  %i.ove = insertelement <16 x float> poison, float %i.opu, i64 0
  %i.ovf = shufflevector <16 x float> %i.ove, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ovg = insertelement <8 x float> poison, float %i.opu, i64 0
  %i.ovh = shufflevector <8 x float> %i.ovg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ovi = insertelement <4 x float> poison, float %i.opu, i64 0
  %i.ovj = shufflevector <4 x float> %i.ovi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ovk = insertelement <2 x float> poison, float %i.opu, i64 0
  %i.ovl = shufflevector <2 x float> %i.ovk, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7197

vector.body7197:                                  ; preds = %vector.ph7195, %vector.body7197
  %index7198 = phi i64 [ 0, %vector.ph7195 ], [ %index.next7202, %vector.body7197 ] ; 2 uses
  %i.ovm = shl i64 %index7198, 1                  ; 2 uses
  %next.gep7199 = getelementptr i8, ptr %.2.lcssa.i54.i1487, i64 %i.ovm
  %next.gep7200 = getelementptr i8, ptr %.237.lcssa.i53.i1486, i64 %i.ovm
  %wide.load7201 = load <32 x i16>, ptr %next.gep7199, align 2, !tbaa !558
  %i.ovn = zext <32 x i16> %wide.load7201 to <32 x i32>
  %i.ovo = shl nuw <32 x i32> %i.ovn, splat (i32 16)
  %i.ovp = bitcast <32 x i32> %i.ovo to <32 x float> ; 6 uses
  %i.ovq = extractelement <32 x float> %i.ovp, i64 0
  %i.ovr = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.opu, float %i.ovq)
  %i.ovs = shufflevector <32 x float> %i.ovp, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.ovt = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.ovf, <16 x float> %i.ovs)
  %i.ovu = shufflevector <32 x float> %i.ovp, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.ovv = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.ovh, <8 x float> %i.ovu)
  %i.ovw = shufflevector <32 x float> %i.ovp, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.ovx = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.ovj, <4 x float> %i.ovw)
  %i.ovy = extractelement <32 x float> %i.ovp, i64 29
  %i.ovz = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.opu, float %i.ovy)
  %i.owa = shufflevector <32 x float> %i.ovp, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.owb = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.ovl, <2 x float> %i.owa)
  %i.owc = insertelement <32 x float> poison, float %i.ovr, i64 0
  %i.owd = shufflevector <16 x float> %i.ovt, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.owe = shufflevector <32 x float> %i.owc, <32 x float> %i.owd, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.owf = shufflevector <8 x float> %i.ovv, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.owg = shufflevector <32 x float> %i.owe, <32 x float> %i.owf, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.owh = shufflevector <4 x float> %i.ovx, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.owi = shufflevector <32 x float> %i.owg, <32 x float> %i.owh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.owj = insertelement <32 x float> %i.owi, float %i.ovz, i64 29
  %i.owk = shufflevector <2 x float> %i.owb, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.owl = shufflevector <32 x float> %i.owj, <32 x float> %i.owk, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.owm = bitcast <32 x float> %i.owl to <32 x i32>
  %i.own = lshr <32 x i32> %i.owm, splat (i32 16)
  %i.owo = trunc nuw <32 x i32> %i.own to <32 x i16>
  store <32 x i16> %i.owo, ptr %next.gep7200, align 2, !tbaa !558
  %index.next7202 = add nuw i64 %index7198, 32    ; 2 uses
  %i.owp = icmp eq i64 %index.next7202, %n.vec7196
  br i1 %i.owp, label %middle.block7203, label %vector.body7197, !llvm.loop !323

middle.block7203:                                 ; preds = %vector.body7197
  %cmp.n7204 = icmp eq i64 %i.ouw, %n.vec7196
  br i1 %cmp.n7204, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7210

vec.epilog.iter.check7210:                        ; preds = %middle.block7203
  %min.epilog.iters.check7211 = icmp eq i64 %i.ouy, 0
  br i1 %min.epilog.iters.check7211, label %.lr.ph159.i55.i.preheader.a, label %vec.epilog.ph7212, !prof !561

vec.epilog.ph7212:                                ; preds = %vector.main.loop.iter.check7193, %vec.epilog.iter.check7210
  %vec.epilog.resume.val7205 = phi i64 [ %n.vec7196, %vec.epilog.iter.check7210 ], [ 0, %vector.main.loop.iter.check7193 ]
  %n.vec7213 = and i64 %i.ouw, 8589934584         ; 4 uses
  %i.owq = shl nuw nsw i64 %n.vec7213, 1          ; 2 uses
  %i.owr = getelementptr i8, ptr %.2.lcssa.i54.i1487, i64 %i.owq
  %i.ows = getelementptr i8, ptr %.237.lcssa.i53.i1486, i64 %i.owq
  %i.owt = trunc i64 %n.vec7213 to i32
  %i.owu = add i32 %.241.lcssa.i52.i1485, %i.owt
  %i.owv = insertelement <4 x float> poison, float %i.opu, i64 0
  %i.oww = shufflevector <4 x float> %i.owv, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7214

vec.epilog.vector.body7214:                       ; preds = %vec.epilog.vector.body7214, %vec.epilog.ph7212
  %index7215 = phi i64 [ %vec.epilog.resume.val7205, %vec.epilog.ph7212 ], [ %index.next7219, %vec.epilog.vector.body7214 ] ; 2 uses
  %i.owx = shl i64 %index7215, 1                  ; 2 uses
  %next.gep7216 = getelementptr i8, ptr %.2.lcssa.i54.i1487, i64 %i.owx
  %next.gep7217 = getelementptr i8, ptr %.237.lcssa.i53.i1486, i64 %i.owx
  %wide.load7218 = load <8 x i16>, ptr %next.gep7216, align 2, !tbaa !558
  %i.owy = zext <8 x i16> %wide.load7218 to <8 x i32>
  %i.owz = shl nuw <8 x i32> %i.owy, splat (i32 16)
  %i.oxa = bitcast <8 x i32> %i.owz to <8 x float> ; 5 uses
  %i.oxb = extractelement <8 x float> %i.oxa, i64 0
  %i.oxc = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.opu, float %i.oxb)
  %i.oxd = extractelement <8 x float> %i.oxa, i64 1
  %i.oxe = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.opu, float %i.oxd)
  %i.oxf = extractelement <8 x float> %i.oxa, i64 2
  %i.oxg = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.opu, float %i.oxf)
  %i.oxh = shufflevector <8 x float> %i.oxa, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.oxi = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.oww, <4 x float> %i.oxh)
  %i.oxj = extractelement <8 x float> %i.oxa, i64 7
  %i.oxk = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.opu, float %i.oxj)
  %i.oxl = insertelement <8 x float> poison, float %i.oxc, i64 0
  %i.oxm = insertelement <8 x float> %i.oxl, float %i.oxe, i64 1
  %i.oxn = insertelement <8 x float> %i.oxm, float %i.oxg, i64 2
  %i.oxo = shufflevector <4 x float> %i.oxi, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.oxp = shufflevector <8 x float> %i.oxn, <8 x float> %i.oxo, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.oxq = insertelement <8 x float> %i.oxp, float %i.oxk, i64 7
  %i.oxr = bitcast <8 x float> %i.oxq to <8 x i32>
  %i.oxs = lshr <8 x i32> %i.oxr, splat (i32 16)
  %i.oxt = trunc nuw <8 x i32> %i.oxs to <8 x i16>
  store <8 x i16> %i.oxt, ptr %next.gep7217, align 2, !tbaa !558
  %index.next7219 = add nuw i64 %index7215, 8     ; 2 uses
  %i.oxu = icmp eq i64 %index.next7219, %n.vec7213
  br i1 %i.oxu, label %vec.epilog.middle.block7220, label %vec.epilog.vector.body7214, !llvm.loop !324

vec.epilog.middle.block7220:                      ; preds = %vec.epilog.vector.body7214
  %cmp.n7221 = icmp eq i64 %i.ouw, %n.vec7213
  br i1 %cmp.n7221, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i55.i.preheader.a

.lr.ph159.i55.i.preheader.a:                      ; preds = %iter.check7208, %vec.epilog.iter.check7210, %vec.epilog.middle.block7220
  %.3158.i56.i.ph.a = phi ptr [ %.2.lcssa.i54.i1487, %iter.check7208 ], [ %i.ova, %vec.epilog.iter.check7210 ], [ %i.owr, %vec.epilog.middle.block7220 ] ; 3 uses
  %.338157.i57.i.ph.a = phi ptr [ %.237.lcssa.i53.i1486, %iter.check7208 ], [ %i.ovb, %vec.epilog.iter.check7210 ], [ %i.ows, %vec.epilog.middle.block7220 ] ; 3 uses
  %.342156.i58.i.ph.a = phi i32 [ %.241.lcssa.i52.i1485, %iter.check7208 ], [ %i.ovd, %vec.epilog.iter.check7210 ], [ %i.owu, %vec.epilog.middle.block7220 ] ; 4 uses
  %i.oxv = sub i32 %i.ntz, %.342156.i58.i.ph.a
  %.neg10894 = add i32 %.342156.i58.i.ph.a, 1
  %xtraiter10297 = and i32 %i.oxv, 1
  %lcmp.mod10298.not = icmp eq i32 %xtraiter10297, 0
  br i1 %lcmp.mod10298.not, label %.lr.ph159.i55.i.prol.loopexit.a, label %.lr.ph159.i55.i.prol.a

.lr.ph159.i55.i.prol.a:                           ; preds = %.lr.ph159.i55.i.preheader.a
  %i.oxw = getelementptr inbounds nuw i8, ptr %.3158.i56.i.ph.a, i64 2
  %i.oxx = load i16, ptr %.3158.i56.i.ph.a, align 2, !tbaa !558
  %i.oxy = zext i16 %i.oxx to i32
  %i.oxz = shl nuw i32 %i.oxy, 16
  %i.oya = bitcast i32 %i.oxz to float
  %i.oyb = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.opu, float %i.oya)
  %i.oyc = bitcast float %i.oyb to i32
  %i.oyd = lshr i32 %i.oyc, 16
  %i.oye = trunc nuw i32 %i.oyd to i16
  %i.oyf = getelementptr inbounds nuw i8, ptr %.338157.i57.i.ph.a, i64 2
  store i16 %i.oye, ptr %.338157.i57.i.ph.a, align 2, !tbaa !558
  %i.oyg = add nuw nsw i32 %.342156.i58.i.ph.a, 1
  br label %.lr.ph159.i55.i.prol.loopexit.a

.lr.ph159.i55.i.prol.loopexit.a:                  ; preds = %.lr.ph159.i55.i.prol.a, %.lr.ph159.i55.i.preheader.a
  %.3158.i56.i.unr.a = phi ptr [ %.3158.i56.i.ph.a, %.lr.ph159.i55.i.preheader.a ], [ %i.oxw, %.lr.ph159.i55.i.prol.a ]
  %.338157.i57.i.unr.a = phi ptr [ %.338157.i57.i.ph.a, %.lr.ph159.i55.i.preheader.a ], [ %i.oyf, %.lr.ph159.i55.i.prol.a ]
  %.342156.i58.i.unr.a = phi i32 [ %.342156.i58.i.ph.a, %.lr.ph159.i55.i.preheader.a ], [ %i.oyg, %.lr.ph159.i55.i.prol.a ]
  %i.oyh = icmp eq i32 %i.ntz, %.neg10894
  br i1 %i.oyh, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i55.i.a

bb.kn:                                            ; preds = %bb.kn, %.lr.ph152.i60.i.a
  %.2151.i61.i.a = phi ptr [ %.1.lcssa.i50.i1483, %.lr.ph152.i60.i.a ], [ %i.pad, %bb.kn ] ; 2 uses
  %.237150.i62.i.a = phi ptr [ %.136.lcssa.i49.i1482, %.lr.ph152.i60.i.a ], [ %i.pae, %bb.kn ] ; 2 uses
  %.241149.i63.i.a = phi i32 [ %.140.lcssa.i48.i1481, %.lr.ph152.i60.i.a ], [ %i.paf, %bb.kn ]
  %i.oyi = load i64, ptr %.2151.i61.i.a, align 1, !tbaa !555
  %i.oyj = insertelement <2 x i64> poison, i64 %i.oyi, i64 0
  %i.oyk = bitcast <2 x i64> %i.oyj to <8 x i16>
  %i.oyl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.oyk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.oym = bitcast <8 x i16> %i.oyl to <4 x float> ; 3 uses
  %i.oyn = fcmp fast oeq <4 x float> %i.oym, zeroinitializer
  %i.oyo = fcmp fast olt <4 x float> %i.oym, zeroinitializer
  %i.oyp = select <4 x i1> %i.oyo, <4 x float> %i.ota, <4 x float> zeroinitializer
  %i.oyq = fdiv fast <4 x float> %i.oqp, %i.oym   ; 2 uses
  %i.oyr = bitcast <4 x float> %i.oyq to <4 x i32>
  %i.oys = and <4 x i32> %i.oyr, splat (i32 -2147483648)
  %i.oyt = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oyq) ; 3 uses
  %i.oyu = fcmp fast ogt <4 x float> %i.oyt, splat (float 1.000000e+00) ; 2 uses
  %i.oyv = select <4 x i1> %i.oyu, <4 x float> splat (float -1.000000e+00), <4 x float> %i.oyt
  %i.oyw = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.oyt, <4 x float> splat (float 1.000000e+00))
  %i.oyx = fdiv fast <4 x float> %i.oyv, %i.oyw   ; 3 uses
  %i.oyy = fmul fast <4 x float> %i.oyx, %i.oyx   ; 3 uses
  %i.oyz = fmul fast <4 x float> %i.oyy, %i.oyy   ; 7 uses
  %i.oza = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.oyz, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.ozb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.oyz, <4 x float> nofpclass(nan inf) %i.oza, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.ozc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.oyz, <4 x float> nofpclass(nan inf) %i.ozb, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.ozd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.oyz, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.oze = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.oyz, <4 x float> nofpclass(nan inf) %i.ozd, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.ozf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.oyz, <4 x float> nofpclass(nan inf) %i.oze, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.ozg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.oyz, <4 x float> nofpclass(nan inf) %i.ozf, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.ozh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.oyy, <4 x float> nofpclass(nan inf) %i.ozc, <4 x float> nofpclass(nan inf) %i.ozg)
  %i.ozi = fmul fast <4 x float> %i.ozh, %i.oyx
  %i.ozj = select <4 x i1> %i.oyu, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.ozk = fadd fast <4 x float> %i.ozi, %i.ozj
  %i.ozl = bitcast <4 x float> %i.ozk to <4 x i32>
  %i.ozm = or <4 x i32> %i.oys, %i.ozl
  %i.ozn = bitcast <4 x i32> %i.ozm to <4 x float>
  %i.ozo = fadd fast <4 x float> %i.oyp, %i.ozn
  %i.ozp = bitcast <8 x i16> %i.oyl to <4 x i32>
  %i.ozq = and <4 x i32> %i.ozp, splat (i32 -2147483648)
  %i.ozr = or disjoint <4 x i32> %i.ozq, splat (i32 1078530011)
  %i.ozs = bitcast <4 x i32> %i.ozr to <4 x float>
  %i.ozt = fcmp fast uge <4 x float> %i.ozs, zeroinitializer
  %i.ozu = select <4 x i1> %i.ozt, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.ozv = bitcast <4 x float> %i.ozo to <4 x i32>
  %i.ozw = select <4 x i1> %i.oyn, <4 x i32> %i.otb, <4 x i32> %i.ozv
  %i.ozx = select <4 x i1> %i.osw, <4 x i32> %i.ozu, <4 x i32> %i.ozw
  %i.ozy = bitcast <4 x i32> %i.ozx to <4 x float>
  %i.ozz = shufflevector <4 x float> %i.ozy, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.paa = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ozz)
  %i.pab = bitcast <8 x bfloat> %i.paa to <2 x i64>
  %i.pac = extractelement <2 x i64> %i.pab, i64 0
  store i64 %i.pac, ptr %.237150.i62.i.a, align 1, !tbaa !555
  %i.pad = getelementptr inbounds nuw i8, ptr %.2151.i61.i.a, i64 8 ; 2 uses
  %i.pae = getelementptr inbounds nuw i8, ptr %.237150.i62.i.a, i64 8 ; 2 uses
  %i.paf = add nuw nsw i32 %.241149.i63.i.a, 4    ; 3 uses
  %i.pag = or disjoint i32 %i.paf, 3
  %i.pah = icmp slt i32 %i.pag, %i.ntz
  br i1 %i.pah, label %bb.kn, label %.preheader.i51.i1484, !llvm.loop !325

.lr.ph159.i55.i.a:                                ; preds = %.lr.ph159.i55.i.prol.loopexit.a, %.lr.ph159.i55.i.a
  %.3158.i56.i.a = phi ptr [ %i.pas, %.lr.ph159.i55.i.a ], [ %.3158.i56.i.unr.a, %.lr.ph159.i55.i.prol.loopexit.a ] ; 3 uses
  %.338157.i57.i.a = phi ptr [ %i.pbb, %.lr.ph159.i55.i.a ], [ %.338157.i57.i.unr.a, %.lr.ph159.i55.i.prol.loopexit.a ] ; 3 uses
  %.342156.i58.i.a = phi i32 [ %i.pbc, %.lr.ph159.i55.i.a ], [ %.342156.i58.i.unr.a, %.lr.ph159.i55.i.prol.loopexit.a ]
  %i.pai = getelementptr inbounds nuw i8, ptr %.3158.i56.i.a, i64 2
  %i.paj = load i16, ptr %.3158.i56.i.a, align 2, !tbaa !558
  %i.pak = zext i16 %i.paj to i32
  %i.pal = shl nuw i32 %i.pak, 16
  %i.pam = bitcast i32 %i.pal to float
  %i.pan = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.opu, float %i.pam)
  %i.pao = bitcast float %i.pan to i32
  %i.pap = lshr i32 %i.pao, 16
  %i.paq = trunc nuw i32 %i.pap to i16
  %i.par = getelementptr inbounds nuw i8, ptr %.338157.i57.i.a, i64 2
  store i16 %i.paq, ptr %.338157.i57.i.a, align 2, !tbaa !558
  %i.pas = getelementptr inbounds nuw i8, ptr %.3158.i56.i.a, i64 4
  %i.pat = load i16, ptr %i.pai, align 2, !tbaa !558
  %i.pau = zext i16 %i.pat to i32
  %i.pav = shl nuw i32 %i.pau, 16
  %i.paw = bitcast i32 %i.pav to float
  %i.pax = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.opu, float %i.paw)
  %i.pay = bitcast float %i.pax to i32
  %i.paz = lshr i32 %i.pay, 16
  %i.pba = trunc nuw i32 %i.paz to i16
  %i.pbb = getelementptr inbounds nuw i8, ptr %.338157.i57.i.a, i64 4
  store i16 %i.pba, ptr %i.par, align 2, !tbaa !558
  %i.pbc = add nuw nsw i32 %.342156.i58.i.a, 2    ; 2 uses
  %exitcond.not.i59.i.1.a = icmp eq i32 %i.pbc, %i.ntz
  br i1 %exitcond.not.i59.i.1.a, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i55.i.a, !llvm.loop !326

bb.ko:                                            ; preds = %bb.ke, %bb.jr
  %i.pbd = icmp eq i32 %6, 1
  br i1 %i.pbd, label %bb.kp, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.kp:                                            ; preds = %bb.ko
  %i.pbe = icmp eq i32 %3, %4
  br i1 %i.pbe, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  switch i32 %.sroa.speculated.i1470, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 16, label %.preheader.i80.i
    i32 8, label %.preheader123.i.i
    i32 4, label %.preheader125.i.i
  ]

.preheader125.i.i:                                ; preds = %bb.kq
  %i.pbf = icmp sgt i32 %.sroa.speculated104.i, 0
  br i1 %i.pbf, label %.lr.ph.i77.i.a, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader123.i.i:                                ; preds = %bb.kq
  %i.pbg = icmp sgt i32 %.sroa.speculated104.i, 0
  br i1 %i.pbg, label %.lr.ph135.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader.i80.i:                                 ; preds = %bb.kq
  %i.pbh = icmp sgt i32 %.sroa.speculated104.i, 0
  br i1 %i.pbh, label %.lr.ph140.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph140.i.i:                                    ; preds = %.preheader.i80.i, %.lr.ph140.i.i
  %.031139.i.i = phi ptr [ %i.pdc, %.lr.ph140.i.i ], [ %0, %.preheader.i80.i ] ; 2 uses
  %.033138.i.i = phi ptr [ %i.pdd, %.lr.ph140.i.i ], [ %1, %.preheader.i80.i ] ; 2 uses
  %.036137.i.i = phi i32 [ %i.pdf, %.lr.ph140.i.i ], [ 0, %.preheader.i80.i ]
  %.037136.i.i = phi ptr [ %i.pde, %.lr.ph140.i.i ], [ %2, %.preheader.i80.i ] ; 2 uses
  %i.pbi = load <16 x bfloat>, ptr %.031139.i.i, align 1, !tbaa !555 ; 3 uses
  %i.pbj = fpext fast <16 x bfloat> %i.pbi to <16 x float> ; 2 uses
  %i.pbk = load i16, ptr %.033138.i.i, align 2, !tbaa !558
  %i.pbl = zext i16 %i.pbk to i32
  %i.pbm = shl nuw i32 %i.pbl, 16
  %i.pbn = insertelement <16 x i32> poison, i32 %i.pbm, i64 0
  %i.pbo = bitcast <16 x i32> %i.pbn to <16 x float>
  %i.pbp = shufflevector <16 x float> %i.pbo, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.pbq = fcmp fast one <16 x float> %i.pbp, zeroinitializer
  %i.pbr = fcmp fast one <16 x bfloat> %i.pbi, zeroinitializer
  %i.pbs = fcmp fast olt <16 x float> %i.pbp, zeroinitializer
  %i.pbt = fcmp fast olt <16 x bfloat> %i.pbi, zeroinitializer
  %i.pbu = select fast <16 x i1> %i.pbt, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.pbv = select fast <16 x i1> %i.pbs, <16 x float> %i.pbu, <16 x float> zeroinitializer
  %i.pbw = fdiv fast <16 x float> %i.pbj, %i.pbp  ; 2 uses
  %i.pbx = bitcast <16 x float> %i.pbw to <16 x i32>
  %i.pby = and <16 x i32> %i.pbx, splat (i32 -2147483648)
  %i.pbz = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.pbw) ; 3 uses
  %i.pca = fcmp fast ogt <16 x float> %i.pbz, splat (float 1.000000e+00) ; 2 uses
  %i.pcb = select fast <16 x i1> %i.pca, <16 x float> splat (float -1.000000e+00), <16 x float> %i.pbz
  %i.pcc = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.pbz, <16 x float> splat (float 1.000000e+00))
  %i.pcd = fdiv fast <16 x float> %i.pcb, %i.pcc  ; 3 uses
  %i.pce = fmul fast <16 x float> %i.pcd, %i.pcd  ; 3 uses
  %i.pcf = fmul fast <16 x float> %i.pce, %i.pce  ; 7 uses
  %i.pcg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pcf, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.pch = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pcf, <16 x float> nofpclass(nan inf) %i.pcg, <16 x float> splat (float f0xBE117200))
  %i.pci = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pcf, <16 x float> nofpclass(nan inf) %i.pch, <16 x float> splat (float f0xBEAAAA53))
  %i.pcj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pcf, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.pck = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pcf, <16 x float> nofpclass(nan inf) %i.pcj, <16 x float> splat (float f0x3DD9ED24))
  %i.pcl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pcf, <16 x float> nofpclass(nan inf) %i.pck, <16 x float> splat (float f0x3E4CB974))
  %i.pcm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pcf, <16 x float> nofpclass(nan inf) %i.pcl, <16 x float> splat (float 1.000000e+00))
  %i.pcn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pce, <16 x float> nofpclass(nan inf) %i.pci, <16 x float> nofpclass(nan inf) %i.pcm)
  %i.pco = fmul fast <16 x float> %i.pcn, %i.pcd
  %i.pcp = select fast <16 x i1> %i.pca, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.pcq = fadd fast <16 x float> %i.pco, %i.pcp
  %i.pcr = bitcast <16 x float> %i.pcq to <16 x i32>
  %i.pcs = or <16 x i32> %i.pby, %i.pcr
  %i.pct = bitcast <16 x i32> %i.pcs to <16 x float>
  %i.pcu = fadd fast <16 x float> %i.pbv, %i.pct
  %i.pcv = bitcast <16 x float> %i.pbp to <16 x i32>
  %i.pcw = icmp slt <16 x i32> %i.pcv, zeroinitializer
  %i.pcx = select fast <16 x i1> %i.pcw, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.pcy = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.pbj)
  %i.pcz = select <16 x i1> %i.pbq, <16 x float> %i.pcu, <16 x float> %i.pcy
  %i.pda = select <16 x i1> %i.pbr, <16 x float> %i.pcz, <16 x float> %i.pcx
  %i.pdb = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.pda)
  store <16 x bfloat> %i.pdb, ptr %.037136.i.i, align 1, !tbaa !555
  %i.pdc = getelementptr inbounds nuw i8, ptr %.031139.i.i, i64 32
  %i.pdd = getelementptr inbounds nuw i8, ptr %.033138.i.i, i64 2
  %i.pde = getelementptr inbounds nuw i8, ptr %.037136.i.i, i64 32
  %i.pdf = add nuw nsw i32 %.036137.i.i, 1        ; 2 uses
  %exitcond144.not.i.i = icmp eq i32 %i.pdf, %.sroa.speculated104.i
  br i1 %exitcond144.not.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph140.i.i, !llvm.loop !327

.lr.ph135.i.i:                                    ; preds = %.preheader123.i.i, %.lr.ph135.i.i
  %.1134.i.i = phi ptr [ %i.pfd, %.lr.ph135.i.i ], [ %0, %.preheader123.i.i ] ; 2 uses
  %.032133.i.i = phi i32 [ %i.pfg, %.lr.ph135.i.i ], [ 0, %.preheader123.i.i ]
  %.134132.i.i = phi ptr [ %i.pfe, %.lr.ph135.i.i ], [ %1, %.preheader123.i.i ] ; 2 uses
  %.138131.i.i = phi ptr [ %i.pff, %.lr.ph135.i.i ], [ %2, %.preheader123.i.i ] ; 2 uses
  %i.pdg = load <8 x bfloat>, ptr %.1134.i.i, align 1, !tbaa !555 ; 3 uses
  %i.pdh = fpext fast <8 x bfloat> %i.pdg to <8 x float> ; 2 uses
  %i.pdi = load i16, ptr %.134132.i.i, align 2, !tbaa !558
  %i.pdj = zext i16 %i.pdi to i32
  %i.pdk = shl nuw i32 %i.pdj, 16
  %i.pdl = insertelement <8 x i32> poison, i32 %i.pdk, i64 0
  %i.pdm = bitcast <8 x i32> %i.pdl to <8 x float>
  %i.pdn = shufflevector <8 x float> %i.pdm, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.pdo = fcmp fast ueq <8 x float> %i.pdn, zeroinitializer
  %i.pdp = fcmp fast ueq <8 x bfloat> %i.pdg, zeroinitializer
  %i.pdq = bitcast <8 x float> %i.pdh to <8 x i32>
  %i.pdr = and <8 x i32> %i.pdq, splat (i32 -2147483648)
  %i.pds = fcmp fast olt <8 x float> %i.pdn, zeroinitializer
  %i.pdt = fcmp fast olt <8 x bfloat> %i.pdg, zeroinitializer
  %i.pdu = select <8 x i1> %i.pdt, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.pdv = select <8 x i1> %i.pds, <8 x float> %i.pdu, <8 x float> zeroinitializer
  %i.pdw = fdiv fast <8 x float> %i.pdh, %i.pdn   ; 2 uses
  %i.pdx = bitcast <8 x float> %i.pdw to <8 x i32>
  %i.pdy = and <8 x i32> %i.pdx, splat (i32 -2147483648)
  %i.pdz = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.pdw) ; 3 uses
  %i.pea = fcmp fast ogt <8 x float> %i.pdz, splat (float 1.000000e+00) ; 2 uses
  %i.peb = select <8 x i1> %i.pea, <8 x float> splat (float -1.000000e+00), <8 x float> %i.pdz
  %i.pec = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.pdz, <8 x float> splat (float 1.000000e+00))
  %i.ped = fdiv fast <8 x float> %i.peb, %i.pec   ; 3 uses
  %i.pee = fmul fast <8 x float> %i.ped, %i.ped   ; 3 uses
  %i.pef = fmul fast <8 x float> %i.pee, %i.pee   ; 7 uses
  %i.peg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pef, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.peh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pef, <8 x float> nofpclass(nan inf) %i.peg, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.pei = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pef, <8 x float> nofpclass(nan inf) %i.peh, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.pej = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pef, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.pek = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pef, <8 x float> nofpclass(nan inf) %i.pej, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.pel = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pef, <8 x float> nofpclass(nan inf) %i.pek, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.pem = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pef, <8 x float> nofpclass(nan inf) %i.pel, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.pen = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pee, <8 x float> nofpclass(nan inf) %i.pei, <8 x float> nofpclass(nan inf) %i.pem)
  %i.peo = fmul fast <8 x float> %i.pen, %i.ped
  %i.pep = select <8 x i1> %i.pea, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.peq = fadd fast <8 x float> %i.peo, %i.pep
  %i.per = bitcast <8 x float> %i.peq to <8 x i32>
  %i.pes = or <8 x i32> %i.pdy, %i.per
  %i.pet = bitcast <8 x i32> %i.pes to <8 x float>
  %i.peu = fadd fast <8 x float> %i.pdv, %i.pet
  %i.pev = bitcast <8 x float> %i.pdn to <8 x i32>
  %i.pew = or disjoint <8 x i32> %i.pdr, splat (i32 1070141403)
  %isneg.inv120.i.i = icmp slt <8 x i32> %i.pev, zeroinitializer
  %i.pex = select <8 x i1> %isneg.inv120.i.i, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.pey = bitcast <8 x float> %i.peu to <8 x i32>
  %i.pez = select <8 x i1> %i.pdo, <8 x i32> %i.pew, <8 x i32> %i.pey
  %i.pfa = select <8 x i1> %i.pdp, <8 x i32> %i.pex, <8 x i32> %i.pez
  %i.pfb = bitcast <8 x i32> %i.pfa to <8 x float>
  %i.pfc = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.pfb)
  store <8 x bfloat> %i.pfc, ptr %.138131.i.i, align 1, !tbaa !555
  %i.pfd = getelementptr inbounds nuw i8, ptr %.1134.i.i, i64 16
  %i.pfe = getelementptr inbounds nuw i8, ptr %.134132.i.i, i64 2
  %i.pff = getelementptr inbounds nuw i8, ptr %.138131.i.i, i64 16
  %i.pfg = add nuw nsw i32 %.032133.i.i, 1        ; 2 uses
  %exitcond143.not.i.i = icmp eq i32 %i.pfg, %.sroa.speculated104.i
  br i1 %exitcond143.not.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph135.i.i, !llvm.loop !328

.lr.ph.i77.i.a:                                   ; preds = %.preheader125.i.i, %.lr.ph.i77.i.a
  %.0130.i.i = phi i32 [ %i.phn, %.lr.ph.i77.i.a ], [ 0, %.preheader125.i.i ]
  %.2129.i.i = phi ptr [ %i.phk, %.lr.ph.i77.i.a ], [ %0, %.preheader125.i.i ] ; 2 uses
  %.235128.i.i = phi ptr [ %i.phl, %.lr.ph.i77.i.a ], [ %1, %.preheader125.i.i ] ; 2 uses
  %.239127.i.i = phi ptr [ %i.phm, %.lr.ph.i77.i.a ], [ %2, %.preheader125.i.i ] ; 2 uses
  %i.pfh = load i64, ptr %.2129.i.i, align 1, !tbaa !555
  %i.pfi = insertelement <2 x i64> poison, i64 %i.pfh, i64 0
  %i.pfj = bitcast <2 x i64> %i.pfi to <8 x i16>
  %i.pfk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pfj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.pfl = bitcast <8 x i16> %i.pfk to <4 x float> ; 3 uses
  %i.pfm = load i16, ptr %.235128.i.i, align 2, !tbaa !558
  %i.pfn = zext i16 %i.pfm to i32
  %i.pfo = shl nuw i32 %i.pfn, 16
  %i.pfp = insertelement <4 x i32> poison, i32 %i.pfo, i64 0
  %i.pfq = bitcast <4 x i32> %i.pfp to <4 x float>
  %i.pfr = shufflevector <4 x float> %i.pfq, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.pfs = fcmp fast oeq <4 x float> %i.pfr, zeroinitializer
  %i.pft = fcmp fast oeq <4 x float> %i.pfl, zeroinitializer
  %i.pfu = fcmp fast olt <4 x float> %i.pfr, zeroinitializer
  %i.pfv = fcmp fast olt <4 x float> %i.pfl, zeroinitializer
  %i.pfw = select <4 x i1> %i.pfv, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.pfx = select <4 x i1> %i.pfu, <4 x float> %i.pfw, <4 x float> zeroinitializer
  %i.pfy = fdiv fast <4 x float> %i.pfl, %i.pfr   ; 2 uses
  %i.pfz = bitcast <4 x float> %i.pfy to <4 x i32>
  %i.pga = and <4 x i32> %i.pfz, splat (i32 -2147483648)
  %i.pgb = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pfy) ; 3 uses
  %i.pgc = fcmp fast ogt <4 x float> %i.pgb, splat (float 1.000000e+00) ; 2 uses
  %i.pgd = select <4 x i1> %i.pgc, <4 x float> splat (float -1.000000e+00), <4 x float> %i.pgb
  %i.pge = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.pgb, <4 x float> splat (float 1.000000e+00))
  %i.pgf = fdiv fast <4 x float> %i.pgd, %i.pge   ; 3 uses
  %i.pgg = fmul fast <4 x float> %i.pgf, %i.pgf   ; 3 uses
  %i.pgh = fmul fast <4 x float> %i.pgg, %i.pgg   ; 7 uses
  %i.pgi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pgh, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.pgj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pgh, <4 x float> nofpclass(nan inf) %i.pgi, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.pgk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pgh, <4 x float> nofpclass(nan inf) %i.pgj, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.pgl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pgh, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.pgm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pgh, <4 x float> nofpclass(nan inf) %i.pgl, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.pgn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pgh, <4 x float> nofpclass(nan inf) %i.pgm, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.pgo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pgh, <4 x float> nofpclass(nan inf) %i.pgn, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.pgp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pgg, <4 x float> nofpclass(nan inf) %i.pgk, <4 x float> nofpclass(nan inf) %i.pgo)
  %i.pgq = fmul fast <4 x float> %i.pgp, %i.pgf
  %i.pgr = select <4 x i1> %i.pgc, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.pgs = fadd fast <4 x float> %i.pgq, %i.pgr
  %i.pgt = bitcast <4 x float> %i.pgs to <4 x i32>
  %i.pgu = or <4 x i32> %i.pga, %i.pgt
  %i.pgv = bitcast <4 x i32> %i.pgu to <4 x float>
  %i.pgw = fadd fast <4 x float> %i.pfx, %i.pgv
  %i.pgx = bitcast <4 x float> %i.pfr to <4 x i32>
  %i.pgy = bitcast <8 x i16> %i.pfk to <4 x i32>
  %i.pgz = and <4 x i32> %i.pgy, splat (i32 -2147483648)
  %i.pha = or disjoint <4 x i32> %i.pgz, splat (i32 1070141403)
  %isneg.inv.i78.i = icmp slt <4 x i32> %i.pgx, zeroinitializer
  %i.phb = select <4 x i1> %isneg.inv.i78.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.phc = bitcast <4 x float> %i.pgw to <4 x i32>
  %i.phd = select <4 x i1> %i.pfs, <4 x i32> %i.pha, <4 x i32> %i.phc
  %i.phe = select <4 x i1> %i.pft, <4 x i32> %i.phb, <4 x i32> %i.phd
  %i.phf = bitcast <4 x i32> %i.phe to <4 x float>
  %i.phg = shufflevector <4 x float> %i.phf, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.phh = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.phg)
  %i.phi = bitcast <8 x bfloat> %i.phh to <2 x i64>
  %i.phj = extractelement <2 x i64> %i.phi, i64 0
  store i64 %i.phj, ptr %.239127.i.i, align 1, !tbaa !555
  %i.phk = getelementptr inbounds nuw i8, ptr %.2129.i.i, i64 8
  %i.phl = getelementptr inbounds nuw i8, ptr %.235128.i.i, i64 2
  %i.phm = getelementptr inbounds nuw i8, ptr %.239127.i.i, i64 8
  %i.phn = add nuw nsw i32 %.0130.i.i, 1          ; 2 uses
  %exitcond.not.i79.i = icmp eq i32 %i.phn, %.sroa.speculated104.i
  br i1 %exitcond.not.i79.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i77.i.a, !llvm.loop !329

bb.kr:                                            ; preds = %bb.kp
  %i.pho = icmp eq i32 %4, 1
  br i1 %i.pho, label %bb.ks, label %bb.kw

bb.ks:                                            ; preds = %bb.kr
  %.val.i1471 = load i16, ptr %1, align 2, !tbaa !558
  %i.php = zext i16 %.val.i1471 to i32
  %i.phq = shl nuw i32 %i.php, 16
  %i.phr = bitcast i32 %i.phq to float            ; 17 uses
  %i.phs = icmp sgt i32 %i.ntz, 15
  br i1 %i.phs, label %.lr.ph.i90.i.a, label %._crit_edge.i.i1472

.lr.ph.i90.i.a:                                   ; preds = %bb.ks
  %i.pht = insertelement <16 x float> poison, float %i.phr, i64 0
  %i.phu = shufflevector <16 x float> %i.pht, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.phv = fcmp fast one <16 x float> %i.phu, zeroinitializer
  %i.phw = fcmp fast olt <16 x float> %i.phu, zeroinitializer
  %i.phx = bitcast <16 x float> %i.phu to <16 x i32>
  %i.phy = icmp slt <16 x i32> %i.phx, zeroinitializer
  %i.phz = select fast <16 x i1> %i.phy, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.pia = fdiv fast <16 x float> splat (float 1.000000e+00), %i.phu
  br label %bb.kt

bb.kt:                                            ; preds = %bb.kt, %.lr.ph.i90.i.a
  %.087.i.i = phi ptr [ %0, %.lr.ph.i90.i.a ], [ %i.pjk, %bb.kt ] ; 2 uses
  %.03086.i.i = phi ptr [ %2, %.lr.ph.i90.i.a ], [ %i.pjl, %bb.kt ] ; 2 uses
  %.03485.i.i = phi i32 [ 0, %.lr.ph.i90.i.a ], [ %i.pjm, %bb.kt ]
  %i.pib = load <16 x bfloat>, ptr %.087.i.i, align 1, !tbaa !555 ; 3 uses
  %i.pic = fpext fast <16 x bfloat> %i.pib to <16 x float> ; 2 uses
  %i.pid = fcmp fast one <16 x bfloat> %i.pib, zeroinitializer
  %i.pie = fcmp fast olt <16 x bfloat> %i.pib, zeroinitializer
  %i.pif = select fast <16 x i1> %i.pie, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.pig = select fast <16 x i1> %i.phw, <16 x float> %i.pif, <16 x float> zeroinitializer
  %i.pih = fmul fast <16 x float> %i.pic, %i.pia  ; 2 uses
  %i.pii = bitcast <16 x float> %i.pih to <16 x i32>
  %i.pij = and <16 x i32> %i.pii, splat (i32 -2147483648)
  %i.pik = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.pih) ; 3 uses
  %i.pil = fcmp fast ogt <16 x float> %i.pik, splat (float 1.000000e+00) ; 2 uses
  %i.pim = select fast <16 x i1> %i.pil, <16 x float> splat (float -1.000000e+00), <16 x float> %i.pik
  %i.pin = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.pik, <16 x float> splat (float 1.000000e+00))
  %i.pio = fdiv fast <16 x float> %i.pim, %i.pin  ; 3 uses
  %i.pip = fmul fast <16 x float> %i.pio, %i.pio  ; 3 uses
  %i.piq = fmul fast <16 x float> %i.pip, %i.pip  ; 7 uses
  %i.pir = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.piq, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.pis = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.piq, <16 x float> nofpclass(nan inf) %i.pir, <16 x float> splat (float f0xBE117200))
  %i.pit = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.piq, <16 x float> nofpclass(nan inf) %i.pis, <16 x float> splat (float f0xBEAAAA53))
  %i.piu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.piq, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.piv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.piq, <16 x float> nofpclass(nan inf) %i.piu, <16 x float> splat (float f0x3DD9ED24))
  %i.piw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.piq, <16 x float> nofpclass(nan inf) %i.piv, <16 x float> splat (float f0x3E4CB974))
  %i.pix = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.piq, <16 x float> nofpclass(nan inf) %i.piw, <16 x float> splat (float 1.000000e+00))
  %i.piy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pip, <16 x float> nofpclass(nan inf) %i.pit, <16 x float> nofpclass(nan inf) %i.pix)
  %i.piz = fmul fast <16 x float> %i.piy, %i.pio
  %i.pja = select fast <16 x i1> %i.pil, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.pjb = fadd fast <16 x float> %i.piz, %i.pja
  %i.pjc = bitcast <16 x float> %i.pjb to <16 x i32>
  %i.pjd = or <16 x i32> %i.pij, %i.pjc
  %i.pje = bitcast <16 x i32> %i.pjd to <16 x float>
  %i.pjf = fadd fast <16 x float> %i.pig, %i.pje
  %i.pjg = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.pic)
  %i.pjh = select <16 x i1> %i.phv, <16 x float> %i.pjf, <16 x float> %i.pjg
  %i.pji = select <16 x i1> %i.pid, <16 x float> %i.pjh, <16 x float> %i.phz
  %i.pjj = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.pji)
  store <16 x bfloat> %i.pjj, ptr %.03086.i.i, align 1, !tbaa !555
  %i.pjk = getelementptr inbounds nuw i8, ptr %.087.i.i, i64 32 ; 2 uses
  %i.pjl = getelementptr inbounds nuw i8, ptr %.03086.i.i, i64 32 ; 2 uses
  %i.pjm = add nuw nsw i32 %.03485.i.i, 16        ; 2 uses
  %i.pjn = or disjoint i32 %i.pjm, 15
  %i.pjo = icmp slt i32 %i.pjn, %i.ntz
  br i1 %i.pjo, label %bb.kt, label %._crit_edge.loopexit.i.i1477, !llvm.loop !330

._crit_edge.loopexit.i.i1477:                     ; preds = %bb.kt
  %i.pjp = and i32 %i.ntz, 2147483632
  br label %._crit_edge.i.i1472

._crit_edge.i.i1472:                              ; preds = %._crit_edge.loopexit.i.i1477, %bb.ks
  %.034.lcssa.i81.i = phi i32 [ 0, %bb.ks ], [ %i.pjp, %._crit_edge.loopexit.i.i1477 ] ; 3 uses
  %.030.lcssa.i.i1473 = phi ptr [ %2, %bb.ks ], [ %i.pjl, %._crit_edge.loopexit.i.i1477 ] ; 2 uses
  %.0.lcssa.i82.i = phi ptr [ %0, %bb.ks ], [ %i.pjk, %._crit_edge.loopexit.i.i1477 ] ; 2 uses
  %i.pjq = or disjoint i32 %.034.lcssa.i81.i, 7
  %i.pjr = icmp slt i32 %i.pjq, %i.ntz
  br i1 %i.pjr, label %.lr.ph94.i.i, label %._crit_edge95.i.i

.lr.ph94.i.i:                                     ; preds = %._crit_edge.i.i1472
  %i.pjs = insertelement <8 x float> poison, float %i.phr, i64 0
  %i.pjt = shufflevector <8 x float> %i.pjs, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.pju = fcmp fast ueq <8 x float> %i.pjt, zeroinitializer
  %i.pjv = fcmp fast olt <8 x float> %i.pjt, zeroinitializer
  %i.pjw = bitcast <8 x float> %i.pjt to <8 x i32>
  %isneg.inv82.i.i = icmp slt <8 x i32> %i.pjw, zeroinitializer
  %i.pjx = select <8 x i1> %isneg.inv82.i.i, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.pjy = fdiv fast <8 x float> splat (float 1.000000e+00), %i.pjt
  br label %bb.ku

bb.ku:                                            ; preds = %bb.ku, %.lr.ph94.i.i
  %.192.i.i = phi ptr [ %.0.lcssa.i82.i, %.lr.ph94.i.i ], [ %i.plm, %bb.ku ] ; 2 uses
  %.13191.i.i = phi ptr [ %.030.lcssa.i.i1473, %.lr.ph94.i.i ], [ %i.pln, %bb.ku ] ; 2 uses
  %.13590.i.i = phi i32 [ %.034.lcssa.i81.i, %.lr.ph94.i.i ], [ %i.plo, %bb.ku ]
  %i.pjz = load <8 x bfloat>, ptr %.192.i.i, align 1, !tbaa !555 ; 3 uses
  %i.pka = fpext fast <8 x bfloat> %i.pjz to <8 x float> ; 2 uses
  %i.pkb = fcmp fast ueq <8 x bfloat> %i.pjz, zeroinitializer
  %i.pkc = bitcast <8 x float> %i.pka to <8 x i32>
  %i.pkd = and <8 x i32> %i.pkc, splat (i32 -2147483648)
  %i.pke = fcmp fast olt <8 x bfloat> %i.pjz, zeroinitializer
  %i.pkf = select <8 x i1> %i.pke, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.pkg = select <8 x i1> %i.pjv, <8 x float> %i.pkf, <8 x float> zeroinitializer
  %i.pkh = fmul fast <8 x float> %i.pka, %i.pjy   ; 2 uses
  %i.pki = bitcast <8 x float> %i.pkh to <8 x i32>
  %i.pkj = and <8 x i32> %i.pki, splat (i32 -2147483648)
  %i.pkk = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.pkh) ; 3 uses
  %i.pkl = fcmp fast ogt <8 x float> %i.pkk, splat (float 1.000000e+00) ; 2 uses
  %i.pkm = select <8 x i1> %i.pkl, <8 x float> splat (float -1.000000e+00), <8 x float> %i.pkk
  %i.pkn = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.pkk, <8 x float> splat (float 1.000000e+00))
  %i.pko = fdiv fast <8 x float> %i.pkm, %i.pkn   ; 3 uses
  %i.pkp = fmul fast <8 x float> %i.pko, %i.pko   ; 3 uses
  %i.pkq = fmul fast <8 x float> %i.pkp, %i.pkp   ; 7 uses
  %i.pkr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pkq, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.pks = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pkq, <8 x float> nofpclass(nan inf) %i.pkr, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.pkt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pkq, <8 x float> nofpclass(nan inf) %i.pks, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.pku = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pkq, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.pkv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pkq, <8 x float> nofpclass(nan inf) %i.pku, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.pkw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pkq, <8 x float> nofpclass(nan inf) %i.pkv, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.pkx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pkq, <8 x float> nofpclass(nan inf) %i.pkw, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.pky = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pkp, <8 x float> nofpclass(nan inf) %i.pkt, <8 x float> nofpclass(nan inf) %i.pkx)
  %i.pkz = fmul fast <8 x float> %i.pky, %i.pko
  %i.pla = select <8 x i1> %i.pkl, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.plb = fadd fast <8 x float> %i.pkz, %i.pla
  %i.plc = bitcast <8 x float> %i.plb to <8 x i32>
  %i.pld = or <8 x i32> %i.pkj, %i.plc
  %i.ple = bitcast <8 x i32> %i.pld to <8 x float>
  %i.plf = fadd fast <8 x float> %i.pkg, %i.ple
  %i.plg = or disjoint <8 x i32> %i.pkd, splat (i32 1070141403)
  %i.plh = bitcast <8 x float> %i.plf to <8 x i32>
  %i.pli = select <8 x i1> %i.pju, <8 x i32> %i.plg, <8 x i32> %i.plh
  %i.plj = select <8 x i1> %i.pkb, <8 x i32> %i.pjx, <8 x i32> %i.pli
  %i.plk = bitcast <8 x i32> %i.plj to <8 x float>
  %i.pll = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.plk)
  store <8 x bfloat> %i.pll, ptr %.13191.i.i, align 1, !tbaa !555
  %i.plm = getelementptr inbounds nuw i8, ptr %.192.i.i, i64 16 ; 2 uses
  %i.pln = getelementptr inbounds nuw i8, ptr %.13191.i.i, i64 16 ; 2 uses
  %i.plo = add nuw nsw i32 %.13590.i.i, 8         ; 3 uses
  %i.plp = or disjoint i32 %i.plo, 7
  %i.plq = icmp slt i32 %i.plp, %i.ntz
  br i1 %i.plq, label %bb.ku, label %._crit_edge95.i.i, !llvm.loop !331

._crit_edge95.i.i:                                ; preds = %bb.ku, %._crit_edge.i.i1472
  %.135.lcssa.i83.i = phi i32 [ %.034.lcssa.i81.i, %._crit_edge.i.i1472 ], [ %i.plo, %bb.ku ] ; 3 uses
  %.131.lcssa.i.i1474 = phi ptr [ %.030.lcssa.i.i1473, %._crit_edge.i.i1472 ], [ %i.pln, %bb.ku ] ; 2 uses
  %.1.lcssa.i84.i = phi ptr [ %.0.lcssa.i82.i, %._crit_edge.i.i1472 ], [ %i.plm, %bb.ku ] ; 2 uses
  %i.plr = or disjoint i32 %.135.lcssa.i83.i, 3
  %i.pls = icmp slt i32 %i.plr, %i.ntz
  br i1 %i.pls, label %.lr.ph103.i.i, label %.preheader.i85.i

.lr.ph103.i.i:                                    ; preds = %._crit_edge95.i.i
  %i.plt = insertelement <4 x float> poison, float %i.phr, i64 0
  %i.plu = shufflevector <4 x float> %i.plt, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.plv = fcmp fast oeq <4 x float> %i.plu, zeroinitializer
  %i.plw = fcmp fast olt <4 x float> %i.plu, zeroinitializer
  %i.plx = bitcast <4 x float> %i.plu to <4 x i32>
  %isneg.inv.i89.i = icmp slt <4 x i32> %i.plx, zeroinitializer
  %i.ply = select <4 x i1> %isneg.inv.i89.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.plz = fdiv fast <4 x float> splat (float 1.000000e+00), %i.plu
  br label %bb.kv

.preheader.i85.i:                                 ; preds = %bb.kv, %._crit_edge95.i.i
  %.236.lcssa.i86.i = phi i32 [ %.135.lcssa.i83.i, %._crit_edge95.i.i ], [ %i.prl, %bb.kv ] ; 5 uses
  %.232.lcssa.i.i1475 = phi ptr [ %.131.lcssa.i.i1474, %._crit_edge95.i.i ], [ %i.prk, %bb.kv ] ; 6 uses
  %.2.lcssa.i87.i = phi ptr [ %.1.lcssa.i84.i, %._crit_edge95.i.i ], [ %i.prj, %bb.kv ] ; 6 uses
  %i.pma = icmp slt i32 %.236.lcssa.i86.i, %i.ntz
  br i1 %i.pma, label %iter.check7171, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7171:                                   ; preds = %.preheader.i85.i
  %.2.lcssa.i87.i7153 = ptrtoaddr ptr %.2.lcssa.i87.i to i64
  %.232.lcssa.i.i14757152 = ptrtoaddr ptr %.232.lcssa.i.i1475 to i64
  %i.pmb = xor i32 %.236.lcssa.i86.i, -1
  %i.pmc = add i32 %i.ntz, %i.pmb                 ; 3 uses
  %i.pmd = zext i32 %i.pmc to i64
  %i.pme = add nuw nsw i64 %i.pmd, 1              ; 5 uses
  %min.iters.check7155 = icmp ult i32 %i.pmc, 7
  %i.pmf = sub i64 %.2.lcssa.i87.i7153, %.232.lcssa.i.i14757152
  %diff.check7154 = icmp ugt i64 %i.pmf, -64
  %or.cond9041.a = select i1 %min.iters.check7155, i1 true, i1 %diff.check7154
  br i1 %or.cond9041.a, label %.lr.ph110.i.i.preheader, label %vector.main.loop.iter.check7156

vector.main.loop.iter.check7156:                  ; preds = %iter.check7171
  %min.iters.check7157 = icmp ult i32 %i.pmc, 31
  br i1 %min.iters.check7157, label %vec.epilog.ph7175, label %vector.ph7158

vector.ph7158:                                    ; preds = %vector.main.loop.iter.check7156
  %i.pmg = and i64 %i.pme, 24
  %n.vec7159 = and i64 %i.pme, 8589934560         ; 5 uses
  %i.pmh = shl nuw nsw i64 %n.vec7159, 1          ; 2 uses
  %i.pmi = getelementptr i8, ptr %.2.lcssa.i87.i, i64 %i.pmh
  %i.pmj = getelementptr i8, ptr %.232.lcssa.i.i1475, i64 %i.pmh
  %i.pmk = trunc i64 %n.vec7159 to i32
  %i.pml = add i32 %.236.lcssa.i86.i, %i.pmk
  %i.pmm = insertelement <16 x float> poison, float %i.phr, i64 0
  %i.pmn = shufflevector <16 x float> %i.pmm, <16 x float> poison, <16 x i32> zeroinitializer
  %i.pmo = insertelement <8 x float> poison, float %i.phr, i64 0
  %i.pmp = shufflevector <8 x float> %i.pmo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pmq = insertelement <4 x float> poison, float %i.phr, i64 0
  %i.pmr = shufflevector <4 x float> %i.pmq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pms = insertelement <2 x float> poison, float %i.phr, i64 0
  %i.pmt = shufflevector <2 x float> %i.pms, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7160

vector.body7160:                                  ; preds = %vector.ph7158, %vector.body7160
  %index7161 = phi i64 [ 0, %vector.ph7158 ], [ %index.next7165, %vector.body7160 ] ; 2 uses
  %i.pmu = shl i64 %index7161, 1                  ; 2 uses
  %next.gep7162 = getelementptr i8, ptr %.2.lcssa.i87.i, i64 %i.pmu
  %next.gep7163 = getelementptr i8, ptr %.232.lcssa.i.i1475, i64 %i.pmu
  %wide.load7164 = load <32 x i16>, ptr %next.gep7162, align 2, !tbaa !558
  %i.pmv = zext <32 x i16> %wide.load7164 to <32 x i32>
  %i.pmw = shl nuw <32 x i32> %i.pmv, splat (i32 16)
  %i.pmx = bitcast <32 x i32> %i.pmw to <32 x float> ; 6 uses
  %i.pmy = extractelement <32 x float> %i.pmx, i64 0
  %i.pmz = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.pmy, float %i.phr)
  %i.pna = shufflevector <32 x float> %i.pmx, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.pnb = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.pna, <16 x float> %i.pmn)
  %i.pnc = shufflevector <32 x float> %i.pmx, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.pnd = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.pnc, <8 x float> %i.pmp)
  %i.pne = shufflevector <32 x float> %i.pmx, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.pnf = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.pne, <4 x float> %i.pmr)
  %i.png = extractelement <32 x float> %i.pmx, i64 29
  %i.pnh = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.png, float %i.phr)
  %i.pni = shufflevector <32 x float> %i.pmx, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.pnj = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.pni, <2 x float> %i.pmt)
  %i.pnk = insertelement <32 x float> poison, float %i.pmz, i64 0
  %i.pnl = shufflevector <16 x float> %i.pnb, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pnm = shufflevector <32 x float> %i.pnk, <32 x float> %i.pnl, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pnn = shufflevector <8 x float> %i.pnd, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pno = shufflevector <32 x float> %i.pnm, <32 x float> %i.pnn, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pnp = shufflevector <4 x float> %i.pnf, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pnq = shufflevector <32 x float> %i.pno, <32 x float> %i.pnp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.pnr = insertelement <32 x float> %i.pnq, float %i.pnh, i64 29
  %i.pns = shufflevector <2 x float> %i.pnj, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pnt = shufflevector <32 x float> %i.pnr, <32 x float> %i.pns, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.pnu = bitcast <32 x float> %i.pnt to <32 x i32>
  %i.pnv = lshr <32 x i32> %i.pnu, splat (i32 16)
  %i.pnw = trunc nuw <32 x i32> %i.pnv to <32 x i16>
  store <32 x i16> %i.pnw, ptr %next.gep7163, align 2, !tbaa !558
  %index.next7165 = add nuw i64 %index7161, 32    ; 2 uses
  %i.pnx = icmp eq i64 %index.next7165, %n.vec7159
  br i1 %i.pnx, label %middle.block7166, label %vector.body7160, !llvm.loop !332

middle.block7166:                                 ; preds = %vector.body7160
  %cmp.n7167 = icmp eq i64 %i.pme, %n.vec7159
  br i1 %cmp.n7167, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7173

vec.epilog.iter.check7173:                        ; preds = %middle.block7166
  %min.epilog.iters.check7174 = icmp eq i64 %i.pmg, 0
  br i1 %min.epilog.iters.check7174, label %.lr.ph110.i.i.preheader, label %vec.epilog.ph7175, !prof !561

vec.epilog.ph7175:                                ; preds = %vector.main.loop.iter.check7156, %vec.epilog.iter.check7173
  %vec.epilog.resume.val7168 = phi i64 [ %n.vec7159, %vec.epilog.iter.check7173 ], [ 0, %vector.main.loop.iter.check7156 ]
  %n.vec7176 = and i64 %i.pme, 8589934584         ; 4 uses
  %i.pny = shl nuw nsw i64 %n.vec7176, 1          ; 2 uses
  %i.pnz = getelementptr i8, ptr %.2.lcssa.i87.i, i64 %i.pny
  %i.poa = getelementptr i8, ptr %.232.lcssa.i.i1475, i64 %i.pny
  %i.pob = trunc i64 %n.vec7176 to i32
  %i.poc = add i32 %.236.lcssa.i86.i, %i.pob
  %i.pod = insertelement <4 x float> poison, float %i.phr, i64 0
  %i.poe = shufflevector <4 x float> %i.pod, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7177

vec.epilog.vector.body7177:                       ; preds = %vec.epilog.vector.body7177, %vec.epilog.ph7175
  %index7178 = phi i64 [ %vec.epilog.resume.val7168, %vec.epilog.ph7175 ], [ %index.next7182, %vec.epilog.vector.body7177 ] ; 2 uses
  %i.pof = shl i64 %index7178, 1                  ; 2 uses
  %next.gep7179 = getelementptr i8, ptr %.2.lcssa.i87.i, i64 %i.pof
  %next.gep7180 = getelementptr i8, ptr %.232.lcssa.i.i1475, i64 %i.pof
  %wide.load7181 = load <8 x i16>, ptr %next.gep7179, align 2, !tbaa !558
  %i.pog = zext <8 x i16> %wide.load7181 to <8 x i32>
  %i.poh = shl nuw <8 x i32> %i.pog, splat (i32 16)
  %i.poi = bitcast <8 x i32> %i.poh to <8 x float> ; 5 uses
  %i.poj = extractelement <8 x float> %i.poi, i64 0
  %i.pok = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.poj, float %i.phr)
  %i.pol = extractelement <8 x float> %i.poi, i64 1
  %i.pom = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.pol, float %i.phr)
  %i.pon = extractelement <8 x float> %i.poi, i64 2
  %i.poo = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.pon, float %i.phr)
  %i.pop = shufflevector <8 x float> %i.poi, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.poq = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.pop, <4 x float> %i.poe)
  %i.por = extractelement <8 x float> %i.poi, i64 7
  %i.pos = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.por, float %i.phr)
  %i.pot = insertelement <8 x float> poison, float %i.pok, i64 0
  %i.pou = insertelement <8 x float> %i.pot, float %i.pom, i64 1
  %i.pov = insertelement <8 x float> %i.pou, float %i.poo, i64 2
  %i.pow = shufflevector <4 x float> %i.poq, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pox = shufflevector <8 x float> %i.pov, <8 x float> %i.pow, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.poy = insertelement <8 x float> %i.pox, float %i.pos, i64 7
  %i.poz = bitcast <8 x float> %i.poy to <8 x i32>
  %i.ppa = lshr <8 x i32> %i.poz, splat (i32 16)
  %i.ppb = trunc nuw <8 x i32> %i.ppa to <8 x i16>
  store <8 x i16> %i.ppb, ptr %next.gep7180, align 2, !tbaa !558
  %index.next7182 = add nuw i64 %index7178, 8     ; 2 uses
  %i.ppc = icmp eq i64 %index.next7182, %n.vec7176
  br i1 %i.ppc, label %vec.epilog.middle.block7183, label %vec.epilog.vector.body7177, !llvm.loop !333

vec.epilog.middle.block7183:                      ; preds = %vec.epilog.vector.body7177
  %cmp.n7184 = icmp eq i64 %i.pme, %n.vec7176
  br i1 %cmp.n7184, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph110.i.i.preheader

.lr.ph110.i.i.preheader:                          ; preds = %iter.check7171, %vec.epilog.iter.check7173, %vec.epilog.middle.block7183
  %.3109.i.i.ph = phi ptr [ %.2.lcssa.i87.i, %iter.check7171 ], [ %i.pmi, %vec.epilog.iter.check7173 ], [ %i.pnz, %vec.epilog.middle.block7183 ] ; 3 uses
  %.333108.i.i.ph = phi ptr [ %.232.lcssa.i.i1475, %iter.check7171 ], [ %i.pmj, %vec.epilog.iter.check7173 ], [ %i.poa, %vec.epilog.middle.block7183 ] ; 3 uses
  %.337107.i.i.ph = phi i32 [ %.236.lcssa.i86.i, %iter.check7171 ], [ %i.pml, %vec.epilog.iter.check7173 ], [ %i.poc, %vec.epilog.middle.block7183 ] ; 4 uses
  %i.ppd = sub i32 %i.ntz, %.337107.i.i.ph
  %.neg10893 = add i32 %.337107.i.i.ph, 1
  %xtraiter10295 = and i32 %i.ppd, 1
  %lcmp.mod10296.not = icmp eq i32 %xtraiter10295, 0
  br i1 %lcmp.mod10296.not, label %.lr.ph110.i.i.prol.loopexit, label %.lr.ph110.i.i.prol

.lr.ph110.i.i.prol:                               ; preds = %.lr.ph110.i.i.preheader
  %i.ppe = getelementptr inbounds nuw i8, ptr %.3109.i.i.ph, i64 2
  %i.ppf = load i16, ptr %.3109.i.i.ph, align 2, !tbaa !558
  %i.ppg = zext i16 %i.ppf to i32
  %i.pph = shl nuw i32 %i.ppg, 16
  %i.ppi = bitcast i32 %i.pph to float
  %i.ppj = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ppi, float %i.phr)
  %i.ppk = bitcast float %i.ppj to i32
  %i.ppl = lshr i32 %i.ppk, 16
  %i.ppm = trunc nuw i32 %i.ppl to i16
  %i.ppn = getelementptr inbounds nuw i8, ptr %.333108.i.i.ph, i64 2
  store i16 %i.ppm, ptr %.333108.i.i.ph, align 2, !tbaa !558
  %i.ppo = add nuw nsw i32 %.337107.i.i.ph, 1
  br label %.lr.ph110.i.i.prol.loopexit

.lr.ph110.i.i.prol.loopexit:                      ; preds = %.lr.ph110.i.i.prol, %.lr.ph110.i.i.preheader
  %.3109.i.i.unr = phi ptr [ %.3109.i.i.ph, %.lr.ph110.i.i.preheader ], [ %i.ppe, %.lr.ph110.i.i.prol ]
  %.333108.i.i.unr = phi ptr [ %.333108.i.i.ph, %.lr.ph110.i.i.preheader ], [ %i.ppn, %.lr.ph110.i.i.prol ]
  %.337107.i.i.unr = phi i32 [ %.337107.i.i.ph, %.lr.ph110.i.i.preheader ], [ %i.ppo, %.lr.ph110.i.i.prol ]
  %i.ppp = icmp eq i32 %i.ntz, %.neg10893
  br i1 %i.ppp, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph110.i.i

bb.kv:                                            ; preds = %bb.kv, %.lr.ph103.i.i
  %.2101.i.i = phi ptr [ %.1.lcssa.i84.i, %.lr.ph103.i.i ], [ %i.prj, %bb.kv ] ; 2 uses
  %.232100.i.i = phi ptr [ %.131.lcssa.i.i1474, %.lr.ph103.i.i ], [ %i.prk, %bb.kv ] ; 2 uses
  %.23699.i.i = phi i32 [ %.135.lcssa.i83.i, %.lr.ph103.i.i ], [ %i.prl, %bb.kv ]
  %i.ppq = load i64, ptr %.2101.i.i, align 1, !tbaa !555
  %i.ppr = insertelement <2 x i64> poison, i64 %i.ppq, i64 0
  %i.pps = bitcast <2 x i64> %i.ppr to <8 x i16>
  %i.ppt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pps, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ppu = bitcast <8 x i16> %i.ppt to <4 x float> ; 3 uses
  %i.ppv = fcmp fast oeq <4 x float> %i.ppu, zeroinitializer
  %i.ppw = fcmp fast olt <4 x float> %i.ppu, zeroinitializer
  %i.ppx = select <4 x i1> %i.ppw, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.ppy = select <4 x i1> %i.plw, <4 x float> %i.ppx, <4 x float> zeroinitializer
  %i.ppz = fmul fast <4 x float> %i.ppu, %i.plz   ; 2 uses
  %i.pqa = bitcast <4 x float> %i.ppz to <4 x i32>
  %i.pqb = and <4 x i32> %i.pqa, splat (i32 -2147483648)
  %i.pqc = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ppz) ; 3 uses
  %i.pqd = fcmp fast ogt <4 x float> %i.pqc, splat (float 1.000000e+00) ; 2 uses
  %i.pqe = select <4 x i1> %i.pqd, <4 x float> splat (float -1.000000e+00), <4 x float> %i.pqc
  %i.pqf = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.pqc, <4 x float> splat (float 1.000000e+00))
  %i.pqg = fdiv fast <4 x float> %i.pqe, %i.pqf   ; 3 uses
  %i.pqh = fmul fast <4 x float> %i.pqg, %i.pqg   ; 3 uses
  %i.pqi = fmul fast <4 x float> %i.pqh, %i.pqh   ; 7 uses
  %i.pqj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pqi, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.pqk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pqi, <4 x float> nofpclass(nan inf) %i.pqj, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.pql = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pqi, <4 x float> nofpclass(nan inf) %i.pqk, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.pqm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pqi, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.pqn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pqi, <4 x float> nofpclass(nan inf) %i.pqm, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.pqo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pqi, <4 x float> nofpclass(nan inf) %i.pqn, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.pqp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pqi, <4 x float> nofpclass(nan inf) %i.pqo, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.pqq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pqh, <4 x float> nofpclass(nan inf) %i.pql, <4 x float> nofpclass(nan inf) %i.pqp)
  %i.pqr = fmul fast <4 x float> %i.pqq, %i.pqg
  %i.pqs = select <4 x i1> %i.pqd, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.pqt = fadd fast <4 x float> %i.pqr, %i.pqs
  %i.pqu = bitcast <4 x float> %i.pqt to <4 x i32>
  %i.pqv = or <4 x i32> %i.pqb, %i.pqu
  %i.pqw = bitcast <4 x i32> %i.pqv to <4 x float>
  %i.pqx = fadd fast <4 x float> %i.ppy, %i.pqw
  %i.pqy = bitcast <8 x i16> %i.ppt to <4 x i32>
  %i.pqz = and <4 x i32> %i.pqy, splat (i32 -2147483648)
  %i.pra = or disjoint <4 x i32> %i.pqz, splat (i32 1070141403)
  %i.prb = bitcast <4 x float> %i.pqx to <4 x i32>
  %i.prc = select <4 x i1> %i.plv, <4 x i32> %i.pra, <4 x i32> %i.prb
  %i.prd = select <4 x i1> %i.ppv, <4 x i32> %i.ply, <4 x i32> %i.prc
  %i.pre = bitcast <4 x i32> %i.prd to <4 x float>
  %i.prf = shufflevector <4 x float> %i.pre, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.prg = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.prf)
  %i.prh = bitcast <8 x bfloat> %i.prg to <2 x i64>
  %i.pri = extractelement <2 x i64> %i.prh, i64 0
  store i64 %i.pri, ptr %.232100.i.i, align 1, !tbaa !555
  %i.prj = getelementptr inbounds nuw i8, ptr %.2101.i.i, i64 8 ; 2 uses
  %i.prk = getelementptr inbounds nuw i8, ptr %.232100.i.i, i64 8 ; 2 uses
  %i.prl = add nuw nsw i32 %.23699.i.i, 4         ; 3 uses
  %i.prm = or disjoint i32 %i.prl, 3
  %i.prn = icmp slt i32 %i.prm, %i.ntz
  br i1 %i.prn, label %bb.kv, label %.preheader.i85.i, !llvm.loop !334

.lr.ph110.i.i:                                    ; preds = %.lr.ph110.i.i.prol.loopexit, %.lr.ph110.i.i
  %.3109.i.i = phi ptr [ %i.pry, %.lr.ph110.i.i ], [ %.3109.i.i.unr, %.lr.ph110.i.i.prol.loopexit ] ; 3 uses
  %.333108.i.i = phi ptr [ %i.psh, %.lr.ph110.i.i ], [ %.333108.i.i.unr, %.lr.ph110.i.i.prol.loopexit ] ; 3 uses
  %.337107.i.i = phi i32 [ %i.psi, %.lr.ph110.i.i ], [ %.337107.i.i.unr, %.lr.ph110.i.i.prol.loopexit ]
  %i.pro = getelementptr inbounds nuw i8, ptr %.3109.i.i, i64 2
  %i.prp = load i16, ptr %.3109.i.i, align 2, !tbaa !558
  %i.prq = zext i16 %i.prp to i32
  %i.prr = shl nuw i32 %i.prq, 16
  %i.prs = bitcast i32 %i.prr to float
  %i.prt = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.prs, float %i.phr)
  %i.pru = bitcast float %i.prt to i32
  %i.prv = lshr i32 %i.pru, 16
  %i.prw = trunc nuw i32 %i.prv to i16
  %i.prx = getelementptr inbounds nuw i8, ptr %.333108.i.i, i64 2
  store i16 %i.prw, ptr %.333108.i.i, align 2, !tbaa !558
  %i.pry = getelementptr inbounds nuw i8, ptr %.3109.i.i, i64 4
  %i.prz = load i16, ptr %i.pro, align 2, !tbaa !558
  %i.psa = zext i16 %i.prz to i32
  %i.psb = shl nuw i32 %i.psa, 16
  %i.psc = bitcast i32 %i.psb to float
  %i.psd = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.psc, float %i.phr)
  %i.pse = bitcast float %i.psd to i32
  %i.psf = lshr i32 %i.pse, 16
  %i.psg = trunc nuw i32 %i.psf to i16
  %i.psh = getelementptr inbounds nuw i8, ptr %.333108.i.i, i64 4
  store i16 %i.psg, ptr %i.prx, align 2, !tbaa !558
  %i.psi = add nuw nsw i32 %.337107.i.i, 2        ; 2 uses
  %exitcond.not.i88.i1476.1 = icmp eq i32 %i.psi, %i.ntz
  br i1 %exitcond.not.i88.i1476.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph110.i.i, !llvm.loop !335

bb.kw:                                            ; preds = %bb.kr
  %i.psj = icmp eq i32 %3, 1
  br i1 %i.psj, label %bb.kx, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.kx:                                            ; preds = %bb.kw
  switch i32 %.sroa.speculated.i1470, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 16, label %.lr.ph129.i.i
    i32 8, label %.lr.ph125.i.i
    i32 4, label %.lr.ph.i91.i
  ]

.lr.ph129.i.i:                                    ; preds = %bb.kx
  %i.psk = load <16 x bfloat>, ptr %0, align 1, !tbaa !555 ; 3 uses
  %i.psl = fpext fast <16 x bfloat> %i.psk to <16 x float> ; 2 uses
  %i.psm = fcmp fast one <16 x bfloat> %i.psk, zeroinitializer
  %i.psn = fcmp fast olt <16 x bfloat> %i.psk, zeroinitializer
  %i.pso = select fast <16 x i1> %i.psn, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.psp = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.psl)
  br label %bb.ky

bb.ky:                                            ; preds = %bb.ky, %.lr.ph129.i.i
  %.028128.i.i = phi ptr [ %1, %.lr.ph129.i.i ], [ %i.pue, %bb.ky ] ; 2 uses
  %.030127.i.i = phi ptr [ %2, %.lr.ph129.i.i ], [ %i.puf, %bb.ky ] ; 2 uses
  %.033126.i.i = phi i32 [ 0, %.lr.ph129.i.i ], [ %i.pug, %bb.ky ]
  %i.psq = load i16, ptr %.028128.i.i, align 2, !tbaa !558
  %i.psr = zext i16 %i.psq to i32
  %i.pss = shl nuw i32 %i.psr, 16
  %i.pst = insertelement <16 x i32> poison, i32 %i.pss, i64 0
  %i.psu = bitcast <16 x i32> %i.pst to <16 x float>
  %i.psv = shufflevector <16 x float> %i.psu, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.psw = fcmp fast one <16 x float> %i.psv, zeroinitializer
  %i.psx = fcmp fast olt <16 x float> %i.psv, zeroinitializer
  %i.psy = select fast <16 x i1> %i.psx, <16 x float> %i.pso, <16 x float> zeroinitializer
  %i.psz = fdiv fast <16 x float> %i.psl, %i.psv  ; 2 uses
  %i.pta = bitcast <16 x float> %i.psz to <16 x i32>
  %i.ptb = and <16 x i32> %i.pta, splat (i32 -2147483648)
  %i.ptc = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.psz) ; 3 uses
  %i.ptd = fcmp fast ogt <16 x float> %i.ptc, splat (float 1.000000e+00) ; 2 uses
  %i.pte = select fast <16 x i1> %i.ptd, <16 x float> splat (float -1.000000e+00), <16 x float> %i.ptc
  %i.ptf = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.ptc, <16 x float> splat (float 1.000000e+00))
  %i.ptg = fdiv fast <16 x float> %i.pte, %i.ptf  ; 3 uses
  %i.pth = fmul fast <16 x float> %i.ptg, %i.ptg  ; 3 uses
  %i.pti = fmul fast <16 x float> %i.pth, %i.pth  ; 7 uses
  %i.ptj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pti, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.ptk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pti, <16 x float> nofpclass(nan inf) %i.ptj, <16 x float> splat (float f0xBE117200))
  %i.ptl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pti, <16 x float> nofpclass(nan inf) %i.ptk, <16 x float> splat (float f0xBEAAAA53))
  %i.ptm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pti, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.ptn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pti, <16 x float> nofpclass(nan inf) %i.ptm, <16 x float> splat (float f0x3DD9ED24))
  %i.pto = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pti, <16 x float> nofpclass(nan inf) %i.ptn, <16 x float> splat (float f0x3E4CB974))
  %i.ptp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pti, <16 x float> nofpclass(nan inf) %i.pto, <16 x float> splat (float 1.000000e+00))
  %i.ptq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pth, <16 x float> nofpclass(nan inf) %i.ptl, <16 x float> nofpclass(nan inf) %i.ptp)
  %i.ptr = fmul fast <16 x float> %i.ptq, %i.ptg
  %i.pts = select fast <16 x i1> %i.ptd, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.ptt = fadd fast <16 x float> %i.ptr, %i.pts
  %i.ptu = bitcast <16 x float> %i.ptt to <16 x i32>
  %i.ptv = or <16 x i32> %i.ptb, %i.ptu
  %i.ptw = bitcast <16 x i32> %i.ptv to <16 x float>
  %i.ptx = fadd fast <16 x float> %i.psy, %i.ptw
  %i.pty = bitcast <16 x float> %i.psv to <16 x i32>
  %i.ptz = icmp slt <16 x i32> %i.pty, zeroinitializer
  %i.pua = select fast <16 x i1> %i.ptz, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.pub = select <16 x i1> %i.psw, <16 x float> %i.ptx, <16 x float> %i.psp
  %i.puc = select <16 x i1> %i.psm, <16 x float> %i.pub, <16 x float> %i.pua
  %i.pud = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.puc)
  store <16 x bfloat> %i.pud, ptr %.030127.i.i, align 1, !tbaa !555
  %i.pue = getelementptr inbounds nuw i8, ptr %.028128.i.i, i64 2
  %i.puf = getelementptr inbounds nuw i8, ptr %.030127.i.i, i64 32
  %i.pug = add nuw nsw i32 %.033126.i.i, 1        ; 2 uses
  %exitcond133.not.i.i = icmp eq i32 %i.pug, %.sroa.speculated104.i
  br i1 %exitcond133.not.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.ky, !llvm.loop !336

.lr.ph125.i.i:                                    ; preds = %bb.kx
  %i.puh = load <8 x bfloat>, ptr %0, align 1, !tbaa !555 ; 3 uses
  %i.pui = fpext fast <8 x bfloat> %i.puh to <8 x float> ; 2 uses
  %i.puj = fcmp fast ueq <8 x bfloat> %i.puh, zeroinitializer
  %i.puk = bitcast <8 x float> %i.pui to <8 x i32>
  %i.pul = and <8 x i32> %i.puk, splat (i32 -2147483648)
  %i.pum = fcmp fast olt <8 x bfloat> %i.puh, zeroinitializer
  %i.pun = select <8 x i1> %i.pum, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.puo = or disjoint <8 x i32> %i.pul, splat (i32 1070141403)
  br label %bb.kz

bb.kz:                                            ; preds = %bb.kz, %.lr.ph125.i.i
  %.1124.i.i = phi ptr [ %1, %.lr.ph125.i.i ], [ %i.pwe, %bb.kz ] ; 2 uses
  %.029123.i.i = phi i32 [ 0, %.lr.ph125.i.i ], [ %i.pwg, %bb.kz ]
  %.131122.i.i = phi ptr [ %2, %.lr.ph125.i.i ], [ %i.pwf, %bb.kz ] ; 2 uses
  %i.pup = load i16, ptr %.1124.i.i, align 2, !tbaa !558
  %i.puq = zext i16 %i.pup to i32
  %i.pur = shl nuw i32 %i.puq, 16
  %i.pus = insertelement <8 x i32> poison, i32 %i.pur, i64 0
  %i.put = bitcast <8 x i32> %i.pus to <8 x float>
  %i.puu = shufflevector <8 x float> %i.put, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.puv = fcmp fast ueq <8 x float> %i.puu, zeroinitializer
  %i.puw = fcmp fast olt <8 x float> %i.puu, zeroinitializer
  %i.pux = select <8 x i1> %i.puw, <8 x float> %i.pun, <8 x float> zeroinitializer
  %i.puy = fdiv fast <8 x float> %i.pui, %i.puu   ; 2 uses
  %i.puz = bitcast <8 x float> %i.puy to <8 x i32>
  %i.pva = and <8 x i32> %i.puz, splat (i32 -2147483648)
  %i.pvb = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.puy) ; 3 uses
  %i.pvc = fcmp fast ogt <8 x float> %i.pvb, splat (float 1.000000e+00) ; 2 uses
  %i.pvd = select <8 x i1> %i.pvc, <8 x float> splat (float -1.000000e+00), <8 x float> %i.pvb
  %i.pve = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.pvb, <8 x float> splat (float 1.000000e+00))
  %i.pvf = fdiv fast <8 x float> %i.pvd, %i.pve   ; 3 uses
  %i.pvg = fmul fast <8 x float> %i.pvf, %i.pvf   ; 3 uses
  %i.pvh = fmul fast <8 x float> %i.pvg, %i.pvg   ; 7 uses
  %i.pvi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pvh, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.pvj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pvh, <8 x float> nofpclass(nan inf) %i.pvi, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.pvk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pvh, <8 x float> nofpclass(nan inf) %i.pvj, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.pvl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pvh, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.pvm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pvh, <8 x float> nofpclass(nan inf) %i.pvl, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.pvn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pvh, <8 x float> nofpclass(nan inf) %i.pvm, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.pvo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pvh, <8 x float> nofpclass(nan inf) %i.pvn, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.pvp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pvg, <8 x float> nofpclass(nan inf) %i.pvk, <8 x float> nofpclass(nan inf) %i.pvo)
  %i.pvq = fmul fast <8 x float> %i.pvp, %i.pvf
  %i.pvr = select <8 x i1> %i.pvc, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.pvs = fadd fast <8 x float> %i.pvq, %i.pvr
  %i.pvt = bitcast <8 x float> %i.pvs to <8 x i32>
  %i.pvu = or <8 x i32> %i.pva, %i.pvt
  %i.pvv = bitcast <8 x i32> %i.pvu to <8 x float>
  %i.pvw = fadd fast <8 x float> %i.pux, %i.pvv
  %i.pvx = bitcast <8 x float> %i.puu to <8 x i32>
  %isneg.inv114.i.i = icmp slt <8 x i32> %i.pvx, zeroinitializer
  %i.pvy = select <8 x i1> %isneg.inv114.i.i, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.pvz = bitcast <8 x float> %i.pvw to <8 x i32>
  %i.pwa = select <8 x i1> %i.puv, <8 x i32> %i.puo, <8 x i32> %i.pvz
  %i.pwb = select <8 x i1> %i.puj, <8 x i32> %i.pvy, <8 x i32> %i.pwa
  %i.pwc = bitcast <8 x i32> %i.pwb to <8 x float>
  %i.pwd = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.pwc)
  store <8 x bfloat> %i.pwd, ptr %.131122.i.i, align 1, !tbaa !555
  %i.pwe = getelementptr inbounds nuw i8, ptr %.1124.i.i, i64 2
  %i.pwf = getelementptr inbounds nuw i8, ptr %.131122.i.i, i64 16
  %i.pwg = add nuw nsw i32 %.029123.i.i, 1        ; 2 uses
  %exitcond132.not.i.i = icmp eq i32 %i.pwg, %.sroa.speculated104.i
  br i1 %exitcond132.not.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.kz, !llvm.loop !337

.lr.ph.i91.i:                                     ; preds = %bb.kx
  %i.pwh = load i64, ptr %0, align 1, !tbaa !555
  %i.pwi = insertelement <2 x i64> poison, i64 %i.pwh, i64 0
  %i.pwj = bitcast <2 x i64> %i.pwi to <8 x i16>
  %i.pwk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pwj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.pwl = bitcast <8 x i16> %i.pwk to <4 x float> ; 3 uses
  %i.pwm = fcmp fast oeq <4 x float> %i.pwl, zeroinitializer
  %i.pwn = fcmp fast olt <4 x float> %i.pwl, zeroinitializer
  %i.pwo = select <4 x i1> %i.pwn, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.pwp = bitcast <8 x i16> %i.pwk to <4 x i32>
  %i.pwq = and <4 x i32> %i.pwp, splat (i32 -2147483648)
  %i.pwr = or disjoint <4 x i32> %i.pwq, splat (i32 1070141403)
  br label %bb.la

bb.la:                                            ; preds = %bb.la, %.lr.ph.i91.i
  %.0121.i.i = phi i32 [ 0, %.lr.ph.i91.i ], [ %i.pym, %bb.la ]
  %.2120.i.i = phi ptr [ %1, %.lr.ph.i91.i ], [ %i.pyk, %bb.la ] ; 2 uses
  %.232119.i.i = phi ptr [ %2, %.lr.ph.i91.i ], [ %i.pyl, %bb.la ] ; 2 uses
  %i.pws = load i16, ptr %.2120.i.i, align 2, !tbaa !558
  %i.pwt = zext i16 %i.pws to i32
  %i.pwu = shl nuw i32 %i.pwt, 16
  %i.pwv = insertelement <4 x i32> poison, i32 %i.pwu, i64 0
  %i.pww = bitcast <4 x i32> %i.pwv to <4 x float>
  %i.pwx = shufflevector <4 x float> %i.pww, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.pwy = fcmp fast oeq <4 x float> %i.pwx, zeroinitializer
  %i.pwz = fcmp fast olt <4 x float> %i.pwx, zeroinitializer
  %i.pxa = select <4 x i1> %i.pwz, <4 x float> %i.pwo, <4 x float> zeroinitializer
  %i.pxb = fdiv fast <4 x float> %i.pwl, %i.pwx   ; 2 uses
  %i.pxc = bitcast <4 x float> %i.pxb to <4 x i32>
  %i.pxd = and <4 x i32> %i.pxc, splat (i32 -2147483648)
  %i.pxe = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pxb) ; 3 uses
  %i.pxf = fcmp fast ogt <4 x float> %i.pxe, splat (float 1.000000e+00) ; 2 uses
  %i.pxg = select <4 x i1> %i.pxf, <4 x float> splat (float -1.000000e+00), <4 x float> %i.pxe
  %i.pxh = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.pxe, <4 x float> splat (float 1.000000e+00))
  %i.pxi = fdiv fast <4 x float> %i.pxg, %i.pxh   ; 3 uses
  %i.pxj = fmul fast <4 x float> %i.pxi, %i.pxi   ; 3 uses
  %i.pxk = fmul fast <4 x float> %i.pxj, %i.pxj   ; 7 uses
  %i.pxl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pxk, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.pxm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pxk, <4 x float> nofpclass(nan inf) %i.pxl, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.pxn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pxk, <4 x float> nofpclass(nan inf) %i.pxm, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.pxo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pxk, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.pxp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pxk, <4 x float> nofpclass(nan inf) %i.pxo, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.pxq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pxk, <4 x float> nofpclass(nan inf) %i.pxp, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.pxr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pxk, <4 x float> nofpclass(nan inf) %i.pxq, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.pxs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pxj, <4 x float> nofpclass(nan inf) %i.pxn, <4 x float> nofpclass(nan inf) %i.pxr)
  %i.pxt = fmul fast <4 x float> %i.pxs, %i.pxi
  %i.pxu = select <4 x i1> %i.pxf, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.pxv = fadd fast <4 x float> %i.pxt, %i.pxu
  %i.pxw = bitcast <4 x float> %i.pxv to <4 x i32>
  %i.pxx = or <4 x i32> %i.pxd, %i.pxw
  %i.pxy = bitcast <4 x i32> %i.pxx to <4 x float>
  %i.pxz = fadd fast <4 x float> %i.pxa, %i.pxy
  %i.pya = bitcast <4 x float> %i.pwx to <4 x i32>
  %isneg.inv.i92.i = icmp slt <4 x i32> %i.pya, zeroinitializer
  %i.pyb = select <4 x i1> %isneg.inv.i92.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.pyc = bitcast <4 x float> %i.pxz to <4 x i32>
  %i.pyd = select <4 x i1> %i.pwy, <4 x i32> %i.pwr, <4 x i32> %i.pyc
  %i.pye = select <4 x i1> %i.pwm, <4 x i32> %i.pyb, <4 x i32> %i.pyd
  %i.pyf = bitcast <4 x i32> %i.pye to <4 x float>
  %i.pyg = shufflevector <4 x float> %i.pyf, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.pyh = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.pyg)
  %i.pyi = bitcast <8 x bfloat> %i.pyh to <2 x i64>
  %i.pyj = extractelement <2 x i64> %i.pyi, i64 0
  store i64 %i.pyj, ptr %.232119.i.i, align 1, !tbaa !555
  %i.pyk = getelementptr inbounds nuw i8, ptr %.2120.i.i, i64 2
  %i.pyl = getelementptr inbounds nuw i8, ptr %.232119.i.i, i64 8
  %i.pym = add nuw nsw i32 %.0121.i.i, 1          ; 2 uses
  %exitcond.not.i93.i = icmp eq i32 %i.pym, %.sroa.speculated104.i
  br i1 %exitcond.not.i93.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.la, !llvm.loop !338

bb.lb:                                            ; preds = %bb.a
  %.sroa.speculated104.i1515 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 10 uses
  %.sroa.speculated.i1516 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.pyn = mul i32 %.sroa.speculated.i1516, %.sroa.speculated104.i1515 ; 48 uses
  %i.pyo = icmp eq i32 %5, %6
  br i1 %i.pyo, label %bb.lc, label %bb.ly

bb.lc:                                            ; preds = %bb.lb
  %i.pyp = icmp eq i32 %3, %4
  br i1 %i.pyp, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %bb.lc
  %i.pyq = icmp sgt i32 %i.pyn, 15
  br i1 %i.pyq, label %.lr.ph.i.i1681, label %.preheader133.i.i1647

.preheader133.loopexit.i.i1686:                   ; preds = %.lr.ph.i.i1681
  %i.pyr = and i32 %i.pyn, 2147483632
  br label %.preheader133.i.i1647

.preheader133.i.i1647:                            ; preds = %.preheader133.loopexit.i.i1686, %bb.ld
  %.042.lcssa.i.i1648 = phi ptr [ %2, %bb.ld ], [ %i.qam, %.preheader133.loopexit.i.i1686 ] ; 2 uses
  %.038.lcssa.i.i1649 = phi i32 [ 0, %bb.ld ], [ %i.pyr, %.preheader133.loopexit.i.i1686 ] ; 3 uses
  %.034.lcssa.i.i1650 = phi ptr [ %1, %bb.ld ], [ %i.qal, %.preheader133.loopexit.i.i1686 ] ; 2 uses
  %.0.lcssa.i.i1651 = phi ptr [ %0, %bb.ld ], [ %i.qak, %.preheader133.loopexit.i.i1686 ] ; 2 uses
  %i.pys = or disjoint i32 %.038.lcssa.i.i1649, 7
  %i.pyt = icmp slt i32 %i.pys, %i.pyn
  br i1 %i.pyt, label %.lr.ph145.i.i1674, label %.preheader132.i.i1652

.lr.ph.i.i1681:                                   ; preds = %bb.ld, %.lr.ph.i.i1681
  %.0137.i.i1682 = phi ptr [ %i.qak, %.lr.ph.i.i1681 ], [ %0, %bb.ld ] ; 2 uses
  %.034136.i.i1683 = phi ptr [ %i.qal, %.lr.ph.i.i1681 ], [ %1, %bb.ld ] ; 2 uses
  %.038135.i.i1684 = phi i32 [ %i.qan, %.lr.ph.i.i1681 ], [ 0, %bb.ld ]
  %.042134.i.i1685 = phi ptr [ %i.qam, %.lr.ph.i.i1681 ], [ %2, %bb.ld ] ; 2 uses
  %i.pyu = load <16 x bfloat>, ptr %.0137.i.i1682, align 1, !tbaa !555 ; 4 uses
  %i.pyv = fpext fast <16 x bfloat> %i.pyu to <16 x float>
  %i.pyw = load <16 x bfloat>, ptr %.034136.i.i1683, align 1, !tbaa !555 ; 3 uses
  %i.pyx = fpext fast <16 x bfloat> %i.pyw to <16 x float> ; 2 uses
  %i.pyy = fcmp fast one <16 x bfloat> %i.pyu, zeroinitializer
  %i.pyz = fcmp fast one <16 x bfloat> %i.pyw, zeroinitializer
  %i.pza = fcmp fast olt <16 x bfloat> %i.pyu, zeroinitializer
  %i.pzb = fcmp fast olt <16 x bfloat> %i.pyw, zeroinitializer
  %i.pzc = select fast <16 x i1> %i.pzb, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.pzd = select fast <16 x i1> %i.pza, <16 x float> %i.pzc, <16 x float> zeroinitializer
  %i.pze = fdiv fast <16 x float> %i.pyx, %i.pyv  ; 2 uses
  %i.pzf = bitcast <16 x float> %i.pze to <16 x i32>
  %i.pzg = and <16 x i32> %i.pzf, splat (i32 -2147483648)
  %i.pzh = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.pze) ; 3 uses
  %i.pzi = fcmp fast ogt <16 x float> %i.pzh, splat (float 1.000000e+00) ; 2 uses
  %i.pzj = select fast <16 x i1> %i.pzi, <16 x float> splat (float -1.000000e+00), <16 x float> %i.pzh
  %i.pzk = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.pzh, <16 x float> splat (float 1.000000e+00))
  %i.pzl = fdiv fast <16 x float> %i.pzj, %i.pzk  ; 3 uses
  %i.pzm = fmul fast <16 x float> %i.pzl, %i.pzl  ; 3 uses
  %i.pzn = fmul fast <16 x float> %i.pzm, %i.pzm  ; 7 uses
  %i.pzo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pzn, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.pzp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pzn, <16 x float> nofpclass(nan inf) %i.pzo, <16 x float> splat (float f0xBE117200))
  %i.pzq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pzn, <16 x float> nofpclass(nan inf) %i.pzp, <16 x float> splat (float f0xBEAAAA53))
  %i.pzr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pzn, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.pzs = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pzn, <16 x float> nofpclass(nan inf) %i.pzr, <16 x float> splat (float f0x3DD9ED24))
  %i.pzt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pzn, <16 x float> nofpclass(nan inf) %i.pzs, <16 x float> splat (float f0x3E4CB974))
  %i.pzu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pzn, <16 x float> nofpclass(nan inf) %i.pzt, <16 x float> splat (float 1.000000e+00))
  %i.pzv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pzm, <16 x float> nofpclass(nan inf) %i.pzq, <16 x float> nofpclass(nan inf) %i.pzu)
  %i.pzw = fmul fast <16 x float> %i.pzv, %i.pzl
  %i.pzx = select fast <16 x i1> %i.pzi, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.pzy = fadd fast <16 x float> %i.pzw, %i.pzx
  %i.pzz = bitcast <16 x float> %i.pzy to <16 x i32>
  %i.qaa = or <16 x i32> %i.pzg, %i.pzz
  %i.qab = bitcast <16 x i32> %i.qaa to <16 x float>
  %i.qac = fadd fast <16 x float> %i.pzd, %i.qab
  %i.qad = bitcast <16 x bfloat> %i.pyu to <16 x i16>
  %i.qae = icmp slt <16 x i16> %i.qad, zeroinitializer
  %i.qaf = select fast <16 x i1> %i.qae, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.qag = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.pyx)
  %i.qah = select <16 x i1> %i.pyy, <16 x float> %i.qac, <16 x float> %i.qag
  %i.qai = select <16 x i1> %i.pyz, <16 x float> %i.qah, <16 x float> %i.qaf
  %i.qaj = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.qai)
  store <16 x bfloat> %i.qaj, ptr %.042134.i.i1685, align 1, !tbaa !555
  %i.qak = getelementptr inbounds nuw i8, ptr %.0137.i.i1682, i64 32 ; 2 uses
  %i.qal = getelementptr inbounds nuw i8, ptr %.034136.i.i1683, i64 32 ; 2 uses
  %i.qam = getelementptr inbounds nuw i8, ptr %.042134.i.i1685, i64 32 ; 2 uses
  %i.qan = add nuw nsw i32 %.038135.i.i1684, 16   ; 2 uses
  %i.qao = or disjoint i32 %i.qan, 15
  %i.qap = icmp slt i32 %i.qao, %i.pyn
  br i1 %i.qap, label %.lr.ph.i.i1681, label %.preheader133.loopexit.i.i1686, !llvm.loop !339

.preheader132.i.i1652:                            ; preds = %.lr.ph145.i.i1674, %.preheader133.i.i1647
  %.143.lcssa.i.i1653 = phi ptr [ %.042.lcssa.i.i1648, %.preheader133.i.i1647 ], [ %i.qcn, %.lr.ph145.i.i1674 ] ; 2 uses
  %.139.lcssa.i.i1654 = phi i32 [ %.038.lcssa.i.i1649, %.preheader133.i.i1647 ], [ %i.qco, %.lr.ph145.i.i1674 ] ; 3 uses
  %.135.lcssa.i.i1655 = phi ptr [ %.034.lcssa.i.i1650, %.preheader133.i.i1647 ], [ %i.qcm, %.lr.ph145.i.i1674 ] ; 2 uses
  %.1.lcssa.i.i1656 = phi ptr [ %.0.lcssa.i.i1651, %.preheader133.i.i1647 ], [ %i.qcl, %.lr.ph145.i.i1674 ] ; 2 uses
  %i.qaq = or disjoint i32 %.139.lcssa.i.i1654, 3
  %i.qar = icmp slt i32 %i.qaq, %i.pyn
  br i1 %i.qar, label %.lr.ph154.i.i1668, label %.preheader.i.i1657

.lr.ph145.i.i1674:                                ; preds = %.preheader133.i.i1647, %.lr.ph145.i.i1674
  %.1144.i.i1675 = phi ptr [ %i.qcl, %.lr.ph145.i.i1674 ], [ %.0.lcssa.i.i1651, %.preheader133.i.i1647 ] ; 2 uses
  %.135143.i.i1676 = phi ptr [ %i.qcm, %.lr.ph145.i.i1674 ], [ %.034.lcssa.i.i1650, %.preheader133.i.i1647 ] ; 2 uses
  %.139142.i.i1677 = phi i32 [ %i.qco, %.lr.ph145.i.i1674 ], [ %.038.lcssa.i.i1649, %.preheader133.i.i1647 ]
  %.143141.i.i1678 = phi ptr [ %i.qcn, %.lr.ph145.i.i1674 ], [ %.042.lcssa.i.i1648, %.preheader133.i.i1647 ] ; 2 uses
  %i.qas = load <8 x bfloat>, ptr %.1144.i.i1675, align 1, !tbaa !555 ; 4 uses
  %i.qat = fpext fast <8 x bfloat> %i.qas to <8 x float>
  %i.qau = load <8 x bfloat>, ptr %.135143.i.i1676, align 1, !tbaa !555 ; 3 uses
  %i.qav = fpext fast <8 x bfloat> %i.qau to <8 x float> ; 2 uses
  %i.qaw = fcmp fast ueq <8 x bfloat> %i.qas, zeroinitializer
  %i.qax = fcmp fast ueq <8 x bfloat> %i.qau, zeroinitializer
  %i.qay = bitcast <8 x float> %i.qav to <8 x i32>
  %i.qaz = and <8 x i32> %i.qay, splat (i32 -2147483648)
  %i.qba = fcmp fast olt <8 x bfloat> %i.qas, zeroinitializer
  %i.qbb = fcmp fast olt <8 x bfloat> %i.qau, zeroinitializer
  %i.qbc = select <8 x i1> %i.qbb, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.qbd = select <8 x i1> %i.qba, <8 x float> %i.qbc, <8 x float> zeroinitializer
  %i.qbe = fdiv fast <8 x float> %i.qav, %i.qat   ; 2 uses
  %i.qbf = bitcast <8 x float> %i.qbe to <8 x i32>
  %i.qbg = and <8 x i32> %i.qbf, splat (i32 -2147483648)
  %i.qbh = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.qbe) ; 3 uses
  %i.qbi = fcmp fast ogt <8 x float> %i.qbh, splat (float 1.000000e+00) ; 2 uses
  %i.qbj = select <8 x i1> %i.qbi, <8 x float> splat (float -1.000000e+00), <8 x float> %i.qbh
  %i.qbk = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.qbh, <8 x float> splat (float 1.000000e+00))
  %i.qbl = fdiv fast <8 x float> %i.qbj, %i.qbk   ; 3 uses
  %i.qbm = fmul fast <8 x float> %i.qbl, %i.qbl   ; 3 uses
  %i.qbn = fmul fast <8 x float> %i.qbm, %i.qbm   ; 7 uses
  %i.qbo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qbn, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.qbp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qbn, <8 x float> nofpclass(nan inf) %i.qbo, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.qbq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qbn, <8 x float> nofpclass(nan inf) %i.qbp, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.qbr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qbn, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.qbs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qbn, <8 x float> nofpclass(nan inf) %i.qbr, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.qbt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qbn, <8 x float> nofpclass(nan inf) %i.qbs, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.qbu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qbn, <8 x float> nofpclass(nan inf) %i.qbt, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.qbv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qbm, <8 x float> nofpclass(nan inf) %i.qbq, <8 x float> nofpclass(nan inf) %i.qbu)
  %i.qbw = fmul fast <8 x float> %i.qbv, %i.qbl
  %i.qbx = select <8 x i1> %i.qbi, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.qby = fadd fast <8 x float> %i.qbw, %i.qbx
  %i.qbz = bitcast <8 x float> %i.qby to <8 x i32>
  %i.qca = or <8 x i32> %i.qbg, %i.qbz
  %i.qcb = bitcast <8 x i32> %i.qca to <8 x float>
  %i.qcc = fadd fast <8 x float> %i.qbd, %i.qcb
  %i.qcd = bitcast <8 x bfloat> %i.qas to <8 x i16>
  %i.qce = or disjoint <8 x i32> %i.qaz, splat (i32 1070141403)
  %isneg.i.i1680 = icmp sgt <8 x i16> %i.qcd, splat (i16 -1)
  %i.qcf = select <8 x i1> %isneg.i.i1680, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.qcg = bitcast <8 x float> %i.qcc to <8 x i32>
  %i.qch = select <8 x i1> %i.qaw, <8 x i32> %i.qce, <8 x i32> %i.qcg
  %i.qci = select <8 x i1> %i.qax, <8 x i32> %i.qcf, <8 x i32> %i.qch
  %i.qcj = bitcast <8 x i32> %i.qci to <8 x float>
  %i.qck = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.qcj)
  store <8 x bfloat> %i.qck, ptr %.143141.i.i1678, align 1, !tbaa !555
  %i.qcl = getelementptr inbounds nuw i8, ptr %.1144.i.i1675, i64 16 ; 2 uses
  %i.qcm = getelementptr inbounds nuw i8, ptr %.135143.i.i1676, i64 16 ; 2 uses
  %i.qcn = getelementptr inbounds nuw i8, ptr %.143141.i.i1678, i64 16 ; 2 uses
  %i.qco = add nuw nsw i32 %.139142.i.i1677, 8    ; 3 uses
  %i.qcp = or disjoint i32 %i.qco, 7
  %i.qcq = icmp slt i32 %i.qcp, %i.pyn
  br i1 %i.qcq, label %.lr.ph145.i.i1674, label %.preheader132.i.i1652, !llvm.loop !340

.preheader.i.i1657:                               ; preds = %.lr.ph154.i.i1668, %.preheader132.i.i1652
  %.244.lcssa.i.i1658 = phi ptr [ %.143.lcssa.i.i1653, %.preheader132.i.i1652 ], [ %i.qhj, %.lr.ph154.i.i1668 ] ; 7 uses
  %.240.lcssa.i.i1659 = phi i32 [ %.139.lcssa.i.i1654, %.preheader132.i.i1652 ], [ %i.qhk, %.lr.ph154.i.i1668 ] ; 6 uses
  %.236.lcssa.i.i1660 = phi ptr [ %.135.lcssa.i.i1655, %.preheader132.i.i1652 ], [ %i.qhi, %.lr.ph154.i.i1668 ] ; 7 uses
  %.2.lcssa.i.i1661 = phi ptr [ %.1.lcssa.i.i1656, %.preheader132.i.i1652 ], [ %i.qhh, %.lr.ph154.i.i1668 ] ; 7 uses
  %.244.lcssa.i.i16587106 = ptrtoaddr ptr %.244.lcssa.i.i1658 to i64 ; 2 uses
  %.2.lcssa.i.i16617107 = ptrtoaddr ptr %.2.lcssa.i.i1661 to i64
  %.236.lcssa.i.i16607109 = ptrtoaddr ptr %.236.lcssa.i.i1660 to i64
  %i.qcr = icmp slt i32 %.240.lcssa.i.i1659, %i.pyn
  br i1 %i.qcr, label %iter.check7131, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7131:                                   ; preds = %.preheader.i.i1657
  %i.qcs = xor i32 %.240.lcssa.i.i1659, -1
  %i.qct = add i32 %i.pyn, %i.qcs                 ; 3 uses
  %i.qcu = zext i32 %i.qct to i64
  %i.qcv = add nuw nsw i64 %i.qcu, 1              ; 5 uses
  %min.iters.check7112 = icmp ult i32 %i.qct, 7
  br i1 %min.iters.check7112, label %.lr.ph163.i.i1662.preheader, label %vector.memcheck7105

vector.memcheck7105:                              ; preds = %iter.check7131
  %i.qcw = sub i64 %.2.lcssa.i.i16617107, %.244.lcssa.i.i16587106
  %diff.check7108 = icmp ugt i64 %i.qcw, -64
  %i.qcx = sub i64 %.236.lcssa.i.i16607109, %.244.lcssa.i.i16587106
  %diff.check7110 = icmp ugt i64 %i.qcx, -64
  %conflict.rdx7111 = or i1 %diff.check7108, %diff.check7110
  br i1 %conflict.rdx7111, label %.lr.ph163.i.i1662.preheader, label %vector.main.loop.iter.check7113

vector.main.loop.iter.check7113:                  ; preds = %vector.memcheck7105
  %min.iters.check7114 = icmp ult i32 %i.qct, 31
  br i1 %min.iters.check7114, label %vec.epilog.ph7135, label %vector.ph7115

vector.ph7115:                                    ; preds = %vector.main.loop.iter.check7113
  %i.qcy = and i64 %i.qcv, 24
  %n.vec7116 = and i64 %i.qcv, 8589934560         ; 5 uses
  %i.qcz = shl nuw nsw i64 %n.vec7116, 1          ; 3 uses
  %i.qda = getelementptr i8, ptr %.2.lcssa.i.i1661, i64 %i.qcz
  %i.qdb = getelementptr i8, ptr %.236.lcssa.i.i1660, i64 %i.qcz
  %i.qdc = trunc i64 %n.vec7116 to i32
  %i.qdd = add i32 %.240.lcssa.i.i1659, %i.qdc
  %i.qde = getelementptr i8, ptr %.244.lcssa.i.i1658, i64 %i.qcz
  br label %vector.body7117

vector.body7117:                                  ; preds = %vector.ph7115, %vector.body7117
  %index7118 = phi i64 [ 0, %vector.ph7115 ], [ %index.next7124, %vector.body7117 ] ; 2 uses
  %i.qdf = shl i64 %index7118, 1                  ; 3 uses
  %next.gep7119 = getelementptr i8, ptr %.2.lcssa.i.i1661, i64 %i.qdf
  %next.gep7120 = getelementptr i8, ptr %.236.lcssa.i.i1660, i64 %i.qdf
  %next.gep7121 = getelementptr i8, ptr %.244.lcssa.i.i1658, i64 %i.qdf
  %wide.load7122 = load <32 x i16>, ptr %next.gep7119, align 2, !tbaa !558
  %i.qdg = zext <32 x i16> %wide.load7122 to <32 x i32>
  %i.qdh = shl nuw <32 x i32> %i.qdg, splat (i32 16)
  %i.qdi = bitcast <32 x i32> %i.qdh to <32 x float>
  %wide.load7123 = load <32 x i16>, ptr %next.gep7120, align 2, !tbaa !558
  %i.qdj = zext <32 x i16> %wide.load7123 to <32 x i32>
  %i.qdk = shl nuw <32 x i32> %i.qdj, splat (i32 16)
  %i.qdl = bitcast <32 x i32> %i.qdk to <32 x float>
  %i.qdm = tail call fast <32 x float> @llvm.atan2.v32f32(<32 x float> %i.qdl, <32 x float> %i.qdi)
  %i.qdn = bitcast <32 x float> %i.qdm to <32 x i32>
  %i.qdo = lshr <32 x i32> %i.qdn, splat (i32 16)
  %i.qdp = trunc nuw <32 x i32> %i.qdo to <32 x i16>
  store <32 x i16> %i.qdp, ptr %next.gep7121, align 2, !tbaa !558
  %index.next7124 = add nuw i64 %index7118, 32    ; 2 uses
  %i.qdq = icmp eq i64 %index.next7124, %n.vec7116
  br i1 %i.qdq, label %middle.block7125, label %vector.body7117, !llvm.loop !341

middle.block7125:                                 ; preds = %vector.body7117
  %cmp.n7126 = icmp eq i64 %i.qcv, %n.vec7116
  br i1 %cmp.n7126, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7133

vec.epilog.iter.check7133:                        ; preds = %middle.block7125
  %min.epilog.iters.check7134 = icmp eq i64 %i.qcy, 0
  br i1 %min.epilog.iters.check7134, label %.lr.ph163.i.i1662.preheader, label %vec.epilog.ph7135, !prof !561

vec.epilog.ph7135:                                ; preds = %vector.main.loop.iter.check7113, %vec.epilog.iter.check7133
  %vec.epilog.resume.val7127 = phi i64 [ %n.vec7116, %vec.epilog.iter.check7133 ], [ 0, %vector.main.loop.iter.check7113 ]
  %n.vec7136 = and i64 %i.qcv, 8589934584         ; 4 uses
  %i.qdr = shl nuw nsw i64 %n.vec7136, 1          ; 3 uses
  %i.qds = getelementptr i8, ptr %.2.lcssa.i.i1661, i64 %i.qdr
  %i.qdt = getelementptr i8, ptr %.236.lcssa.i.i1660, i64 %i.qdr
  %i.qdu = trunc i64 %n.vec7136 to i32
  %i.qdv = add i32 %.240.lcssa.i.i1659, %i.qdu
  %i.qdw = getelementptr i8, ptr %.244.lcssa.i.i1658, i64 %i.qdr
  br label %vec.epilog.vector.body7137

vec.epilog.vector.body7137:                       ; preds = %vec.epilog.vector.body7137, %vec.epilog.ph7135
  %index7138 = phi i64 [ %vec.epilog.resume.val7127, %vec.epilog.ph7135 ], [ %index.next7144, %vec.epilog.vector.body7137 ] ; 2 uses
  %i.qdx = shl i64 %index7138, 1                  ; 3 uses
  %next.gep7139 = getelementptr i8, ptr %.2.lcssa.i.i1661, i64 %i.qdx
  %next.gep7140 = getelementptr i8, ptr %.236.lcssa.i.i1660, i64 %i.qdx
  %next.gep7141 = getelementptr i8, ptr %.244.lcssa.i.i1658, i64 %i.qdx
  %wide.load7142 = load <8 x i16>, ptr %next.gep7139, align 2, !tbaa !558
  %i.qdy = zext <8 x i16> %wide.load7142 to <8 x i32>
  %i.qdz = shl nuw <8 x i32> %i.qdy, splat (i32 16)
  %i.qea = bitcast <8 x i32> %i.qdz to <8 x float>
  %wide.load7143 = load <8 x i16>, ptr %next.gep7140, align 2, !tbaa !558
  %i.qeb = zext <8 x i16> %wide.load7143 to <8 x i32>
  %i.qec = shl nuw <8 x i32> %i.qeb, splat (i32 16)
  %i.qed = bitcast <8 x i32> %i.qec to <8 x float>
  %i.qee = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.qed, <8 x float> %i.qea)
  %i.qef = bitcast <8 x float> %i.qee to <8 x i32>
  %i.qeg = lshr <8 x i32> %i.qef, splat (i32 16)
  %i.qeh = trunc nuw <8 x i32> %i.qeg to <8 x i16>
  store <8 x i16> %i.qeh, ptr %next.gep7141, align 2, !tbaa !558
  %index.next7144 = add nuw i64 %index7138, 8     ; 2 uses
  %i.qei = icmp eq i64 %index.next7144, %n.vec7136
  br i1 %i.qei, label %vec.epilog.middle.block7145, label %vec.epilog.vector.body7137, !llvm.loop !342

vec.epilog.middle.block7145:                      ; preds = %vec.epilog.vector.body7137
  %cmp.n7146 = icmp eq i64 %i.qcv, %n.vec7136
  br i1 %cmp.n7146, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph163.i.i1662.preheader

.lr.ph163.i.i1662.preheader:                      ; preds = %iter.check7131, %vector.memcheck7105, %vec.epilog.iter.check7133, %vec.epilog.middle.block7145
  %.3162.i.i1663.ph = phi ptr [ %.2.lcssa.i.i1661, %iter.check7131 ], [ %.2.lcssa.i.i1661, %vector.memcheck7105 ], [ %i.qda, %vec.epilog.iter.check7133 ], [ %i.qds, %vec.epilog.middle.block7145 ] ; 3 uses
  %.337161.i.i1664.ph = phi ptr [ %.236.lcssa.i.i1660, %iter.check7131 ], [ %.236.lcssa.i.i1660, %vector.memcheck7105 ], [ %i.qdb, %vec.epilog.iter.check7133 ], [ %i.qdt, %vec.epilog.middle.block7145 ] ; 3 uses
  %.341160.i.i1665.ph = phi i32 [ %.240.lcssa.i.i1659, %iter.check7131 ], [ %.240.lcssa.i.i1659, %vector.memcheck7105 ], [ %i.qdd, %vec.epilog.iter.check7133 ], [ %i.qdv, %vec.epilog.middle.block7145 ] ; 4 uses
  %.345159.i.i1666.ph = phi ptr [ %.244.lcssa.i.i1658, %iter.check7131 ], [ %.244.lcssa.i.i1658, %vector.memcheck7105 ], [ %i.qde, %vec.epilog.iter.check7133 ], [ %i.qdw, %vec.epilog.middle.block7145 ] ; 3 uses
  %i.qej = sub i32 %i.pyn, %.341160.i.i1665.ph
  %.neg10892 = add i32 %.341160.i.i1665.ph, 1
  %xtraiter10293 = and i32 %i.qej, 1
  %lcmp.mod10294.not = icmp eq i32 %xtraiter10293, 0
  br i1 %lcmp.mod10294.not, label %.lr.ph163.i.i1662.prol.loopexit, label %.lr.ph163.i.i1662.prol

.lr.ph163.i.i1662.prol:                           ; preds = %.lr.ph163.i.i1662.preheader
  %i.qek = getelementptr inbounds nuw i8, ptr %.3162.i.i1663.ph, i64 2
  %i.qel = load i16, ptr %.3162.i.i1663.ph, align 2, !tbaa !558
  %i.qem = zext i16 %i.qel to i32
  %i.qen = shl nuw i32 %i.qem, 16
  %i.qeo = bitcast i32 %i.qen to float
  %i.qep = getelementptr inbounds nuw i8, ptr %.337161.i.i1664.ph, i64 2
  %i.qeq = load i16, ptr %.337161.i.i1664.ph, align 2, !tbaa !558
  %i.qer = zext i16 %i.qeq to i32
  %i.qes = shl nuw i32 %i.qer, 16
  %i.qet = bitcast i32 %i.qes to float
  %i.qeu = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qet, float %i.qeo)
  %i.qev = bitcast float %i.qeu to i32
  %i.qew = lshr i32 %i.qev, 16
  %i.qex = trunc nuw i32 %i.qew to i16
  %i.qey = getelementptr inbounds nuw i8, ptr %.345159.i.i1666.ph, i64 2
  store i16 %i.qex, ptr %.345159.i.i1666.ph, align 2, !tbaa !558
  %i.qez = add nuw nsw i32 %.341160.i.i1665.ph, 1
  br label %.lr.ph163.i.i1662.prol.loopexit

.lr.ph163.i.i1662.prol.loopexit:                  ; preds = %.lr.ph163.i.i1662.prol, %.lr.ph163.i.i1662.preheader
  %.3162.i.i1663.unr = phi ptr [ %.3162.i.i1663.ph, %.lr.ph163.i.i1662.preheader ], [ %i.qek, %.lr.ph163.i.i1662.prol ]
  %.337161.i.i1664.unr = phi ptr [ %.337161.i.i1664.ph, %.lr.ph163.i.i1662.preheader ], [ %i.qep, %.lr.ph163.i.i1662.prol ]
  %.341160.i.i1665.unr = phi i32 [ %.341160.i.i1665.ph, %.lr.ph163.i.i1662.preheader ], [ %i.qez, %.lr.ph163.i.i1662.prol ]
  %.345159.i.i1666.unr = phi ptr [ %.345159.i.i1666.ph, %.lr.ph163.i.i1662.preheader ], [ %i.qey, %.lr.ph163.i.i1662.prol ]
  %i.qfa = icmp eq i32 %i.pyn, %.neg10892
  br i1 %i.qfa, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph163.i.i1662

.lr.ph154.i.i1668:                                ; preds = %.preheader132.i.i1652, %.lr.ph154.i.i1668
  %.2153.i.i1669 = phi ptr [ %i.qhh, %.lr.ph154.i.i1668 ], [ %.1.lcssa.i.i1656, %.preheader132.i.i1652 ] ; 2 uses
  %.236152.i.i1670 = phi ptr [ %i.qhi, %.lr.ph154.i.i1668 ], [ %.135.lcssa.i.i1655, %.preheader132.i.i1652 ] ; 2 uses
  %.240151.i.i1671 = phi i32 [ %i.qhk, %.lr.ph154.i.i1668 ], [ %.139.lcssa.i.i1654, %.preheader132.i.i1652 ]
  %.244150.i.i1672 = phi ptr [ %i.qhj, %.lr.ph154.i.i1668 ], [ %.143.lcssa.i.i1653, %.preheader132.i.i1652 ] ; 2 uses
  %i.qfb = load i64, ptr %.2153.i.i1669, align 1, !tbaa !555
  %i.qfc = insertelement <2 x i64> poison, i64 %i.qfb, i64 0
  %i.qfd = bitcast <2 x i64> %i.qfc to <8 x i16>
  %i.qfe = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qfd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.qff = bitcast <8 x i16> %i.qfe to <4 x float> ; 3 uses
  %i.qfg = load i64, ptr %.236152.i.i1670, align 1, !tbaa !555
  %i.qfh = insertelement <2 x i64> poison, i64 %i.qfg, i64 0
  %i.qfi = bitcast <2 x i64> %i.qfh to <8 x i16>
  %i.qfj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qfi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.qfk = bitcast <8 x i16> %i.qfj to <4 x float> ; 3 uses
  %i.qfl = fcmp fast oeq <4 x float> %i.qff, zeroinitializer
  %i.qfm = fcmp fast oeq <4 x float> %i.qfk, zeroinitializer
  %i.qfn = fcmp fast olt <4 x float> %i.qff, zeroinitializer
  %i.qfo = fcmp fast olt <4 x float> %i.qfk, zeroinitializer
  %i.qfp = select <4 x i1> %i.qfo, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.qfq = select <4 x i1> %i.qfn, <4 x float> %i.qfp, <4 x float> zeroinitializer
  %i.qfr = fdiv fast <4 x float> %i.qfk, %i.qff   ; 2 uses
  %i.qfs = bitcast <4 x float> %i.qfr to <4 x i32>
  %i.qft = and <4 x i32> %i.qfs, splat (i32 -2147483648)
  %i.qfu = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.qfr) ; 3 uses
  %i.qfv = fcmp fast ogt <4 x float> %i.qfu, splat (float 1.000000e+00) ; 2 uses
  %i.qfw = select <4 x i1> %i.qfv, <4 x float> splat (float -1.000000e+00), <4 x float> %i.qfu
  %i.qfx = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.qfu, <4 x float> splat (float 1.000000e+00))
  %i.qfy = fdiv fast <4 x float> %i.qfw, %i.qfx   ; 3 uses
  %i.qfz = fmul fast <4 x float> %i.qfy, %i.qfy   ; 3 uses
  %i.qga = fmul fast <4 x float> %i.qfz, %i.qfz   ; 7 uses
  %i.qgb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qga, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.qgc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qga, <4 x float> nofpclass(nan inf) %i.qgb, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.qgd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qga, <4 x float> nofpclass(nan inf) %i.qgc, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.qge = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qga, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.qgf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qga, <4 x float> nofpclass(nan inf) %i.qge, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.qgg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qga, <4 x float> nofpclass(nan inf) %i.qgf, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.qgh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qga, <4 x float> nofpclass(nan inf) %i.qgg, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.qgi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qfz, <4 x float> nofpclass(nan inf) %i.qgd, <4 x float> nofpclass(nan inf) %i.qgh)
  %i.qgj = fmul fast <4 x float> %i.qgi, %i.qfy
  %i.qgk = select <4 x i1> %i.qfv, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.qgl = fadd fast <4 x float> %i.qgj, %i.qgk
  %i.qgm = bitcast <4 x float> %i.qgl to <4 x i32>
  %i.qgn = or <4 x i32> %i.qft, %i.qgm
  %i.qgo = bitcast <4 x i32> %i.qgn to <4 x float>
  %i.qgp = fadd fast <4 x float> %i.qfq, %i.qgo
  %i.qgq = bitcast <8 x i16> %i.qfe to <4 x i32>
  %i.qgr = and <4 x i32> %i.qgq, splat (i32 -2147483648)
  %i.qgs = or disjoint <4 x i32> %i.qgr, splat (i32 1078530011)
  %i.qgt = bitcast <4 x i32> %i.qgs to <4 x float>
  %i.qgu = fcmp fast uge <4 x float> %i.qgt, zeroinitializer
  %i.qgv = bitcast <8 x i16> %i.qfj to <4 x i32>
  %i.qgw = and <4 x i32> %i.qgv, splat (i32 -2147483648)
  %i.qgx = or disjoint <4 x i32> %i.qgw, splat (i32 1070141403)
  %i.qgy = select <4 x i1> %i.qgu, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.qgz = bitcast <4 x float> %i.qgp to <4 x i32>
  %i.qha = select <4 x i1> %i.qfl, <4 x i32> %i.qgx, <4 x i32> %i.qgz
  %i.qhb = select <4 x i1> %i.qfm, <4 x i32> %i.qgy, <4 x i32> %i.qha
  %i.qhc = bitcast <4 x i32> %i.qhb to <4 x float>
  %i.qhd = shufflevector <4 x float> %i.qhc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.qhe = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.qhd)
  %i.qhf = bitcast <8 x bfloat> %i.qhe to <2 x i64>
  %i.qhg = extractelement <2 x i64> %i.qhf, i64 0
  store i64 %i.qhg, ptr %.244150.i.i1672, align 1, !tbaa !555
  %i.qhh = getelementptr inbounds nuw i8, ptr %.2153.i.i1669, i64 8 ; 2 uses
  %i.qhi = getelementptr inbounds nuw i8, ptr %.236152.i.i1670, i64 8 ; 2 uses
  %i.qhj = getelementptr inbounds nuw i8, ptr %.244150.i.i1672, i64 8 ; 2 uses
  %i.qhk = add nuw nsw i32 %.240151.i.i1671, 4    ; 3 uses
  %i.qhl = or disjoint i32 %i.qhk, 3
  %i.qhm = icmp slt i32 %i.qhl, %i.pyn
  br i1 %i.qhm, label %.lr.ph154.i.i1668, label %.preheader.i.i1657, !llvm.loop !343

.lr.ph163.i.i1662:                                ; preds = %.lr.ph163.i.i1662.prol.loopexit, %.lr.ph163.i.i1662
  %.3162.i.i1663 = phi ptr [ %i.qic, %.lr.ph163.i.i1662 ], [ %.3162.i.i1663.unr, %.lr.ph163.i.i1662.prol.loopexit ] ; 3 uses
  %.337161.i.i1664 = phi ptr [ %i.qih, %.lr.ph163.i.i1662 ], [ %.337161.i.i1664.unr, %.lr.ph163.i.i1662.prol.loopexit ] ; 3 uses
  %.341160.i.i1665 = phi i32 [ %i.qir, %.lr.ph163.i.i1662 ], [ %.341160.i.i1665.unr, %.lr.ph163.i.i1662.prol.loopexit ]
  %.345159.i.i1666 = phi ptr [ %i.qiq, %.lr.ph163.i.i1662 ], [ %.345159.i.i1666.unr, %.lr.ph163.i.i1662.prol.loopexit ] ; 3 uses
  %i.qhn = getelementptr inbounds nuw i8, ptr %.3162.i.i1663, i64 2
  %i.qho = load i16, ptr %.3162.i.i1663, align 2, !tbaa !558
  %i.qhp = zext i16 %i.qho to i32
  %i.qhq = shl nuw i32 %i.qhp, 16
  %i.qhr = bitcast i32 %i.qhq to float
  %i.qhs = getelementptr inbounds nuw i8, ptr %.337161.i.i1664, i64 2
  %i.qht = load i16, ptr %.337161.i.i1664, align 2, !tbaa !558
  %i.qhu = zext i16 %i.qht to i32
  %i.qhv = shl nuw i32 %i.qhu, 16
  %i.qhw = bitcast i32 %i.qhv to float
  %i.qhx = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qhw, float %i.qhr)
  %i.qhy = bitcast float %i.qhx to i32
  %i.qhz = lshr i32 %i.qhy, 16
  %i.qia = trunc nuw i32 %i.qhz to i16
  %i.qib = getelementptr inbounds nuw i8, ptr %.345159.i.i1666, i64 2
  store i16 %i.qia, ptr %.345159.i.i1666, align 2, !tbaa !558
  %i.qic = getelementptr inbounds nuw i8, ptr %.3162.i.i1663, i64 4
  %i.qid = load i16, ptr %i.qhn, align 2, !tbaa !558
  %i.qie = zext i16 %i.qid to i32
  %i.qif = shl nuw i32 %i.qie, 16
  %i.qig = bitcast i32 %i.qif to float
  %i.qih = getelementptr inbounds nuw i8, ptr %.337161.i.i1664, i64 4
  %i.qii = load i16, ptr %i.qhs, align 2, !tbaa !558
  %i.qij = zext i16 %i.qii to i32
  %i.qik = shl nuw i32 %i.qij, 16
  %i.qil = bitcast i32 %i.qik to float
  %i.qim = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qil, float %i.qig)
  %i.qin = bitcast float %i.qim to i32
  %i.qio = lshr i32 %i.qin, 16
  %i.qip = trunc nuw i32 %i.qio to i16
  %i.qiq = getelementptr inbounds nuw i8, ptr %.345159.i.i1666, i64 4
  store i16 %i.qip, ptr %i.qib, align 2, !tbaa !558
  %i.qir = add nuw nsw i32 %.341160.i.i1665, 2    ; 2 uses
  %exitcond.not.i.i1667.1 = icmp eq i32 %i.qir, %i.pyn
  br i1 %exitcond.not.i.i1667.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph163.i.i1662, !llvm.loop !344

bb.le:                                            ; preds = %bb.lc
  %i.qis = icmp eq i32 %4, 1
  br i1 %i.qis, label %bb.lf, label %bb.lo

bb.lf:                                            ; preds = %bb.le
  %i.qit = load i16, ptr %1, align 2, !tbaa !558
  %i.qiu = zext i16 %i.qit to i32
  %i.qiv = shl nuw i32 %i.qiu, 16
  %i.qiw = bitcast i32 %i.qiv to float            ; 15 uses
  %i.qix = icmp eq i32 %.sroa.speculated.i1516, 4
  br i1 %i.qix, label %.thread129.i.i1646, label %bb.lg

.thread129.i.i1646:                               ; preds = %bb.lf
  %i.qiy = load i64, ptr %1, align 2, !tbaa !555
  %i.qiz = insertelement <2 x i64> poison, i64 %i.qiy, i64 0
  %i.qja = bitcast <2 x i64> %i.qiz to <8 x i16>
  %i.qjb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qja, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qjc = bitcast <8 x i16> %i.qjb to <4 x float> ; 2 uses
  %i.qjd = shufflevector <4 x float> %i.qjc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.lj

bb.lg:                                            ; preds = %bb.lf
  %i.qje = insertelement <4 x float> poison, float %i.qiw, i64 0 ; 2 uses
  %i.qjf = shufflevector <4 x float> %i.qje, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.qjg = icmp eq i32 %.sroa.speculated.i1516, 8
  br i1 %i.qjg, label %.thread128.i.i1645, label %bb.lh

.thread128.i.i1645:                               ; preds = %bb.lg
  %i.qjh = load <8 x bfloat>, ptr %1, align 2, !tbaa !555
  %i.qji = fpext fast <8 x bfloat> %i.qjh to <8 x float>
  br label %bb.lj

bb.lh:                                            ; preds = %bb.lg
  %i.qjj = shufflevector <4 x float> %i.qje, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.qjk = icmp eq i32 %.sroa.speculated.i1516, 16
  br i1 %i.qjk, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %bb.lh
  %i.qjl = load <16 x bfloat>, ptr %1, align 2, !tbaa !555
  %i.qjm = fpext fast <16 x bfloat> %i.qjl to <16 x float>
  br label %bb.lk

bb.lj:                                            ; preds = %bb.lh, %.thread128.i.i1645, %.thread129.i.i1646
  %i.qjn = phi <8 x float> [ %i.qji, %.thread128.i.i1645 ], [ %i.qjj, %bb.lh ], [ %i.qjd, %.thread129.i.i1646 ] ; 2 uses
  %i.qjo = phi <4 x float> [ %i.qjf, %.thread128.i.i1645 ], [ %i.qjf, %bb.lh ], [ %i.qjc, %.thread129.i.i1646 ]
  %i.qjp = shufflevector <8 x float> %i.qjn, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %bb.li
  %i.qjq = phi <8 x float> [ %i.qjj, %bb.li ], [ %i.qjn, %bb.lj ] ; 4 uses
  %i.qjr = phi <4 x float> [ %i.qjf, %bb.li ], [ %i.qjo, %bb.lj ] ; 4 uses
  %i.qjs = phi fast <16 x float> [ %i.qjm, %bb.li ], [ %i.qjp, %bb.lj ] ; 4 uses
  %i.qjt = icmp sgt i32 %i.pyn, 15
  br i1 %i.qjt, label %.lr.ph.i42.i1640, label %.preheader136.i.i1615

.lr.ph.i42.i1640:                                 ; preds = %bb.lk
  %i.qju = fcmp fast one <16 x float> %i.qjs, zeroinitializer
  %i.qjv = fcmp fast olt <16 x float> %i.qjs, zeroinitializer
  %i.qjw = select fast <16 x i1> %i.qjv, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.qjx = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.qjs)
  br label %bb.ll

.preheader136.loopexit.i.i1644:                   ; preds = %bb.ll
  %i.qjy = and i32 %i.pyn, 2147483632
  br label %.preheader136.i.i1615

.preheader136.i.i1615:                            ; preds = %.preheader136.loopexit.i.i1644, %bb.lk
  %.039.lcssa.i.i1616 = phi i32 [ 0, %bb.lk ], [ %i.qjy, %.preheader136.loopexit.i.i1644 ] ; 3 uses
  %.035.lcssa.i.i1617 = phi ptr [ %2, %bb.lk ], [ %i.qls, %.preheader136.loopexit.i.i1644 ] ; 2 uses
  %.0.lcssa.i34.i1618 = phi ptr [ %0, %bb.lk ], [ %i.qlr, %.preheader136.loopexit.i.i1644 ] ; 2 uses
  %i.qjz = or disjoint i32 %.039.lcssa.i.i1616, 7
  %i.qka = icmp slt i32 %i.qjz, %i.pyn
  br i1 %i.qka, label %.lr.ph145.i39.i, label %.preheader135.i.i1619

.lr.ph145.i39.i:                                  ; preds = %.preheader136.i.i1615
  %i.qkb = fcmp fast ueq <8 x float> %i.qjq, zeroinitializer
  %i.qkc = bitcast <8 x float> %i.qjq to <8 x i32>
  %i.qkd = and <8 x i32> %i.qkc, splat (i32 -2147483648)
  %i.qke = fcmp fast olt <8 x float> %i.qjq, zeroinitializer
  %i.qkf = select <8 x i1> %i.qke, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.qkg = or disjoint <8 x i32> %i.qkd, splat (i32 1070141403)
  br label %bb.lm

bb.ll:                                            ; preds = %bb.ll, %.lr.ph.i42.i1640
  %.0139.i.i1641 = phi ptr [ %0, %.lr.ph.i42.i1640 ], [ %i.qlr, %bb.ll ] ; 2 uses
  %.035138.i.i1642 = phi ptr [ %2, %.lr.ph.i42.i1640 ], [ %i.qls, %bb.ll ] ; 2 uses
  %.039137.i.i1643 = phi i32 [ 0, %.lr.ph.i42.i1640 ], [ %i.qlt, %bb.ll ]
  %i.qkh = load <16 x bfloat>, ptr %.0139.i.i1641, align 1, !tbaa !555 ; 4 uses
  %i.qki = fpext fast <16 x bfloat> %i.qkh to <16 x float>
  %i.qkj = fcmp fast one <16 x bfloat> %i.qkh, zeroinitializer
  %i.qkk = fcmp fast olt <16 x bfloat> %i.qkh, zeroinitializer
  %i.qkl = select fast <16 x i1> %i.qkk, <16 x float> %i.qjw, <16 x float> zeroinitializer
  %i.qkm = fdiv fast <16 x float> %i.qjs, %i.qki  ; 2 uses
  %i.qkn = bitcast <16 x float> %i.qkm to <16 x i32>
  %i.qko = and <16 x i32> %i.qkn, splat (i32 -2147483648)
  %i.qkp = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.qkm) ; 3 uses
  %i.qkq = fcmp fast ogt <16 x float> %i.qkp, splat (float 1.000000e+00) ; 2 uses
  %i.qkr = select fast <16 x i1> %i.qkq, <16 x float> splat (float -1.000000e+00), <16 x float> %i.qkp
  %i.qks = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.qkp, <16 x float> splat (float 1.000000e+00))
  %i.qkt = fdiv fast <16 x float> %i.qkr, %i.qks  ; 3 uses
  %i.qku = fmul fast <16 x float> %i.qkt, %i.qkt  ; 3 uses
  %i.qkv = fmul fast <16 x float> %i.qku, %i.qku  ; 7 uses
  %i.qkw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qkv, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.qkx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qkv, <16 x float> nofpclass(nan inf) %i.qkw, <16 x float> splat (float f0xBE117200))
  %i.qky = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qkv, <16 x float> nofpclass(nan inf) %i.qkx, <16 x float> splat (float f0xBEAAAA53))
  %i.qkz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qkv, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.qla = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qkv, <16 x float> nofpclass(nan inf) %i.qkz, <16 x float> splat (float f0x3DD9ED24))
  %i.qlb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qkv, <16 x float> nofpclass(nan inf) %i.qla, <16 x float> splat (float f0x3E4CB974))
  %i.qlc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qkv, <16 x float> nofpclass(nan inf) %i.qlb, <16 x float> splat (float 1.000000e+00))
  %i.qld = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qku, <16 x float> nofpclass(nan inf) %i.qky, <16 x float> nofpclass(nan inf) %i.qlc)
  %i.qle = fmul fast <16 x float> %i.qld, %i.qkt
  %i.qlf = select fast <16 x i1> %i.qkq, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.qlg = fadd fast <16 x float> %i.qle, %i.qlf
  %i.qlh = bitcast <16 x float> %i.qlg to <16 x i32>
  %i.qli = or <16 x i32> %i.qko, %i.qlh
  %i.qlj = bitcast <16 x i32> %i.qli to <16 x float>
  %i.qlk = fadd fast <16 x float> %i.qkl, %i.qlj
  %i.qll = bitcast <16 x bfloat> %i.qkh to <16 x i16>
  %i.qlm = icmp slt <16 x i16> %i.qll, zeroinitializer
  %i.qln = select fast <16 x i1> %i.qlm, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.qlo = select <16 x i1> %i.qkj, <16 x float> %i.qlk, <16 x float> %i.qjx
  %i.qlp = select <16 x i1> %i.qju, <16 x float> %i.qlo, <16 x float> %i.qln
  %i.qlq = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.qlp)
  store <16 x bfloat> %i.qlq, ptr %.035138.i.i1642, align 1, !tbaa !555
  %i.qlr = getelementptr inbounds nuw i8, ptr %.0139.i.i1641, i64 32 ; 2 uses
  %i.qls = getelementptr inbounds nuw i8, ptr %.035138.i.i1642, i64 32 ; 2 uses
  %i.qlt = add nuw nsw i32 %.039137.i.i1643, 16   ; 2 uses
  %i.qlu = or disjoint i32 %i.qlt, 15
  %i.qlv = icmp slt i32 %i.qlu, %i.pyn
  br i1 %i.qlv, label %bb.ll, label %.preheader136.loopexit.i.i1644, !llvm.loop !345

.preheader135.i.i1619:                            ; preds = %bb.lm, %.preheader136.i.i1615
  %.140.lcssa.i.i1620 = phi i32 [ %.039.lcssa.i.i1616, %.preheader136.i.i1615 ], [ %i.qnr, %bb.lm ] ; 3 uses
  %.136.lcssa.i.i1621 = phi ptr [ %.035.lcssa.i.i1617, %.preheader136.i.i1615 ], [ %i.qnq, %bb.lm ] ; 2 uses
  %.1.lcssa.i35.i1622 = phi ptr [ %.0.lcssa.i34.i1618, %.preheader136.i.i1615 ], [ %i.qnp, %bb.lm ] ; 2 uses
  %i.qlw = or disjoint i32 %.140.lcssa.i.i1620, 3
  %i.qlx = icmp slt i32 %i.qlw, %i.pyn
  br i1 %i.qlx, label %.lr.ph152.i.i1632, label %.preheader.i36.i1623

.lr.ph152.i.i1632:                                ; preds = %.preheader135.i.i1619
  %i.qly = fcmp fast oeq <4 x float> %i.qjr, zeroinitializer
  %i.qlz = bitcast <4 x float> %i.qjr to <4 x i32>
  %i.qma = and <4 x i32> %i.qlz, splat (i32 -2147483648)
  %i.qmb = fcmp fast olt <4 x float> %i.qjr, zeroinitializer
  %i.qmc = select <4 x i1> %i.qmb, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.qmd = or disjoint <4 x i32> %i.qma, splat (i32 1070141403)
  br label %bb.ln

bb.lm:                                            ; preds = %bb.lm, %.lr.ph145.i39.i
  %.1144.i40.i = phi ptr [ %.0.lcssa.i34.i1618, %.lr.ph145.i39.i ], [ %i.qnp, %bb.lm ] ; 2 uses
  %.136143.i.i1637 = phi ptr [ %.035.lcssa.i.i1617, %.lr.ph145.i39.i ], [ %i.qnq, %bb.lm ] ; 2 uses
  %.140142.i.i1638 = phi i32 [ %.039.lcssa.i.i1616, %.lr.ph145.i39.i ], [ %i.qnr, %bb.lm ]
  %i.qme = load <8 x bfloat>, ptr %.1144.i40.i, align 1, !tbaa !555 ; 4 uses
  %i.qmf = fpext fast <8 x bfloat> %i.qme to <8 x float>
  %i.qmg = fcmp fast ueq <8 x bfloat> %i.qme, zeroinitializer
  %i.qmh = fcmp fast olt <8 x bfloat> %i.qme, zeroinitializer
  %i.qmi = select <8 x i1> %i.qmh, <8 x float> %i.qkf, <8 x float> zeroinitializer
  %i.qmj = fdiv fast <8 x float> %i.qjq, %i.qmf   ; 2 uses
  %i.qmk = bitcast <8 x float> %i.qmj to <8 x i32>
  %i.qml = and <8 x i32> %i.qmk, splat (i32 -2147483648)
  %i.qmm = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.qmj) ; 3 uses
  %i.qmn = fcmp fast ogt <8 x float> %i.qmm, splat (float 1.000000e+00) ; 2 uses
  %i.qmo = select <8 x i1> %i.qmn, <8 x float> splat (float -1.000000e+00), <8 x float> %i.qmm
  %i.qmp = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.qmm, <8 x float> splat (float 1.000000e+00))
  %i.qmq = fdiv fast <8 x float> %i.qmo, %i.qmp   ; 3 uses
  %i.qmr = fmul fast <8 x float> %i.qmq, %i.qmq   ; 3 uses
  %i.qms = fmul fast <8 x float> %i.qmr, %i.qmr   ; 7 uses
  %i.qmt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qms, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.qmu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qms, <8 x float> nofpclass(nan inf) %i.qmt, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.qmv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qms, <8 x float> nofpclass(nan inf) %i.qmu, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.qmw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qms, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.qmx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qms, <8 x float> nofpclass(nan inf) %i.qmw, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.qmy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qms, <8 x float> nofpclass(nan inf) %i.qmx, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.qmz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qms, <8 x float> nofpclass(nan inf) %i.qmy, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.qna = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qmr, <8 x float> nofpclass(nan inf) %i.qmv, <8 x float> nofpclass(nan inf) %i.qmz)
  %i.qnb = fmul fast <8 x float> %i.qna, %i.qmq
  %i.qnc = select <8 x i1> %i.qmn, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.qnd = fadd fast <8 x float> %i.qnb, %i.qnc
  %i.qne = bitcast <8 x float> %i.qnd to <8 x i32>
  %i.qnf = or <8 x i32> %i.qml, %i.qne
  %i.qng = bitcast <8 x i32> %i.qnf to <8 x float>
  %i.qnh = fadd fast <8 x float> %i.qmi, %i.qng
  %i.qni = bitcast <8 x bfloat> %i.qme to <8 x i16>
  %isneg.i41.i = icmp sgt <8 x i16> %i.qni, splat (i16 -1)
  %i.qnj = select <8 x i1> %isneg.i41.i, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.qnk = bitcast <8 x float> %i.qnh to <8 x i32>
  %i.qnl = select <8 x i1> %i.qmg, <8 x i32> %i.qkg, <8 x i32> %i.qnk
  %i.qnm = select <8 x i1> %i.qkb, <8 x i32> %i.qnj, <8 x i32> %i.qnl
  %i.qnn = bitcast <8 x i32> %i.qnm to <8 x float>
  %i.qno = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.qnn)
  store <8 x bfloat> %i.qno, ptr %.136143.i.i1637, align 1, !tbaa !555
  %i.qnp = getelementptr inbounds nuw i8, ptr %.1144.i40.i, i64 16 ; 2 uses
  %i.qnq = getelementptr inbounds nuw i8, ptr %.136143.i.i1637, i64 16 ; 2 uses
  %i.qnr = add nuw nsw i32 %.140142.i.i1638, 8    ; 3 uses
  %i.qns = or disjoint i32 %i.qnr, 7
  %i.qnt = icmp slt i32 %i.qns, %i.pyn
  br i1 %i.qnt, label %bb.lm, label %.preheader135.i.i1619, !llvm.loop !346

.preheader.i36.i1623:                             ; preds = %bb.ln, %.preheader135.i.i1619
  %.241.lcssa.i.i1624 = phi i32 [ %.140.lcssa.i.i1620, %.preheader135.i.i1619 ], [ %i.qth, %bb.ln ] ; 5 uses
  %.237.lcssa.i.i1625 = phi ptr [ %.136.lcssa.i.i1621, %.preheader135.i.i1619 ], [ %i.qtg, %bb.ln ] ; 6 uses
  %.2.lcssa.i37.i1626 = phi ptr [ %.1.lcssa.i35.i1622, %.preheader135.i.i1619 ], [ %i.qtf, %bb.ln ] ; 6 uses
  %i.qnu = icmp slt i32 %.241.lcssa.i.i1624, %i.pyn
  br i1 %i.qnu, label %iter.check7088, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7088:                                   ; preds = %.preheader.i36.i1623
  %.2.lcssa.i37.i16267070 = ptrtoaddr ptr %.2.lcssa.i37.i1626 to i64
  %.237.lcssa.i.i16257069 = ptrtoaddr ptr %.237.lcssa.i.i1625 to i64
  %i.qnv = xor i32 %.241.lcssa.i.i1624, -1
  %i.qnw = add i32 %i.pyn, %i.qnv                 ; 3 uses
  %i.qnx = zext i32 %i.qnw to i64
  %i.qny = add nuw nsw i64 %i.qnx, 1              ; 5 uses
  %min.iters.check7072 = icmp ult i32 %i.qnw, 7
  %i.qnz = sub i64 %.2.lcssa.i37.i16267070, %.237.lcssa.i.i16257069
  %diff.check7071 = icmp ugt i64 %i.qnz, -64
  %or.cond9042.a = select i1 %min.iters.check7072, i1 true, i1 %diff.check7071
  br i1 %or.cond9042.a, label %.lr.ph159.i.i1627.preheader, label %vector.main.loop.iter.check7073

vector.main.loop.iter.check7073:                  ; preds = %iter.check7088
  %min.iters.check7074 = icmp ult i32 %i.qnw, 31
  br i1 %min.iters.check7074, label %vec.epilog.ph7092, label %vector.ph7075

vector.ph7075:                                    ; preds = %vector.main.loop.iter.check7073
  %i.qoa = and i64 %i.qny, 24
  %n.vec7076 = and i64 %i.qny, 8589934560         ; 5 uses
  %i.qob = shl nuw nsw i64 %n.vec7076, 1          ; 2 uses
  %i.qoc = getelementptr i8, ptr %.2.lcssa.i37.i1626, i64 %i.qob
  %i.qod = getelementptr i8, ptr %.237.lcssa.i.i1625, i64 %i.qob
  %i.qoe = trunc i64 %n.vec7076 to i32
  %i.qof = add i32 %.241.lcssa.i.i1624, %i.qoe
  %i.qog = insertelement <16 x float> poison, float %i.qiw, i64 0
  %i.qoh = shufflevector <16 x float> %i.qog, <16 x float> poison, <16 x i32> zeroinitializer
  %i.qoi = insertelement <8 x float> poison, float %i.qiw, i64 0
  %i.qoj = shufflevector <8 x float> %i.qoi, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qok = insertelement <4 x float> poison, float %i.qiw, i64 0
  %i.qol = shufflevector <4 x float> %i.qok, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qom = insertelement <2 x float> poison, float %i.qiw, i64 0
  %i.qon = shufflevector <2 x float> %i.qom, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7077

vector.body7077:                                  ; preds = %vector.ph7075, %vector.body7077
  %index7078 = phi i64 [ 0, %vector.ph7075 ], [ %index.next7082, %vector.body7077 ] ; 2 uses
  %i.qoo = shl i64 %index7078, 1                  ; 2 uses
  %next.gep7079 = getelementptr i8, ptr %.2.lcssa.i37.i1626, i64 %i.qoo
  %next.gep7080 = getelementptr i8, ptr %.237.lcssa.i.i1625, i64 %i.qoo
  %wide.load7081 = load <32 x i16>, ptr %next.gep7079, align 2, !tbaa !558
  %i.qop = zext <32 x i16> %wide.load7081 to <32 x i32>
  %i.qoq = shl nuw <32 x i32> %i.qop, splat (i32 16)
  %i.qor = bitcast <32 x i32> %i.qoq to <32 x float> ; 6 uses
  %i.qos = extractelement <32 x float> %i.qor, i64 0
  %i.qot = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qiw, float %i.qos)
  %i.qou = shufflevector <32 x float> %i.qor, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.qov = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.qoh, <16 x float> %i.qou)
  %i.qow = shufflevector <32 x float> %i.qor, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.qox = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.qoj, <8 x float> %i.qow)
  %i.qoy = shufflevector <32 x float> %i.qor, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.qoz = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.qol, <4 x float> %i.qoy)
  %i.qpa = extractelement <32 x float> %i.qor, i64 29
  %i.qpb = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qiw, float %i.qpa)
  %i.qpc = shufflevector <32 x float> %i.qor, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.qpd = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.qon, <2 x float> %i.qpc)
  %i.qpe = insertelement <32 x float> poison, float %i.qot, i64 0
  %i.qpf = shufflevector <16 x float> %i.qov, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qpg = shufflevector <32 x float> %i.qpe, <32 x float> %i.qpf, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qph = shufflevector <8 x float> %i.qox, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qpi = shufflevector <32 x float> %i.qpg, <32 x float> %i.qph, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qpj = shufflevector <4 x float> %i.qoz, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qpk = shufflevector <32 x float> %i.qpi, <32 x float> %i.qpj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.qpl = insertelement <32 x float> %i.qpk, float %i.qpb, i64 29
  %i.qpm = shufflevector <2 x float> %i.qpd, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qpn = shufflevector <32 x float> %i.qpl, <32 x float> %i.qpm, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.qpo = bitcast <32 x float> %i.qpn to <32 x i32>
  %i.qpp = lshr <32 x i32> %i.qpo, splat (i32 16)
  %i.qpq = trunc nuw <32 x i32> %i.qpp to <32 x i16>
  store <32 x i16> %i.qpq, ptr %next.gep7080, align 2, !tbaa !558
  %index.next7082 = add nuw i64 %index7078, 32    ; 2 uses
  %i.qpr = icmp eq i64 %index.next7082, %n.vec7076
  br i1 %i.qpr, label %middle.block7083, label %vector.body7077, !llvm.loop !347

middle.block7083:                                 ; preds = %vector.body7077
  %cmp.n7084 = icmp eq i64 %i.qny, %n.vec7076
  br i1 %cmp.n7084, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7090

vec.epilog.iter.check7090:                        ; preds = %middle.block7083
  %min.epilog.iters.check7091 = icmp eq i64 %i.qoa, 0
  br i1 %min.epilog.iters.check7091, label %.lr.ph159.i.i1627.preheader, label %vec.epilog.ph7092, !prof !561

vec.epilog.ph7092:                                ; preds = %vector.main.loop.iter.check7073, %vec.epilog.iter.check7090
  %vec.epilog.resume.val7085 = phi i64 [ %n.vec7076, %vec.epilog.iter.check7090 ], [ 0, %vector.main.loop.iter.check7073 ]
  %n.vec7093 = and i64 %i.qny, 8589934584         ; 4 uses
  %i.qps = shl nuw nsw i64 %n.vec7093, 1          ; 2 uses
  %i.qpt = getelementptr i8, ptr %.2.lcssa.i37.i1626, i64 %i.qps
  %i.qpu = getelementptr i8, ptr %.237.lcssa.i.i1625, i64 %i.qps
  %i.qpv = trunc i64 %n.vec7093 to i32
  %i.qpw = add i32 %.241.lcssa.i.i1624, %i.qpv
  %i.qpx = insertelement <4 x float> poison, float %i.qiw, i64 0
  %i.qpy = shufflevector <4 x float> %i.qpx, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7094

vec.epilog.vector.body7094:                       ; preds = %vec.epilog.vector.body7094, %vec.epilog.ph7092
  %index7095 = phi i64 [ %vec.epilog.resume.val7085, %vec.epilog.ph7092 ], [ %index.next7099, %vec.epilog.vector.body7094 ] ; 2 uses
  %i.qpz = shl i64 %index7095, 1                  ; 2 uses
  %next.gep7096 = getelementptr i8, ptr %.2.lcssa.i37.i1626, i64 %i.qpz
  %next.gep7097 = getelementptr i8, ptr %.237.lcssa.i.i1625, i64 %i.qpz
  %wide.load7098 = load <8 x i16>, ptr %next.gep7096, align 2, !tbaa !558
  %i.qqa = zext <8 x i16> %wide.load7098 to <8 x i32>
  %i.qqb = shl nuw <8 x i32> %i.qqa, splat (i32 16)
  %i.qqc = bitcast <8 x i32> %i.qqb to <8 x float> ; 5 uses
  %i.qqd = extractelement <8 x float> %i.qqc, i64 0
  %i.qqe = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qiw, float %i.qqd)
  %i.qqf = extractelement <8 x float> %i.qqc, i64 1
  %i.qqg = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qiw, float %i.qqf)
  %i.qqh = extractelement <8 x float> %i.qqc, i64 2
  %i.qqi = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qiw, float %i.qqh)
  %i.qqj = shufflevector <8 x float> %i.qqc, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.qqk = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.qpy, <4 x float> %i.qqj)
  %i.qql = extractelement <8 x float> %i.qqc, i64 7
  %i.qqm = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qiw, float %i.qql)
  %i.qqn = insertelement <8 x float> poison, float %i.qqe, i64 0
  %i.qqo = insertelement <8 x float> %i.qqn, float %i.qqg, i64 1
  %i.qqp = insertelement <8 x float> %i.qqo, float %i.qqi, i64 2
  %i.qqq = shufflevector <4 x float> %i.qqk, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qqr = shufflevector <8 x float> %i.qqp, <8 x float> %i.qqq, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.qqs = insertelement <8 x float> %i.qqr, float %i.qqm, i64 7
  %i.qqt = bitcast <8 x float> %i.qqs to <8 x i32>
  %i.qqu = lshr <8 x i32> %i.qqt, splat (i32 16)
  %i.qqv = trunc nuw <8 x i32> %i.qqu to <8 x i16>
  store <8 x i16> %i.qqv, ptr %next.gep7097, align 2, !tbaa !558
  %index.next7099 = add nuw i64 %index7095, 8     ; 2 uses
  %i.qqw = icmp eq i64 %index.next7099, %n.vec7093
  br i1 %i.qqw, label %vec.epilog.middle.block7100, label %vec.epilog.vector.body7094, !llvm.loop !348

vec.epilog.middle.block7100:                      ; preds = %vec.epilog.vector.body7094
  %cmp.n7101 = icmp eq i64 %i.qny, %n.vec7093
  br i1 %cmp.n7101, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i.i1627.preheader

.lr.ph159.i.i1627.preheader:                      ; preds = %iter.check7088, %vec.epilog.iter.check7090, %vec.epilog.middle.block7100
  %.3158.i.i1628.ph = phi ptr [ %.2.lcssa.i37.i1626, %iter.check7088 ], [ %i.qoc, %vec.epilog.iter.check7090 ], [ %i.qpt, %vec.epilog.middle.block7100 ] ; 3 uses
  %.338157.i.i1629.ph = phi ptr [ %.237.lcssa.i.i1625, %iter.check7088 ], [ %i.qod, %vec.epilog.iter.check7090 ], [ %i.qpu, %vec.epilog.middle.block7100 ] ; 3 uses
  %.342156.i.i1630.ph = phi i32 [ %.241.lcssa.i.i1624, %iter.check7088 ], [ %i.qof, %vec.epilog.iter.check7090 ], [ %i.qpw, %vec.epilog.middle.block7100 ] ; 4 uses
  %i.qqx = sub i32 %i.pyn, %.342156.i.i1630.ph
  %.neg10891 = add i32 %.342156.i.i1630.ph, 1
  %xtraiter10291 = and i32 %i.qqx, 1
  %lcmp.mod10292.not = icmp eq i32 %xtraiter10291, 0
  br i1 %lcmp.mod10292.not, label %.lr.ph159.i.i1627.prol.loopexit, label %.lr.ph159.i.i1627.prol

.lr.ph159.i.i1627.prol:                           ; preds = %.lr.ph159.i.i1627.preheader
  %i.qqy = getelementptr inbounds nuw i8, ptr %.3158.i.i1628.ph, i64 2
  %i.qqz = load i16, ptr %.3158.i.i1628.ph, align 2, !tbaa !558
  %i.qra = zext i16 %i.qqz to i32
  %i.qrb = shl nuw i32 %i.qra, 16
  %i.qrc = bitcast i32 %i.qrb to float
  %i.qrd = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qiw, float %i.qrc)
  %i.qre = bitcast float %i.qrd to i32
  %i.qrf = lshr i32 %i.qre, 16
  %i.qrg = trunc nuw i32 %i.qrf to i16
  %i.qrh = getelementptr inbounds nuw i8, ptr %.338157.i.i1629.ph, i64 2
  store i16 %i.qrg, ptr %.338157.i.i1629.ph, align 2, !tbaa !558
  %i.qri = add nuw nsw i32 %.342156.i.i1630.ph, 1
  br label %.lr.ph159.i.i1627.prol.loopexit

.lr.ph159.i.i1627.prol.loopexit:                  ; preds = %.lr.ph159.i.i1627.prol, %.lr.ph159.i.i1627.preheader
  %.3158.i.i1628.unr = phi ptr [ %.3158.i.i1628.ph, %.lr.ph159.i.i1627.preheader ], [ %i.qqy, %.lr.ph159.i.i1627.prol ]
  %.338157.i.i1629.unr = phi ptr [ %.338157.i.i1629.ph, %.lr.ph159.i.i1627.preheader ], [ %i.qrh, %.lr.ph159.i.i1627.prol ]
  %.342156.i.i1630.unr = phi i32 [ %.342156.i.i1630.ph, %.lr.ph159.i.i1627.preheader ], [ %i.qri, %.lr.ph159.i.i1627.prol ]
  %i.qrj = icmp eq i32 %i.pyn, %.neg10891
  br i1 %i.qrj, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i.i1627

bb.ln:                                            ; preds = %bb.ln, %.lr.ph152.i.i1632
  %.2151.i.i1633 = phi ptr [ %.1.lcssa.i35.i1622, %.lr.ph152.i.i1632 ], [ %i.qtf, %bb.ln ] ; 2 uses
  %.237150.i.i1634 = phi ptr [ %.136.lcssa.i.i1621, %.lr.ph152.i.i1632 ], [ %i.qtg, %bb.ln ] ; 2 uses
  %.241149.i.i1635 = phi i32 [ %.140.lcssa.i.i1620, %.lr.ph152.i.i1632 ], [ %i.qth, %bb.ln ]
  %i.qrk = load i64, ptr %.2151.i.i1633, align 1, !tbaa !555
  %i.qrl = insertelement <2 x i64> poison, i64 %i.qrk, i64 0
  %i.qrm = bitcast <2 x i64> %i.qrl to <8 x i16>
  %i.qrn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qrm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.qro = bitcast <8 x i16> %i.qrn to <4 x float> ; 3 uses
  %i.qrp = fcmp fast oeq <4 x float> %i.qro, zeroinitializer
  %i.qrq = fcmp fast olt <4 x float> %i.qro, zeroinitializer
  %i.qrr = select <4 x i1> %i.qrq, <4 x float> %i.qmc, <4 x float> zeroinitializer
  %i.qrs = fdiv fast <4 x float> %i.qjr, %i.qro   ; 2 uses
  %i.qrt = bitcast <4 x float> %i.qrs to <4 x i32>
  %i.qru = and <4 x i32> %i.qrt, splat (i32 -2147483648)
  %i.qrv = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.qrs) ; 3 uses
  %i.qrw = fcmp fast ogt <4 x float> %i.qrv, splat (float 1.000000e+00) ; 2 uses
  %i.qrx = select <4 x i1> %i.qrw, <4 x float> splat (float -1.000000e+00), <4 x float> %i.qrv
  %i.qry = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.qrv, <4 x float> splat (float 1.000000e+00))
  %i.qrz = fdiv fast <4 x float> %i.qrx, %i.qry   ; 3 uses
  %i.qsa = fmul fast <4 x float> %i.qrz, %i.qrz   ; 3 uses
  %i.qsb = fmul fast <4 x float> %i.qsa, %i.qsa   ; 7 uses
  %i.qsc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qsb, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.qsd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qsb, <4 x float> nofpclass(nan inf) %i.qsc, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.qse = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qsb, <4 x float> nofpclass(nan inf) %i.qsd, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.qsf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qsb, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.qsg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qsb, <4 x float> nofpclass(nan inf) %i.qsf, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.qsh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qsb, <4 x float> nofpclass(nan inf) %i.qsg, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.qsi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qsb, <4 x float> nofpclass(nan inf) %i.qsh, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.qsj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qsa, <4 x float> nofpclass(nan inf) %i.qse, <4 x float> nofpclass(nan inf) %i.qsi)
  %i.qsk = fmul fast <4 x float> %i.qsj, %i.qrz
  %i.qsl = select <4 x i1> %i.qrw, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.qsm = fadd fast <4 x float> %i.qsk, %i.qsl
  %i.qsn = bitcast <4 x float> %i.qsm to <4 x i32>
  %i.qso = or <4 x i32> %i.qru, %i.qsn
  %i.qsp = bitcast <4 x i32> %i.qso to <4 x float>
  %i.qsq = fadd fast <4 x float> %i.qrr, %i.qsp
  %i.qsr = bitcast <8 x i16> %i.qrn to <4 x i32>
  %i.qss = and <4 x i32> %i.qsr, splat (i32 -2147483648)
  %i.qst = or disjoint <4 x i32> %i.qss, splat (i32 1078530011)
  %i.qsu = bitcast <4 x i32> %i.qst to <4 x float>
  %i.qsv = fcmp fast uge <4 x float> %i.qsu, zeroinitializer
  %i.qsw = select <4 x i1> %i.qsv, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.qsx = bitcast <4 x float> %i.qsq to <4 x i32>
  %i.qsy = select <4 x i1> %i.qrp, <4 x i32> %i.qmd, <4 x i32> %i.qsx
  %i.qsz = select <4 x i1> %i.qly, <4 x i32> %i.qsw, <4 x i32> %i.qsy
  %i.qta = bitcast <4 x i32> %i.qsz to <4 x float>
  %i.qtb = shufflevector <4 x float> %i.qta, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.qtc = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.qtb)
  %i.qtd = bitcast <8 x bfloat> %i.qtc to <2 x i64>
  %i.qte = extractelement <2 x i64> %i.qtd, i64 0
  store i64 %i.qte, ptr %.237150.i.i1634, align 1, !tbaa !555
  %i.qtf = getelementptr inbounds nuw i8, ptr %.2151.i.i1633, i64 8 ; 2 uses
  %i.qtg = getelementptr inbounds nuw i8, ptr %.237150.i.i1634, i64 8 ; 2 uses
  %i.qth = add nuw nsw i32 %.241149.i.i1635, 4    ; 3 uses
  %i.qti = or disjoint i32 %i.qth, 3
  %i.qtj = icmp slt i32 %i.qti, %i.pyn
  br i1 %i.qtj, label %bb.ln, label %.preheader.i36.i1623, !llvm.loop !349

.lr.ph159.i.i1627:                                ; preds = %.lr.ph159.i.i1627.prol.loopexit, %.lr.ph159.i.i1627
  %.3158.i.i1628 = phi ptr [ %i.qtu, %.lr.ph159.i.i1627 ], [ %.3158.i.i1628.unr, %.lr.ph159.i.i1627.prol.loopexit ] ; 3 uses
  %.338157.i.i1629 = phi ptr [ %i.qud, %.lr.ph159.i.i1627 ], [ %.338157.i.i1629.unr, %.lr.ph159.i.i1627.prol.loopexit ] ; 3 uses
  %.342156.i.i1630 = phi i32 [ %i.que, %.lr.ph159.i.i1627 ], [ %.342156.i.i1630.unr, %.lr.ph159.i.i1627.prol.loopexit ]
  %i.qtk = getelementptr inbounds nuw i8, ptr %.3158.i.i1628, i64 2
  %i.qtl = load i16, ptr %.3158.i.i1628, align 2, !tbaa !558
  %i.qtm = zext i16 %i.qtl to i32
  %i.qtn = shl nuw i32 %i.qtm, 16
  %i.qto = bitcast i32 %i.qtn to float
  %i.qtp = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qiw, float %i.qto)
  %i.qtq = bitcast float %i.qtp to i32
  %i.qtr = lshr i32 %i.qtq, 16
  %i.qts = trunc nuw i32 %i.qtr to i16
  %i.qtt = getelementptr inbounds nuw i8, ptr %.338157.i.i1629, i64 2
  store i16 %i.qts, ptr %.338157.i.i1629, align 2, !tbaa !558
  %i.qtu = getelementptr inbounds nuw i8, ptr %.3158.i.i1628, i64 4
  %i.qtv = load i16, ptr %i.qtk, align 2, !tbaa !558
  %i.qtw = zext i16 %i.qtv to i32
  %i.qtx = shl nuw i32 %i.qtw, 16
  %i.qty = bitcast i32 %i.qtx to float
  %i.qtz = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qiw, float %i.qty)
  %i.qua = bitcast float %i.qtz to i32
  %i.qub = lshr i32 %i.qua, 16
  %i.quc = trunc nuw i32 %i.qub to i16
  %i.qud = getelementptr inbounds nuw i8, ptr %.338157.i.i1629, i64 4
  store i16 %i.quc, ptr %i.qtt, align 2, !tbaa !558
  %i.que = add nuw nsw i32 %.342156.i.i1630, 2    ; 2 uses
  %exitcond.not.i38.i1631.1 = icmp eq i32 %i.que, %i.pyn
  br i1 %exitcond.not.i38.i1631.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i.i1627, !llvm.loop !350

bb.lo:                                            ; preds = %bb.le
  %i.quf = icmp eq i32 %3, 1
  br i1 %i.quf, label %bb.lp, label %bb.ly

bb.lp:                                            ; preds = %bb.lo
  %i.qug = load i16, ptr %0, align 2, !tbaa !558
  %i.quh = zext i16 %i.qug to i32
  %i.qui = shl nuw i32 %i.quh, 16
  %i.quj = bitcast i32 %i.qui to float            ; 15 uses
  %i.quk = icmp eq i32 %.sroa.speculated.i1516, 4
  br i1 %i.quk, label %.thread129.i76.i1614, label %bb.lq

.thread129.i76.i1614:                             ; preds = %bb.lp
  %i.qul = load i64, ptr %0, align 2, !tbaa !555
  %i.qum = insertelement <2 x i64> poison, i64 %i.qul, i64 0
  %i.qun = bitcast <2 x i64> %i.qum to <8 x i16>
  %i.quo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qun, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qup = bitcast <8 x i16> %i.quo to <4 x float> ; 2 uses
  %i.quq = shufflevector <4 x float> %i.qup, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.lt

bb.lq:                                            ; preds = %bb.lp
  %i.qur = insertelement <4 x float> poison, float %i.quj, i64 0 ; 2 uses
  %i.qus = shufflevector <4 x float> %i.qur, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.qut = icmp eq i32 %.sroa.speculated.i1516, 8
  br i1 %i.qut, label %.thread128.i75.i1613, label %bb.lr

.thread128.i75.i1613:                             ; preds = %bb.lq
  %i.quu = load <8 x bfloat>, ptr %0, align 2, !tbaa !555
  %i.quv = fpext fast <8 x bfloat> %i.quu to <8 x float>
  br label %bb.lt

bb.lr:                                            ; preds = %bb.lq
  %i.quw = shufflevector <4 x float> %i.qur, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.qux = icmp eq i32 %.sroa.speculated.i1516, 16
  br i1 %i.qux, label %bb.ls, label %bb.lt

bb.ls:                                            ; preds = %bb.lr
  %i.quy = load <16 x bfloat>, ptr %0, align 2, !tbaa !555
  %i.quz = fpext fast <16 x bfloat> %i.quy to <16 x float>
  br label %bb.lu

bb.lt:                                            ; preds = %bb.lr, %.thread128.i75.i1613, %.thread129.i76.i1614
  %i.qva = phi <8 x float> [ %i.quv, %.thread128.i75.i1613 ], [ %i.quw, %bb.lr ], [ %i.quq, %.thread129.i76.i1614 ] ; 2 uses
  %i.qvb = phi <4 x float> [ %i.qus, %.thread128.i75.i1613 ], [ %i.qus, %bb.lr ], [ %i.qup, %.thread129.i76.i1614 ]
  %i.qvc = shufflevector <8 x float> %i.qva, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  %i.qvd = phi <8 x float> [ %i.quw, %bb.ls ], [ %i.qva, %bb.lt ] ; 4 uses
  %i.qve = phi <4 x float> [ %i.qus, %bb.ls ], [ %i.qvb, %bb.lt ] ; 4 uses
  %i.qvf = phi fast <16 x float> [ %i.quz, %bb.ls ], [ %i.qvc, %bb.lt ] ; 4 uses
  %i.qvg = icmp sgt i32 %i.pyn, 15
  br i1 %i.qvg, label %.lr.ph.i70.i1608, label %.preheader136.i43.i1585

.lr.ph.i70.i1608:                                 ; preds = %bb.lu
  %i.qvh = fcmp fast one <16 x float> %i.qvf, zeroinitializer
  %i.qvi = fcmp fast olt <16 x float> %i.qvf, zeroinitializer
  %i.qvj = bitcast <16 x float> %i.qvf to <16 x i32>
  %i.qvk = icmp slt <16 x i32> %i.qvj, zeroinitializer
  %i.qvl = select fast <16 x i1> %i.qvk, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.qvm = fdiv fast <16 x float> splat (float 1.000000e+00), %i.qvf
  br label %bb.lv

.preheader136.loopexit.i74.i1612:                 ; preds = %bb.lv
  %i.qvn = and i32 %i.pyn, 2147483632
  br label %.preheader136.i43.i1585

.preheader136.i43.i1585:                          ; preds = %.preheader136.loopexit.i74.i1612, %bb.lu
  %.039.lcssa.i44.i1586 = phi i32 [ 0, %bb.lu ], [ %i.qvn, %.preheader136.loopexit.i74.i1612 ] ; 3 uses
  %.035.lcssa.i45.i1587 = phi ptr [ %2, %bb.lu ], [ %i.qxf, %.preheader136.loopexit.i74.i1612 ] ; 2 uses
  %.0.lcssa.i46.i1588 = phi ptr [ %1, %bb.lu ], [ %i.qxe, %.preheader136.loopexit.i74.i1612 ] ; 2 uses
  %i.qvo = or disjoint i32 %.039.lcssa.i44.i1586, 7
  %i.qvp = icmp slt i32 %i.qvo, %i.pyn
  br i1 %i.qvp, label %.lr.ph145.i65.i, label %.preheader135.i47.i1589

.lr.ph145.i65.i:                                  ; preds = %.preheader136.i43.i1585
  %i.qvq = fcmp fast ueq <8 x float> %i.qvd, zeroinitializer
  %i.qvr = fcmp fast olt <8 x float> %i.qvd, zeroinitializer
  %i.qvs = bitcast <8 x float> %i.qvd to <8 x i32>
  %isneg.inv132.i.i1607 = icmp slt <8 x i32> %i.qvs, zeroinitializer
  %i.qvt = select <8 x i1> %isneg.inv132.i.i1607, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.qvu = fdiv fast <8 x float> splat (float 1.000000e+00), %i.qvd
  br label %bb.lw

bb.lv:                                            ; preds = %bb.lv, %.lr.ph.i70.i1608
  %.0139.i71.i1609 = phi ptr [ %1, %.lr.ph.i70.i1608 ], [ %i.qxe, %bb.lv ] ; 2 uses
  %.035138.i72.i1610 = phi ptr [ %2, %.lr.ph.i70.i1608 ], [ %i.qxf, %bb.lv ] ; 2 uses
  %.039137.i73.i1611 = phi i32 [ 0, %.lr.ph.i70.i1608 ], [ %i.qxg, %bb.lv ]
  %i.qvv = load <16 x bfloat>, ptr %.0139.i71.i1609, align 1, !tbaa !555 ; 3 uses
  %i.qvw = fpext fast <16 x bfloat> %i.qvv to <16 x float> ; 2 uses
  %i.qvx = fcmp fast one <16 x bfloat> %i.qvv, zeroinitializer
  %i.qvy = fcmp fast olt <16 x bfloat> %i.qvv, zeroinitializer
  %i.qvz = select fast <16 x i1> %i.qvy, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.qwa = select fast <16 x i1> %i.qvi, <16 x float> %i.qvz, <16 x float> zeroinitializer
  %i.qwb = fmul fast <16 x float> %i.qvw, %i.qvm  ; 2 uses
  %i.qwc = bitcast <16 x float> %i.qwb to <16 x i32>
  %i.qwd = and <16 x i32> %i.qwc, splat (i32 -2147483648)
  %i.qwe = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.qwb) ; 3 uses
  %i.qwf = fcmp fast ogt <16 x float> %i.qwe, splat (float 1.000000e+00) ; 2 uses
  %i.qwg = select fast <16 x i1> %i.qwf, <16 x float> splat (float -1.000000e+00), <16 x float> %i.qwe
  %i.qwh = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.qwe, <16 x float> splat (float 1.000000e+00))
  %i.qwi = fdiv fast <16 x float> %i.qwg, %i.qwh  ; 3 uses
  %i.qwj = fmul fast <16 x float> %i.qwi, %i.qwi  ; 3 uses
  %i.qwk = fmul fast <16 x float> %i.qwj, %i.qwj  ; 7 uses
  %i.qwl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qwk, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.qwm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qwk, <16 x float> nofpclass(nan inf) %i.qwl, <16 x float> splat (float f0xBE117200))
  %i.qwn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qwk, <16 x float> nofpclass(nan inf) %i.qwm, <16 x float> splat (float f0xBEAAAA53))
  %i.qwo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qwk, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.qwp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qwk, <16 x float> nofpclass(nan inf) %i.qwo, <16 x float> splat (float f0x3DD9ED24))
  %i.qwq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qwk, <16 x float> nofpclass(nan inf) %i.qwp, <16 x float> splat (float f0x3E4CB974))
  %i.qwr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qwk, <16 x float> nofpclass(nan inf) %i.qwq, <16 x float> splat (float 1.000000e+00))
  %i.qws = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qwj, <16 x float> nofpclass(nan inf) %i.qwn, <16 x float> nofpclass(nan inf) %i.qwr)
  %i.qwt = fmul fast <16 x float> %i.qws, %i.qwi
  %i.qwu = select fast <16 x i1> %i.qwf, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.qwv = fadd fast <16 x float> %i.qwt, %i.qwu
  %i.qww = bitcast <16 x float> %i.qwv to <16 x i32>
  %i.qwx = or <16 x i32> %i.qwd, %i.qww
  %i.qwy = bitcast <16 x i32> %i.qwx to <16 x float>
  %i.qwz = fadd fast <16 x float> %i.qwa, %i.qwy
  %i.qxa = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.qvw)
  %i.qxb = select <16 x i1> %i.qvh, <16 x float> %i.qwz, <16 x float> %i.qxa
  %i.qxc = select <16 x i1> %i.qvx, <16 x float> %i.qxb, <16 x float> %i.qvl
  %i.qxd = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.qxc)
  store <16 x bfloat> %i.qxd, ptr %.035138.i72.i1610, align 1, !tbaa !555
  %i.qxe = getelementptr inbounds nuw i8, ptr %.0139.i71.i1609, i64 32 ; 2 uses
  %i.qxf = getelementptr inbounds nuw i8, ptr %.035138.i72.i1610, i64 32 ; 2 uses
  %i.qxg = add nuw nsw i32 %.039137.i73.i1611, 16 ; 2 uses
  %i.qxh = or disjoint i32 %i.qxg, 15
  %i.qxi = icmp slt i32 %i.qxh, %i.pyn
  br i1 %i.qxi, label %bb.lv, label %.preheader136.loopexit.i74.i1612, !llvm.loop !351

.preheader135.i47.i1589:                          ; preds = %bb.lw, %.preheader136.i43.i1585
  %.140.lcssa.i48.i1590 = phi i32 [ %.039.lcssa.i44.i1586, %.preheader136.i43.i1585 ], [ %i.qzf, %bb.lw ] ; 3 uses
  %.136.lcssa.i49.i1591 = phi ptr [ %.035.lcssa.i45.i1587, %.preheader136.i43.i1585 ], [ %i.qze, %bb.lw ] ; 2 uses
  %.1.lcssa.i50.i1592 = phi ptr [ %.0.lcssa.i46.i1588, %.preheader136.i43.i1585 ], [ %i.qzd, %bb.lw ] ; 2 uses
  %i.qxj = or disjoint i32 %.140.lcssa.i48.i1590, 3
  %i.qxk = icmp slt i32 %i.qxj, %i.pyn
  br i1 %i.qxk, label %.lr.ph152.i60.i1602, label %.preheader.i51.i1593

.lr.ph152.i60.i1602:                              ; preds = %.preheader135.i47.i1589
  %i.qxl = fcmp fast oeq <4 x float> %i.qve, zeroinitializer
  %i.qxm = fcmp fast olt <4 x float> %i.qve, zeroinitializer
  %i.qxn = bitcast <4 x float> %i.qve to <4 x i32>
  %isneg.inv.i.i1603 = icmp slt <4 x i32> %i.qxn, zeroinitializer
  %i.qxo = select <4 x i1> %isneg.inv.i.i1603, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.qxp = fdiv fast <4 x float> splat (float 1.000000e+00), %i.qve
  br label %bb.lx

bb.lw:                                            ; preds = %bb.lw, %.lr.ph145.i65.i
  %.1144.i66.i = phi ptr [ %.0.lcssa.i46.i1588, %.lr.ph145.i65.i ], [ %i.qzd, %bb.lw ] ; 2 uses
  %.136143.i67.i = phi ptr [ %.035.lcssa.i45.i1587, %.lr.ph145.i65.i ], [ %i.qze, %bb.lw ] ; 2 uses
  %.140142.i68.i = phi i32 [ %.039.lcssa.i44.i1586, %.lr.ph145.i65.i ], [ %i.qzf, %bb.lw ]
  %i.qxq = load <8 x bfloat>, ptr %.1144.i66.i, align 1, !tbaa !555 ; 3 uses
  %i.qxr = fpext fast <8 x bfloat> %i.qxq to <8 x float> ; 2 uses
  %i.qxs = fcmp fast ueq <8 x bfloat> %i.qxq, zeroinitializer
  %i.qxt = bitcast <8 x float> %i.qxr to <8 x i32>
  %i.qxu = and <8 x i32> %i.qxt, splat (i32 -2147483648)
  %i.qxv = fcmp fast olt <8 x bfloat> %i.qxq, zeroinitializer
  %i.qxw = select <8 x i1> %i.qxv, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.qxx = select <8 x i1> %i.qvr, <8 x float> %i.qxw, <8 x float> zeroinitializer
  %i.qxy = fmul fast <8 x float> %i.qxr, %i.qvu   ; 2 uses
  %i.qxz = bitcast <8 x float> %i.qxy to <8 x i32>
  %i.qya = and <8 x i32> %i.qxz, splat (i32 -2147483648)
  %i.qyb = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.qxy) ; 3 uses
  %i.qyc = fcmp fast ogt <8 x float> %i.qyb, splat (float 1.000000e+00) ; 2 uses
  %i.qyd = select <8 x i1> %i.qyc, <8 x float> splat (float -1.000000e+00), <8 x float> %i.qyb
  %i.qye = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.qyb, <8 x float> splat (float 1.000000e+00))
  %i.qyf = fdiv fast <8 x float> %i.qyd, %i.qye   ; 3 uses
  %i.qyg = fmul fast <8 x float> %i.qyf, %i.qyf   ; 3 uses
  %i.qyh = fmul fast <8 x float> %i.qyg, %i.qyg   ; 7 uses
  %i.qyi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qyh, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.qyj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qyh, <8 x float> nofpclass(nan inf) %i.qyi, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.qyk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qyh, <8 x float> nofpclass(nan inf) %i.qyj, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.qyl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qyh, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.qym = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qyh, <8 x float> nofpclass(nan inf) %i.qyl, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.qyn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qyh, <8 x float> nofpclass(nan inf) %i.qym, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.qyo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qyh, <8 x float> nofpclass(nan inf) %i.qyn, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.qyp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qyg, <8 x float> nofpclass(nan inf) %i.qyk, <8 x float> nofpclass(nan inf) %i.qyo)
  %i.qyq = fmul fast <8 x float> %i.qyp, %i.qyf
  %i.qyr = select <8 x i1> %i.qyc, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.qys = fadd fast <8 x float> %i.qyq, %i.qyr
  %i.qyt = bitcast <8 x float> %i.qys to <8 x i32>
  %i.qyu = or <8 x i32> %i.qya, %i.qyt
  %i.qyv = bitcast <8 x i32> %i.qyu to <8 x float>
  %i.qyw = fadd fast <8 x float> %i.qxx, %i.qyv
  %i.qyx = or disjoint <8 x i32> %i.qxu, splat (i32 1070141403)
  %i.qyy = bitcast <8 x float> %i.qyw to <8 x i32>
  %i.qyz = select <8 x i1> %i.qvq, <8 x i32> %i.qyx, <8 x i32> %i.qyy
  %i.qza = select <8 x i1> %i.qxs, <8 x i32> %i.qvt, <8 x i32> %i.qyz
  %i.qzb = bitcast <8 x i32> %i.qza to <8 x float>
  %i.qzc = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.qzb)
  store <8 x bfloat> %i.qzc, ptr %.136143.i67.i, align 1, !tbaa !555
  %i.qzd = getelementptr inbounds nuw i8, ptr %.1144.i66.i, i64 16 ; 2 uses
  %i.qze = getelementptr inbounds nuw i8, ptr %.136143.i67.i, i64 16 ; 2 uses
  %i.qzf = add nuw nsw i32 %.140142.i68.i, 8      ; 3 uses
  %i.qzg = or disjoint i32 %i.qzf, 7
  %i.qzh = icmp slt i32 %i.qzg, %i.pyn
  br i1 %i.qzh, label %bb.lw, label %.preheader135.i47.i1589, !llvm.loop !352

.preheader.i51.i1593:                             ; preds = %bb.lx, %.preheader135.i47.i1589
  %.241.lcssa.i52.i1594 = phi i32 [ %.140.lcssa.i48.i1590, %.preheader135.i47.i1589 ], [ %i.ret, %bb.lx ] ; 5 uses
  %.237.lcssa.i53.i1595 = phi ptr [ %.136.lcssa.i49.i1591, %.preheader135.i47.i1589 ], [ %i.res, %bb.lx ] ; 6 uses
  %.2.lcssa.i54.i1596 = phi ptr [ %.1.lcssa.i50.i1592, %.preheader135.i47.i1589 ], [ %i.rer, %bb.lx ] ; 6 uses
  %i.qzi = icmp slt i32 %.241.lcssa.i52.i1594, %i.pyn
  br i1 %i.qzi, label %iter.check7051, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7051:                                   ; preds = %.preheader.i51.i1593
  %.2.lcssa.i54.i15967033 = ptrtoaddr ptr %.2.lcssa.i54.i1596 to i64
  %.237.lcssa.i53.i15957032 = ptrtoaddr ptr %.237.lcssa.i53.i1595 to i64
  %i.qzj = xor i32 %.241.lcssa.i52.i1594, -1
  %i.qzk = add i32 %i.pyn, %i.qzj                 ; 3 uses
  %i.qzl = zext i32 %i.qzk to i64
  %i.qzm = add nuw nsw i64 %i.qzl, 1              ; 5 uses
  %min.iters.check7035 = icmp ult i32 %i.qzk, 7
  %i.qzn = sub i64 %.2.lcssa.i54.i15967033, %.237.lcssa.i53.i15957032
  %diff.check7034 = icmp ugt i64 %i.qzn, -64
  %or.cond9043.a = select i1 %min.iters.check7035, i1 true, i1 %diff.check7034
  br i1 %or.cond9043.a, label %.lr.ph159.i55.i1597.preheader, label %vector.main.loop.iter.check7036

vector.main.loop.iter.check7036:                  ; preds = %iter.check7051
  %min.iters.check7037 = icmp ult i32 %i.qzk, 31
  br i1 %min.iters.check7037, label %vec.epilog.ph7055, label %vector.ph7038

vector.ph7038:                                    ; preds = %vector.main.loop.iter.check7036
  %i.qzo = and i64 %i.qzm, 24
  %n.vec7039 = and i64 %i.qzm, 8589934560         ; 5 uses
  %i.qzp = shl nuw nsw i64 %n.vec7039, 1          ; 2 uses
  %i.qzq = getelementptr i8, ptr %.2.lcssa.i54.i1596, i64 %i.qzp
  %i.qzr = getelementptr i8, ptr %.237.lcssa.i53.i1595, i64 %i.qzp
  %i.qzs = trunc i64 %n.vec7039 to i32
  %i.qzt = add i32 %.241.lcssa.i52.i1594, %i.qzs
  %i.qzu = insertelement <16 x float> poison, float %i.quj, i64 0
  %i.qzv = shufflevector <16 x float> %i.qzu, <16 x float> poison, <16 x i32> zeroinitializer
  %i.qzw = insertelement <8 x float> poison, float %i.quj, i64 0
  %i.qzx = shufflevector <8 x float> %i.qzw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qzy = insertelement <4 x float> poison, float %i.quj, i64 0
  %i.qzz = shufflevector <4 x float> %i.qzy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.raa = insertelement <2 x float> poison, float %i.quj, i64 0
  %i.rab = shufflevector <2 x float> %i.raa, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7040

vector.body7040:                                  ; preds = %vector.ph7038, %vector.body7040
  %index7041 = phi i64 [ 0, %vector.ph7038 ], [ %index.next7045, %vector.body7040 ] ; 2 uses
  %i.rac = shl i64 %index7041, 1                  ; 2 uses
  %next.gep7042 = getelementptr i8, ptr %.2.lcssa.i54.i1596, i64 %i.rac
  %next.gep7043 = getelementptr i8, ptr %.237.lcssa.i53.i1595, i64 %i.rac
  %wide.load7044 = load <32 x i16>, ptr %next.gep7042, align 2, !tbaa !558
  %i.rad = zext <32 x i16> %wide.load7044 to <32 x i32>
  %i.rae = shl nuw <32 x i32> %i.rad, splat (i32 16)
  %i.raf = bitcast <32 x i32> %i.rae to <32 x float> ; 6 uses
  %i.rag = extractelement <32 x float> %i.raf, i64 0
  %i.rah = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rag, float %i.quj)
  %i.rai = shufflevector <32 x float> %i.raf, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.raj = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.rai, <16 x float> %i.qzv)
  %i.rak = shufflevector <32 x float> %i.raf, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.ral = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.rak, <8 x float> %i.qzx)
  %i.ram = shufflevector <32 x float> %i.raf, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.ran = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.ram, <4 x float> %i.qzz)
  %i.rao = extractelement <32 x float> %i.raf, i64 29
  %i.rap = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rao, float %i.quj)
  %i.raq = shufflevector <32 x float> %i.raf, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.rar = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.raq, <2 x float> %i.rab)
  %i.ras = insertelement <32 x float> poison, float %i.rah, i64 0
  %i.rat = shufflevector <16 x float> %i.raj, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rau = shufflevector <32 x float> %i.ras, <32 x float> %i.rat, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rav = shufflevector <8 x float> %i.ral, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.raw = shufflevector <32 x float> %i.rau, <32 x float> %i.rav, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rax = shufflevector <4 x float> %i.ran, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ray = shufflevector <32 x float> %i.raw, <32 x float> %i.rax, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.raz = insertelement <32 x float> %i.ray, float %i.rap, i64 29
  %i.rba = shufflevector <2 x float> %i.rar, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rbb = shufflevector <32 x float> %i.raz, <32 x float> %i.rba, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.rbc = bitcast <32 x float> %i.rbb to <32 x i32>
  %i.rbd = lshr <32 x i32> %i.rbc, splat (i32 16)
  %i.rbe = trunc nuw <32 x i32> %i.rbd to <32 x i16>
  store <32 x i16> %i.rbe, ptr %next.gep7043, align 2, !tbaa !558
  %index.next7045 = add nuw i64 %index7041, 32    ; 2 uses
  %i.rbf = icmp eq i64 %index.next7045, %n.vec7039
  br i1 %i.rbf, label %middle.block7046, label %vector.body7040, !llvm.loop !353

middle.block7046:                                 ; preds = %vector.body7040
  %cmp.n7047 = icmp eq i64 %i.qzm, %n.vec7039
  br i1 %cmp.n7047, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7053

vec.epilog.iter.check7053:                        ; preds = %middle.block7046
  %min.epilog.iters.check7054 = icmp eq i64 %i.qzo, 0
  br i1 %min.epilog.iters.check7054, label %.lr.ph159.i55.i1597.preheader, label %vec.epilog.ph7055, !prof !561

vec.epilog.ph7055:                                ; preds = %vector.main.loop.iter.check7036, %vec.epilog.iter.check7053
  %vec.epilog.resume.val7048 = phi i64 [ %n.vec7039, %vec.epilog.iter.check7053 ], [ 0, %vector.main.loop.iter.check7036 ]
  %n.vec7056 = and i64 %i.qzm, 8589934584         ; 4 uses
  %i.rbg = shl nuw nsw i64 %n.vec7056, 1          ; 2 uses
  %i.rbh = getelementptr i8, ptr %.2.lcssa.i54.i1596, i64 %i.rbg
  %i.rbi = getelementptr i8, ptr %.237.lcssa.i53.i1595, i64 %i.rbg
  %i.rbj = trunc i64 %n.vec7056 to i32
  %i.rbk = add i32 %.241.lcssa.i52.i1594, %i.rbj
  %i.rbl = insertelement <4 x float> poison, float %i.quj, i64 0
  %i.rbm = shufflevector <4 x float> %i.rbl, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7057

vec.epilog.vector.body7057:                       ; preds = %vec.epilog.vector.body7057, %vec.epilog.ph7055
  %index7058 = phi i64 [ %vec.epilog.resume.val7048, %vec.epilog.ph7055 ], [ %index.next7062, %vec.epilog.vector.body7057 ] ; 2 uses
  %i.rbn = shl i64 %index7058, 1                  ; 2 uses
  %next.gep7059 = getelementptr i8, ptr %.2.lcssa.i54.i1596, i64 %i.rbn
  %next.gep7060 = getelementptr i8, ptr %.237.lcssa.i53.i1595, i64 %i.rbn
  %wide.load7061 = load <8 x i16>, ptr %next.gep7059, align 2, !tbaa !558
  %i.rbo = zext <8 x i16> %wide.load7061 to <8 x i32>
  %i.rbp = shl nuw <8 x i32> %i.rbo, splat (i32 16)
  %i.rbq = bitcast <8 x i32> %i.rbp to <8 x float> ; 5 uses
  %i.rbr = extractelement <8 x float> %i.rbq, i64 0
  %i.rbs = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rbr, float %i.quj)
  %i.rbt = extractelement <8 x float> %i.rbq, i64 1
  %i.rbu = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rbt, float %i.quj)
  %i.rbv = extractelement <8 x float> %i.rbq, i64 2
  %i.rbw = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rbv, float %i.quj)
  %i.rbx = shufflevector <8 x float> %i.rbq, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.rby = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.rbx, <4 x float> %i.rbm)
  %i.rbz = extractelement <8 x float> %i.rbq, i64 7
  %i.rca = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rbz, float %i.quj)
  %i.rcb = insertelement <8 x float> poison, float %i.rbs, i64 0
  %i.rcc = insertelement <8 x float> %i.rcb, float %i.rbu, i64 1
  %i.rcd = insertelement <8 x float> %i.rcc, float %i.rbw, i64 2
  %i.rce = shufflevector <4 x float> %i.rby, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rcf = shufflevector <8 x float> %i.rcd, <8 x float> %i.rce, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.rcg = insertelement <8 x float> %i.rcf, float %i.rca, i64 7
  %i.rch = bitcast <8 x float> %i.rcg to <8 x i32>
  %i.rci = lshr <8 x i32> %i.rch, splat (i32 16)
  %i.rcj = trunc nuw <8 x i32> %i.rci to <8 x i16>
  store <8 x i16> %i.rcj, ptr %next.gep7060, align 2, !tbaa !558
  %index.next7062 = add nuw i64 %index7058, 8     ; 2 uses
  %i.rck = icmp eq i64 %index.next7062, %n.vec7056
  br i1 %i.rck, label %vec.epilog.middle.block7063, label %vec.epilog.vector.body7057, !llvm.loop !354

vec.epilog.middle.block7063:                      ; preds = %vec.epilog.vector.body7057
  %cmp.n7064 = icmp eq i64 %i.qzm, %n.vec7056
  br i1 %cmp.n7064, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i55.i1597.preheader

.lr.ph159.i55.i1597.preheader:                    ; preds = %iter.check7051, %vec.epilog.iter.check7053, %vec.epilog.middle.block7063
  %.3158.i56.i1598.ph = phi ptr [ %.2.lcssa.i54.i1596, %iter.check7051 ], [ %i.qzq, %vec.epilog.iter.check7053 ], [ %i.rbh, %vec.epilog.middle.block7063 ] ; 3 uses
  %.338157.i57.i1599.ph = phi ptr [ %.237.lcssa.i53.i1595, %iter.check7051 ], [ %i.qzr, %vec.epilog.iter.check7053 ], [ %i.rbi, %vec.epilog.middle.block7063 ] ; 3 uses
  %.342156.i58.i1600.ph = phi i32 [ %.241.lcssa.i52.i1594, %iter.check7051 ], [ %i.qzt, %vec.epilog.iter.check7053 ], [ %i.rbk, %vec.epilog.middle.block7063 ] ; 4 uses
  %i.rcl = sub i32 %i.pyn, %.342156.i58.i1600.ph
  %.neg10890 = add i32 %.342156.i58.i1600.ph, 1
  %xtraiter10289 = and i32 %i.rcl, 1
  %lcmp.mod10290.not = icmp eq i32 %xtraiter10289, 0
  br i1 %lcmp.mod10290.not, label %.lr.ph159.i55.i1597.prol.loopexit, label %.lr.ph159.i55.i1597.prol

.lr.ph159.i55.i1597.prol:                         ; preds = %.lr.ph159.i55.i1597.preheader
  %i.rcm = getelementptr inbounds nuw i8, ptr %.3158.i56.i1598.ph, i64 2
  %i.rcn = load i16, ptr %.3158.i56.i1598.ph, align 2, !tbaa !558
  %i.rco = zext i16 %i.rcn to i32
  %i.rcp = shl nuw i32 %i.rco, 16
  %i.rcq = bitcast i32 %i.rcp to float
  %i.rcr = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rcq, float %i.quj)
  %i.rcs = bitcast float %i.rcr to i32
  %i.rct = lshr i32 %i.rcs, 16
  %i.rcu = trunc nuw i32 %i.rct to i16
  %i.rcv = getelementptr inbounds nuw i8, ptr %.338157.i57.i1599.ph, i64 2
  store i16 %i.rcu, ptr %.338157.i57.i1599.ph, align 2, !tbaa !558
  %i.rcw = add nuw nsw i32 %.342156.i58.i1600.ph, 1
  br label %.lr.ph159.i55.i1597.prol.loopexit

.lr.ph159.i55.i1597.prol.loopexit:                ; preds = %.lr.ph159.i55.i1597.prol, %.lr.ph159.i55.i1597.preheader
  %.3158.i56.i1598.unr = phi ptr [ %.3158.i56.i1598.ph, %.lr.ph159.i55.i1597.preheader ], [ %i.rcm, %.lr.ph159.i55.i1597.prol ]
  %.338157.i57.i1599.unr = phi ptr [ %.338157.i57.i1599.ph, %.lr.ph159.i55.i1597.preheader ], [ %i.rcv, %.lr.ph159.i55.i1597.prol ]
  %.342156.i58.i1600.unr = phi i32 [ %.342156.i58.i1600.ph, %.lr.ph159.i55.i1597.preheader ], [ %i.rcw, %.lr.ph159.i55.i1597.prol ]
  %i.rcx = icmp eq i32 %i.pyn, %.neg10890
  br i1 %i.rcx, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i55.i1597

bb.lx:                                            ; preds = %bb.lx, %.lr.ph152.i60.i1602
  %.2151.i61.i1604 = phi ptr [ %.1.lcssa.i50.i1592, %.lr.ph152.i60.i1602 ], [ %i.rer, %bb.lx ] ; 2 uses
  %.237150.i62.i1605 = phi ptr [ %.136.lcssa.i49.i1591, %.lr.ph152.i60.i1602 ], [ %i.res, %bb.lx ] ; 2 uses
  %.241149.i63.i1606 = phi i32 [ %.140.lcssa.i48.i1590, %.lr.ph152.i60.i1602 ], [ %i.ret, %bb.lx ]
  %i.rcy = load i64, ptr %.2151.i61.i1604, align 1, !tbaa !555
  %i.rcz = insertelement <2 x i64> poison, i64 %i.rcy, i64 0
  %i.rda = bitcast <2 x i64> %i.rcz to <8 x i16>
  %i.rdb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rda, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.rdc = bitcast <8 x i16> %i.rdb to <4 x float> ; 3 uses
  %i.rdd = fcmp fast oeq <4 x float> %i.rdc, zeroinitializer
  %i.rde = fcmp fast olt <4 x float> %i.rdc, zeroinitializer
  %i.rdf = select <4 x i1> %i.rde, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.rdg = select <4 x i1> %i.qxm, <4 x float> %i.rdf, <4 x float> zeroinitializer
  %i.rdh = fmul fast <4 x float> %i.rdc, %i.qxp   ; 2 uses
  %i.rdi = bitcast <4 x float> %i.rdh to <4 x i32>
  %i.rdj = and <4 x i32> %i.rdi, splat (i32 -2147483648)
  %i.rdk = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.rdh) ; 3 uses
  %i.rdl = fcmp fast ogt <4 x float> %i.rdk, splat (float 1.000000e+00) ; 2 uses
  %i.rdm = select <4 x i1> %i.rdl, <4 x float> splat (float -1.000000e+00), <4 x float> %i.rdk
  %i.rdn = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.rdk, <4 x float> splat (float 1.000000e+00))
  %i.rdo = fdiv fast <4 x float> %i.rdm, %i.rdn   ; 3 uses
  %i.rdp = fmul fast <4 x float> %i.rdo, %i.rdo   ; 3 uses
  %i.rdq = fmul fast <4 x float> %i.rdp, %i.rdp   ; 7 uses
  %i.rdr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rdq, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.rds = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rdq, <4 x float> nofpclass(nan inf) %i.rdr, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.rdt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rdq, <4 x float> nofpclass(nan inf) %i.rds, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.rdu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rdq, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.rdv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rdq, <4 x float> nofpclass(nan inf) %i.rdu, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.rdw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rdq, <4 x float> nofpclass(nan inf) %i.rdv, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.rdx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rdq, <4 x float> nofpclass(nan inf) %i.rdw, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.rdy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rdp, <4 x float> nofpclass(nan inf) %i.rdt, <4 x float> nofpclass(nan inf) %i.rdx)
  %i.rdz = fmul fast <4 x float> %i.rdy, %i.rdo
  %i.rea = select <4 x i1> %i.rdl, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.reb = fadd fast <4 x float> %i.rdz, %i.rea
  %i.rec = bitcast <4 x float> %i.reb to <4 x i32>
  %i.red = or <4 x i32> %i.rdj, %i.rec
  %i.ree = bitcast <4 x i32> %i.red to <4 x float>
  %i.ref = fadd fast <4 x float> %i.rdg, %i.ree
  %i.reg = bitcast <8 x i16> %i.rdb to <4 x i32>
  %i.reh = and <4 x i32> %i.reg, splat (i32 -2147483648)
  %i.rei = or disjoint <4 x i32> %i.reh, splat (i32 1070141403)
  %i.rej = bitcast <4 x float> %i.ref to <4 x i32>
  %i.rek = select <4 x i1> %i.qxl, <4 x i32> %i.rei, <4 x i32> %i.rej
  %i.rel = select <4 x i1> %i.rdd, <4 x i32> %i.qxo, <4 x i32> %i.rek
  %i.rem = bitcast <4 x i32> %i.rel to <4 x float>
  %i.ren = shufflevector <4 x float> %i.rem, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.reo = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ren)
  %i.rep = bitcast <8 x bfloat> %i.reo to <2 x i64>
  %i.req = extractelement <2 x i64> %i.rep, i64 0
  store i64 %i.req, ptr %.237150.i62.i1605, align 1, !tbaa !555
  %i.rer = getelementptr inbounds nuw i8, ptr %.2151.i61.i1604, i64 8 ; 2 uses
  %i.res = getelementptr inbounds nuw i8, ptr %.237150.i62.i1605, i64 8 ; 2 uses
  %i.ret = add nuw nsw i32 %.241149.i63.i1606, 4  ; 3 uses
  %i.reu = or disjoint i32 %i.ret, 3
  %i.rev = icmp slt i32 %i.reu, %i.pyn
  br i1 %i.rev, label %bb.lx, label %.preheader.i51.i1593, !llvm.loop !355

.lr.ph159.i55.i1597:                              ; preds = %.lr.ph159.i55.i1597.prol.loopexit, %.lr.ph159.i55.i1597
  %.3158.i56.i1598 = phi ptr [ %i.rfg, %.lr.ph159.i55.i1597 ], [ %.3158.i56.i1598.unr, %.lr.ph159.i55.i1597.prol.loopexit ] ; 3 uses
  %.338157.i57.i1599 = phi ptr [ %i.rfp, %.lr.ph159.i55.i1597 ], [ %.338157.i57.i1599.unr, %.lr.ph159.i55.i1597.prol.loopexit ] ; 3 uses
  %.342156.i58.i1600 = phi i32 [ %i.rfq, %.lr.ph159.i55.i1597 ], [ %.342156.i58.i1600.unr, %.lr.ph159.i55.i1597.prol.loopexit ]
  %i.rew = getelementptr inbounds nuw i8, ptr %.3158.i56.i1598, i64 2
  %i.rex = load i16, ptr %.3158.i56.i1598, align 2, !tbaa !558
  %i.rey = zext i16 %i.rex to i32
  %i.rez = shl nuw i32 %i.rey, 16
  %i.rfa = bitcast i32 %i.rez to float
  %i.rfb = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rfa, float %i.quj)
  %i.rfc = bitcast float %i.rfb to i32
  %i.rfd = lshr i32 %i.rfc, 16
  %i.rfe = trunc nuw i32 %i.rfd to i16
  %i.rff = getelementptr inbounds nuw i8, ptr %.338157.i57.i1599, i64 2
  store i16 %i.rfe, ptr %.338157.i57.i1599, align 2, !tbaa !558
  %i.rfg = getelementptr inbounds nuw i8, ptr %.3158.i56.i1598, i64 4
  %i.rfh = load i16, ptr %i.rew, align 2, !tbaa !558
  %i.rfi = zext i16 %i.rfh to i32
  %i.rfj = shl nuw i32 %i.rfi, 16
  %i.rfk = bitcast i32 %i.rfj to float
  %i.rfl = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rfk, float %i.quj)
  %i.rfm = bitcast float %i.rfl to i32
  %i.rfn = lshr i32 %i.rfm, 16
  %i.rfo = trunc nuw i32 %i.rfn to i16
  %i.rfp = getelementptr inbounds nuw i8, ptr %.338157.i57.i1599, i64 4
  store i16 %i.rfo, ptr %i.rff, align 2, !tbaa !558
  %i.rfq = add nuw nsw i32 %.342156.i58.i1600, 2  ; 2 uses
  %exitcond.not.i59.i1601.1 = icmp eq i32 %i.rfq, %i.pyn
  br i1 %exitcond.not.i59.i1601.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i55.i1597, !llvm.loop !356

bb.ly:                                            ; preds = %bb.lo, %bb.lb
  %i.rfr = icmp eq i32 %6, 1
  br i1 %i.rfr, label %bb.lz, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.lz:                                            ; preds = %bb.ly
  %i.rfs = icmp eq i32 %3, %4
  br i1 %i.rfs, label %bb.ma, label %bb.mb

bb.ma:                                            ; preds = %bb.lz
  switch i32 %.sroa.speculated.i1516, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 16, label %.preheader.i80.i1578
    i32 8, label %.preheader123.i.i1570
    i32 4, label %.preheader125.i.i1564
  ]

.preheader125.i.i1564:                            ; preds = %bb.ma
  %i.rft = icmp sgt i32 %.sroa.speculated104.i1515, 0
  br i1 %i.rft, label %.lr.ph.i77.i1565, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader123.i.i1570:                            ; preds = %bb.ma
  %i.rfu = icmp sgt i32 %.sroa.speculated104.i1515, 0
  br i1 %i.rfu, label %.lr.ph135.i.i1571, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader.i80.i1578:                             ; preds = %bb.ma
  %i.rfv = icmp sgt i32 %.sroa.speculated104.i1515, 0
  br i1 %i.rfv, label %.lr.ph140.i.i1579, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph140.i.i1579:                                ; preds = %.preheader.i80.i1578, %.lr.ph140.i.i1579
  %.031139.i.i1580 = phi ptr [ %i.rhq, %.lr.ph140.i.i1579 ], [ %0, %.preheader.i80.i1578 ] ; 2 uses
  %.033138.i.i1581 = phi ptr [ %i.rhr, %.lr.ph140.i.i1579 ], [ %1, %.preheader.i80.i1578 ] ; 2 uses
  %.036137.i.i1582 = phi i32 [ %i.rht, %.lr.ph140.i.i1579 ], [ 0, %.preheader.i80.i1578 ]
  %.037136.i.i1583 = phi ptr [ %i.rhs, %.lr.ph140.i.i1579 ], [ %2, %.preheader.i80.i1578 ] ; 2 uses
  %i.rfw = load <16 x bfloat>, ptr %.031139.i.i1580, align 1, !tbaa !555 ; 4 uses
  %i.rfx = fpext fast <16 x bfloat> %i.rfw to <16 x float>
  %i.rfy = load i16, ptr %.033138.i.i1581, align 2, !tbaa !558
  %i.rfz = zext i16 %i.rfy to i32
  %i.rga = shl nuw i32 %i.rfz, 16
  %i.rgb = insertelement <16 x i32> poison, i32 %i.rga, i64 0
  %i.rgc = bitcast <16 x i32> %i.rgb to <16 x float>
  %i.rgd = shufflevector <16 x float> %i.rgc, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.rge = fcmp fast one <16 x bfloat> %i.rfw, zeroinitializer
  %i.rgf = fcmp fast one <16 x float> %i.rgd, zeroinitializer
  %i.rgg = fcmp fast olt <16 x bfloat> %i.rfw, zeroinitializer
  %i.rgh = fcmp fast olt <16 x float> %i.rgd, zeroinitializer
  %i.rgi = select fast <16 x i1> %i.rgh, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.rgj = select fast <16 x i1> %i.rgg, <16 x float> %i.rgi, <16 x float> zeroinitializer
  %i.rgk = fdiv fast <16 x float> %i.rgd, %i.rfx  ; 2 uses
  %i.rgl = bitcast <16 x float> %i.rgk to <16 x i32>
  %i.rgm = and <16 x i32> %i.rgl, splat (i32 -2147483648)
  %i.rgn = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.rgk) ; 3 uses
  %i.rgo = fcmp fast ogt <16 x float> %i.rgn, splat (float 1.000000e+00) ; 2 uses
  %i.rgp = select fast <16 x i1> %i.rgo, <16 x float> splat (float -1.000000e+00), <16 x float> %i.rgn
  %i.rgq = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.rgn, <16 x float> splat (float 1.000000e+00))
  %i.rgr = fdiv fast <16 x float> %i.rgp, %i.rgq  ; 3 uses
  %i.rgs = fmul fast <16 x float> %i.rgr, %i.rgr  ; 3 uses
  %i.rgt = fmul fast <16 x float> %i.rgs, %i.rgs  ; 7 uses
  %i.rgu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rgt, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.rgv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rgt, <16 x float> nofpclass(nan inf) %i.rgu, <16 x float> splat (float f0xBE117200))
  %i.rgw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rgt, <16 x float> nofpclass(nan inf) %i.rgv, <16 x float> splat (float f0xBEAAAA53))
  %i.rgx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rgt, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.rgy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rgt, <16 x float> nofpclass(nan inf) %i.rgx, <16 x float> splat (float f0x3DD9ED24))
  %i.rgz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rgt, <16 x float> nofpclass(nan inf) %i.rgy, <16 x float> splat (float f0x3E4CB974))
  %i.rha = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rgt, <16 x float> nofpclass(nan inf) %i.rgz, <16 x float> splat (float 1.000000e+00))
  %i.rhb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rgs, <16 x float> nofpclass(nan inf) %i.rgw, <16 x float> nofpclass(nan inf) %i.rha)
  %i.rhc = fmul fast <16 x float> %i.rhb, %i.rgr
  %i.rhd = select fast <16 x i1> %i.rgo, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.rhe = fadd fast <16 x float> %i.rhc, %i.rhd
  %i.rhf = bitcast <16 x float> %i.rhe to <16 x i32>
  %i.rhg = or <16 x i32> %i.rgm, %i.rhf
  %i.rhh = bitcast <16 x i32> %i.rhg to <16 x float>
  %i.rhi = fadd fast <16 x float> %i.rgj, %i.rhh
  %i.rhj = bitcast <16 x bfloat> %i.rfw to <16 x i16>
  %i.rhk = icmp slt <16 x i16> %i.rhj, zeroinitializer
  %i.rhl = select fast <16 x i1> %i.rhk, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.rhm = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.rgd)
  %i.rhn = select <16 x i1> %i.rge, <16 x float> %i.rhi, <16 x float> %i.rhm
  %i.rho = select <16 x i1> %i.rgf, <16 x float> %i.rhn, <16 x float> %i.rhl
  %i.rhp = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rho)
  store <16 x bfloat> %i.rhp, ptr %.037136.i.i1583, align 1, !tbaa !555
  %i.rhq = getelementptr inbounds nuw i8, ptr %.031139.i.i1580, i64 32
  %i.rhr = getelementptr inbounds nuw i8, ptr %.033138.i.i1581, i64 2
  %i.rhs = getelementptr inbounds nuw i8, ptr %.037136.i.i1583, i64 32
  %i.rht = add nuw nsw i32 %.036137.i.i1582, 1    ; 2 uses
  %exitcond144.not.i.i1584 = icmp eq i32 %i.rht, %.sroa.speculated104.i1515
  br i1 %exitcond144.not.i.i1584, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph140.i.i1579, !llvm.loop !357

.lr.ph135.i.i1571:                                ; preds = %.preheader123.i.i1570, %.lr.ph135.i.i1571
  %.1134.i.i1572 = phi ptr [ %i.rjr, %.lr.ph135.i.i1571 ], [ %0, %.preheader123.i.i1570 ] ; 2 uses
  %.032133.i.i1573 = phi i32 [ %i.rju, %.lr.ph135.i.i1571 ], [ 0, %.preheader123.i.i1570 ]
  %.134132.i.i1574 = phi ptr [ %i.rjs, %.lr.ph135.i.i1571 ], [ %1, %.preheader123.i.i1570 ] ; 2 uses
  %.138131.i.i1575 = phi ptr [ %i.rjt, %.lr.ph135.i.i1571 ], [ %2, %.preheader123.i.i1570 ] ; 2 uses
  %i.rhu = load <8 x bfloat>, ptr %.1134.i.i1572, align 1, !tbaa !555 ; 4 uses
  %i.rhv = fpext fast <8 x bfloat> %i.rhu to <8 x float>
  %i.rhw = load i16, ptr %.134132.i.i1574, align 2, !tbaa !558
  %i.rhx = zext i16 %i.rhw to i32
  %i.rhy = shl nuw i32 %i.rhx, 16
  %i.rhz = insertelement <8 x i32> poison, i32 %i.rhy, i64 0
  %i.ria = bitcast <8 x i32> %i.rhz to <8 x float>
  %i.rib = shufflevector <8 x float> %i.ria, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ric = fcmp fast ueq <8 x bfloat> %i.rhu, zeroinitializer
  %i.rid = fcmp fast ueq <8 x float> %i.rib, zeroinitializer
  %i.rie = bitcast <8 x float> %i.rib to <8 x i32>
  %i.rif = and <8 x i32> %i.rie, splat (i32 -2147483648)
  %i.rig = fcmp fast olt <8 x bfloat> %i.rhu, zeroinitializer
  %i.rih = fcmp fast olt <8 x float> %i.rib, zeroinitializer
  %i.rii = select <8 x i1> %i.rih, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.rij = select <8 x i1> %i.rig, <8 x float> %i.rii, <8 x float> zeroinitializer
  %i.rik = fdiv fast <8 x float> %i.rib, %i.rhv   ; 2 uses
  %i.ril = bitcast <8 x float> %i.rik to <8 x i32>
  %i.rim = and <8 x i32> %i.ril, splat (i32 -2147483648)
  %i.rin = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.rik) ; 3 uses
  %i.rio = fcmp fast ogt <8 x float> %i.rin, splat (float 1.000000e+00) ; 2 uses
  %i.rip = select <8 x i1> %i.rio, <8 x float> splat (float -1.000000e+00), <8 x float> %i.rin
  %i.riq = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.rin, <8 x float> splat (float 1.000000e+00))
  %i.rir = fdiv fast <8 x float> %i.rip, %i.riq   ; 3 uses
  %i.ris = fmul fast <8 x float> %i.rir, %i.rir   ; 3 uses
  %i.rit = fmul fast <8 x float> %i.ris, %i.ris   ; 7 uses
  %i.riu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rit, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.riv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rit, <8 x float> nofpclass(nan inf) %i.riu, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.riw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rit, <8 x float> nofpclass(nan inf) %i.riv, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.rix = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rit, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.riy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rit, <8 x float> nofpclass(nan inf) %i.rix, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.riz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rit, <8 x float> nofpclass(nan inf) %i.riy, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.rja = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rit, <8 x float> nofpclass(nan inf) %i.riz, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.rjb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ris, <8 x float> nofpclass(nan inf) %i.riw, <8 x float> nofpclass(nan inf) %i.rja)
  %i.rjc = fmul fast <8 x float> %i.rjb, %i.rir
  %i.rjd = select <8 x i1> %i.rio, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.rje = fadd fast <8 x float> %i.rjc, %i.rjd
  %i.rjf = bitcast <8 x float> %i.rje to <8 x i32>
  %i.rjg = or <8 x i32> %i.rim, %i.rjf
  %i.rjh = bitcast <8 x i32> %i.rjg to <8 x float>
  %i.rji = fadd fast <8 x float> %i.rij, %i.rjh
  %i.rjj = bitcast <8 x bfloat> %i.rhu to <8 x i16>
  %i.rjk = or disjoint <8 x i32> %i.rif, splat (i32 1070141403)
  %isneg.i79.i = icmp sgt <8 x i16> %i.rjj, splat (i16 -1)
  %i.rjl = select <8 x i1> %isneg.i79.i, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.rjm = bitcast <8 x float> %i.rji to <8 x i32>
  %i.rjn = select <8 x i1> %i.ric, <8 x i32> %i.rjk, <8 x i32> %i.rjm
  %i.rjo = select <8 x i1> %i.rid, <8 x i32> %i.rjl, <8 x i32> %i.rjn
  %i.rjp = bitcast <8 x i32> %i.rjo to <8 x float>
  %i.rjq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.rjp)
  store <8 x bfloat> %i.rjq, ptr %.138131.i.i1575, align 1, !tbaa !555
  %i.rjr = getelementptr inbounds nuw i8, ptr %.1134.i.i1572, i64 16
  %i.rjs = getelementptr inbounds nuw i8, ptr %.134132.i.i1574, i64 2
  %i.rjt = getelementptr inbounds nuw i8, ptr %.138131.i.i1575, i64 16
  %i.rju = add nuw nsw i32 %.032133.i.i1573, 1    ; 2 uses
  %exitcond143.not.i.i1577 = icmp eq i32 %i.rju, %.sroa.speculated104.i1515
  br i1 %exitcond143.not.i.i1577, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph135.i.i1571, !llvm.loop !358

.lr.ph.i77.i1565:                                 ; preds = %.preheader125.i.i1564, %.lr.ph.i77.i1565
  %.0130.i.i1566 = phi i32 [ %i.rmf, %.lr.ph.i77.i1565 ], [ 0, %.preheader125.i.i1564 ]
  %.2129.i.i1567 = phi ptr [ %i.rmc, %.lr.ph.i77.i1565 ], [ %0, %.preheader125.i.i1564 ] ; 2 uses
  %.235128.i.i1568 = phi ptr [ %i.rmd, %.lr.ph.i77.i1565 ], [ %1, %.preheader125.i.i1564 ] ; 2 uses
  %.239127.i.i1569 = phi ptr [ %i.rme, %.lr.ph.i77.i1565 ], [ %2, %.preheader125.i.i1564 ] ; 2 uses
  %i.rjv = load i64, ptr %.2129.i.i1567, align 1, !tbaa !555
  %i.rjw = insertelement <2 x i64> poison, i64 %i.rjv, i64 0
  %i.rjx = bitcast <2 x i64> %i.rjw to <8 x i16>
  %i.rjy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rjx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.rjz = bitcast <8 x i16> %i.rjy to <4 x float> ; 3 uses
  %i.rka = load i16, ptr %.235128.i.i1568, align 2, !tbaa !558
  %i.rkb = zext i16 %i.rka to i32
  %i.rkc = shl nuw i32 %i.rkb, 16
  %i.rkd = insertelement <4 x i32> poison, i32 %i.rkc, i64 0
  %i.rke = bitcast <4 x i32> %i.rkd to <4 x float>
  %i.rkf = shufflevector <4 x float> %i.rke, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.rkg = fcmp fast oeq <4 x float> %i.rjz, zeroinitializer
  %i.rkh = fcmp fast oeq <4 x float> %i.rkf, zeroinitializer
  %i.rki = bitcast <4 x float> %i.rkf to <4 x i32>
  %i.rkj = and <4 x i32> %i.rki, splat (i32 -2147483648)
  %i.rkk = fcmp fast olt <4 x float> %i.rjz, zeroinitializer
  %i.rkl = fcmp fast olt <4 x float> %i.rkf, zeroinitializer
  %i.rkm = select <4 x i1> %i.rkl, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.rkn = select <4 x i1> %i.rkk, <4 x float> %i.rkm, <4 x float> zeroinitializer
  %i.rko = fdiv fast <4 x float> %i.rkf, %i.rjz   ; 2 uses
  %i.rkp = bitcast <4 x float> %i.rko to <4 x i32>
  %i.rkq = and <4 x i32> %i.rkp, splat (i32 -2147483648)
  %i.rkr = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.rko) ; 3 uses
  %i.rks = fcmp fast ogt <4 x float> %i.rkr, splat (float 1.000000e+00) ; 2 uses
  %i.rkt = select <4 x i1> %i.rks, <4 x float> splat (float -1.000000e+00), <4 x float> %i.rkr
  %i.rku = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.rkr, <4 x float> splat (float 1.000000e+00))
  %i.rkv = fdiv fast <4 x float> %i.rkt, %i.rku   ; 3 uses
  %i.rkw = fmul fast <4 x float> %i.rkv, %i.rkv   ; 3 uses
  %i.rkx = fmul fast <4 x float> %i.rkw, %i.rkw   ; 7 uses
  %i.rky = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rkx, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.rkz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rkx, <4 x float> nofpclass(nan inf) %i.rky, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.rla = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rkx, <4 x float> nofpclass(nan inf) %i.rkz, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.rlb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rkx, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.rlc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rkx, <4 x float> nofpclass(nan inf) %i.rlb, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.rld = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rkx, <4 x float> nofpclass(nan inf) %i.rlc, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.rle = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rkx, <4 x float> nofpclass(nan inf) %i.rld, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.rlf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rkw, <4 x float> nofpclass(nan inf) %i.rla, <4 x float> nofpclass(nan inf) %i.rle)
  %i.rlg = fmul fast <4 x float> %i.rlf, %i.rkv
  %i.rlh = select <4 x i1> %i.rks, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.rli = fadd fast <4 x float> %i.rlg, %i.rlh
  %i.rlj = bitcast <4 x float> %i.rli to <4 x i32>
  %i.rlk = or <4 x i32> %i.rkq, %i.rlj
  %i.rll = bitcast <4 x i32> %i.rlk to <4 x float>
  %i.rlm = fadd fast <4 x float> %i.rkn, %i.rll
  %i.rln = bitcast <8 x i16> %i.rjy to <4 x i32>
  %i.rlo = and <4 x i32> %i.rln, splat (i32 -2147483648)
  %i.rlp = or disjoint <4 x i32> %i.rlo, splat (i32 1078530011)
  %i.rlq = bitcast <4 x i32> %i.rlp to <4 x float>
  %i.rlr = fcmp fast uge <4 x float> %i.rlq, zeroinitializer
  %i.rls = or disjoint <4 x i32> %i.rkj, splat (i32 1070141403)
  %i.rlt = select <4 x i1> %i.rlr, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.rlu = bitcast <4 x float> %i.rlm to <4 x i32>
  %i.rlv = select <4 x i1> %i.rkg, <4 x i32> %i.rls, <4 x i32> %i.rlu
  %i.rlw = select <4 x i1> %i.rkh, <4 x i32> %i.rlt, <4 x i32> %i.rlv
  %i.rlx = bitcast <4 x i32> %i.rlw to <4 x float>
  %i.rly = shufflevector <4 x float> %i.rlx, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.rlz = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.rly)
  %i.rma = bitcast <8 x bfloat> %i.rlz to <2 x i64>
  %i.rmb = extractelement <2 x i64> %i.rma, i64 0
  store i64 %i.rmb, ptr %.239127.i.i1569, align 1, !tbaa !555
  %i.rmc = getelementptr inbounds nuw i8, ptr %.2129.i.i1567, i64 8
  %i.rmd = getelementptr inbounds nuw i8, ptr %.235128.i.i1568, i64 2
  %i.rme = getelementptr inbounds nuw i8, ptr %.239127.i.i1569, i64 8
  %i.rmf = add nuw nsw i32 %.0130.i.i1566, 1      ; 2 uses
  %exitcond.not.i78.i.a = icmp eq i32 %i.rmf, %.sroa.speculated104.i1515
  br i1 %exitcond.not.i78.i.a, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i77.i1565, !llvm.loop !359

bb.mb:                                            ; preds = %bb.lz
  %i.rmg = icmp eq i32 %4, 1
  br i1 %i.rmg, label %bb.mc, label %bb.mg

bb.mc:                                            ; preds = %bb.mb
  %.val.i1532 = load i16, ptr %1, align 2, !tbaa !558
  %i.rmh = zext i16 %.val.i1532 to i32
  %i.rmi = shl nuw i32 %i.rmh, 16
  %i.rmj = bitcast i32 %i.rmi to float            ; 17 uses
  %i.rmk = insertelement <16 x float> poison, float %i.rmj, i64 0
  %i.rml = shufflevector <16 x float> %i.rmk, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.rmm = icmp sgt i32 %i.pyn, 15
  br i1 %i.rmm, label %.lr.ph.i90.i1559, label %._crit_edge.i.i1533

.lr.ph.i90.i1559:                                 ; preds = %bb.mc
  %i.rmn = fcmp fast one <16 x float> %i.rml, zeroinitializer
  %i.rmo = fcmp fast olt <16 x float> %i.rml, zeroinitializer
  %i.rmp = select fast <16 x i1> %i.rmo, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.rmq = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.rml)
  br label %bb.md

bb.md:                                            ; preds = %bb.md, %.lr.ph.i90.i1559
  %.087.i.i1560 = phi ptr [ %0, %.lr.ph.i90.i1559 ], [ %i.rob, %bb.md ] ; 2 uses
  %.03086.i.i1561 = phi ptr [ %2, %.lr.ph.i90.i1559 ], [ %i.roc, %bb.md ] ; 2 uses
  %.03485.i.i1562 = phi i32 [ 0, %.lr.ph.i90.i1559 ], [ %i.rod, %bb.md ]
  %i.rmr = load <16 x bfloat>, ptr %.087.i.i1560, align 1, !tbaa !555 ; 4 uses
  %i.rms = fpext fast <16 x bfloat> %i.rmr to <16 x float>
  %i.rmt = fcmp fast one <16 x bfloat> %i.rmr, zeroinitializer
  %i.rmu = fcmp fast olt <16 x bfloat> %i.rmr, zeroinitializer
  %i.rmv = select fast <16 x i1> %i.rmu, <16 x float> %i.rmp, <16 x float> zeroinitializer
  %i.rmw = fdiv fast <16 x float> %i.rml, %i.rms  ; 2 uses
  %i.rmx = bitcast <16 x float> %i.rmw to <16 x i32>
  %i.rmy = and <16 x i32> %i.rmx, splat (i32 -2147483648)
  %i.rmz = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.rmw) ; 3 uses
  %i.rna = fcmp fast ogt <16 x float> %i.rmz, splat (float 1.000000e+00) ; 2 uses
  %i.rnb = select fast <16 x i1> %i.rna, <16 x float> splat (float -1.000000e+00), <16 x float> %i.rmz
  %i.rnc = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.rmz, <16 x float> splat (float 1.000000e+00))
  %i.rnd = fdiv fast <16 x float> %i.rnb, %i.rnc  ; 3 uses
  %i.rne = fmul fast <16 x float> %i.rnd, %i.rnd  ; 3 uses
  %i.rnf = fmul fast <16 x float> %i.rne, %i.rne  ; 7 uses
  %i.rng = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rnf, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.rnh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rnf, <16 x float> nofpclass(nan inf) %i.rng, <16 x float> splat (float f0xBE117200))
  %i.rni = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rnf, <16 x float> nofpclass(nan inf) %i.rnh, <16 x float> splat (float f0xBEAAAA53))
  %i.rnj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rnf, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.rnk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rnf, <16 x float> nofpclass(nan inf) %i.rnj, <16 x float> splat (float f0x3DD9ED24))
  %i.rnl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rnf, <16 x float> nofpclass(nan inf) %i.rnk, <16 x float> splat (float f0x3E4CB974))
  %i.rnm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rnf, <16 x float> nofpclass(nan inf) %i.rnl, <16 x float> splat (float 1.000000e+00))
  %i.rnn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rne, <16 x float> nofpclass(nan inf) %i.rni, <16 x float> nofpclass(nan inf) %i.rnm)
  %i.rno = fmul fast <16 x float> %i.rnn, %i.rnd
  %i.rnp = select fast <16 x i1> %i.rna, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.rnq = fadd fast <16 x float> %i.rno, %i.rnp
  %i.rnr = bitcast <16 x float> %i.rnq to <16 x i32>
  %i.rns = or <16 x i32> %i.rmy, %i.rnr
  %i.rnt = bitcast <16 x i32> %i.rns to <16 x float>
  %i.rnu = fadd fast <16 x float> %i.rmv, %i.rnt
  %i.rnv = bitcast <16 x bfloat> %i.rmr to <16 x i16>
  %i.rnw = icmp slt <16 x i16> %i.rnv, zeroinitializer
  %i.rnx = select fast <16 x i1> %i.rnw, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.rny = select <16 x i1> %i.rmt, <16 x float> %i.rnu, <16 x float> %i.rmq
  %i.rnz = select <16 x i1> %i.rmn, <16 x float> %i.rny, <16 x float> %i.rnx
  %i.roa = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rnz)
  store <16 x bfloat> %i.roa, ptr %.03086.i.i1561, align 1, !tbaa !555
  %i.rob = getelementptr inbounds nuw i8, ptr %.087.i.i1560, i64 32 ; 2 uses
  %i.roc = getelementptr inbounds nuw i8, ptr %.03086.i.i1561, i64 32 ; 2 uses
  %i.rod = add nuw nsw i32 %.03485.i.i1562, 16    ; 2 uses
  %i.roe = or disjoint i32 %i.rod, 15
  %i.rof = icmp slt i32 %i.roe, %i.pyn
  br i1 %i.rof, label %bb.md, label %._crit_edge.loopexit.i.i1563, !llvm.loop !360

._crit_edge.loopexit.i.i1563:                     ; preds = %bb.md
  %i.rog = and i32 %i.pyn, 2147483632
  br label %._crit_edge.i.i1533

._crit_edge.i.i1533:                              ; preds = %._crit_edge.loopexit.i.i1563, %bb.mc
  %.034.lcssa.i81.i1534 = phi i32 [ 0, %bb.mc ], [ %i.rog, %._crit_edge.loopexit.i.i1563 ] ; 3 uses
  %.030.lcssa.i.i1535 = phi ptr [ %2, %bb.mc ], [ %i.roc, %._crit_edge.loopexit.i.i1563 ] ; 2 uses
  %.0.lcssa.i82.i1536 = phi ptr [ %0, %bb.mc ], [ %i.rob, %._crit_edge.loopexit.i.i1563 ] ; 2 uses
  %i.roh = insertelement <8 x float> poison, float %i.rmj, i64 0
  %i.roi = shufflevector <8 x float> %i.roh, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.roj = or disjoint i32 %.034.lcssa.i81.i1534, 7
  %i.rok = icmp slt i32 %i.roj, %i.pyn
  br i1 %i.rok, label %.lr.ph94.i.i1554, label %._crit_edge95.i.i1537

.lr.ph94.i.i1554:                                 ; preds = %._crit_edge.i.i1533
  %i.rol = fcmp fast ueq <8 x float> %i.roi, zeroinitializer
  %i.rom = bitcast <8 x float> %i.roi to <8 x i32>
  %i.ron = and <8 x i32> %i.rom, splat (i32 -2147483648)
  %i.roo = fcmp fast olt <8 x float> %i.roi, zeroinitializer
  %i.rop = select <8 x i1> %i.roo, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.roq = or disjoint <8 x i32> %i.ron, splat (i32 1070141403)
  br label %bb.me

bb.me:                                            ; preds = %bb.me, %.lr.ph94.i.i1554
  %.192.i.i1555 = phi ptr [ %.0.lcssa.i82.i1536, %.lr.ph94.i.i1554 ], [ %i.rqc, %bb.me ] ; 2 uses
  %.13191.i.i1556 = phi ptr [ %.030.lcssa.i.i1535, %.lr.ph94.i.i1554 ], [ %i.rqd, %bb.me ] ; 2 uses
  %.13590.i.i1557 = phi i32 [ %.034.lcssa.i81.i1534, %.lr.ph94.i.i1554 ], [ %i.rqe, %bb.me ]
  %i.ror = load <8 x bfloat>, ptr %.192.i.i1555, align 1, !tbaa !555 ; 4 uses
  %i.ros = fpext fast <8 x bfloat> %i.ror to <8 x float>
  %i.rot = fcmp fast ueq <8 x bfloat> %i.ror, zeroinitializer
  %i.rou = fcmp fast olt <8 x bfloat> %i.ror, zeroinitializer
  %i.rov = select <8 x i1> %i.rou, <8 x float> %i.rop, <8 x float> zeroinitializer
  %i.row = fdiv fast <8 x float> %i.roi, %i.ros   ; 2 uses
  %i.rox = bitcast <8 x float> %i.row to <8 x i32>
  %i.roy = and <8 x i32> %i.rox, splat (i32 -2147483648)
  %i.roz = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.row) ; 3 uses
  %i.rpa = fcmp fast ogt <8 x float> %i.roz, splat (float 1.000000e+00) ; 2 uses
  %i.rpb = select <8 x i1> %i.rpa, <8 x float> splat (float -1.000000e+00), <8 x float> %i.roz
  %i.rpc = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.roz, <8 x float> splat (float 1.000000e+00))
  %i.rpd = fdiv fast <8 x float> %i.rpb, %i.rpc   ; 3 uses
  %i.rpe = fmul fast <8 x float> %i.rpd, %i.rpd   ; 3 uses
  %i.rpf = fmul fast <8 x float> %i.rpe, %i.rpe   ; 7 uses
  %i.rpg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rpf, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.rph = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rpf, <8 x float> nofpclass(nan inf) %i.rpg, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.rpi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rpf, <8 x float> nofpclass(nan inf) %i.rph, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.rpj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rpf, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.rpk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rpf, <8 x float> nofpclass(nan inf) %i.rpj, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.rpl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rpf, <8 x float> nofpclass(nan inf) %i.rpk, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.rpm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rpf, <8 x float> nofpclass(nan inf) %i.rpl, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.rpn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rpe, <8 x float> nofpclass(nan inf) %i.rpi, <8 x float> nofpclass(nan inf) %i.rpm)
  %i.rpo = fmul fast <8 x float> %i.rpn, %i.rpd
  %i.rpp = select <8 x i1> %i.rpa, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.rpq = fadd fast <8 x float> %i.rpo, %i.rpp
  %i.rpr = bitcast <8 x float> %i.rpq to <8 x i32>
  %i.rps = or <8 x i32> %i.roy, %i.rpr
  %i.rpt = bitcast <8 x i32> %i.rps to <8 x float>
  %i.rpu = fadd fast <8 x float> %i.rov, %i.rpt
  %i.rpv = bitcast <8 x bfloat> %i.ror to <8 x i16>
  %isneg.i89.i = icmp sgt <8 x i16> %i.rpv, splat (i16 -1)
  %i.rpw = select <8 x i1> %isneg.i89.i, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.rpx = bitcast <8 x float> %i.rpu to <8 x i32>
  %i.rpy = select <8 x i1> %i.rot, <8 x i32> %i.roq, <8 x i32> %i.rpx
  %i.rpz = select <8 x i1> %i.rol, <8 x i32> %i.rpw, <8 x i32> %i.rpy
  %i.rqa = bitcast <8 x i32> %i.rpz to <8 x float>
  %i.rqb = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.rqa)
  store <8 x bfloat> %i.rqb, ptr %.13191.i.i1556, align 1, !tbaa !555
  %i.rqc = getelementptr inbounds nuw i8, ptr %.192.i.i1555, i64 16 ; 2 uses
  %i.rqd = getelementptr inbounds nuw i8, ptr %.13191.i.i1556, i64 16 ; 2 uses
  %i.rqe = add nuw nsw i32 %.13590.i.i1557, 8     ; 3 uses
  %i.rqf = or disjoint i32 %i.rqe, 7
  %i.rqg = icmp slt i32 %i.rqf, %i.pyn
  br i1 %i.rqg, label %bb.me, label %._crit_edge95.i.i1537, !llvm.loop !361

._crit_edge95.i.i1537:                            ; preds = %bb.me, %._crit_edge.i.i1533
  %.135.lcssa.i83.i1538 = phi i32 [ %.034.lcssa.i81.i1534, %._crit_edge.i.i1533 ], [ %i.rqe, %bb.me ] ; 3 uses
  %.131.lcssa.i.i1539 = phi ptr [ %.030.lcssa.i.i1535, %._crit_edge.i.i1533 ], [ %i.rqd, %bb.me ] ; 2 uses
  %.1.lcssa.i84.i1540 = phi ptr [ %.0.lcssa.i82.i1536, %._crit_edge.i.i1533 ], [ %i.rqc, %bb.me ] ; 2 uses
  %i.rqh = insertelement <4 x float> poison, float %i.rmj, i64 0
  %i.rqi = shufflevector <4 x float> %i.rqh, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.rqj = or disjoint i32 %.135.lcssa.i83.i1538, 3
  %i.rqk = icmp slt i32 %i.rqj, %i.pyn
  br i1 %i.rqk, label %.lr.ph103.i.i1550, label %.preheader.i85.i1541

.lr.ph103.i.i1550:                                ; preds = %._crit_edge95.i.i1537
  %i.rql = fcmp fast oeq <4 x float> %i.rqi, zeroinitializer
  %i.rqm = bitcast <4 x float> %i.rqi to <4 x i32>
  %i.rqn = and <4 x i32> %i.rqm, splat (i32 -2147483648)
  %i.rqo = fcmp fast olt <4 x float> %i.rqi, zeroinitializer
  %i.rqp = select <4 x i1> %i.rqo, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.rqq = or disjoint <4 x i32> %i.rqn, splat (i32 1070141403)
  br label %bb.mf

.preheader.i85.i1541:                             ; preds = %bb.mf, %._crit_edge95.i.i1537
  %.236.lcssa.i86.i1542 = phi i32 [ %.135.lcssa.i83.i1538, %._crit_edge95.i.i1537 ], [ %i.rwe, %bb.mf ] ; 5 uses
  %.232.lcssa.i.i1543 = phi ptr [ %.131.lcssa.i.i1539, %._crit_edge95.i.i1537 ], [ %i.rwd, %bb.mf ] ; 6 uses
  %.2.lcssa.i87.i1544 = phi ptr [ %.1.lcssa.i84.i1540, %._crit_edge95.i.i1537 ], [ %i.rwc, %bb.mf ] ; 6 uses
  %i.rqr = icmp slt i32 %.236.lcssa.i86.i1542, %i.pyn
  br i1 %i.rqr, label %iter.check7014, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7014:                                   ; preds = %.preheader.i85.i1541
  %.2.lcssa.i87.i15446996 = ptrtoaddr ptr %.2.lcssa.i87.i1544 to i64
  %.232.lcssa.i.i15436995 = ptrtoaddr ptr %.232.lcssa.i.i1543 to i64
  %i.rqs = xor i32 %.236.lcssa.i86.i1542, -1
  %i.rqt = add i32 %i.pyn, %i.rqs                 ; 3 uses
  %i.rqu = zext i32 %i.rqt to i64
  %i.rqv = add nuw nsw i64 %i.rqu, 1              ; 5 uses
  %min.iters.check6998 = icmp ult i32 %i.rqt, 7
  %i.rqw = sub i64 %.2.lcssa.i87.i15446996, %.232.lcssa.i.i15436995
  %diff.check6997 = icmp ugt i64 %i.rqw, -64
  %or.cond9044.a = select i1 %min.iters.check6998, i1 true, i1 %diff.check6997
  br i1 %or.cond9044.a, label %.lr.ph110.i.i1545.preheader, label %vector.main.loop.iter.check6999

vector.main.loop.iter.check6999:                  ; preds = %iter.check7014
  %min.iters.check7000 = icmp ult i32 %i.rqt, 31
  br i1 %min.iters.check7000, label %vec.epilog.ph7018, label %vector.ph7001

vector.ph7001:                                    ; preds = %vector.main.loop.iter.check6999
  %i.rqx = and i64 %i.rqv, 24
  %n.vec7002 = and i64 %i.rqv, 8589934560         ; 5 uses
  %i.rqy = shl nuw nsw i64 %n.vec7002, 1          ; 2 uses
  %i.rqz = getelementptr i8, ptr %.2.lcssa.i87.i1544, i64 %i.rqy
  %i.rra = getelementptr i8, ptr %.232.lcssa.i.i1543, i64 %i.rqy
  %i.rrb = trunc i64 %n.vec7002 to i32
  %i.rrc = add i32 %.236.lcssa.i86.i1542, %i.rrb
  %i.rrd = insertelement <16 x float> poison, float %i.rmj, i64 0
  %i.rre = shufflevector <16 x float> %i.rrd, <16 x float> poison, <16 x i32> zeroinitializer
  %i.rrf = insertelement <8 x float> poison, float %i.rmj, i64 0
  %i.rrg = shufflevector <8 x float> %i.rrf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rrh = insertelement <4 x float> poison, float %i.rmj, i64 0
  %i.rri = shufflevector <4 x float> %i.rrh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rrj = insertelement <2 x float> poison, float %i.rmj, i64 0
  %i.rrk = shufflevector <2 x float> %i.rrj, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7003

vector.body7003:                                  ; preds = %vector.ph7001, %vector.body7003
  %index7004 = phi i64 [ 0, %vector.ph7001 ], [ %index.next7008, %vector.body7003 ] ; 2 uses
  %i.rrl = shl i64 %index7004, 1                  ; 2 uses
  %next.gep7005 = getelementptr i8, ptr %.2.lcssa.i87.i1544, i64 %i.rrl
  %next.gep7006 = getelementptr i8, ptr %.232.lcssa.i.i1543, i64 %i.rrl
  %wide.load7007 = load <32 x i16>, ptr %next.gep7005, align 2, !tbaa !558
  %i.rrm = zext <32 x i16> %wide.load7007 to <32 x i32>
  %i.rrn = shl nuw <32 x i32> %i.rrm, splat (i32 16)
  %i.rro = bitcast <32 x i32> %i.rrn to <32 x float> ; 6 uses
  %i.rrp = extractelement <32 x float> %i.rro, i64 0
  %i.rrq = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rmj, float %i.rrp)
  %i.rrr = shufflevector <32 x float> %i.rro, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.rrs = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.rre, <16 x float> %i.rrr)
  %i.rrt = shufflevector <32 x float> %i.rro, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.rru = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.rrg, <8 x float> %i.rrt)
  %i.rrv = shufflevector <32 x float> %i.rro, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.rrw = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.rri, <4 x float> %i.rrv)
  %i.rrx = extractelement <32 x float> %i.rro, i64 29
  %i.rry = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rmj, float %i.rrx)
  %i.rrz = shufflevector <32 x float> %i.rro, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.rsa = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.rrk, <2 x float> %i.rrz)
  %i.rsb = insertelement <32 x float> poison, float %i.rrq, i64 0
  %i.rsc = shufflevector <16 x float> %i.rrs, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rsd = shufflevector <32 x float> %i.rsb, <32 x float> %i.rsc, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rse = shufflevector <8 x float> %i.rru, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rsf = shufflevector <32 x float> %i.rsd, <32 x float> %i.rse, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rsg = shufflevector <4 x float> %i.rrw, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rsh = shufflevector <32 x float> %i.rsf, <32 x float> %i.rsg, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.rsi = insertelement <32 x float> %i.rsh, float %i.rry, i64 29
  %i.rsj = shufflevector <2 x float> %i.rsa, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rsk = shufflevector <32 x float> %i.rsi, <32 x float> %i.rsj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.rsl = bitcast <32 x float> %i.rsk to <32 x i32>
  %i.rsm = lshr <32 x i32> %i.rsl, splat (i32 16)
  %i.rsn = trunc nuw <32 x i32> %i.rsm to <32 x i16>
  store <32 x i16> %i.rsn, ptr %next.gep7006, align 2, !tbaa !558
  %index.next7008 = add nuw i64 %index7004, 32    ; 2 uses
  %i.rso = icmp eq i64 %index.next7008, %n.vec7002
  br i1 %i.rso, label %middle.block7009, label %vector.body7003, !llvm.loop !362

middle.block7009:                                 ; preds = %vector.body7003
  %cmp.n7010 = icmp eq i64 %i.rqv, %n.vec7002
  br i1 %cmp.n7010, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7016

vec.epilog.iter.check7016:                        ; preds = %middle.block7009
  %min.epilog.iters.check7017 = icmp eq i64 %i.rqx, 0
  br i1 %min.epilog.iters.check7017, label %.lr.ph110.i.i1545.preheader, label %vec.epilog.ph7018, !prof !561

vec.epilog.ph7018:                                ; preds = %vector.main.loop.iter.check6999, %vec.epilog.iter.check7016
  %vec.epilog.resume.val7011 = phi i64 [ %n.vec7002, %vec.epilog.iter.check7016 ], [ 0, %vector.main.loop.iter.check6999 ]
  %n.vec7019 = and i64 %i.rqv, 8589934584         ; 4 uses
  %i.rsp = shl nuw nsw i64 %n.vec7019, 1          ; 2 uses
  %i.rsq = getelementptr i8, ptr %.2.lcssa.i87.i1544, i64 %i.rsp
  %i.rsr = getelementptr i8, ptr %.232.lcssa.i.i1543, i64 %i.rsp
  %i.rss = trunc i64 %n.vec7019 to i32
  %i.rst = add i32 %.236.lcssa.i86.i1542, %i.rss
  %i.rsu = insertelement <4 x float> poison, float %i.rmj, i64 0
  %i.rsv = shufflevector <4 x float> %i.rsu, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7020

vec.epilog.vector.body7020:                       ; preds = %vec.epilog.vector.body7020, %vec.epilog.ph7018
  %index7021 = phi i64 [ %vec.epilog.resume.val7011, %vec.epilog.ph7018 ], [ %index.next7025, %vec.epilog.vector.body7020 ] ; 2 uses
  %i.rsw = shl i64 %index7021, 1                  ; 2 uses
  %next.gep7022 = getelementptr i8, ptr %.2.lcssa.i87.i1544, i64 %i.rsw
  %next.gep7023 = getelementptr i8, ptr %.232.lcssa.i.i1543, i64 %i.rsw
  %wide.load7024 = load <8 x i16>, ptr %next.gep7022, align 2, !tbaa !558
  %i.rsx = zext <8 x i16> %wide.load7024 to <8 x i32>
  %i.rsy = shl nuw <8 x i32> %i.rsx, splat (i32 16)
  %i.rsz = bitcast <8 x i32> %i.rsy to <8 x float> ; 5 uses
  %i.rta = extractelement <8 x float> %i.rsz, i64 0
  %i.rtb = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rmj, float %i.rta)
  %i.rtc = extractelement <8 x float> %i.rsz, i64 1
  %i.rtd = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rmj, float %i.rtc)
  %i.rte = extractelement <8 x float> %i.rsz, i64 2
  %i.rtf = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rmj, float %i.rte)
  %i.rtg = shufflevector <8 x float> %i.rsz, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.rth = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.rsv, <4 x float> %i.rtg)
  %i.rti = extractelement <8 x float> %i.rsz, i64 7
  %i.rtj = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rmj, float %i.rti)
  %i.rtk = insertelement <8 x float> poison, float %i.rtb, i64 0
  %i.rtl = insertelement <8 x float> %i.rtk, float %i.rtd, i64 1
  %i.rtm = insertelement <8 x float> %i.rtl, float %i.rtf, i64 2
  %i.rtn = shufflevector <4 x float> %i.rth, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rto = shufflevector <8 x float> %i.rtm, <8 x float> %i.rtn, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.rtp = insertelement <8 x float> %i.rto, float %i.rtj, i64 7
  %i.rtq = bitcast <8 x float> %i.rtp to <8 x i32>
  %i.rtr = lshr <8 x i32> %i.rtq, splat (i32 16)
  %i.rts = trunc nuw <8 x i32> %i.rtr to <8 x i16>
  store <8 x i16> %i.rts, ptr %next.gep7023, align 2, !tbaa !558
  %index.next7025 = add nuw i64 %index7021, 8     ; 2 uses
  %i.rtt = icmp eq i64 %index.next7025, %n.vec7019
  br i1 %i.rtt, label %vec.epilog.middle.block7026, label %vec.epilog.vector.body7020, !llvm.loop !363

vec.epilog.middle.block7026:                      ; preds = %vec.epilog.vector.body7020
  %cmp.n7027 = icmp eq i64 %i.rqv, %n.vec7019
  br i1 %cmp.n7027, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph110.i.i1545.preheader

.lr.ph110.i.i1545.preheader:                      ; preds = %iter.check7014, %vec.epilog.iter.check7016, %vec.epilog.middle.block7026
  %.3109.i.i1546.ph = phi ptr [ %.2.lcssa.i87.i1544, %iter.check7014 ], [ %i.rqz, %vec.epilog.iter.check7016 ], [ %i.rsq, %vec.epilog.middle.block7026 ] ; 3 uses
  %.333108.i.i1547.ph = phi ptr [ %.232.lcssa.i.i1543, %iter.check7014 ], [ %i.rra, %vec.epilog.iter.check7016 ], [ %i.rsr, %vec.epilog.middle.block7026 ] ; 3 uses
  %.337107.i.i1548.ph = phi i32 [ %.236.lcssa.i86.i1542, %iter.check7014 ], [ %i.rrc, %vec.epilog.iter.check7016 ], [ %i.rst, %vec.epilog.middle.block7026 ] ; 4 uses
  %i.rtu = sub i32 %i.pyn, %.337107.i.i1548.ph
  %.neg10889 = add i32 %.337107.i.i1548.ph, 1
  %xtraiter10287 = and i32 %i.rtu, 1
  %lcmp.mod10288.not = icmp eq i32 %xtraiter10287, 0
  br i1 %lcmp.mod10288.not, label %.lr.ph110.i.i1545.prol.loopexit, label %.lr.ph110.i.i1545.prol

.lr.ph110.i.i1545.prol:                           ; preds = %.lr.ph110.i.i1545.preheader
  %i.rtv = getelementptr inbounds nuw i8, ptr %.3109.i.i1546.ph, i64 2
  %i.rtw = load i16, ptr %.3109.i.i1546.ph, align 2, !tbaa !558
  %i.rtx = zext i16 %i.rtw to i32
  %i.rty = shl nuw i32 %i.rtx, 16
  %i.rtz = bitcast i32 %i.rty to float
  %i.rua = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rmj, float %i.rtz)
  %i.rub = bitcast float %i.rua to i32
  %i.ruc = lshr i32 %i.rub, 16
  %i.rud = trunc nuw i32 %i.ruc to i16
  %i.rue = getelementptr inbounds nuw i8, ptr %.333108.i.i1547.ph, i64 2
  store i16 %i.rud, ptr %.333108.i.i1547.ph, align 2, !tbaa !558
  %i.ruf = add nuw nsw i32 %.337107.i.i1548.ph, 1
  br label %.lr.ph110.i.i1545.prol.loopexit

.lr.ph110.i.i1545.prol.loopexit:                  ; preds = %.lr.ph110.i.i1545.prol, %.lr.ph110.i.i1545.preheader
  %.3109.i.i1546.unr = phi ptr [ %.3109.i.i1546.ph, %.lr.ph110.i.i1545.preheader ], [ %i.rtv, %.lr.ph110.i.i1545.prol ]
  %.333108.i.i1547.unr = phi ptr [ %.333108.i.i1547.ph, %.lr.ph110.i.i1545.preheader ], [ %i.rue, %.lr.ph110.i.i1545.prol ]
  %.337107.i.i1548.unr = phi i32 [ %.337107.i.i1548.ph, %.lr.ph110.i.i1545.preheader ], [ %i.ruf, %.lr.ph110.i.i1545.prol ]
  %i.rug = icmp eq i32 %i.pyn, %.neg10889
  br i1 %i.rug, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph110.i.i1545

bb.mf:                                            ; preds = %bb.mf, %.lr.ph103.i.i1550
  %.2101.i.i1551 = phi ptr [ %.1.lcssa.i84.i1540, %.lr.ph103.i.i1550 ], [ %i.rwc, %bb.mf ] ; 2 uses
  %.232100.i.i1552 = phi ptr [ %.131.lcssa.i.i1539, %.lr.ph103.i.i1550 ], [ %i.rwd, %bb.mf ] ; 2 uses
  %.23699.i.i1553 = phi i32 [ %.135.lcssa.i83.i1538, %.lr.ph103.i.i1550 ], [ %i.rwe, %bb.mf ]
  %i.ruh = load i64, ptr %.2101.i.i1551, align 1, !tbaa !555
  %i.rui = insertelement <2 x i64> poison, i64 %i.ruh, i64 0
  %i.ruj = bitcast <2 x i64> %i.rui to <8 x i16>
  %i.ruk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ruj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.rul = bitcast <8 x i16> %i.ruk to <4 x float> ; 3 uses
  %i.rum = fcmp fast oeq <4 x float> %i.rul, zeroinitializer
  %i.run = fcmp fast olt <4 x float> %i.rul, zeroinitializer
  %i.ruo = select <4 x i1> %i.run, <4 x float> %i.rqp, <4 x float> zeroinitializer
  %i.rup = fdiv fast <4 x float> %i.rqi, %i.rul   ; 2 uses
  %i.ruq = bitcast <4 x float> %i.rup to <4 x i32>
  %i.rur = and <4 x i32> %i.ruq, splat (i32 -2147483648)
  %i.rus = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.rup) ; 3 uses
  %i.rut = fcmp fast ogt <4 x float> %i.rus, splat (float 1.000000e+00) ; 2 uses
  %i.ruu = select <4 x i1> %i.rut, <4 x float> splat (float -1.000000e+00), <4 x float> %i.rus
  %i.ruv = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.rus, <4 x float> splat (float 1.000000e+00))
  %i.ruw = fdiv fast <4 x float> %i.ruu, %i.ruv   ; 3 uses
  %i.rux = fmul fast <4 x float> %i.ruw, %i.ruw   ; 3 uses
  %i.ruy = fmul fast <4 x float> %i.rux, %i.rux   ; 7 uses
  %i.ruz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ruy, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.rva = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ruy, <4 x float> nofpclass(nan inf) %i.ruz, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.rvb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ruy, <4 x float> nofpclass(nan inf) %i.rva, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.rvc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ruy, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.rvd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ruy, <4 x float> nofpclass(nan inf) %i.rvc, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.rve = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ruy, <4 x float> nofpclass(nan inf) %i.rvd, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.rvf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ruy, <4 x float> nofpclass(nan inf) %i.rve, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.rvg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rux, <4 x float> nofpclass(nan inf) %i.rvb, <4 x float> nofpclass(nan inf) %i.rvf)
  %i.rvh = fmul fast <4 x float> %i.rvg, %i.ruw
  %i.rvi = select <4 x i1> %i.rut, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.rvj = fadd fast <4 x float> %i.rvh, %i.rvi
  %i.rvk = bitcast <4 x float> %i.rvj to <4 x i32>
  %i.rvl = or <4 x i32> %i.rur, %i.rvk
  %i.rvm = bitcast <4 x i32> %i.rvl to <4 x float>
  %i.rvn = fadd fast <4 x float> %i.ruo, %i.rvm
  %i.rvo = bitcast <8 x i16> %i.ruk to <4 x i32>
  %i.rvp = and <4 x i32> %i.rvo, splat (i32 -2147483648)
  %i.rvq = or disjoint <4 x i32> %i.rvp, splat (i32 1078530011)
  %i.rvr = bitcast <4 x i32> %i.rvq to <4 x float>
  %i.rvs = fcmp fast uge <4 x float> %i.rvr, zeroinitializer
  %i.rvt = select <4 x i1> %i.rvs, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.rvu = bitcast <4 x float> %i.rvn to <4 x i32>
  %i.rvv = select <4 x i1> %i.rum, <4 x i32> %i.rqq, <4 x i32> %i.rvu
  %i.rvw = select <4 x i1> %i.rql, <4 x i32> %i.rvt, <4 x i32> %i.rvv
  %i.rvx = bitcast <4 x i32> %i.rvw to <4 x float>
  %i.rvy = shufflevector <4 x float> %i.rvx, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.rvz = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.rvy)
  %i.rwa = bitcast <8 x bfloat> %i.rvz to <2 x i64>
  %i.rwb = extractelement <2 x i64> %i.rwa, i64 0
  store i64 %i.rwb, ptr %.232100.i.i1552, align 1, !tbaa !555
  %i.rwc = getelementptr inbounds nuw i8, ptr %.2101.i.i1551, i64 8 ; 2 uses
  %i.rwd = getelementptr inbounds nuw i8, ptr %.232100.i.i1552, i64 8 ; 2 uses
  %i.rwe = add nuw nsw i32 %.23699.i.i1553, 4     ; 3 uses
  %i.rwf = or disjoint i32 %i.rwe, 3
  %i.rwg = icmp slt i32 %i.rwf, %i.pyn
  br i1 %i.rwg, label %bb.mf, label %.preheader.i85.i1541, !llvm.loop !364

.lr.ph110.i.i1545:                                ; preds = %.lr.ph110.i.i1545.prol.loopexit, %.lr.ph110.i.i1545
  %.3109.i.i1546 = phi ptr [ %i.rwr, %.lr.ph110.i.i1545 ], [ %.3109.i.i1546.unr, %.lr.ph110.i.i1545.prol.loopexit ] ; 3 uses
  %.333108.i.i1547 = phi ptr [ %i.rxa, %.lr.ph110.i.i1545 ], [ %.333108.i.i1547.unr, %.lr.ph110.i.i1545.prol.loopexit ] ; 3 uses
  %.337107.i.i1548 = phi i32 [ %i.rxb, %.lr.ph110.i.i1545 ], [ %.337107.i.i1548.unr, %.lr.ph110.i.i1545.prol.loopexit ]
  %i.rwh = getelementptr inbounds nuw i8, ptr %.3109.i.i1546, i64 2
  %i.rwi = load i16, ptr %.3109.i.i1546, align 2, !tbaa !558
  %i.rwj = zext i16 %i.rwi to i32
  %i.rwk = shl nuw i32 %i.rwj, 16
  %i.rwl = bitcast i32 %i.rwk to float
  %i.rwm = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rmj, float %i.rwl)
  %i.rwn = bitcast float %i.rwm to i32
  %i.rwo = lshr i32 %i.rwn, 16
  %i.rwp = trunc nuw i32 %i.rwo to i16
  %i.rwq = getelementptr inbounds nuw i8, ptr %.333108.i.i1547, i64 2
  store i16 %i.rwp, ptr %.333108.i.i1547, align 2, !tbaa !558
  %i.rwr = getelementptr inbounds nuw i8, ptr %.3109.i.i1546, i64 4
  %i.rws = load i16, ptr %i.rwh, align 2, !tbaa !558
  %i.rwt = zext i16 %i.rws to i32
  %i.rwu = shl nuw i32 %i.rwt, 16
  %i.rwv = bitcast i32 %i.rwu to float
  %i.rww = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rmj, float %i.rwv)
  %i.rwx = bitcast float %i.rww to i32
  %i.rwy = lshr i32 %i.rwx, 16
  %i.rwz = trunc nuw i32 %i.rwy to i16
  %i.rxa = getelementptr inbounds nuw i8, ptr %.333108.i.i1547, i64 4
  store i16 %i.rwz, ptr %i.rwq, align 2, !tbaa !558
  %i.rxb = add nuw nsw i32 %.337107.i.i1548, 2    ; 2 uses
  %exitcond.not.i88.i1549.1 = icmp eq i32 %i.rxb, %i.pyn
  br i1 %exitcond.not.i88.i1549.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph110.i.i1545, !llvm.loop !365

bb.mg:                                            ; preds = %bb.mb
  %i.rxc = icmp eq i32 %3, 1
  br i1 %i.rxc, label %bb.mh, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.mh:                                            ; preds = %bb.mg
  switch i32 %.sroa.speculated.i1516, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 16, label %.lr.ph129.i.i1527
    i32 8, label %.lr.ph125.i.i1521
    i32 4, label %.lr.ph.i91.i1517
  ]

.lr.ph129.i.i1527:                                ; preds = %bb.mh
  %i.rxd = load <16 x bfloat>, ptr %0, align 1, !tbaa !555 ; 4 uses
  %i.rxe = fpext fast <16 x bfloat> %i.rxd to <16 x float>
  %i.rxf = fcmp fast one <16 x bfloat> %i.rxd, zeroinitializer
  %i.rxg = fcmp fast olt <16 x bfloat> %i.rxd, zeroinitializer
  %i.rxh = bitcast <16 x bfloat> %i.rxd to <16 x i16>
  %i.rxi = icmp slt <16 x i16> %i.rxh, zeroinitializer
  %i.rxj = select fast <16 x i1> %i.rxi, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.rxk = fdiv fast <16 x float> splat (float 1.000000e+00), %i.rxe
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mi, %.lr.ph129.i.i1527
  %.028128.i.i1528 = phi ptr [ %1, %.lr.ph129.i.i1527 ], [ %i.ryy, %bb.mi ] ; 2 uses
  %.030127.i.i1529 = phi ptr [ %2, %.lr.ph129.i.i1527 ], [ %i.ryz, %bb.mi ] ; 2 uses
  %.033126.i.i1530 = phi i32 [ 0, %.lr.ph129.i.i1527 ], [ %i.rza, %bb.mi ]
  %i.rxl = load i16, ptr %.028128.i.i1528, align 2, !tbaa !558
  %i.rxm = zext i16 %i.rxl to i32
  %i.rxn = shl nuw i32 %i.rxm, 16
  %i.rxo = insertelement <16 x i32> poison, i32 %i.rxn, i64 0
  %i.rxp = bitcast <16 x i32> %i.rxo to <16 x float>
  %i.rxq = shufflevector <16 x float> %i.rxp, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.rxr = fcmp fast one <16 x float> %i.rxq, zeroinitializer
  %i.rxs = fcmp fast olt <16 x float> %i.rxq, zeroinitializer
  %i.rxt = select fast <16 x i1> %i.rxs, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.rxu = select fast <16 x i1> %i.rxg, <16 x float> %i.rxt, <16 x float> zeroinitializer
  %i.rxv = fmul fast <16 x float> %i.rxq, %i.rxk  ; 2 uses
  %i.rxw = bitcast <16 x float> %i.rxv to <16 x i32>
  %i.rxx = and <16 x i32> %i.rxw, splat (i32 -2147483648)
  %i.rxy = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.rxv) ; 3 uses
  %i.rxz = fcmp fast ogt <16 x float> %i.rxy, splat (float 1.000000e+00) ; 2 uses
  %i.rya = select fast <16 x i1> %i.rxz, <16 x float> splat (float -1.000000e+00), <16 x float> %i.rxy
  %i.ryb = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.rxy, <16 x float> splat (float 1.000000e+00))
  %i.ryc = fdiv fast <16 x float> %i.rya, %i.ryb  ; 3 uses
  %i.ryd = fmul fast <16 x float> %i.ryc, %i.ryc  ; 3 uses
  %i.rye = fmul fast <16 x float> %i.ryd, %i.ryd  ; 7 uses
  %i.ryf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rye, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.ryg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rye, <16 x float> nofpclass(nan inf) %i.ryf, <16 x float> splat (float f0xBE117200))
  %i.ryh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rye, <16 x float> nofpclass(nan inf) %i.ryg, <16 x float> splat (float f0xBEAAAA53))
  %i.ryi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rye, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.ryj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rye, <16 x float> nofpclass(nan inf) %i.ryi, <16 x float> splat (float f0x3DD9ED24))
  %i.ryk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rye, <16 x float> nofpclass(nan inf) %i.ryj, <16 x float> splat (float f0x3E4CB974))
  %i.ryl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rye, <16 x float> nofpclass(nan inf) %i.ryk, <16 x float> splat (float 1.000000e+00))
  %i.rym = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ryd, <16 x float> nofpclass(nan inf) %i.ryh, <16 x float> nofpclass(nan inf) %i.ryl)
  %i.ryn = fmul fast <16 x float> %i.rym, %i.ryc
  %i.ryo = select fast <16 x i1> %i.rxz, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.ryp = fadd fast <16 x float> %i.ryn, %i.ryo
  %i.ryq = bitcast <16 x float> %i.ryp to <16 x i32>
  %i.ryr = or <16 x i32> %i.rxx, %i.ryq
  %i.rys = bitcast <16 x i32> %i.ryr to <16 x float>
  %i.ryt = fadd fast <16 x float> %i.rxu, %i.rys
  %i.ryu = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.rxq)
  %i.ryv = select <16 x i1> %i.rxf, <16 x float> %i.ryt, <16 x float> %i.ryu
  %i.ryw = select <16 x i1> %i.rxr, <16 x float> %i.ryv, <16 x float> %i.rxj
  %i.ryx = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ryw)
  store <16 x bfloat> %i.ryx, ptr %.030127.i.i1529, align 1, !tbaa !555
  %i.ryy = getelementptr inbounds nuw i8, ptr %.028128.i.i1528, i64 2
  %i.ryz = getelementptr inbounds nuw i8, ptr %.030127.i.i1529, i64 32
  %i.rza = add nuw nsw i32 %.033126.i.i1530, 1    ; 2 uses
  %exitcond133.not.i.i1531 = icmp eq i32 %i.rza, %.sroa.speculated104.i1515
  br i1 %exitcond133.not.i.i1531, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.mi, !llvm.loop !366

.lr.ph125.i.i1521:                                ; preds = %bb.mh
  %i.rzb = load <8 x bfloat>, ptr %0, align 1, !tbaa !555 ; 4 uses
  %i.rzc = fpext fast <8 x bfloat> %i.rzb to <8 x float>
  %i.rzd = fcmp fast ueq <8 x bfloat> %i.rzb, zeroinitializer
  %i.rze = fcmp fast olt <8 x bfloat> %i.rzb, zeroinitializer
  %i.rzf = bitcast <8 x bfloat> %i.rzb to <8 x i16>
  %isneg.i93.i = icmp sgt <8 x i16> %i.rzf, splat (i16 -1)
  %i.rzg = select <8 x i1> %isneg.i93.i, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.rzh = fdiv fast <8 x float> splat (float 1.000000e+00), %i.rzc
  br label %bb.mj

bb.mj:                                            ; preds = %bb.mj, %.lr.ph125.i.i1521
  %.1124.i.i1522 = phi ptr [ %1, %.lr.ph125.i.i1521 ], [ %i.saz, %bb.mj ] ; 2 uses
  %.029123.i.i1523 = phi i32 [ 0, %.lr.ph125.i.i1521 ], [ %i.sbb, %bb.mj ]
  %.131122.i.i1524 = phi ptr [ %2, %.lr.ph125.i.i1521 ], [ %i.sba, %bb.mj ] ; 2 uses
  %i.rzi = load i16, ptr %.1124.i.i1522, align 2, !tbaa !558
  %i.rzj = zext i16 %i.rzi to i32
  %i.rzk = shl nuw i32 %i.rzj, 16
  %i.rzl = insertelement <8 x i32> poison, i32 %i.rzk, i64 0
  %i.rzm = bitcast <8 x i32> %i.rzl to <8 x float>
  %i.rzn = shufflevector <8 x float> %i.rzm, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.rzo = fcmp fast ueq <8 x float> %i.rzn, zeroinitializer
  %i.rzp = bitcast <8 x float> %i.rzn to <8 x i32>
  %i.rzq = and <8 x i32> %i.rzp, splat (i32 -2147483648)
  %i.rzr = fcmp fast olt <8 x float> %i.rzn, zeroinitializer
  %i.rzs = select <8 x i1> %i.rzr, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.rzt = select <8 x i1> %i.rze, <8 x float> %i.rzs, <8 x float> zeroinitializer
  %i.rzu = fmul fast <8 x float> %i.rzn, %i.rzh   ; 2 uses
  %i.rzv = bitcast <8 x float> %i.rzu to <8 x i32>
  %i.rzw = and <8 x i32> %i.rzv, splat (i32 -2147483648)
  %i.rzx = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.rzu) ; 3 uses
  %i.rzy = fcmp fast ogt <8 x float> %i.rzx, splat (float 1.000000e+00) ; 2 uses
  %i.rzz = select <8 x i1> %i.rzy, <8 x float> splat (float -1.000000e+00), <8 x float> %i.rzx
  %i.saa = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.rzx, <8 x float> splat (float 1.000000e+00))
  %i.sab = fdiv fast <8 x float> %i.rzz, %i.saa   ; 3 uses
  %i.sac = fmul fast <8 x float> %i.sab, %i.sab   ; 3 uses
  %i.sad = fmul fast <8 x float> %i.sac, %i.sac   ; 7 uses
  %i.sae = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.sad, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.saf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.sad, <8 x float> nofpclass(nan inf) %i.sae, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.sag = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.sad, <8 x float> nofpclass(nan inf) %i.saf, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.sah = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.sad, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.sai = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.sad, <8 x float> nofpclass(nan inf) %i.sah, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.saj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.sad, <8 x float> nofpclass(nan inf) %i.sai, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.sak = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.sad, <8 x float> nofpclass(nan inf) %i.saj, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.sal = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.sac, <8 x float> nofpclass(nan inf) %i.sag, <8 x float> nofpclass(nan inf) %i.sak)
  %i.sam = fmul fast <8 x float> %i.sal, %i.sab
  %i.san = select <8 x i1> %i.rzy, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.sao = fadd fast <8 x float> %i.sam, %i.san
  %i.sap = bitcast <8 x float> %i.sao to <8 x i32>
  %i.saq = or <8 x i32> %i.rzw, %i.sap
  %i.sar = bitcast <8 x i32> %i.saq to <8 x float>
  %i.sas = fadd fast <8 x float> %i.rzt, %i.sar
  %i.sat = or disjoint <8 x i32> %i.rzq, splat (i32 1070141403)
  %i.sau = bitcast <8 x float> %i.sas to <8 x i32>
  %i.sav = select <8 x i1> %i.rzd, <8 x i32> %i.sat, <8 x i32> %i.sau
  %i.saw = select <8 x i1> %i.rzo, <8 x i32> %i.rzg, <8 x i32> %i.sav
  %i.sax = bitcast <8 x i32> %i.saw to <8 x float>
  %i.say = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.sax)
  store <8 x bfloat> %i.say, ptr %.131122.i.i1524, align 1, !tbaa !555
  %i.saz = getelementptr inbounds nuw i8, ptr %.1124.i.i1522, i64 2
  %i.sba = getelementptr inbounds nuw i8, ptr %.131122.i.i1524, i64 16
  %i.sbb = add nuw nsw i32 %.029123.i.i1523, 1    ; 2 uses
  %exitcond132.not.i.i1526 = icmp eq i32 %i.sbb, %.sroa.speculated104.i1515
  br i1 %exitcond132.not.i.i1526, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.mj, !llvm.loop !367

.lr.ph.i91.i1517:                                 ; preds = %bb.mh
  %i.sbc = load i64, ptr %0, align 1, !tbaa !555
  %i.sbd = insertelement <2 x i64> poison, i64 %i.sbc, i64 0
  %i.sbe = bitcast <2 x i64> %i.sbd to <8 x i16>
  %i.sbf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sbe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.sbg = bitcast <8 x i16> %i.sbf to <4 x float> ; 3 uses
  %i.sbh = fcmp fast oeq <4 x float> %i.sbg, zeroinitializer
  %i.sbi = fcmp fast olt <4 x float> %i.sbg, zeroinitializer
  %i.sbj = bitcast <8 x i16> %i.sbf to <4 x i32>
  %i.sbk = and <4 x i32> %i.sbj, splat (i32 -2147483648)
  %i.sbl = or disjoint <4 x i32> %i.sbk, splat (i32 1078530011)
  %i.sbm = bitcast <4 x i32> %i.sbl to <4 x float>
  %i.sbn = fcmp fast uge <4 x float> %i.sbm, zeroinitializer
  %i.sbo = select <4 x i1> %i.sbn, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.sbp = fdiv fast <4 x float> splat (float 1.000000e+00), %i.sbg
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mk, %.lr.ph.i91.i1517
  %.0121.i.i1518 = phi i32 [ 0, %.lr.ph.i91.i1517 ], [ %i.sdm, %bb.mk ]
  %.2120.i.i1519 = phi ptr [ %1, %.lr.ph.i91.i1517 ], [ %i.sdk, %bb.mk ] ; 2 uses
  %.232119.i.i1520 = phi ptr [ %2, %.lr.ph.i91.i1517 ], [ %i.sdl, %bb.mk ] ; 2 uses
  %i.sbq = load i16, ptr %.2120.i.i1519, align 2, !tbaa !558
  %i.sbr = zext i16 %i.sbq to i32
  %i.sbs = shl nuw i32 %i.sbr, 16
  %i.sbt = insertelement <4 x i32> poison, i32 %i.sbs, i64 0
  %i.sbu = bitcast <4 x i32> %i.sbt to <4 x float>
  %i.sbv = shufflevector <4 x float> %i.sbu, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.sbw = fcmp fast oeq <4 x float> %i.sbv, zeroinitializer
  %i.sbx = bitcast <4 x float> %i.sbv to <4 x i32>
  %i.sby = and <4 x i32> %i.sbx, splat (i32 -2147483648)
  %i.sbz = fcmp fast olt <4 x float> %i.sbv, zeroinitializer
  %i.sca = select <4 x i1> %i.sbz, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.scb = select <4 x i1> %i.sbi, <4 x float> %i.sca, <4 x float> zeroinitializer
  %i.scc = fmul fast <4 x float> %i.sbv, %i.sbp   ; 2 uses
  %i.scd = bitcast <4 x float> %i.scc to <4 x i32>
  %i.sce = and <4 x i32> %i.scd, splat (i32 -2147483648)
  %i.scf = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.scc) ; 3 uses
  %i.scg = fcmp fast ogt <4 x float> %i.scf, splat (float 1.000000e+00) ; 2 uses
  %i.sch = select <4 x i1> %i.scg, <4 x float> splat (float -1.000000e+00), <4 x float> %i.scf
  %i.sci = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.scf, <4 x float> splat (float 1.000000e+00))
  %i.scj = fdiv fast <4 x float> %i.sch, %i.sci   ; 3 uses
  %i.sck = fmul fast <4 x float> %i.scj, %i.scj   ; 3 uses
  %i.scl = fmul fast <4 x float> %i.sck, %i.sck   ; 7 uses
  %i.scm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.scl, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.scn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.scl, <4 x float> nofpclass(nan inf) %i.scm, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.sco = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.scl, <4 x float> nofpclass(nan inf) %i.scn, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.scp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.scl, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.scq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.scl, <4 x float> nofpclass(nan inf) %i.scp, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.scr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.scl, <4 x float> nofpclass(nan inf) %i.scq, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.scs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.scl, <4 x float> nofpclass(nan inf) %i.scr, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.sct = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sck, <4 x float> nofpclass(nan inf) %i.sco, <4 x float> nofpclass(nan inf) %i.scs)
  %i.scu = fmul fast <4 x float> %i.sct, %i.scj
  %i.scv = select <4 x i1> %i.scg, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.scw = fadd fast <4 x float> %i.scu, %i.scv
  %i.scx = bitcast <4 x float> %i.scw to <4 x i32>
  %i.scy = or <4 x i32> %i.sce, %i.scx
  %i.scz = bitcast <4 x i32> %i.scy to <4 x float>
  %i.sda = fadd fast <4 x float> %i.scb, %i.scz
  %i.sdb = or disjoint <4 x i32> %i.sby, splat (i32 1070141403)
  %i.sdc = bitcast <4 x float> %i.sda to <4 x i32>
  %i.sdd = select <4 x i1> %i.sbh, <4 x i32> %i.sdb, <4 x i32> %i.sdc
  %i.sde = select <4 x i1> %i.sbw, <4 x i32> %i.sbo, <4 x i32> %i.sdd
  %i.sdf = bitcast <4 x i32> %i.sde to <4 x float>
  %i.sdg = shufflevector <4 x float> %i.sdf, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.sdh = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.sdg)
  %i.sdi = bitcast <8 x bfloat> %i.sdh to <2 x i64>
  %i.sdj = extractelement <2 x i64> %i.sdi, i64 0
  store i64 %i.sdj, ptr %.232119.i.i1520, align 1, !tbaa !555
  %i.sdk = getelementptr inbounds nuw i8, ptr %.2120.i.i1519, i64 2
  %i.sdl = getelementptr inbounds nuw i8, ptr %.232119.i.i1520, i64 8
  %i.sdm = add nuw nsw i32 %.0121.i.i1518, 1      ; 2 uses
  %exitcond.not.i92.i = icmp eq i32 %i.sdm, %.sroa.speculated104.i1515
  br i1 %exitcond.not.i92.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.mk, !llvm.loop !368

bb.ml:                                            ; preds = %bb.a
  %.sroa.speculated99.i1687 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 22 uses
  %.sroa.speculated.i1688 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.sdn = mul i32 %.sroa.speculated.i1688, %.sroa.speculated99.i1687 ; 46 uses
  %i.sdo = icmp eq i32 %5, %6
  br i1 %i.sdo, label %bb.mm, label %bb.nc

bb.mm:                                            ; preds = %bb.ml
  %i.sdp = icmp eq i32 %3, %4
  br i1 %i.sdp, label %bb.mn, label %bb.mo

bb.mn:                                            ; preds = %bb.mm
  %i.sdq = icmp sgt i32 %i.sdn, 15
  br i1 %i.sdq, label %.lr.ph.i.i1757.preheader, label %.preheader72.i.i

.lr.ph.i.i1757.preheader:                         ; preds = %bb.mn
  %i.sdr = add nsw i32 %i.sdn, -16                ; 2 uses
  %i.sds = lshr i32 %i.sdr, 4                     ; 2 uses
  %i.sdt = add nuw nsw i32 %i.sds, 1              ; 2 uses
  %i.sdu = icmp eq i32 %i.sds, 0
  br i1 %i.sdu, label %.lr.ph.i.i1757.epil.preheader, label %.lr.ph.i.i1757.preheader.new

.lr.ph.i.i1757.preheader.new:                     ; preds = %.lr.ph.i.i1757.preheader
  %unroll_iter10285 = and i32 %i.sdt, 536870910
  br label %.lr.ph.i.i1757

.preheader72.loopexit.i.i.unr-lcssa:              ; preds = %.lr.ph.i.i1757
  %i.sdv = and i32 %i.sdr, 16
  %lcmp.mod10280.not.not = icmp eq i32 %i.sdv, 0
  br i1 %lcmp.mod10280.not.not, label %.lr.ph.i.i1757.epil.preheader, label %.preheader72.loopexit.i.i

.lr.ph.i.i1757.epil.preheader:                    ; preds = %.preheader72.loopexit.i.i.unr-lcssa, %.lr.ph.i.i1757.preheader
  %.076.i.i.epil.init = phi ptr [ %0, %.lr.ph.i.i1757.preheader ], [ %i.sfg, %.preheader72.loopexit.i.i.unr-lcssa ] ; 2 uses
  %.03475.i.i.epil.init = phi ptr [ %1, %.lr.ph.i.i1757.preheader ], [ %i.sfh, %.preheader72.loopexit.i.i.unr-lcssa ] ; 2 uses
  %.04273.i.i.epil.init = phi ptr [ %2, %.lr.ph.i.i1757.preheader ], [ %i.sfi, %.preheader72.loopexit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod10284 = trunc i32 %i.sdt to i1
  tail call void @llvm.assume(i1 %lcmp.mod10284)
  %i.sdw = load <16 x bfloat>, ptr %.076.i.i.epil.init, align 1, !tbaa !555
  %i.sdx = fpext fast <16 x bfloat> %i.sdw to <16 x float> ; 2 uses
  %i.sdy = load <16 x bfloat>, ptr %.03475.i.i.epil.init, align 1, !tbaa !555
  %i.sdz = fpext fast <16 x bfloat> %i.sdy to <16 x float> ; 2 uses
  %i.sea = fdiv fast <16 x float> %i.sdx, %i.sdz
  %i.seb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.sea, i32 11, <16 x float> zeroinitializer, i16 -1, i32 4)
  %i.sec = fmul fast <16 x float> %i.seb, %i.sdz
  %i.sed = fsub fast <16 x float> %i.sdx, %i.sec
  %i.see = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.sed)
  store <16 x bfloat> %i.see, ptr %.04273.i.i.epil.init, align 1, !tbaa !555
  %i.sef = getelementptr inbounds nuw i8, ptr %.076.i.i.epil.init, i64 32
  %i.seg = getelementptr inbounds nuw i8, ptr %.03475.i.i.epil.init, i64 32
  %i.seh = getelementptr inbounds nuw i8, ptr %.04273.i.i.epil.init, i64 32
  br label %.preheader72.loopexit.i.i

.preheader72.loopexit.i.i:                        ; preds = %.preheader72.loopexit.i.i.unr-lcssa, %.lr.ph.i.i1757.epil.preheader
  %.lcssa9633 = phi ptr [ %i.sfg, %.preheader72.loopexit.i.i.unr-lcssa ], [ %i.sef, %.lr.ph.i.i1757.epil.preheader ]
  %.lcssa9632 = phi ptr [ %i.sfh, %.preheader72.loopexit.i.i.unr-lcssa ], [ %i.seg, %.lr.ph.i.i1757.epil.preheader ]
  %.lcssa9631 = phi ptr [ %i.sfi, %.preheader72.loopexit.i.i.unr-lcssa ], [ %i.seh, %.lr.ph.i.i1757.epil.preheader ]
  %i.sei = and i32 %i.sdn, 2147483632
  br label %.preheader72.i.i

.preheader72.i.i:                                 ; preds = %.preheader72.loopexit.i.i, %bb.mn
  %.042.lcssa.i.i1741 = phi ptr [ %2, %bb.mn ], [ %.lcssa9631, %.preheader72.loopexit.i.i ] ; 2 uses
  %.038.lcssa.i.i1742 = phi i32 [ 0, %bb.mn ], [ %i.sei, %.preheader72.loopexit.i.i ] ; 3 uses
  %.034.lcssa.i.i1743 = phi ptr [ %1, %bb.mn ], [ %.lcssa9632, %.preheader72.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i.i1744 = phi ptr [ %0, %bb.mn ], [ %.lcssa9633, %.preheader72.loopexit.i.i ] ; 2 uses
  %i.sej = or disjoint i32 %.038.lcssa.i.i1742, 7
  %i.sek = icmp slt i32 %i.sej, %i.sdn
  br i1 %i.sek, label %.lr.ph84.i.i1756, label %.preheader71.i.i

.lr.ph.i.i1757:                                   ; preds = %.lr.ph.i.i1757, %.lr.ph.i.i1757.preheader.new
  %.076.i.i = phi ptr [ %0, %.lr.ph.i.i1757.preheader.new ], [ %i.sfg, %.lr.ph.i.i1757 ] ; 3 uses
  %.03475.i.i = phi ptr [ %1, %.lr.ph.i.i1757.preheader.new ], [ %i.sfh, %.lr.ph.i.i1757 ] ; 3 uses
  %.04273.i.i = phi ptr [ %2, %.lr.ph.i.i1757.preheader.new ], [ %i.sfi, %.lr.ph.i.i1757 ] ; 3 uses
  %niter10286 = phi i32 [ 0, %.lr.ph.i.i1757.preheader.new ], [ %niter10286.next.1, %.lr.ph.i.i1757 ]
  %i.sel = load <16 x bfloat>, ptr %.076.i.i, align 1, !tbaa !555
  %i.sem = fpext fast <16 x bfloat> %i.sel to <16 x float> ; 2 uses
  %i.sen = load <16 x bfloat>, ptr %.03475.i.i, align 1, !tbaa !555
  %i.seo = fpext fast <16 x bfloat> %i.sen to <16 x float> ; 2 uses
  %i.sep = fdiv fast <16 x float> %i.sem, %i.seo
  %i.seq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.sep, i32 11, <16 x float> zeroinitializer, i16 -1, i32 4)
  %i.ser = fmul fast <16 x float> %i.seq, %i.seo
  %i.ses = fsub fast <16 x float> %i.sem, %i.ser
  %i.set = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ses)
  store <16 x bfloat> %i.set, ptr %.04273.i.i, align 1, !tbaa !555
  %i.seu = getelementptr inbounds nuw i8, ptr %.076.i.i, i64 32
  %i.sev = getelementptr inbounds nuw i8, ptr %.03475.i.i, i64 32
  %i.sew = getelementptr inbounds nuw i8, ptr %.04273.i.i, i64 32
  %i.sex = load <16 x bfloat>, ptr %i.seu, align 1, !tbaa !555
  %i.sey = fpext fast <16 x bfloat> %i.sex to <16 x float> ; 2 uses
  %i.sez = load <16 x bfloat>, ptr %i.sev, align 1, !tbaa !555
  %i.sfa = fpext fast <16 x bfloat> %i.sez to <16 x float> ; 2 uses
  %i.sfb = fdiv fast <16 x float> %i.sey, %i.sfa
  %i.sfc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.sfb, i32 11, <16 x float> zeroinitializer, i16 -1, i32 4)
  %i.sfd = fmul fast <16 x float> %i.sfc, %i.sfa
  %i.sfe = fsub fast <16 x float> %i.sey, %i.sfd
  %i.sff = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.sfe)
  store <16 x bfloat> %i.sff, ptr %i.sew, align 1, !tbaa !555
  %i.sfg = getelementptr inbounds nuw i8, ptr %.076.i.i, i64 64 ; 3 uses
  %i.sfh = getelementptr inbounds nuw i8, ptr %.03475.i.i, i64 64 ; 3 uses
  %i.sfi = getelementptr inbounds nuw i8, ptr %.04273.i.i, i64 64 ; 3 uses
  %niter10286.next.1 = add i32 %niter10286, 2     ; 2 uses
  %niter10286.ncmp.1.not = icmp eq i32 %niter10286.next.1, %unroll_iter10285
  br i1 %niter10286.ncmp.1.not, label %.preheader72.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i1757, !llvm.loop !369

.preheader71.i.i:                                 ; preds = %.lr.ph84.i.i1756, %.preheader72.i.i
  %.143.lcssa.i.i1745 = phi ptr [ %.042.lcssa.i.i1741, %.preheader72.i.i ], [ %i.sfw, %.lr.ph84.i.i1756 ] ; 2 uses
  %.139.lcssa.i.i1746 = phi i32 [ %.038.lcssa.i.i1742, %.preheader72.i.i ], [ %i.sfx, %.lr.ph84.i.i1756 ] ; 3 uses
  %.135.lcssa.i.i1747 = phi ptr [ %.034.lcssa.i.i1743, %.preheader72.i.i ], [ %i.sfv, %.lr.ph84.i.i1756 ] ; 2 uses
  %.1.lcssa.i.i1748 = phi ptr [ %.0.lcssa.i.i1744, %.preheader72.i.i ], [ %i.sfu, %.lr.ph84.i.i1756 ] ; 2 uses
  %i.sfj = or disjoint i32 %.139.lcssa.i.i1746, 3
  %i.sfk = icmp slt i32 %i.sfj, %i.sdn
  br i1 %i.sfk, label %.lr.ph93.i.i1755, label %.preheader.i.i1749

.lr.ph84.i.i1756:                                 ; preds = %.preheader72.i.i, %.lr.ph84.i.i1756
  %.183.i.i = phi ptr [ %i.sfu, %.lr.ph84.i.i1756 ], [ %.0.lcssa.i.i1744, %.preheader72.i.i ] ; 2 uses
  %.13582.i.i = phi ptr [ %i.sfv, %.lr.ph84.i.i1756 ], [ %.034.lcssa.i.i1743, %.preheader72.i.i ] ; 2 uses
  %.13981.i.i = phi i32 [ %i.sfx, %.lr.ph84.i.i1756 ], [ %.038.lcssa.i.i1742, %.preheader72.i.i ]
  %.14380.i.i = phi ptr [ %i.sfw, %.lr.ph84.i.i1756 ], [ %.042.lcssa.i.i1741, %.preheader72.i.i ] ; 2 uses
  %i.sfl = load <8 x bfloat>, ptr %.183.i.i, align 1, !tbaa !555
  %i.sfm = fpext fast <8 x bfloat> %i.sfl to <8 x float> ; 2 uses
  %i.sfn = load <8 x bfloat>, ptr %.13582.i.i, align 1, !tbaa !555
  %i.sfo = fpext fast <8 x bfloat> %i.sfn to <8 x float> ; 2 uses
  %i.sfp = fdiv fast <8 x float> %i.sfm, %i.sfo
  %i.sfq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.trunc.v8f32(<8 x float> %i.sfp)
  %i.sfr = fmul fast <8 x float> %i.sfq, %i.sfo
  %i.sfs = fsub fast <8 x float> %i.sfm, %i.sfr
  %i.sft = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.sfs)
  store <8 x bfloat> %i.sft, ptr %.14380.i.i, align 1, !tbaa !555
  %i.sfu = getelementptr inbounds nuw i8, ptr %.183.i.i, i64 16 ; 2 uses
  %i.sfv = getelementptr inbounds nuw i8, ptr %.13582.i.i, i64 16 ; 2 uses
  %i.sfw = getelementptr inbounds nuw i8, ptr %.14380.i.i, i64 16 ; 2 uses
  %i.sfx = add nuw nsw i32 %.13981.i.i, 8         ; 3 uses
  %i.sfy = or disjoint i32 %i.sfx, 7
  %i.sfz = icmp slt i32 %i.sfy, %i.sdn
  br i1 %i.sfz, label %.lr.ph84.i.i1756, label %.preheader71.i.i, !llvm.loop !370

.preheader.i.i1749:                               ; preds = %.lr.ph93.i.i1755, %.preheader71.i.i
  %.244.lcssa.i.i1750 = phi ptr [ %.143.lcssa.i.i1745, %.preheader71.i.i ], [ %i.sin, %.lr.ph93.i.i1755 ] ; 7 uses
  %.240.lcssa.i.i1751 = phi i32 [ %.139.lcssa.i.i1746, %.preheader71.i.i ], [ %i.sio, %.lr.ph93.i.i1755 ] ; 6 uses
  %.236.lcssa.i.i1752 = phi ptr [ %.135.lcssa.i.i1747, %.preheader71.i.i ], [ %i.sim, %.lr.ph93.i.i1755 ] ; 7 uses
  %.2.lcssa.i.i1753 = phi ptr [ %.1.lcssa.i.i1748, %.preheader71.i.i ], [ %i.sil, %.lr.ph93.i.i1755 ] ; 7 uses
  %.244.lcssa.i.i17506949 = ptrtoaddr ptr %.244.lcssa.i.i1750 to i64 ; 2 uses
  %.2.lcssa.i.i17536950 = ptrtoaddr ptr %.2.lcssa.i.i1753 to i64
  %.236.lcssa.i.i17526952 = ptrtoaddr ptr %.236.lcssa.i.i1752 to i64
  %i.sga = icmp slt i32 %.240.lcssa.i.i1751, %i.sdn
  br i1 %i.sga, label %iter.check6974, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check6974:                                   ; preds = %.preheader.i.i1749
  %i.sgb = xor i32 %.240.lcssa.i.i1751, -1
  %i.sgc = add i32 %i.sdn, %i.sgb                 ; 3 uses
  %i.sgd = zext i32 %i.sgc to i64
  %i.sge = add nuw nsw i64 %i.sgd, 1              ; 5 uses
  %min.iters.check6955 = icmp ult i32 %i.sgc, 7
  br i1 %min.iters.check6955, label %.lr.ph102.i.i.preheader, label %vector.memcheck6948

vector.memcheck6948:                              ; preds = %iter.check6974
  %i.sgf = sub i64 %.2.lcssa.i.i17536950, %.244.lcssa.i.i17506949
  %diff.check6951 = icmp ugt i64 %i.sgf, -64
  %i.sgg = sub i64 %.236.lcssa.i.i17526952, %.244.lcssa.i.i17506949
  %diff.check6953 = icmp ugt i64 %i.sgg, -64
  %conflict.rdx6954 = or i1 %diff.check6951, %diff.check6953
  br i1 %conflict.rdx6954, label %.lr.ph102.i.i.preheader, label %vector.main.loop.iter.check6956

vector.main.loop.iter.check6956:                  ; preds = %vector.memcheck6948
  %min.iters.check6957 = icmp ult i32 %i.sgc, 31
  br i1 %min.iters.check6957, label %vec.epilog.ph6978, label %vector.ph6958

vector.ph6958:                                    ; preds = %vector.main.loop.iter.check6956
  %i.sgh = and i64 %i.sge, 24
  %n.vec6959 = and i64 %i.sge, 8589934560         ; 5 uses
  %i.sgi = shl nuw nsw i64 %n.vec6959, 1          ; 3 uses
  %i.sgj = getelementptr i8, ptr %.2.lcssa.i.i1753, i64 %i.sgi
  %i.sgk = getelementptr i8, ptr %.236.lcssa.i.i1752, i64 %i.sgi
  %i.sgl = trunc i64 %n.vec6959 to i32
  %i.sgm = add i32 %.240.lcssa.i.i1751, %i.sgl
  %i.sgn = getelementptr i8, ptr %.244.lcssa.i.i1750, i64 %i.sgi
  br label %vector.body6960

vector.body6960:                                  ; preds = %vector.ph6958, %vector.body6960
  %index6961 = phi i64 [ 0, %vector.ph6958 ], [ %index.next6967, %vector.body6960 ] ; 2 uses
  %i.sgo = shl i64 %index6961, 1                  ; 3 uses
  %next.gep6962 = getelementptr i8, ptr %.2.lcssa.i.i1753, i64 %i.sgo
  %next.gep6963 = getelementptr i8, ptr %.236.lcssa.i.i1752, i64 %i.sgo
  %next.gep6964 = getelementptr i8, ptr %.244.lcssa.i.i1750, i64 %i.sgo
  %wide.load6965 = load <32 x i16>, ptr %next.gep6962, align 2, !tbaa !558
  %i.sgp = zext <32 x i16> %wide.load6965 to <32 x i32>
  %i.sgq = shl nuw <32 x i32> %i.sgp, splat (i32 16)
  %i.sgr = bitcast <32 x i32> %i.sgq to <32 x float>
  %wide.load6966 = load <32 x i16>, ptr %next.gep6963, align 2, !tbaa !558
  %i.sgs = zext <32 x i16> %wide.load6966 to <32 x i32>
end_hunk_0
