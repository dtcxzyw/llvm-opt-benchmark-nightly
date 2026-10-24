Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/binaryop_x86_avx512?download=true
inline.NumInlined: 433
inline.NumDeleted: 260
loop-unroll.NumRuntimeUnrolled: 342
loop-unroll.NumUnrolled: 342
begin_hunk_0_@_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii:bb.a
  %i.hgg = and i32 %i.gvp, 2147483632
  br label %.preheader172.i.i

.preheader172.i.i:                                ; preds = %.preheader172.loopexit.i.i, %bb.fq
  %.041.lcssa.i.i1284 = phi i32 [ 0, %bb.fq ], [ %i.hgg, %.preheader172.loopexit.i.i ] ; 3 uses
  %.037.lcssa.i.i1285 = phi ptr [ %2, %bb.fq ], [ %i.hin, %.preheader172.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i34.i1286 = phi ptr [ %0, %bb.fq ], [ %i.him, %.preheader172.loopexit.i.i ] ; 2 uses
  %i.hgh = or disjoint i32 %.041.lcssa.i.i1284, 7
  %i.hgi = icmp slt i32 %i.hgh, %i.gvp
  br i1 %i.hgi, label %.lr.ph181.i.i, label %.preheader171.i.i

.lr.ph.i39.i1295:                                 ; preds = %bb.fq, %.lr.ph.i39.i1295
  %.0175.i.i = phi ptr [ %i.him, %.lr.ph.i39.i1295 ], [ %0, %bb.fq ] ; 2 uses
  %.037174.i.i = phi ptr [ %i.hin, %.lr.ph.i39.i1295 ], [ %2, %bb.fq ] ; 2 uses
  %.041173.i.i = phi i32 [ %i.hio, %.lr.ph.i39.i1295 ], [ 0, %bb.fq ]
  %i.hgj = load <16 x float>, ptr %.0175.i.i, align 1, !tbaa !60
  %i.hgk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.hgj, <16 x float> splat (float f0x00800000), i32 4)
  %i.hgl = bitcast <16 x float> %i.hgk to <16 x i32> ; 2 uses
  %i.hgm = lshr <16 x i32> %i.hgl, splat (i32 23)
  %i.hgn = and <16 x i32> %i.hgl, splat (i32 -2139095041)
  %i.hgo = or disjoint <16 x i32> %i.hgn, splat (i32 1056964608)
  %i.hgp = bitcast <16 x i32> %i.hgo to <16 x float> ; 3 uses
  %i.hgq = add nsw <16 x i32> %i.hgm, splat (i32 -127)
  %i.hgr = sitofp fast <16 x i32> %i.hgq to <16 x float> ; 2 uses
  %i.hgs = fadd fast <16 x float> %i.hgr, splat (float 1.000000e+00)
  %i.hgt = fcmp fast olt <16 x float> %i.hgp, splat (float f0x3F3504F3) ; 2 uses
  %i.hgu = fadd fast <16 x float> %i.hgp, splat (float -1.000000e+00)
  %i.hgv = select fast <16 x i1> %i.hgt, <16 x float> %i.hgr, <16 x float> %i.hgs ; 2 uses
  %i.hgw = select fast <16 x i1> %i.hgt, <16 x float> %i.hgp, <16 x float> zeroinitializer
  %i.hgx = fadd fast <16 x float> %i.hgu, %i.hgw  ; 12 uses
  %i.hgy = fmul fast <16 x float> %i.hgx, %i.hgx  ; 2 uses
  %i.hgz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hgx, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.hha = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hgz, <16 x float> nofpclass(nan inf) %i.hgx, <16 x float> splat (float f0x3DEF251A))
  %i.hhb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hha, <16 x float> nofpclass(nan inf) %i.hgx, <16 x float> splat (float f0xBDFE5D4F))
  %i.hhc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hhb, <16 x float> nofpclass(nan inf) %i.hgx, <16 x float> splat (float f0x3E11E9BF))
  %i.hhd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hhc, <16 x float> nofpclass(nan inf) %i.hgx, <16 x float> splat (float f0xBE2AAE50))
  %i.hhe = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hhd, <16 x float> nofpclass(nan inf) %i.hgx, <16 x float> splat (float f0x3E4CCEAC))
  %i.hhf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hhe, <16 x float> nofpclass(nan inf) %i.hgx, <16 x float> splat (float f0xBE7FFFFC))
  %i.hhg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hhf, <16 x float> nofpclass(nan inf) %i.hgx, <16 x float> splat (float f0x3EAAAAAA))
  %i.hhh = fmul fast <16 x float> %i.hgy, %i.hgx
  %i.hhi = fmul fast <16 x float> %i.hhh, %i.hhg
  %i.hhj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hgv, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.hhi)
  %i.hhk = fneg fast <16 x float> %i.hgy
  %i.hhl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.hhk, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.hhj)
  %i.hhm = fadd fast <16 x float> %i.hhl, %i.hgx
  %i.hhn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hgv, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.hhm)
  %i.hho = fmul fast <16 x float> %i.hhn, %i.hge
  %i.hhp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.hho, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.hhq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.hhp, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.hhr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hhq, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.hhs = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.hhr, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.hht = fcmp fast ogt <16 x float> %i.hhs, %i.hhr
  %i.hhu = fadd fast <16 x float> %i.hhs, splat (float -1.000000e+00)
  %i.hhv = select fast <16 x i1> %i.hht, <16 x float> %i.hhu, <16 x float> %i.hhs ; 2 uses
  %i.hhw = fneg fast <16 x float> %i.hhv          ; 2 uses
  %i.hhx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.hhw, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.hhq)
  %i.hhy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.hhw, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.hhx) ; 8 uses
  %i.hhz = fmul fast <16 x float> %i.hhy, %i.hhy
  %i.hia = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hhy, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.hib = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hia, <16 x float> nofpclass(nan inf) %i.hhy, <16 x float> splat (float f0x3C088908))
  %i.hic = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hib, <16 x float> nofpclass(nan inf) %i.hhy, <16 x float> splat (float f0x3D2AA9C1))
  %i.hid = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hic, <16 x float> nofpclass(nan inf) %i.hhy, <16 x float> splat (float f0x3E2AAAAA))
  %i.hie = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hid, <16 x float> nofpclass(nan inf) %i.hhy, <16 x float> splat (float 5.000000e-01))
  %i.hif = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hie, <16 x float> nofpclass(nan inf) %i.hhz, <16 x float> nofpclass(nan inf) %i.hhy)
  %i.hig = fadd fast <16 x float> %i.hif, splat (float 1.000000e+00)
  %i.hih = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.hhv, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.hii = shl <16 x i32> %i.hih, splat (i32 23)
  %i.hij = add <16 x i32> %i.hii, splat (i32 1065353216)
  %i.hik = bitcast <16 x i32> %i.hij to <16 x float>
  %i.hil = fmul fast <16 x float> %i.hig, %i.hik
  store <16 x float> %i.hil, ptr %.037174.i.i, align 1, !tbaa !60
  %i.him = getelementptr inbounds nuw i8, ptr %.0175.i.i, i64 64 ; 2 uses
  %i.hin = getelementptr inbounds nuw i8, ptr %.037174.i.i, i64 64 ; 2 uses
  %i.hio = add nuw nsw i32 %.041173.i.i, 16       ; 2 uses
  %i.hip = or disjoint i32 %i.hio, 15
  %i.hiq = icmp slt i32 %i.hip, %i.gvp
  br i1 %i.hiq, label %.lr.ph.i39.i1295, label %.preheader172.loopexit.i.i, !llvm.loop !343

.preheader171.i.i:                                ; preds = %.lr.ph181.i.i, %.preheader172.i.i
  %.142.lcssa.i.i1287 = phi i32 [ %.041.lcssa.i.i1284, %.preheader172.i.i ], [ %i.hky, %.lr.ph181.i.i ] ; 3 uses
  %.138.lcssa.i.i1288 = phi ptr [ %.037.lcssa.i.i1285, %.preheader172.i.i ], [ %i.hkx, %.lr.ph181.i.i ] ; 2 uses
  %.1.lcssa.i35.i1289 = phi ptr [ %.0.lcssa.i34.i1286, %.preheader172.i.i ], [ %i.hkw, %.lr.ph181.i.i ] ; 2 uses
  %i.hir = or disjoint i32 %.142.lcssa.i.i1287, 3
  %i.his = icmp slt i32 %i.hir, %i.gvp
  br i1 %i.his, label %.lr.ph188.i.i, label %.preheader.i36.i1290

.lr.ph181.i.i:                                    ; preds = %.preheader172.i.i, %.lr.ph181.i.i
  %.1180.i.i = phi ptr [ %i.hkw, %.lr.ph181.i.i ], [ %.0.lcssa.i34.i1286, %.preheader172.i.i ] ; 2 uses
  %.138179.i.i = phi ptr [ %i.hkx, %.lr.ph181.i.i ], [ %.037.lcssa.i.i1285, %.preheader172.i.i ] ; 2 uses
  %.142178.i.i = phi i32 [ %i.hky, %.lr.ph181.i.i ], [ %.041.lcssa.i.i1284, %.preheader172.i.i ]
  %i.hit = load <8 x float>, ptr %.1180.i.i, align 1, !tbaa !60
  %i.hiu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hit, <8 x float> splat (float f0x00800000))
  %i.hiv = bitcast <8 x float> %i.hiu to <8 x i32> ; 2 uses
  %i.hiw = lshr <8 x i32> %i.hiv, splat (i32 23)
  %i.hix = and <8 x i32> %i.hiv, splat (i32 -2139095041)
  %i.hiy = or disjoint <8 x i32> %i.hix, splat (i32 1056964608)
  %i.hiz = bitcast <8 x i32> %i.hiy to <8 x float> ; 3 uses
  %i.hja = add nsw <8 x i32> %i.hiw, splat (i32 -127)
  %i.hjb = sitofp fast <8 x i32> %i.hja to <8 x float> ; 2 uses
  %i.hjc = fadd fast <8 x float> %i.hjb, splat (float 1.000000e+00)
  %i.hjd = fcmp fast olt <8 x float> %i.hiz, splat (float f0x3F3504F3) ; 2 uses
  %i.hje = select <8 x i1> %i.hjd, <8 x float> %i.hiz, <8 x float> zeroinitializer
  %i.hjf = fadd fast <8 x float> %i.hiz, splat (float -1.000000e+00)
  %i.hjg = select fast <8 x i1> %i.hjd, <8 x float> %i.hjb, <8 x float> %i.hjc ; 2 uses
  %i.hjh = fadd fast <8 x float> %i.hjf, %i.hje   ; 12 uses
  %i.hji = fmul fast <8 x float> %i.hjh, %i.hjh   ; 2 uses
  %i.hjj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hjh, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.hjk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hjj, <8 x float> nofpclass(nan inf) %i.hjh, <8 x float> splat (float f0x3DEF251A))
  %i.hjl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hjk, <8 x float> nofpclass(nan inf) %i.hjh, <8 x float> splat (float f0xBDFE5D4F))
  %i.hjm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hjl, <8 x float> nofpclass(nan inf) %i.hjh, <8 x float> splat (float f0x3E11E9BF))
  %i.hjn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hjm, <8 x float> nofpclass(nan inf) %i.hjh, <8 x float> splat (float f0xBE2AAE50))
  %i.hjo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hjn, <8 x float> nofpclass(nan inf) %i.hjh, <8 x float> splat (float f0x3E4CCEAC))
  %i.hjp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hjo, <8 x float> nofpclass(nan inf) %i.hjh, <8 x float> splat (float f0xBE7FFFFC))
  %i.hjq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hjp, <8 x float> nofpclass(nan inf) %i.hjh, <8 x float> splat (float f0x3EAAAAAA))
  %i.hjr = fmul fast <8 x float> %i.hji, %i.hjh
  %i.hjs = fmul fast <8 x float> %i.hjr, %i.hjq
  %i.hjt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hjg, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.hjs)
  %i.hju = fneg fast <8 x float> %i.hji
  %i.hjv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hju, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.hjt)
  %i.hjw = fadd fast <8 x float> %i.hjv, %i.hjh
  %i.hjx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hjg, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.hjw)
  %i.hjy = fmul fast <8 x float> %i.hjx, %i.hgc
  %i.hjz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hjy, <8 x float> splat (float f0x42B0C0A5))
  %i.hka = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hjz, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hkb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hka, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.hkc = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hkb, i32 1) ; 2 uses
  %i.hkd = fcmp fast ogt <8 x float> %i.hkc, %i.hkb
  %i.hke = select <8 x i1> %i.hkd, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.hkf = fsub fast <8 x float> %i.hkc, %i.hke   ; 2 uses
  %i.hkg = fneg fast <8 x float> %i.hkf           ; 2 uses
  %i.hkh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hkg, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.hka)
  %i.hki = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hkg, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.hkh) ; 8 uses
  %i.hkj = fmul fast <8 x float> %i.hki, %i.hki
  %i.hkk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hki, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.hkl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hkk, <8 x float> nofpclass(nan inf) %i.hki, <8 x float> splat (float f0x3C088908))
  %i.hkm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hkl, <8 x float> nofpclass(nan inf) %i.hki, <8 x float> splat (float f0x3D2AA9C1))
  %i.hkn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hkm, <8 x float> nofpclass(nan inf) %i.hki, <8 x float> splat (float f0x3E2AAAAA))
  %i.hko = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hkn, <8 x float> nofpclass(nan inf) %i.hki, <8 x float> splat (float 5.000000e-01))
  %i.hkp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hko, <8 x float> nofpclass(nan inf) %i.hkj, <8 x float> nofpclass(nan inf) %i.hki)
  %i.hkq = fadd fast <8 x float> %i.hkp, splat (float 1.000000e+00)
  %i.hkr = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hkf)
  %i.hks = shl <8 x i32> %i.hkr, splat (i32 23)
  %i.hkt = add <8 x i32> %i.hks, splat (i32 1065353216)
  %i.hku = bitcast <8 x i32> %i.hkt to <8 x float>
  %i.hkv = fmul fast <8 x float> %i.hkq, %i.hku
  store <8 x float> %i.hkv, ptr %.138179.i.i, align 1, !tbaa !60
  %i.hkw = getelementptr inbounds nuw i8, ptr %.1180.i.i, i64 32 ; 2 uses
  %i.hkx = getelementptr inbounds nuw i8, ptr %.138179.i.i, i64 32 ; 2 uses
  %i.hky = add nuw nsw i32 %.142178.i.i, 8        ; 3 uses
  %i.hkz = or disjoint i32 %i.hky, 7
  %i.hla = icmp slt i32 %i.hkz, %i.gvp
  br i1 %i.hla, label %.lr.ph181.i.i, label %.preheader171.i.i, !llvm.loop !344

.preheader.i36.i1290:                             ; preds = %.lr.ph188.i.i, %.preheader171.i.i
  %.243.lcssa.i.i1291 = phi i32 [ %.142.lcssa.i.i1287, %.preheader171.i.i ], [ %i.hpv, %.lr.ph188.i.i ] ; 5 uses
  %.239.lcssa.i.i1292 = phi ptr [ %.138.lcssa.i.i1288, %.preheader171.i.i ], [ %i.hpu, %.lr.ph188.i.i ] ; 6 uses
  %.2.lcssa.i37.i1293 = phi ptr [ %.1.lcssa.i35.i1289, %.preheader171.i.i ], [ %i.hpt, %.lr.ph188.i.i ] ; 6 uses
  %i.hlb = icmp slt i32 %.243.lcssa.i.i1291, %i.gvp
  br i1 %i.hlb, label %iter.check9501, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

iter.check9501:                                   ; preds = %.preheader.i36.i1290
  %.239.lcssa.i.i12929485 = ptrtoaddr ptr %.239.lcssa.i.i1292 to i64
  %.2.lcssa.i37.i12939484 = ptrtoaddr ptr %.2.lcssa.i37.i1293 to i64
  %i.hlc = xor i32 %.243.lcssa.i.i1291, -1
  %i.hld = add i32 %i.gvp, %i.hlc                 ; 3 uses
  %i.hle = zext i32 %i.hld to i64
  %i.hlf = add nuw nsw i64 %i.hle, 1              ; 5 uses
  %min.iters.check9486 = icmp ult i32 %i.hld, 3
  %i.hlg = sub i64 %.2.lcssa.i37.i12939484, %.239.lcssa.i.i12929485
  %diff.check9488 = icmp ugt i64 %i.hlg, -64
  %or.cond10444 = select i1 %min.iters.check9486, i1 true, i1 %diff.check9488
  br i1 %or.cond10444, label %.lr.ph195.i.i.preheader, label %vector.main.loop.iter.check9489

vector.main.loop.iter.check9489:                  ; preds = %iter.check9501
  %min.iters.check9490 = icmp ult i32 %i.hld, 15
  br i1 %min.iters.check9490, label %vec.epilog.ph9505, label %vector.ph9491

vector.ph9491:                                    ; preds = %vector.main.loop.iter.check9489
  %i.hlh = and i64 %i.hlf, 12
  %n.vec9492 = and i64 %i.hlf, 8589934576         ; 5 uses
  %i.hli = shl nuw nsw i64 %n.vec9492, 2          ; 2 uses
  %i.hlj = getelementptr i8, ptr %.2.lcssa.i37.i1293, i64 %i.hli
  %i.hlk = getelementptr i8, ptr %.239.lcssa.i.i1292, i64 %i.hli
  %i.hll = trunc i64 %n.vec9492 to i32
  %i.hlm = add i32 %.243.lcssa.i.i1291, %i.hll
  %i.hln = insertelement <8 x float> poison, float %i.hfo, i64 0
  %i.hlo = shufflevector <8 x float> %i.hln, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hlp = insertelement <4 x float> poison, float %i.hfo, i64 0
  %i.hlq = shufflevector <4 x float> %i.hlp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hlr = insertelement <2 x float> poison, float %i.hfo, i64 0
  %i.hls = shufflevector <2 x float> %i.hlr, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body9493

vector.body9493:                                  ; preds = %vector.ph9491, %vector.body9493
  %index9494 = phi i64 [ 0, %vector.ph9491 ], [ %index.next9498, %vector.body9493 ] ; 2 uses
  %i.hlt = shl i64 %index9494, 2                  ; 2 uses
  %next.gep9495 = getelementptr i8, ptr %.2.lcssa.i37.i1293, i64 %i.hlt
  %next.gep9496 = getelementptr i8, ptr %.239.lcssa.i.i1292, i64 %i.hlt
  %wide.load9497 = load <16 x float>, ptr %next.gep9495, align 4, !tbaa !59 ; 5 uses
  %i.hlu = extractelement <16 x float> %wide.load9497, i64 0
  %i.hlv = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hlu, float %i.hfo)
  %i.hlw = shufflevector <16 x float> %wide.load9497, <16 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %i.hlx = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.hlw, <8 x float> %i.hlo)
  %i.hly = shufflevector <16 x float> %wide.load9497, <16 x float> poison, <4 x i32> <i32 9, i32 10, i32 11, i32 12>
  %i.hlz = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.hly, <4 x float> %i.hlq)
  %i.hma = extractelement <16 x float> %wide.load9497, i64 13
  %i.hmb = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hma, float %i.hfo)
  %i.hmc = shufflevector <16 x float> %wide.load9497, <16 x float> poison, <2 x i32> <i32 14, i32 15>
  %i.hmd = tail call fast <2 x float> @llvm.pow.v2f32(<2 x float> %i.hmc, <2 x float> %i.hls)
  %i.hme = insertelement <16 x float> poison, float %i.hlv, i64 0
  %i.hmf = shufflevector <8 x float> %i.hlx, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hmg = shufflevector <16 x float> %i.hme, <16 x float> %i.hmf, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hmh = shufflevector <4 x float> %i.hlz, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hmi = shufflevector <16 x float> %i.hmg, <16 x float> %i.hmh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.hmj = insertelement <16 x float> %i.hmi, float %i.hmb, i64 13
  %i.hmk = shufflevector <2 x float> %i.hmd, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hml = shufflevector <16 x float> %i.hmj, <16 x float> %i.hmk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x float> %i.hml, ptr %next.gep9496, align 4, !tbaa !59
  %index.next9498 = add nuw i64 %index9494, 16    ; 2 uses
  %i.hmm = icmp eq i64 %index.next9498, %n.vec9492
  br i1 %i.hmm, label %middle.block9499, label %vector.body9493, !llvm.loop !345

middle.block9499:                                 ; preds = %vector.body9493
  %cmp.n9500 = icmp eq i64 %i.hlf, %n.vec9492
  br i1 %cmp.n9500, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %vec.epilog.iter.check9502

vec.epilog.iter.check9502:                        ; preds = %middle.block9499
  %min.epilog.iters.check9504 = icmp eq i64 %i.hlh, 0
  br i1 %min.epilog.iters.check9504, label %.lr.ph195.i.i.preheader, label %vec.epilog.ph9505, !prof !818

vec.epilog.ph9505:                                ; preds = %vector.main.loop.iter.check9489, %vec.epilog.iter.check9502
  %vec.epilog.resume.val9506 = phi i64 [ %n.vec9492, %vec.epilog.iter.check9502 ], [ 0, %vector.main.loop.iter.check9489 ]
  %n.vec9507 = and i64 %i.hlf, 8589934588         ; 4 uses
  %i.hmn = shl nuw nsw i64 %n.vec9507, 2          ; 2 uses
  %i.hmo = getelementptr i8, ptr %.2.lcssa.i37.i1293, i64 %i.hmn
  %i.hmp = getelementptr i8, ptr %.239.lcssa.i.i1292, i64 %i.hmn
  %i.hmq = trunc i64 %n.vec9507 to i32
  %i.hmr = add i32 %.243.lcssa.i.i1291, %i.hmq
  br label %vec.epilog.vector.body9508

vec.epilog.vector.body9508:                       ; preds = %vec.epilog.vector.body9508, %vec.epilog.ph9505
  %index9509 = phi i64 [ %vec.epilog.resume.val9506, %vec.epilog.ph9505 ], [ %index.next9513, %vec.epilog.vector.body9508 ] ; 2 uses
  %i.hms = shl i64 %index9509, 2                  ; 2 uses
  %next.gep9510 = getelementptr i8, ptr %.2.lcssa.i37.i1293, i64 %i.hms
  %next.gep9511 = getelementptr i8, ptr %.239.lcssa.i.i1292, i64 %i.hms
  %wide.load9512 = load <4 x float>, ptr %next.gep9510, align 4, !tbaa !59 ; 4 uses
  %i.hmt = extractelement <4 x float> %wide.load9512, i64 0
  %i.hmu = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hmt, float %i.hfo)
  %i.hmv = extractelement <4 x float> %wide.load9512, i64 1
  %i.hmw = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hmv, float %i.hfo)
  %i.hmx = extractelement <4 x float> %wide.load9512, i64 2
  %i.hmy = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hmx, float %i.hfo)
  %i.hmz = extractelement <4 x float> %wide.load9512, i64 3
  %i.hna = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hmz, float %i.hfo)
  %i.hnb = insertelement <4 x float> poison, float %i.hmu, i64 0
  %i.hnc = insertelement <4 x float> %i.hnb, float %i.hmw, i64 1
  %i.hnd = insertelement <4 x float> %i.hnc, float %i.hmy, i64 2
  %i.hne = insertelement <4 x float> %i.hnd, float %i.hna, i64 3
  store <4 x float> %i.hne, ptr %next.gep9511, align 4, !tbaa !59
  %index.next9513 = add nuw i64 %index9509, 4     ; 2 uses
  %i.hnf = icmp eq i64 %index.next9513, %n.vec9507
  br i1 %i.hnf, label %vec.epilog.middle.block9514, label %vec.epilog.vector.body9508, !llvm.loop !346

vec.epilog.middle.block9514:                      ; preds = %vec.epilog.vector.body9508
  %cmp.n9515 = icmp eq i64 %i.hlf, %n.vec9507
  br i1 %cmp.n9515, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph195.i.i.preheader

.lr.ph195.i.i.preheader:                          ; preds = %iter.check9501, %vec.epilog.iter.check9502, %vec.epilog.middle.block9514
  %.3194.i.i.ph = phi ptr [ %.2.lcssa.i37.i1293, %iter.check9501 ], [ %i.hlj, %vec.epilog.iter.check9502 ], [ %i.hmo, %vec.epilog.middle.block9514 ] ; 2 uses
  %.340193.i.i.ph = phi ptr [ %.239.lcssa.i.i1292, %iter.check9501 ], [ %i.hlk, %vec.epilog.iter.check9502 ], [ %i.hmp, %vec.epilog.middle.block9514 ] ; 2 uses
  %.344192.i.i.ph = phi i32 [ %.243.lcssa.i.i1291, %iter.check9501 ], [ %i.hlm, %vec.epilog.iter.check9502 ], [ %i.hmr, %vec.epilog.middle.block9514 ] ; 4 uses
  %i.hng = sub i32 %i.gvp, %.344192.i.i.ph
  %xtraiter12300 = and i32 %i.hng, 3              ; 2 uses
  %lcmp.mod12301.not = icmp eq i32 %xtraiter12300, 0
  br i1 %lcmp.mod12301.not, label %.lr.ph195.i.i.prol.loopexit, label %.lr.ph195.i.i.prol

.lr.ph195.i.i.prol:                               ; preds = %.lr.ph195.i.i.preheader, %.lr.ph195.i.i.prol
  %.3194.i.i.prol = phi ptr [ %i.hnj, %.lr.ph195.i.i.prol ], [ %.3194.i.i.ph, %.lr.ph195.i.i.preheader ] ; 2 uses
  %.340193.i.i.prol = phi ptr [ %i.hnk, %.lr.ph195.i.i.prol ], [ %.340193.i.i.ph, %.lr.ph195.i.i.preheader ] ; 2 uses
  %.344192.i.i.prol = phi i32 [ %i.hnl, %.lr.ph195.i.i.prol ], [ %.344192.i.i.ph, %.lr.ph195.i.i.preheader ]
  %prol.iter12302 = phi i32 [ %prol.iter12302.next, %.lr.ph195.i.i.prol ], [ 0, %.lr.ph195.i.i.preheader ]
  %i.hnh = load float, ptr %.3194.i.i.prol, align 4, !tbaa !59
  %i.hni = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hnh, float %i.hfo)
  store float %i.hni, ptr %.340193.i.i.prol, align 4, !tbaa !59
  %i.hnj = getelementptr inbounds nuw i8, ptr %.3194.i.i.prol, i64 4 ; 2 uses
  %i.hnk = getelementptr inbounds nuw i8, ptr %.340193.i.i.prol, i64 4 ; 2 uses
  %i.hnl = add nuw nsw i32 %.344192.i.i.prol, 1   ; 2 uses
  %prol.iter12302.next = add i32 %prol.iter12302, 1 ; 2 uses
  %prol.iter12302.cmp.not = icmp eq i32 %prol.iter12302.next, %xtraiter12300
  br i1 %prol.iter12302.cmp.not, label %.lr.ph195.i.i.prol.loopexit, label %.lr.ph195.i.i.prol, !llvm.loop !347

.lr.ph195.i.i.prol.loopexit:                      ; preds = %.lr.ph195.i.i.prol, %.lr.ph195.i.i.preheader
  %.3194.i.i.unr = phi ptr [ %.3194.i.i.ph, %.lr.ph195.i.i.preheader ], [ %i.hnj, %.lr.ph195.i.i.prol ]
  %.340193.i.i.unr = phi ptr [ %.340193.i.i.ph, %.lr.ph195.i.i.preheader ], [ %i.hnk, %.lr.ph195.i.i.prol ]
  %.344192.i.i.unr = phi i32 [ %.344192.i.i.ph, %.lr.ph195.i.i.preheader ], [ %i.hnl, %.lr.ph195.i.i.prol ]
  %i.hnm = sub i32 %.344192.i.i.ph, %i.gvp
  %i.hnn = icmp ugt i32 %i.hnm, -4
  br i1 %i.hnn, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph195.i.i

.lr.ph188.i.i:                                    ; preds = %.preheader171.i.i, %.lr.ph188.i.i
  %.2187.i.i = phi ptr [ %i.hpt, %.lr.ph188.i.i ], [ %.1.lcssa.i35.i1289, %.preheader171.i.i ] ; 2 uses
  %.239186.i.i = phi ptr [ %i.hpu, %.lr.ph188.i.i ], [ %.138.lcssa.i.i1288, %.preheader171.i.i ] ; 2 uses
  %.243185.i.i = phi i32 [ %i.hpv, %.lr.ph188.i.i ], [ %.142.lcssa.i.i1287, %.preheader171.i.i ]
  %i.hno = load <4 x float>, ptr %.2187.i.i, align 1, !tbaa !60
  %i.hnp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hno, <4 x float> splat (float f0x00800000))
  %i.hnq = bitcast <4 x float> %i.hnp to <4 x i32> ; 2 uses
  %i.hnr = lshr <4 x i32> %i.hnq, splat (i32 23)
  %i.hns = and <4 x i32> %i.hnq, splat (i32 -2139095041)
  %i.hnt = or disjoint <4 x i32> %i.hns, splat (i32 1056964608)
  %i.hnu = bitcast <4 x i32> %i.hnt to <4 x float> ; 3 uses
  %i.hnv = add nsw <4 x i32> %i.hnr, splat (i32 -127)
  %i.hnw = sitofp fast <4 x i32> %i.hnv to <4 x float> ; 2 uses
  %i.hnx = fadd fast <4 x float> %i.hnw, splat (float 1.000000e+00)
  %i.hny = fcmp fast olt <4 x float> %i.hnu, splat (float f0x3F3504F3) ; 2 uses
  %i.hnz = select <4 x i1> %i.hny, <4 x float> %i.hnu, <4 x float> zeroinitializer
  %i.hoa = fadd fast <4 x float> %i.hnu, splat (float -1.000000e+00)
  %i.hob = select fast <4 x i1> %i.hny, <4 x float> %i.hnw, <4 x float> %i.hnx ; 2 uses
  %i.hoc = fadd fast <4 x float> %i.hoa, %i.hnz   ; 12 uses
  %i.hod = fmul fast <4 x float> %i.hoc, %i.hoc   ; 2 uses
  %i.hoe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hoc, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.hof = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hoe, <4 x float> nofpclass(nan inf) %i.hoc, <4 x float> splat (float f0x3DEF251A))
  %i.hog = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hof, <4 x float> nofpclass(nan inf) %i.hoc, <4 x float> splat (float f0xBDFE5D4F))
  %i.hoh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hog, <4 x float> nofpclass(nan inf) %i.hoc, <4 x float> splat (float f0x3E11E9BF))
  %i.hoi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hoh, <4 x float> nofpclass(nan inf) %i.hoc, <4 x float> splat (float f0xBE2AAE50))
  %i.hoj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hoi, <4 x float> nofpclass(nan inf) %i.hoc, <4 x float> splat (float f0x3E4CCEAC))
  %i.hok = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hoj, <4 x float> nofpclass(nan inf) %i.hoc, <4 x float> splat (float f0xBE7FFFFC))
  %i.hol = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hok, <4 x float> nofpclass(nan inf) %i.hoc, <4 x float> splat (float f0x3EAAAAAA))
  %i.hom = fmul fast <4 x float> %i.hod, %i.hoc
  %i.hon = fmul fast <4 x float> %i.hom, %i.hol
  %i.hoo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hob, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.hon)
  %i.hop = fneg fast <4 x float> %i.hod
  %i.hoq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.hop, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.hoo)
  %i.hor = fadd fast <4 x float> %i.hoq, %i.hoc
  %i.hos = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hob, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.hor)
  %i.hot = fmul fast <4 x float> %i.hos, %i.hgd
  %i.hou = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hot, <4 x float> splat (float f0x42B0C0A5))
  %i.hov = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hou, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.how = fmul fast <4 x float> %i.hov, splat (float f0x3FB8AA3B)
  %i.hox = fadd fast <4 x float> %i.how, splat (float 5.000000e-01) ; 2 uses
  %i.hoy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hox)
  %i.hoz = sitofp fast <4 x i32> %i.hoy to <4 x float> ; 2 uses
  %i.hpa = fcmp fast olt <4 x float> %i.hox, %i.hoz
  %i.hpb = select <4 x i1> %i.hpa, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hpc = fsub fast <4 x float> %i.hoz, %i.hpb   ; 2 uses
  %i.hpd = fneg fast <4 x float> %i.hpc           ; 2 uses
  %i.hpe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.hpd, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.hov)
  %i.hpf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.hpd, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.hpe) ; 8 uses
  %i.hpg = fmul fast <4 x float> %i.hpf, %i.hpf
  %i.hph = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hpf, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.hpi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hph, <4 x float> nofpclass(nan inf) %i.hpf, <4 x float> splat (float f0x3C088908))
  %i.hpj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hpi, <4 x float> nofpclass(nan inf) %i.hpf, <4 x float> splat (float f0x3D2AA9C1))
  %i.hpk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hpj, <4 x float> nofpclass(nan inf) %i.hpf, <4 x float> splat (float f0x3E2AAAAA))
  %i.hpl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hpk, <4 x float> nofpclass(nan inf) %i.hpf, <4 x float> splat (float 5.000000e-01))
  %i.hpm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hpl, <4 x float> nofpclass(nan inf) %i.hpg, <4 x float> nofpclass(nan inf) %i.hpf)
  %i.hpn = fadd fast <4 x float> %i.hpm, splat (float 1.000000e+00)
  %i.hpo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hpc)
  %i.hpp = shl <4 x i32> %i.hpo, splat (i32 23)
  %i.hpq = add <4 x i32> %i.hpp, splat (i32 1065353216)
  %i.hpr = bitcast <4 x i32> %i.hpq to <4 x float>
  %i.hps = fmul fast <4 x float> %i.hpn, %i.hpr
  store <4 x float> %i.hps, ptr %.239186.i.i, align 1, !tbaa !60
  %i.hpt = getelementptr inbounds nuw i8, ptr %.2187.i.i, i64 16 ; 2 uses
  %i.hpu = getelementptr inbounds nuw i8, ptr %.239186.i.i, i64 16 ; 2 uses
  %i.hpv = add nuw nsw i32 %.243185.i.i, 4        ; 3 uses
  %i.hpw = or disjoint i32 %i.hpv, 3
  %i.hpx = icmp slt i32 %i.hpw, %i.gvp
  br i1 %i.hpx, label %.lr.ph188.i.i, label %.preheader.i36.i1290, !llvm.loop !348

.lr.ph195.i.i:                                    ; preds = %.lr.ph195.i.i.prol.loopexit, %.lr.ph195.i.i
  %.3194.i.i = phi ptr [ %i.hqm, %.lr.ph195.i.i ], [ %.3194.i.i.unr, %.lr.ph195.i.i.prol.loopexit ] ; 5 uses
  %.340193.i.i = phi ptr [ %i.hqn, %.lr.ph195.i.i ], [ %.340193.i.i.unr, %.lr.ph195.i.i.prol.loopexit ] ; 5 uses
  %.344192.i.i = phi i32 [ %i.hqo, %.lr.ph195.i.i ], [ %.344192.i.i.unr, %.lr.ph195.i.i.prol.loopexit ]
  %i.hpy = load float, ptr %.3194.i.i, align 4, !tbaa !59
  %i.hpz = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hpy, float %i.hfo)
  store float %i.hpz, ptr %.340193.i.i, align 4, !tbaa !59
  %i.hqa = getelementptr inbounds nuw i8, ptr %.3194.i.i, i64 4
  %i.hqb = getelementptr inbounds nuw i8, ptr %.340193.i.i, i64 4
  %i.hqc = load float, ptr %i.hqa, align 4, !tbaa !59
  %i.hqd = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hqc, float %i.hfo)
  store float %i.hqd, ptr %i.hqb, align 4, !tbaa !59
  %i.hqe = getelementptr inbounds nuw i8, ptr %.3194.i.i, i64 8
  %i.hqf = getelementptr inbounds nuw i8, ptr %.340193.i.i, i64 8
  %i.hqg = load float, ptr %i.hqe, align 4, !tbaa !59
  %i.hqh = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hqg, float %i.hfo)
  store float %i.hqh, ptr %i.hqf, align 4, !tbaa !59
  %i.hqi = getelementptr inbounds nuw i8, ptr %.3194.i.i, i64 12
  %i.hqj = getelementptr inbounds nuw i8, ptr %.340193.i.i, i64 12
  %i.hqk = load float, ptr %i.hqi, align 4, !tbaa !59
  %i.hql = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hqk, float %i.hfo)
  store float %i.hql, ptr %i.hqj, align 4, !tbaa !59
  %i.hqm = getelementptr inbounds nuw i8, ptr %.3194.i.i, i64 16
  %i.hqn = getelementptr inbounds nuw i8, ptr %.340193.i.i, i64 16
  %i.hqo = add nuw nsw i32 %.344192.i.i, 4        ; 2 uses
  %exitcond.not.i38.i1294.3 = icmp eq i32 %i.hqo, %i.gvp
  br i1 %exitcond.not.i38.i1294.3, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph195.i.i, !llvm.loop !349

bb.fr:                                            ; preds = %bb.fk
  %i.hqp = icmp eq i32 %3, 1
  br i1 %i.hqp, label %bb.fs, label %bb.gb

bb.fs:                                            ; preds = %bb.fr
  %i.hqq = load float, ptr %0, align 4, !tbaa !59 ; 15 uses
  %i.hqr = icmp eq i32 %.sroa.speculated.i1233, 4
  br i1 %i.hqr, label %.thread170.i71.i, label %bb.ft

.thread170.i71.i:                                 ; preds = %bb.fs
  %i.hqs = load <4 x float>, ptr %0, align 4, !tbaa !60 ; 2 uses
  %i.hqt = shufflevector <4 x float> %i.hqs, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.fw

bb.ft:                                            ; preds = %bb.fs
  %i.hqu = insertelement <4 x float> poison, float %i.hqq, i64 0 ; 2 uses
  %i.hqv = shufflevector <4 x float> %i.hqu, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.hqw = icmp eq i32 %.sroa.speculated.i1233, 8
  br i1 %i.hqw, label %.thread169.i70.i, label %bb.fu

.thread169.i70.i:                                 ; preds = %bb.ft
  %i.hqx = load <8 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.fw

bb.fu:                                            ; preds = %bb.ft
  %i.hqy = shufflevector <4 x float> %i.hqu, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.hqz = icmp eq i32 %.sroa.speculated.i1233, 16
  br i1 %i.hqz, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.hra = load <16 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.fx

bb.fw:                                            ; preds = %bb.fu, %.thread169.i70.i, %.thread170.i71.i
  %i.hrb = phi <8 x float> [ %i.hqx, %.thread169.i70.i ], [ %i.hqy, %bb.fu ], [ %i.hqt, %.thread170.i71.i ] ; 2 uses
  %i.hrc = phi <4 x float> [ %i.hqv, %.thread169.i70.i ], [ %i.hqv, %bb.fu ], [ %i.hqs, %.thread170.i71.i ]
  %i.hrd = shufflevector <8 x float> %i.hrb, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.hre = phi <8 x float> [ %i.hqy, %bb.fv ], [ %i.hrb, %bb.fw ]
  %i.hrf = phi <4 x float> [ %i.hqv, %bb.fv ], [ %i.hrc, %bb.fw ]
  %i.hrg = phi fast <16 x float> [ %i.hra, %bb.fv ], [ %i.hrd, %bb.fw ]
  %i.hrh = icmp sgt i32 %i.gvp, 15
  br i1 %i.hrh, label %.lr.ph.i65.i1283, label %.preheader172.i40.i

.lr.ph.i65.i1283:                                 ; preds = %bb.fx
  %i.hri = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.hrg, <16 x float> splat (float f0x00800000), i32 4)
  %i.hrj = bitcast <16 x float> %i.hri to <16 x i32> ; 2 uses
  %i.hrk = lshr <16 x i32> %i.hrj, splat (i32 23)
  %i.hrl = and <16 x i32> %i.hrj, splat (i32 -2139095041)
  %i.hrm = or disjoint <16 x i32> %i.hrl, splat (i32 1056964608)
  %i.hrn = bitcast <16 x i32> %i.hrm to <16 x float> ; 3 uses
  %i.hro = add nsw <16 x i32> %i.hrk, splat (i32 -127)
  %i.hrp = sitofp fast <16 x i32> %i.hro to <16 x float> ; 2 uses
  %i.hrq = fadd fast <16 x float> %i.hrp, splat (float 1.000000e+00)
  %i.hrr = fcmp fast olt <16 x float> %i.hrn, splat (float f0x3F3504F3) ; 2 uses
  %i.hrs = fadd fast <16 x float> %i.hrn, splat (float -1.000000e+00)
end_hunk_0
begin_hunk_1_@_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii:bb.a
  %.0.lcssa.i43.i1274 = phi ptr [ %1, %bb.fx ], [ %i.hus, %.preheader172.loopexit.i69.i ] ; 2 uses
  %i.hsn = or disjoint i32 %.041.lcssa.i41.i1272, 7
  %i.hso = icmp slt i32 %i.hsn, %i.gvp
  br i1 %i.hso, label %.lr.ph181.i61.i, label %.preheader171.i44.i

.lr.ph181.i61.i:                                  ; preds = %.preheader172.i40.i
  %i.hsp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hre, <8 x float> splat (float f0x00800000))
  %i.hsq = bitcast <8 x float> %i.hsp to <8 x i32> ; 2 uses
  %i.hsr = lshr <8 x i32> %i.hsq, splat (i32 23)
  %i.hss = and <8 x i32> %i.hsq, splat (i32 -2139095041)
  %i.hst = or disjoint <8 x i32> %i.hss, splat (i32 1056964608)
  %i.hsu = bitcast <8 x i32> %i.hst to <8 x float> ; 3 uses
  %i.hsv = add nsw <8 x i32> %i.hsr, splat (i32 -127)
  %i.hsw = sitofp fast <8 x i32> %i.hsv to <8 x float> ; 2 uses
  %i.hsx = fadd fast <8 x float> %i.hsw, splat (float 1.000000e+00)
  %i.hsy = fcmp fast olt <8 x float> %i.hsu, splat (float f0x3F3504F3) ; 2 uses
  %i.hsz = select <8 x i1> %i.hsy, <8 x float> %i.hsu, <8 x float> zeroinitializer
  %i.hta = fadd fast <8 x float> %i.hsu, splat (float -1.000000e+00)
  %i.htb = select fast <8 x i1> %i.hsy, <8 x float> %i.hsw, <8 x float> %i.hsx ; 2 uses
  %i.htc = fadd fast <8 x float> %i.hta, %i.hsz   ; 12 uses
  %i.htd = fmul fast <8 x float> %i.htc, %i.htc   ; 2 uses
  %i.hte = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.htc, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.htf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hte, <8 x float> nofpclass(nan inf) %i.htc, <8 x float> splat (float f0x3DEF251A))
  %i.htg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.htf, <8 x float> nofpclass(nan inf) %i.htc, <8 x float> splat (float f0xBDFE5D4F))
  %i.hth = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.htg, <8 x float> nofpclass(nan inf) %i.htc, <8 x float> splat (float f0x3E11E9BF))
  %i.hti = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hth, <8 x float> nofpclass(nan inf) %i.htc, <8 x float> splat (float f0xBE2AAE50))
  %i.htj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hti, <8 x float> nofpclass(nan inf) %i.htc, <8 x float> splat (float f0x3E4CCEAC))
  %i.htk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.htj, <8 x float> nofpclass(nan inf) %i.htc, <8 x float> splat (float f0xBE7FFFFC))
  %i.htl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.htk, <8 x float> nofpclass(nan inf) %i.htc, <8 x float> splat (float f0x3EAAAAAA))
  %i.htm = fmul fast <8 x float> %i.htd, %i.htc
  %i.htn = fmul fast <8 x float> %i.htm, %i.htl
  %i.hto = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.htb, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.htn)
  %i.htp = fneg fast <8 x float> %i.htd
  %i.htq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.htp, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.hto)
  %i.htr = fadd fast <8 x float> %i.htq, %i.htc
  %i.hts = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.htb, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.htr)
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fy, %.lr.ph.i65.i1283
  %.0175.i66.i = phi ptr [ %1, %.lr.ph.i65.i1283 ], [ %i.hus, %bb.fy ] ; 2 uses
  %.037174.i67.i = phi ptr [ %2, %.lr.ph.i65.i1283 ], [ %i.hut, %bb.fy ] ; 2 uses
  %.041173.i68.i = phi i32 [ 0, %.lr.ph.i65.i1283 ], [ %i.huu, %bb.fy ]
  %i.htt = load <16 x float>, ptr %.0175.i66.i, align 1, !tbaa !60
  %i.htu = fmul fast <16 x float> %i.htt, %i.hsl
  %i.htv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.htu, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.htw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.htv, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.htx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.htw, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.hty = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.htx, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.htz = fcmp fast ogt <16 x float> %i.hty, %i.htx
  %i.hua = fadd fast <16 x float> %i.hty, splat (float -1.000000e+00)
  %i.hub = select fast <16 x i1> %i.htz, <16 x float> %i.hua, <16 x float> %i.hty ; 2 uses
  %i.huc = fneg fast <16 x float> %i.hub          ; 2 uses
  %i.hud = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.huc, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.htw)
  %i.hue = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.huc, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.hud) ; 8 uses
  %i.huf = fmul fast <16 x float> %i.hue, %i.hue
  %i.hug = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hue, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.huh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hug, <16 x float> nofpclass(nan inf) %i.hue, <16 x float> splat (float f0x3C088908))
  %i.hui = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.huh, <16 x float> nofpclass(nan inf) %i.hue, <16 x float> splat (float f0x3D2AA9C1))
  %i.huj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hui, <16 x float> nofpclass(nan inf) %i.hue, <16 x float> splat (float f0x3E2AAAAA))
  %i.huk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.huj, <16 x float> nofpclass(nan inf) %i.hue, <16 x float> splat (float 5.000000e-01))
  %i.hul = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.huk, <16 x float> nofpclass(nan inf) %i.huf, <16 x float> nofpclass(nan inf) %i.hue)
  %i.hum = fadd fast <16 x float> %i.hul, splat (float 1.000000e+00)
  %i.hun = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.hub, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.huo = shl <16 x i32> %i.hun, splat (i32 23)
  %i.hup = add <16 x i32> %i.huo, splat (i32 1065353216)
  %i.huq = bitcast <16 x i32> %i.hup to <16 x float>
  %i.hur = fmul fast <16 x float> %i.hum, %i.huq
  store <16 x float> %i.hur, ptr %.037174.i67.i, align 1, !tbaa !60
  %i.hus = getelementptr inbounds nuw i8, ptr %.0175.i66.i, i64 64 ; 2 uses
  %i.hut = getelementptr inbounds nuw i8, ptr %.037174.i67.i, i64 64 ; 2 uses
  %i.huu = add nuw nsw i32 %.041173.i68.i, 16     ; 2 uses
  %i.huv = or disjoint i32 %i.huu, 15
  %i.huw = icmp slt i32 %i.huv, %i.gvp
  br i1 %i.huw, label %bb.fy, label %.preheader172.loopexit.i69.i, !llvm.loop !350

.preheader171.i44.i:                              ; preds = %bb.fz, %.preheader172.i40.i
  %.142.lcssa.i45.i1275 = phi i32 [ %.041.lcssa.i41.i1272, %.preheader172.i40.i ], [ %i.hxe, %bb.fz ] ; 3 uses
  %.138.lcssa.i46.i1276 = phi ptr [ %.037.lcssa.i42.i1273, %.preheader172.i40.i ], [ %i.hxd, %bb.fz ] ; 2 uses
  %.1.lcssa.i47.i1277 = phi ptr [ %.0.lcssa.i43.i1274, %.preheader172.i40.i ], [ %i.hxc, %bb.fz ] ; 2 uses
  %i.hux = or disjoint i32 %.142.lcssa.i45.i1275, 3
  %i.huy = icmp slt i32 %i.hux, %i.gvp
  br i1 %i.huy, label %.lr.ph188.i57.i, label %.preheader.i48.i1278

.lr.ph188.i57.i:                                  ; preds = %.preheader171.i44.i
  %i.huz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hrf, <4 x float> splat (float f0x00800000))
  %i.hva = bitcast <4 x float> %i.huz to <4 x i32> ; 2 uses
  %i.hvb = lshr <4 x i32> %i.hva, splat (i32 23)
  %i.hvc = and <4 x i32> %i.hva, splat (i32 -2139095041)
  %i.hvd = or disjoint <4 x i32> %i.hvc, splat (i32 1056964608)
  %i.hve = bitcast <4 x i32> %i.hvd to <4 x float> ; 3 uses
  %i.hvf = add nsw <4 x i32> %i.hvb, splat (i32 -127)
  %i.hvg = sitofp fast <4 x i32> %i.hvf to <4 x float> ; 2 uses
  %i.hvh = fadd fast <4 x float> %i.hvg, splat (float 1.000000e+00)
  %i.hvi = fcmp fast olt <4 x float> %i.hve, splat (float f0x3F3504F3) ; 2 uses
  %i.hvj = select <4 x i1> %i.hvi, <4 x float> %i.hve, <4 x float> zeroinitializer
  %i.hvk = fadd fast <4 x float> %i.hve, splat (float -1.000000e+00)
  %i.hvl = select fast <4 x i1> %i.hvi, <4 x float> %i.hvg, <4 x float> %i.hvh ; 2 uses
  %i.hvm = fadd fast <4 x float> %i.hvk, %i.hvj   ; 12 uses
  %i.hvn = fmul fast <4 x float> %i.hvm, %i.hvm   ; 2 uses
  %i.hvo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hvm, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.hvp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hvo, <4 x float> nofpclass(nan inf) %i.hvm, <4 x float> splat (float f0x3DEF251A))
  %i.hvq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hvp, <4 x float> nofpclass(nan inf) %i.hvm, <4 x float> splat (float f0xBDFE5D4F))
  %i.hvr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hvq, <4 x float> nofpclass(nan inf) %i.hvm, <4 x float> splat (float f0x3E11E9BF))
  %i.hvs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hvr, <4 x float> nofpclass(nan inf) %i.hvm, <4 x float> splat (float f0xBE2AAE50))
  %i.hvt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hvs, <4 x float> nofpclass(nan inf) %i.hvm, <4 x float> splat (float f0x3E4CCEAC))
  %i.hvu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hvt, <4 x float> nofpclass(nan inf) %i.hvm, <4 x float> splat (float f0xBE7FFFFC))
  %i.hvv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hvu, <4 x float> nofpclass(nan inf) %i.hvm, <4 x float> splat (float f0x3EAAAAAA))
  %i.hvw = fmul fast <4 x float> %i.hvn, %i.hvm
  %i.hvx = fmul fast <4 x float> %i.hvw, %i.hvv
  %i.hvy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hvl, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.hvx)
  %i.hvz = fneg fast <4 x float> %i.hvn
  %i.hwa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.hvz, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.hvy)
  %i.hwb = fadd fast <4 x float> %i.hwa, %i.hvm
  %i.hwc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hvl, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.hwb)
  br label %bb.ga

bb.fz:                                            ; preds = %bb.fz, %.lr.ph181.i61.i
  %.1180.i62.i = phi ptr [ %.0.lcssa.i43.i1274, %.lr.ph181.i61.i ], [ %i.hxc, %bb.fz ] ; 2 uses
  %.138179.i63.i = phi ptr [ %.037.lcssa.i42.i1273, %.lr.ph181.i61.i ], [ %i.hxd, %bb.fz ] ; 2 uses
  %.142178.i64.i = phi i32 [ %.041.lcssa.i41.i1272, %.lr.ph181.i61.i ], [ %i.hxe, %bb.fz ]
  %i.hwd = load <8 x float>, ptr %.1180.i62.i, align 1, !tbaa !60
  %i.hwe = fmul fast <8 x float> %i.hwd, %i.hts
  %i.hwf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hwe, <8 x float> splat (float f0x42B0C0A5))
  %i.hwg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hwf, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hwh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hwg, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.hwi = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hwh, i32 1) ; 2 uses
  %i.hwj = fcmp fast ogt <8 x float> %i.hwi, %i.hwh
  %i.hwk = select <8 x i1> %i.hwj, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.hwl = fsub fast <8 x float> %i.hwi, %i.hwk   ; 2 uses
  %i.hwm = fneg fast <8 x float> %i.hwl           ; 2 uses
  %i.hwn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hwm, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.hwg)
  %i.hwo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hwm, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.hwn) ; 8 uses
  %i.hwp = fmul fast <8 x float> %i.hwo, %i.hwo
  %i.hwq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hwo, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.hwr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hwq, <8 x float> nofpclass(nan inf) %i.hwo, <8 x float> splat (float f0x3C088908))
  %i.hws = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hwr, <8 x float> nofpclass(nan inf) %i.hwo, <8 x float> splat (float f0x3D2AA9C1))
  %i.hwt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hws, <8 x float> nofpclass(nan inf) %i.hwo, <8 x float> splat (float f0x3E2AAAAA))
  %i.hwu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hwt, <8 x float> nofpclass(nan inf) %i.hwo, <8 x float> splat (float 5.000000e-01))
  %i.hwv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hwu, <8 x float> nofpclass(nan inf) %i.hwp, <8 x float> nofpclass(nan inf) %i.hwo)
  %i.hww = fadd fast <8 x float> %i.hwv, splat (float 1.000000e+00)
  %i.hwx = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hwl)
  %i.hwy = shl <8 x i32> %i.hwx, splat (i32 23)
  %i.hwz = add <8 x i32> %i.hwy, splat (i32 1065353216)
  %i.hxa = bitcast <8 x i32> %i.hwz to <8 x float>
  %i.hxb = fmul fast <8 x float> %i.hww, %i.hxa
  store <8 x float> %i.hxb, ptr %.138179.i63.i, align 1, !tbaa !60
  %i.hxc = getelementptr inbounds nuw i8, ptr %.1180.i62.i, i64 32 ; 2 uses
  %i.hxd = getelementptr inbounds nuw i8, ptr %.138179.i63.i, i64 32 ; 2 uses
  %i.hxe = add nuw nsw i32 %.142178.i64.i, 8      ; 3 uses
  %i.hxf = or disjoint i32 %i.hxe, 7
  %i.hxg = icmp slt i32 %i.hxf, %i.gvp
  br i1 %i.hxg, label %bb.fz, label %.preheader171.i44.i, !llvm.loop !351

.preheader.i48.i1278:                             ; preds = %bb.ga, %.preheader171.i44.i
  %.243.lcssa.i49.i1279 = phi i32 [ %.142.lcssa.i45.i1275, %.preheader171.i44.i ], [ %i.iax, %bb.ga ] ; 5 uses
  %.239.lcssa.i50.i1280 = phi ptr [ %.138.lcssa.i46.i1276, %.preheader171.i44.i ], [ %i.iaw, %bb.ga ] ; 6 uses
  %.2.lcssa.i51.i1281 = phi ptr [ %.1.lcssa.i47.i1277, %.preheader171.i44.i ], [ %i.iav, %bb.ga ] ; 6 uses
  %i.hxh = icmp slt i32 %.243.lcssa.i49.i1279, %i.gvp
  br i1 %i.hxh, label %iter.check9462, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

iter.check9462:                                   ; preds = %.preheader.i48.i1278
  %.239.lcssa.i50.i12809446 = ptrtoaddr ptr %.239.lcssa.i50.i1280 to i64
  %.2.lcssa.i51.i12819445 = ptrtoaddr ptr %.2.lcssa.i51.i1281 to i64
  %i.hxi = xor i32 %.243.lcssa.i49.i1279, -1
  %i.hxj = add i32 %i.gvp, %i.hxi                 ; 3 uses
  %i.hxk = zext i32 %i.hxj to i64
  %i.hxl = add nuw nsw i64 %i.hxk, 1              ; 5 uses
  %min.iters.check9447 = icmp ult i32 %i.hxj, 3
  %i.hxm = sub i64 %.2.lcssa.i51.i12819445, %.239.lcssa.i50.i12809446
  %diff.check9449 = icmp ugt i64 %i.hxm, -64
  %or.cond10445 = select i1 %min.iters.check9447, i1 true, i1 %diff.check9449
  br i1 %or.cond10445, label %.lr.ph195.i52.i.preheader, label %vector.main.loop.iter.check9450

vector.main.loop.iter.check9450:                  ; preds = %iter.check9462
  %min.iters.check9451 = icmp ult i32 %i.hxj, 15
  br i1 %min.iters.check9451, label %vec.epilog.ph9466, label %vector.ph9452

vector.ph9452:                                    ; preds = %vector.main.loop.iter.check9450
  %i.hxn = and i64 %i.hxl, 12
  %n.vec9453 = and i64 %i.hxl, 8589934576         ; 5 uses
  %i.hxo = shl nuw nsw i64 %n.vec9453, 2          ; 2 uses
  %i.hxp = getelementptr i8, ptr %.2.lcssa.i51.i1281, i64 %i.hxo
  %i.hxq = getelementptr i8, ptr %.239.lcssa.i50.i1280, i64 %i.hxo
  %i.hxr = trunc i64 %n.vec9453 to i32
  %i.hxs = add i32 %.243.lcssa.i49.i1279, %i.hxr
  %i.hxt = insertelement <8 x float> poison, float %i.hqq, i64 0
  %i.hxu = shufflevector <8 x float> %i.hxt, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hxv = insertelement <4 x float> poison, float %i.hqq, i64 0
  %i.hxw = shufflevector <4 x float> %i.hxv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hxx = insertelement <2 x float> poison, float %i.hqq, i64 0
  %i.hxy = shufflevector <2 x float> %i.hxx, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body9454

vector.body9454:                                  ; preds = %vector.ph9452, %vector.body9454
  %index9455 = phi i64 [ 0, %vector.ph9452 ], [ %index.next9459, %vector.body9454 ] ; 2 uses
  %i.hxz = shl i64 %index9455, 2                  ; 2 uses
  %next.gep9456 = getelementptr i8, ptr %.2.lcssa.i51.i1281, i64 %i.hxz
  %next.gep9457 = getelementptr i8, ptr %.239.lcssa.i50.i1280, i64 %i.hxz
  %wide.load9458 = load <16 x float>, ptr %next.gep9456, align 4, !tbaa !59 ; 5 uses
  %i.hya = extractelement <16 x float> %wide.load9458, i64 0
  %i.hyb = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hqq, float %i.hya)
  %i.hyc = shufflevector <16 x float> %wide.load9458, <16 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %i.hyd = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.hxu, <8 x float> %i.hyc)
  %i.hye = shufflevector <16 x float> %wide.load9458, <16 x float> poison, <4 x i32> <i32 9, i32 10, i32 11, i32 12>
  %i.hyf = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.hxw, <4 x float> %i.hye)
  %i.hyg = extractelement <16 x float> %wide.load9458, i64 13
  %i.hyh = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hqq, float %i.hyg)
  %i.hyi = shufflevector <16 x float> %wide.load9458, <16 x float> poison, <2 x i32> <i32 14, i32 15>
  %i.hyj = tail call fast <2 x float> @llvm.pow.v2f32(<2 x float> %i.hxy, <2 x float> %i.hyi)
  %i.hyk = insertelement <16 x float> poison, float %i.hyb, i64 0
  %i.hyl = shufflevector <8 x float> %i.hyd, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hym = shufflevector <16 x float> %i.hyk, <16 x float> %i.hyl, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hyn = shufflevector <4 x float> %i.hyf, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hyo = shufflevector <16 x float> %i.hym, <16 x float> %i.hyn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.hyp = insertelement <16 x float> %i.hyo, float %i.hyh, i64 13
  %i.hyq = shufflevector <2 x float> %i.hyj, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hyr = shufflevector <16 x float> %i.hyp, <16 x float> %i.hyq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x float> %i.hyr, ptr %next.gep9457, align 4, !tbaa !59
  %index.next9459 = add nuw i64 %index9455, 16    ; 2 uses
  %i.hys = icmp eq i64 %index.next9459, %n.vec9453
  br i1 %i.hys, label %middle.block9460, label %vector.body9454, !llvm.loop !352

middle.block9460:                                 ; preds = %vector.body9454
  %cmp.n9461 = icmp eq i64 %i.hxl, %n.vec9453
  br i1 %cmp.n9461, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %vec.epilog.iter.check9463

vec.epilog.iter.check9463:                        ; preds = %middle.block9460
  %min.epilog.iters.check9465 = icmp eq i64 %i.hxn, 0
  br i1 %min.epilog.iters.check9465, label %.lr.ph195.i52.i.preheader, label %vec.epilog.ph9466, !prof !818

vec.epilog.ph9466:                                ; preds = %vector.main.loop.iter.check9450, %vec.epilog.iter.check9463
  %vec.epilog.resume.val9467 = phi i64 [ %n.vec9453, %vec.epilog.iter.check9463 ], [ 0, %vector.main.loop.iter.check9450 ]
  %n.vec9468 = and i64 %i.hxl, 8589934588         ; 4 uses
  %i.hyt = shl nuw nsw i64 %n.vec9468, 2          ; 2 uses
  %i.hyu = getelementptr i8, ptr %.2.lcssa.i51.i1281, i64 %i.hyt
  %i.hyv = getelementptr i8, ptr %.239.lcssa.i50.i1280, i64 %i.hyt
  %i.hyw = trunc i64 %n.vec9468 to i32
  %i.hyx = add i32 %.243.lcssa.i49.i1279, %i.hyw
  br label %vec.epilog.vector.body9469

vec.epilog.vector.body9469:                       ; preds = %vec.epilog.vector.body9469, %vec.epilog.ph9466
  %index9470 = phi i64 [ %vec.epilog.resume.val9467, %vec.epilog.ph9466 ], [ %index.next9474, %vec.epilog.vector.body9469 ] ; 2 uses
  %i.hyy = shl i64 %index9470, 2                  ; 2 uses
  %next.gep9471 = getelementptr i8, ptr %.2.lcssa.i51.i1281, i64 %i.hyy
  %next.gep9472 = getelementptr i8, ptr %.239.lcssa.i50.i1280, i64 %i.hyy
  %wide.load9473 = load <4 x float>, ptr %next.gep9471, align 4, !tbaa !59 ; 4 uses
  %i.hyz = extractelement <4 x float> %wide.load9473, i64 0
  %i.hza = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hqq, float %i.hyz)
  %i.hzb = extractelement <4 x float> %wide.load9473, i64 1
  %i.hzc = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hqq, float %i.hzb)
  %i.hzd = extractelement <4 x float> %wide.load9473, i64 2
  %i.hze = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hqq, float %i.hzd)
  %i.hzf = extractelement <4 x float> %wide.load9473, i64 3
  %i.hzg = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hqq, float %i.hzf)
  %i.hzh = insertelement <4 x float> poison, float %i.hza, i64 0
  %i.hzi = insertelement <4 x float> %i.hzh, float %i.hzc, i64 1
  %i.hzj = insertelement <4 x float> %i.hzi, float %i.hze, i64 2
  %i.hzk = insertelement <4 x float> %i.hzj, float %i.hzg, i64 3
  store <4 x float> %i.hzk, ptr %next.gep9472, align 4, !tbaa !59
  %index.next9474 = add nuw i64 %index9470, 4     ; 2 uses
  %i.hzl = icmp eq i64 %index.next9474, %n.vec9468
  br i1 %i.hzl, label %vec.epilog.middle.block9475, label %vec.epilog.vector.body9469, !llvm.loop !353

vec.epilog.middle.block9475:                      ; preds = %vec.epilog.vector.body9469
  %cmp.n9476 = icmp eq i64 %i.hxl, %n.vec9468
  br i1 %cmp.n9476, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph195.i52.i.preheader

.lr.ph195.i52.i.preheader:                        ; preds = %iter.check9462, %vec.epilog.iter.check9463, %vec.epilog.middle.block9475
  %.3194.i53.i.ph = phi ptr [ %.2.lcssa.i51.i1281, %iter.check9462 ], [ %i.hxp, %vec.epilog.iter.check9463 ], [ %i.hyu, %vec.epilog.middle.block9475 ] ; 2 uses
  %.340193.i54.i.ph = phi ptr [ %.239.lcssa.i50.i1280, %iter.check9462 ], [ %i.hxq, %vec.epilog.iter.check9463 ], [ %i.hyv, %vec.epilog.middle.block9475 ] ; 2 uses
  %.344192.i55.i.ph = phi i32 [ %.243.lcssa.i49.i1279, %iter.check9462 ], [ %i.hxs, %vec.epilog.iter.check9463 ], [ %i.hyx, %vec.epilog.middle.block9475 ] ; 4 uses
  %i.hzm = sub i32 %i.gvp, %.344192.i55.i.ph
  %xtraiter12297 = and i32 %i.hzm, 3              ; 2 uses
  %lcmp.mod12298.not = icmp eq i32 %xtraiter12297, 0
  br i1 %lcmp.mod12298.not, label %.lr.ph195.i52.i.prol.loopexit, label %.lr.ph195.i52.i.prol

.lr.ph195.i52.i.prol:                             ; preds = %.lr.ph195.i52.i.preheader, %.lr.ph195.i52.i.prol
  %.3194.i53.i.prol = phi ptr [ %i.hzp, %.lr.ph195.i52.i.prol ], [ %.3194.i53.i.ph, %.lr.ph195.i52.i.preheader ] ; 2 uses
  %.340193.i54.i.prol = phi ptr [ %i.hzq, %.lr.ph195.i52.i.prol ], [ %.340193.i54.i.ph, %.lr.ph195.i52.i.preheader ] ; 2 uses
  %.344192.i55.i.prol = phi i32 [ %i.hzr, %.lr.ph195.i52.i.prol ], [ %.344192.i55.i.ph, %.lr.ph195.i52.i.preheader ]
  %prol.iter12299 = phi i32 [ %prol.iter12299.next, %.lr.ph195.i52.i.prol ], [ 0, %.lr.ph195.i52.i.preheader ]
  %i.hzn = load float, ptr %.3194.i53.i.prol, align 4, !tbaa !59
  %i.hzo = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hqq, float %i.hzn)
  store float %i.hzo, ptr %.340193.i54.i.prol, align 4, !tbaa !59
  %i.hzp = getelementptr inbounds nuw i8, ptr %.3194.i53.i.prol, i64 4 ; 2 uses
  %i.hzq = getelementptr inbounds nuw i8, ptr %.340193.i54.i.prol, i64 4 ; 2 uses
  %i.hzr = add nuw nsw i32 %.344192.i55.i.prol, 1 ; 2 uses
  %prol.iter12299.next = add i32 %prol.iter12299, 1 ; 2 uses
  %prol.iter12299.cmp.not = icmp eq i32 %prol.iter12299.next, %xtraiter12297
  br i1 %prol.iter12299.cmp.not, label %.lr.ph195.i52.i.prol.loopexit, label %.lr.ph195.i52.i.prol, !llvm.loop !354

.lr.ph195.i52.i.prol.loopexit:                    ; preds = %.lr.ph195.i52.i.prol, %.lr.ph195.i52.i.preheader
  %.3194.i53.i.unr = phi ptr [ %.3194.i53.i.ph, %.lr.ph195.i52.i.preheader ], [ %i.hzp, %.lr.ph195.i52.i.prol ]
  %.340193.i54.i.unr = phi ptr [ %.340193.i54.i.ph, %.lr.ph195.i52.i.preheader ], [ %i.hzq, %.lr.ph195.i52.i.prol ]
  %.344192.i55.i.unr = phi i32 [ %.344192.i55.i.ph, %.lr.ph195.i52.i.preheader ], [ %i.hzr, %.lr.ph195.i52.i.prol ]
  %i.hzs = sub i32 %.344192.i55.i.ph, %i.gvp
  %i.hzt = icmp ugt i32 %i.hzs, -4
  br i1 %i.hzt, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph195.i52.i

bb.ga:                                            ; preds = %bb.ga, %.lr.ph188.i57.i
  %.2187.i58.i = phi ptr [ %.1.lcssa.i47.i1277, %.lr.ph188.i57.i ], [ %i.iav, %bb.ga ] ; 2 uses
  %.239186.i59.i = phi ptr [ %.138.lcssa.i46.i1276, %.lr.ph188.i57.i ], [ %i.iaw, %bb.ga ] ; 2 uses
  %.243185.i60.i = phi i32 [ %.142.lcssa.i45.i1275, %.lr.ph188.i57.i ], [ %i.iax, %bb.ga ]
  %i.hzu = load <4 x float>, ptr %.2187.i58.i, align 1, !tbaa !60
  %i.hzv = fmul fast <4 x float> %i.hzu, %i.hwc
  %i.hzw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hzv, <4 x float> splat (float f0x42B0C0A5))
  %i.hzx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hzw, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hzy = fmul fast <4 x float> %i.hzx, splat (float f0x3FB8AA3B)
  %i.hzz = fadd fast <4 x float> %i.hzy, splat (float 5.000000e-01) ; 2 uses
  %i.iaa = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hzz)
  %i.iab = sitofp fast <4 x i32> %i.iaa to <4 x float> ; 2 uses
  %i.iac = fcmp fast olt <4 x float> %i.hzz, %i.iab
  %i.iad = select <4 x i1> %i.iac, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.iae = fsub fast <4 x float> %i.iab, %i.iad   ; 2 uses
  %i.iaf = fneg fast <4 x float> %i.iae           ; 2 uses
  %i.iag = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.iaf, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.hzx)
  %i.iah = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.iaf, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.iag) ; 8 uses
  %i.iai = fmul fast <4 x float> %i.iah, %i.iah
  %i.iaj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iah, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.iak = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iaj, <4 x float> nofpclass(nan inf) %i.iah, <4 x float> splat (float f0x3C088908))
  %i.ial = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iak, <4 x float> nofpclass(nan inf) %i.iah, <4 x float> splat (float f0x3D2AA9C1))
  %i.iam = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ial, <4 x float> nofpclass(nan inf) %i.iah, <4 x float> splat (float f0x3E2AAAAA))
  %i.ian = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iam, <4 x float> nofpclass(nan inf) %i.iah, <4 x float> splat (float 5.000000e-01))
  %i.iao = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ian, <4 x float> nofpclass(nan inf) %i.iai, <4 x float> nofpclass(nan inf) %i.iah)
  %i.iap = fadd fast <4 x float> %i.iao, splat (float 1.000000e+00)
  %i.iaq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.iae)
  %i.iar = shl <4 x i32> %i.iaq, splat (i32 23)
  %i.ias = add <4 x i32> %i.iar, splat (i32 1065353216)
  %i.iat = bitcast <4 x i32> %i.ias to <4 x float>
  %i.iau = fmul fast <4 x float> %i.iap, %i.iat
  store <4 x float> %i.iau, ptr %.239186.i59.i, align 1, !tbaa !60
  %i.iav = getelementptr inbounds nuw i8, ptr %.2187.i58.i, i64 16 ; 2 uses
  %i.iaw = getelementptr inbounds nuw i8, ptr %.239186.i59.i, i64 16 ; 2 uses
  %i.iax = add nuw nsw i32 %.243185.i60.i, 4      ; 3 uses
  %i.iay = or disjoint i32 %i.iax, 3
  %i.iaz = icmp slt i32 %i.iay, %i.gvp
  br i1 %i.iaz, label %bb.ga, label %.preheader.i48.i1278, !llvm.loop !355

.lr.ph195.i52.i:                                  ; preds = %.lr.ph195.i52.i.prol.loopexit, %.lr.ph195.i52.i
  %.3194.i53.i = phi ptr [ %i.ibo, %.lr.ph195.i52.i ], [ %.3194.i53.i.unr, %.lr.ph195.i52.i.prol.loopexit ] ; 5 uses
  %.340193.i54.i = phi ptr [ %i.ibp, %.lr.ph195.i52.i ], [ %.340193.i54.i.unr, %.lr.ph195.i52.i.prol.loopexit ] ; 5 uses
  %.344192.i55.i = phi i32 [ %i.ibq, %.lr.ph195.i52.i ], [ %.344192.i55.i.unr, %.lr.ph195.i52.i.prol.loopexit ]
  %i.iba = load float, ptr %.3194.i53.i, align 4, !tbaa !59
  %i.ibb = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hqq, float %i.iba)
  store float %i.ibb, ptr %.340193.i54.i, align 4, !tbaa !59
  %i.ibc = getelementptr inbounds nuw i8, ptr %.3194.i53.i, i64 4
  %i.ibd = getelementptr inbounds nuw i8, ptr %.340193.i54.i, i64 4
  %i.ibe = load float, ptr %i.ibc, align 4, !tbaa !59
  %i.ibf = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hqq, float %i.ibe)
  store float %i.ibf, ptr %i.ibd, align 4, !tbaa !59
  %i.ibg = getelementptr inbounds nuw i8, ptr %.3194.i53.i, i64 8
  %i.ibh = getelementptr inbounds nuw i8, ptr %.340193.i54.i, i64 8
  %i.ibi = load float, ptr %i.ibg, align 4, !tbaa !59
  %i.ibj = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hqq, float %i.ibi)
  store float %i.ibj, ptr %i.ibh, align 4, !tbaa !59
  %i.ibk = getelementptr inbounds nuw i8, ptr %.3194.i53.i, i64 12
  %i.ibl = getelementptr inbounds nuw i8, ptr %.340193.i54.i, i64 12
  %i.ibm = load float, ptr %i.ibk, align 4, !tbaa !59
  %i.ibn = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hqq, float %i.ibm)
  store float %i.ibn, ptr %i.ibl, align 4, !tbaa !59
  %i.ibo = getelementptr inbounds nuw i8, ptr %.3194.i53.i, i64 16
  %i.ibp = getelementptr inbounds nuw i8, ptr %.340193.i54.i, i64 16
  %i.ibq = add nuw nsw i32 %.344192.i55.i, 4      ; 2 uses
  %exitcond.not.i56.i1282.3 = icmp eq i32 %i.ibq, %i.gvp
  br i1 %exitcond.not.i56.i1282.3, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph195.i52.i, !llvm.loop !356

bb.gb:                                            ; preds = %bb.fr, %bb.fh
  %i.ibr = icmp eq i32 %6, 1
  br i1 %i.ibr, label %bb.gc, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

bb.gc:                                            ; preds = %bb.gb
  %i.ibs = icmp eq i32 %3, %4
  br i1 %i.ibs, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.ibt = icmp eq i32 %.sroa.speculated.i1233, 16
  %i.ibu = icmp sgt i32 %.sroa.speculated95.i1232, 0
  %or.cond.i.i1256 = and i1 %i.ibu, %i.ibt
  br i1 %or.cond.i.i1256, label %.lr.ph.i74.i1270, label %.loopexit290.i.i

.lr.ph.i74.i1270:                                 ; preds = %bb.gd, %.lr.ph.i74.i1270
  %.0294.i.i = phi ptr [ %i.ieb, %.lr.ph.i74.i1270 ], [ %0, %bb.gd ] ; 2 uses
  %.067293.i.i = phi ptr [ %i.iec, %.lr.ph.i74.i1270 ], [ %1, %bb.gd ] ; 2 uses
  %.075292.i.i = phi ptr [ %i.ied, %.lr.ph.i74.i1270 ], [ %2, %bb.gd ] ; 2 uses
  %.086291.i.i = phi i32 [ %i.iee, %.lr.ph.i74.i1270 ], [ 0, %bb.gd ]
  %i.ibv = load <16 x float>, ptr %.0294.i.i, align 1, !tbaa !60
  %i.ibw = load float, ptr %.067293.i.i, align 4, !tbaa !59
  %i.ibx = insertelement <16 x float> poison, float %i.ibw, i64 0
  %i.iby = shufflevector <16 x float> %i.ibx, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ibz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ibv, <16 x float> splat (float f0x00800000), i32 4)
  %i.ica = bitcast <16 x float> %i.ibz to <16 x i32> ; 2 uses
  %i.icb = lshr <16 x i32> %i.ica, splat (i32 23)
  %i.icc = and <16 x i32> %i.ica, splat (i32 -2139095041)
  %i.icd = or disjoint <16 x i32> %i.icc, splat (i32 1056964608)
  %i.ice = bitcast <16 x i32> %i.icd to <16 x float> ; 3 uses
  %i.icf = add nsw <16 x i32> %i.icb, splat (i32 -127)
  %i.icg = sitofp fast <16 x i32> %i.icf to <16 x float> ; 2 uses
  %i.ich = fadd fast <16 x float> %i.icg, splat (float 1.000000e+00)
  %i.ici = fcmp fast olt <16 x float> %i.ice, splat (float f0x3F3504F3) ; 2 uses
  %i.icj = fadd fast <16 x float> %i.ice, splat (float -1.000000e+00)
  %i.ick = select fast <16 x i1> %i.ici, <16 x float> %i.icg, <16 x float> %i.ich ; 2 uses
  %i.icl = select fast <16 x i1> %i.ici, <16 x float> %i.ice, <16 x float> zeroinitializer
  %i.icm = fadd fast <16 x float> %i.icj, %i.icl  ; 12 uses
  %i.icn = fmul fast <16 x float> %i.icm, %i.icm  ; 2 uses
  %i.ico = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.icm, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.icp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ico, <16 x float> nofpclass(nan inf) %i.icm, <16 x float> splat (float f0x3DEF251A))
  %i.icq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.icp, <16 x float> nofpclass(nan inf) %i.icm, <16 x float> splat (float f0xBDFE5D4F))
  %i.icr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.icq, <16 x float> nofpclass(nan inf) %i.icm, <16 x float> splat (float f0x3E11E9BF))
  %i.ics = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.icr, <16 x float> nofpclass(nan inf) %i.icm, <16 x float> splat (float f0xBE2AAE50))
  %i.ict = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ics, <16 x float> nofpclass(nan inf) %i.icm, <16 x float> splat (float f0x3E4CCEAC))
  %i.icu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ict, <16 x float> nofpclass(nan inf) %i.icm, <16 x float> splat (float f0xBE7FFFFC))
  %i.icv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.icu, <16 x float> nofpclass(nan inf) %i.icm, <16 x float> splat (float f0x3EAAAAAA))
  %i.icw = fmul fast <16 x float> %i.icn, %i.icm
  %i.icx = fmul fast <16 x float> %i.icw, %i.icv
  %i.icy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ick, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.icx)
  %i.icz = fneg fast <16 x float> %i.icn
  %i.ida = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.icz, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.icy)
  %i.idb = fadd fast <16 x float> %i.ida, %i.icm
  %i.idc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ick, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.idb)
  %i.idd = fmul fast <16 x float> %i.idc, %i.iby
  %i.ide = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.idd, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.idf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ide, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.idg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.idf, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.idh = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.idg, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.idi = fcmp fast ogt <16 x float> %i.idh, %i.idg
  %i.idj = fadd fast <16 x float> %i.idh, splat (float -1.000000e+00)
  %i.idk = select fast <16 x i1> %i.idi, <16 x float> %i.idj, <16 x float> %i.idh ; 2 uses
  %i.idl = fneg fast <16 x float> %i.idk          ; 2 uses
  %i.idm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.idl, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.idf)
  %i.idn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.idl, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.idm) ; 8 uses
  %i.ido = fmul fast <16 x float> %i.idn, %i.idn
  %i.idp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.idn, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.idq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.idp, <16 x float> nofpclass(nan inf) %i.idn, <16 x float> splat (float f0x3C088908))
  %i.idr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.idq, <16 x float> nofpclass(nan inf) %i.idn, <16 x float> splat (float f0x3D2AA9C1))
  %i.ids = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.idr, <16 x float> nofpclass(nan inf) %i.idn, <16 x float> splat (float f0x3E2AAAAA))
  %i.idt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ids, <16 x float> nofpclass(nan inf) %i.idn, <16 x float> splat (float 5.000000e-01))
  %i.idu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.idt, <16 x float> nofpclass(nan inf) %i.ido, <16 x float> nofpclass(nan inf) %i.idn)
  %i.idv = fadd fast <16 x float> %i.idu, splat (float 1.000000e+00)
  %i.idw = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.idk, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.idx = shl <16 x i32> %i.idw, splat (i32 23)
  %i.idy = add <16 x i32> %i.idx, splat (i32 1065353216)
  %i.idz = bitcast <16 x i32> %i.idy to <16 x float>
  %i.iea = fmul fast <16 x float> %i.idv, %i.idz
  store <16 x float> %i.iea, ptr %.075292.i.i, align 1, !tbaa !60
  %i.ieb = getelementptr inbounds nuw i8, ptr %.0294.i.i, i64 64
  %i.iec = getelementptr inbounds nuw i8, ptr %.067293.i.i, i64 4
  %i.ied = getelementptr inbounds nuw i8, ptr %.075292.i.i, i64 64
  %i.iee = add nuw nsw i32 %.086291.i.i, 1        ; 2 uses
  %exitcond.not.i75.i1271 = icmp eq i32 %i.iee, %.sroa.speculated95.i1232
  br i1 %exitcond.not.i75.i1271, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph.i74.i1270, !llvm.loop !357

.loopexit290.i.i:                                 ; preds = %bb.gd
  switch i32 %.sroa.speculated.i1233, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit [
    i32 8, label %.preheader288.i.i
end_hunk_1
begin_hunk_2_@_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii:bb.a
  %.0.lcssa.i34.i1908 = phi ptr [ %0, %bb.ja ], [ %i.mtj, %.preheader172.loopexit.i.i1934 ] ; 2 uses
  %i.mre = or disjoint i32 %.041.lcssa.i.i1906, 7
  %i.mrf = icmp slt i32 %i.mre, %i.mfi
  br i1 %i.mrf, label %.lr.ph181.i.i1926, label %.preheader171.i.i1909

.lr.ph181.i.i1926:                                ; preds = %.preheader172.i.i1905
  %i.mrg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.mpv, <8 x float> splat (float f0x00800000))
  %i.mrh = bitcast <8 x float> %i.mrg to <8 x i32> ; 2 uses
  %i.mri = lshr <8 x i32> %i.mrh, splat (i32 23)
  %i.mrj = and <8 x i32> %i.mrh, splat (i32 -2139095041)
  %i.mrk = or disjoint <8 x i32> %i.mrj, splat (i32 1056964608)
  %i.mrl = bitcast <8 x i32> %i.mrk to <8 x float> ; 3 uses
  %i.mrm = add nsw <8 x i32> %i.mri, splat (i32 -127)
  %i.mrn = sitofp fast <8 x i32> %i.mrm to <8 x float> ; 2 uses
  %i.mro = fadd fast <8 x float> %i.mrn, splat (float 1.000000e+00)
  %i.mrp = fcmp fast olt <8 x float> %i.mrl, splat (float f0x3F3504F3) ; 2 uses
  %i.mrq = select <8 x i1> %i.mrp, <8 x float> %i.mrl, <8 x float> zeroinitializer
  %i.mrr = fadd fast <8 x float> %i.mrl, splat (float -1.000000e+00)
  %i.mrs = select fast <8 x i1> %i.mrp, <8 x float> %i.mrn, <8 x float> %i.mro ; 2 uses
  %i.mrt = fadd fast <8 x float> %i.mrr, %i.mrq   ; 12 uses
  %i.mru = fmul fast <8 x float> %i.mrt, %i.mrt   ; 2 uses
  %i.mrv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mrt, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.mrw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mrv, <8 x float> nofpclass(nan inf) %i.mrt, <8 x float> splat (float f0x3DEF251A))
  %i.mrx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mrw, <8 x float> nofpclass(nan inf) %i.mrt, <8 x float> splat (float f0xBDFE5D4F))
  %i.mry = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mrx, <8 x float> nofpclass(nan inf) %i.mrt, <8 x float> splat (float f0x3E11E9BF))
  %i.mrz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mry, <8 x float> nofpclass(nan inf) %i.mrt, <8 x float> splat (float f0xBE2AAE50))
  %i.msa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mrz, <8 x float> nofpclass(nan inf) %i.mrt, <8 x float> splat (float f0x3E4CCEAC))
  %i.msb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.msa, <8 x float> nofpclass(nan inf) %i.mrt, <8 x float> splat (float f0xBE7FFFFC))
  %i.msc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.msb, <8 x float> nofpclass(nan inf) %i.mrt, <8 x float> splat (float f0x3EAAAAAA))
  %i.msd = fmul fast <8 x float> %i.mru, %i.mrt
  %i.mse = fmul fast <8 x float> %i.msd, %i.msc
  %i.msf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mrs, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.mse)
  %i.msg = fneg fast <8 x float> %i.mru
  %i.msh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.msg, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.msf)
  %i.msi = fadd fast <8 x float> %i.msh, %i.mrt
  %i.msj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mrs, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.msi)
  br label %bb.jc

bb.jb:                                            ; preds = %bb.jb, %.lr.ph.i39.i1930
  %.0175.i.i1931 = phi ptr [ %0, %.lr.ph.i39.i1930 ], [ %i.mtj, %bb.jb ] ; 2 uses
  %.037174.i.i1932 = phi ptr [ %2, %.lr.ph.i39.i1930 ], [ %i.mtk, %bb.jb ] ; 2 uses
  %.041173.i.i1933 = phi i32 [ 0, %.lr.ph.i39.i1930 ], [ %i.mtl, %bb.jb ]
  %i.msk = load <16 x float>, ptr %.0175.i.i1931, align 1, !tbaa !60
  %i.msl = fmul fast <16 x float> %i.msk, %i.mrc
  %i.msm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.msl, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.msn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.msm, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.mso = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.msn, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.msp = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.mso, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.msq = fcmp fast ogt <16 x float> %i.msp, %i.mso
  %i.msr = fadd fast <16 x float> %i.msp, splat (float -1.000000e+00)
  %i.mss = select fast <16 x i1> %i.msq, <16 x float> %i.msr, <16 x float> %i.msp ; 2 uses
  %i.mst = fneg fast <16 x float> %i.mss          ; 2 uses
  %i.msu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.mst, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.msn)
  %i.msv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.mst, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.msu) ; 8 uses
  %i.msw = fmul fast <16 x float> %i.msv, %i.msv
  %i.msx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.msv, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.msy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.msx, <16 x float> nofpclass(nan inf) %i.msv, <16 x float> splat (float f0x3C088908))
  %i.msz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.msy, <16 x float> nofpclass(nan inf) %i.msv, <16 x float> splat (float f0x3D2AA9C1))
  %i.mta = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.msz, <16 x float> nofpclass(nan inf) %i.msv, <16 x float> splat (float f0x3E2AAAAA))
  %i.mtb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mta, <16 x float> nofpclass(nan inf) %i.msv, <16 x float> splat (float 5.000000e-01))
  %i.mtc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mtb, <16 x float> nofpclass(nan inf) %i.msw, <16 x float> nofpclass(nan inf) %i.msv)
  %i.mtd = fadd fast <16 x float> %i.mtc, splat (float 1.000000e+00)
  %i.mte = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.mss, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.mtf = shl <16 x i32> %i.mte, splat (i32 23)
  %i.mtg = add <16 x i32> %i.mtf, splat (i32 1065353216)
  %i.mth = bitcast <16 x i32> %i.mtg to <16 x float>
  %i.mti = fmul fast <16 x float> %i.mtd, %i.mth
  store <16 x float> %i.mti, ptr %.037174.i.i1932, align 1, !tbaa !60
  %i.mtj = getelementptr inbounds nuw i8, ptr %.0175.i.i1931, i64 64 ; 2 uses
  %i.mtk = getelementptr inbounds nuw i8, ptr %.037174.i.i1932, i64 64 ; 2 uses
  %i.mtl = add nuw nsw i32 %.041173.i.i1933, 16   ; 2 uses
  %i.mtm = or disjoint i32 %i.mtl, 15
  %i.mtn = icmp slt i32 %i.mtm, %i.mfi
  br i1 %i.mtn, label %bb.jb, label %.preheader172.loopexit.i.i1934, !llvm.loop !467

.preheader171.i.i1909:                            ; preds = %bb.jc, %.preheader172.i.i1905
  %.142.lcssa.i.i1910 = phi i32 [ %.041.lcssa.i.i1906, %.preheader172.i.i1905 ], [ %i.mvv, %bb.jc ] ; 3 uses
  %.138.lcssa.i.i1911 = phi ptr [ %.037.lcssa.i.i1907, %.preheader172.i.i1905 ], [ %i.mvu, %bb.jc ] ; 2 uses
  %.1.lcssa.i35.i1912 = phi ptr [ %.0.lcssa.i34.i1908, %.preheader172.i.i1905 ], [ %i.mvt, %bb.jc ] ; 2 uses
  %i.mto = or disjoint i32 %.142.lcssa.i.i1910, 3
  %i.mtp = icmp slt i32 %i.mto, %i.mfi
  br i1 %i.mtp, label %.lr.ph188.i.i1922, label %.preheader.i36.i1913

.lr.ph188.i.i1922:                                ; preds = %.preheader171.i.i1909
  %i.mtq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mpw, <4 x float> splat (float f0x00800000))
  %i.mtr = bitcast <4 x float> %i.mtq to <4 x i32> ; 2 uses
  %i.mts = lshr <4 x i32> %i.mtr, splat (i32 23)
  %i.mtt = and <4 x i32> %i.mtr, splat (i32 -2139095041)
  %i.mtu = or disjoint <4 x i32> %i.mtt, splat (i32 1056964608)
  %i.mtv = bitcast <4 x i32> %i.mtu to <4 x float> ; 3 uses
  %i.mtw = add nsw <4 x i32> %i.mts, splat (i32 -127)
  %i.mtx = sitofp fast <4 x i32> %i.mtw to <4 x float> ; 2 uses
  %i.mty = fadd fast <4 x float> %i.mtx, splat (float 1.000000e+00)
  %i.mtz = fcmp fast olt <4 x float> %i.mtv, splat (float f0x3F3504F3) ; 2 uses
  %i.mua = select <4 x i1> %i.mtz, <4 x float> %i.mtv, <4 x float> zeroinitializer
  %i.mub = fadd fast <4 x float> %i.mtv, splat (float -1.000000e+00)
  %i.muc = select fast <4 x i1> %i.mtz, <4 x float> %i.mtx, <4 x float> %i.mty ; 2 uses
  %i.mud = fadd fast <4 x float> %i.mub, %i.mua   ; 12 uses
  %i.mue = fmul fast <4 x float> %i.mud, %i.mud   ; 2 uses
  %i.muf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mud, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.mug = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.muf, <4 x float> nofpclass(nan inf) %i.mud, <4 x float> splat (float f0x3DEF251A))
  %i.muh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mug, <4 x float> nofpclass(nan inf) %i.mud, <4 x float> splat (float f0xBDFE5D4F))
  %i.mui = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.muh, <4 x float> nofpclass(nan inf) %i.mud, <4 x float> splat (float f0x3E11E9BF))
  %i.muj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mui, <4 x float> nofpclass(nan inf) %i.mud, <4 x float> splat (float f0xBE2AAE50))
  %i.muk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.muj, <4 x float> nofpclass(nan inf) %i.mud, <4 x float> splat (float f0x3E4CCEAC))
  %i.mul = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.muk, <4 x float> nofpclass(nan inf) %i.mud, <4 x float> splat (float f0xBE7FFFFC))
  %i.mum = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mul, <4 x float> nofpclass(nan inf) %i.mud, <4 x float> splat (float f0x3EAAAAAA))
  %i.mun = fmul fast <4 x float> %i.mue, %i.mud
  %i.muo = fmul fast <4 x float> %i.mun, %i.mum
  %i.mup = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.muc, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.muo)
  %i.muq = fneg fast <4 x float> %i.mue
  %i.mur = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.muq, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.mup)
  %i.mus = fadd fast <4 x float> %i.mur, %i.mud
  %i.mut = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.muc, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.mus)
  br label %bb.jd

bb.jc:                                            ; preds = %bb.jc, %.lr.ph181.i.i1926
  %.1180.i.i1927 = phi ptr [ %.0.lcssa.i34.i1908, %.lr.ph181.i.i1926 ], [ %i.mvt, %bb.jc ] ; 2 uses
  %.138179.i.i1928 = phi ptr [ %.037.lcssa.i.i1907, %.lr.ph181.i.i1926 ], [ %i.mvu, %bb.jc ] ; 2 uses
  %.142178.i.i1929 = phi i32 [ %.041.lcssa.i.i1906, %.lr.ph181.i.i1926 ], [ %i.mvv, %bb.jc ]
  %i.muu = load <8 x float>, ptr %.1180.i.i1927, align 1, !tbaa !60
  %i.muv = fmul fast <8 x float> %i.muu, %i.msj
  %i.muw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.muv, <8 x float> splat (float f0x42B0C0A5))
  %i.mux = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.muw, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.muy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mux, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.muz = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.muy, i32 1) ; 2 uses
  %i.mva = fcmp fast ogt <8 x float> %i.muz, %i.muy
  %i.mvb = select <8 x i1> %i.mva, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.mvc = fsub fast <8 x float> %i.muz, %i.mvb   ; 2 uses
  %i.mvd = fneg fast <8 x float> %i.mvc           ; 2 uses
  %i.mve = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.mvd, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.mux)
  %i.mvf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.mvd, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.mve) ; 8 uses
  %i.mvg = fmul fast <8 x float> %i.mvf, %i.mvf
  %i.mvh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mvf, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.mvi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mvh, <8 x float> nofpclass(nan inf) %i.mvf, <8 x float> splat (float f0x3C088908))
  %i.mvj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mvi, <8 x float> nofpclass(nan inf) %i.mvf, <8 x float> splat (float f0x3D2AA9C1))
  %i.mvk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mvj, <8 x float> nofpclass(nan inf) %i.mvf, <8 x float> splat (float f0x3E2AAAAA))
  %i.mvl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mvk, <8 x float> nofpclass(nan inf) %i.mvf, <8 x float> splat (float 5.000000e-01))
  %i.mvm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mvl, <8 x float> nofpclass(nan inf) %i.mvg, <8 x float> nofpclass(nan inf) %i.mvf)
  %i.mvn = fadd fast <8 x float> %i.mvm, splat (float 1.000000e+00)
  %i.mvo = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mvc)
  %i.mvp = shl <8 x i32> %i.mvo, splat (i32 23)
  %i.mvq = add <8 x i32> %i.mvp, splat (i32 1065353216)
  %i.mvr = bitcast <8 x i32> %i.mvq to <8 x float>
  %i.mvs = fmul fast <8 x float> %i.mvn, %i.mvr
  store <8 x float> %i.mvs, ptr %.138179.i.i1928, align 1, !tbaa !60
  %i.mvt = getelementptr inbounds nuw i8, ptr %.1180.i.i1927, i64 32 ; 2 uses
  %i.mvu = getelementptr inbounds nuw i8, ptr %.138179.i.i1928, i64 32 ; 2 uses
  %i.mvv = add nuw nsw i32 %.142178.i.i1929, 8    ; 3 uses
  %i.mvw = or disjoint i32 %i.mvv, 7
  %i.mvx = icmp slt i32 %i.mvw, %i.mfi
  br i1 %i.mvx, label %bb.jc, label %.preheader171.i.i1909, !llvm.loop !468

.preheader.i36.i1913:                             ; preds = %bb.jd, %.preheader171.i.i1909
  %.243.lcssa.i.i1914 = phi i32 [ %.142.lcssa.i.i1910, %.preheader171.i.i1909 ], [ %i.mzo, %bb.jd ] ; 5 uses
  %.239.lcssa.i.i1915 = phi ptr [ %.138.lcssa.i.i1911, %.preheader171.i.i1909 ], [ %i.mzn, %bb.jd ] ; 6 uses
  %.2.lcssa.i37.i1916 = phi ptr [ %.1.lcssa.i35.i1912, %.preheader171.i.i1909 ], [ %i.mzm, %bb.jd ] ; 6 uses
  %i.mvy = icmp slt i32 %.243.lcssa.i.i1914, %i.mfi
  br i1 %i.mvy, label %iter.check9085, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

iter.check9085:                                   ; preds = %.preheader.i36.i1913
  %.239.lcssa.i.i19159069 = ptrtoaddr ptr %.239.lcssa.i.i1915 to i64
  %.2.lcssa.i37.i19169068 = ptrtoaddr ptr %.2.lcssa.i37.i1916 to i64
  %i.mvz = xor i32 %.243.lcssa.i.i1914, -1
  %i.mwa = add i32 %i.mfi, %i.mvz                 ; 3 uses
  %i.mwb = zext i32 %i.mwa to i64
  %i.mwc = add nuw nsw i64 %i.mwb, 1              ; 5 uses
  %min.iters.check9070 = icmp ult i32 %i.mwa, 3
  %i.mwd = sub i64 %.2.lcssa.i37.i19169068, %.239.lcssa.i.i19159069
  %diff.check9072 = icmp ugt i64 %i.mwd, -64
  %or.cond10450 = select i1 %min.iters.check9070, i1 true, i1 %diff.check9072
  br i1 %or.cond10450, label %.lr.ph195.i.i1917.preheader, label %vector.main.loop.iter.check9073

vector.main.loop.iter.check9073:                  ; preds = %iter.check9085
  %min.iters.check9074 = icmp ult i32 %i.mwa, 15
  br i1 %min.iters.check9074, label %vec.epilog.ph9089, label %vector.ph9075

vector.ph9075:                                    ; preds = %vector.main.loop.iter.check9073
  %i.mwe = and i64 %i.mwc, 12
  %n.vec9076 = and i64 %i.mwc, 8589934576         ; 5 uses
  %i.mwf = shl nuw nsw i64 %n.vec9076, 2          ; 2 uses
  %i.mwg = getelementptr i8, ptr %.2.lcssa.i37.i1916, i64 %i.mwf
  %i.mwh = getelementptr i8, ptr %.239.lcssa.i.i1915, i64 %i.mwf
  %i.mwi = trunc i64 %n.vec9076 to i32
  %i.mwj = add i32 %.243.lcssa.i.i1914, %i.mwi
  %i.mwk = insertelement <8 x float> poison, float %i.mph, i64 0
  %i.mwl = shufflevector <8 x float> %i.mwk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mwm = insertelement <4 x float> poison, float %i.mph, i64 0
  %i.mwn = shufflevector <4 x float> %i.mwm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mwo = insertelement <2 x float> poison, float %i.mph, i64 0
  %i.mwp = shufflevector <2 x float> %i.mwo, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body9077

vector.body9077:                                  ; preds = %vector.ph9075, %vector.body9077
  %index9078 = phi i64 [ 0, %vector.ph9075 ], [ %index.next9082, %vector.body9077 ] ; 2 uses
  %i.mwq = shl i64 %index9078, 2                  ; 2 uses
  %next.gep9079 = getelementptr i8, ptr %.2.lcssa.i37.i1916, i64 %i.mwq
  %next.gep9080 = getelementptr i8, ptr %.239.lcssa.i.i1915, i64 %i.mwq
  %wide.load9081 = load <16 x float>, ptr %next.gep9079, align 4, !tbaa !59 ; 5 uses
  %i.mwr = extractelement <16 x float> %wide.load9081, i64 0
  %i.mws = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mph, float %i.mwr)
  %i.mwt = shufflevector <16 x float> %wide.load9081, <16 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %i.mwu = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.mwl, <8 x float> %i.mwt)
  %i.mwv = shufflevector <16 x float> %wide.load9081, <16 x float> poison, <4 x i32> <i32 9, i32 10, i32 11, i32 12>
  %i.mww = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.mwn, <4 x float> %i.mwv)
  %i.mwx = extractelement <16 x float> %wide.load9081, i64 13
  %i.mwy = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mph, float %i.mwx)
  %i.mwz = shufflevector <16 x float> %wide.load9081, <16 x float> poison, <2 x i32> <i32 14, i32 15>
  %i.mxa = tail call fast <2 x float> @llvm.pow.v2f32(<2 x float> %i.mwp, <2 x float> %i.mwz)
  %i.mxb = insertelement <16 x float> poison, float %i.mws, i64 0
  %i.mxc = shufflevector <8 x float> %i.mwu, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mxd = shufflevector <16 x float> %i.mxb, <16 x float> %i.mxc, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mxe = shufflevector <4 x float> %i.mww, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mxf = shufflevector <16 x float> %i.mxd, <16 x float> %i.mxe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.mxg = insertelement <16 x float> %i.mxf, float %i.mwy, i64 13
  %i.mxh = shufflevector <2 x float> %i.mxa, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mxi = shufflevector <16 x float> %i.mxg, <16 x float> %i.mxh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x float> %i.mxi, ptr %next.gep9080, align 4, !tbaa !59
  %index.next9082 = add nuw i64 %index9078, 16    ; 2 uses
  %i.mxj = icmp eq i64 %index.next9082, %n.vec9076
  br i1 %i.mxj, label %middle.block9083, label %vector.body9077, !llvm.loop !469

middle.block9083:                                 ; preds = %vector.body9077
  %cmp.n9084 = icmp eq i64 %i.mwc, %n.vec9076
  br i1 %cmp.n9084, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %vec.epilog.iter.check9086

vec.epilog.iter.check9086:                        ; preds = %middle.block9083
  %min.epilog.iters.check9088 = icmp eq i64 %i.mwe, 0
  br i1 %min.epilog.iters.check9088, label %.lr.ph195.i.i1917.preheader, label %vec.epilog.ph9089, !prof !818

vec.epilog.ph9089:                                ; preds = %vector.main.loop.iter.check9073, %vec.epilog.iter.check9086
  %vec.epilog.resume.val9090 = phi i64 [ %n.vec9076, %vec.epilog.iter.check9086 ], [ 0, %vector.main.loop.iter.check9073 ]
  %n.vec9091 = and i64 %i.mwc, 8589934588         ; 4 uses
  %i.mxk = shl nuw nsw i64 %n.vec9091, 2          ; 2 uses
  %i.mxl = getelementptr i8, ptr %.2.lcssa.i37.i1916, i64 %i.mxk
  %i.mxm = getelementptr i8, ptr %.239.lcssa.i.i1915, i64 %i.mxk
  %i.mxn = trunc i64 %n.vec9091 to i32
  %i.mxo = add i32 %.243.lcssa.i.i1914, %i.mxn
  br label %vec.epilog.vector.body9092

vec.epilog.vector.body9092:                       ; preds = %vec.epilog.vector.body9092, %vec.epilog.ph9089
  %index9093 = phi i64 [ %vec.epilog.resume.val9090, %vec.epilog.ph9089 ], [ %index.next9097, %vec.epilog.vector.body9092 ] ; 2 uses
  %i.mxp = shl i64 %index9093, 2                  ; 2 uses
  %next.gep9094 = getelementptr i8, ptr %.2.lcssa.i37.i1916, i64 %i.mxp
  %next.gep9095 = getelementptr i8, ptr %.239.lcssa.i.i1915, i64 %i.mxp
  %wide.load9096 = load <4 x float>, ptr %next.gep9094, align 4, !tbaa !59 ; 4 uses
  %i.mxq = extractelement <4 x float> %wide.load9096, i64 0
  %i.mxr = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mph, float %i.mxq)
  %i.mxs = extractelement <4 x float> %wide.load9096, i64 1
  %i.mxt = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mph, float %i.mxs)
  %i.mxu = extractelement <4 x float> %wide.load9096, i64 2
  %i.mxv = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mph, float %i.mxu)
  %i.mxw = extractelement <4 x float> %wide.load9096, i64 3
  %i.mxx = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mph, float %i.mxw)
  %i.mxy = insertelement <4 x float> poison, float %i.mxr, i64 0
  %i.mxz = insertelement <4 x float> %i.mxy, float %i.mxt, i64 1
  %i.mya = insertelement <4 x float> %i.mxz, float %i.mxv, i64 2
  %i.myb = insertelement <4 x float> %i.mya, float %i.mxx, i64 3
  store <4 x float> %i.myb, ptr %next.gep9095, align 4, !tbaa !59
  %index.next9097 = add nuw i64 %index9093, 4     ; 2 uses
  %i.myc = icmp eq i64 %index.next9097, %n.vec9091
  br i1 %i.myc, label %vec.epilog.middle.block9098, label %vec.epilog.vector.body9092, !llvm.loop !470

vec.epilog.middle.block9098:                      ; preds = %vec.epilog.vector.body9092
  %cmp.n9099 = icmp eq i64 %i.mwc, %n.vec9091
  br i1 %cmp.n9099, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph195.i.i1917.preheader

.lr.ph195.i.i1917.preheader:                      ; preds = %iter.check9085, %vec.epilog.iter.check9086, %vec.epilog.middle.block9098
  %.3194.i.i1918.ph = phi ptr [ %.2.lcssa.i37.i1916, %iter.check9085 ], [ %i.mwg, %vec.epilog.iter.check9086 ], [ %i.mxl, %vec.epilog.middle.block9098 ] ; 2 uses
  %.340193.i.i1919.ph = phi ptr [ %.239.lcssa.i.i1915, %iter.check9085 ], [ %i.mwh, %vec.epilog.iter.check9086 ], [ %i.mxm, %vec.epilog.middle.block9098 ] ; 2 uses
  %.344192.i.i1920.ph = phi i32 [ %.243.lcssa.i.i1914, %iter.check9085 ], [ %i.mwj, %vec.epilog.iter.check9086 ], [ %i.mxo, %vec.epilog.middle.block9098 ] ; 4 uses
  %i.myd = sub i32 %i.mfi, %.344192.i.i1920.ph
  %xtraiter12090 = and i32 %i.myd, 3              ; 2 uses
  %lcmp.mod12091.not = icmp eq i32 %xtraiter12090, 0
  br i1 %lcmp.mod12091.not, label %.lr.ph195.i.i1917.prol.loopexit, label %.lr.ph195.i.i1917.prol

.lr.ph195.i.i1917.prol:                           ; preds = %.lr.ph195.i.i1917.preheader, %.lr.ph195.i.i1917.prol
  %.3194.i.i1918.prol = phi ptr [ %i.myg, %.lr.ph195.i.i1917.prol ], [ %.3194.i.i1918.ph, %.lr.ph195.i.i1917.preheader ] ; 2 uses
  %.340193.i.i1919.prol = phi ptr [ %i.myh, %.lr.ph195.i.i1917.prol ], [ %.340193.i.i1919.ph, %.lr.ph195.i.i1917.preheader ] ; 2 uses
  %.344192.i.i1920.prol = phi i32 [ %i.myi, %.lr.ph195.i.i1917.prol ], [ %.344192.i.i1920.ph, %.lr.ph195.i.i1917.preheader ]
  %prol.iter12092 = phi i32 [ %prol.iter12092.next, %.lr.ph195.i.i1917.prol ], [ 0, %.lr.ph195.i.i1917.preheader ]
  %i.mye = load float, ptr %.3194.i.i1918.prol, align 4, !tbaa !59
  %i.myf = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mph, float %i.mye)
  store float %i.myf, ptr %.340193.i.i1919.prol, align 4, !tbaa !59
  %i.myg = getelementptr inbounds nuw i8, ptr %.3194.i.i1918.prol, i64 4 ; 2 uses
  %i.myh = getelementptr inbounds nuw i8, ptr %.340193.i.i1919.prol, i64 4 ; 2 uses
  %i.myi = add nuw nsw i32 %.344192.i.i1920.prol, 1 ; 2 uses
  %prol.iter12092.next = add i32 %prol.iter12092, 1 ; 2 uses
  %prol.iter12092.cmp.not = icmp eq i32 %prol.iter12092.next, %xtraiter12090
  br i1 %prol.iter12092.cmp.not, label %.lr.ph195.i.i1917.prol.loopexit, label %.lr.ph195.i.i1917.prol, !llvm.loop !471

.lr.ph195.i.i1917.prol.loopexit:                  ; preds = %.lr.ph195.i.i1917.prol, %.lr.ph195.i.i1917.preheader
  %.3194.i.i1918.unr = phi ptr [ %.3194.i.i1918.ph, %.lr.ph195.i.i1917.preheader ], [ %i.myg, %.lr.ph195.i.i1917.prol ]
  %.340193.i.i1919.unr = phi ptr [ %.340193.i.i1919.ph, %.lr.ph195.i.i1917.preheader ], [ %i.myh, %.lr.ph195.i.i1917.prol ]
  %.344192.i.i1920.unr = phi i32 [ %.344192.i.i1920.ph, %.lr.ph195.i.i1917.preheader ], [ %i.myi, %.lr.ph195.i.i1917.prol ]
  %i.myj = sub i32 %.344192.i.i1920.ph, %i.mfi
  %i.myk = icmp ugt i32 %i.myj, -4
  br i1 %i.myk, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph195.i.i1917

bb.jd:                                            ; preds = %bb.jd, %.lr.ph188.i.i1922
  %.2187.i.i1923 = phi ptr [ %.1.lcssa.i35.i1912, %.lr.ph188.i.i1922 ], [ %i.mzm, %bb.jd ] ; 2 uses
  %.239186.i.i1924 = phi ptr [ %.138.lcssa.i.i1911, %.lr.ph188.i.i1922 ], [ %i.mzn, %bb.jd ] ; 2 uses
  %.243185.i.i1925 = phi i32 [ %.142.lcssa.i.i1910, %.lr.ph188.i.i1922 ], [ %i.mzo, %bb.jd ]
  %i.myl = load <4 x float>, ptr %.2187.i.i1923, align 1, !tbaa !60
  %i.mym = fmul fast <4 x float> %i.myl, %i.mut
  %i.myn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.mym, <4 x float> splat (float f0x42B0C0A5))
  %i.myo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.myn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.myp = fmul fast <4 x float> %i.myo, splat (float f0x3FB8AA3B)
  %i.myq = fadd fast <4 x float> %i.myp, splat (float 5.000000e-01) ; 2 uses
  %i.myr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.myq)
  %i.mys = sitofp fast <4 x i32> %i.myr to <4 x float> ; 2 uses
  %i.myt = fcmp fast olt <4 x float> %i.myq, %i.mys
  %i.myu = select <4 x i1> %i.myt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.myv = fsub fast <4 x float> %i.mys, %i.myu   ; 2 uses
  %i.myw = fneg fast <4 x float> %i.myv           ; 2 uses
  %i.myx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.myw, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.myo)
  %i.myy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.myw, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.myx) ; 8 uses
  %i.myz = fmul fast <4 x float> %i.myy, %i.myy
  %i.mza = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.myy, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.mzb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mza, <4 x float> nofpclass(nan inf) %i.myy, <4 x float> splat (float f0x3C088908))
  %i.mzc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mzb, <4 x float> nofpclass(nan inf) %i.myy, <4 x float> splat (float f0x3D2AA9C1))
  %i.mzd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mzc, <4 x float> nofpclass(nan inf) %i.myy, <4 x float> splat (float f0x3E2AAAAA))
  %i.mze = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mzd, <4 x float> nofpclass(nan inf) %i.myy, <4 x float> splat (float 5.000000e-01))
  %i.mzf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mze, <4 x float> nofpclass(nan inf) %i.myz, <4 x float> nofpclass(nan inf) %i.myy)
  %i.mzg = fadd fast <4 x float> %i.mzf, splat (float 1.000000e+00)
  %i.mzh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.myv)
  %i.mzi = shl <4 x i32> %i.mzh, splat (i32 23)
  %i.mzj = add <4 x i32> %i.mzi, splat (i32 1065353216)
  %i.mzk = bitcast <4 x i32> %i.mzj to <4 x float>
  %i.mzl = fmul fast <4 x float> %i.mzg, %i.mzk
  store <4 x float> %i.mzl, ptr %.239186.i.i1924, align 1, !tbaa !60
  %i.mzm = getelementptr inbounds nuw i8, ptr %.2187.i.i1923, i64 16 ; 2 uses
  %i.mzn = getelementptr inbounds nuw i8, ptr %.239186.i.i1924, i64 16 ; 2 uses
  %i.mzo = add nuw nsw i32 %.243185.i.i1925, 4    ; 3 uses
  %i.mzp = or disjoint i32 %i.mzo, 3
  %i.mzq = icmp slt i32 %i.mzp, %i.mfi
  br i1 %i.mzq, label %bb.jd, label %.preheader.i36.i1913, !llvm.loop !472

.lr.ph195.i.i1917:                                ; preds = %.lr.ph195.i.i1917.prol.loopexit, %.lr.ph195.i.i1917
  %.3194.i.i1918 = phi ptr [ %i.naf, %.lr.ph195.i.i1917 ], [ %.3194.i.i1918.unr, %.lr.ph195.i.i1917.prol.loopexit ] ; 5 uses
  %.340193.i.i1919 = phi ptr [ %i.nag, %.lr.ph195.i.i1917 ], [ %.340193.i.i1919.unr, %.lr.ph195.i.i1917.prol.loopexit ] ; 5 uses
  %.344192.i.i1920 = phi i32 [ %i.nah, %.lr.ph195.i.i1917 ], [ %.344192.i.i1920.unr, %.lr.ph195.i.i1917.prol.loopexit ]
  %i.mzr = load float, ptr %.3194.i.i1918, align 4, !tbaa !59
  %i.mzs = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mph, float %i.mzr)
  store float %i.mzs, ptr %.340193.i.i1919, align 4, !tbaa !59
  %i.mzt = getelementptr inbounds nuw i8, ptr %.3194.i.i1918, i64 4
  %i.mzu = getelementptr inbounds nuw i8, ptr %.340193.i.i1919, i64 4
  %i.mzv = load float, ptr %i.mzt, align 4, !tbaa !59
  %i.mzw = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mph, float %i.mzv)
  store float %i.mzw, ptr %i.mzu, align 4, !tbaa !59
  %i.mzx = getelementptr inbounds nuw i8, ptr %.3194.i.i1918, i64 8
  %i.mzy = getelementptr inbounds nuw i8, ptr %.340193.i.i1919, i64 8
  %i.mzz = load float, ptr %i.mzx, align 4, !tbaa !59
  %i.naa = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mph, float %i.mzz)
  store float %i.naa, ptr %i.mzy, align 4, !tbaa !59
  %i.nab = getelementptr inbounds nuw i8, ptr %.3194.i.i1918, i64 12
  %i.nac = getelementptr inbounds nuw i8, ptr %.340193.i.i1919, i64 12
  %i.nad = load float, ptr %i.nab, align 4, !tbaa !59
  %i.nae = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mph, float %i.nad)
  store float %i.nae, ptr %i.nac, align 4, !tbaa !59
  %i.naf = getelementptr inbounds nuw i8, ptr %.3194.i.i1918, i64 16
  %i.nag = getelementptr inbounds nuw i8, ptr %.340193.i.i1919, i64 16
  %i.nah = add nuw nsw i32 %.344192.i.i1920, 4    ; 2 uses
  %exitcond.not.i38.i1921.3 = icmp eq i32 %i.nah, %i.mfi
  br i1 %exitcond.not.i38.i1921.3, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph195.i.i1917, !llvm.loop !473

bb.je:                                            ; preds = %bb.iu
  %i.nai = icmp eq i32 %3, 1
  br i1 %i.nai, label %bb.jf, label %bb.jl

bb.jf:                                            ; preds = %bb.je
  %i.naj = load float, ptr %0, align 4, !tbaa !59 ; 15 uses
  %i.nak = icmp eq i32 %.sroa.speculated.i1756, 4
  br i1 %i.nak, label %.thread170.i71.i1904, label %bb.jg

.thread170.i71.i1904:                             ; preds = %bb.jf
  %i.nal = load <4 x float>, ptr %0, align 4, !tbaa !60 ; 2 uses
  %i.nam = shufflevector <4 x float> %i.nal, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.jj

bb.jg:                                            ; preds = %bb.jf
  %i.nan = insertelement <4 x float> poison, float %i.naj, i64 0 ; 2 uses
  %i.nao = shufflevector <4 x float> %i.nan, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.nap = icmp eq i32 %.sroa.speculated.i1756, 8
  br i1 %i.nap, label %.thread169.i70.i1903, label %bb.jh

.thread169.i70.i1903:                             ; preds = %bb.jg
  %i.naq = load <8 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.jj

bb.jh:                                            ; preds = %bb.jg
  %i.nar = shufflevector <4 x float> %i.nan, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.nas = icmp eq i32 %.sroa.speculated.i1756, 16
  br i1 %i.nas, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  %i.nat = load <16 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.jk

bb.jj:                                            ; preds = %bb.jh, %.thread169.i70.i1903, %.thread170.i71.i1904
  %i.nau = phi <8 x float> [ %i.naq, %.thread169.i70.i1903 ], [ %i.nar, %bb.jh ], [ %i.nam, %.thread170.i71.i1904 ] ; 2 uses
  %i.nav = phi <4 x float> [ %i.nao, %.thread169.i70.i1903 ], [ %i.nao, %bb.jh ], [ %i.nal, %.thread170.i71.i1904 ]
  %i.naw = shufflevector <8 x float> %i.nau, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji
  %i.nax = phi <8 x float> [ %i.nar, %bb.ji ], [ %i.nau, %bb.jj ]
  %i.nay = phi <4 x float> [ %i.nao, %bb.ji ], [ %i.nav, %bb.jj ]
  %i.naz = phi fast <16 x float> [ %i.nat, %bb.ji ], [ %i.naw, %bb.jj ]
  %i.nba = icmp sgt i32 %i.mfi, 15
  br i1 %i.nba, label %.lr.ph.i65.i1898, label %.preheader172.i40.i1873

.preheader172.loopexit.i69.i1902:                 ; preds = %.lr.ph.i65.i1898
  %i.nbb = and i32 %i.mfi, 2147483632
  br label %.preheader172.i40.i1873

.preheader172.i40.i1873:                          ; preds = %.preheader172.loopexit.i69.i1902, %bb.jk
  %.041.lcssa.i41.i1874 = phi i32 [ 0, %bb.jk ], [ %i.nbb, %.preheader172.loopexit.i69.i1902 ] ; 3 uses
  %.037.lcssa.i42.i1875 = phi ptr [ %2, %bb.jk ], [ %i.ndi, %.preheader172.loopexit.i69.i1902 ] ; 2 uses
  %.0.lcssa.i43.i1876 = phi ptr [ %1, %bb.jk ], [ %i.ndh, %.preheader172.loopexit.i69.i1902 ] ; 2 uses
  %i.nbc = or disjoint i32 %.041.lcssa.i41.i1874, 7
  %i.nbd = icmp slt i32 %i.nbc, %i.mfi
  br i1 %i.nbd, label %.lr.ph181.i61.i1894, label %.preheader171.i44.i1877

.lr.ph.i65.i1898:                                 ; preds = %bb.jk, %.lr.ph.i65.i1898
  %.0175.i66.i1899 = phi ptr [ %i.ndh, %.lr.ph.i65.i1898 ], [ %1, %bb.jk ] ; 2 uses
  %.037174.i67.i1900 = phi ptr [ %i.ndi, %.lr.ph.i65.i1898 ], [ %2, %bb.jk ] ; 2 uses
  %.041173.i68.i1901 = phi i32 [ %i.ndj, %.lr.ph.i65.i1898 ], [ 0, %bb.jk ]
  %i.nbe = load <16 x float>, ptr %.0175.i66.i1899, align 1, !tbaa !60
  %i.nbf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.nbe, <16 x float> splat (float f0x00800000), i32 4)
  %i.nbg = bitcast <16 x float> %i.nbf to <16 x i32> ; 2 uses
  %i.nbh = lshr <16 x i32> %i.nbg, splat (i32 23)
  %i.nbi = and <16 x i32> %i.nbg, splat (i32 -2139095041)
  %i.nbj = or disjoint <16 x i32> %i.nbi, splat (i32 1056964608)
  %i.nbk = bitcast <16 x i32> %i.nbj to <16 x float> ; 3 uses
  %i.nbl = add nsw <16 x i32> %i.nbh, splat (i32 -127)
  %i.nbm = sitofp fast <16 x i32> %i.nbl to <16 x float> ; 2 uses
  %i.nbn = fadd fast <16 x float> %i.nbm, splat (float 1.000000e+00)
  %i.nbo = fcmp fast olt <16 x float> %i.nbk, splat (float f0x3F3504F3) ; 2 uses
  %i.nbp = fadd fast <16 x float> %i.nbk, splat (float -1.000000e+00)
  %i.nbq = select fast <16 x i1> %i.nbo, <16 x float> %i.nbm, <16 x float> %i.nbn ; 2 uses
  %i.nbr = select fast <16 x i1> %i.nbo, <16 x float> %i.nbk, <16 x float> zeroinitializer
  %i.nbs = fadd fast <16 x float> %i.nbp, %i.nbr  ; 12 uses
  %i.nbt = fmul fast <16 x float> %i.nbs, %i.nbs  ; 2 uses
  %i.nbu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nbs, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.nbv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nbu, <16 x float> nofpclass(nan inf) %i.nbs, <16 x float> splat (float f0x3DEF251A))
  %i.nbw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nbv, <16 x float> nofpclass(nan inf) %i.nbs, <16 x float> splat (float f0xBDFE5D4F))
  %i.nbx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nbw, <16 x float> nofpclass(nan inf) %i.nbs, <16 x float> splat (float f0x3E11E9BF))
  %i.nby = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nbx, <16 x float> nofpclass(nan inf) %i.nbs, <16 x float> splat (float f0xBE2AAE50))
  %i.nbz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nby, <16 x float> nofpclass(nan inf) %i.nbs, <16 x float> splat (float f0x3E4CCEAC))
  %i.nca = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nbz, <16 x float> nofpclass(nan inf) %i.nbs, <16 x float> splat (float f0xBE7FFFFC))
  %i.ncb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nca, <16 x float> nofpclass(nan inf) %i.nbs, <16 x float> splat (float f0x3EAAAAAA))
  %i.ncc = fmul fast <16 x float> %i.nbt, %i.nbs
  %i.ncd = fmul fast <16 x float> %i.ncc, %i.ncb
  %i.nce = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nbq, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ncd)
  %i.ncf = fneg fast <16 x float> %i.nbt
  %i.ncg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ncf, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.nce)
  %i.nch = fadd fast <16 x float> %i.ncg, %i.nbs
  %i.nci = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nbq, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.nch)
  %i.ncj = fmul fast <16 x float> %i.nci, %i.naz
  %i.nck = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ncj, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ncl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.nck, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ncm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ncl, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ncn = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ncm, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.nco = fcmp fast ogt <16 x float> %i.ncn, %i.ncm
  %i.ncp = fadd fast <16 x float> %i.ncn, splat (float -1.000000e+00)
  %i.ncq = select fast <16 x i1> %i.nco, <16 x float> %i.ncp, <16 x float> %i.ncn ; 2 uses
  %i.ncr = fneg fast <16 x float> %i.ncq          ; 2 uses
  %i.ncs = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ncr, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ncl)
  %i.nct = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ncr, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ncs) ; 8 uses
  %i.ncu = fmul fast <16 x float> %i.nct, %i.nct
  %i.ncv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nct, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.ncw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ncv, <16 x float> nofpclass(nan inf) %i.nct, <16 x float> splat (float f0x3C088908))
  %i.ncx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ncw, <16 x float> nofpclass(nan inf) %i.nct, <16 x float> splat (float f0x3D2AA9C1))
  %i.ncy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ncx, <16 x float> nofpclass(nan inf) %i.nct, <16 x float> splat (float f0x3E2AAAAA))
  %i.ncz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ncy, <16 x float> nofpclass(nan inf) %i.nct, <16 x float> splat (float 5.000000e-01))
  %i.nda = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ncz, <16 x float> nofpclass(nan inf) %i.ncu, <16 x float> nofpclass(nan inf) %i.nct)
  %i.ndb = fadd fast <16 x float> %i.nda, splat (float 1.000000e+00)
  %i.ndc = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ncq, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ndd = shl <16 x i32> %i.ndc, splat (i32 23)
  %i.nde = add <16 x i32> %i.ndd, splat (i32 1065353216)
  %i.ndf = bitcast <16 x i32> %i.nde to <16 x float>
  %i.ndg = fmul fast <16 x float> %i.ndb, %i.ndf
  store <16 x float> %i.ndg, ptr %.037174.i67.i1900, align 1, !tbaa !60
  %i.ndh = getelementptr inbounds nuw i8, ptr %.0175.i66.i1899, i64 64 ; 2 uses
  %i.ndi = getelementptr inbounds nuw i8, ptr %.037174.i67.i1900, i64 64 ; 2 uses
  %i.ndj = add nuw nsw i32 %.041173.i68.i1901, 16 ; 2 uses
  %i.ndk = or disjoint i32 %i.ndj, 15
  %i.ndl = icmp slt i32 %i.ndk, %i.mfi
  br i1 %i.ndl, label %.lr.ph.i65.i1898, label %.preheader172.loopexit.i69.i1902, !llvm.loop !474

.preheader171.i44.i1877:                          ; preds = %.lr.ph181.i61.i1894, %.preheader172.i40.i1873
  %.142.lcssa.i45.i1878 = phi i32 [ %.041.lcssa.i41.i1874, %.preheader172.i40.i1873 ], [ %i.nft, %.lr.ph181.i61.i1894 ] ; 3 uses
  %.138.lcssa.i46.i1879 = phi ptr [ %.037.lcssa.i42.i1875, %.preheader172.i40.i1873 ], [ %i.nfs, %.lr.ph181.i61.i1894 ] ; 2 uses
  %.1.lcssa.i47.i1880 = phi ptr [ %.0.lcssa.i43.i1876, %.preheader172.i40.i1873 ], [ %i.nfr, %.lr.ph181.i61.i1894 ] ; 2 uses
  %i.ndm = or disjoint i32 %.142.lcssa.i45.i1878, 3
  %i.ndn = icmp slt i32 %i.ndm, %i.mfi
  br i1 %i.ndn, label %.lr.ph188.i57.i1890, label %.preheader.i48.i1881

.lr.ph181.i61.i1894:                              ; preds = %.preheader172.i40.i1873, %.lr.ph181.i61.i1894
  %.1180.i62.i1895 = phi ptr [ %i.nfr, %.lr.ph181.i61.i1894 ], [ %.0.lcssa.i43.i1876, %.preheader172.i40.i1873 ] ; 2 uses
  %.138179.i63.i1896 = phi ptr [ %i.nfs, %.lr.ph181.i61.i1894 ], [ %.037.lcssa.i42.i1875, %.preheader172.i40.i1873 ] ; 2 uses
  %.142178.i64.i1897 = phi i32 [ %i.nft, %.lr.ph181.i61.i1894 ], [ %.041.lcssa.i41.i1874, %.preheader172.i40.i1873 ]
  %i.ndo = load <8 x float>, ptr %.1180.i62.i1895, align 1, !tbaa !60
  %i.ndp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ndo, <8 x float> splat (float f0x00800000))
  %i.ndq = bitcast <8 x float> %i.ndp to <8 x i32> ; 2 uses
  %i.ndr = lshr <8 x i32> %i.ndq, splat (i32 23)
  %i.nds = and <8 x i32> %i.ndq, splat (i32 -2139095041)
  %i.ndt = or disjoint <8 x i32> %i.nds, splat (i32 1056964608)
  %i.ndu = bitcast <8 x i32> %i.ndt to <8 x float> ; 3 uses
  %i.ndv = add nsw <8 x i32> %i.ndr, splat (i32 -127)
  %i.ndw = sitofp fast <8 x i32> %i.ndv to <8 x float> ; 2 uses
  %i.ndx = fadd fast <8 x float> %i.ndw, splat (float 1.000000e+00)
  %i.ndy = fcmp fast olt <8 x float> %i.ndu, splat (float f0x3F3504F3) ; 2 uses
  %i.ndz = select <8 x i1> %i.ndy, <8 x float> %i.ndu, <8 x float> zeroinitializer
  %i.nea = fadd fast <8 x float> %i.ndu, splat (float -1.000000e+00)
  %i.neb = select fast <8 x i1> %i.ndy, <8 x float> %i.ndw, <8 x float> %i.ndx ; 2 uses
  %i.nec = fadd fast <8 x float> %i.nea, %i.ndz   ; 12 uses
  %i.ned = fmul fast <8 x float> %i.nec, %i.nec   ; 2 uses
  %i.nee = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nec, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.nef = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nee, <8 x float> nofpclass(nan inf) %i.nec, <8 x float> splat (float f0x3DEF251A))
  %i.neg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nef, <8 x float> nofpclass(nan inf) %i.nec, <8 x float> splat (float f0xBDFE5D4F))
  %i.neh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.neg, <8 x float> nofpclass(nan inf) %i.nec, <8 x float> splat (float f0x3E11E9BF))
  %i.nei = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.neh, <8 x float> nofpclass(nan inf) %i.nec, <8 x float> splat (float f0xBE2AAE50))
  %i.nej = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nei, <8 x float> nofpclass(nan inf) %i.nec, <8 x float> splat (float f0x3E4CCEAC))
  %i.nek = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nej, <8 x float> nofpclass(nan inf) %i.nec, <8 x float> splat (float f0xBE7FFFFC))
  %i.nel = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nek, <8 x float> nofpclass(nan inf) %i.nec, <8 x float> splat (float f0x3EAAAAAA))
  %i.nem = fmul fast <8 x float> %i.ned, %i.nec
  %i.nen = fmul fast <8 x float> %i.nem, %i.nel
  %i.neo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.neb, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.nen)
  %i.nep = fneg fast <8 x float> %i.ned
  %i.neq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.nep, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.neo)
  %i.ner = fadd fast <8 x float> %i.neq, %i.nec
  %i.nes = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.neb, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ner)
  %i.net = fmul fast <8 x float> %i.nes, %i.nax
  %i.neu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.net, <8 x float> splat (float f0x42B0C0A5))
  %i.nev = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.neu, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.new = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nev, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.nex = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.new, i32 1) ; 2 uses
  %i.ney = fcmp fast ogt <8 x float> %i.nex, %i.new
  %i.nez = select <8 x i1> %i.ney, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.nfa = fsub fast <8 x float> %i.nex, %i.nez   ; 2 uses
  %i.nfb = fneg fast <8 x float> %i.nfa           ; 2 uses
  %i.nfc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.nfb, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.nev)
  %i.nfd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.nfb, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.nfc) ; 8 uses
  %i.nfe = fmul fast <8 x float> %i.nfd, %i.nfd
  %i.nff = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nfd, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.nfg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nff, <8 x float> nofpclass(nan inf) %i.nfd, <8 x float> splat (float f0x3C088908))
  %i.nfh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nfg, <8 x float> nofpclass(nan inf) %i.nfd, <8 x float> splat (float f0x3D2AA9C1))
  %i.nfi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nfh, <8 x float> nofpclass(nan inf) %i.nfd, <8 x float> splat (float f0x3E2AAAAA))
  %i.nfj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nfi, <8 x float> nofpclass(nan inf) %i.nfd, <8 x float> splat (float 5.000000e-01))
  %i.nfk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nfj, <8 x float> nofpclass(nan inf) %i.nfe, <8 x float> nofpclass(nan inf) %i.nfd)
  %i.nfl = fadd fast <8 x float> %i.nfk, splat (float 1.000000e+00)
  %i.nfm = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.nfa)
  %i.nfn = shl <8 x i32> %i.nfm, splat (i32 23)
  %i.nfo = add <8 x i32> %i.nfn, splat (i32 1065353216)
  %i.nfp = bitcast <8 x i32> %i.nfo to <8 x float>
  %i.nfq = fmul fast <8 x float> %i.nfl, %i.nfp
  store <8 x float> %i.nfq, ptr %.138179.i63.i1896, align 1, !tbaa !60
  %i.nfr = getelementptr inbounds nuw i8, ptr %.1180.i62.i1895, i64 32 ; 2 uses
  %i.nfs = getelementptr inbounds nuw i8, ptr %.138179.i63.i1896, i64 32 ; 2 uses
  %i.nft = add nuw nsw i32 %.142178.i64.i1897, 8  ; 3 uses
  %i.nfu = or disjoint i32 %i.nft, 7
  %i.nfv = icmp slt i32 %i.nfu, %i.mfi
  br i1 %i.nfv, label %.lr.ph181.i61.i1894, label %.preheader171.i44.i1877, !llvm.loop !475

.preheader.i48.i1881:                             ; preds = %.lr.ph188.i57.i1890, %.preheader171.i44.i1877
  %.243.lcssa.i49.i1882 = phi i32 [ %.142.lcssa.i45.i1878, %.preheader171.i44.i1877 ], [ %i.nkq, %.lr.ph188.i57.i1890 ] ; 5 uses
  %.239.lcssa.i50.i1883 = phi ptr [ %.138.lcssa.i46.i1879, %.preheader171.i44.i1877 ], [ %i.nkp, %.lr.ph188.i57.i1890 ] ; 6 uses
  %.2.lcssa.i51.i1884 = phi ptr [ %.1.lcssa.i47.i1880, %.preheader171.i44.i1877 ], [ %i.nko, %.lr.ph188.i57.i1890 ] ; 6 uses
  %i.nfw = icmp slt i32 %.243.lcssa.i49.i1882, %i.mfi
  br i1 %i.nfw, label %iter.check9046, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

iter.check9046:                                   ; preds = %.preheader.i48.i1881
  %.239.lcssa.i50.i18839030 = ptrtoaddr ptr %.239.lcssa.i50.i1883 to i64
  %.2.lcssa.i51.i18849029 = ptrtoaddr ptr %.2.lcssa.i51.i1884 to i64
  %i.nfx = xor i32 %.243.lcssa.i49.i1882, -1
  %i.nfy = add i32 %i.mfi, %i.nfx                 ; 3 uses
  %i.nfz = zext i32 %i.nfy to i64
  %i.nga = add nuw nsw i64 %i.nfz, 1              ; 5 uses
  %min.iters.check9031 = icmp ult i32 %i.nfy, 3
  %i.ngb = sub i64 %.2.lcssa.i51.i18849029, %.239.lcssa.i50.i18839030
  %diff.check9033 = icmp ugt i64 %i.ngb, -64
  %or.cond10451 = select i1 %min.iters.check9031, i1 true, i1 %diff.check9033
  br i1 %or.cond10451, label %.lr.ph195.i52.i1885.preheader, label %vector.main.loop.iter.check9034

vector.main.loop.iter.check9034:                  ; preds = %iter.check9046
  %min.iters.check9035 = icmp ult i32 %i.nfy, 15
  br i1 %min.iters.check9035, label %vec.epilog.ph9050, label %vector.ph9036

vector.ph9036:                                    ; preds = %vector.main.loop.iter.check9034
  %i.ngc = and i64 %i.nga, 12
  %n.vec9037 = and i64 %i.nga, 8589934576         ; 5 uses
  %i.ngd = shl nuw nsw i64 %n.vec9037, 2          ; 2 uses
  %i.nge = getelementptr i8, ptr %.2.lcssa.i51.i1884, i64 %i.ngd
  %i.ngf = getelementptr i8, ptr %.239.lcssa.i50.i1883, i64 %i.ngd
  %i.ngg = trunc i64 %n.vec9037 to i32
  %i.ngh = add i32 %.243.lcssa.i49.i1882, %i.ngg
  %i.ngi = insertelement <8 x float> poison, float %i.naj, i64 0
  %i.ngj = shufflevector <8 x float> %i.ngi, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ngk = insertelement <4 x float> poison, float %i.naj, i64 0
  %i.ngl = shufflevector <4 x float> %i.ngk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ngm = insertelement <2 x float> poison, float %i.naj, i64 0
  %i.ngn = shufflevector <2 x float> %i.ngm, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body9038

vector.body9038:                                  ; preds = %vector.ph9036, %vector.body9038
  %index9039 = phi i64 [ 0, %vector.ph9036 ], [ %index.next9043, %vector.body9038 ] ; 2 uses
  %i.ngo = shl i64 %index9039, 2                  ; 2 uses
  %next.gep9040 = getelementptr i8, ptr %.2.lcssa.i51.i1884, i64 %i.ngo
  %next.gep9041 = getelementptr i8, ptr %.239.lcssa.i50.i1883, i64 %i.ngo
  %wide.load9042 = load <16 x float>, ptr %next.gep9040, align 4, !tbaa !59 ; 5 uses
  %i.ngp = extractelement <16 x float> %wide.load9042, i64 0
  %i.ngq = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ngp, float %i.naj)
  %i.ngr = shufflevector <16 x float> %wide.load9042, <16 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %i.ngs = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.ngr, <8 x float> %i.ngj)
  %i.ngt = shufflevector <16 x float> %wide.load9042, <16 x float> poison, <4 x i32> <i32 9, i32 10, i32 11, i32 12>
  %i.ngu = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.ngt, <4 x float> %i.ngl)
  %i.ngv = extractelement <16 x float> %wide.load9042, i64 13
  %i.ngw = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ngv, float %i.naj)
  %i.ngx = shufflevector <16 x float> %wide.load9042, <16 x float> poison, <2 x i32> <i32 14, i32 15>
  %i.ngy = tail call fast <2 x float> @llvm.pow.v2f32(<2 x float> %i.ngx, <2 x float> %i.ngn)
  %i.ngz = insertelement <16 x float> poison, float %i.ngq, i64 0
  %i.nha = shufflevector <8 x float> %i.ngs, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nhb = shufflevector <16 x float> %i.ngz, <16 x float> %i.nha, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nhc = shufflevector <4 x float> %i.ngu, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nhd = shufflevector <16 x float> %i.nhb, <16 x float> %i.nhc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.nhe = insertelement <16 x float> %i.nhd, float %i.ngw, i64 13
  %i.nhf = shufflevector <2 x float> %i.ngy, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nhg = shufflevector <16 x float> %i.nhe, <16 x float> %i.nhf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x float> %i.nhg, ptr %next.gep9041, align 4, !tbaa !59
  %index.next9043 = add nuw i64 %index9039, 16    ; 2 uses
  %i.nhh = icmp eq i64 %index.next9043, %n.vec9037
  br i1 %i.nhh, label %middle.block9044, label %vector.body9038, !llvm.loop !476

middle.block9044:                                 ; preds = %vector.body9038
  %cmp.n9045 = icmp eq i64 %i.nga, %n.vec9037
  br i1 %cmp.n9045, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %vec.epilog.iter.check9047

vec.epilog.iter.check9047:                        ; preds = %middle.block9044
  %min.epilog.iters.check9049 = icmp eq i64 %i.ngc, 0
  br i1 %min.epilog.iters.check9049, label %.lr.ph195.i52.i1885.preheader, label %vec.epilog.ph9050, !prof !818

vec.epilog.ph9050:                                ; preds = %vector.main.loop.iter.check9034, %vec.epilog.iter.check9047
  %vec.epilog.resume.val9051 = phi i64 [ %n.vec9037, %vec.epilog.iter.check9047 ], [ 0, %vector.main.loop.iter.check9034 ]
  %n.vec9052 = and i64 %i.nga, 8589934588         ; 4 uses
  %i.nhi = shl nuw nsw i64 %n.vec9052, 2          ; 2 uses
  %i.nhj = getelementptr i8, ptr %.2.lcssa.i51.i1884, i64 %i.nhi
  %i.nhk = getelementptr i8, ptr %.239.lcssa.i50.i1883, i64 %i.nhi
  %i.nhl = trunc i64 %n.vec9052 to i32
  %i.nhm = add i32 %.243.lcssa.i49.i1882, %i.nhl
  br label %vec.epilog.vector.body9053

vec.epilog.vector.body9053:                       ; preds = %vec.epilog.vector.body9053, %vec.epilog.ph9050
  %index9054 = phi i64 [ %vec.epilog.resume.val9051, %vec.epilog.ph9050 ], [ %index.next9058, %vec.epilog.vector.body9053 ] ; 2 uses
  %i.nhn = shl i64 %index9054, 2                  ; 2 uses
  %next.gep9055 = getelementptr i8, ptr %.2.lcssa.i51.i1884, i64 %i.nhn
  %next.gep9056 = getelementptr i8, ptr %.239.lcssa.i50.i1883, i64 %i.nhn
  %wide.load9057 = load <4 x float>, ptr %next.gep9055, align 4, !tbaa !59 ; 4 uses
  %i.nho = extractelement <4 x float> %wide.load9057, i64 0
  %i.nhp = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.nho, float %i.naj)
  %i.nhq = extractelement <4 x float> %wide.load9057, i64 1
  %i.nhr = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.nhq, float %i.naj)
  %i.nhs = extractelement <4 x float> %wide.load9057, i64 2
  %i.nht = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.nhs, float %i.naj)
  %i.nhu = extractelement <4 x float> %wide.load9057, i64 3
  %i.nhv = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.nhu, float %i.naj)
  %i.nhw = insertelement <4 x float> poison, float %i.nhp, i64 0
  %i.nhx = insertelement <4 x float> %i.nhw, float %i.nhr, i64 1
  %i.nhy = insertelement <4 x float> %i.nhx, float %i.nht, i64 2
  %i.nhz = insertelement <4 x float> %i.nhy, float %i.nhv, i64 3
  store <4 x float> %i.nhz, ptr %next.gep9056, align 4, !tbaa !59
  %index.next9058 = add nuw i64 %index9054, 4     ; 2 uses
  %i.nia = icmp eq i64 %index.next9058, %n.vec9052
  br i1 %i.nia, label %vec.epilog.middle.block9059, label %vec.epilog.vector.body9053, !llvm.loop !477

vec.epilog.middle.block9059:                      ; preds = %vec.epilog.vector.body9053
  %cmp.n9060 = icmp eq i64 %i.nga, %n.vec9052
  br i1 %cmp.n9060, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph195.i52.i1885.preheader

.lr.ph195.i52.i1885.preheader:                    ; preds = %iter.check9046, %vec.epilog.iter.check9047, %vec.epilog.middle.block9059
  %.3194.i53.i1886.ph = phi ptr [ %.2.lcssa.i51.i1884, %iter.check9046 ], [ %i.nge, %vec.epilog.iter.check9047 ], [ %i.nhj, %vec.epilog.middle.block9059 ] ; 2 uses
  %.340193.i54.i1887.ph = phi ptr [ %.239.lcssa.i50.i1883, %iter.check9046 ], [ %i.ngf, %vec.epilog.iter.check9047 ], [ %i.nhk, %vec.epilog.middle.block9059 ] ; 2 uses
  %.344192.i55.i1888.ph = phi i32 [ %.243.lcssa.i49.i1882, %iter.check9046 ], [ %i.ngh, %vec.epilog.iter.check9047 ], [ %i.nhm, %vec.epilog.middle.block9059 ] ; 4 uses
  %i.nib = sub i32 %i.mfi, %.344192.i55.i1888.ph
  %xtraiter12087 = and i32 %i.nib, 3              ; 2 uses
  %lcmp.mod12088.not = icmp eq i32 %xtraiter12087, 0
  br i1 %lcmp.mod12088.not, label %.lr.ph195.i52.i1885.prol.loopexit, label %.lr.ph195.i52.i1885.prol

.lr.ph195.i52.i1885.prol:                         ; preds = %.lr.ph195.i52.i1885.preheader, %.lr.ph195.i52.i1885.prol
  %.3194.i53.i1886.prol = phi ptr [ %i.nie, %.lr.ph195.i52.i1885.prol ], [ %.3194.i53.i1886.ph, %.lr.ph195.i52.i1885.preheader ] ; 2 uses
  %.340193.i54.i1887.prol = phi ptr [ %i.nif, %.lr.ph195.i52.i1885.prol ], [ %.340193.i54.i1887.ph, %.lr.ph195.i52.i1885.preheader ] ; 2 uses
  %.344192.i55.i1888.prol = phi i32 [ %i.nig, %.lr.ph195.i52.i1885.prol ], [ %.344192.i55.i1888.ph, %.lr.ph195.i52.i1885.preheader ]
  %prol.iter12089 = phi i32 [ %prol.iter12089.next, %.lr.ph195.i52.i1885.prol ], [ 0, %.lr.ph195.i52.i1885.preheader ]
  %i.nic = load float, ptr %.3194.i53.i1886.prol, align 4, !tbaa !59
  %i.nid = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.nic, float %i.naj)
  store float %i.nid, ptr %.340193.i54.i1887.prol, align 4, !tbaa !59
  %i.nie = getelementptr inbounds nuw i8, ptr %.3194.i53.i1886.prol, i64 4 ; 2 uses
  %i.nif = getelementptr inbounds nuw i8, ptr %.340193.i54.i1887.prol, i64 4 ; 2 uses
  %i.nig = add nuw nsw i32 %.344192.i55.i1888.prol, 1 ; 2 uses
  %prol.iter12089.next = add i32 %prol.iter12089, 1 ; 2 uses
  %prol.iter12089.cmp.not = icmp eq i32 %prol.iter12089.next, %xtraiter12087
  br i1 %prol.iter12089.cmp.not, label %.lr.ph195.i52.i1885.prol.loopexit, label %.lr.ph195.i52.i1885.prol, !llvm.loop !478

.lr.ph195.i52.i1885.prol.loopexit:                ; preds = %.lr.ph195.i52.i1885.prol, %.lr.ph195.i52.i1885.preheader
  %.3194.i53.i1886.unr = phi ptr [ %.3194.i53.i1886.ph, %.lr.ph195.i52.i1885.preheader ], [ %i.nie, %.lr.ph195.i52.i1885.prol ]
  %.340193.i54.i1887.unr = phi ptr [ %.340193.i54.i1887.ph, %.lr.ph195.i52.i1885.preheader ], [ %i.nif, %.lr.ph195.i52.i1885.prol ]
  %.344192.i55.i1888.unr = phi i32 [ %.344192.i55.i1888.ph, %.lr.ph195.i52.i1885.preheader ], [ %i.nig, %.lr.ph195.i52.i1885.prol ]
  %i.nih = sub i32 %.344192.i55.i1888.ph, %i.mfi
  %i.nii = icmp ugt i32 %i.nih, -4
  br i1 %i.nii, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph195.i52.i1885

.lr.ph188.i57.i1890:                              ; preds = %.preheader171.i44.i1877, %.lr.ph188.i57.i1890
  %.2187.i58.i1891 = phi ptr [ %i.nko, %.lr.ph188.i57.i1890 ], [ %.1.lcssa.i47.i1880, %.preheader171.i44.i1877 ] ; 2 uses
  %.239186.i59.i1892 = phi ptr [ %i.nkp, %.lr.ph188.i57.i1890 ], [ %.138.lcssa.i46.i1879, %.preheader171.i44.i1877 ] ; 2 uses
  %.243185.i60.i1893 = phi i32 [ %i.nkq, %.lr.ph188.i57.i1890 ], [ %.142.lcssa.i45.i1878, %.preheader171.i44.i1877 ]
  %i.nij = load <4 x float>, ptr %.2187.i58.i1891, align 1, !tbaa !60
  %i.nik = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nij, <4 x float> splat (float f0x00800000))
  %i.nil = bitcast <4 x float> %i.nik to <4 x i32> ; 2 uses
  %i.nim = lshr <4 x i32> %i.nil, splat (i32 23)
  %i.nin = and <4 x i32> %i.nil, splat (i32 -2139095041)
  %i.nio = or disjoint <4 x i32> %i.nin, splat (i32 1056964608)
  %i.nip = bitcast <4 x i32> %i.nio to <4 x float> ; 3 uses
  %i.niq = add nsw <4 x i32> %i.nim, splat (i32 -127)
  %i.nir = sitofp fast <4 x i32> %i.niq to <4 x float> ; 2 uses
  %i.nis = fadd fast <4 x float> %i.nir, splat (float 1.000000e+00)
  %i.nit = fcmp fast olt <4 x float> %i.nip, splat (float f0x3F3504F3) ; 2 uses
  %i.niu = select <4 x i1> %i.nit, <4 x float> %i.nip, <4 x float> zeroinitializer
  %i.niv = fadd fast <4 x float> %i.nip, splat (float -1.000000e+00)
  %i.niw = select fast <4 x i1> %i.nit, <4 x float> %i.nir, <4 x float> %i.nis ; 2 uses
  %i.nix = fadd fast <4 x float> %i.niv, %i.niu   ; 12 uses
  %i.niy = fmul fast <4 x float> %i.nix, %i.nix   ; 2 uses
  %i.niz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nix, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.nja = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.niz, <4 x float> nofpclass(nan inf) %i.nix, <4 x float> splat (float f0x3DEF251A))
  %i.njb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nja, <4 x float> nofpclass(nan inf) %i.nix, <4 x float> splat (float f0xBDFE5D4F))
  %i.njc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.njb, <4 x float> nofpclass(nan inf) %i.nix, <4 x float> splat (float f0x3E11E9BF))
  %i.njd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.njc, <4 x float> nofpclass(nan inf) %i.nix, <4 x float> splat (float f0xBE2AAE50))
  %i.nje = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.njd, <4 x float> nofpclass(nan inf) %i.nix, <4 x float> splat (float f0x3E4CCEAC))
  %i.njf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nje, <4 x float> nofpclass(nan inf) %i.nix, <4 x float> splat (float f0xBE7FFFFC))
  %i.njg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.njf, <4 x float> nofpclass(nan inf) %i.nix, <4 x float> splat (float f0x3EAAAAAA))
  %i.njh = fmul fast <4 x float> %i.niy, %i.nix
  %i.nji = fmul fast <4 x float> %i.njh, %i.njg
  %i.njj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.niw, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.nji)
  %i.njk = fneg fast <4 x float> %i.niy
  %i.njl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.njk, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.njj)
  %i.njm = fadd fast <4 x float> %i.njl, %i.nix
  %i.njn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.niw, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.njm)
  %i.njo = fmul fast <4 x float> %i.njn, %i.nay
  %i.njp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.njo, <4 x float> splat (float f0x42B0C0A5))
  %i.njq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.njp, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.njr = fmul fast <4 x float> %i.njq, splat (float f0x3FB8AA3B)
  %i.njs = fadd fast <4 x float> %i.njr, splat (float 5.000000e-01) ; 2 uses
  %i.njt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.njs)
  %i.nju = sitofp fast <4 x i32> %i.njt to <4 x float> ; 2 uses
  %i.njv = fcmp fast olt <4 x float> %i.njs, %i.nju
  %i.njw = select <4 x i1> %i.njv, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.njx = fsub fast <4 x float> %i.nju, %i.njw   ; 2 uses
  %i.njy = fneg fast <4 x float> %i.njx           ; 2 uses
  %i.njz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.njy, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.njq)
  %i.nka = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.njy, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.njz) ; 8 uses
  %i.nkb = fmul fast <4 x float> %i.nka, %i.nka
  %i.nkc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nka, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.nkd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nkc, <4 x float> nofpclass(nan inf) %i.nka, <4 x float> splat (float f0x3C088908))
  %i.nke = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nkd, <4 x float> nofpclass(nan inf) %i.nka, <4 x float> splat (float f0x3D2AA9C1))
  %i.nkf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nke, <4 x float> nofpclass(nan inf) %i.nka, <4 x float> splat (float f0x3E2AAAAA))
  %i.nkg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nkf, <4 x float> nofpclass(nan inf) %i.nka, <4 x float> splat (float 5.000000e-01))
  %i.nkh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nkg, <4 x float> nofpclass(nan inf) %i.nkb, <4 x float> nofpclass(nan inf) %i.nka)
  %i.nki = fadd fast <4 x float> %i.nkh, splat (float 1.000000e+00)
  %i.nkj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.njx)
  %i.nkk = shl <4 x i32> %i.nkj, splat (i32 23)
  %i.nkl = add <4 x i32> %i.nkk, splat (i32 1065353216)
  %i.nkm = bitcast <4 x i32> %i.nkl to <4 x float>
  %i.nkn = fmul fast <4 x float> %i.nki, %i.nkm
  store <4 x float> %i.nkn, ptr %.239186.i59.i1892, align 1, !tbaa !60
  %i.nko = getelementptr inbounds nuw i8, ptr %.2187.i58.i1891, i64 16 ; 2 uses
  %i.nkp = getelementptr inbounds nuw i8, ptr %.239186.i59.i1892, i64 16 ; 2 uses
  %i.nkq = add nuw nsw i32 %.243185.i60.i1893, 4  ; 3 uses
  %i.nkr = or disjoint i32 %i.nkq, 3
  %i.nks = icmp slt i32 %i.nkr, %i.mfi
  br i1 %i.nks, label %.lr.ph188.i57.i1890, label %.preheader.i48.i1881, !llvm.loop !479

.lr.ph195.i52.i1885:                              ; preds = %.lr.ph195.i52.i1885.prol.loopexit, %.lr.ph195.i52.i1885
  %.3194.i53.i1886 = phi ptr [ %i.nlh, %.lr.ph195.i52.i1885 ], [ %.3194.i53.i1886.unr, %.lr.ph195.i52.i1885.prol.loopexit ] ; 5 uses
  %.340193.i54.i1887 = phi ptr [ %i.nli, %.lr.ph195.i52.i1885 ], [ %.340193.i54.i1887.unr, %.lr.ph195.i52.i1885.prol.loopexit ] ; 5 uses
  %.344192.i55.i1888 = phi i32 [ %i.nlj, %.lr.ph195.i52.i1885 ], [ %.344192.i55.i1888.unr, %.lr.ph195.i52.i1885.prol.loopexit ]
  %i.nkt = load float, ptr %.3194.i53.i1886, align 4, !tbaa !59
  %i.nku = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.nkt, float %i.naj)
  store float %i.nku, ptr %.340193.i54.i1887, align 4, !tbaa !59
  %i.nkv = getelementptr inbounds nuw i8, ptr %.3194.i53.i1886, i64 4
  %i.nkw = getelementptr inbounds nuw i8, ptr %.340193.i54.i1887, i64 4
  %i.nkx = load float, ptr %i.nkv, align 4, !tbaa !59
  %i.nky = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.nkx, float %i.naj)
  store float %i.nky, ptr %i.nkw, align 4, !tbaa !59
  %i.nkz = getelementptr inbounds nuw i8, ptr %.3194.i53.i1886, i64 8
  %i.nla = getelementptr inbounds nuw i8, ptr %.340193.i54.i1887, i64 8
  %i.nlb = load float, ptr %i.nkz, align 4, !tbaa !59
  %i.nlc = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.nlb, float %i.naj)
  store float %i.nlc, ptr %i.nla, align 4, !tbaa !59
  %i.nld = getelementptr inbounds nuw i8, ptr %.3194.i53.i1886, i64 12
  %i.nle = getelementptr inbounds nuw i8, ptr %.340193.i54.i1887, i64 12
  %i.nlf = load float, ptr %i.nld, align 4, !tbaa !59
  %i.nlg = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.nlf, float %i.naj)
  store float %i.nlg, ptr %i.nle, align 4, !tbaa !59
  %i.nlh = getelementptr inbounds nuw i8, ptr %.3194.i53.i1886, i64 16
  %i.nli = getelementptr inbounds nuw i8, ptr %.340193.i54.i1887, i64 16
  %i.nlj = add nuw nsw i32 %.344192.i55.i1888, 4  ; 2 uses
  %exitcond.not.i56.i1889.3 = icmp eq i32 %i.nlj, %i.mfi
  br i1 %exitcond.not.i56.i1889.3, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph195.i52.i1885, !llvm.loop !480

bb.jl:                                            ; preds = %bb.je, %bb.ir
  %i.nlk = icmp eq i32 %6, 1
  br i1 %i.nlk, label %bb.jm, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

bb.jm:                                            ; preds = %bb.jl
  %i.nll = icmp eq i32 %3, %4
  br i1 %i.nll, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  %i.nlm = icmp eq i32 %.sroa.speculated.i1756, 16
  %i.nln = icmp sgt i32 %.sroa.speculated95.i1755, 0
  %or.cond.i.i1819 = and i1 %i.nln, %i.nlm
  br i1 %or.cond.i.i1819, label %.lr.ph.i74.i1867, label %.loopexit290.i.i1820

.lr.ph.i74.i1867:                                 ; preds = %bb.jn, %.lr.ph.i74.i1867
  %.0294.i.i1868 = phi ptr [ %i.nnu, %.lr.ph.i74.i1867 ], [ %0, %bb.jn ] ; 2 uses
  %.067293.i.i1869 = phi ptr [ %i.nnv, %.lr.ph.i74.i1867 ], [ %1, %bb.jn ] ; 2 uses
  %.075292.i.i1870 = phi ptr [ %i.nnw, %.lr.ph.i74.i1867 ], [ %2, %bb.jn ] ; 2 uses
  %.086291.i.i1871 = phi i32 [ %i.nnx, %.lr.ph.i74.i1867 ], [ 0, %bb.jn ]
  %i.nlo = load <16 x float>, ptr %.0294.i.i1868, align 1, !tbaa !60
  %i.nlp = load float, ptr %.067293.i.i1869, align 4, !tbaa !59
  %i.nlq = insertelement <16 x float> poison, float %i.nlp, i64 0
  %i.nlr = shufflevector <16 x float> %i.nlq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.nls = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.nlr, <16 x float> splat (float f0x00800000), i32 4)
  %i.nlt = bitcast <16 x float> %i.nls to <16 x i32> ; 2 uses
  %i.nlu = lshr <16 x i32> %i.nlt, splat (i32 23)
  %i.nlv = and <16 x i32> %i.nlt, splat (i32 -2139095041)
  %i.nlw = or disjoint <16 x i32> %i.nlv, splat (i32 1056964608)
  %i.nlx = bitcast <16 x i32> %i.nlw to <16 x float> ; 3 uses
  %i.nly = add nsw <16 x i32> %i.nlu, splat (i32 -127)
  %i.nlz = sitofp fast <16 x i32> %i.nly to <16 x float> ; 2 uses
  %i.nma = fadd fast <16 x float> %i.nlz, splat (float 1.000000e+00)
  %i.nmb = fcmp fast olt <16 x float> %i.nlx, splat (float f0x3F3504F3) ; 2 uses
  %i.nmc = fadd fast <16 x float> %i.nlx, splat (float -1.000000e+00)
  %i.nmd = select fast <16 x i1> %i.nmb, <16 x float> %i.nlz, <16 x float> %i.nma ; 2 uses
  %i.nme = select fast <16 x i1> %i.nmb, <16 x float> %i.nlx, <16 x float> zeroinitializer
  %i.nmf = fadd fast <16 x float> %i.nmc, %i.nme  ; 12 uses
  %i.nmg = fmul fast <16 x float> %i.nmf, %i.nmf  ; 2 uses
  %i.nmh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nmf, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.nmi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nmh, <16 x float> nofpclass(nan inf) %i.nmf, <16 x float> splat (float f0x3DEF251A))
  %i.nmj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nmi, <16 x float> nofpclass(nan inf) %i.nmf, <16 x float> splat (float f0xBDFE5D4F))
  %i.nmk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nmj, <16 x float> nofpclass(nan inf) %i.nmf, <16 x float> splat (float f0x3E11E9BF))
  %i.nml = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nmk, <16 x float> nofpclass(nan inf) %i.nmf, <16 x float> splat (float f0xBE2AAE50))
  %i.nmm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nml, <16 x float> nofpclass(nan inf) %i.nmf, <16 x float> splat (float f0x3E4CCEAC))
  %i.nmn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nmm, <16 x float> nofpclass(nan inf) %i.nmf, <16 x float> splat (float f0xBE7FFFFC))
  %i.nmo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nmn, <16 x float> nofpclass(nan inf) %i.nmf, <16 x float> splat (float f0x3EAAAAAA))
  %i.nmp = fmul fast <16 x float> %i.nmg, %i.nmf
  %i.nmq = fmul fast <16 x float> %i.nmp, %i.nmo
  %i.nmr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nmd, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.nmq)
  %i.nms = fneg fast <16 x float> %i.nmg
  %i.nmt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.nms, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.nmr)
  %i.nmu = fadd fast <16 x float> %i.nmt, %i.nmf
  %i.nmv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nmd, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.nmu)
  %i.nmw = fmul fast <16 x float> %i.nmv, %i.nlo
  %i.nmx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.nmw, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.nmy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.nmx, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.nmz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nmy, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.nna = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.nmz, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii:bb.a
  %i.pgw = shufflevector <8 x float> %i.pgu, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %bb.kf
  %i.pgx = phi <8 x float> [ %i.pgr, %bb.kf ], [ %i.pgu, %bb.kg ] ; 4 uses
  %i.pgy = phi <4 x float> [ %i.pgo, %bb.kf ], [ %i.pgv, %bb.kg ] ; 4 uses
  %i.pgz = phi fast <16 x float> [ %i.pgt, %bb.kf ], [ %i.pgw, %bb.kg ] ; 4 uses
  %i.pha = icmp sgt i32 %i.oyd, 15
  br i1 %i.pha, label %.lr.ph.i40.i, label %.preheader128.i.i

.lr.ph.i40.i:                                     ; preds = %bb.kh
  %i.phb = fcmp fast one <16 x float> %i.pgz, zeroinitializer
  %i.phc = fcmp fast olt <16 x float> %i.pgz, zeroinitializer
  %i.phd = bitcast <16 x float> %i.pgz to <16 x i32>
  %i.phe = icmp slt <16 x i32> %i.phd, zeroinitializer
  %i.phf = select fast <16 x i1> %i.phe, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.phg = fdiv fast <16 x float> splat (float 1.000000e+00), %i.pgz
  br label %bb.ki

.preheader128.loopexit.i.i:                       ; preds = %bb.ki
  %i.phh = and i32 %i.oyd, 2147483632
  br label %.preheader128.i.i

.preheader128.i.i:                                ; preds = %.preheader128.loopexit.i.i, %bb.kh
  %.041.lcssa.i.i2002 = phi i32 [ 0, %bb.kh ], [ %i.phh, %.preheader128.loopexit.i.i ] ; 3 uses
  %.037.lcssa.i.i2003 = phi ptr [ %2, %bb.kh ], [ %i.pix, %.preheader128.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i34.i2004 = phi ptr [ %0, %bb.kh ], [ %i.piw, %.preheader128.loopexit.i.i ] ; 2 uses
  %i.phi = or disjoint i32 %.041.lcssa.i.i2002, 7
  %i.phj = icmp slt i32 %i.phi, %i.oyd
  br i1 %i.phj, label %.lr.ph137.i.i2014, label %.preheader127.i.i

.lr.ph137.i.i2014:                                ; preds = %.preheader128.i.i
  %i.phk = fcmp fast ueq <8 x float> %i.pgx, zeroinitializer ; 2 uses
  %i.phl = fcmp fast olt <8 x float> %i.pgx, zeroinitializer
  %i.phm = bitcast <8 x float> %i.pgx to <8 x i32>
  %isneg.inv124.i.i = icmp slt <8 x i32> %i.phm, zeroinitializer
  %i.phn = select <8 x i1> %isneg.inv124.i.i, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.pho = fdiv fast <8 x float> splat (float 1.000000e+00), %i.pgx
  br label %bb.kj

bb.ki:                                            ; preds = %bb.ki, %.lr.ph.i40.i
  %.0131.i.i = phi ptr [ %0, %.lr.ph.i40.i ], [ %i.piw, %bb.ki ] ; 2 uses
  %.037130.i.i = phi ptr [ %2, %.lr.ph.i40.i ], [ %i.pix, %bb.ki ] ; 2 uses
  %.041129.i.i = phi i32 [ 0, %.lr.ph.i40.i ], [ %i.piy, %bb.ki ]
  %i.php = load <16 x float>, ptr %.0131.i.i, align 1, !tbaa !60 ; 4 uses
  %i.phq = fcmp fast one <16 x float> %i.php, zeroinitializer
  %i.phr = fcmp fast olt <16 x float> %i.php, zeroinitializer
  %i.phs = select fast <16 x i1> %i.phr, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.pht = select fast <16 x i1> %i.phc, <16 x float> %i.phs, <16 x float> zeroinitializer
  %i.phu = fmul fast <16 x float> %i.php, %i.phg  ; 2 uses
  %i.phv = bitcast <16 x float> %i.phu to <16 x i32>
  %i.phw = and <16 x i32> %i.phv, splat (i32 -2147483648)
  %i.phx = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.phu) ; 3 uses
  %i.phy = fcmp fast ogt <16 x float> %i.phx, splat (float 1.000000e+00) ; 2 uses
  %i.phz = select fast <16 x i1> %i.phy, <16 x float> splat (float -1.000000e+00), <16 x float> %i.phx
  %i.pia = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.phx, <16 x float> splat (float 1.000000e+00))
  %i.pib = fdiv fast <16 x float> %i.phz, %i.pia  ; 3 uses
  %i.pic = fmul fast <16 x float> %i.pib, %i.pib  ; 3 uses
  %i.pid = fmul fast <16 x float> %i.pic, %i.pic  ; 7 uses
  %i.pie = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pid, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.pif = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pid, <16 x float> nofpclass(nan inf) %i.pie, <16 x float> splat (float f0xBE117200))
  %i.pig = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pid, <16 x float> nofpclass(nan inf) %i.pif, <16 x float> splat (float f0xBEAAAA53))
  %i.pih = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pid, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.pii = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pid, <16 x float> nofpclass(nan inf) %i.pih, <16 x float> splat (float f0x3DD9ED24))
  %i.pij = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pid, <16 x float> nofpclass(nan inf) %i.pii, <16 x float> splat (float f0x3E4CB974))
  %i.pik = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pid, <16 x float> nofpclass(nan inf) %i.pij, <16 x float> splat (float 1.000000e+00))
  %i.pil = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pic, <16 x float> nofpclass(nan inf) %i.pig, <16 x float> nofpclass(nan inf) %i.pik)
  %i.pim = fmul fast <16 x float> %i.pil, %i.pib
  %i.pin = select fast <16 x i1> %i.phy, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.pio = fadd fast <16 x float> %i.pim, %i.pin
  %i.pip = bitcast <16 x float> %i.pio to <16 x i32>
  %i.piq = or <16 x i32> %i.phw, %i.pip
  %i.pir = bitcast <16 x i32> %i.piq to <16 x float>
  %i.pis = fadd fast <16 x float> %i.pht, %i.pir
  %i.pit = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.php)
  %i.piu = select <16 x i1> %i.phb, <16 x float> %i.pis, <16 x float> %i.pit
  %i.piv = select <16 x i1> %i.phq, <16 x float> %i.piu, <16 x float> %i.phf
  store <16 x float> %i.piv, ptr %.037130.i.i, align 1, !tbaa !60
  %i.piw = getelementptr inbounds nuw i8, ptr %.0131.i.i, i64 64 ; 2 uses
  %i.pix = getelementptr inbounds nuw i8, ptr %.037130.i.i, i64 64 ; 2 uses
  %i.piy = add nuw nsw i32 %.041129.i.i, 16       ; 2 uses
  %i.piz = or disjoint i32 %i.piy, 15
  %i.pja = icmp slt i32 %i.piz, %i.oyd
  br i1 %i.pja, label %bb.ki, label %.preheader128.loopexit.i.i, !llvm.loop !503

.preheader127.i.i:                                ; preds = %bb.kj, %.preheader128.i.i
  %.142.lcssa.i.i2005 = phi i32 [ %.041.lcssa.i.i2002, %.preheader128.i.i ], [ %i.pkw, %bb.kj ] ; 3 uses
  %.138.lcssa.i.i2006 = phi ptr [ %.037.lcssa.i.i2003, %.preheader128.i.i ], [ %i.pkv, %bb.kj ] ; 2 uses
  %.1.lcssa.i35.i2007 = phi ptr [ %.0.lcssa.i34.i2004, %.preheader128.i.i ], [ %i.pku, %bb.kj ] ; 2 uses
  %i.pjb = or disjoint i32 %.142.lcssa.i.i2005, 3
  %i.pjc = icmp slt i32 %i.pjb, %i.oyd
  br i1 %i.pjc, label %.lr.ph144.i.i2013, label %.preheader.i36.i2008

.lr.ph144.i.i2013:                                ; preds = %.preheader127.i.i
  %i.pjd = fcmp fast oeq <4 x float> %i.pgy, zeroinitializer ; 2 uses
  %i.pje = fcmp fast olt <4 x float> %i.pgy, zeroinitializer
  %i.pjf = bitcast <4 x float> %i.pgy to <4 x i32>
  %isneg.inv.i39.i = icmp slt <4 x i32> %i.pjf, zeroinitializer
  %i.pjg = select <4 x i1> %isneg.inv.i39.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.pjh = fdiv fast <4 x float> splat (float 1.000000e+00), %i.pgy
  br label %bb.kk

bb.kj:                                            ; preds = %bb.kj, %.lr.ph137.i.i2014
  %.1136.i.i = phi ptr [ %.0.lcssa.i34.i2004, %.lr.ph137.i.i2014 ], [ %i.pku, %bb.kj ] ; 2 uses
  %.138135.i.i = phi ptr [ %.037.lcssa.i.i2003, %.lr.ph137.i.i2014 ], [ %i.pkv, %bb.kj ] ; 2 uses
  %.142134.i.i = phi i32 [ %.041.lcssa.i.i2002, %.lr.ph137.i.i2014 ], [ %i.pkw, %bb.kj ]
  %i.pji = load <8 x float>, ptr %.1136.i.i, align 1, !tbaa !60 ; 4 uses
  %i.pjj = fcmp fast ueq <8 x float> %i.pji, zeroinitializer ; 2 uses
  %.not126.i.i = or <8 x i1> %i.phk, %i.pjj
  %i.pjk = bitcast <8 x float> %i.pji to <8 x i32>
  %i.pjl = and <8 x i32> %i.pjk, splat (i32 -2147483648)
  %i.pjm = fcmp fast olt <8 x float> %i.pji, zeroinitializer
  %i.pjn = select <8 x i1> %i.pjm, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.pjo = select <8 x i1> %i.phl, <8 x float> %i.pjn, <8 x float> zeroinitializer
  %i.pjp = fmul fast <8 x float> %i.pji, %i.pho   ; 2 uses
  %i.pjq = bitcast <8 x float> %i.pjp to <8 x i32>
  %i.pjr = and <8 x i32> %i.pjq, splat (i32 -2147483648)
  %i.pjs = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.pjp) ; 3 uses
  %i.pjt = fcmp fast ogt <8 x float> %i.pjs, splat (float 1.000000e+00) ; 2 uses
  %i.pju = select <8 x i1> %i.pjt, <8 x float> splat (float -1.000000e+00), <8 x float> %i.pjs
  %i.pjv = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.pjs, <8 x float> splat (float 1.000000e+00))
  %i.pjw = fdiv fast <8 x float> %i.pju, %i.pjv   ; 3 uses
  %i.pjx = fmul fast <8 x float> %i.pjw, %i.pjw   ; 3 uses
  %i.pjy = fmul fast <8 x float> %i.pjx, %i.pjx   ; 7 uses
  %i.pjz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pjy, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.pka = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pjy, <8 x float> nofpclass(nan inf) %i.pjz, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.pkb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pjy, <8 x float> nofpclass(nan inf) %i.pka, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.pkc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pjy, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.pkd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pjy, <8 x float> nofpclass(nan inf) %i.pkc, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.pke = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pjy, <8 x float> nofpclass(nan inf) %i.pkd, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.pkf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pjy, <8 x float> nofpclass(nan inf) %i.pke, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.pkg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pjx, <8 x float> nofpclass(nan inf) %i.pkb, <8 x float> nofpclass(nan inf) %i.pkf)
  %i.pkh = fmul fast <8 x float> %i.pkg, %i.pjw
  %i.pki = select <8 x i1> %i.pjt, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.pkj = fadd fast <8 x float> %i.pkh, %i.pki
  %i.pkk = bitcast <8 x float> %i.pkj to <8 x i32>
  %i.pkl = or <8 x i32> %i.pjr, %i.pkk
  %i.pkm = bitcast <8 x i32> %i.pkl to <8 x float>
  %i.pkn = fadd fast <8 x float> %i.pjo, %i.pkm
  %i.pko = or disjoint <8 x i32> %i.pjl, splat (i32 1070141403)
  %i.pkp = bitcast <8 x float> %i.pkn to <8 x i32>
  %i.pkq = select <8 x i1> %.not126.i.i, <8 x i32> zeroinitializer, <8 x i32> %i.pkp
  %i.pkr = select <8 x i1> %i.phk, <8 x i32> %i.pko, <8 x i32> zeroinitializer
  %i.pks = select <8 x i1> %i.pjj, <8 x i32> %i.phn, <8 x i32> %i.pkr
  %i.pkt = or <8 x i32> %i.pkq, %i.pks
  store <8 x i32> %i.pkt, ptr %.138135.i.i, align 1, !tbaa !60
  %i.pku = getelementptr inbounds nuw i8, ptr %.1136.i.i, i64 32 ; 2 uses
  %i.pkv = getelementptr inbounds nuw i8, ptr %.138135.i.i, i64 32 ; 2 uses
  %i.pkw = add nuw nsw i32 %.142134.i.i, 8        ; 3 uses
  %i.pkx = or disjoint i32 %i.pkw, 7
  %i.pky = icmp slt i32 %i.pkx, %i.oyd
  br i1 %i.pky, label %bb.kj, label %.preheader127.i.i, !llvm.loop !504

.preheader.i36.i2008:                             ; preds = %bb.kk, %.preheader127.i.i
  %.243.lcssa.i.i2009 = phi i32 [ %.142.lcssa.i.i2005, %.preheader127.i.i ], [ %i.ppa, %bb.kk ] ; 5 uses
  %.239.lcssa.i.i2010 = phi ptr [ %.138.lcssa.i.i2006, %.preheader127.i.i ], [ %i.poz, %bb.kk ] ; 6 uses
  %.2.lcssa.i37.i2011 = phi ptr [ %.1.lcssa.i35.i2007, %.preheader127.i.i ], [ %i.poy, %bb.kk ] ; 6 uses
  %i.pkz = icmp slt i32 %.243.lcssa.i.i2009, %i.oyd
  br i1 %i.pkz, label %iter.check8957, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

iter.check8957:                                   ; preds = %.preheader.i36.i2008
  %.239.lcssa.i.i20108941 = ptrtoaddr ptr %.239.lcssa.i.i2010 to i64
  %.2.lcssa.i37.i20118940 = ptrtoaddr ptr %.2.lcssa.i37.i2011 to i64
  %i.pla = xor i32 %.243.lcssa.i.i2009, -1
  %i.plb = add i32 %i.oyd, %i.pla                 ; 3 uses
  %i.plc = zext i32 %i.plb to i64
  %i.pld = add nuw nsw i64 %i.plc, 1              ; 5 uses
  %min.iters.check8942 = icmp ult i32 %i.plb, 3
  %i.ple = sub i64 %.2.lcssa.i37.i20118940, %.239.lcssa.i.i20108941
  %diff.check8944 = icmp ugt i64 %i.ple, -64
  %or.cond10452 = select i1 %min.iters.check8942, i1 true, i1 %diff.check8944
  br i1 %or.cond10452, label %.lr.ph151.i.i.preheader, label %vector.main.loop.iter.check8945

vector.main.loop.iter.check8945:                  ; preds = %iter.check8957
  %min.iters.check8946 = icmp ult i32 %i.plb, 15
  br i1 %min.iters.check8946, label %vec.epilog.ph8961, label %vector.ph8947

vector.ph8947:                                    ; preds = %vector.main.loop.iter.check8945
  %i.plf = and i64 %i.pld, 12
  %n.vec8948 = and i64 %i.pld, 8589934576         ; 5 uses
  %i.plg = shl nuw nsw i64 %n.vec8948, 2          ; 2 uses
  %i.plh = getelementptr i8, ptr %.2.lcssa.i37.i2011, i64 %i.plg
  %i.pli = getelementptr i8, ptr %.239.lcssa.i.i2010, i64 %i.plg
  %i.plj = trunc i64 %n.vec8948 to i32
  %i.plk = add i32 %.243.lcssa.i.i2009, %i.plj
  %i.pll = insertelement <8 x float> poison, float %i.pgj, i64 0
  %i.plm = shufflevector <8 x float> %i.pll, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pln = insertelement <4 x float> poison, float %i.pgj, i64 0
  %i.plo = shufflevector <4 x float> %i.pln, <4 x float> poison, <4 x i32> zeroinitializer
  %i.plp = insertelement <2 x float> poison, float %i.pgj, i64 0
  %i.plq = shufflevector <2 x float> %i.plp, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body8949

vector.body8949:                                  ; preds = %vector.ph8947, %vector.body8949
  %index8950 = phi i64 [ 0, %vector.ph8947 ], [ %index.next8954, %vector.body8949 ] ; 2 uses
  %i.plr = shl i64 %index8950, 2                  ; 2 uses
  %next.gep8951 = getelementptr i8, ptr %.2.lcssa.i37.i2011, i64 %i.plr
  %next.gep8952 = getelementptr i8, ptr %.239.lcssa.i.i2010, i64 %i.plr
  %wide.load8953 = load <16 x float>, ptr %next.gep8951, align 4, !tbaa !59 ; 5 uses
  %i.pls = extractelement <16 x float> %wide.load8953, i64 0
  %i.plt = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.pls, float %i.pgj)
  %i.plu = shufflevector <16 x float> %wide.load8953, <16 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %i.plv = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.plu, <8 x float> %i.plm)
  %i.plw = shufflevector <16 x float> %wide.load8953, <16 x float> poison, <4 x i32> <i32 9, i32 10, i32 11, i32 12>
  %i.plx = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.plw, <4 x float> %i.plo)
  %i.ply = extractelement <16 x float> %wide.load8953, i64 13
  %i.plz = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ply, float %i.pgj)
  %i.pma = shufflevector <16 x float> %wide.load8953, <16 x float> poison, <2 x i32> <i32 14, i32 15>
  %i.pmb = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.pma, <2 x float> %i.plq)
  %i.pmc = insertelement <16 x float> poison, float %i.plt, i64 0
  %i.pmd = shufflevector <8 x float> %i.plv, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pme = shufflevector <16 x float> %i.pmc, <16 x float> %i.pmd, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pmf = shufflevector <4 x float> %i.plx, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pmg = shufflevector <16 x float> %i.pme, <16 x float> %i.pmf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.pmh = insertelement <16 x float> %i.pmg, float %i.plz, i64 13
  %i.pmi = shufflevector <2 x float> %i.pmb, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pmj = shufflevector <16 x float> %i.pmh, <16 x float> %i.pmi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x float> %i.pmj, ptr %next.gep8952, align 4, !tbaa !59
  %index.next8954 = add nuw i64 %index8950, 16    ; 2 uses
  %i.pmk = icmp eq i64 %index.next8954, %n.vec8948
  br i1 %i.pmk, label %middle.block8955, label %vector.body8949, !llvm.loop !505

middle.block8955:                                 ; preds = %vector.body8949
  %cmp.n8956 = icmp eq i64 %i.pld, %n.vec8948
  br i1 %cmp.n8956, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %vec.epilog.iter.check8958

vec.epilog.iter.check8958:                        ; preds = %middle.block8955
  %min.epilog.iters.check8960 = icmp eq i64 %i.plf, 0
  br i1 %min.epilog.iters.check8960, label %.lr.ph151.i.i.preheader, label %vec.epilog.ph8961, !prof !818

vec.epilog.ph8961:                                ; preds = %vector.main.loop.iter.check8945, %vec.epilog.iter.check8958
  %vec.epilog.resume.val8962 = phi i64 [ %n.vec8948, %vec.epilog.iter.check8958 ], [ 0, %vector.main.loop.iter.check8945 ]
  %n.vec8963 = and i64 %i.pld, 8589934588         ; 4 uses
  %i.pml = shl nuw nsw i64 %n.vec8963, 2          ; 2 uses
  %i.pmm = getelementptr i8, ptr %.2.lcssa.i37.i2011, i64 %i.pml
  %i.pmn = getelementptr i8, ptr %.239.lcssa.i.i2010, i64 %i.pml
  %i.pmo = trunc i64 %n.vec8963 to i32
  %i.pmp = add i32 %.243.lcssa.i.i2009, %i.pmo
  br label %vec.epilog.vector.body8964

vec.epilog.vector.body8964:                       ; preds = %vec.epilog.vector.body8964, %vec.epilog.ph8961
  %index8965 = phi i64 [ %vec.epilog.resume.val8962, %vec.epilog.ph8961 ], [ %index.next8969, %vec.epilog.vector.body8964 ] ; 2 uses
  %i.pmq = shl i64 %index8965, 2                  ; 2 uses
  %next.gep8966 = getelementptr i8, ptr %.2.lcssa.i37.i2011, i64 %i.pmq
  %next.gep8967 = getelementptr i8, ptr %.239.lcssa.i.i2010, i64 %i.pmq
  %wide.load8968 = load <4 x float>, ptr %next.gep8966, align 4, !tbaa !59 ; 4 uses
  %i.pmr = extractelement <4 x float> %wide.load8968, i64 0
  %i.pms = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.pmr, float %i.pgj)
  %i.pmt = extractelement <4 x float> %wide.load8968, i64 1
  %i.pmu = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.pmt, float %i.pgj)
  %i.pmv = extractelement <4 x float> %wide.load8968, i64 2
  %i.pmw = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.pmv, float %i.pgj)
  %i.pmx = extractelement <4 x float> %wide.load8968, i64 3
  %i.pmy = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.pmx, float %i.pgj)
  %i.pmz = insertelement <4 x float> poison, float %i.pms, i64 0
  %i.pna = insertelement <4 x float> %i.pmz, float %i.pmu, i64 1
  %i.pnb = insertelement <4 x float> %i.pna, float %i.pmw, i64 2
  %i.pnc = insertelement <4 x float> %i.pnb, float %i.pmy, i64 3
  store <4 x float> %i.pnc, ptr %next.gep8967, align 4, !tbaa !59
  %index.next8969 = add nuw i64 %index8965, 4     ; 2 uses
  %i.pnd = icmp eq i64 %index.next8969, %n.vec8963
  br i1 %i.pnd, label %vec.epilog.middle.block8970, label %vec.epilog.vector.body8964, !llvm.loop !506

vec.epilog.middle.block8970:                      ; preds = %vec.epilog.vector.body8964
  %cmp.n8971 = icmp eq i64 %i.pld, %n.vec8963
  br i1 %cmp.n8971, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph151.i.i.preheader

.lr.ph151.i.i.preheader:                          ; preds = %iter.check8957, %vec.epilog.iter.check8958, %vec.epilog.middle.block8970
  %.3150.i.i.ph = phi ptr [ %.2.lcssa.i37.i2011, %iter.check8957 ], [ %i.plh, %vec.epilog.iter.check8958 ], [ %i.pmm, %vec.epilog.middle.block8970 ] ; 2 uses
  %.340149.i.i.ph = phi ptr [ %.239.lcssa.i.i2010, %iter.check8957 ], [ %i.pli, %vec.epilog.iter.check8958 ], [ %i.pmn, %vec.epilog.middle.block8970 ] ; 2 uses
  %.344148.i.i.ph = phi i32 [ %.243.lcssa.i.i2009, %iter.check8957 ], [ %i.plk, %vec.epilog.iter.check8958 ], [ %i.pmp, %vec.epilog.middle.block8970 ] ; 4 uses
  %i.pne = sub i32 %i.oyd, %.344148.i.i.ph
  %xtraiter12081 = and i32 %i.pne, 3              ; 2 uses
  %lcmp.mod12082.not = icmp eq i32 %xtraiter12081, 0
  br i1 %lcmp.mod12082.not, label %.lr.ph151.i.i.prol.loopexit, label %.lr.ph151.i.i.prol

.lr.ph151.i.i.prol:                               ; preds = %.lr.ph151.i.i.preheader, %.lr.ph151.i.i.prol
  %.3150.i.i.prol = phi ptr [ %i.pnh, %.lr.ph151.i.i.prol ], [ %.3150.i.i.ph, %.lr.ph151.i.i.preheader ] ; 2 uses
  %.340149.i.i.prol = phi ptr [ %i.pni, %.lr.ph151.i.i.prol ], [ %.340149.i.i.ph, %.lr.ph151.i.i.preheader ] ; 2 uses
  %.344148.i.i.prol = phi i32 [ %i.pnj, %.lr.ph151.i.i.prol ], [ %.344148.i.i.ph, %.lr.ph151.i.i.preheader ]
  %prol.iter12083 = phi i32 [ %prol.iter12083.next, %.lr.ph151.i.i.prol ], [ 0, %.lr.ph151.i.i.preheader ]
  %i.pnf = load float, ptr %.3150.i.i.prol, align 4, !tbaa !59
  %i.png = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.pnf, float %i.pgj)
  store float %i.png, ptr %.340149.i.i.prol, align 4, !tbaa !59
  %i.pnh = getelementptr inbounds nuw i8, ptr %.3150.i.i.prol, i64 4 ; 2 uses
  %i.pni = getelementptr inbounds nuw i8, ptr %.340149.i.i.prol, i64 4 ; 2 uses
  %i.pnj = add nuw nsw i32 %.344148.i.i.prol, 1   ; 2 uses
  %prol.iter12083.next = add i32 %prol.iter12083, 1 ; 2 uses
  %prol.iter12083.cmp.not = icmp eq i32 %prol.iter12083.next, %xtraiter12081
  br i1 %prol.iter12083.cmp.not, label %.lr.ph151.i.i.prol.loopexit, label %.lr.ph151.i.i.prol, !llvm.loop !507

.lr.ph151.i.i.prol.loopexit:                      ; preds = %.lr.ph151.i.i.prol, %.lr.ph151.i.i.preheader
  %.3150.i.i.unr = phi ptr [ %.3150.i.i.ph, %.lr.ph151.i.i.preheader ], [ %i.pnh, %.lr.ph151.i.i.prol ]
  %.340149.i.i.unr = phi ptr [ %.340149.i.i.ph, %.lr.ph151.i.i.preheader ], [ %i.pni, %.lr.ph151.i.i.prol ]
  %.344148.i.i.unr = phi i32 [ %.344148.i.i.ph, %.lr.ph151.i.i.preheader ], [ %i.pnj, %.lr.ph151.i.i.prol ]
  %i.pnk = sub i32 %.344148.i.i.ph, %i.oyd
  %i.pnl = icmp ugt i32 %i.pnk, -4
  br i1 %i.pnl, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph151.i.i

bb.kk:                                            ; preds = %bb.kk, %.lr.ph144.i.i2013
  %.2143.i.i = phi ptr [ %.1.lcssa.i35.i2007, %.lr.ph144.i.i2013 ], [ %i.poy, %bb.kk ] ; 2 uses
  %.239142.i.i = phi ptr [ %.138.lcssa.i.i2006, %.lr.ph144.i.i2013 ], [ %i.poz, %bb.kk ] ; 2 uses
  %.243141.i.i = phi i32 [ %.142.lcssa.i.i2005, %.lr.ph144.i.i2013 ], [ %i.ppa, %bb.kk ]
  %i.pnm = load <4 x float>, ptr %.2143.i.i, align 1, !tbaa !60 ; 4 uses
  %i.pnn = fcmp fast oeq <4 x float> %i.pnm, zeroinitializer ; 2 uses
  %.not123.i.i = or <4 x i1> %i.pjd, %i.pnn
  %i.pno = bitcast <4 x float> %i.pnm to <4 x i32>
  %i.pnp = and <4 x i32> %i.pno, splat (i32 -2147483648)
  %i.pnq = fcmp fast olt <4 x float> %i.pnm, zeroinitializer
  %i.pnr = select <4 x i1> %i.pnq, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.pns = select <4 x i1> %i.pje, <4 x float> %i.pnr, <4 x float> zeroinitializer
  %i.pnt = fmul fast <4 x float> %i.pnm, %i.pjh   ; 2 uses
  %i.pnu = bitcast <4 x float> %i.pnt to <4 x i32>
  %i.pnv = and <4 x i32> %i.pnu, splat (i32 -2147483648)
  %i.pnw = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pnt) ; 3 uses
  %i.pnx = fcmp fast ogt <4 x float> %i.pnw, splat (float 1.000000e+00) ; 2 uses
  %i.pny = select <4 x i1> %i.pnx, <4 x float> splat (float -1.000000e+00), <4 x float> %i.pnw
  %i.pnz = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.pnw, <4 x float> splat (float 1.000000e+00))
  %i.poa = fdiv fast <4 x float> %i.pny, %i.pnz   ; 3 uses
  %i.pob = fmul fast <4 x float> %i.poa, %i.poa   ; 3 uses
  %i.poc = fmul fast <4 x float> %i.pob, %i.pob   ; 7 uses
  %i.pod = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.poc, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.poe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.poc, <4 x float> nofpclass(nan inf) %i.pod, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.pof = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.poc, <4 x float> nofpclass(nan inf) %i.poe, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.pog = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.poc, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.poh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.poc, <4 x float> nofpclass(nan inf) %i.pog, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.poi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.poc, <4 x float> nofpclass(nan inf) %i.poh, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.poj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.poc, <4 x float> nofpclass(nan inf) %i.poi, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.pok = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pob, <4 x float> nofpclass(nan inf) %i.pof, <4 x float> nofpclass(nan inf) %i.poj)
  %i.pol = fmul fast <4 x float> %i.pok, %i.poa
  %i.pom = select <4 x i1> %i.pnx, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.pon = fadd fast <4 x float> %i.pol, %i.pom
  %i.poo = bitcast <4 x float> %i.pon to <4 x i32>
  %i.pop = or <4 x i32> %i.pnv, %i.poo
  %i.poq = bitcast <4 x i32> %i.pop to <4 x float>
  %i.por = fadd fast <4 x float> %i.pns, %i.poq
  %i.pos = or disjoint <4 x i32> %i.pnp, splat (i32 1070141403)
  %i.pot = bitcast <4 x float> %i.por to <4 x i32>
  %i.pou = select <4 x i1> %.not123.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.pot
  %i.pov = select <4 x i1> %i.pjd, <4 x i32> %i.pos, <4 x i32> zeroinitializer
  %i.pow = select <4 x i1> %i.pnn, <4 x i32> %i.pjg, <4 x i32> %i.pov
  %i.pox = or <4 x i32> %i.pou, %i.pow
  store <4 x i32> %i.pox, ptr %.239142.i.i, align 1, !tbaa !60
  %i.poy = getelementptr inbounds nuw i8, ptr %.2143.i.i, i64 16 ; 2 uses
  %i.poz = getelementptr inbounds nuw i8, ptr %.239142.i.i, i64 16 ; 2 uses
  %i.ppa = add nuw nsw i32 %.243141.i.i, 4        ; 3 uses
  %i.ppb = or disjoint i32 %i.ppa, 3
  %i.ppc = icmp slt i32 %i.ppb, %i.oyd
  br i1 %i.ppc, label %bb.kk, label %.preheader.i36.i2008, !llvm.loop !508

.lr.ph151.i.i:                                    ; preds = %.lr.ph151.i.i.prol.loopexit, %.lr.ph151.i.i
  %.3150.i.i = phi ptr [ %i.ppr, %.lr.ph151.i.i ], [ %.3150.i.i.unr, %.lr.ph151.i.i.prol.loopexit ] ; 5 uses
  %.340149.i.i = phi ptr [ %i.pps, %.lr.ph151.i.i ], [ %.340149.i.i.unr, %.lr.ph151.i.i.prol.loopexit ] ; 5 uses
  %.344148.i.i = phi i32 [ %i.ppt, %.lr.ph151.i.i ], [ %.344148.i.i.unr, %.lr.ph151.i.i.prol.loopexit ]
  %i.ppd = load float, ptr %.3150.i.i, align 4, !tbaa !59
  %i.ppe = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ppd, float %i.pgj)
  store float %i.ppe, ptr %.340149.i.i, align 4, !tbaa !59
  %i.ppf = getelementptr inbounds nuw i8, ptr %.3150.i.i, i64 4
  %i.ppg = getelementptr inbounds nuw i8, ptr %.340149.i.i, i64 4
  %i.pph = load float, ptr %i.ppf, align 4, !tbaa !59
  %i.ppi = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.pph, float %i.pgj)
  store float %i.ppi, ptr %i.ppg, align 4, !tbaa !59
  %i.ppj = getelementptr inbounds nuw i8, ptr %.3150.i.i, i64 8
  %i.ppk = getelementptr inbounds nuw i8, ptr %.340149.i.i, i64 8
  %i.ppl = load float, ptr %i.ppj, align 4, !tbaa !59
  %i.ppm = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ppl, float %i.pgj)
  store float %i.ppm, ptr %i.ppk, align 4, !tbaa !59
  %i.ppn = getelementptr inbounds nuw i8, ptr %.3150.i.i, i64 12
  %i.ppo = getelementptr inbounds nuw i8, ptr %.340149.i.i, i64 12
  %i.ppp = load float, ptr %i.ppn, align 4, !tbaa !59
  %i.ppq = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ppp, float %i.pgj)
  store float %i.ppq, ptr %i.ppo, align 4, !tbaa !59
  %i.ppr = getelementptr inbounds nuw i8, ptr %.3150.i.i, i64 16
  %i.pps = getelementptr inbounds nuw i8, ptr %.340149.i.i, i64 16
  %i.ppt = add nuw nsw i32 %.344148.i.i, 4        ; 2 uses
  %exitcond.not.i38.i2012.3 = icmp eq i32 %i.ppt, %i.oyd
  br i1 %exitcond.not.i38.i2012.3, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph151.i.i, !llvm.loop !509

bb.kl:                                            ; preds = %bb.kb
  %i.ppu = icmp eq i32 %3, 1
  br i1 %i.ppu, label %bb.km, label %bb.kv

bb.km:                                            ; preds = %bb.kl
  %i.ppv = load float, ptr %0, align 4, !tbaa !59 ; 15 uses
  %i.ppw = icmp eq i32 %.sroa.speculated.i1974, 4
  br i1 %i.ppw, label %.thread121.i76.i, label %bb.kn

.thread121.i76.i:                                 ; preds = %bb.km
  %i.ppx = load <4 x float>, ptr %0, align 4, !tbaa !60 ; 2 uses
  %i.ppy = shufflevector <4 x float> %i.ppx, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.kq

bb.kn:                                            ; preds = %bb.km
  %i.ppz = insertelement <4 x float> poison, float %i.ppv, i64 0 ; 2 uses
  %i.pqa = shufflevector <4 x float> %i.ppz, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.pqb = icmp eq i32 %.sroa.speculated.i1974, 8
  br i1 %i.pqb, label %.thread120.i75.i, label %bb.ko

.thread120.i75.i:                                 ; preds = %bb.kn
  %i.pqc = load <8 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.kq

bb.ko:                                            ; preds = %bb.kn
  %i.pqd = shufflevector <4 x float> %i.ppz, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.pqe = icmp eq i32 %.sroa.speculated.i1974, 16
  br i1 %i.pqe, label %bb.kp, label %bb.kq

bb.kp:                                            ; preds = %bb.ko
  %i.pqf = load <16 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.kr

bb.kq:                                            ; preds = %bb.ko, %.thread120.i75.i, %.thread121.i76.i
  %i.pqg = phi <8 x float> [ %i.pqc, %.thread120.i75.i ], [ %i.pqd, %bb.ko ], [ %i.ppy, %.thread121.i76.i ] ; 2 uses
  %i.pqh = phi <4 x float> [ %i.pqa, %.thread120.i75.i ], [ %i.pqa, %bb.ko ], [ %i.ppx, %.thread121.i76.i ]
  %i.pqi = shufflevector <8 x float> %i.pqg, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kq, %bb.kp
  %i.pqj = phi <8 x float> [ %i.pqd, %bb.kp ], [ %i.pqg, %bb.kq ] ; 4 uses
  %i.pqk = phi <4 x float> [ %i.pqa, %bb.kp ], [ %i.pqh, %bb.kq ] ; 4 uses
  %i.pql = phi fast <16 x float> [ %i.pqf, %bb.kp ], [ %i.pqi, %bb.kq ] ; 4 uses
  %i.pqm = icmp sgt i32 %i.oyd, 15
  br i1 %i.pqm, label %.lr.ph.i70.i, label %.preheader128.i41.i

.lr.ph.i70.i:                                     ; preds = %bb.kr
  %i.pqn = fcmp fast one <16 x float> %i.pql, zeroinitializer
  %i.pqo = fcmp fast olt <16 x float> %i.pql, zeroinitializer
  %i.pqp = select fast <16 x i1> %i.pqo, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.pqq = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.pql)
  br label %bb.ks

.preheader128.loopexit.i74.i:                     ; preds = %bb.ks
  %i.pqr = and i32 %i.oyd, 2147483632
  br label %.preheader128.i41.i

.preheader128.i41.i:                              ; preds = %.preheader128.loopexit.i74.i, %bb.kr
  %.041.lcssa.i42.i = phi i32 [ 0, %bb.kr ], [ %i.pqr, %.preheader128.loopexit.i74.i ] ; 3 uses
  %.037.lcssa.i43.i = phi ptr [ %2, %bb.kr ], [ %i.psj, %.preheader128.loopexit.i74.i ] ; 2 uses
  %.0.lcssa.i44.i = phi ptr [ %1, %bb.kr ], [ %i.psi, %.preheader128.loopexit.i74.i ] ; 2 uses
  %i.pqs = or disjoint i32 %.041.lcssa.i42.i, 7
  %i.pqt = icmp slt i32 %i.pqs, %i.oyd
  br i1 %i.pqt, label %.lr.ph137.i64.i, label %.preheader127.i45.i

.lr.ph137.i64.i:                                  ; preds = %.preheader128.i41.i
  %i.pqu = fcmp fast ueq <8 x float> %i.pqj, zeroinitializer ; 2 uses
  %i.pqv = bitcast <8 x float> %i.pqj to <8 x i32>
  %i.pqw = and <8 x i32> %i.pqv, splat (i32 -2147483648)
  %i.pqx = fcmp fast olt <8 x float> %i.pqj, zeroinitializer
  %i.pqy = select <8 x i1> %i.pqx, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.pqz = or disjoint <8 x i32> %i.pqw, splat (i32 1070141403)
  br label %bb.kt

bb.ks:                                            ; preds = %bb.ks, %.lr.ph.i70.i
  %.0131.i71.i = phi ptr [ %1, %.lr.ph.i70.i ], [ %i.psi, %bb.ks ] ; 2 uses
  %.037130.i72.i = phi ptr [ %2, %.lr.ph.i70.i ], [ %i.psj, %bb.ks ] ; 2 uses
  %.041129.i73.i = phi i32 [ 0, %.lr.ph.i70.i ], [ %i.psk, %bb.ks ]
  %i.pra = load <16 x float>, ptr %.0131.i71.i, align 1, !tbaa !60 ; 4 uses
  %i.prb = fcmp fast one <16 x float> %i.pra, zeroinitializer
  %i.prc = fcmp fast olt <16 x float> %i.pra, zeroinitializer
  %i.prd = select fast <16 x i1> %i.prc, <16 x float> %i.pqp, <16 x float> zeroinitializer
  %i.pre = fdiv fast <16 x float> %i.pql, %i.pra  ; 2 uses
  %i.prf = bitcast <16 x float> %i.pre to <16 x i32>
  %i.prg = and <16 x i32> %i.prf, splat (i32 -2147483648)
  %i.prh = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.pre) ; 3 uses
  %i.pri = fcmp fast ogt <16 x float> %i.prh, splat (float 1.000000e+00) ; 2 uses
  %i.prj = select fast <16 x i1> %i.pri, <16 x float> splat (float -1.000000e+00), <16 x float> %i.prh
  %i.prk = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.prh, <16 x float> splat (float 1.000000e+00))
  %i.prl = fdiv fast <16 x float> %i.prj, %i.prk  ; 3 uses
  %i.prm = fmul fast <16 x float> %i.prl, %i.prl  ; 3 uses
  %i.prn = fmul fast <16 x float> %i.prm, %i.prm  ; 7 uses
  %i.pro = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.prn, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.prp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.prn, <16 x float> nofpclass(nan inf) %i.pro, <16 x float> splat (float f0xBE117200))
  %i.prq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.prn, <16 x float> nofpclass(nan inf) %i.prp, <16 x float> splat (float f0xBEAAAA53))
  %i.prr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.prn, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.prs = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.prn, <16 x float> nofpclass(nan inf) %i.prr, <16 x float> splat (float f0x3DD9ED24))
  %i.prt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.prn, <16 x float> nofpclass(nan inf) %i.prs, <16 x float> splat (float f0x3E4CB974))
  %i.pru = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.prn, <16 x float> nofpclass(nan inf) %i.prt, <16 x float> splat (float 1.000000e+00))
  %i.prv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.prm, <16 x float> nofpclass(nan inf) %i.prq, <16 x float> nofpclass(nan inf) %i.pru)
  %i.prw = fmul fast <16 x float> %i.prv, %i.prl
  %i.prx = select fast <16 x i1> %i.pri, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.pry = fadd fast <16 x float> %i.prw, %i.prx
  %i.prz = bitcast <16 x float> %i.pry to <16 x i32>
  %i.psa = or <16 x i32> %i.prg, %i.prz
  %i.psb = bitcast <16 x i32> %i.psa to <16 x float>
  %i.psc = fadd fast <16 x float> %i.prd, %i.psb
  %i.psd = bitcast <16 x float> %i.pra to <16 x i32>
  %i.pse = icmp slt <16 x i32> %i.psd, zeroinitializer
  %i.psf = select fast <16 x i1> %i.pse, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.psg = select <16 x i1> %i.prb, <16 x float> %i.psc, <16 x float> %i.pqq
  %i.psh = select <16 x i1> %i.pqn, <16 x float> %i.psg, <16 x float> %i.psf
  store <16 x float> %i.psh, ptr %.037130.i72.i, align 1, !tbaa !60
  %i.psi = getelementptr inbounds nuw i8, ptr %.0131.i71.i, i64 64 ; 2 uses
  %i.psj = getelementptr inbounds nuw i8, ptr %.037130.i72.i, i64 64 ; 2 uses
  %i.psk = add nuw nsw i32 %.041129.i73.i, 16     ; 2 uses
  %i.psl = or disjoint i32 %i.psk, 15
  %i.psm = icmp slt i32 %i.psl, %i.oyd
  br i1 %i.psm, label %bb.ks, label %.preheader128.loopexit.i74.i, !llvm.loop !510

.preheader127.i45.i:                              ; preds = %bb.kt, %.preheader128.i41.i
  %.142.lcssa.i46.i = phi i32 [ %.041.lcssa.i42.i, %.preheader128.i41.i ], [ %i.puh, %bb.kt ] ; 3 uses
  %.138.lcssa.i47.i = phi ptr [ %.037.lcssa.i43.i, %.preheader128.i41.i ], [ %i.pug, %bb.kt ] ; 2 uses
  %.1.lcssa.i48.i = phi ptr [ %.0.lcssa.i44.i, %.preheader128.i41.i ], [ %i.puf, %bb.kt ] ; 2 uses
  %i.psn = or disjoint i32 %.142.lcssa.i46.i, 3
  %i.pso = icmp slt i32 %i.psn, %i.oyd
  br i1 %i.pso, label %.lr.ph144.i58.i, label %.preheader.i49.i

.lr.ph144.i58.i:                                  ; preds = %.preheader127.i45.i
  %i.psp = fcmp fast oeq <4 x float> %i.pqk, zeroinitializer ; 2 uses
  %i.psq = bitcast <4 x float> %i.pqk to <4 x i32>
  %i.psr = and <4 x i32> %i.psq, splat (i32 -2147483648)
  %i.pss = fcmp fast olt <4 x float> %i.pqk, zeroinitializer
  %i.pst = select <4 x i1> %i.pss, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.psu = or disjoint <4 x i32> %i.psr, splat (i32 1070141403)
  br label %bb.ku

bb.kt:                                            ; preds = %bb.kt, %.lr.ph137.i64.i
  %.1136.i65.i = phi ptr [ %.0.lcssa.i44.i, %.lr.ph137.i64.i ], [ %i.puf, %bb.kt ] ; 2 uses
  %.138135.i66.i = phi ptr [ %.037.lcssa.i43.i, %.lr.ph137.i64.i ], [ %i.pug, %bb.kt ] ; 2 uses
  %.142134.i67.i = phi i32 [ %.041.lcssa.i42.i, %.lr.ph137.i64.i ], [ %i.puh, %bb.kt ]
  %i.psv = load <8 x float>, ptr %.1136.i65.i, align 1, !tbaa !60 ; 4 uses
  %i.psw = fcmp fast ueq <8 x float> %i.psv, zeroinitializer ; 2 uses
  %.not126.i68.i = or <8 x i1> %i.pqu, %i.psw
  %i.psx = fcmp fast olt <8 x float> %i.psv, zeroinitializer
  %i.psy = select <8 x i1> %i.psx, <8 x float> %i.pqy, <8 x float> zeroinitializer
  %i.psz = fdiv fast <8 x float> %i.pqj, %i.psv   ; 2 uses
  %i.pta = bitcast <8 x float> %i.psz to <8 x i32>
  %i.ptb = and <8 x i32> %i.pta, splat (i32 -2147483648)
  %i.ptc = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.psz) ; 3 uses
  %i.ptd = fcmp fast ogt <8 x float> %i.ptc, splat (float 1.000000e+00) ; 2 uses
  %i.pte = select <8 x i1> %i.ptd, <8 x float> splat (float -1.000000e+00), <8 x float> %i.ptc
  %i.ptf = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ptc, <8 x float> splat (float 1.000000e+00))
  %i.ptg = fdiv fast <8 x float> %i.pte, %i.ptf   ; 3 uses
  %i.pth = fmul fast <8 x float> %i.ptg, %i.ptg   ; 3 uses
  %i.pti = fmul fast <8 x float> %i.pth, %i.pth   ; 7 uses
  %i.ptj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pti, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.ptk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pti, <8 x float> nofpclass(nan inf) %i.ptj, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.ptl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pti, <8 x float> nofpclass(nan inf) %i.ptk, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.ptm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pti, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.ptn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pti, <8 x float> nofpclass(nan inf) %i.ptm, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.pto = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pti, <8 x float> nofpclass(nan inf) %i.ptn, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.ptp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pti, <8 x float> nofpclass(nan inf) %i.pto, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.ptq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pth, <8 x float> nofpclass(nan inf) %i.ptl, <8 x float> nofpclass(nan inf) %i.ptp)
  %i.ptr = fmul fast <8 x float> %i.ptq, %i.ptg
  %i.pts = select <8 x i1> %i.ptd, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.ptt = fadd fast <8 x float> %i.ptr, %i.pts
  %i.ptu = bitcast <8 x float> %i.ptt to <8 x i32>
  %i.ptv = or <8 x i32> %i.ptb, %i.ptu
  %i.ptw = bitcast <8 x i32> %i.ptv to <8 x float>
  %i.ptx = fadd fast <8 x float> %i.psy, %i.ptw
  %i.pty = bitcast <8 x float> %i.psv to <8 x i32>
  %isneg.inv124.i69.i = icmp slt <8 x i32> %i.pty, zeroinitializer
  %i.ptz = select <8 x i1> %isneg.inv124.i69.i, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.pua = bitcast <8 x float> %i.ptx to <8 x i32>
  %i.pub = select <8 x i1> %.not126.i68.i, <8 x i32> zeroinitializer, <8 x i32> %i.pua
  %i.puc = select <8 x i1> %i.psw, <8 x i32> %i.pqz, <8 x i32> zeroinitializer
  %i.pud = select <8 x i1> %i.pqu, <8 x i32> %i.ptz, <8 x i32> %i.puc
  %i.pue = or <8 x i32> %i.pub, %i.pud
  store <8 x i32> %i.pue, ptr %.138135.i66.i, align 1, !tbaa !60
  %i.puf = getelementptr inbounds nuw i8, ptr %.1136.i65.i, i64 32 ; 2 uses
  %i.pug = getelementptr inbounds nuw i8, ptr %.138135.i66.i, i64 32 ; 2 uses
  %i.puh = add nuw nsw i32 %.142134.i67.i, 8      ; 3 uses
  %i.pui = or disjoint i32 %i.puh, 7
  %i.puj = icmp slt i32 %i.pui, %i.oyd
  br i1 %i.puj, label %bb.kt, label %.preheader127.i45.i, !llvm.loop !511

.preheader.i49.i:                                 ; preds = %bb.ku, %.preheader127.i45.i
  %.243.lcssa.i50.i = phi i32 [ %.142.lcssa.i46.i, %.preheader127.i45.i ], [ %i.pyj, %bb.ku ] ; 5 uses
  %.239.lcssa.i51.i = phi ptr [ %.138.lcssa.i47.i, %.preheader127.i45.i ], [ %i.pyi, %bb.ku ] ; 6 uses
  %.2.lcssa.i52.i = phi ptr [ %.1.lcssa.i48.i, %.preheader127.i45.i ], [ %i.pyh, %bb.ku ] ; 6 uses
  %i.puk = icmp slt i32 %.243.lcssa.i50.i, %i.oyd
  br i1 %i.puk, label %iter.check8918, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

iter.check8918:                                   ; preds = %.preheader.i49.i
  %.239.lcssa.i51.i8902 = ptrtoaddr ptr %.239.lcssa.i51.i to i64
  %.2.lcssa.i52.i8901 = ptrtoaddr ptr %.2.lcssa.i52.i to i64
  %i.pul = xor i32 %.243.lcssa.i50.i, -1
  %i.pum = add i32 %i.oyd, %i.pul                 ; 3 uses
  %i.pun = zext i32 %i.pum to i64
  %i.puo = add nuw nsw i64 %i.pun, 1              ; 5 uses
  %min.iters.check8903 = icmp ult i32 %i.pum, 3
  %i.pup = sub i64 %.2.lcssa.i52.i8901, %.239.lcssa.i51.i8902
  %diff.check8905 = icmp ugt i64 %i.pup, -64
  %or.cond10453 = select i1 %min.iters.check8903, i1 true, i1 %diff.check8905
  br i1 %or.cond10453, label %.lr.ph151.i53.i.preheader, label %vector.main.loop.iter.check8906

vector.main.loop.iter.check8906:                  ; preds = %iter.check8918
  %min.iters.check8907 = icmp ult i32 %i.pum, 15
  br i1 %min.iters.check8907, label %vec.epilog.ph8922, label %vector.ph8908

vector.ph8908:                                    ; preds = %vector.main.loop.iter.check8906
  %i.puq = and i64 %i.puo, 12
  %n.vec8909 = and i64 %i.puo, 8589934576         ; 5 uses
  %i.pur = shl nuw nsw i64 %n.vec8909, 2          ; 2 uses
  %i.pus = getelementptr i8, ptr %.2.lcssa.i52.i, i64 %i.pur
  %i.put = getelementptr i8, ptr %.239.lcssa.i51.i, i64 %i.pur
  %i.puu = trunc i64 %n.vec8909 to i32
  %i.puv = add i32 %.243.lcssa.i50.i, %i.puu
  %i.puw = insertelement <8 x float> poison, float %i.ppv, i64 0
  %i.pux = shufflevector <8 x float> %i.puw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.puy = insertelement <4 x float> poison, float %i.ppv, i64 0
  %i.puz = shufflevector <4 x float> %i.puy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pva = insertelement <2 x float> poison, float %i.ppv, i64 0
  %i.pvb = shufflevector <2 x float> %i.pva, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body8910

vector.body8910:                                  ; preds = %vector.ph8908, %vector.body8910
  %index8911 = phi i64 [ 0, %vector.ph8908 ], [ %index.next8915, %vector.body8910 ] ; 2 uses
  %i.pvc = shl i64 %index8911, 2                  ; 2 uses
  %next.gep8912 = getelementptr i8, ptr %.2.lcssa.i52.i, i64 %i.pvc
  %next.gep8913 = getelementptr i8, ptr %.239.lcssa.i51.i, i64 %i.pvc
  %wide.load8914 = load <16 x float>, ptr %next.gep8912, align 4, !tbaa !59 ; 5 uses
  %i.pvd = extractelement <16 x float> %wide.load8914, i64 0
  %i.pve = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ppv, float %i.pvd)
  %i.pvf = shufflevector <16 x float> %wide.load8914, <16 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %i.pvg = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.pux, <8 x float> %i.pvf)
  %i.pvh = shufflevector <16 x float> %wide.load8914, <16 x float> poison, <4 x i32> <i32 9, i32 10, i32 11, i32 12>
  %i.pvi = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.puz, <4 x float> %i.pvh)
  %i.pvj = extractelement <16 x float> %wide.load8914, i64 13
  %i.pvk = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ppv, float %i.pvj)
  %i.pvl = shufflevector <16 x float> %wide.load8914, <16 x float> poison, <2 x i32> <i32 14, i32 15>
  %i.pvm = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.pvb, <2 x float> %i.pvl)
  %i.pvn = insertelement <16 x float> poison, float %i.pve, i64 0
  %i.pvo = shufflevector <8 x float> %i.pvg, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pvp = shufflevector <16 x float> %i.pvn, <16 x float> %i.pvo, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pvq = shufflevector <4 x float> %i.pvi, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pvr = shufflevector <16 x float> %i.pvp, <16 x float> %i.pvq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.pvs = insertelement <16 x float> %i.pvr, float %i.pvk, i64 13
  %i.pvt = shufflevector <2 x float> %i.pvm, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pvu = shufflevector <16 x float> %i.pvs, <16 x float> %i.pvt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x float> %i.pvu, ptr %next.gep8913, align 4, !tbaa !59
  %index.next8915 = add nuw i64 %index8911, 16    ; 2 uses
  %i.pvv = icmp eq i64 %index.next8915, %n.vec8909
  br i1 %i.pvv, label %middle.block8916, label %vector.body8910, !llvm.loop !512

middle.block8916:                                 ; preds = %vector.body8910
  %cmp.n8917 = icmp eq i64 %i.puo, %n.vec8909
  br i1 %cmp.n8917, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %vec.epilog.iter.check8919

vec.epilog.iter.check8919:                        ; preds = %middle.block8916
  %min.epilog.iters.check8921 = icmp eq i64 %i.puq, 0
  br i1 %min.epilog.iters.check8921, label %.lr.ph151.i53.i.preheader, label %vec.epilog.ph8922, !prof !818

vec.epilog.ph8922:                                ; preds = %vector.main.loop.iter.check8906, %vec.epilog.iter.check8919
  %vec.epilog.resume.val8923 = phi i64 [ %n.vec8909, %vec.epilog.iter.check8919 ], [ 0, %vector.main.loop.iter.check8906 ]
  %n.vec8924 = and i64 %i.puo, 8589934588         ; 4 uses
  %i.pvw = shl nuw nsw i64 %n.vec8924, 2          ; 2 uses
  %i.pvx = getelementptr i8, ptr %.2.lcssa.i52.i, i64 %i.pvw
  %i.pvy = getelementptr i8, ptr %.239.lcssa.i51.i, i64 %i.pvw
  %i.pvz = trunc i64 %n.vec8924 to i32
  %i.pwa = add i32 %.243.lcssa.i50.i, %i.pvz
  br label %vec.epilog.vector.body8925

vec.epilog.vector.body8925:                       ; preds = %vec.epilog.vector.body8925, %vec.epilog.ph8922
  %index8926 = phi i64 [ %vec.epilog.resume.val8923, %vec.epilog.ph8922 ], [ %index.next8930, %vec.epilog.vector.body8925 ] ; 2 uses
  %i.pwb = shl i64 %index8926, 2                  ; 2 uses
  %next.gep8927 = getelementptr i8, ptr %.2.lcssa.i52.i, i64 %i.pwb
  %next.gep8928 = getelementptr i8, ptr %.239.lcssa.i51.i, i64 %i.pwb
  %wide.load8929 = load <4 x float>, ptr %next.gep8927, align 4, !tbaa !59 ; 4 uses
  %i.pwc = extractelement <4 x float> %wide.load8929, i64 0
  %i.pwd = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ppv, float %i.pwc)
  %i.pwe = extractelement <4 x float> %wide.load8929, i64 1
  %i.pwf = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ppv, float %i.pwe)
  %i.pwg = extractelement <4 x float> %wide.load8929, i64 2
  %i.pwh = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ppv, float %i.pwg)
  %i.pwi = extractelement <4 x float> %wide.load8929, i64 3
  %i.pwj = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ppv, float %i.pwi)
  %i.pwk = insertelement <4 x float> poison, float %i.pwd, i64 0
  %i.pwl = insertelement <4 x float> %i.pwk, float %i.pwf, i64 1
  %i.pwm = insertelement <4 x float> %i.pwl, float %i.pwh, i64 2
  %i.pwn = insertelement <4 x float> %i.pwm, float %i.pwj, i64 3
  store <4 x float> %i.pwn, ptr %next.gep8928, align 4, !tbaa !59
  %index.next8930 = add nuw i64 %index8926, 4     ; 2 uses
  %i.pwo = icmp eq i64 %index.next8930, %n.vec8924
  br i1 %i.pwo, label %vec.epilog.middle.block8931, label %vec.epilog.vector.body8925, !llvm.loop !513

vec.epilog.middle.block8931:                      ; preds = %vec.epilog.vector.body8925
  %cmp.n8932 = icmp eq i64 %i.puo, %n.vec8924
  br i1 %cmp.n8932, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph151.i53.i.preheader

.lr.ph151.i53.i.preheader:                        ; preds = %iter.check8918, %vec.epilog.iter.check8919, %vec.epilog.middle.block8931
  %.3150.i54.i.ph = phi ptr [ %.2.lcssa.i52.i, %iter.check8918 ], [ %i.pus, %vec.epilog.iter.check8919 ], [ %i.pvx, %vec.epilog.middle.block8931 ] ; 2 uses
  %.340149.i55.i.ph = phi ptr [ %.239.lcssa.i51.i, %iter.check8918 ], [ %i.put, %vec.epilog.iter.check8919 ], [ %i.pvy, %vec.epilog.middle.block8931 ] ; 2 uses
  %.344148.i56.i.ph = phi i32 [ %.243.lcssa.i50.i, %iter.check8918 ], [ %i.puv, %vec.epilog.iter.check8919 ], [ %i.pwa, %vec.epilog.middle.block8931 ] ; 4 uses
  %i.pwp = sub i32 %i.oyd, %.344148.i56.i.ph
  %xtraiter12078 = and i32 %i.pwp, 3              ; 2 uses
  %lcmp.mod12079.not = icmp eq i32 %xtraiter12078, 0
  br i1 %lcmp.mod12079.not, label %.lr.ph151.i53.i.prol.loopexit, label %.lr.ph151.i53.i.prol

.lr.ph151.i53.i.prol:                             ; preds = %.lr.ph151.i53.i.preheader, %.lr.ph151.i53.i.prol
  %.3150.i54.i.prol = phi ptr [ %i.pws, %.lr.ph151.i53.i.prol ], [ %.3150.i54.i.ph, %.lr.ph151.i53.i.preheader ] ; 2 uses
  %.340149.i55.i.prol = phi ptr [ %i.pwt, %.lr.ph151.i53.i.prol ], [ %.340149.i55.i.ph, %.lr.ph151.i53.i.preheader ] ; 2 uses
  %.344148.i56.i.prol = phi i32 [ %i.pwu, %.lr.ph151.i53.i.prol ], [ %.344148.i56.i.ph, %.lr.ph151.i53.i.preheader ]
  %prol.iter12080 = phi i32 [ %prol.iter12080.next, %.lr.ph151.i53.i.prol ], [ 0, %.lr.ph151.i53.i.preheader ]
  %i.pwq = load float, ptr %.3150.i54.i.prol, align 4, !tbaa !59
  %i.pwr = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ppv, float %i.pwq)
  store float %i.pwr, ptr %.340149.i55.i.prol, align 4, !tbaa !59
  %i.pws = getelementptr inbounds nuw i8, ptr %.3150.i54.i.prol, i64 4 ; 2 uses
  %i.pwt = getelementptr inbounds nuw i8, ptr %.340149.i55.i.prol, i64 4 ; 2 uses
  %i.pwu = add nuw nsw i32 %.344148.i56.i.prol, 1 ; 2 uses
  %prol.iter12080.next = add i32 %prol.iter12080, 1 ; 2 uses
  %prol.iter12080.cmp.not = icmp eq i32 %prol.iter12080.next, %xtraiter12078
  br i1 %prol.iter12080.cmp.not, label %.lr.ph151.i53.i.prol.loopexit, label %.lr.ph151.i53.i.prol, !llvm.loop !514

.lr.ph151.i53.i.prol.loopexit:                    ; preds = %.lr.ph151.i53.i.prol, %.lr.ph151.i53.i.preheader
  %.3150.i54.i.unr = phi ptr [ %.3150.i54.i.ph, %.lr.ph151.i53.i.preheader ], [ %i.pws, %.lr.ph151.i53.i.prol ]
  %.340149.i55.i.unr = phi ptr [ %.340149.i55.i.ph, %.lr.ph151.i53.i.preheader ], [ %i.pwt, %.lr.ph151.i53.i.prol ]
  %.344148.i56.i.unr = phi i32 [ %.344148.i56.i.ph, %.lr.ph151.i53.i.preheader ], [ %i.pwu, %.lr.ph151.i53.i.prol ]
  %i.pwv = sub i32 %.344148.i56.i.ph, %i.oyd
  %i.pww = icmp ugt i32 %i.pwv, -4
  br i1 %i.pww, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph151.i53.i

bb.ku:                                            ; preds = %bb.ku, %.lr.ph144.i58.i
  %.2143.i59.i = phi ptr [ %.1.lcssa.i48.i, %.lr.ph144.i58.i ], [ %i.pyh, %bb.ku ] ; 2 uses
  %.239142.i60.i = phi ptr [ %.138.lcssa.i47.i, %.lr.ph144.i58.i ], [ %i.pyi, %bb.ku ] ; 2 uses
  %.243141.i61.i = phi i32 [ %.142.lcssa.i46.i, %.lr.ph144.i58.i ], [ %i.pyj, %bb.ku ]
  %i.pwx = load <4 x float>, ptr %.2143.i59.i, align 1, !tbaa !60 ; 4 uses
  %i.pwy = fcmp fast oeq <4 x float> %i.pwx, zeroinitializer ; 2 uses
  %.not123.i62.i = or <4 x i1> %i.psp, %i.pwy
  %i.pwz = fcmp fast olt <4 x float> %i.pwx, zeroinitializer
  %i.pxa = select <4 x i1> %i.pwz, <4 x float> %i.pst, <4 x float> zeroinitializer
  %i.pxb = fdiv fast <4 x float> %i.pqk, %i.pwx   ; 2 uses
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
  %isneg.inv.i63.i = icmp slt <4 x i32> %i.pya, zeroinitializer
  %i.pyb = select <4 x i1> %isneg.inv.i63.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.pyc = bitcast <4 x float> %i.pxz to <4 x i32>
  %i.pyd = select <4 x i1> %.not123.i62.i, <4 x i32> zeroinitializer, <4 x i32> %i.pyc
  %i.pye = select <4 x i1> %i.pwy, <4 x i32> %i.psu, <4 x i32> zeroinitializer
  %i.pyf = select <4 x i1> %i.psp, <4 x i32> %i.pyb, <4 x i32> %i.pye
  %i.pyg = or <4 x i32> %i.pyd, %i.pyf
  store <4 x i32> %i.pyg, ptr %.239142.i60.i, align 1, !tbaa !60
  %i.pyh = getelementptr inbounds nuw i8, ptr %.2143.i59.i, i64 16 ; 2 uses
  %i.pyi = getelementptr inbounds nuw i8, ptr %.239142.i60.i, i64 16 ; 2 uses
  %i.pyj = add nuw nsw i32 %.243141.i61.i, 4      ; 3 uses
  %i.pyk = or disjoint i32 %i.pyj, 3
  %i.pyl = icmp slt i32 %i.pyk, %i.oyd
  br i1 %i.pyl, label %bb.ku, label %.preheader.i49.i, !llvm.loop !515

.lr.ph151.i53.i:                                  ; preds = %.lr.ph151.i53.i.prol.loopexit, %.lr.ph151.i53.i
  %.3150.i54.i = phi ptr [ %i.pza, %.lr.ph151.i53.i ], [ %.3150.i54.i.unr, %.lr.ph151.i53.i.prol.loopexit ] ; 5 uses
  %.340149.i55.i = phi ptr [ %i.pzb, %.lr.ph151.i53.i ], [ %.340149.i55.i.unr, %.lr.ph151.i53.i.prol.loopexit ] ; 5 uses
  %.344148.i56.i = phi i32 [ %i.pzc, %.lr.ph151.i53.i ], [ %.344148.i56.i.unr, %.lr.ph151.i53.i.prol.loopexit ]
  %i.pym = load float, ptr %.3150.i54.i, align 4, !tbaa !59
  %i.pyn = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ppv, float %i.pym)
  store float %i.pyn, ptr %.340149.i55.i, align 4, !tbaa !59
  %i.pyo = getelementptr inbounds nuw i8, ptr %.3150.i54.i, i64 4
  %i.pyp = getelementptr inbounds nuw i8, ptr %.340149.i55.i, i64 4
  %i.pyq = load float, ptr %i.pyo, align 4, !tbaa !59
  %i.pyr = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ppv, float %i.pyq)
  store float %i.pyr, ptr %i.pyp, align 4, !tbaa !59
  %i.pys = getelementptr inbounds nuw i8, ptr %.3150.i54.i, i64 8
  %i.pyt = getelementptr inbounds nuw i8, ptr %.340149.i55.i, i64 8
  %i.pyu = load float, ptr %i.pys, align 4, !tbaa !59
  %i.pyv = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ppv, float %i.pyu)
  store float %i.pyv, ptr %i.pyt, align 4, !tbaa !59
  %i.pyw = getelementptr inbounds nuw i8, ptr %.3150.i54.i, i64 12
  %i.pyx = getelementptr inbounds nuw i8, ptr %.340149.i55.i, i64 12
  %i.pyy = load float, ptr %i.pyw, align 4, !tbaa !59
  %i.pyz = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ppv, float %i.pyy)
  store float %i.pyz, ptr %i.pyx, align 4, !tbaa !59
  %i.pza = getelementptr inbounds nuw i8, ptr %.3150.i54.i, i64 16
  %i.pzb = getelementptr inbounds nuw i8, ptr %.340149.i55.i, i64 16
  %i.pzc = add nuw nsw i32 %.344148.i56.i, 4      ; 2 uses
  %exitcond.not.i57.i2001.3 = icmp eq i32 %i.pzc, %i.oyd
  br i1 %exitcond.not.i57.i2001.3, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph151.i53.i, !llvm.loop !516

bb.kv:                                            ; preds = %bb.kl, %bb.jy
  %i.pzd = icmp eq i32 %6, 1
  br i1 %i.pzd, label %bb.kw, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

bb.kw:                                            ; preds = %bb.kv
  %i.pze = icmp eq i32 %3, %4
  br i1 %i.pze, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %bb.kw
  %i.pzf = icmp eq i32 %.sroa.speculated.i1974, 16
  %i.pzg = icmp sgt i32 %.sroa.speculated103.i, 0
  %or.cond.i.i1989 = and i1 %i.pzg, %i.pzf
  br i1 %or.cond.i.i1989, label %.lr.ph.i80.i, label %.loopexit225.i.i

.lr.ph.i80.i:                                     ; preds = %bb.kx, %.lr.ph.i80.i
  %.0229.i.i = phi ptr [ %i.qaw, %.lr.ph.i80.i ], [ %0, %bb.kx ] ; 2 uses
  %.067228.i.i = phi ptr [ %i.qax, %.lr.ph.i80.i ], [ %1, %bb.kx ] ; 2 uses
  %.075227.i.i = phi ptr [ %i.qay, %.lr.ph.i80.i ], [ %2, %bb.kx ] ; 2 uses
  %.086226.i.i = phi i32 [ %i.qaz, %.lr.ph.i80.i ], [ 0, %bb.kx ]
  %i.pzh = load <16 x float>, ptr %.0229.i.i, align 1, !tbaa !60 ; 4 uses
  %i.pzi = load float, ptr %.067228.i.i, align 4, !tbaa !59
  %i.pzj = insertelement <16 x float> poison, float %i.pzi, i64 0
  %i.pzk = shufflevector <16 x float> %i.pzj, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.pzl = fcmp fast one <16 x float> %i.pzk, zeroinitializer
  %i.pzm = fcmp fast one <16 x float> %i.pzh, zeroinitializer
  %i.pzn = fcmp fast olt <16 x float> %i.pzk, zeroinitializer
  %i.pzo = fcmp fast olt <16 x float> %i.pzh, zeroinitializer
  %i.pzp = select fast <16 x i1> %i.pzo, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.pzq = select fast <16 x i1> %i.pzn, <16 x float> %i.pzp, <16 x float> zeroinitializer
  %i.pzr = fdiv fast <16 x float> %i.pzh, %i.pzk  ; 2 uses
  %i.pzs = bitcast <16 x float> %i.pzr to <16 x i32>
  %i.pzt = and <16 x i32> %i.pzs, splat (i32 -2147483648)
  %i.pzu = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.pzr) ; 3 uses
  %i.pzv = fcmp fast ogt <16 x float> %i.pzu, splat (float 1.000000e+00) ; 2 uses
  %i.pzw = select fast <16 x i1> %i.pzv, <16 x float> splat (float -1.000000e+00), <16 x float> %i.pzu
  %i.pzx = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.pzu, <16 x float> splat (float 1.000000e+00))
  %i.pzy = fdiv fast <16 x float> %i.pzw, %i.pzx  ; 3 uses
  %i.pzz = fmul fast <16 x float> %i.pzy, %i.pzy  ; 3 uses
  %i.qaa = fmul fast <16 x float> %i.pzz, %i.pzz  ; 7 uses
  %i.qab = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qaa, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.qac = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qaa, <16 x float> nofpclass(nan inf) %i.qab, <16 x float> splat (float f0xBE117200))
  %i.qad = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qaa, <16 x float> nofpclass(nan inf) %i.qac, <16 x float> splat (float f0xBEAAAA53))
  %i.qae = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qaa, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.qaf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qaa, <16 x float> nofpclass(nan inf) %i.qae, <16 x float> splat (float f0x3DD9ED24))
  %i.qag = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qaa, <16 x float> nofpclass(nan inf) %i.qaf, <16 x float> splat (float f0x3E4CB974))
  %i.qah = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qaa, <16 x float> nofpclass(nan inf) %i.qag, <16 x float> splat (float 1.000000e+00))
  %i.qai = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pzz, <16 x float> nofpclass(nan inf) %i.qad, <16 x float> nofpclass(nan inf) %i.qah)
  %i.qaj = fmul fast <16 x float> %i.qai, %i.pzy
  %i.qak = select fast <16 x i1> %i.pzv, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.qal = fadd fast <16 x float> %i.qaj, %i.qak
  %i.qam = bitcast <16 x float> %i.qal to <16 x i32>
  %i.qan = or <16 x i32> %i.pzt, %i.qam
  %i.qao = bitcast <16 x i32> %i.qan to <16 x float>
  %i.qap = fadd fast <16 x float> %i.pzq, %i.qao
  %i.qaq = bitcast <16 x float> %i.pzk to <16 x i32>
  %i.qar = icmp slt <16 x i32> %i.qaq, zeroinitializer
  %i.qas = select fast <16 x i1> %i.qar, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.qat = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.pzh)
  %i.qau = select <16 x i1> %i.pzl, <16 x float> %i.qap, <16 x float> %i.qat
  %i.qav = select <16 x i1> %i.pzm, <16 x float> %i.qau, <16 x float> %i.qas
  store <16 x float> %i.qav, ptr %.075227.i.i, align 1, !tbaa !60
  %i.qaw = getelementptr inbounds nuw i8, ptr %.0229.i.i, i64 64
  %i.qax = getelementptr inbounds nuw i8, ptr %.067228.i.i, i64 4
  %i.qay = getelementptr inbounds nuw i8, ptr %.075227.i.i, i64 64
  %i.qaz = add nuw nsw i32 %.086226.i.i, 1        ; 2 uses
  %exitcond.not.i81.i = icmp eq i32 %i.qaz, %.sroa.speculated103.i
  br i1 %exitcond.not.i81.i, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph.i80.i, !llvm.loop !517

.loopexit225.i.i:                                 ; preds = %bb.kx
  switch i32 %.sroa.speculated.i1974, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit [
    i32 8, label %.preheader223.i.i
    i32 4, label %.preheader220.i.i
  ]

.preheader223.i.i:                                ; preds = %.loopexit225.i.i
  %i.qba = icmp sgt i32 %.sroa.speculated103.i, 1
  br i1 %i.qba, label %.lr.ph236.i.i, label %.preheader221.i.i
end_hunk_3
begin_hunk_4_@_ZN4ncnnL16binary_op_vectorEPKfS1_Pfiiiii:bb.a
  %i.rlv = phi <8 x float> [ %i.rlr, %.thread120.i.i2227 ], [ %i.rls, %bb.lt ], [ %i.rln, %.thread121.i.i2228 ] ; 2 uses
  %i.rlw = phi <4 x float> [ %i.rlp, %.thread120.i.i2227 ], [ %i.rlp, %bb.lt ], [ %i.rlm, %.thread121.i.i2228 ]
  %i.rlx = shufflevector <8 x float> %i.rlv, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.lw

bb.lw:                                            ; preds = %bb.lv, %bb.lu
  %i.rly = phi <8 x float> [ %i.rls, %bb.lu ], [ %i.rlv, %bb.lv ] ; 4 uses
  %i.rlz = phi <4 x float> [ %i.rlp, %bb.lu ], [ %i.rlw, %bb.lv ] ; 4 uses
  %i.rma = phi fast <16 x float> [ %i.rlu, %bb.lu ], [ %i.rlx, %bb.lv ] ; 4 uses
  %i.rmb = icmp sgt i32 %i.rde, 15
  br i1 %i.rmb, label %.lr.ph.i40.i2222, label %.preheader128.i.i2193

.lr.ph.i40.i2222:                                 ; preds = %bb.lw
  %i.rmc = fcmp fast one <16 x float> %i.rma, zeroinitializer
  %i.rmd = fcmp fast olt <16 x float> %i.rma, zeroinitializer
  %i.rme = select fast <16 x i1> %i.rmd, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.rmf = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.rma)
  br label %bb.lx

.preheader128.loopexit.i.i2226:                   ; preds = %bb.lx
  %i.rmg = and i32 %i.rde, 2147483632
  br label %.preheader128.i.i2193

.preheader128.i.i2193:                            ; preds = %.preheader128.loopexit.i.i2226, %bb.lw
  %.041.lcssa.i.i2194 = phi i32 [ 0, %bb.lw ], [ %i.rmg, %.preheader128.loopexit.i.i2226 ] ; 3 uses
  %.037.lcssa.i.i2195 = phi ptr [ %2, %bb.lw ], [ %i.rny, %.preheader128.loopexit.i.i2226 ] ; 2 uses
  %.0.lcssa.i34.i2196 = phi ptr [ %0, %bb.lw ], [ %i.rnx, %.preheader128.loopexit.i.i2226 ] ; 2 uses
  %i.rmh = or disjoint i32 %.041.lcssa.i.i2194, 7
  %i.rmi = icmp slt i32 %i.rmh, %i.rde
  br i1 %i.rmi, label %.lr.ph137.i.i2216, label %.preheader127.i.i2197

.lr.ph137.i.i2216:                                ; preds = %.preheader128.i.i2193
  %i.rmj = fcmp fast ueq <8 x float> %i.rly, zeroinitializer ; 2 uses
  %i.rmk = bitcast <8 x float> %i.rly to <8 x i32>
  %i.rml = and <8 x i32> %i.rmk, splat (i32 -2147483648)
  %i.rmm = fcmp fast olt <8 x float> %i.rly, zeroinitializer
  %i.rmn = select <8 x i1> %i.rmm, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.rmo = or disjoint <8 x i32> %i.rml, splat (i32 1070141403)
  br label %bb.ly

bb.lx:                                            ; preds = %bb.lx, %.lr.ph.i40.i2222
  %.0131.i.i2223 = phi ptr [ %0, %.lr.ph.i40.i2222 ], [ %i.rnx, %bb.lx ] ; 2 uses
  %.037130.i.i2224 = phi ptr [ %2, %.lr.ph.i40.i2222 ], [ %i.rny, %bb.lx ] ; 2 uses
  %.041129.i.i2225 = phi i32 [ 0, %.lr.ph.i40.i2222 ], [ %i.rnz, %bb.lx ]
  %i.rmp = load <16 x float>, ptr %.0131.i.i2223, align 1, !tbaa !60 ; 4 uses
  %i.rmq = fcmp fast one <16 x float> %i.rmp, zeroinitializer
  %i.rmr = fcmp fast olt <16 x float> %i.rmp, zeroinitializer
  %i.rms = select fast <16 x i1> %i.rmr, <16 x float> %i.rme, <16 x float> zeroinitializer
  %i.rmt = fdiv fast <16 x float> %i.rma, %i.rmp  ; 2 uses
  %i.rmu = bitcast <16 x float> %i.rmt to <16 x i32>
  %i.rmv = and <16 x i32> %i.rmu, splat (i32 -2147483648)
  %i.rmw = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.rmt) ; 3 uses
  %i.rmx = fcmp fast ogt <16 x float> %i.rmw, splat (float 1.000000e+00) ; 2 uses
  %i.rmy = select fast <16 x i1> %i.rmx, <16 x float> splat (float -1.000000e+00), <16 x float> %i.rmw
  %i.rmz = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.rmw, <16 x float> splat (float 1.000000e+00))
  %i.rna = fdiv fast <16 x float> %i.rmy, %i.rmz  ; 3 uses
  %i.rnb = fmul fast <16 x float> %i.rna, %i.rna  ; 3 uses
  %i.rnc = fmul fast <16 x float> %i.rnb, %i.rnb  ; 7 uses
  %i.rnd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rnc, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.rne = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rnc, <16 x float> nofpclass(nan inf) %i.rnd, <16 x float> splat (float f0xBE117200))
  %i.rnf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rnc, <16 x float> nofpclass(nan inf) %i.rne, <16 x float> splat (float f0xBEAAAA53))
  %i.rng = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rnc, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.rnh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rnc, <16 x float> nofpclass(nan inf) %i.rng, <16 x float> splat (float f0x3DD9ED24))
  %i.rni = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rnc, <16 x float> nofpclass(nan inf) %i.rnh, <16 x float> splat (float f0x3E4CB974))
  %i.rnj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rnc, <16 x float> nofpclass(nan inf) %i.rni, <16 x float> splat (float 1.000000e+00))
  %i.rnk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rnb, <16 x float> nofpclass(nan inf) %i.rnf, <16 x float> nofpclass(nan inf) %i.rnj)
  %i.rnl = fmul fast <16 x float> %i.rnk, %i.rna
  %i.rnm = select fast <16 x i1> %i.rmx, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.rnn = fadd fast <16 x float> %i.rnl, %i.rnm
  %i.rno = bitcast <16 x float> %i.rnn to <16 x i32>
  %i.rnp = or <16 x i32> %i.rmv, %i.rno
  %i.rnq = bitcast <16 x i32> %i.rnp to <16 x float>
  %i.rnr = fadd fast <16 x float> %i.rms, %i.rnq
  %i.rns = bitcast <16 x float> %i.rmp to <16 x i32>
  %i.rnt = icmp slt <16 x i32> %i.rns, zeroinitializer
  %i.rnu = select fast <16 x i1> %i.rnt, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.rnv = select <16 x i1> %i.rmq, <16 x float> %i.rnr, <16 x float> %i.rmf
  %i.rnw = select <16 x i1> %i.rmc, <16 x float> %i.rnv, <16 x float> %i.rnu
  store <16 x float> %i.rnw, ptr %.037130.i.i2224, align 1, !tbaa !60
  %i.rnx = getelementptr inbounds nuw i8, ptr %.0131.i.i2223, i64 64 ; 2 uses
  %i.rny = getelementptr inbounds nuw i8, ptr %.037130.i.i2224, i64 64 ; 2 uses
  %i.rnz = add nuw nsw i32 %.041129.i.i2225, 16   ; 2 uses
  %i.roa = or disjoint i32 %i.rnz, 15
  %i.rob = icmp slt i32 %i.roa, %i.rde
  br i1 %i.rob, label %bb.lx, label %.preheader128.loopexit.i.i2226, !llvm.loop !539

.preheader127.i.i2197:                            ; preds = %bb.ly, %.preheader128.i.i2193
  %.142.lcssa.i.i2198 = phi i32 [ %.041.lcssa.i.i2194, %.preheader128.i.i2193 ], [ %i.rpw, %bb.ly ] ; 3 uses
  %.138.lcssa.i.i2199 = phi ptr [ %.037.lcssa.i.i2195, %.preheader128.i.i2193 ], [ %i.rpv, %bb.ly ] ; 2 uses
  %.1.lcssa.i35.i2200 = phi ptr [ %.0.lcssa.i34.i2196, %.preheader128.i.i2193 ], [ %i.rpu, %bb.ly ] ; 2 uses
  %i.roc = or disjoint i32 %.142.lcssa.i.i2198, 3
  %i.rod = icmp slt i32 %i.roc, %i.rde
  br i1 %i.rod, label %.lr.ph144.i.i2210, label %.preheader.i36.i2201

.lr.ph144.i.i2210:                                ; preds = %.preheader127.i.i2197
  %i.roe = fcmp fast oeq <4 x float> %i.rlz, zeroinitializer ; 2 uses
  %i.rof = bitcast <4 x float> %i.rlz to <4 x i32>
  %i.rog = and <4 x i32> %i.rof, splat (i32 -2147483648)
  %i.roh = fcmp fast olt <4 x float> %i.rlz, zeroinitializer
  %i.roi = select <4 x i1> %i.roh, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.roj = or disjoint <4 x i32> %i.rog, splat (i32 1070141403)
  br label %bb.lz

bb.ly:                                            ; preds = %bb.ly, %.lr.ph137.i.i2216
  %.1136.i.i2217 = phi ptr [ %.0.lcssa.i34.i2196, %.lr.ph137.i.i2216 ], [ %i.rpu, %bb.ly ] ; 2 uses
  %.138135.i.i2218 = phi ptr [ %.037.lcssa.i.i2195, %.lr.ph137.i.i2216 ], [ %i.rpv, %bb.ly ] ; 2 uses
  %.142134.i.i2219 = phi i32 [ %.041.lcssa.i.i2194, %.lr.ph137.i.i2216 ], [ %i.rpw, %bb.ly ]
  %i.rok = load <8 x float>, ptr %.1136.i.i2217, align 1, !tbaa !60 ; 4 uses
  %i.rol = fcmp fast ueq <8 x float> %i.rok, zeroinitializer ; 2 uses
  %.not126.i.i2220 = or <8 x i1> %i.rmj, %i.rol
  %i.rom = fcmp fast olt <8 x float> %i.rok, zeroinitializer
  %i.ron = select <8 x i1> %i.rom, <8 x float> %i.rmn, <8 x float> zeroinitializer
  %i.roo = fdiv fast <8 x float> %i.rly, %i.rok   ; 2 uses
  %i.rop = bitcast <8 x float> %i.roo to <8 x i32>
  %i.roq = and <8 x i32> %i.rop, splat (i32 -2147483648)
  %i.ror = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.roo) ; 3 uses
  %i.ros = fcmp fast ogt <8 x float> %i.ror, splat (float 1.000000e+00) ; 2 uses
  %i.rot = select <8 x i1> %i.ros, <8 x float> splat (float -1.000000e+00), <8 x float> %i.ror
  %i.rou = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ror, <8 x float> splat (float 1.000000e+00))
  %i.rov = fdiv fast <8 x float> %i.rot, %i.rou   ; 3 uses
  %i.row = fmul fast <8 x float> %i.rov, %i.rov   ; 3 uses
  %i.rox = fmul fast <8 x float> %i.row, %i.row   ; 7 uses
  %i.roy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rox, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.roz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rox, <8 x float> nofpclass(nan inf) %i.roy, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.rpa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rox, <8 x float> nofpclass(nan inf) %i.roz, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.rpb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rox, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.rpc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rox, <8 x float> nofpclass(nan inf) %i.rpb, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.rpd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rox, <8 x float> nofpclass(nan inf) %i.rpc, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.rpe = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rox, <8 x float> nofpclass(nan inf) %i.rpd, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.rpf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.row, <8 x float> nofpclass(nan inf) %i.rpa, <8 x float> nofpclass(nan inf) %i.rpe)
  %i.rpg = fmul fast <8 x float> %i.rpf, %i.rov
  %i.rph = select <8 x i1> %i.ros, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.rpi = fadd fast <8 x float> %i.rpg, %i.rph
  %i.rpj = bitcast <8 x float> %i.rpi to <8 x i32>
  %i.rpk = or <8 x i32> %i.roq, %i.rpj
  %i.rpl = bitcast <8 x i32> %i.rpk to <8 x float>
  %i.rpm = fadd fast <8 x float> %i.ron, %i.rpl
  %i.rpn = bitcast <8 x float> %i.rok to <8 x i32>
  %isneg.inv124.i.i2221 = icmp slt <8 x i32> %i.rpn, zeroinitializer
  %i.rpo = select <8 x i1> %isneg.inv124.i.i2221, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.rpp = bitcast <8 x float> %i.rpm to <8 x i32>
  %i.rpq = select <8 x i1> %.not126.i.i2220, <8 x i32> zeroinitializer, <8 x i32> %i.rpp
  %i.rpr = select <8 x i1> %i.rol, <8 x i32> %i.rmo, <8 x i32> zeroinitializer
  %i.rps = select <8 x i1> %i.rmj, <8 x i32> %i.rpo, <8 x i32> %i.rpr
  %i.rpt = or <8 x i32> %i.rpq, %i.rps
  store <8 x i32> %i.rpt, ptr %.138135.i.i2218, align 1, !tbaa !60
  %i.rpu = getelementptr inbounds nuw i8, ptr %.1136.i.i2217, i64 32 ; 2 uses
  %i.rpv = getelementptr inbounds nuw i8, ptr %.138135.i.i2218, i64 32 ; 2 uses
  %i.rpw = add nuw nsw i32 %.142134.i.i2219, 8    ; 3 uses
  %i.rpx = or disjoint i32 %i.rpw, 7
  %i.rpy = icmp slt i32 %i.rpx, %i.rde
  br i1 %i.rpy, label %bb.ly, label %.preheader127.i.i2197, !llvm.loop !540

.preheader.i36.i2201:                             ; preds = %bb.lz, %.preheader127.i.i2197
  %.243.lcssa.i.i2202 = phi i32 [ %.142.lcssa.i.i2198, %.preheader127.i.i2197 ], [ %i.rty, %bb.lz ] ; 5 uses
  %.239.lcssa.i.i2203 = phi ptr [ %.138.lcssa.i.i2199, %.preheader127.i.i2197 ], [ %i.rtx, %bb.lz ] ; 6 uses
  %.2.lcssa.i37.i2204 = phi ptr [ %.1.lcssa.i35.i2200, %.preheader127.i.i2197 ], [ %i.rtw, %bb.lz ] ; 6 uses
  %i.rpz = icmp slt i32 %.243.lcssa.i.i2202, %i.rde
  br i1 %i.rpz, label %iter.check8829, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

iter.check8829:                                   ; preds = %.preheader.i36.i2201
  %.239.lcssa.i.i22038813 = ptrtoaddr ptr %.239.lcssa.i.i2203 to i64
  %.2.lcssa.i37.i22048812 = ptrtoaddr ptr %.2.lcssa.i37.i2204 to i64
  %i.rqa = xor i32 %.243.lcssa.i.i2202, -1
  %i.rqb = add i32 %i.rde, %i.rqa                 ; 3 uses
  %i.rqc = zext i32 %i.rqb to i64
  %i.rqd = add nuw nsw i64 %i.rqc, 1              ; 5 uses
  %min.iters.check8814 = icmp ult i32 %i.rqb, 3
  %i.rqe = sub i64 %.2.lcssa.i37.i22048812, %.239.lcssa.i.i22038813
  %diff.check8816 = icmp ugt i64 %i.rqe, -64
  %or.cond10454 = select i1 %min.iters.check8814, i1 true, i1 %diff.check8816
  br i1 %or.cond10454, label %.lr.ph151.i.i2205.preheader, label %vector.main.loop.iter.check8817

vector.main.loop.iter.check8817:                  ; preds = %iter.check8829
  %min.iters.check8818 = icmp ult i32 %i.rqb, 15
  br i1 %min.iters.check8818, label %vec.epilog.ph8833, label %vector.ph8819

vector.ph8819:                                    ; preds = %vector.main.loop.iter.check8817
  %i.rqf = and i64 %i.rqd, 12
  %n.vec8820 = and i64 %i.rqd, 8589934576         ; 5 uses
  %i.rqg = shl nuw nsw i64 %n.vec8820, 2          ; 2 uses
  %i.rqh = getelementptr i8, ptr %.2.lcssa.i37.i2204, i64 %i.rqg
  %i.rqi = getelementptr i8, ptr %.239.lcssa.i.i2203, i64 %i.rqg
  %i.rqj = trunc i64 %n.vec8820 to i32
  %i.rqk = add i32 %.243.lcssa.i.i2202, %i.rqj
  %i.rql = insertelement <8 x float> poison, float %i.rlk, i64 0
  %i.rqm = shufflevector <8 x float> %i.rql, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rqn = insertelement <4 x float> poison, float %i.rlk, i64 0
  %i.rqo = shufflevector <4 x float> %i.rqn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rqp = insertelement <2 x float> poison, float %i.rlk, i64 0
  %i.rqq = shufflevector <2 x float> %i.rqp, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body8821

vector.body8821:                                  ; preds = %vector.ph8819, %vector.body8821
  %index8822 = phi i64 [ 0, %vector.ph8819 ], [ %index.next8826, %vector.body8821 ] ; 2 uses
  %i.rqr = shl i64 %index8822, 2                  ; 2 uses
  %next.gep8823 = getelementptr i8, ptr %.2.lcssa.i37.i2204, i64 %i.rqr
  %next.gep8824 = getelementptr i8, ptr %.239.lcssa.i.i2203, i64 %i.rqr
  %wide.load8825 = load <16 x float>, ptr %next.gep8823, align 4, !tbaa !59 ; 5 uses
  %i.rqs = extractelement <16 x float> %wide.load8825, i64 0
  %i.rqt = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rlk, float %i.rqs)
  %i.rqu = shufflevector <16 x float> %wide.load8825, <16 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %i.rqv = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.rqm, <8 x float> %i.rqu)
  %i.rqw = shufflevector <16 x float> %wide.load8825, <16 x float> poison, <4 x i32> <i32 9, i32 10, i32 11, i32 12>
  %i.rqx = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.rqo, <4 x float> %i.rqw)
  %i.rqy = extractelement <16 x float> %wide.load8825, i64 13
  %i.rqz = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rlk, float %i.rqy)
  %i.rra = shufflevector <16 x float> %wide.load8825, <16 x float> poison, <2 x i32> <i32 14, i32 15>
  %i.rrb = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.rqq, <2 x float> %i.rra)
  %i.rrc = insertelement <16 x float> poison, float %i.rqt, i64 0
  %i.rrd = shufflevector <8 x float> %i.rqv, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rre = shufflevector <16 x float> %i.rrc, <16 x float> %i.rrd, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rrf = shufflevector <4 x float> %i.rqx, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rrg = shufflevector <16 x float> %i.rre, <16 x float> %i.rrf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.rrh = insertelement <16 x float> %i.rrg, float %i.rqz, i64 13
  %i.rri = shufflevector <2 x float> %i.rrb, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rrj = shufflevector <16 x float> %i.rrh, <16 x float> %i.rri, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x float> %i.rrj, ptr %next.gep8824, align 4, !tbaa !59
  %index.next8826 = add nuw i64 %index8822, 16    ; 2 uses
  %i.rrk = icmp eq i64 %index.next8826, %n.vec8820
  br i1 %i.rrk, label %middle.block8827, label %vector.body8821, !llvm.loop !541

middle.block8827:                                 ; preds = %vector.body8821
  %cmp.n8828 = icmp eq i64 %i.rqd, %n.vec8820
  br i1 %cmp.n8828, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %vec.epilog.iter.check8830

vec.epilog.iter.check8830:                        ; preds = %middle.block8827
  %min.epilog.iters.check8832 = icmp eq i64 %i.rqf, 0
  br i1 %min.epilog.iters.check8832, label %.lr.ph151.i.i2205.preheader, label %vec.epilog.ph8833, !prof !818

vec.epilog.ph8833:                                ; preds = %vector.main.loop.iter.check8817, %vec.epilog.iter.check8830
  %vec.epilog.resume.val8834 = phi i64 [ %n.vec8820, %vec.epilog.iter.check8830 ], [ 0, %vector.main.loop.iter.check8817 ]
  %n.vec8835 = and i64 %i.rqd, 8589934588         ; 4 uses
  %i.rrl = shl nuw nsw i64 %n.vec8835, 2          ; 2 uses
  %i.rrm = getelementptr i8, ptr %.2.lcssa.i37.i2204, i64 %i.rrl
  %i.rrn = getelementptr i8, ptr %.239.lcssa.i.i2203, i64 %i.rrl
  %i.rro = trunc i64 %n.vec8835 to i32
  %i.rrp = add i32 %.243.lcssa.i.i2202, %i.rro
  br label %vec.epilog.vector.body8836

vec.epilog.vector.body8836:                       ; preds = %vec.epilog.vector.body8836, %vec.epilog.ph8833
  %index8837 = phi i64 [ %vec.epilog.resume.val8834, %vec.epilog.ph8833 ], [ %index.next8841, %vec.epilog.vector.body8836 ] ; 2 uses
  %i.rrq = shl i64 %index8837, 2                  ; 2 uses
  %next.gep8838 = getelementptr i8, ptr %.2.lcssa.i37.i2204, i64 %i.rrq
  %next.gep8839 = getelementptr i8, ptr %.239.lcssa.i.i2203, i64 %i.rrq
  %wide.load8840 = load <4 x float>, ptr %next.gep8838, align 4, !tbaa !59 ; 4 uses
  %i.rrr = extractelement <4 x float> %wide.load8840, i64 0
  %i.rrs = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rlk, float %i.rrr)
  %i.rrt = extractelement <4 x float> %wide.load8840, i64 1
  %i.rru = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rlk, float %i.rrt)
  %i.rrv = extractelement <4 x float> %wide.load8840, i64 2
  %i.rrw = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rlk, float %i.rrv)
  %i.rrx = extractelement <4 x float> %wide.load8840, i64 3
  %i.rry = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rlk, float %i.rrx)
  %i.rrz = insertelement <4 x float> poison, float %i.rrs, i64 0
  %i.rsa = insertelement <4 x float> %i.rrz, float %i.rru, i64 1
  %i.rsb = insertelement <4 x float> %i.rsa, float %i.rrw, i64 2
  %i.rsc = insertelement <4 x float> %i.rsb, float %i.rry, i64 3
  store <4 x float> %i.rsc, ptr %next.gep8839, align 4, !tbaa !59
  %index.next8841 = add nuw i64 %index8837, 4     ; 2 uses
  %i.rsd = icmp eq i64 %index.next8841, %n.vec8835
  br i1 %i.rsd, label %vec.epilog.middle.block8842, label %vec.epilog.vector.body8836, !llvm.loop !542

vec.epilog.middle.block8842:                      ; preds = %vec.epilog.vector.body8836
  %cmp.n8843 = icmp eq i64 %i.rqd, %n.vec8835
  br i1 %cmp.n8843, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph151.i.i2205.preheader

.lr.ph151.i.i2205.preheader:                      ; preds = %iter.check8829, %vec.epilog.iter.check8830, %vec.epilog.middle.block8842
  %.3150.i.i2206.ph = phi ptr [ %.2.lcssa.i37.i2204, %iter.check8829 ], [ %i.rqh, %vec.epilog.iter.check8830 ], [ %i.rrm, %vec.epilog.middle.block8842 ] ; 2 uses
  %.340149.i.i2207.ph = phi ptr [ %.239.lcssa.i.i2203, %iter.check8829 ], [ %i.rqi, %vec.epilog.iter.check8830 ], [ %i.rrn, %vec.epilog.middle.block8842 ] ; 2 uses
  %.344148.i.i2208.ph = phi i32 [ %.243.lcssa.i.i2202, %iter.check8829 ], [ %i.rqk, %vec.epilog.iter.check8830 ], [ %i.rrp, %vec.epilog.middle.block8842 ] ; 4 uses
  %i.rse = sub i32 %i.rde, %.344148.i.i2208.ph
  %xtraiter12072 = and i32 %i.rse, 3              ; 2 uses
  %lcmp.mod12073.not = icmp eq i32 %xtraiter12072, 0
  br i1 %lcmp.mod12073.not, label %.lr.ph151.i.i2205.prol.loopexit, label %.lr.ph151.i.i2205.prol

.lr.ph151.i.i2205.prol:                           ; preds = %.lr.ph151.i.i2205.preheader, %.lr.ph151.i.i2205.prol
  %.3150.i.i2206.prol = phi ptr [ %i.rsh, %.lr.ph151.i.i2205.prol ], [ %.3150.i.i2206.ph, %.lr.ph151.i.i2205.preheader ] ; 2 uses
  %.340149.i.i2207.prol = phi ptr [ %i.rsi, %.lr.ph151.i.i2205.prol ], [ %.340149.i.i2207.ph, %.lr.ph151.i.i2205.preheader ] ; 2 uses
  %.344148.i.i2208.prol = phi i32 [ %i.rsj, %.lr.ph151.i.i2205.prol ], [ %.344148.i.i2208.ph, %.lr.ph151.i.i2205.preheader ]
  %prol.iter12074 = phi i32 [ %prol.iter12074.next, %.lr.ph151.i.i2205.prol ], [ 0, %.lr.ph151.i.i2205.preheader ]
  %i.rsf = load float, ptr %.3150.i.i2206.prol, align 4, !tbaa !59
  %i.rsg = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rlk, float %i.rsf)
  store float %i.rsg, ptr %.340149.i.i2207.prol, align 4, !tbaa !59
  %i.rsh = getelementptr inbounds nuw i8, ptr %.3150.i.i2206.prol, i64 4 ; 2 uses
  %i.rsi = getelementptr inbounds nuw i8, ptr %.340149.i.i2207.prol, i64 4 ; 2 uses
  %i.rsj = add nuw nsw i32 %.344148.i.i2208.prol, 1 ; 2 uses
  %prol.iter12074.next = add i32 %prol.iter12074, 1 ; 2 uses
  %prol.iter12074.cmp.not = icmp eq i32 %prol.iter12074.next, %xtraiter12072
  br i1 %prol.iter12074.cmp.not, label %.lr.ph151.i.i2205.prol.loopexit, label %.lr.ph151.i.i2205.prol, !llvm.loop !543

.lr.ph151.i.i2205.prol.loopexit:                  ; preds = %.lr.ph151.i.i2205.prol, %.lr.ph151.i.i2205.preheader
  %.3150.i.i2206.unr = phi ptr [ %.3150.i.i2206.ph, %.lr.ph151.i.i2205.preheader ], [ %i.rsh, %.lr.ph151.i.i2205.prol ]
  %.340149.i.i2207.unr = phi ptr [ %.340149.i.i2207.ph, %.lr.ph151.i.i2205.preheader ], [ %i.rsi, %.lr.ph151.i.i2205.prol ]
  %.344148.i.i2208.unr = phi i32 [ %.344148.i.i2208.ph, %.lr.ph151.i.i2205.preheader ], [ %i.rsj, %.lr.ph151.i.i2205.prol ]
  %i.rsk = sub i32 %.344148.i.i2208.ph, %i.rde
  %i.rsl = icmp ugt i32 %i.rsk, -4
  br i1 %i.rsl, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph151.i.i2205

bb.lz:                                            ; preds = %bb.lz, %.lr.ph144.i.i2210
  %.2143.i.i2211 = phi ptr [ %.1.lcssa.i35.i2200, %.lr.ph144.i.i2210 ], [ %i.rtw, %bb.lz ] ; 2 uses
  %.239142.i.i2212 = phi ptr [ %.138.lcssa.i.i2199, %.lr.ph144.i.i2210 ], [ %i.rtx, %bb.lz ] ; 2 uses
  %.243141.i.i2213 = phi i32 [ %.142.lcssa.i.i2198, %.lr.ph144.i.i2210 ], [ %i.rty, %bb.lz ]
  %i.rsm = load <4 x float>, ptr %.2143.i.i2211, align 1, !tbaa !60 ; 4 uses
  %i.rsn = fcmp fast oeq <4 x float> %i.rsm, zeroinitializer ; 2 uses
  %.not123.i.i2214 = or <4 x i1> %i.roe, %i.rsn
  %i.rso = fcmp fast olt <4 x float> %i.rsm, zeroinitializer
  %i.rsp = select <4 x i1> %i.rso, <4 x float> %i.roi, <4 x float> zeroinitializer
  %i.rsq = fdiv fast <4 x float> %i.rlz, %i.rsm   ; 2 uses
  %i.rsr = bitcast <4 x float> %i.rsq to <4 x i32>
  %i.rss = and <4 x i32> %i.rsr, splat (i32 -2147483648)
  %i.rst = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.rsq) ; 3 uses
  %i.rsu = fcmp fast ogt <4 x float> %i.rst, splat (float 1.000000e+00) ; 2 uses
  %i.rsv = select <4 x i1> %i.rsu, <4 x float> splat (float -1.000000e+00), <4 x float> %i.rst
  %i.rsw = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.rst, <4 x float> splat (float 1.000000e+00))
  %i.rsx = fdiv fast <4 x float> %i.rsv, %i.rsw   ; 3 uses
  %i.rsy = fmul fast <4 x float> %i.rsx, %i.rsx   ; 3 uses
  %i.rsz = fmul fast <4 x float> %i.rsy, %i.rsy   ; 7 uses
  %i.rta = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rsz, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.rtb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rsz, <4 x float> nofpclass(nan inf) %i.rta, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.rtc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rsz, <4 x float> nofpclass(nan inf) %i.rtb, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.rtd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rsz, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.rte = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rsz, <4 x float> nofpclass(nan inf) %i.rtd, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.rtf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rsz, <4 x float> nofpclass(nan inf) %i.rte, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.rtg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rsz, <4 x float> nofpclass(nan inf) %i.rtf, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.rth = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rsy, <4 x float> nofpclass(nan inf) %i.rtc, <4 x float> nofpclass(nan inf) %i.rtg)
  %i.rti = fmul fast <4 x float> %i.rth, %i.rsx
  %i.rtj = select <4 x i1> %i.rsu, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.rtk = fadd fast <4 x float> %i.rti, %i.rtj
  %i.rtl = bitcast <4 x float> %i.rtk to <4 x i32>
  %i.rtm = or <4 x i32> %i.rss, %i.rtl
  %i.rtn = bitcast <4 x i32> %i.rtm to <4 x float>
  %i.rto = fadd fast <4 x float> %i.rsp, %i.rtn
  %i.rtp = bitcast <4 x float> %i.rsm to <4 x i32>
  %isneg.inv.i39.i2215 = icmp slt <4 x i32> %i.rtp, zeroinitializer
  %i.rtq = select <4 x i1> %isneg.inv.i39.i2215, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.rtr = bitcast <4 x float> %i.rto to <4 x i32>
  %i.rts = select <4 x i1> %.not123.i.i2214, <4 x i32> zeroinitializer, <4 x i32> %i.rtr
  %i.rtt = select <4 x i1> %i.rsn, <4 x i32> %i.roj, <4 x i32> zeroinitializer
  %i.rtu = select <4 x i1> %i.roe, <4 x i32> %i.rtq, <4 x i32> %i.rtt
  %i.rtv = or <4 x i32> %i.rts, %i.rtu
  store <4 x i32> %i.rtv, ptr %.239142.i.i2212, align 1, !tbaa !60
  %i.rtw = getelementptr inbounds nuw i8, ptr %.2143.i.i2211, i64 16 ; 2 uses
  %i.rtx = getelementptr inbounds nuw i8, ptr %.239142.i.i2212, i64 16 ; 2 uses
  %i.rty = add nuw nsw i32 %.243141.i.i2213, 4    ; 3 uses
  %i.rtz = or disjoint i32 %i.rty, 3
  %i.rua = icmp slt i32 %i.rtz, %i.rde
  br i1 %i.rua, label %bb.lz, label %.preheader.i36.i2201, !llvm.loop !544

.lr.ph151.i.i2205:                                ; preds = %.lr.ph151.i.i2205.prol.loopexit, %.lr.ph151.i.i2205
  %.3150.i.i2206 = phi ptr [ %i.rup, %.lr.ph151.i.i2205 ], [ %.3150.i.i2206.unr, %.lr.ph151.i.i2205.prol.loopexit ] ; 5 uses
  %.340149.i.i2207 = phi ptr [ %i.ruq, %.lr.ph151.i.i2205 ], [ %.340149.i.i2207.unr, %.lr.ph151.i.i2205.prol.loopexit ] ; 5 uses
  %.344148.i.i2208 = phi i32 [ %i.rur, %.lr.ph151.i.i2205 ], [ %.344148.i.i2208.unr, %.lr.ph151.i.i2205.prol.loopexit ]
  %i.rub = load float, ptr %.3150.i.i2206, align 4, !tbaa !59
  %i.ruc = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rlk, float %i.rub)
  store float %i.ruc, ptr %.340149.i.i2207, align 4, !tbaa !59
  %i.rud = getelementptr inbounds nuw i8, ptr %.3150.i.i2206, i64 4
  %i.rue = getelementptr inbounds nuw i8, ptr %.340149.i.i2207, i64 4
  %i.ruf = load float, ptr %i.rud, align 4, !tbaa !59
  %i.rug = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rlk, float %i.ruf)
  store float %i.rug, ptr %i.rue, align 4, !tbaa !59
  %i.ruh = getelementptr inbounds nuw i8, ptr %.3150.i.i2206, i64 8
  %i.rui = getelementptr inbounds nuw i8, ptr %.340149.i.i2207, i64 8
  %i.ruj = load float, ptr %i.ruh, align 4, !tbaa !59
  %i.ruk = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rlk, float %i.ruj)
  store float %i.ruk, ptr %i.rui, align 4, !tbaa !59
  %i.rul = getelementptr inbounds nuw i8, ptr %.3150.i.i2206, i64 12
  %i.rum = getelementptr inbounds nuw i8, ptr %.340149.i.i2207, i64 12
  %i.run = load float, ptr %i.rul, align 4, !tbaa !59
  %i.ruo = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rlk, float %i.run)
  store float %i.ruo, ptr %i.rum, align 4, !tbaa !59
  %i.rup = getelementptr inbounds nuw i8, ptr %.3150.i.i2206, i64 16
  %i.ruq = getelementptr inbounds nuw i8, ptr %.340149.i.i2207, i64 16
  %i.rur = add nuw nsw i32 %.344148.i.i2208, 4    ; 2 uses
  %exitcond.not.i38.i2209.3 = icmp eq i32 %i.rur, %i.rde
  br i1 %exitcond.not.i38.i2209.3, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph151.i.i2205, !llvm.loop !545

bb.ma:                                            ; preds = %bb.lq
  %i.rus = icmp eq i32 %3, 1
  br i1 %i.rus, label %bb.mb, label %bb.mk

bb.mb:                                            ; preds = %bb.ma
  %i.rut = load float, ptr %0, align 4, !tbaa !59 ; 15 uses
  %i.ruu = icmp eq i32 %.sroa.speculated.i2031, 4
  br i1 %i.ruu, label %.thread121.i76.i2192, label %bb.mc

.thread121.i76.i2192:                             ; preds = %bb.mb
  %i.ruv = load <4 x float>, ptr %0, align 4, !tbaa !60 ; 2 uses
  %i.ruw = shufflevector <4 x float> %i.ruv, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.mf

bb.mc:                                            ; preds = %bb.mb
  %i.rux = insertelement <4 x float> poison, float %i.rut, i64 0 ; 2 uses
  %i.ruy = shufflevector <4 x float> %i.rux, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ruz = icmp eq i32 %.sroa.speculated.i2031, 8
  br i1 %i.ruz, label %.thread120.i75.i2191, label %bb.md

.thread120.i75.i2191:                             ; preds = %bb.mc
  %i.rva = load <8 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.mf

bb.md:                                            ; preds = %bb.mc
  %i.rvb = shufflevector <4 x float> %i.rux, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.rvc = icmp eq i32 %.sroa.speculated.i2031, 16
  br i1 %i.rvc, label %bb.me, label %bb.mf

bb.me:                                            ; preds = %bb.md
  %i.rvd = load <16 x float>, ptr %0, align 4, !tbaa !60
  br label %bb.mg

bb.mf:                                            ; preds = %bb.md, %.thread120.i75.i2191, %.thread121.i76.i2192
  %i.rve = phi <8 x float> [ %i.rva, %.thread120.i75.i2191 ], [ %i.rvb, %bb.md ], [ %i.ruw, %.thread121.i76.i2192 ] ; 2 uses
  %i.rvf = phi <4 x float> [ %i.ruy, %.thread120.i75.i2191 ], [ %i.ruy, %bb.md ], [ %i.ruv, %.thread121.i76.i2192 ]
  %i.rvg = shufflevector <8 x float> %i.rve, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.mg

bb.mg:                                            ; preds = %bb.mf, %bb.me
  %i.rvh = phi <8 x float> [ %i.rvb, %bb.me ], [ %i.rve, %bb.mf ] ; 4 uses
  %i.rvi = phi <4 x float> [ %i.ruy, %bb.me ], [ %i.rvf, %bb.mf ] ; 4 uses
  %i.rvj = phi fast <16 x float> [ %i.rvd, %bb.me ], [ %i.rvg, %bb.mf ] ; 4 uses
  %i.rvk = icmp sgt i32 %i.rde, 15
  br i1 %i.rvk, label %.lr.ph.i70.i2186, label %.preheader128.i41.i2167

.lr.ph.i70.i2186:                                 ; preds = %bb.mg
  %i.rvl = fcmp fast one <16 x float> %i.rvj, zeroinitializer
  %i.rvm = fcmp fast olt <16 x float> %i.rvj, zeroinitializer
  %i.rvn = bitcast <16 x float> %i.rvj to <16 x i32>
  %i.rvo = icmp slt <16 x i32> %i.rvn, zeroinitializer
  %i.rvp = select fast <16 x i1> %i.rvo, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.rvq = fdiv fast <16 x float> splat (float 1.000000e+00), %i.rvj
  br label %bb.mh

.preheader128.loopexit.i74.i2190:                 ; preds = %bb.mh
  %i.rvr = and i32 %i.rde, 2147483632
  br label %.preheader128.i41.i2167

.preheader128.i41.i2167:                          ; preds = %.preheader128.loopexit.i74.i2190, %bb.mg
  %.041.lcssa.i42.i2168 = phi i32 [ 0, %bb.mg ], [ %i.rvr, %.preheader128.loopexit.i74.i2190 ] ; 3 uses
  %.037.lcssa.i43.i2169 = phi ptr [ %2, %bb.mg ], [ %i.rxh, %.preheader128.loopexit.i74.i2190 ] ; 2 uses
  %.0.lcssa.i44.i2170 = phi ptr [ %1, %bb.mg ], [ %i.rxg, %.preheader128.loopexit.i74.i2190 ] ; 2 uses
  %i.rvs = or disjoint i32 %.041.lcssa.i42.i2168, 7
  %i.rvt = icmp slt i32 %i.rvs, %i.rde
  br i1 %i.rvt, label %.lr.ph137.i64.i2185, label %.preheader127.i45.i2171

.lr.ph137.i64.i2185:                              ; preds = %.preheader128.i41.i2167
  %i.rvu = fcmp fast ueq <8 x float> %i.rvh, zeroinitializer ; 2 uses
  %i.rvv = fcmp fast olt <8 x float> %i.rvh, zeroinitializer
  %i.rvw = bitcast <8 x float> %i.rvh to <8 x i32>
  %isneg.inv124.i65.i = icmp slt <8 x i32> %i.rvw, zeroinitializer
  %i.rvx = select <8 x i1> %isneg.inv124.i65.i, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.rvy = fdiv fast <8 x float> splat (float 1.000000e+00), %i.rvh
  br label %bb.mi

bb.mh:                                            ; preds = %bb.mh, %.lr.ph.i70.i2186
  %.0131.i71.i2187 = phi ptr [ %1, %.lr.ph.i70.i2186 ], [ %i.rxg, %bb.mh ] ; 2 uses
  %.037130.i72.i2188 = phi ptr [ %2, %.lr.ph.i70.i2186 ], [ %i.rxh, %bb.mh ] ; 2 uses
  %.041129.i73.i2189 = phi i32 [ 0, %.lr.ph.i70.i2186 ], [ %i.rxi, %bb.mh ]
  %i.rvz = load <16 x float>, ptr %.0131.i71.i2187, align 1, !tbaa !60 ; 4 uses
  %i.rwa = fcmp fast one <16 x float> %i.rvz, zeroinitializer
  %i.rwb = fcmp fast olt <16 x float> %i.rvz, zeroinitializer
  %i.rwc = select fast <16 x i1> %i.rwb, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.rwd = select fast <16 x i1> %i.rvm, <16 x float> %i.rwc, <16 x float> zeroinitializer
  %i.rwe = fmul fast <16 x float> %i.rvz, %i.rvq  ; 2 uses
  %i.rwf = bitcast <16 x float> %i.rwe to <16 x i32>
  %i.rwg = and <16 x i32> %i.rwf, splat (i32 -2147483648)
  %i.rwh = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.rwe) ; 3 uses
  %i.rwi = fcmp fast ogt <16 x float> %i.rwh, splat (float 1.000000e+00) ; 2 uses
  %i.rwj = select fast <16 x i1> %i.rwi, <16 x float> splat (float -1.000000e+00), <16 x float> %i.rwh
  %i.rwk = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.rwh, <16 x float> splat (float 1.000000e+00))
  %i.rwl = fdiv fast <16 x float> %i.rwj, %i.rwk  ; 3 uses
  %i.rwm = fmul fast <16 x float> %i.rwl, %i.rwl  ; 3 uses
  %i.rwn = fmul fast <16 x float> %i.rwm, %i.rwm  ; 7 uses
  %i.rwo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rwn, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.rwp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rwn, <16 x float> nofpclass(nan inf) %i.rwo, <16 x float> splat (float f0xBE117200))
  %i.rwq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rwn, <16 x float> nofpclass(nan inf) %i.rwp, <16 x float> splat (float f0xBEAAAA53))
  %i.rwr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rwn, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.rws = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rwn, <16 x float> nofpclass(nan inf) %i.rwr, <16 x float> splat (float f0x3DD9ED24))
  %i.rwt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rwn, <16 x float> nofpclass(nan inf) %i.rws, <16 x float> splat (float f0x3E4CB974))
  %i.rwu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rwn, <16 x float> nofpclass(nan inf) %i.rwt, <16 x float> splat (float 1.000000e+00))
  %i.rwv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rwm, <16 x float> nofpclass(nan inf) %i.rwq, <16 x float> nofpclass(nan inf) %i.rwu)
  %i.rww = fmul fast <16 x float> %i.rwv, %i.rwl
  %i.rwx = select fast <16 x i1> %i.rwi, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.rwy = fadd fast <16 x float> %i.rww, %i.rwx
  %i.rwz = bitcast <16 x float> %i.rwy to <16 x i32>
  %i.rxa = or <16 x i32> %i.rwg, %i.rwz
  %i.rxb = bitcast <16 x i32> %i.rxa to <16 x float>
  %i.rxc = fadd fast <16 x float> %i.rwd, %i.rxb
  %i.rxd = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.rvz)
  %i.rxe = select <16 x i1> %i.rvl, <16 x float> %i.rxc, <16 x float> %i.rxd
  %i.rxf = select <16 x i1> %i.rwa, <16 x float> %i.rxe, <16 x float> %i.rvp
  store <16 x float> %i.rxf, ptr %.037130.i72.i2188, align 1, !tbaa !60
  %i.rxg = getelementptr inbounds nuw i8, ptr %.0131.i71.i2187, i64 64 ; 2 uses
  %i.rxh = getelementptr inbounds nuw i8, ptr %.037130.i72.i2188, i64 64 ; 2 uses
  %i.rxi = add nuw nsw i32 %.041129.i73.i2189, 16 ; 2 uses
  %i.rxj = or disjoint i32 %i.rxi, 15
  %i.rxk = icmp slt i32 %i.rxj, %i.rde
  br i1 %i.rxk, label %bb.mh, label %.preheader128.loopexit.i74.i2190, !llvm.loop !546

.preheader127.i45.i2171:                          ; preds = %bb.mi, %.preheader128.i41.i2167
  %.142.lcssa.i46.i2172 = phi i32 [ %.041.lcssa.i42.i2168, %.preheader128.i41.i2167 ], [ %i.rzg, %bb.mi ] ; 3 uses
  %.138.lcssa.i47.i2173 = phi ptr [ %.037.lcssa.i43.i2169, %.preheader128.i41.i2167 ], [ %i.rzf, %bb.mi ] ; 2 uses
  %.1.lcssa.i48.i2174 = phi ptr [ %.0.lcssa.i44.i2170, %.preheader128.i41.i2167 ], [ %i.rze, %bb.mi ] ; 2 uses
  %i.rxl = or disjoint i32 %.142.lcssa.i46.i2172, 3
  %i.rxm = icmp slt i32 %i.rxl, %i.rde
  br i1 %i.rxm, label %.lr.ph144.i58.i2184, label %.preheader.i49.i2175

.lr.ph144.i58.i2184:                              ; preds = %.preheader127.i45.i2171
  %i.rxn = fcmp fast oeq <4 x float> %i.rvi, zeroinitializer ; 2 uses
  %i.rxo = fcmp fast olt <4 x float> %i.rvi, zeroinitializer
  %i.rxp = bitcast <4 x float> %i.rvi to <4 x i32>
  %isneg.inv.i59.i = icmp slt <4 x i32> %i.rxp, zeroinitializer
  %i.rxq = select <4 x i1> %isneg.inv.i59.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.rxr = fdiv fast <4 x float> splat (float 1.000000e+00), %i.rvi
  br label %bb.mj

bb.mi:                                            ; preds = %bb.mi, %.lr.ph137.i64.i2185
  %.1136.i66.i = phi ptr [ %.0.lcssa.i44.i2170, %.lr.ph137.i64.i2185 ], [ %i.rze, %bb.mi ] ; 2 uses
  %.138135.i67.i = phi ptr [ %.037.lcssa.i43.i2169, %.lr.ph137.i64.i2185 ], [ %i.rzf, %bb.mi ] ; 2 uses
  %.142134.i68.i = phi i32 [ %.041.lcssa.i42.i2168, %.lr.ph137.i64.i2185 ], [ %i.rzg, %bb.mi ]
  %i.rxs = load <8 x float>, ptr %.1136.i66.i, align 1, !tbaa !60 ; 4 uses
  %i.rxt = fcmp fast ueq <8 x float> %i.rxs, zeroinitializer ; 2 uses
  %.not126.i69.i = or <8 x i1> %i.rvu, %i.rxt
  %i.rxu = bitcast <8 x float> %i.rxs to <8 x i32>
  %i.rxv = and <8 x i32> %i.rxu, splat (i32 -2147483648)
  %i.rxw = fcmp fast olt <8 x float> %i.rxs, zeroinitializer
  %i.rxx = select <8 x i1> %i.rxw, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.rxy = select <8 x i1> %i.rvv, <8 x float> %i.rxx, <8 x float> zeroinitializer
  %i.rxz = fmul fast <8 x float> %i.rxs, %i.rvy   ; 2 uses
  %i.rya = bitcast <8 x float> %i.rxz to <8 x i32>
  %i.ryb = and <8 x i32> %i.rya, splat (i32 -2147483648)
  %i.ryc = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.rxz) ; 3 uses
  %i.ryd = fcmp fast ogt <8 x float> %i.ryc, splat (float 1.000000e+00) ; 2 uses
  %i.rye = select <8 x i1> %i.ryd, <8 x float> splat (float -1.000000e+00), <8 x float> %i.ryc
  %i.ryf = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ryc, <8 x float> splat (float 1.000000e+00))
  %i.ryg = fdiv fast <8 x float> %i.rye, %i.ryf   ; 3 uses
  %i.ryh = fmul fast <8 x float> %i.ryg, %i.ryg   ; 3 uses
  %i.ryi = fmul fast <8 x float> %i.ryh, %i.ryh   ; 7 uses
  %i.ryj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ryi, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.ryk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ryi, <8 x float> nofpclass(nan inf) %i.ryj, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.ryl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ryi, <8 x float> nofpclass(nan inf) %i.ryk, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.rym = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ryi, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.ryn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ryi, <8 x float> nofpclass(nan inf) %i.rym, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.ryo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ryi, <8 x float> nofpclass(nan inf) %i.ryn, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.ryp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ryi, <8 x float> nofpclass(nan inf) %i.ryo, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.ryq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ryh, <8 x float> nofpclass(nan inf) %i.ryl, <8 x float> nofpclass(nan inf) %i.ryp)
  %i.ryr = fmul fast <8 x float> %i.ryq, %i.ryg
  %i.rys = select <8 x i1> %i.ryd, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.ryt = fadd fast <8 x float> %i.ryr, %i.rys
  %i.ryu = bitcast <8 x float> %i.ryt to <8 x i32>
  %i.ryv = or <8 x i32> %i.ryb, %i.ryu
  %i.ryw = bitcast <8 x i32> %i.ryv to <8 x float>
  %i.ryx = fadd fast <8 x float> %i.rxy, %i.ryw
  %i.ryy = or disjoint <8 x i32> %i.rxv, splat (i32 1070141403)
  %i.ryz = bitcast <8 x float> %i.ryx to <8 x i32>
  %i.rza = select <8 x i1> %.not126.i69.i, <8 x i32> zeroinitializer, <8 x i32> %i.ryz
  %i.rzb = select <8 x i1> %i.rvu, <8 x i32> %i.ryy, <8 x i32> zeroinitializer
  %i.rzc = select <8 x i1> %i.rxt, <8 x i32> %i.rvx, <8 x i32> %i.rzb
  %i.rzd = or <8 x i32> %i.rza, %i.rzc
  store <8 x i32> %i.rzd, ptr %.138135.i67.i, align 1, !tbaa !60
  %i.rze = getelementptr inbounds nuw i8, ptr %.1136.i66.i, i64 32 ; 2 uses
  %i.rzf = getelementptr inbounds nuw i8, ptr %.138135.i67.i, i64 32 ; 2 uses
  %i.rzg = add nuw nsw i32 %.142134.i68.i, 8      ; 3 uses
  %i.rzh = or disjoint i32 %i.rzg, 7
  %i.rzi = icmp slt i32 %i.rzh, %i.rde
  br i1 %i.rzi, label %bb.mi, label %.preheader127.i45.i2171, !llvm.loop !547

.preheader.i49.i2175:                             ; preds = %bb.mj, %.preheader127.i45.i2171
  %.243.lcssa.i50.i2176 = phi i32 [ %.142.lcssa.i46.i2172, %.preheader127.i45.i2171 ], [ %i.sdk, %bb.mj ] ; 5 uses
  %.239.lcssa.i51.i2177 = phi ptr [ %.138.lcssa.i47.i2173, %.preheader127.i45.i2171 ], [ %i.sdj, %bb.mj ] ; 6 uses
  %.2.lcssa.i52.i2178 = phi ptr [ %.1.lcssa.i48.i2174, %.preheader127.i45.i2171 ], [ %i.sdi, %bb.mj ] ; 6 uses
  %i.rzj = icmp slt i32 %.243.lcssa.i50.i2176, %i.rde
  br i1 %i.rzj, label %iter.check8790, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

iter.check8790:                                   ; preds = %.preheader.i49.i2175
  %.239.lcssa.i51.i21778774 = ptrtoaddr ptr %.239.lcssa.i51.i2177 to i64
  %.2.lcssa.i52.i21788773 = ptrtoaddr ptr %.2.lcssa.i52.i2178 to i64
  %i.rzk = xor i32 %.243.lcssa.i50.i2176, -1
  %i.rzl = add i32 %i.rde, %i.rzk                 ; 3 uses
  %i.rzm = zext i32 %i.rzl to i64
  %i.rzn = add nuw nsw i64 %i.rzm, 1              ; 5 uses
  %min.iters.check8775 = icmp ult i32 %i.rzl, 3
  %i.rzo = sub i64 %.2.lcssa.i52.i21788773, %.239.lcssa.i51.i21778774
  %diff.check8777 = icmp ugt i64 %i.rzo, -64
  %or.cond10455 = select i1 %min.iters.check8775, i1 true, i1 %diff.check8777
  br i1 %or.cond10455, label %.lr.ph151.i53.i2179.preheader, label %vector.main.loop.iter.check8778

vector.main.loop.iter.check8778:                  ; preds = %iter.check8790
  %min.iters.check8779 = icmp ult i32 %i.rzl, 15
  br i1 %min.iters.check8779, label %vec.epilog.ph8794, label %vector.ph8780

vector.ph8780:                                    ; preds = %vector.main.loop.iter.check8778
  %i.rzp = and i64 %i.rzn, 12
  %n.vec8781 = and i64 %i.rzn, 8589934576         ; 5 uses
  %i.rzq = shl nuw nsw i64 %n.vec8781, 2          ; 2 uses
  %i.rzr = getelementptr i8, ptr %.2.lcssa.i52.i2178, i64 %i.rzq
  %i.rzs = getelementptr i8, ptr %.239.lcssa.i51.i2177, i64 %i.rzq
  %i.rzt = trunc i64 %n.vec8781 to i32
  %i.rzu = add i32 %.243.lcssa.i50.i2176, %i.rzt
  %i.rzv = insertelement <8 x float> poison, float %i.rut, i64 0
  %i.rzw = shufflevector <8 x float> %i.rzv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rzx = insertelement <4 x float> poison, float %i.rut, i64 0
  %i.rzy = shufflevector <4 x float> %i.rzx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rzz = insertelement <2 x float> poison, float %i.rut, i64 0
  %i.saa = shufflevector <2 x float> %i.rzz, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body8782

vector.body8782:                                  ; preds = %vector.ph8780, %vector.body8782
  %index8783 = phi i64 [ 0, %vector.ph8780 ], [ %index.next8787, %vector.body8782 ] ; 2 uses
  %i.sab = shl i64 %index8783, 2                  ; 2 uses
  %next.gep8784 = getelementptr i8, ptr %.2.lcssa.i52.i2178, i64 %i.sab
  %next.gep8785 = getelementptr i8, ptr %.239.lcssa.i51.i2177, i64 %i.sab
  %wide.load8786 = load <16 x float>, ptr %next.gep8784, align 4, !tbaa !59 ; 5 uses
  %i.sac = extractelement <16 x float> %wide.load8786, i64 0
  %i.sad = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.sac, float %i.rut)
  %i.sae = shufflevector <16 x float> %wide.load8786, <16 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %i.saf = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.sae, <8 x float> %i.rzw)
  %i.sag = shufflevector <16 x float> %wide.load8786, <16 x float> poison, <4 x i32> <i32 9, i32 10, i32 11, i32 12>
  %i.sah = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.sag, <4 x float> %i.rzy)
  %i.sai = extractelement <16 x float> %wide.load8786, i64 13
  %i.saj = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.sai, float %i.rut)
  %i.sak = shufflevector <16 x float> %wide.load8786, <16 x float> poison, <2 x i32> <i32 14, i32 15>
  %i.sal = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.sak, <2 x float> %i.saa)
  %i.sam = insertelement <16 x float> poison, float %i.sad, i64 0
  %i.san = shufflevector <8 x float> %i.saf, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sao = shufflevector <16 x float> %i.sam, <16 x float> %i.san, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sap = shufflevector <4 x float> %i.sah, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.saq = shufflevector <16 x float> %i.sao, <16 x float> %i.sap, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.sar = insertelement <16 x float> %i.saq, float %i.saj, i64 13
  %i.sas = shufflevector <2 x float> %i.sal, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sat = shufflevector <16 x float> %i.sar, <16 x float> %i.sas, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x float> %i.sat, ptr %next.gep8785, align 4, !tbaa !59
  %index.next8787 = add nuw i64 %index8783, 16    ; 2 uses
  %i.sau = icmp eq i64 %index.next8787, %n.vec8781
  br i1 %i.sau, label %middle.block8788, label %vector.body8782, !llvm.loop !548

middle.block8788:                                 ; preds = %vector.body8782
  %cmp.n8789 = icmp eq i64 %i.rzn, %n.vec8781
  br i1 %cmp.n8789, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %vec.epilog.iter.check8791

vec.epilog.iter.check8791:                        ; preds = %middle.block8788
  %min.epilog.iters.check8793 = icmp eq i64 %i.rzp, 0
  br i1 %min.epilog.iters.check8793, label %.lr.ph151.i53.i2179.preheader, label %vec.epilog.ph8794, !prof !818

vec.epilog.ph8794:                                ; preds = %vector.main.loop.iter.check8778, %vec.epilog.iter.check8791
  %vec.epilog.resume.val8795 = phi i64 [ %n.vec8781, %vec.epilog.iter.check8791 ], [ 0, %vector.main.loop.iter.check8778 ]
  %n.vec8796 = and i64 %i.rzn, 8589934588         ; 4 uses
  %i.sav = shl nuw nsw i64 %n.vec8796, 2          ; 2 uses
  %i.saw = getelementptr i8, ptr %.2.lcssa.i52.i2178, i64 %i.sav
  %i.sax = getelementptr i8, ptr %.239.lcssa.i51.i2177, i64 %i.sav
  %i.say = trunc i64 %n.vec8796 to i32
  %i.saz = add i32 %.243.lcssa.i50.i2176, %i.say
  br label %vec.epilog.vector.body8797

vec.epilog.vector.body8797:                       ; preds = %vec.epilog.vector.body8797, %vec.epilog.ph8794
  %index8798 = phi i64 [ %vec.epilog.resume.val8795, %vec.epilog.ph8794 ], [ %index.next8802, %vec.epilog.vector.body8797 ] ; 2 uses
  %i.sba = shl i64 %index8798, 2                  ; 2 uses
  %next.gep8799 = getelementptr i8, ptr %.2.lcssa.i52.i2178, i64 %i.sba
  %next.gep8800 = getelementptr i8, ptr %.239.lcssa.i51.i2177, i64 %i.sba
  %wide.load8801 = load <4 x float>, ptr %next.gep8799, align 4, !tbaa !59 ; 4 uses
  %i.sbb = extractelement <4 x float> %wide.load8801, i64 0
  %i.sbc = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.sbb, float %i.rut)
  %i.sbd = extractelement <4 x float> %wide.load8801, i64 1
  %i.sbe = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.sbd, float %i.rut)
  %i.sbf = extractelement <4 x float> %wide.load8801, i64 2
  %i.sbg = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.sbf, float %i.rut)
  %i.sbh = extractelement <4 x float> %wide.load8801, i64 3
  %i.sbi = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.sbh, float %i.rut)
  %i.sbj = insertelement <4 x float> poison, float %i.sbc, i64 0
  %i.sbk = insertelement <4 x float> %i.sbj, float %i.sbe, i64 1
  %i.sbl = insertelement <4 x float> %i.sbk, float %i.sbg, i64 2
  %i.sbm = insertelement <4 x float> %i.sbl, float %i.sbi, i64 3
  store <4 x float> %i.sbm, ptr %next.gep8800, align 4, !tbaa !59
  %index.next8802 = add nuw i64 %index8798, 4     ; 2 uses
  %i.sbn = icmp eq i64 %index.next8802, %n.vec8796
  br i1 %i.sbn, label %vec.epilog.middle.block8803, label %vec.epilog.vector.body8797, !llvm.loop !549

vec.epilog.middle.block8803:                      ; preds = %vec.epilog.vector.body8797
  %cmp.n8804 = icmp eq i64 %i.rzn, %n.vec8796
  br i1 %cmp.n8804, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph151.i53.i2179.preheader

.lr.ph151.i53.i2179.preheader:                    ; preds = %iter.check8790, %vec.epilog.iter.check8791, %vec.epilog.middle.block8803
  %.3150.i54.i2180.ph = phi ptr [ %.2.lcssa.i52.i2178, %iter.check8790 ], [ %i.rzr, %vec.epilog.iter.check8791 ], [ %i.saw, %vec.epilog.middle.block8803 ] ; 2 uses
  %.340149.i55.i2181.ph = phi ptr [ %.239.lcssa.i51.i2177, %iter.check8790 ], [ %i.rzs, %vec.epilog.iter.check8791 ], [ %i.sax, %vec.epilog.middle.block8803 ] ; 2 uses
  %.344148.i56.i2182.ph = phi i32 [ %.243.lcssa.i50.i2176, %iter.check8790 ], [ %i.rzu, %vec.epilog.iter.check8791 ], [ %i.saz, %vec.epilog.middle.block8803 ] ; 4 uses
  %i.sbo = sub i32 %i.rde, %.344148.i56.i2182.ph
  %xtraiter12069 = and i32 %i.sbo, 3              ; 2 uses
  %lcmp.mod12070.not = icmp eq i32 %xtraiter12069, 0
  br i1 %lcmp.mod12070.not, label %.lr.ph151.i53.i2179.prol.loopexit, label %.lr.ph151.i53.i2179.prol

.lr.ph151.i53.i2179.prol:                         ; preds = %.lr.ph151.i53.i2179.preheader, %.lr.ph151.i53.i2179.prol
  %.3150.i54.i2180.prol = phi ptr [ %i.sbr, %.lr.ph151.i53.i2179.prol ], [ %.3150.i54.i2180.ph, %.lr.ph151.i53.i2179.preheader ] ; 2 uses
  %.340149.i55.i2181.prol = phi ptr [ %i.sbs, %.lr.ph151.i53.i2179.prol ], [ %.340149.i55.i2181.ph, %.lr.ph151.i53.i2179.preheader ] ; 2 uses
  %.344148.i56.i2182.prol = phi i32 [ %i.sbt, %.lr.ph151.i53.i2179.prol ], [ %.344148.i56.i2182.ph, %.lr.ph151.i53.i2179.preheader ]
  %prol.iter12071 = phi i32 [ %prol.iter12071.next, %.lr.ph151.i53.i2179.prol ], [ 0, %.lr.ph151.i53.i2179.preheader ]
  %i.sbp = load float, ptr %.3150.i54.i2180.prol, align 4, !tbaa !59
  %i.sbq = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.sbp, float %i.rut)
  store float %i.sbq, ptr %.340149.i55.i2181.prol, align 4, !tbaa !59
  %i.sbr = getelementptr inbounds nuw i8, ptr %.3150.i54.i2180.prol, i64 4 ; 2 uses
  %i.sbs = getelementptr inbounds nuw i8, ptr %.340149.i55.i2181.prol, i64 4 ; 2 uses
  %i.sbt = add nuw nsw i32 %.344148.i56.i2182.prol, 1 ; 2 uses
  %prol.iter12071.next = add i32 %prol.iter12071, 1 ; 2 uses
  %prol.iter12071.cmp.not = icmp eq i32 %prol.iter12071.next, %xtraiter12069
  br i1 %prol.iter12071.cmp.not, label %.lr.ph151.i53.i2179.prol.loopexit, label %.lr.ph151.i53.i2179.prol, !llvm.loop !550

.lr.ph151.i53.i2179.prol.loopexit:                ; preds = %.lr.ph151.i53.i2179.prol, %.lr.ph151.i53.i2179.preheader
  %.3150.i54.i2180.unr = phi ptr [ %.3150.i54.i2180.ph, %.lr.ph151.i53.i2179.preheader ], [ %i.sbr, %.lr.ph151.i53.i2179.prol ]
  %.340149.i55.i2181.unr = phi ptr [ %.340149.i55.i2181.ph, %.lr.ph151.i53.i2179.preheader ], [ %i.sbs, %.lr.ph151.i53.i2179.prol ]
  %.344148.i56.i2182.unr = phi i32 [ %.344148.i56.i2182.ph, %.lr.ph151.i53.i2179.preheader ], [ %i.sbt, %.lr.ph151.i53.i2179.prol ]
  %i.sbu = sub i32 %.344148.i56.i2182.ph, %i.rde
  %i.sbv = icmp ugt i32 %i.sbu, -4
  br i1 %i.sbv, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph151.i53.i2179

bb.mj:                                            ; preds = %bb.mj, %.lr.ph144.i58.i2184
  %.2143.i60.i = phi ptr [ %.1.lcssa.i48.i2174, %.lr.ph144.i58.i2184 ], [ %i.sdi, %bb.mj ] ; 2 uses
  %.239142.i61.i = phi ptr [ %.138.lcssa.i47.i2173, %.lr.ph144.i58.i2184 ], [ %i.sdj, %bb.mj ] ; 2 uses
  %.243141.i62.i = phi i32 [ %.142.lcssa.i46.i2172, %.lr.ph144.i58.i2184 ], [ %i.sdk, %bb.mj ]
  %i.sbw = load <4 x float>, ptr %.2143.i60.i, align 1, !tbaa !60 ; 4 uses
  %i.sbx = fcmp fast oeq <4 x float> %i.sbw, zeroinitializer ; 2 uses
  %.not123.i63.i = or <4 x i1> %i.rxn, %i.sbx
  %i.sby = bitcast <4 x float> %i.sbw to <4 x i32>
  %i.sbz = and <4 x i32> %i.sby, splat (i32 -2147483648)
  %i.sca = fcmp fast olt <4 x float> %i.sbw, zeroinitializer
  %i.scb = select <4 x i1> %i.sca, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.scc = select <4 x i1> %i.rxo, <4 x float> %i.scb, <4 x float> zeroinitializer
  %i.scd = fmul fast <4 x float> %i.sbw, %i.rxr   ; 2 uses
  %i.sce = bitcast <4 x float> %i.scd to <4 x i32>
  %i.scf = and <4 x i32> %i.sce, splat (i32 -2147483648)
  %i.scg = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.scd) ; 3 uses
  %i.sch = fcmp fast ogt <4 x float> %i.scg, splat (float 1.000000e+00) ; 2 uses
  %i.sci = select <4 x i1> %i.sch, <4 x float> splat (float -1.000000e+00), <4 x float> %i.scg
  %i.scj = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.scg, <4 x float> splat (float 1.000000e+00))
  %i.sck = fdiv fast <4 x float> %i.sci, %i.scj   ; 3 uses
  %i.scl = fmul fast <4 x float> %i.sck, %i.sck   ; 3 uses
  %i.scm = fmul fast <4 x float> %i.scl, %i.scl   ; 7 uses
  %i.scn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.scm, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.sco = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.scm, <4 x float> nofpclass(nan inf) %i.scn, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.scp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.scm, <4 x float> nofpclass(nan inf) %i.sco, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.scq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.scm, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.scr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.scm, <4 x float> nofpclass(nan inf) %i.scq, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.scs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.scm, <4 x float> nofpclass(nan inf) %i.scr, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.sct = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.scm, <4 x float> nofpclass(nan inf) %i.scs, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.scu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.scl, <4 x float> nofpclass(nan inf) %i.scp, <4 x float> nofpclass(nan inf) %i.sct)
  %i.scv = fmul fast <4 x float> %i.scu, %i.sck
  %i.scw = select <4 x i1> %i.sch, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.scx = fadd fast <4 x float> %i.scv, %i.scw
  %i.scy = bitcast <4 x float> %i.scx to <4 x i32>
  %i.scz = or <4 x i32> %i.scf, %i.scy
  %i.sda = bitcast <4 x i32> %i.scz to <4 x float>
  %i.sdb = fadd fast <4 x float> %i.scc, %i.sda
  %i.sdc = or disjoint <4 x i32> %i.sbz, splat (i32 1070141403)
  %i.sdd = bitcast <4 x float> %i.sdb to <4 x i32>
  %i.sde = select <4 x i1> %.not123.i63.i, <4 x i32> zeroinitializer, <4 x i32> %i.sdd
  %i.sdf = select <4 x i1> %i.rxn, <4 x i32> %i.sdc, <4 x i32> zeroinitializer
  %i.sdg = select <4 x i1> %i.sbx, <4 x i32> %i.rxq, <4 x i32> %i.sdf
  %i.sdh = or <4 x i32> %i.sde, %i.sdg
  store <4 x i32> %i.sdh, ptr %.239142.i61.i, align 1, !tbaa !60
  %i.sdi = getelementptr inbounds nuw i8, ptr %.2143.i60.i, i64 16 ; 2 uses
  %i.sdj = getelementptr inbounds nuw i8, ptr %.239142.i61.i, i64 16 ; 2 uses
  %i.sdk = add nuw nsw i32 %.243141.i62.i, 4      ; 3 uses
  %i.sdl = or disjoint i32 %i.sdk, 3
  %i.sdm = icmp slt i32 %i.sdl, %i.rde
  br i1 %i.sdm, label %bb.mj, label %.preheader.i49.i2175, !llvm.loop !551

.lr.ph151.i53.i2179:                              ; preds = %.lr.ph151.i53.i2179.prol.loopexit, %.lr.ph151.i53.i2179
  %.3150.i54.i2180 = phi ptr [ %i.seb, %.lr.ph151.i53.i2179 ], [ %.3150.i54.i2180.unr, %.lr.ph151.i53.i2179.prol.loopexit ] ; 5 uses
  %.340149.i55.i2181 = phi ptr [ %i.sec, %.lr.ph151.i53.i2179 ], [ %.340149.i55.i2181.unr, %.lr.ph151.i53.i2179.prol.loopexit ] ; 5 uses
  %.344148.i56.i2182 = phi i32 [ %i.sed, %.lr.ph151.i53.i2179 ], [ %.344148.i56.i2182.unr, %.lr.ph151.i53.i2179.prol.loopexit ]
  %i.sdn = load float, ptr %.3150.i54.i2180, align 4, !tbaa !59
  %i.sdo = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.sdn, float %i.rut)
  store float %i.sdo, ptr %.340149.i55.i2181, align 4, !tbaa !59
  %i.sdp = getelementptr inbounds nuw i8, ptr %.3150.i54.i2180, i64 4
  %i.sdq = getelementptr inbounds nuw i8, ptr %.340149.i55.i2181, i64 4
  %i.sdr = load float, ptr %i.sdp, align 4, !tbaa !59
  %i.sds = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.sdr, float %i.rut)
  store float %i.sds, ptr %i.sdq, align 4, !tbaa !59
  %i.sdt = getelementptr inbounds nuw i8, ptr %.3150.i54.i2180, i64 8
  %i.sdu = getelementptr inbounds nuw i8, ptr %.340149.i55.i2181, i64 8
  %i.sdv = load float, ptr %i.sdt, align 4, !tbaa !59
  %i.sdw = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.sdv, float %i.rut)
  store float %i.sdw, ptr %i.sdu, align 4, !tbaa !59
  %i.sdx = getelementptr inbounds nuw i8, ptr %.3150.i54.i2180, i64 12
  %i.sdy = getelementptr inbounds nuw i8, ptr %.340149.i55.i2181, i64 12
  %i.sdz = load float, ptr %i.sdx, align 4, !tbaa !59
  %i.sea = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.sdz, float %i.rut)
  store float %i.sea, ptr %i.sdy, align 4, !tbaa !59
  %i.seb = getelementptr inbounds nuw i8, ptr %.3150.i54.i2180, i64 16
  %i.sec = getelementptr inbounds nuw i8, ptr %.340149.i55.i2181, i64 16
  %i.sed = add nuw nsw i32 %.344148.i56.i2182, 4  ; 2 uses
  %exitcond.not.i57.i2183.3 = icmp eq i32 %i.sed, %i.rde
  br i1 %exitcond.not.i57.i2183.3, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph151.i53.i2179, !llvm.loop !552

bb.mk:                                            ; preds = %bb.ma, %bb.ln
  %i.see = icmp eq i32 %6, 1
  br i1 %i.see, label %bb.ml, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit

bb.ml:                                            ; preds = %bb.mk
  %i.sef = icmp eq i32 %3, %4
  br i1 %i.sef, label %bb.mm, label %bb.mn

bb.mm:                                            ; preds = %bb.ml
  %i.seg = icmp eq i32 %.sroa.speculated.i2031, 16
  %i.seh = icmp sgt i32 %.sroa.speculated103.i2030, 0
  %or.cond.i.i2107 = and i1 %i.seh, %i.seg
  br i1 %or.cond.i.i2107, label %.lr.ph.i80.i2161, label %.loopexit225.i.i2108

.lr.ph.i80.i2161:                                 ; preds = %bb.mm, %.lr.ph.i80.i2161
  %.0229.i.i2162 = phi ptr [ %i.sfx, %.lr.ph.i80.i2161 ], [ %0, %bb.mm ] ; 2 uses
  %.067228.i.i2163 = phi ptr [ %i.sfy, %.lr.ph.i80.i2161 ], [ %1, %bb.mm ] ; 2 uses
  %.075227.i.i2164 = phi ptr [ %i.sfz, %.lr.ph.i80.i2161 ], [ %2, %bb.mm ] ; 2 uses
  %.086226.i.i2165 = phi i32 [ %i.sga, %.lr.ph.i80.i2161 ], [ 0, %bb.mm ]
  %i.sei = load <16 x float>, ptr %.0229.i.i2162, align 1, !tbaa !60 ; 4 uses
  %i.sej = load float, ptr %.067228.i.i2163, align 4, !tbaa !59
  %i.sek = insertelement <16 x float> poison, float %i.sej, i64 0
  %i.sel = shufflevector <16 x float> %i.sek, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.sem = fcmp fast one <16 x float> %i.sei, zeroinitializer
  %i.sen = fcmp fast one <16 x float> %i.sel, zeroinitializer
  %i.seo = fcmp fast olt <16 x float> %i.sei, zeroinitializer
  %i.sep = fcmp fast olt <16 x float> %i.sel, zeroinitializer
  %i.seq = select fast <16 x i1> %i.sep, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.ser = select fast <16 x i1> %i.seo, <16 x float> %i.seq, <16 x float> zeroinitializer
  %i.ses = fdiv fast <16 x float> %i.sel, %i.sei  ; 2 uses
  %i.set = bitcast <16 x float> %i.ses to <16 x i32>
  %i.seu = and <16 x i32> %i.set, splat (i32 -2147483648)
  %i.sev = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.ses) ; 3 uses
  %i.sew = fcmp fast ogt <16 x float> %i.sev, splat (float 1.000000e+00) ; 2 uses
  %i.sex = select fast <16 x i1> %i.sew, <16 x float> splat (float -1.000000e+00), <16 x float> %i.sev
  %i.sey = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.sev, <16 x float> splat (float 1.000000e+00))
  %i.sez = fdiv fast <16 x float> %i.sex, %i.sey  ; 3 uses
  %i.sfa = fmul fast <16 x float> %i.sez, %i.sez  ; 3 uses
  %i.sfb = fmul fast <16 x float> %i.sfa, %i.sfa  ; 7 uses
  %i.sfc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.sfb, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.sfd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.sfb, <16 x float> nofpclass(nan inf) %i.sfc, <16 x float> splat (float f0xBE117200))
  %i.sfe = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.sfb, <16 x float> nofpclass(nan inf) %i.sfd, <16 x float> splat (float f0xBEAAAA53))
  %i.sff = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.sfb, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.sfg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.sfb, <16 x float> nofpclass(nan inf) %i.sff, <16 x float> splat (float f0x3DD9ED24))
  %i.sfh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.sfb, <16 x float> nofpclass(nan inf) %i.sfg, <16 x float> splat (float f0x3E4CB974))
  %i.sfi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.sfb, <16 x float> nofpclass(nan inf) %i.sfh, <16 x float> splat (float 1.000000e+00))
  %i.sfj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.sfa, <16 x float> nofpclass(nan inf) %i.sfe, <16 x float> nofpclass(nan inf) %i.sfi)
  %i.sfk = fmul fast <16 x float> %i.sfj, %i.sez
  %i.sfl = select fast <16 x i1> %i.sew, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.sfm = fadd fast <16 x float> %i.sfk, %i.sfl
  %i.sfn = bitcast <16 x float> %i.sfm to <16 x i32>
  %i.sfo = or <16 x i32> %i.seu, %i.sfn
  %i.sfp = bitcast <16 x i32> %i.sfo to <16 x float>
  %i.sfq = fadd fast <16 x float> %i.ser, %i.sfp
  %i.sfr = bitcast <16 x float> %i.sei to <16 x i32>
  %i.sfs = icmp slt <16 x i32> %i.sfr, zeroinitializer
  %i.sft = select fast <16 x i1> %i.sfs, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.sfu = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.sel)
  %i.sfv = select <16 x i1> %i.sem, <16 x float> %i.sfq, <16 x float> %i.sfu
  %i.sfw = select <16 x i1> %i.sen, <16 x float> %i.sfv, <16 x float> %i.sft
  store <16 x float> %i.sfw, ptr %.075227.i.i2164, align 1, !tbaa !60
  %i.sfx = getelementptr inbounds nuw i8, ptr %.0229.i.i2162, i64 64
  %i.sfy = getelementptr inbounds nuw i8, ptr %.067228.i.i2163, i64 4
  %i.sfz = getelementptr inbounds nuw i8, ptr %.075227.i.i2164, i64 64
  %i.sga = add nuw nsw i32 %.086226.i.i2165, 1    ; 2 uses
  %exitcond.not.i81.i2166 = icmp eq i32 %i.sga, %.sroa.speculated103.i2030
  br i1 %exitcond.not.i81.i2166, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit, label %.lr.ph.i80.i2161, !llvm.loop !553

.loopexit225.i.i2108:                             ; preds = %bb.mm
  switch i32 %.sroa.speculated.i2031, label %_ZN4ncnnL16binary_op_vectorINS_27BinaryOp_x86_avx512_functor13binary_op_addEEEvPKfS4_Pfiiii.exit [
    i32 8, label %.preheader223.i.i2141
    i32 4, label %.preheader220.i.i2109
  ]

.preheader223.i.i2141:                            ; preds = %.loopexit225.i.i2108
  %i.sgb = icmp sgt i32 %.sroa.speculated103.i2030, 1
end_hunk_4
begin_hunk_5_@_ZN4ncnnL22binary_op_vector_bf16sINS_27BinaryOp_x86_avx512_functor13binary_op_powEEEvPKtS4_Ptiiii:bb.a
  %i.oe = bitcast <16 x i32> %i.od to <16 x float> ; 3 uses
  %i.of = add nsw <16 x i32> %i.ob, splat (i32 -127)
  %i.og = sitofp fast <16 x i32> %i.of to <16 x float> ; 2 uses
  %i.oh = fadd fast <16 x float> %i.og, splat (float 1.000000e+00)
  %i.oi = fcmp fast olt <16 x float> %i.oe, splat (float f0x3F3504F3) ; 2 uses
  %i.oj = fadd fast <16 x float> %i.oe, splat (float -1.000000e+00)
  %i.ok = select fast <16 x i1> %i.oi, <16 x float> %i.og, <16 x float> %i.oh ; 2 uses
  %i.ol = select fast <16 x i1> %i.oi, <16 x float> %i.oe, <16 x float> zeroinitializer
  %i.om = fadd fast <16 x float> %i.oj, %i.ol     ; 12 uses
  %i.on = fmul fast <16 x float> %i.om, %i.om     ; 2 uses
  %i.oo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.om, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.op = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.oo, <16 x float> nofpclass(nan inf) %i.om, <16 x float> splat (float f0x3DEF251A))
  %i.oq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.op, <16 x float> nofpclass(nan inf) %i.om, <16 x float> splat (float f0xBDFE5D4F))
  %i.or = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.oq, <16 x float> nofpclass(nan inf) %i.om, <16 x float> splat (float f0x3E11E9BF))
  %i.os = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.or, <16 x float> nofpclass(nan inf) %i.om, <16 x float> splat (float f0xBE2AAE50))
  %i.ot = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.os, <16 x float> nofpclass(nan inf) %i.om, <16 x float> splat (float f0x3E4CCEAC))
  %i.ou = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ot, <16 x float> nofpclass(nan inf) %i.om, <16 x float> splat (float f0xBE7FFFFC))
  %i.ov = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ou, <16 x float> nofpclass(nan inf) %i.om, <16 x float> splat (float f0x3EAAAAAA))
  %i.ow = fmul fast <16 x float> %i.on, %i.om
  %i.ox = fmul fast <16 x float> %i.ow, %i.ov
  %i.oy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ok, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ox)
  %i.oz = fneg fast <16 x float> %i.on
  %i.pa = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.oz, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.oy)
  %i.pb = fadd fast <16 x float> %i.pa, %i.om
  %i.pc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ok, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.pb)
  %i.pd = fmul fast <16 x float> %i.pc, %i.nl
  %i.pe = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.pd, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.pf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.pe, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.pg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pf, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ph = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.pg, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.pi = fcmp fast ogt <16 x float> %i.ph, %i.pg
  %i.pj = fadd fast <16 x float> %i.ph, splat (float -1.000000e+00)
  %i.pk = select fast <16 x i1> %i.pi, <16 x float> %i.pj, <16 x float> %i.ph ; 2 uses
  %i.pl = fneg fast <16 x float> %i.pk            ; 2 uses
  %i.pm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.pl, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.pf)
  %i.pn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.pl, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.pm) ; 8 uses
  %i.po = fmul fast <16 x float> %i.pn, %i.pn
  %i.pp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pn, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.pq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pp, <16 x float> nofpclass(nan inf) %i.pn, <16 x float> splat (float f0x3C088908))
  %i.pr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pq, <16 x float> nofpclass(nan inf) %i.pn, <16 x float> splat (float f0x3D2AA9C1))
  %i.ps = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pr, <16 x float> nofpclass(nan inf) %i.pn, <16 x float> splat (float f0x3E2AAAAA))
  %i.pt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ps, <16 x float> nofpclass(nan inf) %i.pn, <16 x float> splat (float 5.000000e-01))
  %i.pu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pt, <16 x float> nofpclass(nan inf) %i.po, <16 x float> nofpclass(nan inf) %i.pn)
  %i.pv = fadd fast <16 x float> %i.pu, splat (float 1.000000e+00)
  %i.pw = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.pk, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.px = shl <16 x i32> %i.pw, splat (i32 23)
  %i.py = add <16 x i32> %i.px, splat (i32 1065353216)
  %i.pz = bitcast <16 x i32> %i.py to <16 x float>
  %i.qa = fmul fast <16 x float> %i.pv, %i.pz
  %i.qb = bitcast <16 x float> %i.qa to <16 x i32>
  %i.qc = lshr <16 x i32> %i.qb, splat (i32 16)   ; 2 uses
  %i.qd = shufflevector <16 x i32> %i.qc, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qe = shufflevector <16 x i32> %i.qc, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qf = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.qd, <8 x i32> %i.qe)
  %i.qg = bitcast <16 x i16> %i.qf to <4 x i64>
  %i.qh = shufflevector <4 x i64> %i.qg, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.qh, ptr %.035186.i, align 1, !tbaa !60
  %i.qi = getelementptr inbounds nuw i8, ptr %.0187.i, i64 32 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %.035186.i, i64 32 ; 2 uses
  %i.qk = add nuw nsw i32 %.039185.i, 16          ; 2 uses
  %i.ql = or disjoint i32 %i.qk, 15
  %i.qm = icmp slt i32 %i.ql, %i.a
  br i1 %i.qm, label %.lr.ph.i41, label %.preheader184.loopexit.i, !llvm.loop !1098

.preheader183.i:                                  ; preds = %.lr.ph193.i39, %.preheader184.i
  %.140.lcssa.i = phi i32 [ %.039.lcssa.i, %.preheader184.i ], [ %i.td, %.lr.ph193.i39 ] ; 3 uses
  %.136.lcssa.i = phi ptr [ %.035.lcssa.i, %.preheader184.i ], [ %i.tc, %.lr.ph193.i39 ] ; 2 uses
  %.1.lcssa.i35 = phi ptr [ %.0.lcssa.i34, %.preheader184.i ], [ %i.tb, %.lr.ph193.i39 ] ; 2 uses
  %i.qn = or disjoint i32 %.140.lcssa.i, 3
  %i.qo = icmp slt i32 %i.qn, %i.a
  br i1 %i.qo, label %.lr.ph200.i, label %.preheader.i36

.lr.ph193.i39:                                    ; preds = %.preheader184.i, %.lr.ph193.i39
  %.1192.i40 = phi ptr [ %i.tb, %.lr.ph193.i39 ], [ %.0.lcssa.i34, %.preheader184.i ] ; 2 uses
  %.136191.i = phi ptr [ %i.tc, %.lr.ph193.i39 ], [ %.035.lcssa.i, %.preheader184.i ] ; 2 uses
  %.140190.i = phi i32 [ %i.td, %.lr.ph193.i39 ], [ %.039.lcssa.i, %.preheader184.i ]
  %i.qp = load <8 x i16>, ptr %.1192.i40, align 1, !tbaa !60 ; 2 uses
  %i.qq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qr = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.qp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.qs = shufflevector <8 x i16> %i.qq, <8 x i16> %i.qr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qt = bitcast <16 x i16> %i.qs to <8 x float>
  %i.qu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.qt, <8 x float> splat (float f0x00800000))
  %i.qv = bitcast <8 x float> %i.qu to <8 x i32>  ; 2 uses
  %i.qw = lshr <8 x i32> %i.qv, splat (i32 23)
  %i.qx = and <8 x i32> %i.qv, splat (i32 -2139095041)
  %i.qy = or disjoint <8 x i32> %i.qx, splat (i32 1056964608)
  %i.qz = bitcast <8 x i32> %i.qy to <8 x float>  ; 3 uses
  %i.ra = add nsw <8 x i32> %i.qw, splat (i32 -127)
  %i.rb = sitofp fast <8 x i32> %i.ra to <8 x float> ; 2 uses
  %i.rc = fadd fast <8 x float> %i.rb, splat (float 1.000000e+00)
  %i.rd = fcmp fast olt <8 x float> %i.qz, splat (float f0x3F3504F3) ; 2 uses
  %i.re = select <8 x i1> %i.rd, <8 x float> %i.qz, <8 x float> zeroinitializer
  %i.rf = fadd fast <8 x float> %i.qz, splat (float -1.000000e+00)
  %i.rg = select fast <8 x i1> %i.rd, <8 x float> %i.rb, <8 x float> %i.rc ; 2 uses
  %i.rh = fadd fast <8 x float> %i.rf, %i.re      ; 12 uses
  %i.ri = fmul fast <8 x float> %i.rh, %i.rh      ; 2 uses
  %i.rj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rh, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.rk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rj, <8 x float> nofpclass(nan inf) %i.rh, <8 x float> splat (float f0x3DEF251A))
  %i.rl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rk, <8 x float> nofpclass(nan inf) %i.rh, <8 x float> splat (float f0xBDFE5D4F))
  %i.rm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rl, <8 x float> nofpclass(nan inf) %i.rh, <8 x float> splat (float f0x3E11E9BF))
  %i.rn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rm, <8 x float> nofpclass(nan inf) %i.rh, <8 x float> splat (float f0xBE2AAE50))
  %i.ro = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rn, <8 x float> nofpclass(nan inf) %i.rh, <8 x float> splat (float f0x3E4CCEAC))
  %i.rp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ro, <8 x float> nofpclass(nan inf) %i.rh, <8 x float> splat (float f0xBE7FFFFC))
  %i.rq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rp, <8 x float> nofpclass(nan inf) %i.rh, <8 x float> splat (float f0x3EAAAAAA))
  %i.rr = fmul fast <8 x float> %i.ri, %i.rh
  %i.rs = fmul fast <8 x float> %i.rr, %i.rq
  %i.rt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rg, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.rs)
  %i.ru = fneg fast <8 x float> %i.ri
  %i.rv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ru, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.rt)
  %i.rw = fadd fast <8 x float> %i.rv, %i.rh
  %i.rx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rg, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.rw)
  %i.ry = fmul fast <8 x float> %i.rx, %i.nj
  %i.rz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ry, <8 x float> splat (float f0x42B0C0A5))
  %i.sa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.rz, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.sb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.sa, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.sc = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.sb, i32 1) ; 2 uses
  %i.sd = fcmp fast ogt <8 x float> %i.sc, %i.sb
  %i.se = select <8 x i1> %i.sd, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.sf = fsub fast <8 x float> %i.sc, %i.se      ; 2 uses
  %i.sg = fneg fast <8 x float> %i.sf             ; 2 uses
  %i.sh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.sg, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.sa)
  %i.si = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.sg, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.sh) ; 8 uses
  %i.sj = fmul fast <8 x float> %i.si, %i.si
  %i.sk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.si, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.sl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.sk, <8 x float> nofpclass(nan inf) %i.si, <8 x float> splat (float f0x3C088908))
  %i.sm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.sl, <8 x float> nofpclass(nan inf) %i.si, <8 x float> splat (float f0x3D2AA9C1))
  %i.sn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.sm, <8 x float> nofpclass(nan inf) %i.si, <8 x float> splat (float f0x3E2AAAAA))
  %i.so = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.sn, <8 x float> nofpclass(nan inf) %i.si, <8 x float> splat (float 5.000000e-01))
  %i.sp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.so, <8 x float> nofpclass(nan inf) %i.sj, <8 x float> nofpclass(nan inf) %i.si)
  %i.sq = fadd fast <8 x float> %i.sp, splat (float 1.000000e+00)
  %i.sr = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.sf)
  %i.ss = shl <8 x i32> %i.sr, splat (i32 23)
  %i.st = add <8 x i32> %i.ss, splat (i32 1065353216)
  %i.su = bitcast <8 x i32> %i.st to <8 x float>
  %i.sv = fmul fast <8 x float> %i.sq, %i.su
  %i.sw = bitcast <8 x float> %i.sv to <8 x i32>
  %i.sx = lshr <8 x i32> %i.sw, splat (i32 16)    ; 2 uses
  %i.sy = shufflevector <8 x i32> %i.sx, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sz = shufflevector <8 x i32> %i.sx, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ta = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.sy, <4 x i32> %i.sz)
  store <8 x i16> %i.ta, ptr %.136191.i, align 1, !tbaa !60
  %i.tb = getelementptr inbounds nuw i8, ptr %.1192.i40, i64 16 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.136191.i, i64 16 ; 2 uses
  %i.td = add nuw nsw i32 %.140190.i, 8           ; 3 uses
  %i.te = or disjoint i32 %i.td, 7
  %i.tf = icmp slt i32 %i.te, %i.a
  br i1 %i.tf, label %.lr.ph193.i39, label %.preheader183.i, !llvm.loop !1099

.preheader.i36:                                   ; preds = %.lr.ph200.i, %.preheader183.i
  %.241.lcssa.i = phi i32 [ %.140.lcssa.i, %.preheader183.i ], [ %i.zm, %.lr.ph200.i ] ; 5 uses
  %.237.lcssa.i = phi ptr [ %.136.lcssa.i, %.preheader183.i ], [ %i.zl, %.lr.ph200.i ] ; 6 uses
  %.2.lcssa.i37 = phi ptr [ %.1.lcssa.i35, %.preheader183.i ], [ %i.zk, %.lr.ph200.i ] ; 6 uses
  %i.tg = icmp slt i32 %.241.lcssa.i, %i.a
  br i1 %i.tg, label %iter.check357, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor13binary_op_powEEEvPKtS4_Pti.exit

iter.check357:                                    ; preds = %.preheader.i36
  %.237.lcssa.i341 = ptrtoaddr ptr %.237.lcssa.i to i64
  %.2.lcssa.i37340 = ptrtoaddr ptr %.2.lcssa.i37 to i64
  %i.th = xor i32 %.241.lcssa.i, -1
  %i.ti = add i32 %i.a, %i.th                     ; 3 uses
  %i.tj = zext i32 %i.ti to i64
  %i.tk = add nuw nsw i64 %i.tj, 1                ; 5 uses
  %min.iters.check342 = icmp ult i32 %i.ti, 7
  %i.tl = sub i64 %.2.lcssa.i37340, %.237.lcssa.i341
  %diff.check344 = icmp ugt i64 %i.tl, -64
  %or.cond = select i1 %min.iters.check342, i1 true, i1 %diff.check344
  br i1 %or.cond, label %.lr.ph207.i.preheader, label %vector.main.loop.iter.check345

vector.main.loop.iter.check345:                   ; preds = %iter.check357
  %min.iters.check346 = icmp ult i32 %i.ti, 31
  br i1 %min.iters.check346, label %vec.epilog.ph361, label %vector.ph347

vector.ph347:                                     ; preds = %vector.main.loop.iter.check345
  %i.tm = and i64 %i.tk, 24
  %n.vec348 = and i64 %i.tk, 8589934560           ; 5 uses
  %i.tn = shl nuw nsw i64 %n.vec348, 1            ; 2 uses
  %i.to = getelementptr i8, ptr %.2.lcssa.i37, i64 %i.tn
  %i.tp = getelementptr i8, ptr %.237.lcssa.i, i64 %i.tn
  %i.tq = trunc i64 %n.vec348 to i32
  %i.tr = add i32 %.241.lcssa.i, %i.tq
  %i.ts = insertelement <16 x float> poison, float %i.mf, i64 0
  %i.tt = shufflevector <16 x float> %i.ts, <16 x float> poison, <16 x i32> zeroinitializer
  %i.tu = insertelement <8 x float> poison, float %i.mf, i64 0
  %i.tv = shufflevector <8 x float> %i.tu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.tw = insertelement <4 x float> poison, float %i.mf, i64 0
  %i.tx = shufflevector <4 x float> %i.tw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ty = insertelement <2 x float> poison, float %i.mf, i64 0
  %i.tz = shufflevector <2 x float> %i.ty, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body349

vector.body349:                                   ; preds = %vector.ph347, %vector.body349
  %index350 = phi i64 [ 0, %vector.ph347 ], [ %index.next354, %vector.body349 ] ; 2 uses
  %i.ua = shl i64 %index350, 1                    ; 2 uses
  %next.gep351 = getelementptr i8, ptr %.2.lcssa.i37, i64 %i.ua
  %next.gep352 = getelementptr i8, ptr %.237.lcssa.i, i64 %i.ua
  %wide.load353 = load <32 x i16>, ptr %next.gep351, align 2, !tbaa !56
  %i.ub = zext <32 x i16> %wide.load353 to <32 x i32>
  %i.uc = shl nuw <32 x i32> %i.ub, splat (i32 16)
  %i.ud = bitcast <32 x i32> %i.uc to <32 x float> ; 6 uses
  %i.ue = extractelement <32 x float> %i.ud, i64 0
  %i.uf = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ue, float %i.mf)
  %i.ug = shufflevector <32 x float> %i.ud, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.uh = tail call fast <16 x float> @llvm.pow.v16f32(<16 x float> %i.ug, <16 x float> %i.tt)
  %i.ui = shufflevector <32 x float> %i.ud, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.uj = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.ui, <8 x float> %i.tv)
  %i.uk = shufflevector <32 x float> %i.ud, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.ul = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.uk, <4 x float> %i.tx)
  %i.um = extractelement <32 x float> %i.ud, i64 29
  %i.un = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.um, float %i.mf)
  %i.uo = shufflevector <32 x float> %i.ud, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.up = tail call fast <2 x float> @llvm.pow.v2f32(<2 x float> %i.uo, <2 x float> %i.tz)
  %i.uq = insertelement <32 x float> poison, float %i.uf, i64 0
  %i.ur = shufflevector <16 x float> %i.uh, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.us = shufflevector <32 x float> %i.uq, <32 x float> %i.ur, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ut = shufflevector <8 x float> %i.uj, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.uu = shufflevector <32 x float> %i.us, <32 x float> %i.ut, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.uv = shufflevector <4 x float> %i.ul, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.uw = shufflevector <32 x float> %i.uu, <32 x float> %i.uv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.ux = insertelement <32 x float> %i.uw, float %i.un, i64 29
  %i.uy = shufflevector <2 x float> %i.up, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.uz = shufflevector <32 x float> %i.ux, <32 x float> %i.uy, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.va = bitcast <32 x float> %i.uz to <32 x i32>
  %i.vb = lshr <32 x i32> %i.va, splat (i32 16)
  %i.vc = trunc nuw <32 x i32> %i.vb to <32 x i16>
  store <32 x i16> %i.vc, ptr %next.gep352, align 2, !tbaa !56
  %index.next354 = add nuw i64 %index350, 32      ; 2 uses
  %i.vd = icmp eq i64 %index.next354, %n.vec348
  br i1 %i.vd, label %middle.block355, label %vector.body349, !llvm.loop !1100

middle.block355:                                  ; preds = %vector.body349
  %cmp.n356 = icmp eq i64 %i.tk, %n.vec348
  br i1 %cmp.n356, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor13binary_op_powEEEvPKtS4_Pti.exit, label %vec.epilog.iter.check358

vec.epilog.iter.check358:                         ; preds = %middle.block355
  %min.epilog.iters.check360 = icmp eq i64 %i.tm, 0
  br i1 %min.epilog.iters.check360, label %.lr.ph207.i.preheader, label %vec.epilog.ph361, !prof !64

vec.epilog.ph361:                                 ; preds = %vector.main.loop.iter.check345, %vec.epilog.iter.check358
  %vec.epilog.resume.val362 = phi i64 [ %n.vec348, %vec.epilog.iter.check358 ], [ 0, %vector.main.loop.iter.check345 ]
  %n.vec363 = and i64 %i.tk, 8589934584           ; 4 uses
  %i.ve = shl nuw nsw i64 %n.vec363, 1            ; 2 uses
  %i.vf = getelementptr i8, ptr %.2.lcssa.i37, i64 %i.ve
  %i.vg = getelementptr i8, ptr %.237.lcssa.i, i64 %i.ve
  %i.vh = trunc i64 %n.vec363 to i32
  %i.vi = add i32 %.241.lcssa.i, %i.vh
  %i.vj = insertelement <4 x float> poison, float %i.mf, i64 0
  %i.vk = shufflevector <4 x float> %i.vj, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body364

vec.epilog.vector.body364:                        ; preds = %vec.epilog.vector.body364, %vec.epilog.ph361
  %index365 = phi i64 [ %vec.epilog.resume.val362, %vec.epilog.ph361 ], [ %index.next369, %vec.epilog.vector.body364 ] ; 2 uses
  %i.vl = shl i64 %index365, 1                    ; 2 uses
  %next.gep366 = getelementptr i8, ptr %.2.lcssa.i37, i64 %i.vl
  %next.gep367 = getelementptr i8, ptr %.237.lcssa.i, i64 %i.vl
  %wide.load368 = load <8 x i16>, ptr %next.gep366, align 2, !tbaa !56
  %i.vm = zext <8 x i16> %wide.load368 to <8 x i32>
  %i.vn = shl nuw <8 x i32> %i.vm, splat (i32 16)
  %i.vo = bitcast <8 x i32> %i.vn to <8 x float>  ; 5 uses
  %i.vp = extractelement <8 x float> %i.vo, i64 0
  %i.vq = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.vp, float %i.mf)
  %i.vr = extractelement <8 x float> %i.vo, i64 1
  %i.vs = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.vr, float %i.mf)
  %i.vt = extractelement <8 x float> %i.vo, i64 2
  %i.vu = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.vt, float %i.mf)
  %i.vv = shufflevector <8 x float> %i.vo, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.vw = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.vv, <4 x float> %i.vk)
  %i.vx = extractelement <8 x float> %i.vo, i64 7
  %i.vy = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.vx, float %i.mf)
  %i.vz = insertelement <8 x float> poison, float %i.vq, i64 0
  %i.wa = insertelement <8 x float> %i.vz, float %i.vs, i64 1
  %i.wb = insertelement <8 x float> %i.wa, float %i.vu, i64 2
  %i.wc = shufflevector <4 x float> %i.vw, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.wd = shufflevector <8 x float> %i.wb, <8 x float> %i.wc, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.we = insertelement <8 x float> %i.wd, float %i.vy, i64 7
  %i.wf = bitcast <8 x float> %i.we to <8 x i32>
  %i.wg = lshr <8 x i32> %i.wf, splat (i32 16)
  %i.wh = trunc nuw <8 x i32> %i.wg to <8 x i16>
  store <8 x i16> %i.wh, ptr %next.gep367, align 2, !tbaa !56
  %index.next369 = add nuw i64 %index365, 8       ; 2 uses
  %i.wi = icmp eq i64 %index.next369, %n.vec363
  br i1 %i.wi, label %vec.epilog.middle.block370, label %vec.epilog.vector.body364, !llvm.loop !1101

vec.epilog.middle.block370:                       ; preds = %vec.epilog.vector.body364
  %cmp.n371 = icmp eq i64 %i.tk, %n.vec363
  br i1 %cmp.n371, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor13binary_op_powEEEvPKtS4_Pti.exit, label %.lr.ph207.i.preheader

.lr.ph207.i.preheader:                            ; preds = %iter.check357, %vec.epilog.iter.check358, %vec.epilog.middle.block370
  %.3206.i.ph = phi ptr [ %.2.lcssa.i37, %iter.check357 ], [ %i.to, %vec.epilog.iter.check358 ], [ %i.vf, %vec.epilog.middle.block370 ] ; 3 uses
  %.338205.i.ph = phi ptr [ %.237.lcssa.i, %iter.check357 ], [ %i.tp, %vec.epilog.iter.check358 ], [ %i.vg, %vec.epilog.middle.block370 ] ; 3 uses
  %.342204.i.ph = phi i32 [ %.241.lcssa.i, %iter.check357 ], [ %i.tr, %vec.epilog.iter.check358 ], [ %i.vi, %vec.epilog.middle.block370 ] ; 4 uses
  %i.wj = sub i32 %i.a, %.342204.i.ph
  %.neg475 = add i32 %.342204.i.ph, 1
  %xtraiter470 = and i32 %i.wj, 1
  %lcmp.mod471.not = icmp eq i32 %xtraiter470, 0
  br i1 %lcmp.mod471.not, label %.lr.ph207.i.prol.loopexit, label %.lr.ph207.i.prol

.lr.ph207.i.prol:                                 ; preds = %.lr.ph207.i.preheader
  %i.wk = getelementptr inbounds nuw i8, ptr %.3206.i.ph, i64 2
  %i.wl = load i16, ptr %.3206.i.ph, align 2, !tbaa !56
  %i.wm = zext i16 %i.wl to i32
  %i.wn = shl nuw i32 %i.wm, 16
  %i.wo = bitcast i32 %i.wn to float
  %i.wp = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.wo, float %i.mf)
  %i.wq = bitcast float %i.wp to i32
  %i.wr = lshr i32 %i.wq, 16
  %i.ws = trunc nuw i32 %i.wr to i16
  %i.wt = getelementptr inbounds nuw i8, ptr %.338205.i.ph, i64 2
  store i16 %i.ws, ptr %.338205.i.ph, align 2, !tbaa !56
  %i.wu = add nuw nsw i32 %.342204.i.ph, 1
  br label %.lr.ph207.i.prol.loopexit

.lr.ph207.i.prol.loopexit:                        ; preds = %.lr.ph207.i.prol, %.lr.ph207.i.preheader
  %.3206.i.unr = phi ptr [ %.3206.i.ph, %.lr.ph207.i.preheader ], [ %i.wk, %.lr.ph207.i.prol ]
  %.338205.i.unr = phi ptr [ %.338205.i.ph, %.lr.ph207.i.preheader ], [ %i.wt, %.lr.ph207.i.prol ]
  %.342204.i.unr = phi i32 [ %.342204.i.ph, %.lr.ph207.i.preheader ], [ %i.wu, %.lr.ph207.i.prol ]
  %i.wv = icmp eq i32 %i.a, %.neg475
  br i1 %i.wv, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor13binary_op_powEEEvPKtS4_Pti.exit, label %.lr.ph207.i

.lr.ph200.i:                                      ; preds = %.preheader183.i, %.lr.ph200.i
  %.2199.i = phi ptr [ %i.zk, %.lr.ph200.i ], [ %.1.lcssa.i35, %.preheader183.i ] ; 2 uses
  %.237198.i = phi ptr [ %i.zl, %.lr.ph200.i ], [ %.136.lcssa.i, %.preheader183.i ] ; 2 uses
  %.241197.i = phi i32 [ %i.zm, %.lr.ph200.i ], [ %.140.lcssa.i, %.preheader183.i ]
  %i.ww = load i64, ptr %.2199.i, align 1, !tbaa !60
  %i.wx = insertelement <2 x i64> poison, i64 %i.ww, i64 0
  %i.wy = bitcast <2 x i64> %i.wx to <8 x i16>
  %i.wz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.wy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xa = bitcast <8 x i16> %i.wz to <4 x float>
  %i.xb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.xa, <4 x float> splat (float f0x00800000))
  %i.xc = bitcast <4 x float> %i.xb to <4 x i32>  ; 2 uses
  %i.xd = lshr <4 x i32> %i.xc, splat (i32 23)
  %i.xe = and <4 x i32> %i.xc, splat (i32 -2139095041)
  %i.xf = or disjoint <4 x i32> %i.xe, splat (i32 1056964608)
  %i.xg = bitcast <4 x i32> %i.xf to <4 x float>  ; 3 uses
  %i.xh = add nsw <4 x i32> %i.xd, splat (i32 -127)
  %i.xi = sitofp fast <4 x i32> %i.xh to <4 x float> ; 2 uses
  %i.xj = fadd fast <4 x float> %i.xi, splat (float 1.000000e+00)
  %i.xk = fcmp fast olt <4 x float> %i.xg, splat (float f0x3F3504F3) ; 2 uses
  %i.xl = select <4 x i1> %i.xk, <4 x float> %i.xg, <4 x float> zeroinitializer
  %i.xm = fadd fast <4 x float> %i.xg, splat (float -1.000000e+00)
  %i.xn = select fast <4 x i1> %i.xk, <4 x float> %i.xi, <4 x float> %i.xj ; 2 uses
  %i.xo = fadd fast <4 x float> %i.xm, %i.xl      ; 12 uses
  %i.xp = fmul fast <4 x float> %i.xo, %i.xo      ; 2 uses
  %i.xq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xo, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.xr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xq, <4 x float> nofpclass(nan inf) %i.xo, <4 x float> splat (float f0x3DEF251A))
  %i.xs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xr, <4 x float> nofpclass(nan inf) %i.xo, <4 x float> splat (float f0xBDFE5D4F))
  %i.xt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xs, <4 x float> nofpclass(nan inf) %i.xo, <4 x float> splat (float f0x3E11E9BF))
  %i.xu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xt, <4 x float> nofpclass(nan inf) %i.xo, <4 x float> splat (float f0xBE2AAE50))
  %i.xv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xu, <4 x float> nofpclass(nan inf) %i.xo, <4 x float> splat (float f0x3E4CCEAC))
  %i.xw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xv, <4 x float> nofpclass(nan inf) %i.xo, <4 x float> splat (float f0xBE7FFFFC))
  %i.xx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xw, <4 x float> nofpclass(nan inf) %i.xo, <4 x float> splat (float f0x3EAAAAAA))
  %i.xy = fmul fast <4 x float> %i.xp, %i.xo
  %i.xz = fmul fast <4 x float> %i.xy, %i.xx
  %i.ya = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xn, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.xz)
  %i.yb = fneg fast <4 x float> %i.xp
  %i.yc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.yb, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.ya)
  %i.yd = fadd fast <4 x float> %i.yc, %i.xo
  %i.ye = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xn, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.yd)
  %i.yf = fmul fast <4 x float> %i.ye, %i.nk
  %i.yg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.yf, <4 x float> splat (float f0x42B0C0A5))
  %i.yh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.yg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.yi = fmul fast <4 x float> %i.yh, splat (float f0x3FB8AA3B)
  %i.yj = fadd fast <4 x float> %i.yi, splat (float 5.000000e-01) ; 2 uses
  %i.yk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yj)
  %i.yl = sitofp fast <4 x i32> %i.yk to <4 x float> ; 2 uses
  %i.ym = fcmp fast olt <4 x float> %i.yj, %i.yl
  %i.yn = select <4 x i1> %i.ym, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.yo = fsub fast <4 x float> %i.yl, %i.yn      ; 2 uses
  %i.yp = fneg fast <4 x float> %i.yo             ; 2 uses
  %i.yq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.yp, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.yh)
  %i.yr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.yp, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.yq) ; 8 uses
  %i.ys = fmul fast <4 x float> %i.yr, %i.yr
  %i.yt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.yr, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.yu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.yt, <4 x float> nofpclass(nan inf) %i.yr, <4 x float> splat (float f0x3C088908))
  %i.yv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.yu, <4 x float> nofpclass(nan inf) %i.yr, <4 x float> splat (float f0x3D2AA9C1))
  %i.yw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.yv, <4 x float> nofpclass(nan inf) %i.yr, <4 x float> splat (float f0x3E2AAAAA))
  %i.yx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.yw, <4 x float> nofpclass(nan inf) %i.yr, <4 x float> splat (float 5.000000e-01))
  %i.yy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.yx, <4 x float> nofpclass(nan inf) %i.ys, <4 x float> nofpclass(nan inf) %i.yr)
  %i.yz = fadd fast <4 x float> %i.yy, splat (float 1.000000e+00)
  %i.za = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yo)
  %i.zb = shl <4 x i32> %i.za, splat (i32 23)
  %i.zc = add <4 x i32> %i.zb, splat (i32 1065353216)
  %i.zd = bitcast <4 x i32> %i.zc to <4 x float>
  %i.ze = fmul fast <4 x float> %i.yz, %i.zd
  %i.zf = bitcast <4 x float> %i.ze to <4 x i32>
  %i.zg = lshr <4 x i32> %i.zf, splat (i32 16)
  %i.zh = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.zg, <4 x i32> poison)
  %i.zi = bitcast <8 x i16> %i.zh to <2 x i64>
  %i.zj = extractelement <2 x i64> %i.zi, i64 0
  store i64 %i.zj, ptr %.237198.i, align 1, !tbaa !60
  %i.zk = getelementptr inbounds nuw i8, ptr %.2199.i, i64 8 ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %.237198.i, i64 8 ; 2 uses
  %i.zm = add nuw nsw i32 %.241197.i, 4           ; 3 uses
  %i.zn = or disjoint i32 %i.zm, 3
  %i.zo = icmp slt i32 %i.zn, %i.a
  br i1 %i.zo, label %.lr.ph200.i, label %.preheader.i36, !llvm.loop !1102

.lr.ph207.i:                                      ; preds = %.lr.ph207.i.prol.loopexit, %.lr.ph207.i
  %.3206.i = phi ptr [ %i.zz, %.lr.ph207.i ], [ %.3206.i.unr, %.lr.ph207.i.prol.loopexit ] ; 3 uses
  %.338205.i = phi ptr [ %i.aai, %.lr.ph207.i ], [ %.338205.i.unr, %.lr.ph207.i.prol.loopexit ] ; 3 uses
  %.342204.i = phi i32 [ %i.aaj, %.lr.ph207.i ], [ %.342204.i.unr, %.lr.ph207.i.prol.loopexit ]
  %i.zp = getelementptr inbounds nuw i8, ptr %.3206.i, i64 2
  %i.zq = load i16, ptr %.3206.i, align 2, !tbaa !56
  %i.zr = zext i16 %i.zq to i32
  %i.zs = shl nuw i32 %i.zr, 16
  %i.zt = bitcast i32 %i.zs to float
  %i.zu = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.zt, float %i.mf)
  %i.zv = bitcast float %i.zu to i32
  %i.zw = lshr i32 %i.zv, 16
  %i.zx = trunc nuw i32 %i.zw to i16
  %i.zy = getelementptr inbounds nuw i8, ptr %.338205.i, i64 2
  store i16 %i.zx, ptr %.338205.i, align 2, !tbaa !56
  %i.zz = getelementptr inbounds nuw i8, ptr %.3206.i, i64 4
  %i.aaa = load i16, ptr %i.zp, align 2, !tbaa !56
  %i.aab = zext i16 %i.aaa to i32
  %i.aac = shl nuw i32 %i.aab, 16
  %i.aad = bitcast i32 %i.aac to float
  %i.aae = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.aad, float %i.mf)
  %i.aaf = bitcast float %i.aae to i32
  %i.aag = lshr i32 %i.aaf, 16
  %i.aah = trunc nuw i32 %i.aag to i16
  %i.aai = getelementptr inbounds nuw i8, ptr %.338205.i, i64 4
  store i16 %i.aah, ptr %i.zy, align 2, !tbaa !56
  %i.aaj = add nuw nsw i32 %.342204.i, 2          ; 2 uses
  %exitcond.not.i38.1 = icmp eq i32 %i.aaj, %i.a
  br i1 %exitcond.not.i38.1, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor13binary_op_powEEEvPKtS4_Pti.exit, label %.lr.ph207.i, !llvm.loop !1103

bb.k:                                             ; preds = %bb.d
  %i.aak = icmp eq i32 %3, 1
  br i1 %i.aak, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.aal = load i16, ptr %0, align 2, !tbaa !56
  %i.aam = zext i16 %i.aal to i32
  %i.aan = shl nuw i32 %i.aam, 16
  %i.aao = bitcast i32 %i.aan to float            ; 15 uses
  %i.aap = icmp eq i32 %.sroa.speculated, 4
  br i1 %i.aap, label %.thread182.i73, label %bb.m

.thread182.i73:                                   ; preds = %bb.l
  %i.aaq = load i64, ptr %0, align 2, !tbaa !60
  %i.aar = insertelement <2 x i64> poison, i64 %i.aaq, i64 0
  %i.aas = bitcast <2 x i64> %i.aar to <8 x i16>
  %i.aat = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aas, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aau = bitcast <8 x i16> %i.aat to <4 x float> ; 2 uses
  %i.aav = shufflevector <4 x float> %i.aau, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.aaw = insertelement <4 x float> poison, float %i.aao, i64 0 ; 2 uses
  %i.aax = shufflevector <4 x float> %i.aaw, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aay = icmp eq i32 %.sroa.speculated, 8
  br i1 %i.aay, label %.thread181.i72, label %bb.n

.thread181.i72:                                   ; preds = %bb.m
  %i.aaz = load <8 x i16>, ptr %0, align 2, !tbaa !60 ; 2 uses
  %i.aba = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aaz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.abb = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aaz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.abc = shufflevector <8 x i16> %i.aba, <8 x i16> %i.abb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abd = bitcast <16 x i16> %i.abc to <8 x float>
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.abe = shufflevector <4 x float> %i.aaw, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.abf = icmp eq i32 %.sroa.speculated, 16
  br i1 %i.abf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.abg = load <16 x i16>, ptr %0, align 2, !tbaa !60 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN4ncnnL22binary_op_vector_bf16sINS_27BinaryOp_x86_avx512_functor13binary_op_powEEEvPKtS4_Ptiiii:bb.a
  %i.aea = fmul fast <8 x float> %i.adr, %i.adq
  %i.aeb = fmul fast <8 x float> %i.aea, %i.adz
  %i.aec = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adp, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.aeb)
  %i.aed = fneg fast <8 x float> %i.adr
  %i.aee = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.aed, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.aec)
  %i.aef = fadd fast <8 x float> %i.aee, %i.adq
  %i.aeg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adp, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.aef)
  br label %bb.s

bb.r:                                             ; preds = %bb.r, %.lr.ph.i67
  %.0187.i68 = phi ptr [ %1, %.lr.ph.i67 ], [ %i.afv, %bb.r ] ; 2 uses
  %.035186.i69 = phi ptr [ %2, %.lr.ph.i67 ], [ %i.afw, %bb.r ] ; 2 uses
  %.039185.i70 = phi i32 [ 0, %.lr.ph.i67 ], [ %i.afx, %bb.r ]
  %i.aeh = load <16 x i16>, ptr %.0187.i68, align 1, !tbaa !60 ; 2 uses
  %i.aei = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.aeh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.aej = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.aeh, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aek = shufflevector <16 x i16> %i.aei, <16 x i16> %i.aej, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ael = shufflevector <16 x i16> %i.aei, <16 x i16> %i.aej, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aem = bitcast <16 x i16> %i.aek to <8 x i32>
  %i.aen = bitcast <16 x i16> %i.ael to <8 x i32>
  %i.aeo = shufflevector <8 x i32> %i.aem, <8 x i32> %i.aen, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aep = bitcast <16 x i32> %i.aeo to <16 x float>
  %i.aeq = fmul fast <16 x float> %i.acz, %i.aep
  %i.aer = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.aeq, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.aes = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.aer, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.aet = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aes, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.aeu = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.aet, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.aev = fcmp fast ogt <16 x float> %i.aeu, %i.aet
  %i.aew = fadd fast <16 x float> %i.aeu, splat (float -1.000000e+00)
  %i.aex = select fast <16 x i1> %i.aev, <16 x float> %i.aew, <16 x float> %i.aeu ; 2 uses
  %i.aey = fneg fast <16 x float> %i.aex          ; 2 uses
  %i.aez = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.aey, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.aes)
  %i.afa = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.aey, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.aez) ; 8 uses
  %i.afb = fmul fast <16 x float> %i.afa, %i.afa
  %i.afc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.afa, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.afd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.afc, <16 x float> nofpclass(nan inf) %i.afa, <16 x float> splat (float f0x3C088908))
  %i.afe = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.afd, <16 x float> nofpclass(nan inf) %i.afa, <16 x float> splat (float f0x3D2AA9C1))
  %i.aff = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.afe, <16 x float> nofpclass(nan inf) %i.afa, <16 x float> splat (float f0x3E2AAAAA))
  %i.afg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aff, <16 x float> nofpclass(nan inf) %i.afa, <16 x float> splat (float 5.000000e-01))
  %i.afh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.afg, <16 x float> nofpclass(nan inf) %i.afb, <16 x float> nofpclass(nan inf) %i.afa)
  %i.afi = fadd fast <16 x float> %i.afh, splat (float 1.000000e+00)
  %i.afj = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.aex, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.afk = shl <16 x i32> %i.afj, splat (i32 23)
  %i.afl = add <16 x i32> %i.afk, splat (i32 1065353216)
  %i.afm = bitcast <16 x i32> %i.afl to <16 x float>
  %i.afn = fmul fast <16 x float> %i.afi, %i.afm
  %i.afo = bitcast <16 x float> %i.afn to <16 x i32>
  %i.afp = lshr <16 x i32> %i.afo, splat (i32 16) ; 2 uses
  %i.afq = shufflevector <16 x i32> %i.afp, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.afr = shufflevector <16 x i32> %i.afp, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.afs = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.afq, <8 x i32> %i.afr)
  %i.aft = bitcast <16 x i16> %i.afs to <4 x i64>
  %i.afu = shufflevector <4 x i64> %i.aft, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.afu, ptr %.035186.i69, align 1, !tbaa !60
  %i.afv = getelementptr inbounds nuw i8, ptr %.0187.i68, i64 32 ; 2 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %.035186.i69, i64 32 ; 2 uses
  %i.afx = add nuw nsw i32 %.039185.i70, 16       ; 2 uses
  %i.afy = or disjoint i32 %i.afx, 15
  %i.afz = icmp slt i32 %i.afy, %i.a
  br i1 %i.afz, label %bb.r, label %.preheader184.loopexit.i71, !llvm.loop !1104

.preheader183.i46:                                ; preds = %bb.s, %.preheader184.i42
  %.140.lcssa.i47 = phi i32 [ %.039.lcssa.i43, %.preheader184.i42 ], [ %i.aiq, %bb.s ] ; 3 uses
  %.136.lcssa.i48 = phi ptr [ %.035.lcssa.i44, %.preheader184.i42 ], [ %i.aip, %bb.s ] ; 2 uses
  %.1.lcssa.i49 = phi ptr [ %.0.lcssa.i45, %.preheader184.i42 ], [ %i.aio, %bb.s ] ; 2 uses
  %i.aga = or disjoint i32 %.140.lcssa.i47, 3
  %i.agb = icmp slt i32 %i.aga, %i.a
  br i1 %i.agb, label %.lr.ph200.i59, label %.preheader.i50

.lr.ph200.i59:                                    ; preds = %.preheader183.i46
  %i.agc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.abt, <4 x float> splat (float f0x00800000))
  %i.agd = bitcast <4 x float> %i.agc to <4 x i32> ; 2 uses
  %i.age = lshr <4 x i32> %i.agd, splat (i32 23)
  %i.agf = and <4 x i32> %i.agd, splat (i32 -2139095041)
  %i.agg = or disjoint <4 x i32> %i.agf, splat (i32 1056964608)
  %i.agh = bitcast <4 x i32> %i.agg to <4 x float> ; 3 uses
  %i.agi = add nsw <4 x i32> %i.age, splat (i32 -127)
  %i.agj = sitofp fast <4 x i32> %i.agi to <4 x float> ; 2 uses
  %i.agk = fadd fast <4 x float> %i.agj, splat (float 1.000000e+00)
  %i.agl = fcmp fast olt <4 x float> %i.agh, splat (float f0x3F3504F3) ; 2 uses
  %i.agm = select <4 x i1> %i.agl, <4 x float> %i.agh, <4 x float> zeroinitializer
  %i.agn = fadd fast <4 x float> %i.agh, splat (float -1.000000e+00)
  %i.ago = select fast <4 x i1> %i.agl, <4 x float> %i.agj, <4 x float> %i.agk ; 2 uses
  %i.agp = fadd fast <4 x float> %i.agn, %i.agm   ; 12 uses
  %i.agq = fmul fast <4 x float> %i.agp, %i.agp   ; 2 uses
  %i.agr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.agp, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.ags = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.agr, <4 x float> nofpclass(nan inf) %i.agp, <4 x float> splat (float f0x3DEF251A))
  %i.agt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ags, <4 x float> nofpclass(nan inf) %i.agp, <4 x float> splat (float f0xBDFE5D4F))
  %i.agu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.agt, <4 x float> nofpclass(nan inf) %i.agp, <4 x float> splat (float f0x3E11E9BF))
  %i.agv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.agu, <4 x float> nofpclass(nan inf) %i.agp, <4 x float> splat (float f0xBE2AAE50))
  %i.agw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.agv, <4 x float> nofpclass(nan inf) %i.agp, <4 x float> splat (float f0x3E4CCEAC))
  %i.agx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.agw, <4 x float> nofpclass(nan inf) %i.agp, <4 x float> splat (float f0xBE7FFFFC))
  %i.agy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.agx, <4 x float> nofpclass(nan inf) %i.agp, <4 x float> splat (float f0x3EAAAAAA))
  %i.agz = fmul fast <4 x float> %i.agq, %i.agp
  %i.aha = fmul fast <4 x float> %i.agz, %i.agy
  %i.ahb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ago, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.aha)
  %i.ahc = fneg fast <4 x float> %i.agq
  %i.ahd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ahc, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.ahb)
  %i.ahe = fadd fast <4 x float> %i.ahd, %i.agp
  %i.ahf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ago, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ahe)
  br label %bb.t

bb.s:                                             ; preds = %bb.s, %.lr.ph193.i63
  %.1192.i64 = phi ptr [ %.0.lcssa.i45, %.lr.ph193.i63 ], [ %i.aio, %bb.s ] ; 2 uses
  %.136191.i65 = phi ptr [ %.035.lcssa.i44, %.lr.ph193.i63 ], [ %i.aip, %bb.s ] ; 2 uses
  %.140190.i66 = phi i32 [ %.039.lcssa.i43, %.lr.ph193.i63 ], [ %i.aiq, %bb.s ]
  %i.ahg = load <8 x i16>, ptr %.1192.i64, align 1, !tbaa !60 ; 2 uses
  %i.ahh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ahg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ahi = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ahg, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ahj = shufflevector <8 x i16> %i.ahh, <8 x i16> %i.ahi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ahk = bitcast <16 x i16> %i.ahj to <8 x float>
  %i.ahl = fmul fast <8 x float> %i.aeg, %i.ahk
  %i.ahm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ahl, <8 x float> splat (float f0x42B0C0A5))
  %i.ahn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ahm, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aho = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ahn, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ahp = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aho, i32 1) ; 2 uses
  %i.ahq = fcmp fast ogt <8 x float> %i.ahp, %i.aho
  %i.ahr = select <8 x i1> %i.ahq, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ahs = fsub fast <8 x float> %i.ahp, %i.ahr   ; 2 uses
  %i.aht = fneg fast <8 x float> %i.ahs           ; 2 uses
  %i.ahu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.aht, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ahn)
  %i.ahv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.aht, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ahu) ; 8 uses
  %i.ahw = fmul fast <8 x float> %i.ahv, %i.ahv
  %i.ahx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ahv, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.ahy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ahx, <8 x float> nofpclass(nan inf) %i.ahv, <8 x float> splat (float f0x3C088908))
  %i.ahz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ahy, <8 x float> nofpclass(nan inf) %i.ahv, <8 x float> splat (float f0x3D2AA9C1))
  %i.aia = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ahz, <8 x float> nofpclass(nan inf) %i.ahv, <8 x float> splat (float f0x3E2AAAAA))
  %i.aib = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aia, <8 x float> nofpclass(nan inf) %i.ahv, <8 x float> splat (float 5.000000e-01))
  %i.aic = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aib, <8 x float> nofpclass(nan inf) %i.ahw, <8 x float> nofpclass(nan inf) %i.ahv)
  %i.aid = fadd fast <8 x float> %i.aic, splat (float 1.000000e+00)
  %i.aie = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ahs)
  %i.aif = shl <8 x i32> %i.aie, splat (i32 23)
  %i.aig = add <8 x i32> %i.aif, splat (i32 1065353216)
  %i.aih = bitcast <8 x i32> %i.aig to <8 x float>
  %i.aii = fmul fast <8 x float> %i.aid, %i.aih
  %i.aij = bitcast <8 x float> %i.aii to <8 x i32>
  %i.aik = lshr <8 x i32> %i.aij, splat (i32 16)  ; 2 uses
  %i.ail = shufflevector <8 x i32> %i.aik, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aim = shufflevector <8 x i32> %i.aik, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ain = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ail, <4 x i32> %i.aim)
  store <8 x i16> %i.ain, ptr %.136191.i65, align 1, !tbaa !60
  %i.aio = getelementptr inbounds nuw i8, ptr %.1192.i64, i64 16 ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %.136191.i65, i64 16 ; 2 uses
  %i.aiq = add nuw nsw i32 %.140190.i66, 8        ; 3 uses
  %i.air = or disjoint i32 %i.aiq, 7
  %i.ais = icmp slt i32 %i.air, %i.a
  br i1 %i.ais, label %bb.s, label %.preheader183.i46, !llvm.loop !1105

.preheader.i50:                                   ; preds = %bb.t, %.preheader183.i46
  %.241.lcssa.i51 = phi i32 [ %.140.lcssa.i47, %.preheader183.i46 ], [ %i.anv, %bb.t ] ; 5 uses
  %.237.lcssa.i52 = phi ptr [ %.136.lcssa.i48, %.preheader183.i46 ], [ %i.anu, %bb.t ] ; 6 uses
  %.2.lcssa.i53 = phi ptr [ %.1.lcssa.i49, %.preheader183.i46 ], [ %i.ant, %bb.t ] ; 6 uses
  %i.ait = icmp slt i32 %.241.lcssa.i51, %i.a
  br i1 %i.ait, label %iter.check318, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor13binary_op_powEEEvPKtS4_Pti.exit

iter.check318:                                    ; preds = %.preheader.i50
  %.237.lcssa.i52302 = ptrtoaddr ptr %.237.lcssa.i52 to i64
  %.2.lcssa.i53301 = ptrtoaddr ptr %.2.lcssa.i53 to i64
  %i.aiu = xor i32 %.241.lcssa.i51, -1
  %i.aiv = add i32 %i.a, %i.aiu                   ; 3 uses
  %i.aiw = zext i32 %i.aiv to i64
  %i.aix = add nuw nsw i64 %i.aiw, 1              ; 5 uses
  %min.iters.check303 = icmp ult i32 %i.aiv, 7
  %i.aiy = sub i64 %.2.lcssa.i53301, %.237.lcssa.i52302
  %diff.check305 = icmp ugt i64 %i.aiy, -64
  %or.cond423 = select i1 %min.iters.check303, i1 true, i1 %diff.check305
  br i1 %or.cond423, label %.lr.ph207.i54.preheader, label %vector.main.loop.iter.check306

vector.main.loop.iter.check306:                   ; preds = %iter.check318
  %min.iters.check307 = icmp ult i32 %i.aiv, 31
  br i1 %min.iters.check307, label %vec.epilog.ph322, label %vector.ph308

vector.ph308:                                     ; preds = %vector.main.loop.iter.check306
  %i.aiz = and i64 %i.aix, 24
  %n.vec309 = and i64 %i.aix, 8589934560          ; 5 uses
  %i.aja = shl nuw nsw i64 %n.vec309, 1           ; 2 uses
  %i.ajb = getelementptr i8, ptr %.2.lcssa.i53, i64 %i.aja
  %i.ajc = getelementptr i8, ptr %.237.lcssa.i52, i64 %i.aja
  %i.ajd = trunc i64 %n.vec309 to i32
  %i.aje = add i32 %.241.lcssa.i51, %i.ajd
  %i.ajf = insertelement <16 x float> poison, float %i.aao, i64 0
  %i.ajg = shufflevector <16 x float> %i.ajf, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ajh = insertelement <8 x float> poison, float %i.aao, i64 0
  %i.aji = shufflevector <8 x float> %i.ajh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ajj = insertelement <4 x float> poison, float %i.aao, i64 0
  %i.ajk = shufflevector <4 x float> %i.ajj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajl = insertelement <2 x float> poison, float %i.aao, i64 0
  %i.ajm = shufflevector <2 x float> %i.ajl, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body310

vector.body310:                                   ; preds = %vector.ph308, %vector.body310
  %index311 = phi i64 [ 0, %vector.ph308 ], [ %index.next315, %vector.body310 ] ; 2 uses
  %i.ajn = shl i64 %index311, 1                   ; 2 uses
  %next.gep312 = getelementptr i8, ptr %.2.lcssa.i53, i64 %i.ajn
  %next.gep313 = getelementptr i8, ptr %.237.lcssa.i52, i64 %i.ajn
  %wide.load314 = load <32 x i16>, ptr %next.gep312, align 2, !tbaa !56
  %i.ajo = zext <32 x i16> %wide.load314 to <32 x i32>
  %i.ajp = shl nuw <32 x i32> %i.ajo, splat (i32 16)
  %i.ajq = bitcast <32 x i32> %i.ajp to <32 x float> ; 6 uses
  %i.ajr = extractelement <32 x float> %i.ajq, i64 0
  %i.ajs = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.aao, float %i.ajr)
  %i.ajt = shufflevector <32 x float> %i.ajq, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.aju = tail call fast <16 x float> @llvm.pow.v16f32(<16 x float> %i.ajg, <16 x float> %i.ajt)
  %i.ajv = shufflevector <32 x float> %i.ajq, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.ajw = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.aji, <8 x float> %i.ajv)
  %i.ajx = shufflevector <32 x float> %i.ajq, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.ajy = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.ajk, <4 x float> %i.ajx)
  %i.ajz = extractelement <32 x float> %i.ajq, i64 29
  %i.aka = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.aao, float %i.ajz)
  %i.akb = shufflevector <32 x float> %i.ajq, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.akc = tail call fast <2 x float> @llvm.pow.v2f32(<2 x float> %i.ajm, <2 x float> %i.akb)
  %i.akd = insertelement <32 x float> poison, float %i.ajs, i64 0
  %i.ake = shufflevector <16 x float> %i.aju, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.akf = shufflevector <32 x float> %i.akd, <32 x float> %i.ake, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.akg = shufflevector <8 x float> %i.ajw, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.akh = shufflevector <32 x float> %i.akf, <32 x float> %i.akg, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aki = shufflevector <4 x float> %i.ajy, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.akj = shufflevector <32 x float> %i.akh, <32 x float> %i.aki, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.akk = insertelement <32 x float> %i.akj, float %i.aka, i64 29
  %i.akl = shufflevector <2 x float> %i.akc, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.akm = shufflevector <32 x float> %i.akk, <32 x float> %i.akl, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.akn = bitcast <32 x float> %i.akm to <32 x i32>
  %i.ako = lshr <32 x i32> %i.akn, splat (i32 16)
  %i.akp = trunc nuw <32 x i32> %i.ako to <32 x i16>
  store <32 x i16> %i.akp, ptr %next.gep313, align 2, !tbaa !56
  %index.next315 = add nuw i64 %index311, 32      ; 2 uses
  %i.akq = icmp eq i64 %index.next315, %n.vec309
  br i1 %i.akq, label %middle.block316, label %vector.body310, !llvm.loop !1106

middle.block316:                                  ; preds = %vector.body310
  %cmp.n317 = icmp eq i64 %i.aix, %n.vec309
  br i1 %cmp.n317, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor13binary_op_powEEEvPKtS4_Pti.exit, label %vec.epilog.iter.check319

vec.epilog.iter.check319:                         ; preds = %middle.block316
  %min.epilog.iters.check321 = icmp eq i64 %i.aiz, 0
  br i1 %min.epilog.iters.check321, label %.lr.ph207.i54.preheader, label %vec.epilog.ph322, !prof !64

vec.epilog.ph322:                                 ; preds = %vector.main.loop.iter.check306, %vec.epilog.iter.check319
  %vec.epilog.resume.val323 = phi i64 [ %n.vec309, %vec.epilog.iter.check319 ], [ 0, %vector.main.loop.iter.check306 ]
  %n.vec324 = and i64 %i.aix, 8589934584          ; 4 uses
  %i.akr = shl nuw nsw i64 %n.vec324, 1           ; 2 uses
  %i.aks = getelementptr i8, ptr %.2.lcssa.i53, i64 %i.akr
  %i.akt = getelementptr i8, ptr %.237.lcssa.i52, i64 %i.akr
  %i.aku = trunc i64 %n.vec324 to i32
  %i.akv = add i32 %.241.lcssa.i51, %i.aku
  %i.akw = insertelement <4 x float> poison, float %i.aao, i64 0
  %i.akx = shufflevector <4 x float> %i.akw, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body325

vec.epilog.vector.body325:                        ; preds = %vec.epilog.vector.body325, %vec.epilog.ph322
  %index326 = phi i64 [ %vec.epilog.resume.val323, %vec.epilog.ph322 ], [ %index.next330, %vec.epilog.vector.body325 ] ; 2 uses
  %i.aky = shl i64 %index326, 1                   ; 2 uses
  %next.gep327 = getelementptr i8, ptr %.2.lcssa.i53, i64 %i.aky
  %next.gep328 = getelementptr i8, ptr %.237.lcssa.i52, i64 %i.aky
  %wide.load329 = load <8 x i16>, ptr %next.gep327, align 2, !tbaa !56
  %i.akz = zext <8 x i16> %wide.load329 to <8 x i32>
  %i.ala = shl nuw <8 x i32> %i.akz, splat (i32 16)
  %i.alb = bitcast <8 x i32> %i.ala to <8 x float> ; 5 uses
  %i.alc = extractelement <8 x float> %i.alb, i64 0
  %i.ald = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.aao, float %i.alc)
  %i.ale = extractelement <8 x float> %i.alb, i64 1
  %i.alf = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.aao, float %i.ale)
  %i.alg = extractelement <8 x float> %i.alb, i64 2
  %i.alh = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.aao, float %i.alg)
  %i.ali = shufflevector <8 x float> %i.alb, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.alj = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.akx, <4 x float> %i.ali)
  %i.alk = extractelement <8 x float> %i.alb, i64 7
  %i.all = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.aao, float %i.alk)
  %i.alm = insertelement <8 x float> poison, float %i.ald, i64 0
  %i.aln = insertelement <8 x float> %i.alm, float %i.alf, i64 1
  %i.alo = insertelement <8 x float> %i.aln, float %i.alh, i64 2
  %i.alp = shufflevector <4 x float> %i.alj, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.alq = shufflevector <8 x float> %i.alo, <8 x float> %i.alp, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.alr = insertelement <8 x float> %i.alq, float %i.all, i64 7
  %i.als = bitcast <8 x float> %i.alr to <8 x i32>
  %i.alt = lshr <8 x i32> %i.als, splat (i32 16)
  %i.alu = trunc nuw <8 x i32> %i.alt to <8 x i16>
  store <8 x i16> %i.alu, ptr %next.gep328, align 2, !tbaa !56
  %index.next330 = add nuw i64 %index326, 8       ; 2 uses
  %i.alv = icmp eq i64 %index.next330, %n.vec324
  br i1 %i.alv, label %vec.epilog.middle.block331, label %vec.epilog.vector.body325, !llvm.loop !1107

vec.epilog.middle.block331:                       ; preds = %vec.epilog.vector.body325
  %cmp.n332 = icmp eq i64 %i.aix, %n.vec324
  br i1 %cmp.n332, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor13binary_op_powEEEvPKtS4_Pti.exit, label %.lr.ph207.i54.preheader

.lr.ph207.i54.preheader:                          ; preds = %iter.check318, %vec.epilog.iter.check319, %vec.epilog.middle.block331
  %.3206.i55.ph = phi ptr [ %.2.lcssa.i53, %iter.check318 ], [ %i.ajb, %vec.epilog.iter.check319 ], [ %i.aks, %vec.epilog.middle.block331 ] ; 3 uses
  %.338205.i56.ph = phi ptr [ %.237.lcssa.i52, %iter.check318 ], [ %i.ajc, %vec.epilog.iter.check319 ], [ %i.akt, %vec.epilog.middle.block331 ] ; 3 uses
  %.342204.i57.ph = phi i32 [ %.241.lcssa.i51, %iter.check318 ], [ %i.aje, %vec.epilog.iter.check319 ], [ %i.akv, %vec.epilog.middle.block331 ] ; 4 uses
  %i.alw = sub i32 %i.a, %.342204.i57.ph
  %.neg474 = add i32 %.342204.i57.ph, 1
  %xtraiter468 = and i32 %i.alw, 1
  %lcmp.mod469.not = icmp eq i32 %xtraiter468, 0
  br i1 %lcmp.mod469.not, label %.lr.ph207.i54.prol.loopexit, label %.lr.ph207.i54.prol

.lr.ph207.i54.prol:                               ; preds = %.lr.ph207.i54.preheader
  %i.alx = getelementptr inbounds nuw i8, ptr %.3206.i55.ph, i64 2
  %i.aly = load i16, ptr %.3206.i55.ph, align 2, !tbaa !56
  %i.alz = zext i16 %i.aly to i32
  %i.ama = shl nuw i32 %i.alz, 16
  %i.amb = bitcast i32 %i.ama to float
  %i.amc = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.aao, float %i.amb)
  %i.amd = bitcast float %i.amc to i32
  %i.ame = lshr i32 %i.amd, 16
  %i.amf = trunc nuw i32 %i.ame to i16
  %i.amg = getelementptr inbounds nuw i8, ptr %.338205.i56.ph, i64 2
  store i16 %i.amf, ptr %.338205.i56.ph, align 2, !tbaa !56
  %i.amh = add nuw nsw i32 %.342204.i57.ph, 1
  br label %.lr.ph207.i54.prol.loopexit

.lr.ph207.i54.prol.loopexit:                      ; preds = %.lr.ph207.i54.prol, %.lr.ph207.i54.preheader
  %.3206.i55.unr = phi ptr [ %.3206.i55.ph, %.lr.ph207.i54.preheader ], [ %i.alx, %.lr.ph207.i54.prol ]
  %.338205.i56.unr = phi ptr [ %.338205.i56.ph, %.lr.ph207.i54.preheader ], [ %i.amg, %.lr.ph207.i54.prol ]
  %.342204.i57.unr = phi i32 [ %.342204.i57.ph, %.lr.ph207.i54.preheader ], [ %i.amh, %.lr.ph207.i54.prol ]
  %i.ami = icmp eq i32 %i.a, %.neg474
  br i1 %i.ami, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor13binary_op_powEEEvPKtS4_Pti.exit, label %.lr.ph207.i54

bb.t:                                             ; preds = %bb.t, %.lr.ph200.i59
  %.2199.i60 = phi ptr [ %.1.lcssa.i49, %.lr.ph200.i59 ], [ %i.ant, %bb.t ] ; 2 uses
  %.237198.i61 = phi ptr [ %.136.lcssa.i48, %.lr.ph200.i59 ], [ %i.anu, %bb.t ] ; 2 uses
  %.241197.i62 = phi i32 [ %.140.lcssa.i47, %.lr.ph200.i59 ], [ %i.anv, %bb.t ]
  %i.amj = load i64, ptr %.2199.i60, align 1, !tbaa !60
  %i.amk = insertelement <2 x i64> poison, i64 %i.amj, i64 0
  %i.aml = bitcast <2 x i64> %i.amk to <8 x i16>
  %i.amm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aml, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.amn = bitcast <8 x i16> %i.amm to <4 x float>
  %i.amo = fmul fast <4 x float> %i.ahf, %i.amn
  %i.amp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.amo, <4 x float> splat (float f0x42B0C0A5))
  %i.amq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.amp, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.amr = fmul fast <4 x float> %i.amq, splat (float f0x3FB8AA3B)
  %i.ams = fadd fast <4 x float> %i.amr, splat (float 5.000000e-01) ; 2 uses
  %i.amt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ams)
  %i.amu = sitofp fast <4 x i32> %i.amt to <4 x float> ; 2 uses
  %i.amv = fcmp fast olt <4 x float> %i.ams, %i.amu
  %i.amw = select <4 x i1> %i.amv, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.amx = fsub fast <4 x float> %i.amu, %i.amw   ; 2 uses
  %i.amy = fneg fast <4 x float> %i.amx           ; 2 uses
  %i.amz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.amy, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.amq)
  %i.ana = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.amy, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.amz) ; 8 uses
  %i.anb = fmul fast <4 x float> %i.ana, %i.ana
  %i.anc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ana, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.and = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.anc, <4 x float> nofpclass(nan inf) %i.ana, <4 x float> splat (float f0x3C088908))
  %i.ane = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.and, <4 x float> nofpclass(nan inf) %i.ana, <4 x float> splat (float f0x3D2AA9C1))
  %i.anf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ane, <4 x float> nofpclass(nan inf) %i.ana, <4 x float> splat (float f0x3E2AAAAA))
  %i.ang = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.anf, <4 x float> nofpclass(nan inf) %i.ana, <4 x float> splat (float 5.000000e-01))
  %i.anh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ang, <4 x float> nofpclass(nan inf) %i.anb, <4 x float> nofpclass(nan inf) %i.ana)
  %i.ani = fadd fast <4 x float> %i.anh, splat (float 1.000000e+00)
  %i.anj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.amx)
  %i.ank = shl <4 x i32> %i.anj, splat (i32 23)
  %i.anl = add <4 x i32> %i.ank, splat (i32 1065353216)
  %i.anm = bitcast <4 x i32> %i.anl to <4 x float>
  %i.ann = fmul fast <4 x float> %i.ani, %i.anm
  %i.ano = bitcast <4 x float> %i.ann to <4 x i32>
  %i.anp = lshr <4 x i32> %i.ano, splat (i32 16)
  %i.anq = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.anp, <4 x i32> poison)
  %i.anr = bitcast <8 x i16> %i.anq to <2 x i64>
  %i.ans = extractelement <2 x i64> %i.anr, i64 0
  store i64 %i.ans, ptr %.237198.i61, align 1, !tbaa !60
  %i.ant = getelementptr inbounds nuw i8, ptr %.2199.i60, i64 8 ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %.237198.i61, i64 8 ; 2 uses
  %i.anv = add nuw nsw i32 %.241197.i62, 4        ; 3 uses
  %i.anw = or disjoint i32 %i.anv, 3
  %i.anx = icmp slt i32 %i.anw, %i.a
  br i1 %i.anx, label %bb.t, label %.preheader.i50, !llvm.loop !1108

.lr.ph207.i54:                                    ; preds = %.lr.ph207.i54.prol.loopexit, %.lr.ph207.i54
  %.3206.i55 = phi ptr [ %i.aoi, %.lr.ph207.i54 ], [ %.3206.i55.unr, %.lr.ph207.i54.prol.loopexit ] ; 3 uses
  %.338205.i56 = phi ptr [ %i.aor, %.lr.ph207.i54 ], [ %.338205.i56.unr, %.lr.ph207.i54.prol.loopexit ] ; 3 uses
  %.342204.i57 = phi i32 [ %i.aos, %.lr.ph207.i54 ], [ %.342204.i57.unr, %.lr.ph207.i54.prol.loopexit ]
  %i.any = getelementptr inbounds nuw i8, ptr %.3206.i55, i64 2
  %i.anz = load i16, ptr %.3206.i55, align 2, !tbaa !56
  %i.aoa = zext i16 %i.anz to i32
  %i.aob = shl nuw i32 %i.aoa, 16
  %i.aoc = bitcast i32 %i.aob to float
  %i.aod = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.aao, float %i.aoc)
  %i.aoe = bitcast float %i.aod to i32
  %i.aof = lshr i32 %i.aoe, 16
  %i.aog = trunc nuw i32 %i.aof to i16
  %i.aoh = getelementptr inbounds nuw i8, ptr %.338205.i56, i64 2
  store i16 %i.aog, ptr %.338205.i56, align 2, !tbaa !56
  %i.aoi = getelementptr inbounds nuw i8, ptr %.3206.i55, i64 4
  %i.aoj = load i16, ptr %i.any, align 2, !tbaa !56
  %i.aok = zext i16 %i.aoj to i32
  %i.aol = shl nuw i32 %i.aok, 16
  %i.aom = bitcast i32 %i.aol to float
  %i.aon = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.aao, float %i.aom)
  %i.aoo = bitcast float %i.aon to i32
  %i.aop = lshr i32 %i.aoo, 16
  %i.aoq = trunc nuw i32 %i.aop to i16
  %i.aor = getelementptr inbounds nuw i8, ptr %.338205.i56, i64 4
  store i16 %i.aoq, ptr %i.aoh, align 2, !tbaa !56
  %i.aos = add nuw nsw i32 %.342204.i57, 2        ; 2 uses
  %exitcond.not.i58.1 = icmp eq i32 %i.aos, %i.a
  br i1 %exitcond.not.i58.1, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor13binary_op_powEEEvPKtS4_Pti.exit, label %.lr.ph207.i54, !llvm.loop !1109

bb.u:                                             ; preds = %bb.k, %bb.a
  %i.aot = icmp eq i32 %6, 1
  br i1 %i.aot, label %bb.v, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor13binary_op_powEEEvPKtS4_Pti.exit

bb.v:                                             ; preds = %bb.u
  %i.aou = icmp eq i32 %3, %4
  br i1 %i.aou, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  switch i32 %.sroa.speculated, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor13binary_op_powEEEvPKtS4_Pti.exit [
    i32 16, label %.preheader.i76
    i32 8, label %.preheader169.i
    i32 4, label %.preheader171.i
  ]

.preheader171.i:                                  ; preds = %bb.w
  %i.aov = icmp sgt i32 %.sroa.speculated98, 0
  br i1 %i.aov, label %.lr.ph.i74, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor13binary_op_powEEEvPKtS4_Pti.exit

.preheader169.i:                                  ; preds = %bb.w
  %i.aow = icmp sgt i32 %.sroa.speculated98, 0
  br i1 %i.aow, label %.lr.ph181.i, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor13binary_op_powEEEvPKtS4_Pti.exit

.preheader.i76:                                   ; preds = %bb.w
  %i.aox = icmp sgt i32 %.sroa.speculated98, 0
  br i1 %i.aox, label %.lr.ph186.i, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor13binary_op_powEEEvPKtS4_Pti.exit

.lr.ph186.i:                                      ; preds = %.preheader.i76, %.lr.ph186.i
  %.031185.i = phi ptr [ %i.arw, %.lr.ph186.i ], [ %0, %.preheader.i76 ] ; 2 uses
  %.033184.i = phi ptr [ %i.arx, %.lr.ph186.i ], [ %1, %.preheader.i76 ] ; 2 uses
  %.036183.i = phi i32 [ %i.arz, %.lr.ph186.i ], [ 0, %.preheader.i76 ]
  %.037182.i = phi ptr [ %i.ary, %.lr.ph186.i ], [ %2, %.preheader.i76 ] ; 2 uses
  %i.aoy = load <16 x i16>, ptr %.031185.i, align 1, !tbaa !60 ; 2 uses
  %i.aoz = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.aoy, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.apa = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.aoy, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.apb = shufflevector <16 x i16> %i.aoz, <16 x i16> %i.apa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.apc = shufflevector <16 x i16> %i.aoz, <16 x i16> %i.apa, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.apd = bitcast <16 x i16> %i.apb to <8 x i32>
  %i.ape = bitcast <16 x i16> %i.apc to <8 x i32>
  %i.apf = shufflevector <8 x i32> %i.apd, <8 x i32> %i.ape, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apg = bitcast <16 x i32> %i.apf to <16 x float>
  %i.aph = load i16, ptr %.033184.i, align 2, !tbaa !56
  %i.api = zext i16 %i.aph to i32
  %i.apj = shl nuw i32 %i.api, 16
  %i.apk = insertelement <16 x i32> poison, i32 %i.apj, i64 0
  %i.apl = bitcast <16 x i32> %i.apk to <16 x float>
  %i.apm = shufflevector <16 x float> %i.apl, <16 x float> poison, <16 x i32> zeroinitializer
  %i.apn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.apg, <16 x float> splat (float f0x00800000), i32 4)
  %i.apo = bitcast <16 x float> %i.apn to <16 x i32> ; 2 uses
  %i.app = lshr <16 x i32> %i.apo, splat (i32 23)
  %i.apq = and <16 x i32> %i.apo, splat (i32 -2139095041)
  %i.apr = or disjoint <16 x i32> %i.apq, splat (i32 1056964608)
  %i.aps = bitcast <16 x i32> %i.apr to <16 x float> ; 3 uses
  %i.apt = add nsw <16 x i32> %i.app, splat (i32 -127)
  %i.apu = sitofp fast <16 x i32> %i.apt to <16 x float> ; 2 uses
  %i.apv = fadd fast <16 x float> %i.apu, splat (float 1.000000e+00)
  %i.apw = fcmp fast olt <16 x float> %i.aps, splat (float f0x3F3504F3) ; 2 uses
  %i.apx = fadd fast <16 x float> %i.aps, splat (float -1.000000e+00)
  %i.apy = select fast <16 x i1> %i.apw, <16 x float> %i.apu, <16 x float> %i.apv ; 2 uses
  %i.apz = select fast <16 x i1> %i.apw, <16 x float> %i.aps, <16 x float> zeroinitializer
  %i.aqa = fadd fast <16 x float> %i.apx, %i.apz  ; 12 uses
  %i.aqb = fmul fast <16 x float> %i.aqa, %i.aqa  ; 2 uses
  %i.aqc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aqa, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.aqd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aqc, <16 x float> nofpclass(nan inf) %i.aqa, <16 x float> splat (float f0x3DEF251A))
  %i.aqe = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aqd, <16 x float> nofpclass(nan inf) %i.aqa, <16 x float> splat (float f0xBDFE5D4F))
  %i.aqf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aqe, <16 x float> nofpclass(nan inf) %i.aqa, <16 x float> splat (float f0x3E11E9BF))
  %i.aqg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aqf, <16 x float> nofpclass(nan inf) %i.aqa, <16 x float> splat (float f0xBE2AAE50))
  %i.aqh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aqg, <16 x float> nofpclass(nan inf) %i.aqa, <16 x float> splat (float f0x3E4CCEAC))
  %i.aqi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aqh, <16 x float> nofpclass(nan inf) %i.aqa, <16 x float> splat (float f0xBE7FFFFC))
  %i.aqj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aqi, <16 x float> nofpclass(nan inf) %i.aqa, <16 x float> splat (float f0x3EAAAAAA))
  %i.aqk = fmul fast <16 x float> %i.aqb, %i.aqa
  %i.aql = fmul fast <16 x float> %i.aqk, %i.aqj
end_hunk_6
begin_hunk_7_@_ZN4ncnnL22binary_op_vector_bf16sINS_27BinaryOp_x86_avx512_functor13binary_op_powEEEvPKtS4_Ptiiii:bb.a
  %i.azf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aze, <16 x float> nofpclass(nan inf) %i.ayx, <16 x float> splat (float f0xBE7FFFFC))
  %i.azg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.azf, <16 x float> nofpclass(nan inf) %i.ayx, <16 x float> splat (float f0x3EAAAAAA))
  %i.azh = fmul fast <16 x float> %i.ayy, %i.ayx
  %i.azi = fmul fast <16 x float> %i.azh, %i.azg
  %i.azj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ayv, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.azi)
  %i.azk = fneg fast <16 x float> %i.ayy
  %i.azl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.azk, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.azj)
  %i.azm = fadd fast <16 x float> %i.azl, %i.ayx
  %i.azn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ayv, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.azm)
  %i.azo = fmul fast <16 x float> %i.azn, %i.axz
  %i.azp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.azo, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.azq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.azp, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.azr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.azq, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.azs = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.azr, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.azt = fcmp fast ogt <16 x float> %i.azs, %i.azr
  %i.azu = fadd fast <16 x float> %i.azs, splat (float -1.000000e+00)
  %i.azv = select fast <16 x i1> %i.azt, <16 x float> %i.azu, <16 x float> %i.azs ; 2 uses
  %i.azw = fneg fast <16 x float> %i.azv          ; 2 uses
  %i.azx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.azw, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.azq)
  %i.azy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.azw, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.azx) ; 8 uses
  %i.azz = fmul fast <16 x float> %i.azy, %i.azy
  %i.baa = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.azy, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.bab = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.baa, <16 x float> nofpclass(nan inf) %i.azy, <16 x float> splat (float f0x3C088908))
  %i.bac = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bab, <16 x float> nofpclass(nan inf) %i.azy, <16 x float> splat (float f0x3D2AA9C1))
  %i.bad = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bac, <16 x float> nofpclass(nan inf) %i.azy, <16 x float> splat (float f0x3E2AAAAA))
  %i.bae = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bad, <16 x float> nofpclass(nan inf) %i.azy, <16 x float> splat (float 5.000000e-01))
  %i.baf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bae, <16 x float> nofpclass(nan inf) %i.azz, <16 x float> nofpclass(nan inf) %i.azy)
  %i.bag = fadd fast <16 x float> %i.baf, splat (float 1.000000e+00)
  %i.bah = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.azv, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bai = shl <16 x i32> %i.bah, splat (i32 23)
  %i.baj = add <16 x i32> %i.bai, splat (i32 1065353216)
  %i.bak = bitcast <16 x i32> %i.baj to <16 x float>
  %i.bal = fmul fast <16 x float> %i.bag, %i.bak
  %i.bam = bitcast <16 x float> %i.bal to <16 x i32>
  %i.ban = lshr <16 x i32> %i.bam, splat (i32 16) ; 2 uses
  %i.bao = shufflevector <16 x i32> %i.ban, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bap = shufflevector <16 x i32> %i.ban, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.baq = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bao, <8 x i32> %i.bap)
  %i.bar = bitcast <16 x i16> %i.baq to <4 x i64>
  %i.bas = shufflevector <4 x i64> %i.bar, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bas, ptr %.030133.i, align 1, !tbaa !60
  %i.bat = getelementptr inbounds nuw i8, ptr %.0134.i, i64 32 ; 2 uses
  %i.bau = getelementptr inbounds nuw i8, ptr %.030133.i, i64 32 ; 2 uses
  %i.bav = add nuw nsw i32 %.034132.i, 16         ; 2 uses
  %i.baw = or disjoint i32 %i.bav, 15
  %i.bax = icmp slt i32 %i.baw, %i.a
  br i1 %i.bax, label %.lr.ph.i85, label %._crit_edge.loopexit.i, !llvm.loop !1113

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i85
  %i.bay = and i32 %i.a, 2147483632
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.y
  %.034.lcssa.i77 = phi i32 [ 0, %bb.y ], [ %i.bay, %._crit_edge.loopexit.i ] ; 3 uses
  %.030.lcssa.i = phi ptr [ %2, %bb.y ], [ %i.bau, %._crit_edge.loopexit.i ] ; 2 uses
  %.0.lcssa.i78 = phi ptr [ %0, %bb.y ], [ %i.bat, %._crit_edge.loopexit.i ] ; 2 uses
  %i.baz = insertelement <8 x float> poison, float %i.axx, i64 0
  %i.bba = shufflevector <8 x float> %i.baz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bbb = or disjoint i32 %.034.lcssa.i77, 7
  %i.bbc = icmp slt i32 %i.bbb, %i.a
  br i1 %i.bbc, label %.lr.ph141.i, label %._crit_edge142.i

.lr.ph141.i:                                      ; preds = %._crit_edge.i, %.lr.ph141.i
  %.1139.i = phi ptr [ %i.bdp, %.lr.ph141.i ], [ %.0.lcssa.i78, %._crit_edge.i ] ; 2 uses
  %.131138.i = phi ptr [ %i.bdq, %.lr.ph141.i ], [ %.030.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.135137.i = phi i32 [ %i.bdr, %.lr.ph141.i ], [ %.034.lcssa.i77, %._crit_edge.i ]
  %i.bbd = load <8 x i16>, ptr %.1139.i, align 1, !tbaa !60 ; 2 uses
  %i.bbe = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bbd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bbf = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bbd, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bbg = shufflevector <8 x i16> %i.bbe, <8 x i16> %i.bbf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bbh = bitcast <16 x i16> %i.bbg to <8 x float>
  %i.bbi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bbh, <8 x float> splat (float f0x00800000))
  %i.bbj = bitcast <8 x float> %i.bbi to <8 x i32> ; 2 uses
  %i.bbk = lshr <8 x i32> %i.bbj, splat (i32 23)
  %i.bbl = and <8 x i32> %i.bbj, splat (i32 -2139095041)
  %i.bbm = or disjoint <8 x i32> %i.bbl, splat (i32 1056964608)
  %i.bbn = bitcast <8 x i32> %i.bbm to <8 x float> ; 3 uses
  %i.bbo = add nsw <8 x i32> %i.bbk, splat (i32 -127)
  %i.bbp = sitofp fast <8 x i32> %i.bbo to <8 x float> ; 2 uses
  %i.bbq = fadd fast <8 x float> %i.bbp, splat (float 1.000000e+00)
  %i.bbr = fcmp fast olt <8 x float> %i.bbn, splat (float f0x3F3504F3) ; 2 uses
  %i.bbs = select <8 x i1> %i.bbr, <8 x float> %i.bbn, <8 x float> zeroinitializer
  %i.bbt = fadd fast <8 x float> %i.bbn, splat (float -1.000000e+00)
  %i.bbu = select fast <8 x i1> %i.bbr, <8 x float> %i.bbp, <8 x float> %i.bbq ; 2 uses
  %i.bbv = fadd fast <8 x float> %i.bbt, %i.bbs   ; 12 uses
  %i.bbw = fmul fast <8 x float> %i.bbv, %i.bbv   ; 2 uses
  %i.bbx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bbv, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.bby = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bbx, <8 x float> nofpclass(nan inf) %i.bbv, <8 x float> splat (float f0x3DEF251A))
  %i.bbz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bby, <8 x float> nofpclass(nan inf) %i.bbv, <8 x float> splat (float f0xBDFE5D4F))
  %i.bca = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bbz, <8 x float> nofpclass(nan inf) %i.bbv, <8 x float> splat (float f0x3E11E9BF))
  %i.bcb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bca, <8 x float> nofpclass(nan inf) %i.bbv, <8 x float> splat (float f0xBE2AAE50))
  %i.bcc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bcb, <8 x float> nofpclass(nan inf) %i.bbv, <8 x float> splat (float f0x3E4CCEAC))
  %i.bcd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bcc, <8 x float> nofpclass(nan inf) %i.bbv, <8 x float> splat (float f0xBE7FFFFC))
  %i.bce = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bcd, <8 x float> nofpclass(nan inf) %i.bbv, <8 x float> splat (float f0x3EAAAAAA))
  %i.bcf = fmul fast <8 x float> %i.bbw, %i.bbv
  %i.bcg = fmul fast <8 x float> %i.bcf, %i.bce
  %i.bch = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bbu, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.bcg)
  %i.bci = fneg fast <8 x float> %i.bbw
  %i.bcj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bci, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.bch)
  %i.bck = fadd fast <8 x float> %i.bcj, %i.bbv
  %i.bcl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bbu, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.bck)
  %i.bcm = fmul fast <8 x float> %i.bcl, %i.bba
  %i.bcn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bcm, <8 x float> splat (float f0x42B0C0A5))
  %i.bco = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bcn, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bcp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bco, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.bcq = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bcp, i32 1) ; 2 uses
  %i.bcr = fcmp fast ogt <8 x float> %i.bcq, %i.bcp
  %i.bcs = select <8 x i1> %i.bcr, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bct = fsub fast <8 x float> %i.bcq, %i.bcs   ; 2 uses
  %i.bcu = fneg fast <8 x float> %i.bct           ; 2 uses
  %i.bcv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bcu, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.bco)
  %i.bcw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bcu, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.bcv) ; 8 uses
  %i.bcx = fmul fast <8 x float> %i.bcw, %i.bcw
  %i.bcy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bcw, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.bcz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bcy, <8 x float> nofpclass(nan inf) %i.bcw, <8 x float> splat (float f0x3C088908))
  %i.bda = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bcz, <8 x float> nofpclass(nan inf) %i.bcw, <8 x float> splat (float f0x3D2AA9C1))
  %i.bdb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bda, <8 x float> nofpclass(nan inf) %i.bcw, <8 x float> splat (float f0x3E2AAAAA))
  %i.bdc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bdb, <8 x float> nofpclass(nan inf) %i.bcw, <8 x float> splat (float 5.000000e-01))
  %i.bdd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bdc, <8 x float> nofpclass(nan inf) %i.bcx, <8 x float> nofpclass(nan inf) %i.bcw)
  %i.bde = fadd fast <8 x float> %i.bdd, splat (float 1.000000e+00)
  %i.bdf = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bct)
  %i.bdg = shl <8 x i32> %i.bdf, splat (i32 23)
  %i.bdh = add <8 x i32> %i.bdg, splat (i32 1065353216)
  %i.bdi = bitcast <8 x i32> %i.bdh to <8 x float>
  %i.bdj = fmul fast <8 x float> %i.bde, %i.bdi
  %i.bdk = bitcast <8 x float> %i.bdj to <8 x i32>
  %i.bdl = lshr <8 x i32> %i.bdk, splat (i32 16)  ; 2 uses
  %i.bdm = shufflevector <8 x i32> %i.bdl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bdn = shufflevector <8 x i32> %i.bdl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bdo = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bdm, <4 x i32> %i.bdn)
  store <8 x i16> %i.bdo, ptr %.131138.i, align 1, !tbaa !60
  %i.bdp = getelementptr inbounds nuw i8, ptr %.1139.i, i64 16 ; 2 uses
  %i.bdq = getelementptr inbounds nuw i8, ptr %.131138.i, i64 16 ; 2 uses
  %i.bdr = add nuw nsw i32 %.135137.i, 8          ; 3 uses
  %i.bds = or disjoint i32 %i.bdr, 7
  %i.bdt = icmp slt i32 %i.bds, %i.a
  br i1 %i.bdt, label %.lr.ph141.i, label %._crit_edge142.i, !llvm.loop !1114

._crit_edge142.i:                                 ; preds = %.lr.ph141.i, %._crit_edge.i
  %.135.lcssa.i79 = phi i32 [ %.034.lcssa.i77, %._crit_edge.i ], [ %i.bdr, %.lr.ph141.i ] ; 3 uses
  %.131.lcssa.i = phi ptr [ %.030.lcssa.i, %._crit_edge.i ], [ %i.bdq, %.lr.ph141.i ] ; 2 uses
  %.1.lcssa.i80 = phi ptr [ %.0.lcssa.i78, %._crit_edge.i ], [ %i.bdp, %.lr.ph141.i ] ; 2 uses
  %i.bdu = insertelement <4 x float> poison, float %i.axx, i64 0
  %i.bdv = shufflevector <4 x float> %i.bdu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bdw = or disjoint i32 %.135.lcssa.i79, 3
  %i.bdx = icmp slt i32 %i.bdw, %i.a
  br i1 %i.bdx, label %.lr.ph150.i, label %.preheader.i81

.preheader.i81:                                   ; preds = %.lr.ph150.i, %._crit_edge142.i
  %.236.lcssa.i82 = phi i32 [ %.135.lcssa.i79, %._crit_edge142.i ], [ %i.bke, %.lr.ph150.i ] ; 5 uses
  %.232.lcssa.i = phi ptr [ %.131.lcssa.i, %._crit_edge142.i ], [ %i.bkd, %.lr.ph150.i ] ; 6 uses
  %.2.lcssa.i83 = phi ptr [ %.1.lcssa.i80, %._crit_edge142.i ], [ %i.bkc, %.lr.ph150.i ] ; 6 uses
  %i.bdy = icmp slt i32 %.236.lcssa.i82, %i.a
  br i1 %i.bdy, label %iter.check, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor13binary_op_powEEEvPKtS4_Pti.exit

iter.check:                                       ; preds = %.preheader.i81
  %.232.lcssa.i285 = ptrtoaddr ptr %.232.lcssa.i to i64
  %.2.lcssa.i83284 = ptrtoaddr ptr %.2.lcssa.i83 to i64
  %i.bdz = xor i32 %.236.lcssa.i82, -1
  %i.bea = add i32 %i.a, %i.bdz                   ; 3 uses
  %i.beb = zext i32 %i.bea to i64
  %i.bec = add nuw nsw i64 %i.beb, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bea, 7
  %i.bed = sub i64 %.2.lcssa.i83284, %.232.lcssa.i285
  %diff.check = icmp ugt i64 %i.bed, -64
  %or.cond424 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond424, label %.lr.ph157.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check286 = icmp ult i32 %i.bea, 31
  br i1 %min.iters.check286, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bee = and i64 %i.bec, 24
  %n.vec = and i64 %i.bec, 8589934560             ; 5 uses
  %i.bef = shl nuw nsw i64 %n.vec, 1              ; 2 uses
  %i.beg = getelementptr i8, ptr %.2.lcssa.i83, i64 %i.bef
  %i.beh = getelementptr i8, ptr %.232.lcssa.i, i64 %i.bef
  %i.bei = trunc i64 %n.vec to i32
  %i.bej = add i32 %.236.lcssa.i82, %i.bei
  %i.bek = insertelement <16 x float> poison, float %i.axx, i64 0
  %i.bel = shufflevector <16 x float> %i.bek, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bem = insertelement <8 x float> poison, float %i.axx, i64 0
  %i.ben = shufflevector <8 x float> %i.bem, <8 x float> poison, <8 x i32> zeroinitializer
  %i.beo = insertelement <4 x float> poison, float %i.axx, i64 0
  %i.bep = shufflevector <4 x float> %i.beo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.beq = insertelement <2 x float> poison, float %i.axx, i64 0
  %i.ber = shufflevector <2 x float> %i.beq, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bes = shl i64 %index, 1                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.2.lcssa.i83, i64 %i.bes
  %next.gep287 = getelementptr i8, ptr %.232.lcssa.i, i64 %i.bes
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !56
  %i.bet = zext <32 x i16> %wide.load to <32 x i32>
  %i.beu = shl nuw <32 x i32> %i.bet, splat (i32 16)
  %i.bev = bitcast <32 x i32> %i.beu to <32 x float> ; 6 uses
  %i.bew = extractelement <32 x float> %i.bev, i64 0
  %i.bex = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.bew, float %i.axx)
  %i.bey = shufflevector <32 x float> %i.bev, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.bez = tail call fast <16 x float> @llvm.pow.v16f32(<16 x float> %i.bey, <16 x float> %i.bel)
  %i.bfa = shufflevector <32 x float> %i.bev, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.bfb = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.bfa, <8 x float> %i.ben)
  %i.bfc = shufflevector <32 x float> %i.bev, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.bfd = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.bfc, <4 x float> %i.bep)
  %i.bfe = extractelement <32 x float> %i.bev, i64 29
  %i.bff = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.bfe, float %i.axx)
  %i.bfg = shufflevector <32 x float> %i.bev, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.bfh = tail call fast <2 x float> @llvm.pow.v2f32(<2 x float> %i.bfg, <2 x float> %i.ber)
  %i.bfi = insertelement <32 x float> poison, float %i.bex, i64 0
  %i.bfj = shufflevector <16 x float> %i.bez, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bfk = shufflevector <32 x float> %i.bfi, <32 x float> %i.bfj, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bfl = shufflevector <8 x float> %i.bfb, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bfm = shufflevector <32 x float> %i.bfk, <32 x float> %i.bfl, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bfn = shufflevector <4 x float> %i.bfd, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bfo = shufflevector <32 x float> %i.bfm, <32 x float> %i.bfn, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.bfp = insertelement <32 x float> %i.bfo, float %i.bff, i64 29
  %i.bfq = shufflevector <2 x float> %i.bfh, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bfr = shufflevector <32 x float> %i.bfp, <32 x float> %i.bfq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.bfs = bitcast <32 x float> %i.bfr to <32 x i32>
  %i.bft = lshr <32 x i32> %i.bfs, splat (i32 16)
  %i.bfu = trunc nuw <32 x i32> %i.bft to <32 x i16>
  store <32 x i16> %i.bfu, ptr %next.gep287, align 2, !tbaa !56
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bfv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bfv, label %middle.block, label %vector.body, !llvm.loop !1115

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bec, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor13binary_op_powEEEvPKtS4_Pti.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bee, 0
  br i1 %min.epilog.iters.check, label %.lr.ph157.i.preheader, label %vec.epilog.ph, !prof !64

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec288 = and i64 %i.bec, 8589934584          ; 4 uses
  %i.bfw = shl nuw nsw i64 %n.vec288, 1           ; 2 uses
  %i.bfx = getelementptr i8, ptr %.2.lcssa.i83, i64 %i.bfw
  %i.bfy = getelementptr i8, ptr %.232.lcssa.i, i64 %i.bfw
  %i.bfz = trunc i64 %n.vec288 to i32
  %i.bga = add i32 %.236.lcssa.i82, %i.bfz
  %i.bgb = insertelement <4 x float> poison, float %i.axx, i64 0
  %i.bgc = shufflevector <4 x float> %i.bgb, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index289 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next293, %vec.epilog.vector.body ] ; 2 uses
  %i.bgd = shl i64 %index289, 1                   ; 2 uses
  %next.gep290 = getelementptr i8, ptr %.2.lcssa.i83, i64 %i.bgd
  %next.gep291 = getelementptr i8, ptr %.232.lcssa.i, i64 %i.bgd
  %wide.load292 = load <8 x i16>, ptr %next.gep290, align 2, !tbaa !56
  %i.bge = zext <8 x i16> %wide.load292 to <8 x i32>
  %i.bgf = shl nuw <8 x i32> %i.bge, splat (i32 16)
  %i.bgg = bitcast <8 x i32> %i.bgf to <8 x float> ; 5 uses
  %i.bgh = extractelement <8 x float> %i.bgg, i64 0
  %i.bgi = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.bgh, float %i.axx)
  %i.bgj = extractelement <8 x float> %i.bgg, i64 1
  %i.bgk = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.bgj, float %i.axx)
  %i.bgl = extractelement <8 x float> %i.bgg, i64 2
  %i.bgm = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.bgl, float %i.axx)
  %i.bgn = shufflevector <8 x float> %i.bgg, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bgo = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.bgn, <4 x float> %i.bgc)
  %i.bgp = extractelement <8 x float> %i.bgg, i64 7
  %i.bgq = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.bgp, float %i.axx)
  %i.bgr = insertelement <8 x float> poison, float %i.bgi, i64 0
  %i.bgs = insertelement <8 x float> %i.bgr, float %i.bgk, i64 1
  %i.bgt = insertelement <8 x float> %i.bgs, float %i.bgm, i64 2
  %i.bgu = shufflevector <4 x float> %i.bgo, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bgv = shufflevector <8 x float> %i.bgt, <8 x float> %i.bgu, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.bgw = insertelement <8 x float> %i.bgv, float %i.bgq, i64 7
  %i.bgx = bitcast <8 x float> %i.bgw to <8 x i32>
  %i.bgy = lshr <8 x i32> %i.bgx, splat (i32 16)
  %i.bgz = trunc nuw <8 x i32> %i.bgy to <8 x i16>
  store <8 x i16> %i.bgz, ptr %next.gep291, align 2, !tbaa !56
  %index.next293 = add nuw i64 %index289, 8       ; 2 uses
  %i.bha = icmp eq i64 %index.next293, %n.vec288
  br i1 %i.bha, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1116

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n294 = icmp eq i64 %i.bec, %n.vec288
  br i1 %cmp.n294, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor13binary_op_powEEEvPKtS4_Pti.exit, label %.lr.ph157.i.preheader

.lr.ph157.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3156.i.ph = phi ptr [ %.2.lcssa.i83, %iter.check ], [ %i.beg, %vec.epilog.iter.check ], [ %i.bfx, %vec.epilog.middle.block ] ; 3 uses
  %.333155.i.ph = phi ptr [ %.232.lcssa.i, %iter.check ], [ %i.beh, %vec.epilog.iter.check ], [ %i.bfy, %vec.epilog.middle.block ] ; 3 uses
  %.337154.i.ph = phi i32 [ %.236.lcssa.i82, %iter.check ], [ %i.bej, %vec.epilog.iter.check ], [ %i.bga, %vec.epilog.middle.block ] ; 4 uses
  %i.bhb = sub i32 %i.a, %.337154.i.ph
  %.neg = add i32 %.337154.i.ph, 1
  %xtraiter = and i32 %i.bhb, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph157.i.prol.loopexit, label %.lr.ph157.i.prol

.lr.ph157.i.prol:                                 ; preds = %.lr.ph157.i.preheader
  %i.bhc = getelementptr inbounds nuw i8, ptr %.3156.i.ph, i64 2
  %i.bhd = load i16, ptr %.3156.i.ph, align 2, !tbaa !56
  %i.bhe = zext i16 %i.bhd to i32
  %i.bhf = shl nuw i32 %i.bhe, 16
  %i.bhg = bitcast i32 %i.bhf to float
  %i.bhh = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.bhg, float %i.axx)
  %i.bhi = bitcast float %i.bhh to i32
  %i.bhj = lshr i32 %i.bhi, 16
  %i.bhk = trunc nuw i32 %i.bhj to i16
  %i.bhl = getelementptr inbounds nuw i8, ptr %.333155.i.ph, i64 2
  store i16 %i.bhk, ptr %.333155.i.ph, align 2, !tbaa !56
  %i.bhm = add nuw nsw i32 %.337154.i.ph, 1
  br label %.lr.ph157.i.prol.loopexit

.lr.ph157.i.prol.loopexit:                        ; preds = %.lr.ph157.i.prol, %.lr.ph157.i.preheader
  %.3156.i.unr = phi ptr [ %.3156.i.ph, %.lr.ph157.i.preheader ], [ %i.bhc, %.lr.ph157.i.prol ]
  %.333155.i.unr = phi ptr [ %.333155.i.ph, %.lr.ph157.i.preheader ], [ %i.bhl, %.lr.ph157.i.prol ]
  %.337154.i.unr = phi i32 [ %.337154.i.ph, %.lr.ph157.i.preheader ], [ %i.bhm, %.lr.ph157.i.prol ]
  %i.bhn = icmp eq i32 %i.a, %.neg
  br i1 %i.bhn, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor13binary_op_powEEEvPKtS4_Pti.exit, label %.lr.ph157.i

.lr.ph150.i:                                      ; preds = %._crit_edge142.i, %.lr.ph150.i
  %.2148.i = phi ptr [ %i.bkc, %.lr.ph150.i ], [ %.1.lcssa.i80, %._crit_edge142.i ] ; 2 uses
  %.232147.i = phi ptr [ %i.bkd, %.lr.ph150.i ], [ %.131.lcssa.i, %._crit_edge142.i ] ; 2 uses
  %.236146.i = phi i32 [ %i.bke, %.lr.ph150.i ], [ %.135.lcssa.i79, %._crit_edge142.i ]
  %i.bho = load i64, ptr %.2148.i, align 1, !tbaa !60
  %i.bhp = insertelement <2 x i64> poison, i64 %i.bho, i64 0
  %i.bhq = bitcast <2 x i64> %i.bhp to <8 x i16>
  %i.bhr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bhq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bhs = bitcast <8 x i16> %i.bhr to <4 x float>
  %i.bht = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bhs, <4 x float> splat (float f0x00800000))
  %i.bhu = bitcast <4 x float> %i.bht to <4 x i32> ; 2 uses
  %i.bhv = lshr <4 x i32> %i.bhu, splat (i32 23)
  %i.bhw = and <4 x i32> %i.bhu, splat (i32 -2139095041)
  %i.bhx = or disjoint <4 x i32> %i.bhw, splat (i32 1056964608)
  %i.bhy = bitcast <4 x i32> %i.bhx to <4 x float> ; 3 uses
  %i.bhz = add nsw <4 x i32> %i.bhv, splat (i32 -127)
  %i.bia = sitofp fast <4 x i32> %i.bhz to <4 x float> ; 2 uses
  %i.bib = fadd fast <4 x float> %i.bia, splat (float 1.000000e+00)
  %i.bic = fcmp fast olt <4 x float> %i.bhy, splat (float f0x3F3504F3) ; 2 uses
  %i.bid = select <4 x i1> %i.bic, <4 x float> %i.bhy, <4 x float> zeroinitializer
  %i.bie = fadd fast <4 x float> %i.bhy, splat (float -1.000000e+00)
  %i.bif = select fast <4 x i1> %i.bic, <4 x float> %i.bia, <4 x float> %i.bib ; 2 uses
  %i.big = fadd fast <4 x float> %i.bie, %i.bid   ; 12 uses
  %i.bih = fmul fast <4 x float> %i.big, %i.big   ; 2 uses
  %i.bii = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.big, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.bij = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bii, <4 x float> nofpclass(nan inf) %i.big, <4 x float> splat (float f0x3DEF251A))
  %i.bik = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bij, <4 x float> nofpclass(nan inf) %i.big, <4 x float> splat (float f0xBDFE5D4F))
  %i.bil = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bik, <4 x float> nofpclass(nan inf) %i.big, <4 x float> splat (float f0x3E11E9BF))
  %i.bim = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bil, <4 x float> nofpclass(nan inf) %i.big, <4 x float> splat (float f0xBE2AAE50))
  %i.bin = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bim, <4 x float> nofpclass(nan inf) %i.big, <4 x float> splat (float f0x3E4CCEAC))
  %i.bio = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bin, <4 x float> nofpclass(nan inf) %i.big, <4 x float> splat (float f0xBE7FFFFC))
  %i.bip = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bio, <4 x float> nofpclass(nan inf) %i.big, <4 x float> splat (float f0x3EAAAAAA))
  %i.biq = fmul fast <4 x float> %i.bih, %i.big
  %i.bir = fmul fast <4 x float> %i.biq, %i.bip
  %i.bis = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bif, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.bir)
  %i.bit = fneg fast <4 x float> %i.bih
  %i.biu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.bit, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.bis)
  %i.biv = fadd fast <4 x float> %i.biu, %i.big
  %i.biw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bif, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.biv)
  %i.bix = fmul fast <4 x float> %i.biw, %i.bdv
  %i.biy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bix, <4 x float> splat (float f0x42B0C0A5))
  %i.biz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.biy, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bja = fmul fast <4 x float> %i.biz, splat (float f0x3FB8AA3B)
  %i.bjb = fadd fast <4 x float> %i.bja, splat (float 5.000000e-01) ; 2 uses
  %i.bjc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bjb)
  %i.bjd = sitofp fast <4 x i32> %i.bjc to <4 x float> ; 2 uses
  %i.bje = fcmp fast olt <4 x float> %i.bjb, %i.bjd
  %i.bjf = select <4 x i1> %i.bje, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bjg = fsub fast <4 x float> %i.bjd, %i.bjf   ; 2 uses
  %i.bjh = fneg fast <4 x float> %i.bjg           ; 2 uses
  %i.bji = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.bjh, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.biz)
  %i.bjj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.bjh, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.bji) ; 8 uses
  %i.bjk = fmul fast <4 x float> %i.bjj, %i.bjj
  %i.bjl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjj, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.bjm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjl, <4 x float> nofpclass(nan inf) %i.bjj, <4 x float> splat (float f0x3C088908))
  %i.bjn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjm, <4 x float> nofpclass(nan inf) %i.bjj, <4 x float> splat (float f0x3D2AA9C1))
  %i.bjo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjn, <4 x float> nofpclass(nan inf) %i.bjj, <4 x float> splat (float f0x3E2AAAAA))
  %i.bjp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjo, <4 x float> nofpclass(nan inf) %i.bjj, <4 x float> splat (float 5.000000e-01))
  %i.bjq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjp, <4 x float> nofpclass(nan inf) %i.bjk, <4 x float> nofpclass(nan inf) %i.bjj)
  %i.bjr = fadd fast <4 x float> %i.bjq, splat (float 1.000000e+00)
  %i.bjs = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bjg)
  %i.bjt = shl <4 x i32> %i.bjs, splat (i32 23)
  %i.bju = add <4 x i32> %i.bjt, splat (i32 1065353216)
  %i.bjv = bitcast <4 x i32> %i.bju to <4 x float>
  %i.bjw = fmul fast <4 x float> %i.bjr, %i.bjv
  %i.bjx = bitcast <4 x float> %i.bjw to <4 x i32>
  %i.bjy = lshr <4 x i32> %i.bjx, splat (i32 16)
  %i.bjz = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bjy, <4 x i32> poison)
  %i.bka = bitcast <8 x i16> %i.bjz to <2 x i64>
  %i.bkb = extractelement <2 x i64> %i.bka, i64 0
  store i64 %i.bkb, ptr %.232147.i, align 1, !tbaa !60
  %i.bkc = getelementptr inbounds nuw i8, ptr %.2148.i, i64 8 ; 2 uses
  %i.bkd = getelementptr inbounds nuw i8, ptr %.232147.i, i64 8 ; 2 uses
  %i.bke = add nuw nsw i32 %.236146.i, 4          ; 3 uses
  %i.bkf = or disjoint i32 %i.bke, 3
  %i.bkg = icmp slt i32 %i.bkf, %i.a
  br i1 %i.bkg, label %.lr.ph150.i, label %.preheader.i81, !llvm.loop !1117

.lr.ph157.i:                                      ; preds = %.lr.ph157.i.prol.loopexit, %.lr.ph157.i
  %.3156.i = phi ptr [ %i.bkr, %.lr.ph157.i ], [ %.3156.i.unr, %.lr.ph157.i.prol.loopexit ] ; 3 uses
  %.333155.i = phi ptr [ %i.bla, %.lr.ph157.i ], [ %.333155.i.unr, %.lr.ph157.i.prol.loopexit ] ; 3 uses
  %.337154.i = phi i32 [ %i.blb, %.lr.ph157.i ], [ %.337154.i.unr, %.lr.ph157.i.prol.loopexit ]
  %i.bkh = getelementptr inbounds nuw i8, ptr %.3156.i, i64 2
  %i.bki = load i16, ptr %.3156.i, align 2, !tbaa !56
  %i.bkj = zext i16 %i.bki to i32
  %i.bkk = shl nuw i32 %i.bkj, 16
  %i.bkl = bitcast i32 %i.bkk to float
  %i.bkm = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.bkl, float %i.axx)
  %i.bkn = bitcast float %i.bkm to i32
  %i.bko = lshr i32 %i.bkn, 16
  %i.bkp = trunc nuw i32 %i.bko to i16
  %i.bkq = getelementptr inbounds nuw i8, ptr %.333155.i, i64 2
  store i16 %i.bkp, ptr %.333155.i, align 2, !tbaa !56
  %i.bkr = getelementptr inbounds nuw i8, ptr %.3156.i, i64 4
  %i.bks = load i16, ptr %i.bkh, align 2, !tbaa !56
  %i.bkt = zext i16 %i.bks to i32
  %i.bku = shl nuw i32 %i.bkt, 16
  %i.bkv = bitcast i32 %i.bku to float
  %i.bkw = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.bkv, float %i.axx)
  %i.bkx = bitcast float %i.bkw to i32
  %i.bky = lshr i32 %i.bkx, 16
  %i.bkz = trunc nuw i32 %i.bky to i16
  %i.bla = getelementptr inbounds nuw i8, ptr %.333155.i, i64 4
  store i16 %i.bkz, ptr %i.bkq, align 2, !tbaa !56
  %i.blb = add nuw nsw i32 %.337154.i, 2          ; 2 uses
  %exitcond.not.i84.1 = icmp eq i32 %i.blb, %i.a
  br i1 %exitcond.not.i84.1, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor13binary_op_powEEEvPKtS4_Pti.exit, label %.lr.ph157.i, !llvm.loop !1118

bb.z:                                             ; preds = %bb.x
  %i.blc = icmp eq i32 %3, 1
  br i1 %i.blc, label %bb.aa, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor13binary_op_powEEEvPKtS4_Pti.exit

bb.aa:                                            ; preds = %bb.z
  switch i32 %.sroa.speculated, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor13binary_op_powEEEvPKtS4_Pti.exit [
    i32 16, label %.lr.ph175.i
    i32 8, label %.lr.ph171.i
    i32 4, label %.lr.ph.i86
  ]

.lr.ph175.i:                                      ; preds = %bb.aa
  %i.bld = load <16 x i16>, ptr %0, align 1, !tbaa !60 ; 2 uses
  %i.ble = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bld, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.blf = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bld, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.blg = shufflevector <16 x i16> %i.ble, <16 x i16> %i.blf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.blh = bitcast <16 x i16> %i.blg to <8 x i32>
  %i.bli = shufflevector <16 x i16> %i.ble, <16 x i16> %i.blf, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.blj = bitcast <16 x i16> %i.bli to <8 x i32>
  %i.blk = shufflevector <8 x i32> %i.blh, <8 x i32> %i.blj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bll = bitcast <16 x i32> %i.blk to <16 x float>
  %i.blm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bll, <16 x float> splat (float f0x00800000), i32 4)
  %i.bln = bitcast <16 x float> %i.blm to <16 x i32> ; 2 uses
  %i.blo = lshr <16 x i32> %i.bln, splat (i32 23)
  %i.blp = and <16 x i32> %i.bln, splat (i32 -2139095041)
  %i.blq = or disjoint <16 x i32> %i.blp, splat (i32 1056964608)
  %i.blr = bitcast <16 x i32> %i.blq to <16 x float> ; 3 uses
  %i.bls = add nsw <16 x i32> %i.blo, splat (i32 -127)
  %i.blt = sitofp fast <16 x i32> %i.bls to <16 x float> ; 2 uses
  %i.blu = fadd fast <16 x float> %i.blt, splat (float 1.000000e+00)
  %i.blv = fcmp fast olt <16 x float> %i.blr, splat (float f0x3F3504F3) ; 2 uses
  %i.blw = fadd fast <16 x float> %i.blr, splat (float -1.000000e+00)
  %i.blx = select fast <16 x i1> %i.blv, <16 x float> %i.blt, <16 x float> %i.blu ; 2 uses
  %i.bly = select fast <16 x i1> %i.blv, <16 x float> %i.blr, <16 x float> zeroinitializer
  %i.blz = fadd fast <16 x float> %i.blw, %i.bly  ; 12 uses
  %i.bma = fmul fast <16 x float> %i.blz, %i.blz  ; 2 uses
  %i.bmb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.blz, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.bmc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bmb, <16 x float> nofpclass(nan inf) %i.blz, <16 x float> splat (float f0x3DEF251A))
  %i.bmd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bmc, <16 x float> nofpclass(nan inf) %i.blz, <16 x float> splat (float f0xBDFE5D4F))
  %i.bme = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bmd, <16 x float> nofpclass(nan inf) %i.blz, <16 x float> splat (float f0x3E11E9BF))
  %i.bmf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bme, <16 x float> nofpclass(nan inf) %i.blz, <16 x float> splat (float f0xBE2AAE50))
  %i.bmg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bmf, <16 x float> nofpclass(nan inf) %i.blz, <16 x float> splat (float f0x3E4CCEAC))
end_hunk_7
begin_hunk_8_@_ZN4ncnnL22binary_op_vector_bf16sINS_27BinaryOp_x86_avx512_functor14binary_op_rpowEEEvPKtS4_Ptiiii:bb.a
  %i.pr = fmul fast <8 x float> %i.pi, %i.ph
  %i.ps = fmul fast <8 x float> %i.pr, %i.pq
  %i.pt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pg, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ps)
  %i.pu = fneg fast <8 x float> %i.pi
  %i.pv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.pu, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.pt)
  %i.pw = fadd fast <8 x float> %i.pv, %i.ph
  %i.px = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pg, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.pw)
  br label %bb.l

bb.k:                                             ; preds = %bb.k, %.lr.ph.i41
  %.0187.i = phi ptr [ %0, %.lr.ph.i41 ], [ %i.rm, %bb.k ] ; 2 uses
  %.035186.i = phi ptr [ %2, %.lr.ph.i41 ], [ %i.rn, %bb.k ] ; 2 uses
  %.039185.i = phi i32 [ 0, %.lr.ph.i41 ], [ %i.ro, %bb.k ]
  %i.py = load <16 x i16>, ptr %.0187.i, align 1, !tbaa !60 ; 2 uses
  %i.pz = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.py, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.qa = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.py, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.qb = shufflevector <16 x i16> %i.pz, <16 x i16> %i.qa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.qc = shufflevector <16 x i16> %i.pz, <16 x i16> %i.qa, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.qd = bitcast <16 x i16> %i.qb to <8 x i32>
  %i.qe = bitcast <16 x i16> %i.qc to <8 x i32>
  %i.qf = shufflevector <8 x i32> %i.qd, <8 x i32> %i.qe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qg = bitcast <16 x i32> %i.qf to <16 x float>
  %i.qh = fmul fast <16 x float> %i.oq, %i.qg
  %i.qi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.qh, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.qj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.qi, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.qk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qj, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ql = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.qk, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.qm = fcmp fast ogt <16 x float> %i.ql, %i.qk
  %i.qn = fadd fast <16 x float> %i.ql, splat (float -1.000000e+00)
  %i.qo = select fast <16 x i1> %i.qm, <16 x float> %i.qn, <16 x float> %i.ql ; 2 uses
  %i.qp = fneg fast <16 x float> %i.qo            ; 2 uses
  %i.qq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.qp, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.qj)
  %i.qr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.qp, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.qq) ; 8 uses
  %i.qs = fmul fast <16 x float> %i.qr, %i.qr
  %i.qt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qr, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.qu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qt, <16 x float> nofpclass(nan inf) %i.qr, <16 x float> splat (float f0x3C088908))
  %i.qv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qu, <16 x float> nofpclass(nan inf) %i.qr, <16 x float> splat (float f0x3D2AA9C1))
  %i.qw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qv, <16 x float> nofpclass(nan inf) %i.qr, <16 x float> splat (float f0x3E2AAAAA))
  %i.qx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qw, <16 x float> nofpclass(nan inf) %i.qr, <16 x float> splat (float 5.000000e-01))
  %i.qy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qx, <16 x float> nofpclass(nan inf) %i.qs, <16 x float> nofpclass(nan inf) %i.qr)
  %i.qz = fadd fast <16 x float> %i.qy, splat (float 1.000000e+00)
  %i.ra = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.qo, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.rb = shl <16 x i32> %i.ra, splat (i32 23)
  %i.rc = add <16 x i32> %i.rb, splat (i32 1065353216)
  %i.rd = bitcast <16 x i32> %i.rc to <16 x float>
  %i.re = fmul fast <16 x float> %i.qz, %i.rd
  %i.rf = bitcast <16 x float> %i.re to <16 x i32>
  %i.rg = lshr <16 x i32> %i.rf, splat (i32 16)   ; 2 uses
  %i.rh = shufflevector <16 x i32> %i.rg, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ri = shufflevector <16 x i32> %i.rg, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rj = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.rh, <8 x i32> %i.ri)
  %i.rk = bitcast <16 x i16> %i.rj to <4 x i64>
  %i.rl = shufflevector <4 x i64> %i.rk, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.rl, ptr %.035186.i, align 1, !tbaa !60
  %i.rm = getelementptr inbounds nuw i8, ptr %.0187.i, i64 32 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.035186.i, i64 32 ; 2 uses
  %i.ro = add nuw nsw i32 %.039185.i, 16          ; 2 uses
  %i.rp = or disjoint i32 %i.ro, 15
  %i.rq = icmp slt i32 %i.rp, %i.a
  br i1 %i.rq, label %bb.k, label %.preheader184.loopexit.i, !llvm.loop !1188

.preheader183.i:                                  ; preds = %bb.l, %.preheader184.i
  %.140.lcssa.i = phi i32 [ %.039.lcssa.i, %.preheader184.i ], [ %i.uh, %bb.l ] ; 3 uses
  %.136.lcssa.i = phi ptr [ %.035.lcssa.i, %.preheader184.i ], [ %i.ug, %bb.l ] ; 2 uses
  %.1.lcssa.i35 = phi ptr [ %.0.lcssa.i34, %.preheader184.i ], [ %i.uf, %bb.l ] ; 2 uses
  %i.rr = or disjoint i32 %.140.lcssa.i, 3
  %i.rs = icmp slt i32 %i.rr, %i.a
  br i1 %i.rs, label %.lr.ph200.i, label %.preheader.i36

.lr.ph200.i:                                      ; preds = %.preheader183.i
  %i.rt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nk, <4 x float> splat (float f0x00800000))
  %i.ru = bitcast <4 x float> %i.rt to <4 x i32>  ; 2 uses
  %i.rv = lshr <4 x i32> %i.ru, splat (i32 23)
  %i.rw = and <4 x i32> %i.ru, splat (i32 -2139095041)
  %i.rx = or disjoint <4 x i32> %i.rw, splat (i32 1056964608)
  %i.ry = bitcast <4 x i32> %i.rx to <4 x float>  ; 3 uses
  %i.rz = add nsw <4 x i32> %i.rv, splat (i32 -127)
  %i.sa = sitofp fast <4 x i32> %i.rz to <4 x float> ; 2 uses
  %i.sb = fadd fast <4 x float> %i.sa, splat (float 1.000000e+00)
  %i.sc = fcmp fast olt <4 x float> %i.ry, splat (float f0x3F3504F3) ; 2 uses
  %i.sd = select <4 x i1> %i.sc, <4 x float> %i.ry, <4 x float> zeroinitializer
  %i.se = fadd fast <4 x float> %i.ry, splat (float -1.000000e+00)
  %i.sf = select fast <4 x i1> %i.sc, <4 x float> %i.sa, <4 x float> %i.sb ; 2 uses
  %i.sg = fadd fast <4 x float> %i.se, %i.sd      ; 12 uses
  %i.sh = fmul fast <4 x float> %i.sg, %i.sg      ; 2 uses
  %i.si = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sg, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.sj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.si, <4 x float> nofpclass(nan inf) %i.sg, <4 x float> splat (float f0x3DEF251A))
  %i.sk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sj, <4 x float> nofpclass(nan inf) %i.sg, <4 x float> splat (float f0xBDFE5D4F))
  %i.sl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sk, <4 x float> nofpclass(nan inf) %i.sg, <4 x float> splat (float f0x3E11E9BF))
  %i.sm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sl, <4 x float> nofpclass(nan inf) %i.sg, <4 x float> splat (float f0xBE2AAE50))
  %i.sn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sm, <4 x float> nofpclass(nan inf) %i.sg, <4 x float> splat (float f0x3E4CCEAC))
  %i.so = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sn, <4 x float> nofpclass(nan inf) %i.sg, <4 x float> splat (float f0xBE7FFFFC))
  %i.sp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.so, <4 x float> nofpclass(nan inf) %i.sg, <4 x float> splat (float f0x3EAAAAAA))
  %i.sq = fmul fast <4 x float> %i.sh, %i.sg
  %i.sr = fmul fast <4 x float> %i.sq, %i.sp
  %i.ss = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sf, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.sr)
  %i.st = fneg fast <4 x float> %i.sh
  %i.su = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.st, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.ss)
  %i.sv = fadd fast <4 x float> %i.su, %i.sg
  %i.sw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sf, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.sv)
  br label %bb.m

bb.l:                                             ; preds = %bb.l, %.lr.ph193.i39
  %.1192.i40 = phi ptr [ %.0.lcssa.i34, %.lr.ph193.i39 ], [ %i.uf, %bb.l ] ; 2 uses
  %.136191.i = phi ptr [ %.035.lcssa.i, %.lr.ph193.i39 ], [ %i.ug, %bb.l ] ; 2 uses
  %.140190.i = phi i32 [ %.039.lcssa.i, %.lr.ph193.i39 ], [ %i.uh, %bb.l ]
  %i.sx = load <8 x i16>, ptr %.1192.i40, align 1, !tbaa !60 ; 2 uses
  %i.sy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sz = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.sx, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ta = shufflevector <8 x i16> %i.sy, <8 x i16> %i.sz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.tb = bitcast <16 x i16> %i.ta to <8 x float>
  %i.tc = fmul fast <8 x float> %i.px, %i.tb
  %i.td = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.tc, <8 x float> splat (float f0x42B0C0A5))
  %i.te = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.td, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.tf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.te, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.tg = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.tf, i32 1) ; 2 uses
  %i.th = fcmp fast ogt <8 x float> %i.tg, %i.tf
  %i.ti = select <8 x i1> %i.th, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.tj = fsub fast <8 x float> %i.tg, %i.ti      ; 2 uses
  %i.tk = fneg fast <8 x float> %i.tj             ; 2 uses
  %i.tl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.tk, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.te)
  %i.tm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.tk, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.tl) ; 8 uses
  %i.tn = fmul fast <8 x float> %i.tm, %i.tm
  %i.to = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.tm, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.tp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.to, <8 x float> nofpclass(nan inf) %i.tm, <8 x float> splat (float f0x3C088908))
  %i.tq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.tp, <8 x float> nofpclass(nan inf) %i.tm, <8 x float> splat (float f0x3D2AA9C1))
  %i.tr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.tq, <8 x float> nofpclass(nan inf) %i.tm, <8 x float> splat (float f0x3E2AAAAA))
  %i.ts = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.tr, <8 x float> nofpclass(nan inf) %i.tm, <8 x float> splat (float 5.000000e-01))
  %i.tt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ts, <8 x float> nofpclass(nan inf) %i.tn, <8 x float> nofpclass(nan inf) %i.tm)
  %i.tu = fadd fast <8 x float> %i.tt, splat (float 1.000000e+00)
  %i.tv = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.tj)
  %i.tw = shl <8 x i32> %i.tv, splat (i32 23)
  %i.tx = add <8 x i32> %i.tw, splat (i32 1065353216)
  %i.ty = bitcast <8 x i32> %i.tx to <8 x float>
  %i.tz = fmul fast <8 x float> %i.tu, %i.ty
  %i.ua = bitcast <8 x float> %i.tz to <8 x i32>
  %i.ub = lshr <8 x i32> %i.ua, splat (i32 16)    ; 2 uses
  %i.uc = shufflevector <8 x i32> %i.ub, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ud = shufflevector <8 x i32> %i.ub, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ue = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.uc, <4 x i32> %i.ud)
  store <8 x i16> %i.ue, ptr %.136191.i, align 1, !tbaa !60
  %i.uf = getelementptr inbounds nuw i8, ptr %.1192.i40, i64 16 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.136191.i, i64 16 ; 2 uses
  %i.uh = add nuw nsw i32 %.140190.i, 8           ; 3 uses
  %i.ui = or disjoint i32 %i.uh, 7
  %i.uj = icmp slt i32 %i.ui, %i.a
  br i1 %i.uj, label %bb.l, label %.preheader183.i, !llvm.loop !1189

.preheader.i36:                                   ; preds = %bb.m, %.preheader183.i
  %.241.lcssa.i = phi i32 [ %.140.lcssa.i, %.preheader183.i ], [ %i.zm, %bb.m ] ; 5 uses
  %.237.lcssa.i = phi ptr [ %.136.lcssa.i, %.preheader183.i ], [ %i.zl, %bb.m ] ; 6 uses
  %.2.lcssa.i37 = phi ptr [ %.1.lcssa.i35, %.preheader183.i ], [ %i.zk, %bb.m ] ; 6 uses
  %i.uk = icmp slt i32 %.241.lcssa.i, %i.a
  br i1 %i.uk, label %iter.check357, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor14binary_op_rpowEEEvPKtS4_Pti.exit

iter.check357:                                    ; preds = %.preheader.i36
  %.237.lcssa.i341 = ptrtoaddr ptr %.237.lcssa.i to i64
  %.2.lcssa.i37340 = ptrtoaddr ptr %.2.lcssa.i37 to i64
  %i.ul = xor i32 %.241.lcssa.i, -1
  %i.um = add i32 %i.a, %i.ul                     ; 3 uses
  %i.un = zext i32 %i.um to i64
  %i.uo = add nuw nsw i64 %i.un, 1                ; 5 uses
  %min.iters.check342 = icmp ult i32 %i.um, 7
  %i.up = sub i64 %.2.lcssa.i37340, %.237.lcssa.i341
  %diff.check344 = icmp ugt i64 %i.up, -64
  %or.cond = select i1 %min.iters.check342, i1 true, i1 %diff.check344
  br i1 %or.cond, label %.lr.ph207.i.preheader, label %vector.main.loop.iter.check345

vector.main.loop.iter.check345:                   ; preds = %iter.check357
  %min.iters.check346 = icmp ult i32 %i.um, 31
  br i1 %min.iters.check346, label %vec.epilog.ph361, label %vector.ph347

vector.ph347:                                     ; preds = %vector.main.loop.iter.check345
  %i.uq = and i64 %i.uo, 24
  %n.vec348 = and i64 %i.uo, 8589934560           ; 5 uses
  %i.ur = shl nuw nsw i64 %n.vec348, 1            ; 2 uses
  %i.us = getelementptr i8, ptr %.2.lcssa.i37, i64 %i.ur
  %i.ut = getelementptr i8, ptr %.237.lcssa.i, i64 %i.ur
  %i.uu = trunc i64 %n.vec348 to i32
  %i.uv = add i32 %.241.lcssa.i, %i.uu
  %i.uw = insertelement <16 x float> poison, float %i.mf, i64 0
  %i.ux = shufflevector <16 x float> %i.uw, <16 x float> poison, <16 x i32> zeroinitializer
  %i.uy = insertelement <8 x float> poison, float %i.mf, i64 0
  %i.uz = shufflevector <8 x float> %i.uy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.va = insertelement <4 x float> poison, float %i.mf, i64 0
  %i.vb = shufflevector <4 x float> %i.va, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vc = insertelement <2 x float> poison, float %i.mf, i64 0
  %i.vd = shufflevector <2 x float> %i.vc, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body349

vector.body349:                                   ; preds = %vector.ph347, %vector.body349
  %index350 = phi i64 [ 0, %vector.ph347 ], [ %index.next354, %vector.body349 ] ; 2 uses
  %i.ve = shl i64 %index350, 1                    ; 2 uses
  %next.gep351 = getelementptr i8, ptr %.2.lcssa.i37, i64 %i.ve
  %next.gep352 = getelementptr i8, ptr %.237.lcssa.i, i64 %i.ve
  %wide.load353 = load <32 x i16>, ptr %next.gep351, align 2, !tbaa !56
  %i.vf = zext <32 x i16> %wide.load353 to <32 x i32>
  %i.vg = shl nuw <32 x i32> %i.vf, splat (i32 16)
  %i.vh = bitcast <32 x i32> %i.vg to <32 x float> ; 6 uses
  %i.vi = extractelement <32 x float> %i.vh, i64 0
  %i.vj = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mf, float %i.vi)
  %i.vk = shufflevector <32 x float> %i.vh, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.vl = tail call fast <16 x float> @llvm.pow.v16f32(<16 x float> %i.ux, <16 x float> %i.vk)
  %i.vm = shufflevector <32 x float> %i.vh, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.vn = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.uz, <8 x float> %i.vm)
  %i.vo = shufflevector <32 x float> %i.vh, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.vp = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.vb, <4 x float> %i.vo)
  %i.vq = extractelement <32 x float> %i.vh, i64 29
  %i.vr = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mf, float %i.vq)
  %i.vs = shufflevector <32 x float> %i.vh, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.vt = tail call fast <2 x float> @llvm.pow.v2f32(<2 x float> %i.vd, <2 x float> %i.vs)
  %i.vu = insertelement <32 x float> poison, float %i.vj, i64 0
  %i.vv = shufflevector <16 x float> %i.vl, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vw = shufflevector <32 x float> %i.vu, <32 x float> %i.vv, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vx = shufflevector <8 x float> %i.vn, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vy = shufflevector <32 x float> %i.vw, <32 x float> %i.vx, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vz = shufflevector <4 x float> %i.vp, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.wa = shufflevector <32 x float> %i.vy, <32 x float> %i.vz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.wb = insertelement <32 x float> %i.wa, float %i.vr, i64 29
  %i.wc = shufflevector <2 x float> %i.vt, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.wd = shufflevector <32 x float> %i.wb, <32 x float> %i.wc, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.we = bitcast <32 x float> %i.wd to <32 x i32>
  %i.wf = lshr <32 x i32> %i.we, splat (i32 16)
  %i.wg = trunc nuw <32 x i32> %i.wf to <32 x i16>
  store <32 x i16> %i.wg, ptr %next.gep352, align 2, !tbaa !56
  %index.next354 = add nuw i64 %index350, 32      ; 2 uses
  %i.wh = icmp eq i64 %index.next354, %n.vec348
  br i1 %i.wh, label %middle.block355, label %vector.body349, !llvm.loop !1190

middle.block355:                                  ; preds = %vector.body349
  %cmp.n356 = icmp eq i64 %i.uo, %n.vec348
  br i1 %cmp.n356, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor14binary_op_rpowEEEvPKtS4_Pti.exit, label %vec.epilog.iter.check358

vec.epilog.iter.check358:                         ; preds = %middle.block355
  %min.epilog.iters.check360 = icmp eq i64 %i.uq, 0
  br i1 %min.epilog.iters.check360, label %.lr.ph207.i.preheader, label %vec.epilog.ph361, !prof !64

vec.epilog.ph361:                                 ; preds = %vector.main.loop.iter.check345, %vec.epilog.iter.check358
  %vec.epilog.resume.val362 = phi i64 [ %n.vec348, %vec.epilog.iter.check358 ], [ 0, %vector.main.loop.iter.check345 ]
  %n.vec363 = and i64 %i.uo, 8589934584           ; 4 uses
  %i.wi = shl nuw nsw i64 %n.vec363, 1            ; 2 uses
  %i.wj = getelementptr i8, ptr %.2.lcssa.i37, i64 %i.wi
  %i.wk = getelementptr i8, ptr %.237.lcssa.i, i64 %i.wi
  %i.wl = trunc i64 %n.vec363 to i32
  %i.wm = add i32 %.241.lcssa.i, %i.wl
  %i.wn = insertelement <4 x float> poison, float %i.mf, i64 0
  %i.wo = shufflevector <4 x float> %i.wn, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body364

vec.epilog.vector.body364:                        ; preds = %vec.epilog.vector.body364, %vec.epilog.ph361
  %index365 = phi i64 [ %vec.epilog.resume.val362, %vec.epilog.ph361 ], [ %index.next369, %vec.epilog.vector.body364 ] ; 2 uses
  %i.wp = shl i64 %index365, 1                    ; 2 uses
  %next.gep366 = getelementptr i8, ptr %.2.lcssa.i37, i64 %i.wp
  %next.gep367 = getelementptr i8, ptr %.237.lcssa.i, i64 %i.wp
  %wide.load368 = load <8 x i16>, ptr %next.gep366, align 2, !tbaa !56
  %i.wq = zext <8 x i16> %wide.load368 to <8 x i32>
  %i.wr = shl nuw <8 x i32> %i.wq, splat (i32 16)
  %i.ws = bitcast <8 x i32> %i.wr to <8 x float>  ; 5 uses
  %i.wt = extractelement <8 x float> %i.ws, i64 0
  %i.wu = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mf, float %i.wt)
  %i.wv = extractelement <8 x float> %i.ws, i64 1
  %i.ww = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mf, float %i.wv)
  %i.wx = extractelement <8 x float> %i.ws, i64 2
  %i.wy = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mf, float %i.wx)
  %i.wz = shufflevector <8 x float> %i.ws, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.xa = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.wo, <4 x float> %i.wz)
  %i.xb = extractelement <8 x float> %i.ws, i64 7
  %i.xc = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mf, float %i.xb)
  %i.xd = insertelement <8 x float> poison, float %i.wu, i64 0
  %i.xe = insertelement <8 x float> %i.xd, float %i.ww, i64 1
  %i.xf = insertelement <8 x float> %i.xe, float %i.wy, i64 2
  %i.xg = shufflevector <4 x float> %i.xa, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xh = shufflevector <8 x float> %i.xf, <8 x float> %i.xg, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.xi = insertelement <8 x float> %i.xh, float %i.xc, i64 7
  %i.xj = bitcast <8 x float> %i.xi to <8 x i32>
  %i.xk = lshr <8 x i32> %i.xj, splat (i32 16)
  %i.xl = trunc nuw <8 x i32> %i.xk to <8 x i16>
  store <8 x i16> %i.xl, ptr %next.gep367, align 2, !tbaa !56
  %index.next369 = add nuw i64 %index365, 8       ; 2 uses
  %i.xm = icmp eq i64 %index.next369, %n.vec363
  br i1 %i.xm, label %vec.epilog.middle.block370, label %vec.epilog.vector.body364, !llvm.loop !1191

vec.epilog.middle.block370:                       ; preds = %vec.epilog.vector.body364
  %cmp.n371 = icmp eq i64 %i.uo, %n.vec363
  br i1 %cmp.n371, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor14binary_op_rpowEEEvPKtS4_Pti.exit, label %.lr.ph207.i.preheader

.lr.ph207.i.preheader:                            ; preds = %iter.check357, %vec.epilog.iter.check358, %vec.epilog.middle.block370
  %.3206.i.ph = phi ptr [ %.2.lcssa.i37, %iter.check357 ], [ %i.us, %vec.epilog.iter.check358 ], [ %i.wj, %vec.epilog.middle.block370 ] ; 3 uses
  %.338205.i.ph = phi ptr [ %.237.lcssa.i, %iter.check357 ], [ %i.ut, %vec.epilog.iter.check358 ], [ %i.wk, %vec.epilog.middle.block370 ] ; 3 uses
  %.342204.i.ph = phi i32 [ %.241.lcssa.i, %iter.check357 ], [ %i.uv, %vec.epilog.iter.check358 ], [ %i.wm, %vec.epilog.middle.block370 ] ; 4 uses
  %i.xn = sub i32 %i.a, %.342204.i.ph
  %.neg475 = add i32 %.342204.i.ph, 1
  %xtraiter470 = and i32 %i.xn, 1
  %lcmp.mod471.not = icmp eq i32 %xtraiter470, 0
  br i1 %lcmp.mod471.not, label %.lr.ph207.i.prol.loopexit, label %.lr.ph207.i.prol

.lr.ph207.i.prol:                                 ; preds = %.lr.ph207.i.preheader
  %i.xo = getelementptr inbounds nuw i8, ptr %.3206.i.ph, i64 2
  %i.xp = load i16, ptr %.3206.i.ph, align 2, !tbaa !56
  %i.xq = zext i16 %i.xp to i32
  %i.xr = shl nuw i32 %i.xq, 16
  %i.xs = bitcast i32 %i.xr to float
  %i.xt = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mf, float %i.xs)
  %i.xu = bitcast float %i.xt to i32
  %i.xv = lshr i32 %i.xu, 16
  %i.xw = trunc nuw i32 %i.xv to i16
  %i.xx = getelementptr inbounds nuw i8, ptr %.338205.i.ph, i64 2
  store i16 %i.xw, ptr %.338205.i.ph, align 2, !tbaa !56
  %i.xy = add nuw nsw i32 %.342204.i.ph, 1
  br label %.lr.ph207.i.prol.loopexit

.lr.ph207.i.prol.loopexit:                        ; preds = %.lr.ph207.i.prol, %.lr.ph207.i.preheader
  %.3206.i.unr = phi ptr [ %.3206.i.ph, %.lr.ph207.i.preheader ], [ %i.xo, %.lr.ph207.i.prol ]
  %.338205.i.unr = phi ptr [ %.338205.i.ph, %.lr.ph207.i.preheader ], [ %i.xx, %.lr.ph207.i.prol ]
  %.342204.i.unr = phi i32 [ %.342204.i.ph, %.lr.ph207.i.preheader ], [ %i.xy, %.lr.ph207.i.prol ]
  %i.xz = icmp eq i32 %i.a, %.neg475
  br i1 %i.xz, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor14binary_op_rpowEEEvPKtS4_Pti.exit, label %.lr.ph207.i

bb.m:                                             ; preds = %bb.m, %.lr.ph200.i
  %.2199.i = phi ptr [ %.1.lcssa.i35, %.lr.ph200.i ], [ %i.zk, %bb.m ] ; 2 uses
  %.237198.i = phi ptr [ %.136.lcssa.i, %.lr.ph200.i ], [ %i.zl, %bb.m ] ; 2 uses
  %.241197.i = phi i32 [ %.140.lcssa.i, %.lr.ph200.i ], [ %i.zm, %bb.m ]
  %i.ya = load i64, ptr %.2199.i, align 1, !tbaa !60
  %i.yb = insertelement <2 x i64> poison, i64 %i.ya, i64 0
  %i.yc = bitcast <2 x i64> %i.yb to <8 x i16>
  %i.yd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ye = bitcast <8 x i16> %i.yd to <4 x float>
  %i.yf = fmul fast <4 x float> %i.sw, %i.ye
  %i.yg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.yf, <4 x float> splat (float f0x42B0C0A5))
  %i.yh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.yg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.yi = fmul fast <4 x float> %i.yh, splat (float f0x3FB8AA3B)
  %i.yj = fadd fast <4 x float> %i.yi, splat (float 5.000000e-01) ; 2 uses
  %i.yk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yj)
  %i.yl = sitofp fast <4 x i32> %i.yk to <4 x float> ; 2 uses
  %i.ym = fcmp fast olt <4 x float> %i.yj, %i.yl
  %i.yn = select <4 x i1> %i.ym, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.yo = fsub fast <4 x float> %i.yl, %i.yn      ; 2 uses
  %i.yp = fneg fast <4 x float> %i.yo             ; 2 uses
  %i.yq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.yp, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.yh)
  %i.yr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.yp, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.yq) ; 8 uses
  %i.ys = fmul fast <4 x float> %i.yr, %i.yr
  %i.yt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.yr, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.yu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.yt, <4 x float> nofpclass(nan inf) %i.yr, <4 x float> splat (float f0x3C088908))
  %i.yv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.yu, <4 x float> nofpclass(nan inf) %i.yr, <4 x float> splat (float f0x3D2AA9C1))
  %i.yw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.yv, <4 x float> nofpclass(nan inf) %i.yr, <4 x float> splat (float f0x3E2AAAAA))
  %i.yx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.yw, <4 x float> nofpclass(nan inf) %i.yr, <4 x float> splat (float 5.000000e-01))
  %i.yy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.yx, <4 x float> nofpclass(nan inf) %i.ys, <4 x float> nofpclass(nan inf) %i.yr)
  %i.yz = fadd fast <4 x float> %i.yy, splat (float 1.000000e+00)
  %i.za = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.yo)
  %i.zb = shl <4 x i32> %i.za, splat (i32 23)
  %i.zc = add <4 x i32> %i.zb, splat (i32 1065353216)
  %i.zd = bitcast <4 x i32> %i.zc to <4 x float>
  %i.ze = fmul fast <4 x float> %i.yz, %i.zd
  %i.zf = bitcast <4 x float> %i.ze to <4 x i32>
  %i.zg = lshr <4 x i32> %i.zf, splat (i32 16)
  %i.zh = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.zg, <4 x i32> poison)
  %i.zi = bitcast <8 x i16> %i.zh to <2 x i64>
  %i.zj = extractelement <2 x i64> %i.zi, i64 0
  store i64 %i.zj, ptr %.237198.i, align 1, !tbaa !60
  %i.zk = getelementptr inbounds nuw i8, ptr %.2199.i, i64 8 ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %.237198.i, i64 8 ; 2 uses
  %i.zm = add nuw nsw i32 %.241197.i, 4           ; 3 uses
  %i.zn = or disjoint i32 %i.zm, 3
  %i.zo = icmp slt i32 %i.zn, %i.a
  br i1 %i.zo, label %bb.m, label %.preheader.i36, !llvm.loop !1192

.lr.ph207.i:                                      ; preds = %.lr.ph207.i.prol.loopexit, %.lr.ph207.i
  %.3206.i = phi ptr [ %i.zz, %.lr.ph207.i ], [ %.3206.i.unr, %.lr.ph207.i.prol.loopexit ] ; 3 uses
  %.338205.i = phi ptr [ %i.aai, %.lr.ph207.i ], [ %.338205.i.unr, %.lr.ph207.i.prol.loopexit ] ; 3 uses
  %.342204.i = phi i32 [ %i.aaj, %.lr.ph207.i ], [ %.342204.i.unr, %.lr.ph207.i.prol.loopexit ]
  %i.zp = getelementptr inbounds nuw i8, ptr %.3206.i, i64 2
  %i.zq = load i16, ptr %.3206.i, align 2, !tbaa !56
  %i.zr = zext i16 %i.zq to i32
  %i.zs = shl nuw i32 %i.zr, 16
  %i.zt = bitcast i32 %i.zs to float
  %i.zu = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mf, float %i.zt)
  %i.zv = bitcast float %i.zu to i32
  %i.zw = lshr i32 %i.zv, 16
  %i.zx = trunc nuw i32 %i.zw to i16
  %i.zy = getelementptr inbounds nuw i8, ptr %.338205.i, i64 2
  store i16 %i.zx, ptr %.338205.i, align 2, !tbaa !56
  %i.zz = getelementptr inbounds nuw i8, ptr %.3206.i, i64 4
  %i.aaa = load i16, ptr %i.zp, align 2, !tbaa !56
  %i.aab = zext i16 %i.aaa to i32
  %i.aac = shl nuw i32 %i.aab, 16
  %i.aad = bitcast i32 %i.aac to float
  %i.aae = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mf, float %i.aad)
  %i.aaf = bitcast float %i.aae to i32
  %i.aag = lshr i32 %i.aaf, 16
  %i.aah = trunc nuw i32 %i.aag to i16
  %i.aai = getelementptr inbounds nuw i8, ptr %.338205.i, i64 4
  store i16 %i.aah, ptr %i.zy, align 2, !tbaa !56
  %i.aaj = add nuw nsw i32 %.342204.i, 2          ; 2 uses
  %exitcond.not.i38.1 = icmp eq i32 %i.aaj, %i.a
  br i1 %exitcond.not.i38.1, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor14binary_op_rpowEEEvPKtS4_Pti.exit, label %.lr.ph207.i, !llvm.loop !1193

bb.n:                                             ; preds = %bb.d
  %i.aak = icmp eq i32 %3, 1
  br i1 %i.aak, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.aal = load i16, ptr %0, align 2, !tbaa !56
  %i.aam = zext i16 %i.aal to i32
  %i.aan = shl nuw i32 %i.aam, 16
  %i.aao = bitcast i32 %i.aan to float            ; 15 uses
  %i.aap = icmp eq i32 %.sroa.speculated, 4
  br i1 %i.aap, label %.thread182.i73, label %bb.p

.thread182.i73:                                   ; preds = %bb.o
  %i.aaq = load i64, ptr %0, align 2, !tbaa !60
  %i.aar = insertelement <2 x i64> poison, i64 %i.aaq, i64 0
  %i.aas = bitcast <2 x i64> %i.aar to <8 x i16>
  %i.aat = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aas, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aau = bitcast <8 x i16> %i.aat to <4 x float> ; 2 uses
  %i.aav = shufflevector <4 x float> %i.aau, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.aaw = insertelement <4 x float> poison, float %i.aao, i64 0 ; 2 uses
  %i.aax = shufflevector <4 x float> %i.aaw, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aay = icmp eq i32 %.sroa.speculated, 8
  br i1 %i.aay, label %.thread181.i72, label %bb.q

.thread181.i72:                                   ; preds = %bb.p
  %i.aaz = load <8 x i16>, ptr %0, align 2, !tbaa !60 ; 2 uses
  %i.aba = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aaz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.abb = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aaz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.abc = shufflevector <8 x i16> %i.aba, <8 x i16> %i.abb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abd = bitcast <16 x i16> %i.abc to <8 x float>
  br label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.abe = shufflevector <4 x float> %i.aaw, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.abf = icmp eq i32 %.sroa.speculated, 16
  br i1 %i.abf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.abg = load <16 x i16>, ptr %0, align 2, !tbaa !60 ; 2 uses
  %i.abh = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.abg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.abi = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.abg, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.abj = shufflevector <16 x i16> %i.abh, <16 x i16> %i.abi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.abk = shufflevector <16 x i16> %i.abh, <16 x i16> %i.abi, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.abl = bitcast <16 x i16> %i.abj to <8 x i32>
  %i.abm = bitcast <16 x i16> %i.abk to <8 x i32>
  %i.abn = shufflevector <8 x i32> %i.abl, <8 x i32> %i.abm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abo = bitcast <16 x i32> %i.abn to <16 x float>
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %.thread181.i72, %.thread182.i73
  %i.abp = phi <8 x float> [ %i.abd, %.thread181.i72 ], [ %i.abe, %bb.q ], [ %i.aav, %.thread182.i73 ] ; 2 uses
  %i.abq = phi <4 x float> [ %i.aax, %.thread181.i72 ], [ %i.aax, %bb.q ], [ %i.aau, %.thread182.i73 ]
  %i.abr = shufflevector <8 x float> %i.abp, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.abs = phi <8 x float> [ %i.abe, %bb.r ], [ %i.abp, %bb.s ]
  %i.abt = phi <4 x float> [ %i.aax, %bb.r ], [ %i.abq, %bb.s ]
  %i.abu = phi fast <16 x float> [ %i.abo, %bb.r ], [ %i.abr, %bb.s ]
  %i.abv = icmp sgt i32 %i.a, 15
  br i1 %i.abv, label %.lr.ph.i67, label %.preheader184.i42

.preheader184.loopexit.i71:                       ; preds = %.lr.ph.i67
  %i.abw = and i32 %i.a, 2147483632
  br label %.preheader184.i42

.preheader184.i42:                                ; preds = %.preheader184.loopexit.i71, %bb.t
  %.039.lcssa.i43 = phi i32 [ 0, %bb.t ], [ %i.abw, %.preheader184.loopexit.i71 ] ; 3 uses
  %.035.lcssa.i44 = phi ptr [ %2, %bb.t ], [ %i.aes, %.preheader184.loopexit.i71 ] ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN4ncnnL22binary_op_vector_bf16sINS_27BinaryOp_x86_avx512_functor14binary_op_rpowEEEvPKtS4_Ptiiii:bb.a
  %i.acn = bitcast <16 x i32> %i.acm to <16 x float> ; 3 uses
  %i.aco = add nsw <16 x i32> %i.ack, splat (i32 -127)
  %i.acp = sitofp fast <16 x i32> %i.aco to <16 x float> ; 2 uses
  %i.acq = fadd fast <16 x float> %i.acp, splat (float 1.000000e+00)
  %i.acr = fcmp fast olt <16 x float> %i.acn, splat (float f0x3F3504F3) ; 2 uses
  %i.acs = fadd fast <16 x float> %i.acn, splat (float -1.000000e+00)
  %i.act = select fast <16 x i1> %i.acr, <16 x float> %i.acp, <16 x float> %i.acq ; 2 uses
  %i.acu = select fast <16 x i1> %i.acr, <16 x float> %i.acn, <16 x float> zeroinitializer
  %i.acv = fadd fast <16 x float> %i.acs, %i.acu  ; 12 uses
  %i.acw = fmul fast <16 x float> %i.acv, %i.acv  ; 2 uses
  %i.acx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.acv, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.acy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.acx, <16 x float> nofpclass(nan inf) %i.acv, <16 x float> splat (float f0x3DEF251A))
  %i.acz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.acy, <16 x float> nofpclass(nan inf) %i.acv, <16 x float> splat (float f0xBDFE5D4F))
  %i.ada = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.acz, <16 x float> nofpclass(nan inf) %i.acv, <16 x float> splat (float f0x3E11E9BF))
  %i.adb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ada, <16 x float> nofpclass(nan inf) %i.acv, <16 x float> splat (float f0xBE2AAE50))
  %i.adc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.adb, <16 x float> nofpclass(nan inf) %i.acv, <16 x float> splat (float f0x3E4CCEAC))
  %i.add = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.adc, <16 x float> nofpclass(nan inf) %i.acv, <16 x float> splat (float f0xBE7FFFFC))
  %i.ade = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.add, <16 x float> nofpclass(nan inf) %i.acv, <16 x float> splat (float f0x3EAAAAAA))
  %i.adf = fmul fast <16 x float> %i.acw, %i.acv
  %i.adg = fmul fast <16 x float> %i.adf, %i.ade
  %i.adh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.act, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.adg)
  %i.adi = fneg fast <16 x float> %i.acw
  %i.adj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.adi, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.adh)
  %i.adk = fadd fast <16 x float> %i.adj, %i.acv
  %i.adl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.act, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.adk)
  %i.adm = fmul fast <16 x float> %i.adl, %i.abu
  %i.adn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.adm, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ado = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.adn, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.adp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ado, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.adq = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.adp, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.adr = fcmp fast ogt <16 x float> %i.adq, %i.adp
  %i.ads = fadd fast <16 x float> %i.adq, splat (float -1.000000e+00)
  %i.adt = select fast <16 x i1> %i.adr, <16 x float> %i.ads, <16 x float> %i.adq ; 2 uses
  %i.adu = fneg fast <16 x float> %i.adt          ; 2 uses
  %i.adv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.adu, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ado)
  %i.adw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.adu, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.adv) ; 8 uses
  %i.adx = fmul fast <16 x float> %i.adw, %i.adw
  %i.ady = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.adw, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.adz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ady, <16 x float> nofpclass(nan inf) %i.adw, <16 x float> splat (float f0x3C088908))
  %i.aea = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.adz, <16 x float> nofpclass(nan inf) %i.adw, <16 x float> splat (float f0x3D2AA9C1))
  %i.aeb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aea, <16 x float> nofpclass(nan inf) %i.adw, <16 x float> splat (float f0x3E2AAAAA))
  %i.aec = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aeb, <16 x float> nofpclass(nan inf) %i.adw, <16 x float> splat (float 5.000000e-01))
  %i.aed = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aec, <16 x float> nofpclass(nan inf) %i.adx, <16 x float> nofpclass(nan inf) %i.adw)
  %i.aee = fadd fast <16 x float> %i.aed, splat (float 1.000000e+00)
  %i.aef = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.adt, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.aeg = shl <16 x i32> %i.aef, splat (i32 23)
  %i.aeh = add <16 x i32> %i.aeg, splat (i32 1065353216)
  %i.aei = bitcast <16 x i32> %i.aeh to <16 x float>
  %i.aej = fmul fast <16 x float> %i.aee, %i.aei
  %i.aek = bitcast <16 x float> %i.aej to <16 x i32>
  %i.ael = lshr <16 x i32> %i.aek, splat (i32 16) ; 2 uses
  %i.aem = shufflevector <16 x i32> %i.ael, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aen = shufflevector <16 x i32> %i.ael, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aeo = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.aem, <8 x i32> %i.aen)
  %i.aep = bitcast <16 x i16> %i.aeo to <4 x i64>
  %i.aeq = shufflevector <4 x i64> %i.aep, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.aeq, ptr %.035186.i69, align 1, !tbaa !60
  %i.aer = getelementptr inbounds nuw i8, ptr %.0187.i68, i64 32 ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %.035186.i69, i64 32 ; 2 uses
  %i.aet = add nuw nsw i32 %.039185.i70, 16       ; 2 uses
  %i.aeu = or disjoint i32 %i.aet, 15
  %i.aev = icmp slt i32 %i.aeu, %i.a
  br i1 %i.aev, label %.lr.ph.i67, label %.preheader184.loopexit.i71, !llvm.loop !1194

.preheader183.i46:                                ; preds = %.lr.ph193.i63, %.preheader184.i42
  %.140.lcssa.i47 = phi i32 [ %.039.lcssa.i43, %.preheader184.i42 ], [ %i.ahm, %.lr.ph193.i63 ] ; 3 uses
  %.136.lcssa.i48 = phi ptr [ %.035.lcssa.i44, %.preheader184.i42 ], [ %i.ahl, %.lr.ph193.i63 ] ; 2 uses
  %.1.lcssa.i49 = phi ptr [ %.0.lcssa.i45, %.preheader184.i42 ], [ %i.ahk, %.lr.ph193.i63 ] ; 2 uses
  %i.aew = or disjoint i32 %.140.lcssa.i47, 3
  %i.aex = icmp slt i32 %i.aew, %i.a
  br i1 %i.aex, label %.lr.ph200.i59, label %.preheader.i50

.lr.ph193.i63:                                    ; preds = %.preheader184.i42, %.lr.ph193.i63
  %.1192.i64 = phi ptr [ %i.ahk, %.lr.ph193.i63 ], [ %.0.lcssa.i45, %.preheader184.i42 ] ; 2 uses
  %.136191.i65 = phi ptr [ %i.ahl, %.lr.ph193.i63 ], [ %.035.lcssa.i44, %.preheader184.i42 ] ; 2 uses
  %.140190.i66 = phi i32 [ %i.ahm, %.lr.ph193.i63 ], [ %.039.lcssa.i43, %.preheader184.i42 ]
  %i.aey = load <8 x i16>, ptr %.1192.i64, align 1, !tbaa !60 ; 2 uses
  %i.aez = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aey, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.afa = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aey, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.afb = shufflevector <8 x i16> %i.aez, <8 x i16> %i.afa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.afc = bitcast <16 x i16> %i.afb to <8 x float>
  %i.afd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.afc, <8 x float> splat (float f0x00800000))
  %i.afe = bitcast <8 x float> %i.afd to <8 x i32> ; 2 uses
  %i.aff = lshr <8 x i32> %i.afe, splat (i32 23)
  %i.afg = and <8 x i32> %i.afe, splat (i32 -2139095041)
  %i.afh = or disjoint <8 x i32> %i.afg, splat (i32 1056964608)
  %i.afi = bitcast <8 x i32> %i.afh to <8 x float> ; 3 uses
  %i.afj = add nsw <8 x i32> %i.aff, splat (i32 -127)
  %i.afk = sitofp fast <8 x i32> %i.afj to <8 x float> ; 2 uses
  %i.afl = fadd fast <8 x float> %i.afk, splat (float 1.000000e+00)
  %i.afm = fcmp fast olt <8 x float> %i.afi, splat (float f0x3F3504F3) ; 2 uses
  %i.afn = select <8 x i1> %i.afm, <8 x float> %i.afi, <8 x float> zeroinitializer
  %i.afo = fadd fast <8 x float> %i.afi, splat (float -1.000000e+00)
  %i.afp = select fast <8 x i1> %i.afm, <8 x float> %i.afk, <8 x float> %i.afl ; 2 uses
  %i.afq = fadd fast <8 x float> %i.afo, %i.afn   ; 12 uses
  %i.afr = fmul fast <8 x float> %i.afq, %i.afq   ; 2 uses
  %i.afs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afq, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.aft = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afs, <8 x float> nofpclass(nan inf) %i.afq, <8 x float> splat (float f0x3DEF251A))
  %i.afu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aft, <8 x float> nofpclass(nan inf) %i.afq, <8 x float> splat (float f0xBDFE5D4F))
  %i.afv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afu, <8 x float> nofpclass(nan inf) %i.afq, <8 x float> splat (float f0x3E11E9BF))
  %i.afw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afv, <8 x float> nofpclass(nan inf) %i.afq, <8 x float> splat (float f0xBE2AAE50))
  %i.afx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afw, <8 x float> nofpclass(nan inf) %i.afq, <8 x float> splat (float f0x3E4CCEAC))
  %i.afy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afx, <8 x float> nofpclass(nan inf) %i.afq, <8 x float> splat (float f0xBE7FFFFC))
  %i.afz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afy, <8 x float> nofpclass(nan inf) %i.afq, <8 x float> splat (float f0x3EAAAAAA))
  %i.aga = fmul fast <8 x float> %i.afr, %i.afq
  %i.agb = fmul fast <8 x float> %i.aga, %i.afz
  %i.agc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afp, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.agb)
  %i.agd = fneg fast <8 x float> %i.afr
  %i.age = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.agd, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.agc)
  %i.agf = fadd fast <8 x float> %i.age, %i.afq
  %i.agg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afp, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.agf)
  %i.agh = fmul fast <8 x float> %i.agg, %i.abs
  %i.agi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.agh, <8 x float> splat (float f0x42B0C0A5))
  %i.agj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.agi, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.agk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agj, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.agl = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.agk, i32 1) ; 2 uses
  %i.agm = fcmp fast ogt <8 x float> %i.agl, %i.agk
  %i.agn = select <8 x i1> %i.agm, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ago = fsub fast <8 x float> %i.agl, %i.agn   ; 2 uses
  %i.agp = fneg fast <8 x float> %i.ago           ; 2 uses
  %i.agq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.agp, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.agj)
  %i.agr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.agp, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.agq) ; 8 uses
  %i.ags = fmul fast <8 x float> %i.agr, %i.agr
  %i.agt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agr, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.agu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agt, <8 x float> nofpclass(nan inf) %i.agr, <8 x float> splat (float f0x3C088908))
  %i.agv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agu, <8 x float> nofpclass(nan inf) %i.agr, <8 x float> splat (float f0x3D2AA9C1))
  %i.agw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agv, <8 x float> nofpclass(nan inf) %i.agr, <8 x float> splat (float f0x3E2AAAAA))
  %i.agx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agw, <8 x float> nofpclass(nan inf) %i.agr, <8 x float> splat (float 5.000000e-01))
  %i.agy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agx, <8 x float> nofpclass(nan inf) %i.ags, <8 x float> nofpclass(nan inf) %i.agr)
  %i.agz = fadd fast <8 x float> %i.agy, splat (float 1.000000e+00)
  %i.aha = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ago)
  %i.ahb = shl <8 x i32> %i.aha, splat (i32 23)
  %i.ahc = add <8 x i32> %i.ahb, splat (i32 1065353216)
  %i.ahd = bitcast <8 x i32> %i.ahc to <8 x float>
  %i.ahe = fmul fast <8 x float> %i.agz, %i.ahd
  %i.ahf = bitcast <8 x float> %i.ahe to <8 x i32>
  %i.ahg = lshr <8 x i32> %i.ahf, splat (i32 16)  ; 2 uses
  %i.ahh = shufflevector <8 x i32> %i.ahg, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ahi = shufflevector <8 x i32> %i.ahg, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ahj = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ahh, <4 x i32> %i.ahi)
  store <8 x i16> %i.ahj, ptr %.136191.i65, align 1, !tbaa !60
  %i.ahk = getelementptr inbounds nuw i8, ptr %.1192.i64, i64 16 ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %.136191.i65, i64 16 ; 2 uses
  %i.ahm = add nuw nsw i32 %.140190.i66, 8        ; 3 uses
  %i.ahn = or disjoint i32 %i.ahm, 7
  %i.aho = icmp slt i32 %i.ahn, %i.a
  br i1 %i.aho, label %.lr.ph193.i63, label %.preheader183.i46, !llvm.loop !1195

.preheader.i50:                                   ; preds = %.lr.ph200.i59, %.preheader183.i46
  %.241.lcssa.i51 = phi i32 [ %.140.lcssa.i47, %.preheader183.i46 ], [ %i.anv, %.lr.ph200.i59 ] ; 5 uses
  %.237.lcssa.i52 = phi ptr [ %.136.lcssa.i48, %.preheader183.i46 ], [ %i.anu, %.lr.ph200.i59 ] ; 6 uses
  %.2.lcssa.i53 = phi ptr [ %.1.lcssa.i49, %.preheader183.i46 ], [ %i.ant, %.lr.ph200.i59 ] ; 6 uses
  %i.ahp = icmp slt i32 %.241.lcssa.i51, %i.a
  br i1 %i.ahp, label %iter.check318, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor14binary_op_rpowEEEvPKtS4_Pti.exit

iter.check318:                                    ; preds = %.preheader.i50
  %.237.lcssa.i52302 = ptrtoaddr ptr %.237.lcssa.i52 to i64
  %.2.lcssa.i53301 = ptrtoaddr ptr %.2.lcssa.i53 to i64
  %i.ahq = xor i32 %.241.lcssa.i51, -1
  %i.ahr = add i32 %i.a, %i.ahq                   ; 3 uses
  %i.ahs = zext i32 %i.ahr to i64
  %i.aht = add nuw nsw i64 %i.ahs, 1              ; 5 uses
  %min.iters.check303 = icmp ult i32 %i.ahr, 7
  %i.ahu = sub i64 %.2.lcssa.i53301, %.237.lcssa.i52302
  %diff.check305 = icmp ugt i64 %i.ahu, -64
  %or.cond423 = select i1 %min.iters.check303, i1 true, i1 %diff.check305
  br i1 %or.cond423, label %.lr.ph207.i54.preheader, label %vector.main.loop.iter.check306

vector.main.loop.iter.check306:                   ; preds = %iter.check318
  %min.iters.check307 = icmp ult i32 %i.ahr, 31
  br i1 %min.iters.check307, label %vec.epilog.ph322, label %vector.ph308

vector.ph308:                                     ; preds = %vector.main.loop.iter.check306
  %i.ahv = and i64 %i.aht, 24
  %n.vec309 = and i64 %i.aht, 8589934560          ; 5 uses
  %i.ahw = shl nuw nsw i64 %n.vec309, 1           ; 2 uses
  %i.ahx = getelementptr i8, ptr %.2.lcssa.i53, i64 %i.ahw
  %i.ahy = getelementptr i8, ptr %.237.lcssa.i52, i64 %i.ahw
  %i.ahz = trunc i64 %n.vec309 to i32
  %i.aia = add i32 %.241.lcssa.i51, %i.ahz
  %i.aib = insertelement <16 x float> poison, float %i.aao, i64 0
  %i.aic = shufflevector <16 x float> %i.aib, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aid = insertelement <8 x float> poison, float %i.aao, i64 0
  %i.aie = shufflevector <8 x float> %i.aid, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aif = insertelement <4 x float> poison, float %i.aao, i64 0
  %i.aig = shufflevector <4 x float> %i.aif, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aih = insertelement <2 x float> poison, float %i.aao, i64 0
  %i.aii = shufflevector <2 x float> %i.aih, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body310

vector.body310:                                   ; preds = %vector.ph308, %vector.body310
  %index311 = phi i64 [ 0, %vector.ph308 ], [ %index.next315, %vector.body310 ] ; 2 uses
  %i.aij = shl i64 %index311, 1                   ; 2 uses
  %next.gep312 = getelementptr i8, ptr %.2.lcssa.i53, i64 %i.aij
  %next.gep313 = getelementptr i8, ptr %.237.lcssa.i52, i64 %i.aij
  %wide.load314 = load <32 x i16>, ptr %next.gep312, align 2, !tbaa !56
  %i.aik = zext <32 x i16> %wide.load314 to <32 x i32>
  %i.ail = shl nuw <32 x i32> %i.aik, splat (i32 16)
  %i.aim = bitcast <32 x i32> %i.ail to <32 x float> ; 6 uses
  %i.ain = extractelement <32 x float> %i.aim, i64 0
  %i.aio = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ain, float %i.aao)
  %i.aip = shufflevector <32 x float> %i.aim, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.aiq = tail call fast <16 x float> @llvm.pow.v16f32(<16 x float> %i.aip, <16 x float> %i.aic)
  %i.air = shufflevector <32 x float> %i.aim, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.ais = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.air, <8 x float> %i.aie)
  %i.ait = shufflevector <32 x float> %i.aim, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.aiu = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.ait, <4 x float> %i.aig)
  %i.aiv = extractelement <32 x float> %i.aim, i64 29
  %i.aiw = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.aiv, float %i.aao)
  %i.aix = shufflevector <32 x float> %i.aim, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.aiy = tail call fast <2 x float> @llvm.pow.v2f32(<2 x float> %i.aix, <2 x float> %i.aii)
  %i.aiz = insertelement <32 x float> poison, float %i.aio, i64 0
  %i.aja = shufflevector <16 x float> %i.aiq, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ajb = shufflevector <32 x float> %i.aiz, <32 x float> %i.aja, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ajc = shufflevector <8 x float> %i.ais, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ajd = shufflevector <32 x float> %i.ajb, <32 x float> %i.ajc, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aje = shufflevector <4 x float> %i.aiu, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ajf = shufflevector <32 x float> %i.ajd, <32 x float> %i.aje, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.ajg = insertelement <32 x float> %i.ajf, float %i.aiw, i64 29
  %i.ajh = shufflevector <2 x float> %i.aiy, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aji = shufflevector <32 x float> %i.ajg, <32 x float> %i.ajh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.ajj = bitcast <32 x float> %i.aji to <32 x i32>
  %i.ajk = lshr <32 x i32> %i.ajj, splat (i32 16)
  %i.ajl = trunc nuw <32 x i32> %i.ajk to <32 x i16>
  store <32 x i16> %i.ajl, ptr %next.gep313, align 2, !tbaa !56
  %index.next315 = add nuw i64 %index311, 32      ; 2 uses
  %i.ajm = icmp eq i64 %index.next315, %n.vec309
  br i1 %i.ajm, label %middle.block316, label %vector.body310, !llvm.loop !1196

middle.block316:                                  ; preds = %vector.body310
  %cmp.n317 = icmp eq i64 %i.aht, %n.vec309
  br i1 %cmp.n317, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor14binary_op_rpowEEEvPKtS4_Pti.exit, label %vec.epilog.iter.check319

vec.epilog.iter.check319:                         ; preds = %middle.block316
  %min.epilog.iters.check321 = icmp eq i64 %i.ahv, 0
  br i1 %min.epilog.iters.check321, label %.lr.ph207.i54.preheader, label %vec.epilog.ph322, !prof !64

vec.epilog.ph322:                                 ; preds = %vector.main.loop.iter.check306, %vec.epilog.iter.check319
  %vec.epilog.resume.val323 = phi i64 [ %n.vec309, %vec.epilog.iter.check319 ], [ 0, %vector.main.loop.iter.check306 ]
  %n.vec324 = and i64 %i.aht, 8589934584          ; 4 uses
  %i.ajn = shl nuw nsw i64 %n.vec324, 1           ; 2 uses
  %i.ajo = getelementptr i8, ptr %.2.lcssa.i53, i64 %i.ajn
  %i.ajp = getelementptr i8, ptr %.237.lcssa.i52, i64 %i.ajn
  %i.ajq = trunc i64 %n.vec324 to i32
  %i.ajr = add i32 %.241.lcssa.i51, %i.ajq
  %i.ajs = insertelement <4 x float> poison, float %i.aao, i64 0
  %i.ajt = shufflevector <4 x float> %i.ajs, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body325

vec.epilog.vector.body325:                        ; preds = %vec.epilog.vector.body325, %vec.epilog.ph322
  %index326 = phi i64 [ %vec.epilog.resume.val323, %vec.epilog.ph322 ], [ %index.next330, %vec.epilog.vector.body325 ] ; 2 uses
  %i.aju = shl i64 %index326, 1                   ; 2 uses
  %next.gep327 = getelementptr i8, ptr %.2.lcssa.i53, i64 %i.aju
  %next.gep328 = getelementptr i8, ptr %.237.lcssa.i52, i64 %i.aju
  %wide.load329 = load <8 x i16>, ptr %next.gep327, align 2, !tbaa !56
  %i.ajv = zext <8 x i16> %wide.load329 to <8 x i32>
  %i.ajw = shl nuw <8 x i32> %i.ajv, splat (i32 16)
  %i.ajx = bitcast <8 x i32> %i.ajw to <8 x float> ; 5 uses
  %i.ajy = extractelement <8 x float> %i.ajx, i64 0
  %i.ajz = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ajy, float %i.aao)
  %i.aka = extractelement <8 x float> %i.ajx, i64 1
  %i.akb = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.aka, float %i.aao)
  %i.akc = extractelement <8 x float> %i.ajx, i64 2
  %i.akd = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.akc, float %i.aao)
  %i.ake = shufflevector <8 x float> %i.ajx, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.akf = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.ake, <4 x float> %i.ajt)
  %i.akg = extractelement <8 x float> %i.ajx, i64 7
  %i.akh = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.akg, float %i.aao)
  %i.aki = insertelement <8 x float> poison, float %i.ajz, i64 0
  %i.akj = insertelement <8 x float> %i.aki, float %i.akb, i64 1
  %i.akk = insertelement <8 x float> %i.akj, float %i.akd, i64 2
  %i.akl = shufflevector <4 x float> %i.akf, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.akm = shufflevector <8 x float> %i.akk, <8 x float> %i.akl, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.akn = insertelement <8 x float> %i.akm, float %i.akh, i64 7
  %i.ako = bitcast <8 x float> %i.akn to <8 x i32>
  %i.akp = lshr <8 x i32> %i.ako, splat (i32 16)
  %i.akq = trunc nuw <8 x i32> %i.akp to <8 x i16>
  store <8 x i16> %i.akq, ptr %next.gep328, align 2, !tbaa !56
  %index.next330 = add nuw i64 %index326, 8       ; 2 uses
  %i.akr = icmp eq i64 %index.next330, %n.vec324
  br i1 %i.akr, label %vec.epilog.middle.block331, label %vec.epilog.vector.body325, !llvm.loop !1197

vec.epilog.middle.block331:                       ; preds = %vec.epilog.vector.body325
  %cmp.n332 = icmp eq i64 %i.aht, %n.vec324
  br i1 %cmp.n332, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor14binary_op_rpowEEEvPKtS4_Pti.exit, label %.lr.ph207.i54.preheader

.lr.ph207.i54.preheader:                          ; preds = %iter.check318, %vec.epilog.iter.check319, %vec.epilog.middle.block331
  %.3206.i55.ph = phi ptr [ %.2.lcssa.i53, %iter.check318 ], [ %i.ahx, %vec.epilog.iter.check319 ], [ %i.ajo, %vec.epilog.middle.block331 ] ; 3 uses
  %.338205.i56.ph = phi ptr [ %.237.lcssa.i52, %iter.check318 ], [ %i.ahy, %vec.epilog.iter.check319 ], [ %i.ajp, %vec.epilog.middle.block331 ] ; 3 uses
  %.342204.i57.ph = phi i32 [ %.241.lcssa.i51, %iter.check318 ], [ %i.aia, %vec.epilog.iter.check319 ], [ %i.ajr, %vec.epilog.middle.block331 ] ; 4 uses
  %i.aks = sub i32 %i.a, %.342204.i57.ph
  %.neg474 = add i32 %.342204.i57.ph, 1
  %xtraiter468 = and i32 %i.aks, 1
  %lcmp.mod469.not = icmp eq i32 %xtraiter468, 0
  br i1 %lcmp.mod469.not, label %.lr.ph207.i54.prol.loopexit, label %.lr.ph207.i54.prol

.lr.ph207.i54.prol:                               ; preds = %.lr.ph207.i54.preheader
  %i.akt = getelementptr inbounds nuw i8, ptr %.3206.i55.ph, i64 2
  %i.aku = load i16, ptr %.3206.i55.ph, align 2, !tbaa !56
  %i.akv = zext i16 %i.aku to i32
  %i.akw = shl nuw i32 %i.akv, 16
  %i.akx = bitcast i32 %i.akw to float
  %i.aky = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.akx, float %i.aao)
  %i.akz = bitcast float %i.aky to i32
  %i.ala = lshr i32 %i.akz, 16
  %i.alb = trunc nuw i32 %i.ala to i16
  %i.alc = getelementptr inbounds nuw i8, ptr %.338205.i56.ph, i64 2
  store i16 %i.alb, ptr %.338205.i56.ph, align 2, !tbaa !56
  %i.ald = add nuw nsw i32 %.342204.i57.ph, 1
  br label %.lr.ph207.i54.prol.loopexit

.lr.ph207.i54.prol.loopexit:                      ; preds = %.lr.ph207.i54.prol, %.lr.ph207.i54.preheader
  %.3206.i55.unr = phi ptr [ %.3206.i55.ph, %.lr.ph207.i54.preheader ], [ %i.akt, %.lr.ph207.i54.prol ]
  %.338205.i56.unr = phi ptr [ %.338205.i56.ph, %.lr.ph207.i54.preheader ], [ %i.alc, %.lr.ph207.i54.prol ]
  %.342204.i57.unr = phi i32 [ %.342204.i57.ph, %.lr.ph207.i54.preheader ], [ %i.ald, %.lr.ph207.i54.prol ]
  %i.ale = icmp eq i32 %i.a, %.neg474
  br i1 %i.ale, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor14binary_op_rpowEEEvPKtS4_Pti.exit, label %.lr.ph207.i54

.lr.ph200.i59:                                    ; preds = %.preheader183.i46, %.lr.ph200.i59
  %.2199.i60 = phi ptr [ %i.ant, %.lr.ph200.i59 ], [ %.1.lcssa.i49, %.preheader183.i46 ] ; 2 uses
  %.237198.i61 = phi ptr [ %i.anu, %.lr.ph200.i59 ], [ %.136.lcssa.i48, %.preheader183.i46 ] ; 2 uses
  %.241197.i62 = phi i32 [ %i.anv, %.lr.ph200.i59 ], [ %.140.lcssa.i47, %.preheader183.i46 ]
  %i.alf = load i64, ptr %.2199.i60, align 1, !tbaa !60
  %i.alg = insertelement <2 x i64> poison, i64 %i.alf, i64 0
  %i.alh = bitcast <2 x i64> %i.alg to <8 x i16>
  %i.ali = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.alh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.alj = bitcast <8 x i16> %i.ali to <4 x float>
  %i.alk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.alj, <4 x float> splat (float f0x00800000))
  %i.all = bitcast <4 x float> %i.alk to <4 x i32> ; 2 uses
  %i.alm = lshr <4 x i32> %i.all, splat (i32 23)
  %i.aln = and <4 x i32> %i.all, splat (i32 -2139095041)
  %i.alo = or disjoint <4 x i32> %i.aln, splat (i32 1056964608)
  %i.alp = bitcast <4 x i32> %i.alo to <4 x float> ; 3 uses
  %i.alq = add nsw <4 x i32> %i.alm, splat (i32 -127)
  %i.alr = sitofp fast <4 x i32> %i.alq to <4 x float> ; 2 uses
  %i.als = fadd fast <4 x float> %i.alr, splat (float 1.000000e+00)
  %i.alt = fcmp fast olt <4 x float> %i.alp, splat (float f0x3F3504F3) ; 2 uses
  %i.alu = select <4 x i1> %i.alt, <4 x float> %i.alp, <4 x float> zeroinitializer
  %i.alv = fadd fast <4 x float> %i.alp, splat (float -1.000000e+00)
  %i.alw = select fast <4 x i1> %i.alt, <4 x float> %i.alr, <4 x float> %i.als ; 2 uses
  %i.alx = fadd fast <4 x float> %i.alv, %i.alu   ; 12 uses
  %i.aly = fmul fast <4 x float> %i.alx, %i.alx   ; 2 uses
  %i.alz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.alx, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.ama = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.alz, <4 x float> nofpclass(nan inf) %i.alx, <4 x float> splat (float f0x3DEF251A))
  %i.amb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ama, <4 x float> nofpclass(nan inf) %i.alx, <4 x float> splat (float f0xBDFE5D4F))
  %i.amc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.amb, <4 x float> nofpclass(nan inf) %i.alx, <4 x float> splat (float f0x3E11E9BF))
  %i.amd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.amc, <4 x float> nofpclass(nan inf) %i.alx, <4 x float> splat (float f0xBE2AAE50))
  %i.ame = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.amd, <4 x float> nofpclass(nan inf) %i.alx, <4 x float> splat (float f0x3E4CCEAC))
  %i.amf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ame, <4 x float> nofpclass(nan inf) %i.alx, <4 x float> splat (float f0xBE7FFFFC))
  %i.amg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.amf, <4 x float> nofpclass(nan inf) %i.alx, <4 x float> splat (float f0x3EAAAAAA))
  %i.amh = fmul fast <4 x float> %i.aly, %i.alx
  %i.ami = fmul fast <4 x float> %i.amh, %i.amg
  %i.amj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.alw, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ami)
  %i.amk = fneg fast <4 x float> %i.aly
  %i.aml = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.amk, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.amj)
  %i.amm = fadd fast <4 x float> %i.aml, %i.alx
  %i.amn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.alw, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.amm)
  %i.amo = fmul fast <4 x float> %i.amn, %i.abt
  %i.amp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.amo, <4 x float> splat (float f0x42B0C0A5))
  %i.amq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.amp, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.amr = fmul fast <4 x float> %i.amq, splat (float f0x3FB8AA3B)
  %i.ams = fadd fast <4 x float> %i.amr, splat (float 5.000000e-01) ; 2 uses
  %i.amt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ams)
  %i.amu = sitofp fast <4 x i32> %i.amt to <4 x float> ; 2 uses
  %i.amv = fcmp fast olt <4 x float> %i.ams, %i.amu
  %i.amw = select <4 x i1> %i.amv, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.amx = fsub fast <4 x float> %i.amu, %i.amw   ; 2 uses
  %i.amy = fneg fast <4 x float> %i.amx           ; 2 uses
  %i.amz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.amy, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.amq)
  %i.ana = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.amy, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.amz) ; 8 uses
  %i.anb = fmul fast <4 x float> %i.ana, %i.ana
  %i.anc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ana, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.and = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.anc, <4 x float> nofpclass(nan inf) %i.ana, <4 x float> splat (float f0x3C088908))
  %i.ane = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.and, <4 x float> nofpclass(nan inf) %i.ana, <4 x float> splat (float f0x3D2AA9C1))
  %i.anf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ane, <4 x float> nofpclass(nan inf) %i.ana, <4 x float> splat (float f0x3E2AAAAA))
  %i.ang = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.anf, <4 x float> nofpclass(nan inf) %i.ana, <4 x float> splat (float 5.000000e-01))
  %i.anh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ang, <4 x float> nofpclass(nan inf) %i.anb, <4 x float> nofpclass(nan inf) %i.ana)
  %i.ani = fadd fast <4 x float> %i.anh, splat (float 1.000000e+00)
  %i.anj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.amx)
  %i.ank = shl <4 x i32> %i.anj, splat (i32 23)
  %i.anl = add <4 x i32> %i.ank, splat (i32 1065353216)
  %i.anm = bitcast <4 x i32> %i.anl to <4 x float>
  %i.ann = fmul fast <4 x float> %i.ani, %i.anm
  %i.ano = bitcast <4 x float> %i.ann to <4 x i32>
  %i.anp = lshr <4 x i32> %i.ano, splat (i32 16)
  %i.anq = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.anp, <4 x i32> poison)
  %i.anr = bitcast <8 x i16> %i.anq to <2 x i64>
  %i.ans = extractelement <2 x i64> %i.anr, i64 0
  store i64 %i.ans, ptr %.237198.i61, align 1, !tbaa !60
  %i.ant = getelementptr inbounds nuw i8, ptr %.2199.i60, i64 8 ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %.237198.i61, i64 8 ; 2 uses
  %i.anv = add nuw nsw i32 %.241197.i62, 4        ; 3 uses
  %i.anw = or disjoint i32 %i.anv, 3
  %i.anx = icmp slt i32 %i.anw, %i.a
  br i1 %i.anx, label %.lr.ph200.i59, label %.preheader.i50, !llvm.loop !1198

.lr.ph207.i54:                                    ; preds = %.lr.ph207.i54.prol.loopexit, %.lr.ph207.i54
  %.3206.i55 = phi ptr [ %i.aoi, %.lr.ph207.i54 ], [ %.3206.i55.unr, %.lr.ph207.i54.prol.loopexit ] ; 3 uses
  %.338205.i56 = phi ptr [ %i.aor, %.lr.ph207.i54 ], [ %.338205.i56.unr, %.lr.ph207.i54.prol.loopexit ] ; 3 uses
  %.342204.i57 = phi i32 [ %i.aos, %.lr.ph207.i54 ], [ %.342204.i57.unr, %.lr.ph207.i54.prol.loopexit ]
  %i.any = getelementptr inbounds nuw i8, ptr %.3206.i55, i64 2
  %i.anz = load i16, ptr %.3206.i55, align 2, !tbaa !56
  %i.aoa = zext i16 %i.anz to i32
  %i.aob = shl nuw i32 %i.aoa, 16
  %i.aoc = bitcast i32 %i.aob to float
  %i.aod = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.aoc, float %i.aao)
  %i.aoe = bitcast float %i.aod to i32
  %i.aof = lshr i32 %i.aoe, 16
  %i.aog = trunc nuw i32 %i.aof to i16
  %i.aoh = getelementptr inbounds nuw i8, ptr %.338205.i56, i64 2
  store i16 %i.aog, ptr %.338205.i56, align 2, !tbaa !56
  %i.aoi = getelementptr inbounds nuw i8, ptr %.3206.i55, i64 4
  %i.aoj = load i16, ptr %i.any, align 2, !tbaa !56
  %i.aok = zext i16 %i.aoj to i32
  %i.aol = shl nuw i32 %i.aok, 16
  %i.aom = bitcast i32 %i.aol to float
  %i.aon = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.aom, float %i.aao)
  %i.aoo = bitcast float %i.aon to i32
  %i.aop = lshr i32 %i.aoo, 16
  %i.aoq = trunc nuw i32 %i.aop to i16
  %i.aor = getelementptr inbounds nuw i8, ptr %.338205.i56, i64 4
  store i16 %i.aoq, ptr %i.aoh, align 2, !tbaa !56
  %i.aos = add nuw nsw i32 %.342204.i57, 2        ; 2 uses
  %exitcond.not.i58.1 = icmp eq i32 %i.aos, %i.a
  br i1 %exitcond.not.i58.1, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor14binary_op_rpowEEEvPKtS4_Pti.exit, label %.lr.ph207.i54, !llvm.loop !1199

bb.u:                                             ; preds = %bb.n, %bb.a
  %i.aot = icmp eq i32 %6, 1
  br i1 %i.aot, label %bb.v, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor14binary_op_rpowEEEvPKtS4_Pti.exit

bb.v:                                             ; preds = %bb.u
  %i.aou = icmp eq i32 %3, %4
  br i1 %i.aou, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  switch i32 %.sroa.speculated, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor14binary_op_rpowEEEvPKtS4_Pti.exit [
    i32 16, label %.preheader.i76
    i32 8, label %.preheader169.i
    i32 4, label %.preheader171.i
  ]

.preheader171.i:                                  ; preds = %bb.w
  %i.aov = icmp sgt i32 %.sroa.speculated98, 0
  br i1 %i.aov, label %.lr.ph.i74, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor14binary_op_rpowEEEvPKtS4_Pti.exit

.preheader169.i:                                  ; preds = %bb.w
  %i.aow = icmp sgt i32 %.sroa.speculated98, 0
  br i1 %i.aow, label %.lr.ph181.i, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor14binary_op_rpowEEEvPKtS4_Pti.exit

.preheader.i76:                                   ; preds = %bb.w
  %i.aox = icmp sgt i32 %.sroa.speculated98, 0
  br i1 %i.aox, label %.lr.ph186.i, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor14binary_op_rpowEEEvPKtS4_Pti.exit

.lr.ph186.i:                                      ; preds = %.preheader.i76, %.lr.ph186.i
  %.031185.i = phi ptr [ %i.arw, %.lr.ph186.i ], [ %0, %.preheader.i76 ] ; 2 uses
  %.033184.i = phi ptr [ %i.arx, %.lr.ph186.i ], [ %1, %.preheader.i76 ] ; 2 uses
  %.036183.i = phi i32 [ %i.arz, %.lr.ph186.i ], [ 0, %.preheader.i76 ]
  %.037182.i = phi ptr [ %i.ary, %.lr.ph186.i ], [ %2, %.preheader.i76 ] ; 2 uses
  %i.aoy = load <16 x i16>, ptr %.031185.i, align 1, !tbaa !60 ; 2 uses
  %i.aoz = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.aoy, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.apa = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.aoy, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.apb = shufflevector <16 x i16> %i.aoz, <16 x i16> %i.apa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.apc = shufflevector <16 x i16> %i.aoz, <16 x i16> %i.apa, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.apd = bitcast <16 x i16> %i.apb to <8 x i32>
  %i.ape = bitcast <16 x i16> %i.apc to <8 x i32>
  %i.apf = shufflevector <8 x i32> %i.apd, <8 x i32> %i.ape, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apg = bitcast <16 x i32> %i.apf to <16 x float>
  %i.aph = load i16, ptr %.033184.i, align 2, !tbaa !56
end_hunk_9
begin_hunk_10_@_ZN4ncnnL22binary_op_vector_bf16sINS_27BinaryOp_x86_avx512_functor14binary_op_rpowEEEvPKtS4_Ptiiii:bb.a
  %i.bap = shufflevector <16 x i32> %i.ban, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.baq = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bao, <8 x i32> %i.bap)
  %i.bar = bitcast <16 x i16> %i.baq to <4 x i64>
  %i.bas = shufflevector <4 x i64> %i.bar, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bas, ptr %.030133.i, align 1, !tbaa !60
  %i.bat = getelementptr inbounds nuw i8, ptr %.0134.i, i64 32 ; 2 uses
  %i.bau = getelementptr inbounds nuw i8, ptr %.030133.i, i64 32 ; 2 uses
  %i.bav = add nuw nsw i32 %.034132.i, 16         ; 2 uses
  %i.baw = or disjoint i32 %i.bav, 15
  %i.bax = icmp slt i32 %i.baw, %i.a
  br i1 %i.bax, label %bb.z, label %._crit_edge.loopexit.i, !llvm.loop !1203

._crit_edge.loopexit.i:                           ; preds = %bb.z
  %i.bay = and i32 %i.a, 2147483632
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.y
  %.034.lcssa.i77 = phi i32 [ 0, %bb.y ], [ %i.bay, %._crit_edge.loopexit.i ] ; 3 uses
  %.030.lcssa.i = phi ptr [ %2, %bb.y ], [ %i.bau, %._crit_edge.loopexit.i ] ; 2 uses
  %.0.lcssa.i78 = phi ptr [ %0, %bb.y ], [ %i.bat, %._crit_edge.loopexit.i ] ; 2 uses
  %i.baz = or disjoint i32 %.034.lcssa.i77, 7
  %i.bba = icmp slt i32 %i.baz, %i.a
  br i1 %i.bba, label %.lr.ph141.i, label %._crit_edge142.i

.lr.ph141.i:                                      ; preds = %._crit_edge.i
  %i.bbb = insertelement <8 x float> poison, float %i.axx, i64 0
  %i.bbc = shufflevector <8 x float> %i.bbb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bbd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bbc, <8 x float> splat (float f0x00800000))
  %i.bbe = bitcast <8 x float> %i.bbd to <8 x i32> ; 2 uses
  %i.bbf = lshr <8 x i32> %i.bbe, splat (i32 23)
  %i.bbg = and <8 x i32> %i.bbe, splat (i32 -2139095041)
  %i.bbh = or disjoint <8 x i32> %i.bbg, splat (i32 1056964608)
  %i.bbi = bitcast <8 x i32> %i.bbh to <8 x float> ; 3 uses
  %i.bbj = add nsw <8 x i32> %i.bbf, splat (i32 -127)
  %i.bbk = sitofp fast <8 x i32> %i.bbj to <8 x float> ; 2 uses
  %i.bbl = fadd fast <8 x float> %i.bbk, splat (float 1.000000e+00)
  %i.bbm = fcmp fast olt <8 x float> %i.bbi, splat (float f0x3F3504F3) ; 2 uses
  %i.bbn = select <8 x i1> %i.bbm, <8 x float> %i.bbi, <8 x float> zeroinitializer
  %i.bbo = fadd fast <8 x float> %i.bbi, splat (float -1.000000e+00)
  %i.bbp = select fast <8 x i1> %i.bbm, <8 x float> %i.bbk, <8 x float> %i.bbl ; 2 uses
  %i.bbq = fadd fast <8 x float> %i.bbo, %i.bbn   ; 12 uses
  %i.bbr = fmul fast <8 x float> %i.bbq, %i.bbq   ; 2 uses
  %i.bbs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bbq, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.bbt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bbs, <8 x float> nofpclass(nan inf) %i.bbq, <8 x float> splat (float f0x3DEF251A))
  %i.bbu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bbt, <8 x float> nofpclass(nan inf) %i.bbq, <8 x float> splat (float f0xBDFE5D4F))
  %i.bbv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bbu, <8 x float> nofpclass(nan inf) %i.bbq, <8 x float> splat (float f0x3E11E9BF))
  %i.bbw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bbv, <8 x float> nofpclass(nan inf) %i.bbq, <8 x float> splat (float f0xBE2AAE50))
  %i.bbx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bbw, <8 x float> nofpclass(nan inf) %i.bbq, <8 x float> splat (float f0x3E4CCEAC))
  %i.bby = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bbx, <8 x float> nofpclass(nan inf) %i.bbq, <8 x float> splat (float f0xBE7FFFFC))
  %i.bbz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bby, <8 x float> nofpclass(nan inf) %i.bbq, <8 x float> splat (float f0x3EAAAAAA))
  %i.bca = fmul fast <8 x float> %i.bbr, %i.bbq
  %i.bcb = fmul fast <8 x float> %i.bca, %i.bbz
  %i.bcc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bbp, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.bcb)
  %i.bcd = fneg fast <8 x float> %i.bbr
  %i.bce = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bcd, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.bcc)
  %i.bcf = fadd fast <8 x float> %i.bce, %i.bbq
  %i.bcg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bbp, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.bcf)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph141.i
  %.1139.i = phi ptr [ %.0.lcssa.i78, %.lr.ph141.i ], [ %i.bdp, %bb.aa ] ; 2 uses
  %.131138.i = phi ptr [ %.030.lcssa.i, %.lr.ph141.i ], [ %i.bdq, %bb.aa ] ; 2 uses
  %.135137.i = phi i32 [ %.034.lcssa.i77, %.lr.ph141.i ], [ %i.bdr, %bb.aa ]
  %i.bch = load <8 x i16>, ptr %.1139.i, align 1, !tbaa !60 ; 2 uses
  %i.bci = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bch, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bcj = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bch, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bck = shufflevector <8 x i16> %i.bci, <8 x i16> %i.bcj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bcl = bitcast <16 x i16> %i.bck to <8 x float>
  %i.bcm = fmul fast <8 x float> %i.bcg, %i.bcl
  %i.bcn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bcm, <8 x float> splat (float f0x42B0C0A5))
  %i.bco = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bcn, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bcp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bco, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.bcq = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bcp, i32 1) ; 2 uses
  %i.bcr = fcmp fast ogt <8 x float> %i.bcq, %i.bcp
  %i.bcs = select <8 x i1> %i.bcr, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.bct = fsub fast <8 x float> %i.bcq, %i.bcs   ; 2 uses
  %i.bcu = fneg fast <8 x float> %i.bct           ; 2 uses
  %i.bcv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bcu, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.bco)
  %i.bcw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.bcu, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.bcv) ; 8 uses
  %i.bcx = fmul fast <8 x float> %i.bcw, %i.bcw
  %i.bcy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bcw, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.bcz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bcy, <8 x float> nofpclass(nan inf) %i.bcw, <8 x float> splat (float f0x3C088908))
  %i.bda = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bcz, <8 x float> nofpclass(nan inf) %i.bcw, <8 x float> splat (float f0x3D2AA9C1))
  %i.bdb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bda, <8 x float> nofpclass(nan inf) %i.bcw, <8 x float> splat (float f0x3E2AAAAA))
  %i.bdc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bdb, <8 x float> nofpclass(nan inf) %i.bcw, <8 x float> splat (float 5.000000e-01))
  %i.bdd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bdc, <8 x float> nofpclass(nan inf) %i.bcx, <8 x float> nofpclass(nan inf) %i.bcw)
  %i.bde = fadd fast <8 x float> %i.bdd, splat (float 1.000000e+00)
  %i.bdf = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bct)
  %i.bdg = shl <8 x i32> %i.bdf, splat (i32 23)
  %i.bdh = add <8 x i32> %i.bdg, splat (i32 1065353216)
  %i.bdi = bitcast <8 x i32> %i.bdh to <8 x float>
  %i.bdj = fmul fast <8 x float> %i.bde, %i.bdi
  %i.bdk = bitcast <8 x float> %i.bdj to <8 x i32>
  %i.bdl = lshr <8 x i32> %i.bdk, splat (i32 16)  ; 2 uses
  %i.bdm = shufflevector <8 x i32> %i.bdl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bdn = shufflevector <8 x i32> %i.bdl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bdo = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bdm, <4 x i32> %i.bdn)
  store <8 x i16> %i.bdo, ptr %.131138.i, align 1, !tbaa !60
  %i.bdp = getelementptr inbounds nuw i8, ptr %.1139.i, i64 16 ; 2 uses
  %i.bdq = getelementptr inbounds nuw i8, ptr %.131138.i, i64 16 ; 2 uses
  %i.bdr = add nuw nsw i32 %.135137.i, 8          ; 3 uses
  %i.bds = or disjoint i32 %i.bdr, 7
  %i.bdt = icmp slt i32 %i.bds, %i.a
  br i1 %i.bdt, label %bb.aa, label %._crit_edge142.i, !llvm.loop !1204

._crit_edge142.i:                                 ; preds = %bb.aa, %._crit_edge.i
  %.135.lcssa.i79 = phi i32 [ %.034.lcssa.i77, %._crit_edge.i ], [ %i.bdr, %bb.aa ] ; 3 uses
  %.131.lcssa.i = phi ptr [ %.030.lcssa.i, %._crit_edge.i ], [ %i.bdq, %bb.aa ] ; 2 uses
  %.1.lcssa.i80 = phi ptr [ %.0.lcssa.i78, %._crit_edge.i ], [ %i.bdp, %bb.aa ] ; 2 uses
  %i.bdu = or disjoint i32 %.135.lcssa.i79, 3
  %i.bdv = icmp slt i32 %i.bdu, %i.a
  br i1 %i.bdv, label %.lr.ph150.i, label %.preheader.i81

.lr.ph150.i:                                      ; preds = %._crit_edge142.i
  %i.bdw = insertelement <4 x float> poison, float %i.axx, i64 0
  %i.bdx = shufflevector <4 x float> %i.bdw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bdy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bdx, <4 x float> splat (float f0x00800000))
  %i.bdz = bitcast <4 x float> %i.bdy to <4 x i32> ; 2 uses
  %i.bea = lshr <4 x i32> %i.bdz, splat (i32 23)
  %i.beb = and <4 x i32> %i.bdz, splat (i32 -2139095041)
  %i.bec = or disjoint <4 x i32> %i.beb, splat (i32 1056964608)
  %i.bed = bitcast <4 x i32> %i.bec to <4 x float> ; 3 uses
  %i.bee = add nsw <4 x i32> %i.bea, splat (i32 -127)
  %i.bef = sitofp fast <4 x i32> %i.bee to <4 x float> ; 2 uses
  %i.beg = fadd fast <4 x float> %i.bef, splat (float 1.000000e+00)
  %i.beh = fcmp fast olt <4 x float> %i.bed, splat (float f0x3F3504F3) ; 2 uses
  %i.bei = select <4 x i1> %i.beh, <4 x float> %i.bed, <4 x float> zeroinitializer
  %i.bej = fadd fast <4 x float> %i.bed, splat (float -1.000000e+00)
  %i.bek = select fast <4 x i1> %i.beh, <4 x float> %i.bef, <4 x float> %i.beg ; 2 uses
  %i.bel = fadd fast <4 x float> %i.bej, %i.bei   ; 12 uses
  %i.bem = fmul fast <4 x float> %i.bel, %i.bel   ; 2 uses
  %i.ben = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bel, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.beo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ben, <4 x float> nofpclass(nan inf) %i.bel, <4 x float> splat (float f0x3DEF251A))
  %i.bep = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.beo, <4 x float> nofpclass(nan inf) %i.bel, <4 x float> splat (float f0xBDFE5D4F))
  %i.beq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bep, <4 x float> nofpclass(nan inf) %i.bel, <4 x float> splat (float f0x3E11E9BF))
  %i.ber = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.beq, <4 x float> nofpclass(nan inf) %i.bel, <4 x float> splat (float f0xBE2AAE50))
  %i.bes = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ber, <4 x float> nofpclass(nan inf) %i.bel, <4 x float> splat (float f0x3E4CCEAC))
  %i.bet = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bes, <4 x float> nofpclass(nan inf) %i.bel, <4 x float> splat (float f0xBE7FFFFC))
  %i.beu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bet, <4 x float> nofpclass(nan inf) %i.bel, <4 x float> splat (float f0x3EAAAAAA))
  %i.bev = fmul fast <4 x float> %i.bem, %i.bel
  %i.bew = fmul fast <4 x float> %i.bev, %i.beu
  %i.bex = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bek, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.bew)
  %i.bey = fneg fast <4 x float> %i.bem
  %i.bez = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.bey, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.bex)
  %i.bfa = fadd fast <4 x float> %i.bez, %i.bel
  %i.bfb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bek, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.bfa)
  br label %bb.ab

.preheader.i81:                                   ; preds = %bb.ab, %._crit_edge142.i
  %.236.lcssa.i82 = phi i32 [ %.135.lcssa.i79, %._crit_edge142.i ], [ %i.bke, %bb.ab ] ; 5 uses
  %.232.lcssa.i = phi ptr [ %.131.lcssa.i, %._crit_edge142.i ], [ %i.bkd, %bb.ab ] ; 6 uses
  %.2.lcssa.i83 = phi ptr [ %.1.lcssa.i80, %._crit_edge142.i ], [ %i.bkc, %bb.ab ] ; 6 uses
  %i.bfc = icmp slt i32 %.236.lcssa.i82, %i.a
  br i1 %i.bfc, label %iter.check, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor14binary_op_rpowEEEvPKtS4_Pti.exit

iter.check:                                       ; preds = %.preheader.i81
  %.232.lcssa.i285 = ptrtoaddr ptr %.232.lcssa.i to i64
  %.2.lcssa.i83284 = ptrtoaddr ptr %.2.lcssa.i83 to i64
  %i.bfd = xor i32 %.236.lcssa.i82, -1
  %i.bfe = add i32 %i.a, %i.bfd                   ; 3 uses
  %i.bff = zext i32 %i.bfe to i64
  %i.bfg = add nuw nsw i64 %i.bff, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bfe, 7
  %i.bfh = sub i64 %.2.lcssa.i83284, %.232.lcssa.i285
  %diff.check = icmp ugt i64 %i.bfh, -64
  %or.cond424 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond424, label %.lr.ph157.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check286 = icmp ult i32 %i.bfe, 31
  br i1 %min.iters.check286, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bfi = and i64 %i.bfg, 24
  %n.vec = and i64 %i.bfg, 8589934560             ; 5 uses
  %i.bfj = shl nuw nsw i64 %n.vec, 1              ; 2 uses
  %i.bfk = getelementptr i8, ptr %.2.lcssa.i83, i64 %i.bfj
  %i.bfl = getelementptr i8, ptr %.232.lcssa.i, i64 %i.bfj
  %i.bfm = trunc i64 %n.vec to i32
  %i.bfn = add i32 %.236.lcssa.i82, %i.bfm
  %i.bfo = insertelement <16 x float> poison, float %i.axx, i64 0
  %i.bfp = shufflevector <16 x float> %i.bfo, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bfq = insertelement <8 x float> poison, float %i.axx, i64 0
  %i.bfr = shufflevector <8 x float> %i.bfq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bfs = insertelement <4 x float> poison, float %i.axx, i64 0
  %i.bft = shufflevector <4 x float> %i.bfs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bfu = insertelement <2 x float> poison, float %i.axx, i64 0
  %i.bfv = shufflevector <2 x float> %i.bfu, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bfw = shl i64 %index, 1                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.2.lcssa.i83, i64 %i.bfw
  %next.gep287 = getelementptr i8, ptr %.232.lcssa.i, i64 %i.bfw
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !56
  %i.bfx = zext <32 x i16> %wide.load to <32 x i32>
  %i.bfy = shl nuw <32 x i32> %i.bfx, splat (i32 16)
  %i.bfz = bitcast <32 x i32> %i.bfy to <32 x float> ; 6 uses
  %i.bga = extractelement <32 x float> %i.bfz, i64 0
  %i.bgb = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.axx, float %i.bga)
  %i.bgc = shufflevector <32 x float> %i.bfz, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.bgd = tail call fast <16 x float> @llvm.pow.v16f32(<16 x float> %i.bfp, <16 x float> %i.bgc)
  %i.bge = shufflevector <32 x float> %i.bfz, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.bgf = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.bfr, <8 x float> %i.bge)
  %i.bgg = shufflevector <32 x float> %i.bfz, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.bgh = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.bft, <4 x float> %i.bgg)
  %i.bgi = extractelement <32 x float> %i.bfz, i64 29
  %i.bgj = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.axx, float %i.bgi)
  %i.bgk = shufflevector <32 x float> %i.bfz, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.bgl = tail call fast <2 x float> @llvm.pow.v2f32(<2 x float> %i.bfv, <2 x float> %i.bgk)
  %i.bgm = insertelement <32 x float> poison, float %i.bgb, i64 0
  %i.bgn = shufflevector <16 x float> %i.bgd, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bgo = shufflevector <32 x float> %i.bgm, <32 x float> %i.bgn, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bgp = shufflevector <8 x float> %i.bgf, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bgq = shufflevector <32 x float> %i.bgo, <32 x float> %i.bgp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bgr = shufflevector <4 x float> %i.bgh, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bgs = shufflevector <32 x float> %i.bgq, <32 x float> %i.bgr, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.bgt = insertelement <32 x float> %i.bgs, float %i.bgj, i64 29
  %i.bgu = shufflevector <2 x float> %i.bgl, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bgv = shufflevector <32 x float> %i.bgt, <32 x float> %i.bgu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.bgw = bitcast <32 x float> %i.bgv to <32 x i32>
  %i.bgx = lshr <32 x i32> %i.bgw, splat (i32 16)
  %i.bgy = trunc nuw <32 x i32> %i.bgx to <32 x i16>
  store <32 x i16> %i.bgy, ptr %next.gep287, align 2, !tbaa !56
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bgz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bgz, label %middle.block, label %vector.body, !llvm.loop !1205

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bfg, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor14binary_op_rpowEEEvPKtS4_Pti.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bfi, 0
  br i1 %min.epilog.iters.check, label %.lr.ph157.i.preheader, label %vec.epilog.ph, !prof !64

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec288 = and i64 %i.bfg, 8589934584          ; 4 uses
  %i.bha = shl nuw nsw i64 %n.vec288, 1           ; 2 uses
  %i.bhb = getelementptr i8, ptr %.2.lcssa.i83, i64 %i.bha
  %i.bhc = getelementptr i8, ptr %.232.lcssa.i, i64 %i.bha
  %i.bhd = trunc i64 %n.vec288 to i32
  %i.bhe = add i32 %.236.lcssa.i82, %i.bhd
  %i.bhf = insertelement <4 x float> poison, float %i.axx, i64 0
  %i.bhg = shufflevector <4 x float> %i.bhf, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index289 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next293, %vec.epilog.vector.body ] ; 2 uses
  %i.bhh = shl i64 %index289, 1                   ; 2 uses
  %next.gep290 = getelementptr i8, ptr %.2.lcssa.i83, i64 %i.bhh
  %next.gep291 = getelementptr i8, ptr %.232.lcssa.i, i64 %i.bhh
  %wide.load292 = load <8 x i16>, ptr %next.gep290, align 2, !tbaa !56
  %i.bhi = zext <8 x i16> %wide.load292 to <8 x i32>
  %i.bhj = shl nuw <8 x i32> %i.bhi, splat (i32 16)
  %i.bhk = bitcast <8 x i32> %i.bhj to <8 x float> ; 5 uses
  %i.bhl = extractelement <8 x float> %i.bhk, i64 0
  %i.bhm = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.axx, float %i.bhl)
  %i.bhn = extractelement <8 x float> %i.bhk, i64 1
  %i.bho = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.axx, float %i.bhn)
  %i.bhp = extractelement <8 x float> %i.bhk, i64 2
  %i.bhq = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.axx, float %i.bhp)
  %i.bhr = shufflevector <8 x float> %i.bhk, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bhs = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.bhg, <4 x float> %i.bhr)
  %i.bht = extractelement <8 x float> %i.bhk, i64 7
  %i.bhu = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.axx, float %i.bht)
  %i.bhv = insertelement <8 x float> poison, float %i.bhm, i64 0
  %i.bhw = insertelement <8 x float> %i.bhv, float %i.bho, i64 1
  %i.bhx = insertelement <8 x float> %i.bhw, float %i.bhq, i64 2
  %i.bhy = shufflevector <4 x float> %i.bhs, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bhz = shufflevector <8 x float> %i.bhx, <8 x float> %i.bhy, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.bia = insertelement <8 x float> %i.bhz, float %i.bhu, i64 7
  %i.bib = bitcast <8 x float> %i.bia to <8 x i32>
  %i.bic = lshr <8 x i32> %i.bib, splat (i32 16)
  %i.bid = trunc nuw <8 x i32> %i.bic to <8 x i16>
  store <8 x i16> %i.bid, ptr %next.gep291, align 2, !tbaa !56
  %index.next293 = add nuw i64 %index289, 8       ; 2 uses
  %i.bie = icmp eq i64 %index.next293, %n.vec288
  br i1 %i.bie, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1206

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n294 = icmp eq i64 %i.bfg, %n.vec288
  br i1 %cmp.n294, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor14binary_op_rpowEEEvPKtS4_Pti.exit, label %.lr.ph157.i.preheader

.lr.ph157.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3156.i.ph = phi ptr [ %.2.lcssa.i83, %iter.check ], [ %i.bfk, %vec.epilog.iter.check ], [ %i.bhb, %vec.epilog.middle.block ] ; 3 uses
  %.333155.i.ph = phi ptr [ %.232.lcssa.i, %iter.check ], [ %i.bfl, %vec.epilog.iter.check ], [ %i.bhc, %vec.epilog.middle.block ] ; 3 uses
  %.337154.i.ph = phi i32 [ %.236.lcssa.i82, %iter.check ], [ %i.bfn, %vec.epilog.iter.check ], [ %i.bhe, %vec.epilog.middle.block ] ; 4 uses
  %i.bif = sub i32 %i.a, %.337154.i.ph
  %.neg = add i32 %.337154.i.ph, 1
  %xtraiter = and i32 %i.bif, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph157.i.prol.loopexit, label %.lr.ph157.i.prol

.lr.ph157.i.prol:                                 ; preds = %.lr.ph157.i.preheader
  %i.big = getelementptr inbounds nuw i8, ptr %.3156.i.ph, i64 2
  %i.bih = load i16, ptr %.3156.i.ph, align 2, !tbaa !56
  %i.bii = zext i16 %i.bih to i32
  %i.bij = shl nuw i32 %i.bii, 16
  %i.bik = bitcast i32 %i.bij to float
  %i.bil = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.axx, float %i.bik)
  %i.bim = bitcast float %i.bil to i32
  %i.bin = lshr i32 %i.bim, 16
  %i.bio = trunc nuw i32 %i.bin to i16
  %i.bip = getelementptr inbounds nuw i8, ptr %.333155.i.ph, i64 2
  store i16 %i.bio, ptr %.333155.i.ph, align 2, !tbaa !56
  %i.biq = add nuw nsw i32 %.337154.i.ph, 1
  br label %.lr.ph157.i.prol.loopexit

.lr.ph157.i.prol.loopexit:                        ; preds = %.lr.ph157.i.prol, %.lr.ph157.i.preheader
  %.3156.i.unr = phi ptr [ %.3156.i.ph, %.lr.ph157.i.preheader ], [ %i.big, %.lr.ph157.i.prol ]
  %.333155.i.unr = phi ptr [ %.333155.i.ph, %.lr.ph157.i.preheader ], [ %i.bip, %.lr.ph157.i.prol ]
  %.337154.i.unr = phi i32 [ %.337154.i.ph, %.lr.ph157.i.preheader ], [ %i.biq, %.lr.ph157.i.prol ]
  %i.bir = icmp eq i32 %i.a, %.neg
  br i1 %i.bir, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor14binary_op_rpowEEEvPKtS4_Pti.exit, label %.lr.ph157.i

bb.ab:                                            ; preds = %bb.ab, %.lr.ph150.i
  %.2148.i = phi ptr [ %.1.lcssa.i80, %.lr.ph150.i ], [ %i.bkc, %bb.ab ] ; 2 uses
  %.232147.i = phi ptr [ %.131.lcssa.i, %.lr.ph150.i ], [ %i.bkd, %bb.ab ] ; 2 uses
  %.236146.i = phi i32 [ %.135.lcssa.i79, %.lr.ph150.i ], [ %i.bke, %bb.ab ]
  %i.bis = load i64, ptr %.2148.i, align 1, !tbaa !60
  %i.bit = insertelement <2 x i64> poison, i64 %i.bis, i64 0
  %i.biu = bitcast <2 x i64> %i.bit to <8 x i16>
  %i.biv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.biu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.biw = bitcast <8 x i16> %i.biv to <4 x float>
  %i.bix = fmul fast <4 x float> %i.bfb, %i.biw
  %i.biy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bix, <4 x float> splat (float f0x42B0C0A5))
  %i.biz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.biy, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bja = fmul fast <4 x float> %i.biz, splat (float f0x3FB8AA3B)
  %i.bjb = fadd fast <4 x float> %i.bja, splat (float 5.000000e-01) ; 2 uses
  %i.bjc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bjb)
  %i.bjd = sitofp fast <4 x i32> %i.bjc to <4 x float> ; 2 uses
  %i.bje = fcmp fast olt <4 x float> %i.bjb, %i.bjd
  %i.bjf = select <4 x i1> %i.bje, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bjg = fsub fast <4 x float> %i.bjd, %i.bjf   ; 2 uses
  %i.bjh = fneg fast <4 x float> %i.bjg           ; 2 uses
  %i.bji = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.bjh, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.biz)
  %i.bjj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.bjh, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.bji) ; 8 uses
  %i.bjk = fmul fast <4 x float> %i.bjj, %i.bjj
  %i.bjl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjj, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.bjm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjl, <4 x float> nofpclass(nan inf) %i.bjj, <4 x float> splat (float f0x3C088908))
  %i.bjn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjm, <4 x float> nofpclass(nan inf) %i.bjj, <4 x float> splat (float f0x3D2AA9C1))
  %i.bjo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjn, <4 x float> nofpclass(nan inf) %i.bjj, <4 x float> splat (float f0x3E2AAAAA))
  %i.bjp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjo, <4 x float> nofpclass(nan inf) %i.bjj, <4 x float> splat (float 5.000000e-01))
  %i.bjq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjp, <4 x float> nofpclass(nan inf) %i.bjk, <4 x float> nofpclass(nan inf) %i.bjj)
  %i.bjr = fadd fast <4 x float> %i.bjq, splat (float 1.000000e+00)
  %i.bjs = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bjg)
  %i.bjt = shl <4 x i32> %i.bjs, splat (i32 23)
  %i.bju = add <4 x i32> %i.bjt, splat (i32 1065353216)
  %i.bjv = bitcast <4 x i32> %i.bju to <4 x float>
  %i.bjw = fmul fast <4 x float> %i.bjr, %i.bjv
  %i.bjx = bitcast <4 x float> %i.bjw to <4 x i32>
  %i.bjy = lshr <4 x i32> %i.bjx, splat (i32 16)
  %i.bjz = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bjy, <4 x i32> poison)
  %i.bka = bitcast <8 x i16> %i.bjz to <2 x i64>
  %i.bkb = extractelement <2 x i64> %i.bka, i64 0
  store i64 %i.bkb, ptr %.232147.i, align 1, !tbaa !60
  %i.bkc = getelementptr inbounds nuw i8, ptr %.2148.i, i64 8 ; 2 uses
  %i.bkd = getelementptr inbounds nuw i8, ptr %.232147.i, i64 8 ; 2 uses
  %i.bke = add nuw nsw i32 %.236146.i, 4          ; 3 uses
  %i.bkf = or disjoint i32 %i.bke, 3
  %i.bkg = icmp slt i32 %i.bkf, %i.a
  br i1 %i.bkg, label %bb.ab, label %.preheader.i81, !llvm.loop !1207

.lr.ph157.i:                                      ; preds = %.lr.ph157.i.prol.loopexit, %.lr.ph157.i
  %.3156.i = phi ptr [ %i.bkr, %.lr.ph157.i ], [ %.3156.i.unr, %.lr.ph157.i.prol.loopexit ] ; 3 uses
  %.333155.i = phi ptr [ %i.bla, %.lr.ph157.i ], [ %.333155.i.unr, %.lr.ph157.i.prol.loopexit ] ; 3 uses
  %.337154.i = phi i32 [ %i.blb, %.lr.ph157.i ], [ %.337154.i.unr, %.lr.ph157.i.prol.loopexit ]
  %i.bkh = getelementptr inbounds nuw i8, ptr %.3156.i, i64 2
  %i.bki = load i16, ptr %.3156.i, align 2, !tbaa !56
  %i.bkj = zext i16 %i.bki to i32
  %i.bkk = shl nuw i32 %i.bkj, 16
  %i.bkl = bitcast i32 %i.bkk to float
  %i.bkm = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.axx, float %i.bkl)
  %i.bkn = bitcast float %i.bkm to i32
  %i.bko = lshr i32 %i.bkn, 16
  %i.bkp = trunc nuw i32 %i.bko to i16
  %i.bkq = getelementptr inbounds nuw i8, ptr %.333155.i, i64 2
  store i16 %i.bkp, ptr %.333155.i, align 2, !tbaa !56
  %i.bkr = getelementptr inbounds nuw i8, ptr %.3156.i, i64 4
  %i.bks = load i16, ptr %i.bkh, align 2, !tbaa !56
  %i.bkt = zext i16 %i.bks to i32
  %i.bku = shl nuw i32 %i.bkt, 16
  %i.bkv = bitcast i32 %i.bku to float
  %i.bkw = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.axx, float %i.bkv)
  %i.bkx = bitcast float %i.bkw to i32
  %i.bky = lshr i32 %i.bkx, 16
  %i.bkz = trunc nuw i32 %i.bky to i16
  %i.bla = getelementptr inbounds nuw i8, ptr %.333155.i, i64 4
  store i16 %i.bkz, ptr %i.bkq, align 2, !tbaa !56
  %i.blb = add nuw nsw i32 %.337154.i, 2          ; 2 uses
  %exitcond.not.i84.1 = icmp eq i32 %i.blb, %i.a
  br i1 %exitcond.not.i84.1, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor14binary_op_rpowEEEvPKtS4_Pti.exit, label %.lr.ph157.i, !llvm.loop !1208

bb.ac:                                            ; preds = %bb.x
  %i.blc = icmp eq i32 %3, 1
  br i1 %i.blc, label %bb.ad, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor14binary_op_rpowEEEvPKtS4_Pti.exit

bb.ad:                                            ; preds = %bb.ac
  switch i32 %.sroa.speculated, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor14binary_op_rpowEEEvPKtS4_Pti.exit [
    i32 16, label %bb.ae
    i32 8, label %bb.af
    i32 4, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.bld = load <16 x i16>, ptr %0, align 1, !tbaa !60 ; 2 uses
  %i.ble = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bld, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.blf = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bld, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.blg = shufflevector <16 x i16> %i.ble, <16 x i16> %i.blf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.blh = shufflevector <16 x i16> %i.ble, <16 x i16> %i.blf, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bli = bitcast <16 x i16> %i.blg to <8 x i32>
  %i.blj = bitcast <16 x i16> %i.blh to <8 x i32>
  %i.blk = shufflevector <8 x i32> %i.bli, <8 x i32> %i.blj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bll = bitcast <16 x i32> %i.blk to <16 x float>
  br label %.lr.ph175.i

.lr.ph175.i:                                      ; preds = %bb.ae, %.lr.ph175.i
  %.028174.i = phi ptr [ %i.bob, %.lr.ph175.i ], [ %1, %bb.ae ] ; 2 uses
  %.030173.i = phi ptr [ %i.boc, %.lr.ph175.i ], [ %2, %bb.ae ] ; 2 uses
  %.033172.i = phi i32 [ %i.bod, %.lr.ph175.i ], [ 0, %bb.ae ]
  %i.blm = load i16, ptr %.028174.i, align 2, !tbaa !56
  %i.bln = zext i16 %i.blm to i32
  %i.blo = shl nuw i32 %i.bln, 16
  %i.blp = insertelement <16 x i32> poison, i32 %i.blo, i64 0
  %i.blq = bitcast <16 x i32> %i.blp to <16 x float>
  %i.blr = shufflevector <16 x float> %i.blq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.bls = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.blr, <16 x float> splat (float f0x00800000), i32 4)
  %i.blt = bitcast <16 x float> %i.bls to <16 x i32> ; 2 uses
  %i.blu = lshr <16 x i32> %i.blt, splat (i32 23)
  %i.blv = and <16 x i32> %i.blt, splat (i32 -2139095041)
  %i.blw = or disjoint <16 x i32> %i.blv, splat (i32 1056964608)
  %i.blx = bitcast <16 x i32> %i.blw to <16 x float> ; 3 uses
  %i.bly = add nsw <16 x i32> %i.blu, splat (i32 -127)
  %i.blz = sitofp fast <16 x i32> %i.bly to <16 x float> ; 2 uses
  %i.bma = fadd fast <16 x float> %i.blz, splat (float 1.000000e+00)
  %i.bmb = fcmp fast olt <16 x float> %i.blx, splat (float f0x3F3504F3) ; 2 uses
  %i.bmc = fadd fast <16 x float> %i.blx, splat (float -1.000000e+00)
  %i.bmd = select fast <16 x i1> %i.bmb, <16 x float> %i.blz, <16 x float> %i.bma ; 2 uses
  %i.bme = select fast <16 x i1> %i.bmb, <16 x float> %i.blx, <16 x float> zeroinitializer
  %i.bmf = fadd fast <16 x float> %i.bmc, %i.bme  ; 12 uses
  %i.bmg = fmul fast <16 x float> %i.bmf, %i.bmf  ; 2 uses
  %i.bmh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bmf, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.bmi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bmh, <16 x float> nofpclass(nan inf) %i.bmf, <16 x float> splat (float f0x3DEF251A))
  %i.bmj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bmi, <16 x float> nofpclass(nan inf) %i.bmf, <16 x float> splat (float f0xBDFE5D4F))
  %i.bmk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bmj, <16 x float> nofpclass(nan inf) %i.bmf, <16 x float> splat (float f0x3E11E9BF))
  %i.bml = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bmk, <16 x float> nofpclass(nan inf) %i.bmf, <16 x float> splat (float f0xBE2AAE50))
  %i.bmm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bml, <16 x float> nofpclass(nan inf) %i.bmf, <16 x float> splat (float f0x3E4CCEAC))
  %i.bmn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bmm, <16 x float> nofpclass(nan inf) %i.bmf, <16 x float> splat (float f0xBE7FFFFC))
  %i.bmo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bmn, <16 x float> nofpclass(nan inf) %i.bmf, <16 x float> splat (float f0x3EAAAAAA))
  %i.bmp = fmul fast <16 x float> %i.bmg, %i.bmf
  %i.bmq = fmul fast <16 x float> %i.bmp, %i.bmo
  %i.bmr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bmd, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.bmq)
  %i.bms = fneg fast <16 x float> %i.bmg
  %i.bmt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bms, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.bmr)
  %i.bmu = fadd fast <16 x float> %i.bmt, %i.bmf
  %i.bmv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bmd, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.bmu)
  %i.bmw = fmul fast <16 x float> %i.bmv, %i.bll
  %i.bmx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.bmw, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.bmy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bmx, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.bmz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bmy, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.bna = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bmz, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.bnb = fcmp fast ogt <16 x float> %i.bna, %i.bmz
  %i.bnc = fadd fast <16 x float> %i.bna, splat (float -1.000000e+00)
  %i.bnd = select fast <16 x i1> %i.bnb, <16 x float> %i.bnc, <16 x float> %i.bna ; 2 uses
  %i.bne = fneg fast <16 x float> %i.bnd          ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN4ncnnL22binary_op_vector_bf16sINS_27BinaryOp_x86_avx512_functor15binary_op_atan2EEEvPKtS4_Ptiiii:bb.a
  %i.mh = icmp slt i32 %i.mg, %i.a
  br i1 %i.mh, label %.lr.ph149.i, label %.preheader139.i

.lr.ph149.i:                                      ; preds = %.preheader140.i
  %i.mi = fcmp fast ueq <8 x float> %i.lv, zeroinitializer ; 2 uses
  %i.mj = fcmp fast olt <8 x float> %i.lv, zeroinitializer
  %i.mk = bitcast <8 x float> %i.lv to <8 x i32>
  %isneg.inv136.i = icmp slt <8 x i32> %i.mk, zeroinitializer
  %i.ml = select <8 x i1> %isneg.inv136.i, <8 x i32> splat (i32 1078525952), <8 x i32> zeroinitializer
  %i.mm = fdiv fast <8 x float> splat (float 1.000000e+00), %i.lv
  br label %bb.l

bb.k:                                             ; preds = %bb.k, %.lr.ph.i39
  %.0143.i = phi ptr [ %0, %.lr.ph.i39 ], [ %i.oj, %bb.k ] ; 2 uses
  %.035142.i = phi ptr [ %2, %.lr.ph.i39 ], [ %i.ok, %bb.k ] ; 2 uses
  %.039141.i = phi i32 [ 0, %.lr.ph.i39 ], [ %i.ol, %bb.k ]
  %i.mn = load <16 x i16>, ptr %.0143.i, align 1, !tbaa !60 ; 2 uses
  %i.mo = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.mn, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.mp = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.mn, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.mq = shufflevector <16 x i16> %i.mo, <16 x i16> %i.mp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.mr = shufflevector <16 x i16> %i.mo, <16 x i16> %i.mp, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ms = bitcast <16 x i16> %i.mq to <8 x i32>
  %i.mt = bitcast <16 x i16> %i.mr to <8 x i32>
  %i.mu = shufflevector <8 x i32> %i.ms, <8 x i32> %i.mt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mv = bitcast <16 x i32> %i.mu to <16 x float> ; 4 uses
  %i.mw = fcmp fast one <16 x float> %i.mv, zeroinitializer
  %i.mx = fcmp fast olt <16 x float> %i.mv, zeroinitializer
  %i.my = select fast <16 x i1> %i.mx, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.mz = select fast <16 x i1> %i.ma, <16 x float> %i.my, <16 x float> zeroinitializer
  %i.na = fmul fast <16 x float> %i.mv, %i.me     ; 2 uses
  %i.nb = bitcast <16 x float> %i.na to <16 x i32>
  %i.nc = and <16 x i32> %i.nb, splat (i32 -2147483648)
  %i.nd = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.na) ; 3 uses
  %i.ne = fcmp fast ogt <16 x float> %i.nd, splat (float 1.000000e+00) ; 2 uses
  %i.nf = select fast <16 x i1> %i.ne, <16 x float> splat (float -1.000000e+00), <16 x float> %i.nd
  %i.ng = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.nd, <16 x float> splat (float 1.000000e+00))
  %i.nh = fdiv fast <16 x float> %i.nf, %i.ng     ; 3 uses
  %i.ni = fmul fast <16 x float> %i.nh, %i.nh     ; 3 uses
  %i.nj = fmul fast <16 x float> %i.ni, %i.ni     ; 7 uses
  %i.nk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nj, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.nl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nj, <16 x float> nofpclass(nan inf) %i.nk, <16 x float> splat (float f0xBE117200))
  %i.nm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nj, <16 x float> nofpclass(nan inf) %i.nl, <16 x float> splat (float f0xBEAAAA53))
  %i.nn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nj, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.no = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nj, <16 x float> nofpclass(nan inf) %i.nn, <16 x float> splat (float f0x3DD9ED24))
  %i.np = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nj, <16 x float> nofpclass(nan inf) %i.no, <16 x float> splat (float f0x3E4CB974))
  %i.nq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nj, <16 x float> nofpclass(nan inf) %i.np, <16 x float> splat (float 1.000000e+00))
  %i.nr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ni, <16 x float> nofpclass(nan inf) %i.nm, <16 x float> nofpclass(nan inf) %i.nq)
  %i.ns = fmul fast <16 x float> %i.nr, %i.nh
  %i.nt = select fast <16 x i1> %i.ne, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.nu = fadd fast <16 x float> %i.ns, %i.nt
  %i.nv = bitcast <16 x float> %i.nu to <16 x i32>
  %i.nw = or <16 x i32> %i.nc, %i.nv
  %i.nx = bitcast <16 x i32> %i.nw to <16 x float>
  %i.ny = fadd fast <16 x float> %i.mz, %i.nx
  %i.nz = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.mv)
  %i.oa = select <16 x i1> %i.lz, <16 x float> %i.ny, <16 x float> %i.nz
  %i.ob = select <16 x i1> %i.mw, <16 x float> %i.oa, <16 x float> %i.md
  %i.oc = bitcast <16 x float> %i.ob to <16 x i32>
  %i.od = lshr <16 x i32> %i.oc, splat (i32 16)   ; 2 uses
  %i.oe = shufflevector <16 x i32> %i.od, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.of = shufflevector <16 x i32> %i.od, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.og = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.oe, <8 x i32> %i.of)
  %i.oh = bitcast <16 x i16> %i.og to <4 x i64>
  %i.oi = shufflevector <4 x i64> %i.oh, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.oi, ptr %.035142.i, align 1, !tbaa !60
  %i.oj = getelementptr inbounds nuw i8, ptr %.0143.i, i64 32 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.035142.i, i64 32 ; 2 uses
  %i.ol = add nuw nsw i32 %.039141.i, 16          ; 2 uses
  %i.om = or disjoint i32 %i.ol, 15
  %i.on = icmp slt i32 %i.om, %i.a
  br i1 %i.on, label %bb.k, label %.preheader140.loopexit.i, !llvm.loop !1218

.preheader139.i:                                  ; preds = %bb.l, %.preheader140.i
  %.140.lcssa.i = phi i32 [ %.039.lcssa.i, %.preheader140.i ], [ %i.qr, %bb.l ] ; 3 uses
  %.136.lcssa.i = phi ptr [ %.035.lcssa.i, %.preheader140.i ], [ %i.qq, %bb.l ] ; 2 uses
  %.1.lcssa.i35 = phi ptr [ %.0.lcssa.i34, %.preheader140.i ], [ %i.qp, %bb.l ] ; 2 uses
  %i.oo = or disjoint i32 %.140.lcssa.i, 3
  %i.op = icmp slt i32 %i.oo, %i.a
  br i1 %i.op, label %.lr.ph156.i, label %.preheader.i36

.lr.ph156.i:                                      ; preds = %.preheader139.i
  %i.oq = fcmp fast oeq <4 x float> %i.lw, zeroinitializer ; 2 uses
  %i.or = fcmp fast olt <4 x float> %i.lw, zeroinitializer
  %i.os = bitcast <4 x float> %i.lw to <4 x i32>
  %isneg.inv.i = icmp slt <4 x i32> %i.os, zeroinitializer
  %i.ot = select <4 x i1> %isneg.inv.i, <4 x i32> splat (i32 1078525952), <4 x i32> zeroinitializer
  %i.ou = fdiv fast <4 x float> splat (float 1.000000e+00), %i.lw
  br label %bb.m

bb.l:                                             ; preds = %bb.l, %.lr.ph149.i
  %.1148.i = phi ptr [ %.0.lcssa.i34, %.lr.ph149.i ], [ %i.qp, %bb.l ] ; 2 uses
  %.136147.i = phi ptr [ %.035.lcssa.i, %.lr.ph149.i ], [ %i.qq, %bb.l ] ; 2 uses
  %.140146.i = phi i32 [ %.039.lcssa.i, %.lr.ph149.i ], [ %i.qr, %bb.l ]
  %i.ov = load <8 x i16>, ptr %.1148.i, align 1, !tbaa !60 ; 2 uses
  %i.ow = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ov, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ox = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ov, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.oy = shufflevector <8 x i16> %i.ow, <8 x i16> %i.ox, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.oz = bitcast <16 x i16> %i.oy to <8 x float> ; 3 uses
  %i.pa = fcmp fast ueq <8 x float> %i.oz, zeroinitializer ; 2 uses
  %.not138.i = or <8 x i1> %i.mi, %i.pa
  %i.pb = fcmp fast olt <8 x float> %i.oz, zeroinitializer
  %i.pc = select <8 x i1> %i.pb, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.pd = select <8 x i1> %i.mj, <8 x float> %i.pc, <8 x float> zeroinitializer
  %i.pe = fmul fast <8 x float> %i.oz, %i.mm      ; 2 uses
  %i.pf = bitcast <8 x float> %i.pe to <8 x i32>
  %i.pg = and <8 x i32> %i.pf, splat (i32 -2147483648)
  %i.ph = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.pe) ; 3 uses
  %i.pi = fcmp fast ogt <8 x float> %i.ph, splat (float 1.000000e+00) ; 2 uses
  %i.pj = select <8 x i1> %i.pi, <8 x float> splat (float -1.000000e+00), <8 x float> %i.ph
  %i.pk = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ph, <8 x float> splat (float 1.000000e+00))
  %i.pl = fdiv fast <8 x float> %i.pj, %i.pk      ; 3 uses
  %i.pm = fmul fast <8 x float> %i.pl, %i.pl      ; 3 uses
  %i.pn = fmul fast <8 x float> %i.pm, %i.pm      ; 7 uses
  %i.po = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pn, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.pp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pn, <8 x float> nofpclass(nan inf) %i.po, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.pq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pn, <8 x float> nofpclass(nan inf) %i.pp, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.pr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pn, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.ps = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pn, <8 x float> nofpclass(nan inf) %i.pr, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.pt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pn, <8 x float> nofpclass(nan inf) %i.ps, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.pu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pn, <8 x float> nofpclass(nan inf) %i.pt, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.pv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pm, <8 x float> nofpclass(nan inf) %i.pq, <8 x float> nofpclass(nan inf) %i.pu)
  %i.pw = fmul fast <8 x float> %i.pv, %i.pl
  %i.px = select <8 x i1> %i.pi, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.py = fadd fast <8 x float> %i.pw, %i.px
  %i.pz = bitcast <8 x float> %i.py to <8 x i32>
  %i.qa = or <8 x i32> %i.pg, %i.pz
  %i.qb = bitcast <8 x i32> %i.qa to <8 x float>
  %i.qc = fadd fast <8 x float> %i.pd, %i.qb
  %i.qd = bitcast <16 x i16> %i.oy to <8 x i32>
  %i.qe = and <8 x i32> %i.qd, splat (i32 -2147483648)
  %i.qf = or disjoint <8 x i32> %i.qe, splat (i32 1070137344)
  %i.qg = bitcast <8 x float> %i.qc to <8 x i32>
  %i.qh = select <8 x i1> %.not138.i, <8 x i32> zeroinitializer, <8 x i32> %i.qg
  %i.qi = select <8 x i1> %i.mi, <8 x i32> %i.qf, <8 x i32> zeroinitializer
  %i.qj = select <8 x i1> %i.pa, <8 x i32> %i.ml, <8 x i32> %i.qi
  %i.qk = or <8 x i32> %i.qh, %i.qj
  %i.ql = lshr <8 x i32> %i.qk, splat (i32 16)    ; 2 uses
  %i.qm = shufflevector <8 x i32> %i.ql, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.qn = shufflevector <8 x i32> %i.ql, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.qo = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.qm, <4 x i32> %i.qn)
  store <8 x i16> %i.qo, ptr %.136147.i, align 1, !tbaa !60
  %i.qp = getelementptr inbounds nuw i8, ptr %.1148.i, i64 16 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.136147.i, i64 16 ; 2 uses
  %i.qr = add nuw nsw i32 %.140146.i, 8           ; 3 uses
  %i.qs = or disjoint i32 %i.qr, 7
  %i.qt = icmp slt i32 %i.qs, %i.a
  br i1 %i.qt, label %bb.l, label %.preheader139.i, !llvm.loop !1219

.preheader.i36:                                   ; preds = %bb.m, %.preheader139.i
  %.241.lcssa.i = phi i32 [ %.140.lcssa.i, %.preheader139.i ], [ %i.wg, %bb.m ] ; 5 uses
  %.237.lcssa.i = phi ptr [ %.136.lcssa.i, %.preheader139.i ], [ %i.wf, %bb.m ] ; 6 uses
  %.2.lcssa.i37 = phi ptr [ %.1.lcssa.i35, %.preheader139.i ], [ %i.we, %bb.m ] ; 6 uses
  %i.qu = icmp slt i32 %.241.lcssa.i, %i.a
  br i1 %i.qu, label %iter.check344, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor15binary_op_atan2EEEvPKtS4_Pti.exit

iter.check344:                                    ; preds = %.preheader.i36
  %.237.lcssa.i328 = ptrtoaddr ptr %.237.lcssa.i to i64
  %.2.lcssa.i37327 = ptrtoaddr ptr %.2.lcssa.i37 to i64
  %i.qv = xor i32 %.241.lcssa.i, -1
  %i.qw = add i32 %i.a, %i.qv                     ; 3 uses
  %i.qx = zext i32 %i.qw to i64
  %i.qy = add nuw nsw i64 %i.qx, 1                ; 5 uses
  %min.iters.check329 = icmp ult i32 %i.qw, 7
  %i.qz = sub i64 %.2.lcssa.i37327, %.237.lcssa.i328
  %diff.check331 = icmp ugt i64 %i.qz, -64
  %or.cond = select i1 %min.iters.check329, i1 true, i1 %diff.check331
  br i1 %or.cond, label %.lr.ph163.i.preheader, label %vector.main.loop.iter.check332

vector.main.loop.iter.check332:                   ; preds = %iter.check344
  %min.iters.check333 = icmp ult i32 %i.qw, 31
  br i1 %min.iters.check333, label %vec.epilog.ph348, label %vector.ph334

vector.ph334:                                     ; preds = %vector.main.loop.iter.check332
  %i.ra = and i64 %i.qy, 24
  %n.vec335 = and i64 %i.qy, 8589934560           ; 5 uses
  %i.rb = shl nuw nsw i64 %n.vec335, 1            ; 2 uses
  %i.rc = getelementptr i8, ptr %.2.lcssa.i37, i64 %i.rb
  %i.rd = getelementptr i8, ptr %.237.lcssa.i, i64 %i.rb
  %i.re = trunc i64 %n.vec335 to i32
  %i.rf = add i32 %.241.lcssa.i, %i.re
  %i.rg = insertelement <16 x float> poison, float %i.kr, i64 0
  %i.rh = shufflevector <16 x float> %i.rg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ri = insertelement <8 x float> poison, float %i.kr, i64 0
  %i.rj = shufflevector <8 x float> %i.ri, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rk = insertelement <4 x float> poison, float %i.kr, i64 0
  %i.rl = shufflevector <4 x float> %i.rk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rm = insertelement <2 x float> poison, float %i.kr, i64 0
  %i.rn = shufflevector <2 x float> %i.rm, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body336

vector.body336:                                   ; preds = %vector.ph334, %vector.body336
  %index337 = phi i64 [ 0, %vector.ph334 ], [ %index.next341, %vector.body336 ] ; 2 uses
  %i.ro = shl i64 %index337, 1                    ; 2 uses
  %next.gep338 = getelementptr i8, ptr %.2.lcssa.i37, i64 %i.ro
  %next.gep339 = getelementptr i8, ptr %.237.lcssa.i, i64 %i.ro
  %wide.load340 = load <32 x i16>, ptr %next.gep338, align 2, !tbaa !56
  %i.rp = zext <32 x i16> %wide.load340 to <32 x i32>
  %i.rq = shl nuw <32 x i32> %i.rp, splat (i32 16)
  %i.rr = bitcast <32 x i32> %i.rq to <32 x float> ; 6 uses
  %i.rs = extractelement <32 x float> %i.rr, i64 0
  %i.rt = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rs, float %i.kr)
  %i.ru = shufflevector <32 x float> %i.rr, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.rv = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.ru, <16 x float> %i.rh)
  %i.rw = shufflevector <32 x float> %i.rr, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.rx = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.rw, <8 x float> %i.rj)
  %i.ry = shufflevector <32 x float> %i.rr, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.rz = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.ry, <4 x float> %i.rl)
  %i.sa = extractelement <32 x float> %i.rr, i64 29
  %i.sb = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.sa, float %i.kr)
  %i.sc = shufflevector <32 x float> %i.rr, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.sd = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.sc, <2 x float> %i.rn)
  %i.se = insertelement <32 x float> poison, float %i.rt, i64 0
  %i.sf = shufflevector <16 x float> %i.rv, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sg = shufflevector <32 x float> %i.se, <32 x float> %i.sf, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sh = shufflevector <8 x float> %i.rx, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.si = shufflevector <32 x float> %i.sg, <32 x float> %i.sh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sj = shufflevector <4 x float> %i.rz, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sk = shufflevector <32 x float> %i.si, <32 x float> %i.sj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.sl = insertelement <32 x float> %i.sk, float %i.sb, i64 29
  %i.sm = shufflevector <2 x float> %i.sd, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sn = shufflevector <32 x float> %i.sl, <32 x float> %i.sm, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.so = bitcast <32 x float> %i.sn to <32 x i32>
  %i.sp = lshr <32 x i32> %i.so, splat (i32 16)
  %i.sq = trunc nuw <32 x i32> %i.sp to <32 x i16>
  store <32 x i16> %i.sq, ptr %next.gep339, align 2, !tbaa !56
  %index.next341 = add nuw i64 %index337, 32      ; 2 uses
  %i.sr = icmp eq i64 %index.next341, %n.vec335
  br i1 %i.sr, label %middle.block342, label %vector.body336, !llvm.loop !1220

middle.block342:                                  ; preds = %vector.body336
  %cmp.n343 = icmp eq i64 %i.qy, %n.vec335
  br i1 %cmp.n343, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor15binary_op_atan2EEEvPKtS4_Pti.exit, label %vec.epilog.iter.check345

vec.epilog.iter.check345:                         ; preds = %middle.block342
  %min.epilog.iters.check347 = icmp eq i64 %i.ra, 0
  br i1 %min.epilog.iters.check347, label %.lr.ph163.i.preheader, label %vec.epilog.ph348, !prof !64

vec.epilog.ph348:                                 ; preds = %vector.main.loop.iter.check332, %vec.epilog.iter.check345
  %vec.epilog.resume.val349 = phi i64 [ %n.vec335, %vec.epilog.iter.check345 ], [ 0, %vector.main.loop.iter.check332 ]
  %n.vec350 = and i64 %i.qy, 8589934584           ; 4 uses
  %i.ss = shl nuw nsw i64 %n.vec350, 1            ; 2 uses
  %i.st = getelementptr i8, ptr %.2.lcssa.i37, i64 %i.ss
  %i.su = getelementptr i8, ptr %.237.lcssa.i, i64 %i.ss
  %i.sv = trunc i64 %n.vec350 to i32
  %i.sw = add i32 %.241.lcssa.i, %i.sv
  %i.sx = insertelement <4 x float> poison, float %i.kr, i64 0
  %i.sy = shufflevector <4 x float> %i.sx, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body351

vec.epilog.vector.body351:                        ; preds = %vec.epilog.vector.body351, %vec.epilog.ph348
  %index352 = phi i64 [ %vec.epilog.resume.val349, %vec.epilog.ph348 ], [ %index.next356, %vec.epilog.vector.body351 ] ; 2 uses
  %i.sz = shl i64 %index352, 1                    ; 2 uses
  %next.gep353 = getelementptr i8, ptr %.2.lcssa.i37, i64 %i.sz
  %next.gep354 = getelementptr i8, ptr %.237.lcssa.i, i64 %i.sz
  %wide.load355 = load <8 x i16>, ptr %next.gep353, align 2, !tbaa !56
  %i.ta = zext <8 x i16> %wide.load355 to <8 x i32>
  %i.tb = shl nuw <8 x i32> %i.ta, splat (i32 16)
  %i.tc = bitcast <8 x i32> %i.tb to <8 x float>  ; 5 uses
  %i.td = extractelement <8 x float> %i.tc, i64 0
  %i.te = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.td, float %i.kr)
  %i.tf = extractelement <8 x float> %i.tc, i64 1
  %i.tg = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.tf, float %i.kr)
  %i.th = extractelement <8 x float> %i.tc, i64 2
  %i.ti = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.th, float %i.kr)
  %i.tj = shufflevector <8 x float> %i.tc, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.tk = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.tj, <4 x float> %i.sy)
  %i.tl = extractelement <8 x float> %i.tc, i64 7
  %i.tm = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.tl, float %i.kr)
  %i.tn = insertelement <8 x float> poison, float %i.te, i64 0
  %i.to = insertelement <8 x float> %i.tn, float %i.tg, i64 1
  %i.tp = insertelement <8 x float> %i.to, float %i.ti, i64 2
  %i.tq = shufflevector <4 x float> %i.tk, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tr = shufflevector <8 x float> %i.tp, <8 x float> %i.tq, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.ts = insertelement <8 x float> %i.tr, float %i.tm, i64 7
  %i.tt = bitcast <8 x float> %i.ts to <8 x i32>
  %i.tu = lshr <8 x i32> %i.tt, splat (i32 16)
  %i.tv = trunc nuw <8 x i32> %i.tu to <8 x i16>
  store <8 x i16> %i.tv, ptr %next.gep354, align 2, !tbaa !56
  %index.next356 = add nuw i64 %index352, 8       ; 2 uses
  %i.tw = icmp eq i64 %index.next356, %n.vec350
  br i1 %i.tw, label %vec.epilog.middle.block357, label %vec.epilog.vector.body351, !llvm.loop !1221

vec.epilog.middle.block357:                       ; preds = %vec.epilog.vector.body351
  %cmp.n358 = icmp eq i64 %i.qy, %n.vec350
  br i1 %cmp.n358, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor15binary_op_atan2EEEvPKtS4_Pti.exit, label %.lr.ph163.i.preheader

.lr.ph163.i.preheader:                            ; preds = %iter.check344, %vec.epilog.iter.check345, %vec.epilog.middle.block357
  %.3162.i.ph = phi ptr [ %.2.lcssa.i37, %iter.check344 ], [ %i.rc, %vec.epilog.iter.check345 ], [ %i.st, %vec.epilog.middle.block357 ] ; 3 uses
  %.338161.i.ph = phi ptr [ %.237.lcssa.i, %iter.check344 ], [ %i.rd, %vec.epilog.iter.check345 ], [ %i.su, %vec.epilog.middle.block357 ] ; 3 uses
  %.342160.i.ph = phi i32 [ %.241.lcssa.i, %iter.check344 ], [ %i.rf, %vec.epilog.iter.check345 ], [ %i.sw, %vec.epilog.middle.block357 ] ; 4 uses
  %i.tx = sub i32 %i.a, %.342160.i.ph
  %.neg489 = add i32 %.342160.i.ph, 1
  %xtraiter484 = and i32 %i.tx, 1
  %lcmp.mod485.not = icmp eq i32 %xtraiter484, 0
  br i1 %lcmp.mod485.not, label %.lr.ph163.i.prol.loopexit, label %.lr.ph163.i.prol

.lr.ph163.i.prol:                                 ; preds = %.lr.ph163.i.preheader
  %i.ty = getelementptr inbounds nuw i8, ptr %.3162.i.ph, i64 2
  %i.tz = load i16, ptr %.3162.i.ph, align 2, !tbaa !56
  %i.ua = zext i16 %i.tz to i32
  %i.ub = shl nuw i32 %i.ua, 16
  %i.uc = bitcast i32 %i.ub to float
  %i.ud = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.uc, float %i.kr)
  %i.ue = bitcast float %i.ud to i32
  %i.uf = lshr i32 %i.ue, 16
  %i.ug = trunc nuw i32 %i.uf to i16
  %i.uh = getelementptr inbounds nuw i8, ptr %.338161.i.ph, i64 2
  store i16 %i.ug, ptr %.338161.i.ph, align 2, !tbaa !56
  %i.ui = add nuw nsw i32 %.342160.i.ph, 1
  br label %.lr.ph163.i.prol.loopexit

.lr.ph163.i.prol.loopexit:                        ; preds = %.lr.ph163.i.prol, %.lr.ph163.i.preheader
  %.3162.i.unr = phi ptr [ %.3162.i.ph, %.lr.ph163.i.preheader ], [ %i.ty, %.lr.ph163.i.prol ]
  %.338161.i.unr = phi ptr [ %.338161.i.ph, %.lr.ph163.i.preheader ], [ %i.uh, %.lr.ph163.i.prol ]
  %.342160.i.unr = phi i32 [ %.342160.i.ph, %.lr.ph163.i.preheader ], [ %i.ui, %.lr.ph163.i.prol ]
  %i.uj = icmp eq i32 %i.a, %.neg489
  br i1 %i.uj, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor15binary_op_atan2EEEvPKtS4_Pti.exit, label %.lr.ph163.i

bb.m:                                             ; preds = %bb.m, %.lr.ph156.i
  %.2155.i = phi ptr [ %.1.lcssa.i35, %.lr.ph156.i ], [ %i.we, %bb.m ] ; 2 uses
  %.237154.i = phi ptr [ %.136.lcssa.i, %.lr.ph156.i ], [ %i.wf, %bb.m ] ; 2 uses
  %.241153.i = phi i32 [ %.140.lcssa.i, %.lr.ph156.i ], [ %i.wg, %bb.m ]
  %i.uk = load i64, ptr %.2155.i, align 1, !tbaa !60
  %i.ul = insertelement <2 x i64> poison, i64 %i.uk, i64 0
  %i.um = bitcast <2 x i64> %i.ul to <8 x i16>
  %i.un = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.um, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.uo = bitcast <8 x i16> %i.un to <4 x float>  ; 3 uses
  %i.up = fcmp fast oeq <4 x float> %i.uo, zeroinitializer ; 2 uses
  %.not135.i = or <4 x i1> %i.oq, %i.up
  %i.uq = fcmp fast olt <4 x float> %i.uo, zeroinitializer
  %i.ur = select <4 x i1> %i.uq, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.us = select <4 x i1> %i.or, <4 x float> %i.ur, <4 x float> zeroinitializer
  %i.ut = fmul fast <4 x float> %i.uo, %i.ou      ; 2 uses
  %i.uu = bitcast <4 x float> %i.ut to <4 x i32>
  %i.uv = and <4 x i32> %i.uu, splat (i32 -2147483648)
  %i.uw = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ut) ; 3 uses
  %i.ux = fcmp fast ogt <4 x float> %i.uw, splat (float 1.000000e+00) ; 2 uses
  %i.uy = select <4 x i1> %i.ux, <4 x float> splat (float -1.000000e+00), <4 x float> %i.uw
  %i.uz = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.uw, <4 x float> splat (float 1.000000e+00))
  %i.va = fdiv fast <4 x float> %i.uy, %i.uz      ; 3 uses
  %i.vb = fmul fast <4 x float> %i.va, %i.va      ; 3 uses
  %i.vc = fmul fast <4 x float> %i.vb, %i.vb      ; 7 uses
  %i.vd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.vc, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.ve = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.vc, <4 x float> nofpclass(nan inf) %i.vd, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.vf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.vc, <4 x float> nofpclass(nan inf) %i.ve, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.vg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.vc, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.vh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.vc, <4 x float> nofpclass(nan inf) %i.vg, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.vi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.vc, <4 x float> nofpclass(nan inf) %i.vh, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.vj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.vc, <4 x float> nofpclass(nan inf) %i.vi, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.vk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.vb, <4 x float> nofpclass(nan inf) %i.vf, <4 x float> nofpclass(nan inf) %i.vj)
  %i.vl = fmul fast <4 x float> %i.vk, %i.va
  %i.vm = select <4 x i1> %i.ux, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.vn = fadd fast <4 x float> %i.vl, %i.vm
  %i.vo = bitcast <4 x float> %i.vn to <4 x i32>
  %i.vp = or <4 x i32> %i.uv, %i.vo
  %i.vq = bitcast <4 x i32> %i.vp to <4 x float>
  %i.vr = fadd fast <4 x float> %i.us, %i.vq
  %i.vs = bitcast <8 x i16> %i.un to <4 x i32>
  %i.vt = and <4 x i32> %i.vs, splat (i32 -2147483648)
  %i.vu = or disjoint <4 x i32> %i.vt, splat (i32 1070137344)
  %i.vv = bitcast <4 x float> %i.vr to <4 x i32>
  %i.vw = select <4 x i1> %.not135.i, <4 x i32> zeroinitializer, <4 x i32> %i.vv
  %i.vx = select <4 x i1> %i.oq, <4 x i32> %i.vu, <4 x i32> zeroinitializer
  %i.vy = select <4 x i1> %i.up, <4 x i32> %i.ot, <4 x i32> %i.vx
  %i.vz = or <4 x i32> %i.vw, %i.vy
  %i.wa = lshr <4 x i32> %i.vz, splat (i32 16)
  %i.wb = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.wa, <4 x i32> poison)
  %i.wc = bitcast <8 x i16> %i.wb to <2 x i64>
  %i.wd = extractelement <2 x i64> %i.wc, i64 0
  store i64 %i.wd, ptr %.237154.i, align 1, !tbaa !60
  %i.we = getelementptr inbounds nuw i8, ptr %.2155.i, i64 8 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.237154.i, i64 8 ; 2 uses
  %i.wg = add nuw nsw i32 %.241153.i, 4           ; 3 uses
  %i.wh = or disjoint i32 %i.wg, 3
  %i.wi = icmp slt i32 %i.wh, %i.a
  br i1 %i.wi, label %bb.m, label %.preheader.i36, !llvm.loop !1222

.lr.ph163.i:                                      ; preds = %.lr.ph163.i.prol.loopexit, %.lr.ph163.i
  %.3162.i = phi ptr [ %i.wt, %.lr.ph163.i ], [ %.3162.i.unr, %.lr.ph163.i.prol.loopexit ] ; 3 uses
  %.338161.i = phi ptr [ %i.xc, %.lr.ph163.i ], [ %.338161.i.unr, %.lr.ph163.i.prol.loopexit ] ; 3 uses
  %.342160.i = phi i32 [ %i.xd, %.lr.ph163.i ], [ %.342160.i.unr, %.lr.ph163.i.prol.loopexit ]
  %i.wj = getelementptr inbounds nuw i8, ptr %.3162.i, i64 2
  %i.wk = load i16, ptr %.3162.i, align 2, !tbaa !56
  %i.wl = zext i16 %i.wk to i32
  %i.wm = shl nuw i32 %i.wl, 16
  %i.wn = bitcast i32 %i.wm to float
  %i.wo = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.wn, float %i.kr)
  %i.wp = bitcast float %i.wo to i32
  %i.wq = lshr i32 %i.wp, 16
  %i.wr = trunc nuw i32 %i.wq to i16
  %i.ws = getelementptr inbounds nuw i8, ptr %.338161.i, i64 2
  store i16 %i.wr, ptr %.338161.i, align 2, !tbaa !56
  %i.wt = getelementptr inbounds nuw i8, ptr %.3162.i, i64 4
  %i.wu = load i16, ptr %i.wj, align 2, !tbaa !56
  %i.wv = zext i16 %i.wu to i32
  %i.ww = shl nuw i32 %i.wv, 16
  %i.wx = bitcast i32 %i.ww to float
  %i.wy = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.wx, float %i.kr)
  %i.wz = bitcast float %i.wy to i32
  %i.xa = lshr i32 %i.wz, 16
  %i.xb = trunc nuw i32 %i.xa to i16
  %i.xc = getelementptr inbounds nuw i8, ptr %.338161.i, i64 4
  store i16 %i.xb, ptr %i.ws, align 2, !tbaa !56
  %i.xd = add nuw nsw i32 %.342160.i, 2           ; 2 uses
  %exitcond.not.i38.1 = icmp eq i32 %i.xd, %i.a
  br i1 %exitcond.not.i38.1, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor15binary_op_atan2EEEvPKtS4_Pti.exit, label %.lr.ph163.i, !llvm.loop !1223

bb.n:                                             ; preds = %bb.d
  %i.xe = icmp eq i32 %3, 1
  br i1 %i.xe, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.xf = load i16, ptr %0, align 2, !tbaa !56
  %i.xg = zext i16 %i.xf to i32
  %i.xh = shl nuw i32 %i.xg, 16
  %i.xi = bitcast i32 %i.xh to float              ; 15 uses
  %i.xj = icmp eq i32 %.sroa.speculated, 4
  br i1 %i.xj, label %.thread133.i57, label %bb.p

.thread133.i57:                                   ; preds = %bb.o
  %i.xk = load i64, ptr %0, align 2, !tbaa !60
  %i.xl = insertelement <2 x i64> poison, i64 %i.xk, i64 0
  %i.xm = bitcast <2 x i64> %i.xl to <8 x i16>
  %i.xn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xo = bitcast <8 x i16> %i.xn to <4 x float>  ; 2 uses
  %i.xp = shufflevector <4 x float> %i.xo, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.xq = insertelement <4 x float> poison, float %i.xi, i64 0 ; 2 uses
  %i.xr = shufflevector <4 x float> %i.xq, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.xs = icmp eq i32 %.sroa.speculated, 8
  br i1 %i.xs, label %.thread132.i56, label %bb.q

.thread132.i56:                                   ; preds = %bb.p
  %i.xt = load <8 x i16>, ptr %0, align 2, !tbaa !60 ; 2 uses
  %i.xu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xv = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.xt, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.xw = shufflevector <8 x i16> %i.xu, <8 x i16> %i.xv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xx = bitcast <16 x i16> %i.xw to <8 x float>
  br label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.xy = shufflevector <4 x float> %i.xq, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.xz = icmp eq i32 %.sroa.speculated, 16
  br i1 %i.xz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ya = load <16 x i16>, ptr %0, align 2, !tbaa !60 ; 2 uses
  %i.yb = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ya, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.yc = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ya, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.yd = shufflevector <16 x i16> %i.yb, <16 x i16> %i.yc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ye = shufflevector <16 x i16> %i.yb, <16 x i16> %i.yc, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.yf = bitcast <16 x i16> %i.yd to <8 x i32>
  %i.yg = bitcast <16 x i16> %i.ye to <8 x i32>
  %i.yh = shufflevector <8 x i32> %i.yf, <8 x i32> %i.yg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yi = bitcast <16 x i32> %i.yh to <16 x float>
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %.thread132.i56, %.thread133.i57
  %i.yj = phi <8 x float> [ %i.xx, %.thread132.i56 ], [ %i.xy, %bb.q ], [ %i.xp, %.thread133.i57 ] ; 2 uses
  %i.yk = phi <4 x float> [ %i.xr, %.thread132.i56 ], [ %i.xr, %bb.q ], [ %i.xo, %.thread133.i57 ]
  %i.yl = shufflevector <8 x float> %i.yj, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ym = phi <8 x float> [ %i.xy, %bb.r ], [ %i.yj, %bb.s ] ; 4 uses
  %i.yn = phi <4 x float> [ %i.xr, %bb.r ], [ %i.yk, %bb.s ] ; 4 uses
end_hunk_11
begin_hunk_12_@_ZN4ncnnL22binary_op_vector_bf16sINS_27BinaryOp_x86_avx512_functor15binary_op_atan2EEEvPKtS4_Ptiiii:bb.a

.lr.ph150.i53:                                    ; preds = %.preheader141.i
  %i.yx = fcmp fast ueq <8 x float> %i.ym, zeroinitializer ; 2 uses
  %i.yy = bitcast <8 x float> %i.ym to <8 x i32>
  %i.yz = and <8 x i32> %i.yy, splat (i32 -2147483648)
  %i.za = fcmp fast olt <8 x float> %i.ym, zeroinitializer
  %i.zb = select <8 x i1> %i.za, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.zc = or disjoint <8 x i32> %i.yz, splat (i32 1070137344)
  br label %bb.v

bb.u:                                             ; preds = %bb.u, %.lr.ph.i55
  %.0144.i = phi ptr [ %1, %.lr.ph.i55 ], [ %i.aaz, %bb.u ] ; 2 uses
  %.035143.i = phi ptr [ %2, %.lr.ph.i55 ], [ %i.aba, %bb.u ] ; 2 uses
  %.039142.i = phi i32 [ 0, %.lr.ph.i55 ], [ %i.abb, %bb.u ]
  %i.zd = load <16 x i16>, ptr %.0144.i, align 1, !tbaa !60 ; 2 uses
  %i.ze = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.zd, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.zf = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.zd, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.zg = shufflevector <16 x i16> %i.ze, <16 x i16> %i.zf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.zh = shufflevector <16 x i16> %i.ze, <16 x i16> %i.zf, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.zi = bitcast <16 x i16> %i.zg to <8 x i32>
  %i.zj = bitcast <16 x i16> %i.zh to <8 x i32>
  %i.zk = shufflevector <8 x i32> %i.zi, <8 x i32> %i.zj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.zl = bitcast <16 x i32> %i.zk to <16 x float> ; 3 uses
  %i.zm = fcmp fast one <16 x float> %i.zl, zeroinitializer
  %i.zn = fcmp fast olt <16 x float> %i.zl, zeroinitializer
  %i.zo = select fast <16 x i1> %i.zn, <16 x float> %i.ys, <16 x float> zeroinitializer
  %i.zp = fdiv fast <16 x float> %i.yo, %i.zl     ; 2 uses
  %i.zq = bitcast <16 x float> %i.zp to <16 x i32>
  %i.zr = and <16 x i32> %i.zq, splat (i32 -2147483648)
  %i.zs = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.zp) ; 3 uses
  %i.zt = fcmp fast ogt <16 x float> %i.zs, splat (float 1.000000e+00) ; 2 uses
  %i.zu = select fast <16 x i1> %i.zt, <16 x float> splat (float -1.000000e+00), <16 x float> %i.zs
  %i.zv = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.zs, <16 x float> splat (float 1.000000e+00))
  %i.zw = fdiv fast <16 x float> %i.zu, %i.zv     ; 3 uses
  %i.zx = fmul fast <16 x float> %i.zw, %i.zw     ; 3 uses
  %i.zy = fmul fast <16 x float> %i.zx, %i.zx     ; 7 uses
  %i.zz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.zy, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.aaa = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.zy, <16 x float> nofpclass(nan inf) %i.zz, <16 x float> splat (float f0xBE117200))
  %i.aab = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.zy, <16 x float> nofpclass(nan inf) %i.aaa, <16 x float> splat (float f0xBEAAAA53))
  %i.aac = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.zy, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.aad = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.zy, <16 x float> nofpclass(nan inf) %i.aac, <16 x float> splat (float f0x3DD9ED24))
  %i.aae = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.zy, <16 x float> nofpclass(nan inf) %i.aad, <16 x float> splat (float f0x3E4CB974))
  %i.aaf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.zy, <16 x float> nofpclass(nan inf) %i.aae, <16 x float> splat (float 1.000000e+00))
  %i.aag = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.zx, <16 x float> nofpclass(nan inf) %i.aab, <16 x float> nofpclass(nan inf) %i.aaf)
  %i.aah = fmul fast <16 x float> %i.aag, %i.zw
  %i.aai = select fast <16 x i1> %i.zt, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.aaj = fadd fast <16 x float> %i.aah, %i.aai
  %i.aak = bitcast <16 x float> %i.aaj to <16 x i32>
  %i.aal = or <16 x i32> %i.zr, %i.aak
  %i.aam = bitcast <16 x i32> %i.aal to <16 x float>
  %i.aan = fadd fast <16 x float> %i.zo, %i.aam
  %i.aao = icmp slt <16 x i32> %i.zk, zeroinitializer
  %i.aap = select fast <16 x i1> %i.aao, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.aaq = select <16 x i1> %i.zm, <16 x float> %i.aan, <16 x float> %i.yt
  %i.aar = select <16 x i1> %i.yq, <16 x float> %i.aaq, <16 x float> %i.aap
  %i.aas = bitcast <16 x float> %i.aar to <16 x i32>
  %i.aat = lshr <16 x i32> %i.aas, splat (i32 16) ; 2 uses
  %i.aau = shufflevector <16 x i32> %i.aat, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aav = shufflevector <16 x i32> %i.aat, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aaw = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.aau, <8 x i32> %i.aav)
  %i.aax = bitcast <16 x i16> %i.aaw to <4 x i64>
  %i.aay = shufflevector <4 x i64> %i.aax, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.aay, ptr %.035143.i, align 1, !tbaa !60
  %i.aaz = getelementptr inbounds nuw i8, ptr %.0144.i, i64 32 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %.035143.i, i64 32 ; 2 uses
  %i.abb = add nuw nsw i32 %.039142.i, 16         ; 2 uses
  %i.abc = or disjoint i32 %i.abb, 15
  %i.abd = icmp slt i32 %i.abc, %i.a
  br i1 %i.abd, label %bb.u, label %.preheader141.loopexit.i, !llvm.loop !1224

.preheader140.i43:                                ; preds = %bb.v, %.preheader141.i
  %.140.lcssa.i44 = phi i32 [ %.039.lcssa.i40, %.preheader141.i ], [ %i.adk, %bb.v ] ; 3 uses
  %.136.lcssa.i45 = phi ptr [ %.035.lcssa.i41, %.preheader141.i ], [ %i.adj, %bb.v ] ; 2 uses
  %.1.lcssa.i46 = phi ptr [ %.0.lcssa.i42, %.preheader141.i ], [ %i.adi, %bb.v ] ; 2 uses
  %i.abe = or disjoint i32 %.140.lcssa.i44, 3
  %i.abf = icmp slt i32 %i.abe, %i.a
  br i1 %i.abf, label %.lr.ph157.i, label %.preheader.i47

.lr.ph157.i:                                      ; preds = %.preheader140.i43
  %i.abg = fcmp fast oeq <4 x float> %i.yn, zeroinitializer ; 2 uses
  %i.abh = bitcast <4 x float> %i.yn to <4 x i32>
  %i.abi = and <4 x i32> %i.abh, splat (i32 -2147483648)
  %i.abj = fcmp fast olt <4 x float> %i.yn, zeroinitializer
  %i.abk = select <4 x i1> %i.abj, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.abl = or disjoint <4 x i32> %i.abi, splat (i32 1070137344)
  br label %bb.w

bb.v:                                             ; preds = %bb.v, %.lr.ph150.i53
  %.1149.i54 = phi ptr [ %.0.lcssa.i42, %.lr.ph150.i53 ], [ %i.adi, %bb.v ] ; 2 uses
  %.136148.i = phi ptr [ %.035.lcssa.i41, %.lr.ph150.i53 ], [ %i.adj, %bb.v ] ; 2 uses
  %.140147.i = phi i32 [ %.039.lcssa.i40, %.lr.ph150.i53 ], [ %i.adk, %bb.v ]
  %i.abm = load <8 x i16>, ptr %.1149.i54, align 1, !tbaa !60 ; 2 uses
  %i.abn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.abm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.abo = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.abm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.abp = shufflevector <8 x i16> %i.abn, <8 x i16> %i.abo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.abq = bitcast <16 x i16> %i.abp to <8 x float> ; 3 uses
  %i.abr = fcmp fast ueq <8 x float> %i.abq, zeroinitializer ; 2 uses
  %.not139.i = or <8 x i1> %i.yx, %i.abr
  %i.abs = fcmp fast olt <8 x float> %i.abq, zeroinitializer
  %i.abt = select <8 x i1> %i.abs, <8 x float> %i.zb, <8 x float> zeroinitializer
  %i.abu = fdiv fast <8 x float> %i.ym, %i.abq    ; 2 uses
  %i.abv = bitcast <8 x float> %i.abu to <8 x i32>
  %i.abw = and <8 x i32> %i.abv, splat (i32 -2147483648)
  %i.abx = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.abu) ; 3 uses
  %i.aby = fcmp fast ogt <8 x float> %i.abx, splat (float 1.000000e+00) ; 2 uses
  %i.abz = select <8 x i1> %i.aby, <8 x float> splat (float -1.000000e+00), <8 x float> %i.abx
  %i.aca = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.abx, <8 x float> splat (float 1.000000e+00))
  %i.acb = fdiv fast <8 x float> %i.abz, %i.aca   ; 3 uses
  %i.acc = fmul fast <8 x float> %i.acb, %i.acb   ; 3 uses
  %i.acd = fmul fast <8 x float> %i.acc, %i.acc   ; 7 uses
  %i.ace = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acd, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.acf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acd, <8 x float> nofpclass(nan inf) %i.ace, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.acg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acd, <8 x float> nofpclass(nan inf) %i.acf, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.ach = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acd, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.aci = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acd, <8 x float> nofpclass(nan inf) %i.ach, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.acj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acd, <8 x float> nofpclass(nan inf) %i.aci, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.ack = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acd, <8 x float> nofpclass(nan inf) %i.acj, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.acl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acc, <8 x float> nofpclass(nan inf) %i.acg, <8 x float> nofpclass(nan inf) %i.ack)
  %i.acm = fmul fast <8 x float> %i.acl, %i.acb
  %i.acn = select <8 x i1> %i.aby, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.aco = fadd fast <8 x float> %i.acm, %i.acn
  %i.acp = bitcast <8 x float> %i.aco to <8 x i32>
  %i.acq = or <8 x i32> %i.abw, %i.acp
  %i.acr = bitcast <8 x i32> %i.acq to <8 x float>
  %i.acs = fadd fast <8 x float> %i.abt, %i.acr
  %i.act = bitcast <16 x i16> %i.abp to <8 x i32>
  %i.acu = and <8 x i32> %i.act, splat (i32 -2147483648)
  %i.acv = or disjoint <8 x i32> %i.acu, splat (i32 1078530011)
  %i.acw = bitcast <8 x i32> %i.acv to <8 x float>
  %i.acx = fcmp fast uge <8 x float> %i.acw, zeroinitializer
  %i.acy = select <8 x i1> %i.acx, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078525952)
  %i.acz = bitcast <8 x float> %i.acs to <8 x i32>
  %i.ada = select <8 x i1> %.not139.i, <8 x i32> zeroinitializer, <8 x i32> %i.acz
  %i.adb = select <8 x i1> %i.abr, <8 x i32> %i.zc, <8 x i32> zeroinitializer
  %i.adc = select <8 x i1> %i.yx, <8 x i32> %i.acy, <8 x i32> %i.adb
  %i.add = or <8 x i32> %i.ada, %i.adc
  %i.ade = lshr <8 x i32> %i.add, splat (i32 16)  ; 2 uses
  %i.adf = shufflevector <8 x i32> %i.ade, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.adg = shufflevector <8 x i32> %i.ade, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.adh = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.adf, <4 x i32> %i.adg)
  store <8 x i16> %i.adh, ptr %.136148.i, align 1, !tbaa !60
  %i.adi = getelementptr inbounds nuw i8, ptr %.1149.i54, i64 16 ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %.136148.i, i64 16 ; 2 uses
  %i.adk = add nuw nsw i32 %.140147.i, 8          ; 3 uses
  %i.adl = or disjoint i32 %i.adk, 7
  %i.adm = icmp slt i32 %i.adl, %i.a
  br i1 %i.adm, label %bb.v, label %.preheader140.i43, !llvm.loop !1225

.preheader.i47:                                   ; preds = %bb.w, %.preheader140.i43
  %.241.lcssa.i48 = phi i32 [ %.140.lcssa.i44, %.preheader140.i43 ], [ %i.ajb, %bb.w ] ; 5 uses
  %.237.lcssa.i49 = phi ptr [ %.136.lcssa.i45, %.preheader140.i43 ], [ %i.aja, %bb.w ] ; 6 uses
  %.2.lcssa.i50 = phi ptr [ %.1.lcssa.i46, %.preheader140.i43 ], [ %i.aiz, %bb.w ] ; 6 uses
  %i.adn = icmp slt i32 %.241.lcssa.i48, %i.a
  br i1 %i.adn, label %iter.check305, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor15binary_op_atan2EEEvPKtS4_Pti.exit

iter.check305:                                    ; preds = %.preheader.i47
  %.237.lcssa.i49289 = ptrtoaddr ptr %.237.lcssa.i49 to i64
  %.2.lcssa.i50288 = ptrtoaddr ptr %.2.lcssa.i50 to i64
  %i.ado = xor i32 %.241.lcssa.i48, -1
  %i.adp = add i32 %i.a, %i.ado                   ; 3 uses
  %i.adq = zext i32 %i.adp to i64
  %i.adr = add nuw nsw i64 %i.adq, 1              ; 5 uses
  %min.iters.check290 = icmp ult i32 %i.adp, 7
  %i.ads = sub i64 %.2.lcssa.i50288, %.237.lcssa.i49289
  %diff.check292 = icmp ugt i64 %i.ads, -64
  %or.cond410 = select i1 %min.iters.check290, i1 true, i1 %diff.check292
  br i1 %or.cond410, label %.lr.ph164.i.preheader, label %vector.main.loop.iter.check293

vector.main.loop.iter.check293:                   ; preds = %iter.check305
  %min.iters.check294 = icmp ult i32 %i.adp, 31
  br i1 %min.iters.check294, label %vec.epilog.ph309, label %vector.ph295

vector.ph295:                                     ; preds = %vector.main.loop.iter.check293
  %i.adt = and i64 %i.adr, 24
  %n.vec296 = and i64 %i.adr, 8589934560          ; 5 uses
  %i.adu = shl nuw nsw i64 %n.vec296, 1           ; 2 uses
  %i.adv = getelementptr i8, ptr %.2.lcssa.i50, i64 %i.adu
  %i.adw = getelementptr i8, ptr %.237.lcssa.i49, i64 %i.adu
  %i.adx = trunc i64 %n.vec296 to i32
  %i.ady = add i32 %.241.lcssa.i48, %i.adx
  %i.adz = insertelement <16 x float> poison, float %i.xi, i64 0
  %i.aea = shufflevector <16 x float> %i.adz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aeb = insertelement <8 x float> poison, float %i.xi, i64 0
  %i.aec = shufflevector <8 x float> %i.aeb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aed = insertelement <4 x float> poison, float %i.xi, i64 0
  %i.aee = shufflevector <4 x float> %i.aed, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aef = insertelement <2 x float> poison, float %i.xi, i64 0
  %i.aeg = shufflevector <2 x float> %i.aef, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body297

vector.body297:                                   ; preds = %vector.ph295, %vector.body297
  %index298 = phi i64 [ 0, %vector.ph295 ], [ %index.next302, %vector.body297 ] ; 2 uses
  %i.aeh = shl i64 %index298, 1                   ; 2 uses
  %next.gep299 = getelementptr i8, ptr %.2.lcssa.i50, i64 %i.aeh
  %next.gep300 = getelementptr i8, ptr %.237.lcssa.i49, i64 %i.aeh
  %wide.load301 = load <32 x i16>, ptr %next.gep299, align 2, !tbaa !56
  %i.aei = zext <32 x i16> %wide.load301 to <32 x i32>
  %i.aej = shl nuw <32 x i32> %i.aei, splat (i32 16)
  %i.aek = bitcast <32 x i32> %i.aej to <32 x float> ; 6 uses
  %i.ael = extractelement <32 x float> %i.aek, i64 0
  %i.aem = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.xi, float %i.ael)
  %i.aen = shufflevector <32 x float> %i.aek, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.aeo = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.aea, <16 x float> %i.aen)
  %i.aep = shufflevector <32 x float> %i.aek, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.aeq = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.aec, <8 x float> %i.aep)
  %i.aer = shufflevector <32 x float> %i.aek, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.aes = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.aee, <4 x float> %i.aer)
  %i.aet = extractelement <32 x float> %i.aek, i64 29
  %i.aeu = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.xi, float %i.aet)
  %i.aev = shufflevector <32 x float> %i.aek, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.aew = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.aeg, <2 x float> %i.aev)
  %i.aex = insertelement <32 x float> poison, float %i.aem, i64 0
  %i.aey = shufflevector <16 x float> %i.aeo, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aez = shufflevector <32 x float> %i.aex, <32 x float> %i.aey, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afa = shufflevector <8 x float> %i.aeq, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afb = shufflevector <32 x float> %i.aez, <32 x float> %i.afa, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afc = shufflevector <4 x float> %i.aes, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afd = shufflevector <32 x float> %i.afb, <32 x float> %i.afc, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.afe = insertelement <32 x float> %i.afd, float %i.aeu, i64 29
  %i.aff = shufflevector <2 x float> %i.aew, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afg = shufflevector <32 x float> %i.afe, <32 x float> %i.aff, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.afh = bitcast <32 x float> %i.afg to <32 x i32>
  %i.afi = lshr <32 x i32> %i.afh, splat (i32 16)
  %i.afj = trunc nuw <32 x i32> %i.afi to <32 x i16>
  store <32 x i16> %i.afj, ptr %next.gep300, align 2, !tbaa !56
  %index.next302 = add nuw i64 %index298, 32      ; 2 uses
  %i.afk = icmp eq i64 %index.next302, %n.vec296
  br i1 %i.afk, label %middle.block303, label %vector.body297, !llvm.loop !1226

middle.block303:                                  ; preds = %vector.body297
  %cmp.n304 = icmp eq i64 %i.adr, %n.vec296
  br i1 %cmp.n304, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor15binary_op_atan2EEEvPKtS4_Pti.exit, label %vec.epilog.iter.check306

vec.epilog.iter.check306:                         ; preds = %middle.block303
  %min.epilog.iters.check308 = icmp eq i64 %i.adt, 0
  br i1 %min.epilog.iters.check308, label %.lr.ph164.i.preheader, label %vec.epilog.ph309, !prof !64

vec.epilog.ph309:                                 ; preds = %vector.main.loop.iter.check293, %vec.epilog.iter.check306
  %vec.epilog.resume.val310 = phi i64 [ %n.vec296, %vec.epilog.iter.check306 ], [ 0, %vector.main.loop.iter.check293 ]
  %n.vec311 = and i64 %i.adr, 8589934584          ; 4 uses
  %i.afl = shl nuw nsw i64 %n.vec311, 1           ; 2 uses
  %i.afm = getelementptr i8, ptr %.2.lcssa.i50, i64 %i.afl
  %i.afn = getelementptr i8, ptr %.237.lcssa.i49, i64 %i.afl
  %i.afo = trunc i64 %n.vec311 to i32
  %i.afp = add i32 %.241.lcssa.i48, %i.afo
  %i.afq = insertelement <4 x float> poison, float %i.xi, i64 0
  %i.afr = shufflevector <4 x float> %i.afq, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body312

vec.epilog.vector.body312:                        ; preds = %vec.epilog.vector.body312, %vec.epilog.ph309
  %index313 = phi i64 [ %vec.epilog.resume.val310, %vec.epilog.ph309 ], [ %index.next317, %vec.epilog.vector.body312 ] ; 2 uses
  %i.afs = shl i64 %index313, 1                   ; 2 uses
  %next.gep314 = getelementptr i8, ptr %.2.lcssa.i50, i64 %i.afs
  %next.gep315 = getelementptr i8, ptr %.237.lcssa.i49, i64 %i.afs
  %wide.load316 = load <8 x i16>, ptr %next.gep314, align 2, !tbaa !56
  %i.aft = zext <8 x i16> %wide.load316 to <8 x i32>
  %i.afu = shl nuw <8 x i32> %i.aft, splat (i32 16)
  %i.afv = bitcast <8 x i32> %i.afu to <8 x float> ; 5 uses
  %i.afw = extractelement <8 x float> %i.afv, i64 0
  %i.afx = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.xi, float %i.afw)
  %i.afy = extractelement <8 x float> %i.afv, i64 1
  %i.afz = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.xi, float %i.afy)
  %i.aga = extractelement <8 x float> %i.afv, i64 2
  %i.agb = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.xi, float %i.aga)
  %i.agc = shufflevector <8 x float> %i.afv, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.agd = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.afr, <4 x float> %i.agc)
  %i.age = extractelement <8 x float> %i.afv, i64 7
  %i.agf = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.xi, float %i.age)
  %i.agg = insertelement <8 x float> poison, float %i.afx, i64 0
  %i.agh = insertelement <8 x float> %i.agg, float %i.afz, i64 1
  %i.agi = insertelement <8 x float> %i.agh, float %i.agb, i64 2
  %i.agj = shufflevector <4 x float> %i.agd, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agk = shufflevector <8 x float> %i.agi, <8 x float> %i.agj, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.agl = insertelement <8 x float> %i.agk, float %i.agf, i64 7
  %i.agm = bitcast <8 x float> %i.agl to <8 x i32>
  %i.agn = lshr <8 x i32> %i.agm, splat (i32 16)
  %i.ago = trunc nuw <8 x i32> %i.agn to <8 x i16>
  store <8 x i16> %i.ago, ptr %next.gep315, align 2, !tbaa !56
  %index.next317 = add nuw i64 %index313, 8       ; 2 uses
  %i.agp = icmp eq i64 %index.next317, %n.vec311
  br i1 %i.agp, label %vec.epilog.middle.block318, label %vec.epilog.vector.body312, !llvm.loop !1227

vec.epilog.middle.block318:                       ; preds = %vec.epilog.vector.body312
  %cmp.n319 = icmp eq i64 %i.adr, %n.vec311
  br i1 %cmp.n319, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor15binary_op_atan2EEEvPKtS4_Pti.exit, label %.lr.ph164.i.preheader

.lr.ph164.i.preheader:                            ; preds = %iter.check305, %vec.epilog.iter.check306, %vec.epilog.middle.block318
  %.3163.i.ph = phi ptr [ %.2.lcssa.i50, %iter.check305 ], [ %i.adv, %vec.epilog.iter.check306 ], [ %i.afm, %vec.epilog.middle.block318 ] ; 3 uses
  %.338162.i.ph = phi ptr [ %.237.lcssa.i49, %iter.check305 ], [ %i.adw, %vec.epilog.iter.check306 ], [ %i.afn, %vec.epilog.middle.block318 ] ; 3 uses
  %.342161.i.ph = phi i32 [ %.241.lcssa.i48, %iter.check305 ], [ %i.ady, %vec.epilog.iter.check306 ], [ %i.afp, %vec.epilog.middle.block318 ] ; 4 uses
  %i.agq = sub i32 %i.a, %.342161.i.ph
  %.neg488 = add i32 %.342161.i.ph, 1
  %xtraiter482 = and i32 %i.agq, 1
  %lcmp.mod483.not = icmp eq i32 %xtraiter482, 0
  br i1 %lcmp.mod483.not, label %.lr.ph164.i.prol.loopexit, label %.lr.ph164.i.prol

.lr.ph164.i.prol:                                 ; preds = %.lr.ph164.i.preheader
  %i.agr = getelementptr inbounds nuw i8, ptr %.3163.i.ph, i64 2
  %i.ags = load i16, ptr %.3163.i.ph, align 2, !tbaa !56
  %i.agt = zext i16 %i.ags to i32
  %i.agu = shl nuw i32 %i.agt, 16
  %i.agv = bitcast i32 %i.agu to float
  %i.agw = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.xi, float %i.agv)
  %i.agx = bitcast float %i.agw to i32
  %i.agy = lshr i32 %i.agx, 16
  %i.agz = trunc nuw i32 %i.agy to i16
  %i.aha = getelementptr inbounds nuw i8, ptr %.338162.i.ph, i64 2
  store i16 %i.agz, ptr %.338162.i.ph, align 2, !tbaa !56
  %i.ahb = add nuw nsw i32 %.342161.i.ph, 1
  br label %.lr.ph164.i.prol.loopexit

.lr.ph164.i.prol.loopexit:                        ; preds = %.lr.ph164.i.prol, %.lr.ph164.i.preheader
  %.3163.i.unr = phi ptr [ %.3163.i.ph, %.lr.ph164.i.preheader ], [ %i.agr, %.lr.ph164.i.prol ]
  %.338162.i.unr = phi ptr [ %.338162.i.ph, %.lr.ph164.i.preheader ], [ %i.aha, %.lr.ph164.i.prol ]
  %.342161.i.unr = phi i32 [ %.342161.i.ph, %.lr.ph164.i.preheader ], [ %i.ahb, %.lr.ph164.i.prol ]
  %i.ahc = icmp eq i32 %i.a, %.neg488
  br i1 %i.ahc, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor15binary_op_atan2EEEvPKtS4_Pti.exit, label %.lr.ph164.i

bb.w:                                             ; preds = %bb.w, %.lr.ph157.i
  %.2156.i = phi ptr [ %.1.lcssa.i46, %.lr.ph157.i ], [ %i.aiz, %bb.w ] ; 2 uses
  %.237155.i = phi ptr [ %.136.lcssa.i45, %.lr.ph157.i ], [ %i.aja, %bb.w ] ; 2 uses
  %.241154.i = phi i32 [ %.140.lcssa.i44, %.lr.ph157.i ], [ %i.ajb, %bb.w ]
  %i.ahd = load i64, ptr %.2156.i, align 1, !tbaa !60
  %i.ahe = insertelement <2 x i64> poison, i64 %i.ahd, i64 0
  %i.ahf = bitcast <2 x i64> %i.ahe to <8 x i16>
  %i.ahg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ahf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ahh = bitcast <8 x i16> %i.ahg to <4 x float> ; 3 uses
  %i.ahi = fcmp fast oeq <4 x float> %i.ahh, zeroinitializer ; 2 uses
  %.not136.i52 = or <4 x i1> %i.abg, %i.ahi
  %i.ahj = fcmp fast olt <4 x float> %i.ahh, zeroinitializer
  %i.ahk = select <4 x i1> %i.ahj, <4 x float> %i.abk, <4 x float> zeroinitializer
  %i.ahl = fdiv fast <4 x float> %i.yn, %i.ahh    ; 2 uses
  %i.ahm = bitcast <4 x float> %i.ahl to <4 x i32>
  %i.ahn = and <4 x i32> %i.ahm, splat (i32 -2147483648)
  %i.aho = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ahl) ; 3 uses
  %i.ahp = fcmp fast ogt <4 x float> %i.aho, splat (float 1.000000e+00) ; 2 uses
  %i.ahq = select <4 x i1> %i.ahp, <4 x float> splat (float -1.000000e+00), <4 x float> %i.aho
  %i.ahr = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.aho, <4 x float> splat (float 1.000000e+00))
  %i.ahs = fdiv fast <4 x float> %i.ahq, %i.ahr   ; 3 uses
  %i.aht = fmul fast <4 x float> %i.ahs, %i.ahs   ; 3 uses
  %i.ahu = fmul fast <4 x float> %i.aht, %i.aht   ; 7 uses
  %i.ahv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahu, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.ahw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahu, <4 x float> nofpclass(nan inf) %i.ahv, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.ahx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahu, <4 x float> nofpclass(nan inf) %i.ahw, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.ahy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahu, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.ahz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahu, <4 x float> nofpclass(nan inf) %i.ahy, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.aia = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahu, <4 x float> nofpclass(nan inf) %i.ahz, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.aib = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahu, <4 x float> nofpclass(nan inf) %i.aia, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.aic = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aht, <4 x float> nofpclass(nan inf) %i.ahx, <4 x float> nofpclass(nan inf) %i.aib)
  %i.aid = fmul fast <4 x float> %i.aic, %i.ahs
  %i.aie = select <4 x i1> %i.ahp, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.aif = fadd fast <4 x float> %i.aid, %i.aie
  %i.aig = bitcast <4 x float> %i.aif to <4 x i32>
  %i.aih = or <4 x i32> %i.ahn, %i.aig
  %i.aii = bitcast <4 x i32> %i.aih to <4 x float>
  %i.aij = fadd fast <4 x float> %i.ahk, %i.aii
  %i.aik = bitcast <8 x i16> %i.ahg to <4 x i32>
  %i.ail = and <4 x i32> %i.aik, splat (i32 -2147483648)
  %i.aim = or disjoint <4 x i32> %i.ail, splat (i32 1078530011)
  %i.ain = bitcast <4 x i32> %i.aim to <4 x float>
  %i.aio = fcmp fast uge <4 x float> %i.ain, zeroinitializer
  %i.aip = select <4 x i1> %i.aio, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078525952)
  %i.aiq = bitcast <4 x float> %i.aij to <4 x i32>
  %i.air = select <4 x i1> %.not136.i52, <4 x i32> zeroinitializer, <4 x i32> %i.aiq
  %i.ais = select <4 x i1> %i.ahi, <4 x i32> %i.abl, <4 x i32> zeroinitializer
  %i.ait = select <4 x i1> %i.abg, <4 x i32> %i.aip, <4 x i32> %i.ais
  %i.aiu = or <4 x i32> %i.air, %i.ait
  %i.aiv = lshr <4 x i32> %i.aiu, splat (i32 16)
  %i.aiw = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aiv, <4 x i32> poison)
  %i.aix = bitcast <8 x i16> %i.aiw to <2 x i64>
  %i.aiy = extractelement <2 x i64> %i.aix, i64 0
  store i64 %i.aiy, ptr %.237155.i, align 1, !tbaa !60
  %i.aiz = getelementptr inbounds nuw i8, ptr %.2156.i, i64 8 ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %.237155.i, i64 8 ; 2 uses
  %i.ajb = add nuw nsw i32 %.241154.i, 4          ; 3 uses
  %i.ajc = or disjoint i32 %i.ajb, 3
  %i.ajd = icmp slt i32 %i.ajc, %i.a
  br i1 %i.ajd, label %bb.w, label %.preheader.i47, !llvm.loop !1228

.lr.ph164.i:                                      ; preds = %.lr.ph164.i.prol.loopexit, %.lr.ph164.i
  %.3163.i = phi ptr [ %i.ajo, %.lr.ph164.i ], [ %.3163.i.unr, %.lr.ph164.i.prol.loopexit ] ; 3 uses
  %.338162.i = phi ptr [ %i.ajx, %.lr.ph164.i ], [ %.338162.i.unr, %.lr.ph164.i.prol.loopexit ] ; 3 uses
  %.342161.i = phi i32 [ %i.ajy, %.lr.ph164.i ], [ %.342161.i.unr, %.lr.ph164.i.prol.loopexit ]
  %i.aje = getelementptr inbounds nuw i8, ptr %.3163.i, i64 2
  %i.ajf = load i16, ptr %.3163.i, align 2, !tbaa !56
  %i.ajg = zext i16 %i.ajf to i32
  %i.ajh = shl nuw i32 %i.ajg, 16
  %i.aji = bitcast i32 %i.ajh to float
  %i.ajj = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.xi, float %i.aji)
  %i.ajk = bitcast float %i.ajj to i32
  %i.ajl = lshr i32 %i.ajk, 16
  %i.ajm = trunc nuw i32 %i.ajl to i16
  %i.ajn = getelementptr inbounds nuw i8, ptr %.338162.i, i64 2
  store i16 %i.ajm, ptr %.338162.i, align 2, !tbaa !56
  %i.ajo = getelementptr inbounds nuw i8, ptr %.3163.i, i64 4
  %i.ajp = load i16, ptr %i.aje, align 2, !tbaa !56
  %i.ajq = zext i16 %i.ajp to i32
  %i.ajr = shl nuw i32 %i.ajq, 16
  %i.ajs = bitcast i32 %i.ajr to float
  %i.ajt = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.xi, float %i.ajs)
  %i.aju = bitcast float %i.ajt to i32
  %i.ajv = lshr i32 %i.aju, 16
  %i.ajw = trunc nuw i32 %i.ajv to i16
  %i.ajx = getelementptr inbounds nuw i8, ptr %.338162.i, i64 4
  store i16 %i.ajw, ptr %i.ajn, align 2, !tbaa !56
  %i.ajy = add nuw nsw i32 %.342161.i, 2          ; 2 uses
  %exitcond.not.i51.1 = icmp eq i32 %i.ajy, %i.a
  br i1 %exitcond.not.i51.1, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor15binary_op_atan2EEEvPKtS4_Pti.exit, label %.lr.ph164.i, !llvm.loop !1229

bb.x:                                             ; preds = %bb.n, %bb.a
  %i.ajz = icmp eq i32 %6, 1
  br i1 %i.ajz, label %bb.y, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor15binary_op_atan2EEEvPKtS4_Pti.exit

bb.y:                                             ; preds = %bb.x
  %i.aka = icmp eq i32 %3, %4
  br i1 %i.aka, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  switch i32 %.sroa.speculated, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor15binary_op_atan2EEEvPKtS4_Pti.exit [
    i32 16, label %.preheader.i61
    i32 8, label %.preheader125.i
    i32 4, label %.preheader127.i
  ]

.preheader127.i:                                  ; preds = %bb.z
  %i.akb = icmp sgt i32 %.sroa.speculated85, 0
  br i1 %i.akb, label %.lr.ph.i58, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor15binary_op_atan2EEEvPKtS4_Pti.exit

.preheader125.i:                                  ; preds = %bb.z
  %i.akc = icmp sgt i32 %.sroa.speculated85, 0
  br i1 %i.akc, label %.lr.ph137.i, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor15binary_op_atan2EEEvPKtS4_Pti.exit

.preheader.i61:                                   ; preds = %bb.z
  %i.akd = icmp sgt i32 %.sroa.speculated85, 0
  br i1 %i.akd, label %.lr.ph142.i, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor15binary_op_atan2EEEvPKtS4_Pti.exit

.lr.ph142.i:                                      ; preds = %.preheader.i61, %.lr.ph142.i
  %.031141.i = phi ptr [ %i.aml, %.lr.ph142.i ], [ %0, %.preheader.i61 ] ; 2 uses
  %.033140.i = phi ptr [ %i.amm, %.lr.ph142.i ], [ %1, %.preheader.i61 ] ; 2 uses
  %.036139.i = phi i32 [ %i.amo, %.lr.ph142.i ], [ 0, %.preheader.i61 ]
  %.037138.i = phi ptr [ %i.amn, %.lr.ph142.i ], [ %2, %.preheader.i61 ] ; 2 uses
  %i.ake = load <16 x i16>, ptr %.031141.i, align 1, !tbaa !60 ; 2 uses
  %i.akf = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ake, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.akg = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ake, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.akh = shufflevector <16 x i16> %i.akf, <16 x i16> %i.akg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aki = shufflevector <16 x i16> %i.akf, <16 x i16> %i.akg, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.akj = bitcast <16 x i16> %i.akh to <8 x i32>
  %i.akk = bitcast <16 x i16> %i.aki to <8 x i32>
  %i.akl = shufflevector <8 x i32> %i.akj, <8 x i32> %i.akk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.akm = bitcast <16 x i32> %i.akl to <16 x float> ; 4 uses
  %i.akn = load i16, ptr %.033140.i, align 2, !tbaa !56
  %i.ako = zext i16 %i.akn to i32
  %i.akp = shl nuw i32 %i.ako, 16
  %i.akq = insertelement <16 x i32> poison, i32 %i.akp, i64 0
  %i.akr = bitcast <16 x i32> %i.akq to <16 x float>
  %i.aks = shufflevector <16 x float> %i.akr, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.akt = fcmp fast one <16 x float> %i.aks, zeroinitializer
  %i.aku = fcmp fast one <16 x float> %i.akm, zeroinitializer
  %i.akv = fcmp fast olt <16 x float> %i.aks, zeroinitializer
  %i.akw = fcmp fast olt <16 x float> %i.akm, zeroinitializer
  %i.akx = select fast <16 x i1> %i.akw, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.aky = select fast <16 x i1> %i.akv, <16 x float> %i.akx, <16 x float> zeroinitializer
  %i.akz = fdiv fast <16 x float> %i.akm, %i.aks  ; 2 uses
  %i.ala = bitcast <16 x float> %i.akz to <16 x i32>
  %i.alb = and <16 x i32> %i.ala, splat (i32 -2147483648)
  %i.alc = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.akz) ; 3 uses
  %i.ald = fcmp fast ogt <16 x float> %i.alc, splat (float 1.000000e+00) ; 2 uses
  %i.ale = select fast <16 x i1> %i.ald, <16 x float> splat (float -1.000000e+00), <16 x float> %i.alc
end_hunk_12
begin_hunk_13_@_ZN4ncnnL22binary_op_vector_bf16sINS_27BinaryOp_x86_avx512_functor15binary_op_atan2EEEvPKtS4_Ptiiii:bb.a
  %i.asb = fcmp fast one <16 x float> %i.asa, zeroinitializer
  %i.asc = fcmp fast olt <16 x float> %i.asa, zeroinitializer
  %i.asd = select fast <16 x i1> %i.asc, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.ase = select fast <16 x i1> %i.arn, <16 x float> %i.asd, <16 x float> zeroinitializer
  %i.asf = fmul fast <16 x float> %i.asa, %i.arr  ; 2 uses
  %i.asg = bitcast <16 x float> %i.asf to <16 x i32>
  %i.ash = and <16 x i32> %i.asg, splat (i32 -2147483648)
  %i.asi = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.asf) ; 3 uses
  %i.asj = fcmp fast ogt <16 x float> %i.asi, splat (float 1.000000e+00) ; 2 uses
  %i.ask = select fast <16 x i1> %i.asj, <16 x float> splat (float -1.000000e+00), <16 x float> %i.asi
  %i.asl = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.asi, <16 x float> splat (float 1.000000e+00))
  %i.asm = fdiv fast <16 x float> %i.ask, %i.asl  ; 3 uses
  %i.asn = fmul fast <16 x float> %i.asm, %i.asm  ; 3 uses
  %i.aso = fmul fast <16 x float> %i.asn, %i.asn  ; 7 uses
  %i.asp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aso, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.asq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aso, <16 x float> nofpclass(nan inf) %i.asp, <16 x float> splat (float f0xBE117200))
  %i.asr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aso, <16 x float> nofpclass(nan inf) %i.asq, <16 x float> splat (float f0xBEAAAA53))
  %i.ass = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aso, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.ast = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aso, <16 x float> nofpclass(nan inf) %i.ass, <16 x float> splat (float f0x3DD9ED24))
  %i.asu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aso, <16 x float> nofpclass(nan inf) %i.ast, <16 x float> splat (float f0x3E4CB974))
  %i.asv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aso, <16 x float> nofpclass(nan inf) %i.asu, <16 x float> splat (float 1.000000e+00))
  %i.asw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.asn, <16 x float> nofpclass(nan inf) %i.asr, <16 x float> nofpclass(nan inf) %i.asv)
  %i.asx = fmul fast <16 x float> %i.asw, %i.asm
  %i.asy = select fast <16 x i1> %i.asj, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.asz = fadd fast <16 x float> %i.asx, %i.asy
  %i.ata = bitcast <16 x float> %i.asz to <16 x i32>
  %i.atb = or <16 x i32> %i.ash, %i.ata
  %i.atc = bitcast <16 x i32> %i.atb to <16 x float>
  %i.atd = fadd fast <16 x float> %i.ase, %i.atc
  %i.ate = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.asa)
  %i.atf = select <16 x i1> %i.arm, <16 x float> %i.atd, <16 x float> %i.ate
  %i.atg = select <16 x i1> %i.asb, <16 x float> %i.atf, <16 x float> %i.arq
  %i.ath = bitcast <16 x float> %i.atg to <16 x i32>
  %i.ati = lshr <16 x i32> %i.ath, splat (i32 16) ; 2 uses
  %i.atj = shufflevector <16 x i32> %i.ati, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.atk = shufflevector <16 x i32> %i.ati, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.atl = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.atj, <8 x i32> %i.atk)
  %i.atm = bitcast <16 x i16> %i.atl to <4 x i64>
  %i.atn = shufflevector <4 x i64> %i.atm, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.atn, ptr %.03088.i, align 1, !tbaa !60
  %i.ato = getelementptr inbounds nuw i8, ptr %.089.i, i64 32 ; 2 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %.03088.i, i64 32 ; 2 uses
  %i.atq = add nuw nsw i32 %.03487.i, 16          ; 2 uses
  %i.atr = or disjoint i32 %i.atq, 15
  %i.ats = icmp slt i32 %i.atr, %i.a
  br i1 %i.ats, label %bb.ac, label %._crit_edge.loopexit.i, !llvm.loop !1233

._crit_edge.loopexit.i:                           ; preds = %bb.ac
  %i.att = and i32 %i.a, 2147483632
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.ab
  %.034.lcssa.i62 = phi i32 [ 0, %bb.ab ], [ %i.att, %._crit_edge.loopexit.i ] ; 3 uses
  %.030.lcssa.i = phi ptr [ %2, %bb.ab ], [ %i.atp, %._crit_edge.loopexit.i ] ; 2 uses
  %.0.lcssa.i63 = phi ptr [ %0, %bb.ab ], [ %i.ato, %._crit_edge.loopexit.i ] ; 2 uses
  %i.atu = or disjoint i32 %.034.lcssa.i62, 7
  %i.atv = icmp slt i32 %i.atu, %i.a
  br i1 %i.atv, label %.lr.ph96.i, label %._crit_edge97.i

.lr.ph96.i:                                       ; preds = %._crit_edge.i
  %i.atw = insertelement <8 x float> poison, float %i.ari, i64 0
  %i.atx = shufflevector <8 x float> %i.atw, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.aty = fcmp fast ueq <8 x float> %i.atx, zeroinitializer ; 2 uses
  %i.atz = fcmp fast olt <8 x float> %i.atx, zeroinitializer
  %i.aua = bitcast <8 x float> %i.atx to <8 x i32>
  %isneg.inv84.i = icmp slt <8 x i32> %i.aua, zeroinitializer
  %i.aub = select <8 x i1> %isneg.inv84.i, <8 x i32> splat (i32 1078525952), <8 x i32> zeroinitializer
  %i.auc = fdiv fast <8 x float> splat (float 1.000000e+00), %i.atx
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph96.i
  %.194.i = phi ptr [ %.0.lcssa.i63, %.lr.ph96.i ], [ %i.avx, %bb.ad ] ; 2 uses
  %.13193.i = phi ptr [ %.030.lcssa.i, %.lr.ph96.i ], [ %i.avy, %bb.ad ] ; 2 uses
  %.13592.i = phi i32 [ %.034.lcssa.i62, %.lr.ph96.i ], [ %i.avz, %bb.ad ]
  %i.aud = load <8 x i16>, ptr %.194.i, align 1, !tbaa !60 ; 2 uses
  %i.aue = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aud, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.auf = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aud, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aug = shufflevector <8 x i16> %i.aue, <8 x i16> %i.auf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.auh = bitcast <16 x i16> %i.aug to <8 x float> ; 3 uses
  %i.aui = fcmp fast ueq <8 x float> %i.auh, zeroinitializer ; 2 uses
  %.not86.i = or <8 x i1> %i.aty, %i.aui
  %i.auj = fcmp fast olt <8 x float> %i.auh, zeroinitializer
  %i.auk = select <8 x i1> %i.auj, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.aul = select <8 x i1> %i.atz, <8 x float> %i.auk, <8 x float> zeroinitializer
  %i.aum = fmul fast <8 x float> %i.auh, %i.auc   ; 2 uses
  %i.aun = bitcast <8 x float> %i.aum to <8 x i32>
  %i.auo = and <8 x i32> %i.aun, splat (i32 -2147483648)
  %i.aup = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aum) ; 3 uses
  %i.auq = fcmp fast ogt <8 x float> %i.aup, splat (float 1.000000e+00) ; 2 uses
  %i.aur = select <8 x i1> %i.auq, <8 x float> splat (float -1.000000e+00), <8 x float> %i.aup
  %i.aus = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.aup, <8 x float> splat (float 1.000000e+00))
  %i.aut = fdiv fast <8 x float> %i.aur, %i.aus   ; 3 uses
  %i.auu = fmul fast <8 x float> %i.aut, %i.aut   ; 3 uses
  %i.auv = fmul fast <8 x float> %i.auu, %i.auu   ; 7 uses
  %i.auw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.auv, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.aux = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.auv, <8 x float> nofpclass(nan inf) %i.auw, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.auy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.auv, <8 x float> nofpclass(nan inf) %i.aux, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.auz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.auv, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.ava = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.auv, <8 x float> nofpclass(nan inf) %i.auz, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.avb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.auv, <8 x float> nofpclass(nan inf) %i.ava, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.avc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.auv, <8 x float> nofpclass(nan inf) %i.avb, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.avd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.auu, <8 x float> nofpclass(nan inf) %i.auy, <8 x float> nofpclass(nan inf) %i.avc)
  %i.ave = fmul fast <8 x float> %i.avd, %i.aut
  %i.avf = select <8 x i1> %i.auq, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.avg = fadd fast <8 x float> %i.ave, %i.avf
  %i.avh = bitcast <8 x float> %i.avg to <8 x i32>
  %i.avi = or <8 x i32> %i.auo, %i.avh
  %i.avj = bitcast <8 x i32> %i.avi to <8 x float>
  %i.avk = fadd fast <8 x float> %i.aul, %i.avj
  %i.avl = bitcast <16 x i16> %i.aug to <8 x i32>
  %i.avm = and <8 x i32> %i.avl, splat (i32 -2147483648)
  %i.avn = or disjoint <8 x i32> %i.avm, splat (i32 1070137344)
  %i.avo = bitcast <8 x float> %i.avk to <8 x i32>
  %i.avp = select <8 x i1> %.not86.i, <8 x i32> zeroinitializer, <8 x i32> %i.avo
  %i.avq = select <8 x i1> %i.aty, <8 x i32> %i.avn, <8 x i32> zeroinitializer
  %i.avr = select <8 x i1> %i.aui, <8 x i32> %i.aub, <8 x i32> %i.avq
  %i.avs = or <8 x i32> %i.avp, %i.avr
  %i.avt = lshr <8 x i32> %i.avs, splat (i32 16)  ; 2 uses
  %i.avu = shufflevector <8 x i32> %i.avt, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.avv = shufflevector <8 x i32> %i.avt, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.avw = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.avu, <4 x i32> %i.avv)
  store <8 x i16> %i.avw, ptr %.13193.i, align 1, !tbaa !60
  %i.avx = getelementptr inbounds nuw i8, ptr %.194.i, i64 16 ; 2 uses
  %i.avy = getelementptr inbounds nuw i8, ptr %.13193.i, i64 16 ; 2 uses
  %i.avz = add nuw nsw i32 %.13592.i, 8           ; 3 uses
  %i.awa = or disjoint i32 %i.avz, 7
  %i.awb = icmp slt i32 %i.awa, %i.a
  br i1 %i.awb, label %bb.ad, label %._crit_edge97.i, !llvm.loop !1234

._crit_edge97.i:                                  ; preds = %bb.ad, %._crit_edge.i
  %.135.lcssa.i64 = phi i32 [ %.034.lcssa.i62, %._crit_edge.i ], [ %i.avz, %bb.ad ] ; 3 uses
  %.131.lcssa.i = phi ptr [ %.030.lcssa.i, %._crit_edge.i ], [ %i.avy, %bb.ad ] ; 2 uses
  %.1.lcssa.i65 = phi ptr [ %.0.lcssa.i63, %._crit_edge.i ], [ %i.avx, %bb.ad ] ; 2 uses
  %i.awc = or disjoint i32 %.135.lcssa.i64, 3
  %i.awd = icmp slt i32 %i.awc, %i.a
  br i1 %i.awd, label %.lr.ph105.i, label %.preheader.i66

.lr.ph105.i:                                      ; preds = %._crit_edge97.i
  %i.awe = insertelement <4 x float> poison, float %i.ari, i64 0
  %i.awf = shufflevector <4 x float> %i.awe, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.awg = fcmp fast oeq <4 x float> %i.awf, zeroinitializer ; 2 uses
  %i.awh = fcmp fast olt <4 x float> %i.awf, zeroinitializer
  %i.awi = bitcast <4 x float> %i.awf to <4 x i32>
  %isneg.inv.i70 = icmp slt <4 x i32> %i.awi, zeroinitializer
  %i.awj = select <4 x i1> %isneg.inv.i70, <4 x i32> splat (i32 1078525952), <4 x i32> zeroinitializer
  %i.awk = fdiv fast <4 x float> splat (float 1.000000e+00), %i.awf
  br label %bb.ae

.preheader.i66:                                   ; preds = %bb.ae, %._crit_edge97.i
  %.236.lcssa.i67 = phi i32 [ %.135.lcssa.i64, %._crit_edge97.i ], [ %i.bbx, %bb.ae ] ; 5 uses
  %.232.lcssa.i = phi ptr [ %.131.lcssa.i, %._crit_edge97.i ], [ %i.bbw, %bb.ae ] ; 6 uses
  %.2.lcssa.i68 = phi ptr [ %.1.lcssa.i65, %._crit_edge97.i ], [ %i.bbv, %bb.ae ] ; 6 uses
  %i.awl = icmp slt i32 %.236.lcssa.i67, %i.a
  br i1 %i.awl, label %iter.check, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor15binary_op_atan2EEEvPKtS4_Pti.exit

iter.check:                                       ; preds = %.preheader.i66
  %.232.lcssa.i272 = ptrtoaddr ptr %.232.lcssa.i to i64
  %.2.lcssa.i68271 = ptrtoaddr ptr %.2.lcssa.i68 to i64
  %i.awm = xor i32 %.236.lcssa.i67, -1
  %i.awn = add i32 %i.a, %i.awm                   ; 3 uses
  %i.awo = zext i32 %i.awn to i64
  %i.awp = add nuw nsw i64 %i.awo, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.awn, 7
  %i.awq = sub i64 %.2.lcssa.i68271, %.232.lcssa.i272
  %diff.check = icmp ugt i64 %i.awq, -64
  %or.cond411 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond411, label %.lr.ph112.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check273 = icmp ult i32 %i.awn, 31
  br i1 %min.iters.check273, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.awr = and i64 %i.awp, 24
  %n.vec = and i64 %i.awp, 8589934560             ; 5 uses
  %i.aws = shl nuw nsw i64 %n.vec, 1              ; 2 uses
  %i.awt = getelementptr i8, ptr %.2.lcssa.i68, i64 %i.aws
  %i.awu = getelementptr i8, ptr %.232.lcssa.i, i64 %i.aws
  %i.awv = trunc i64 %n.vec to i32
  %i.aww = add i32 %.236.lcssa.i67, %i.awv
  %i.awx = insertelement <16 x float> poison, float %i.ari, i64 0
  %i.awy = shufflevector <16 x float> %i.awx, <16 x float> poison, <16 x i32> zeroinitializer
  %i.awz = insertelement <8 x float> poison, float %i.ari, i64 0
  %i.axa = shufflevector <8 x float> %i.awz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.axb = insertelement <4 x float> poison, float %i.ari, i64 0
  %i.axc = shufflevector <4 x float> %i.axb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.axd = insertelement <2 x float> poison, float %i.ari, i64 0
  %i.axe = shufflevector <2 x float> %i.axd, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.axf = shl i64 %index, 1                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.2.lcssa.i68, i64 %i.axf
  %next.gep274 = getelementptr i8, ptr %.232.lcssa.i, i64 %i.axf
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !56
  %i.axg = zext <32 x i16> %wide.load to <32 x i32>
  %i.axh = shl nuw <32 x i32> %i.axg, splat (i32 16)
  %i.axi = bitcast <32 x i32> %i.axh to <32 x float> ; 6 uses
  %i.axj = extractelement <32 x float> %i.axi, i64 0
  %i.axk = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.axj, float %i.ari)
  %i.axl = shufflevector <32 x float> %i.axi, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.axm = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.axl, <16 x float> %i.awy)
  %i.axn = shufflevector <32 x float> %i.axi, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.axo = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.axn, <8 x float> %i.axa)
  %i.axp = shufflevector <32 x float> %i.axi, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.axq = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.axp, <4 x float> %i.axc)
  %i.axr = extractelement <32 x float> %i.axi, i64 29
  %i.axs = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.axr, float %i.ari)
  %i.axt = shufflevector <32 x float> %i.axi, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.axu = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.axt, <2 x float> %i.axe)
  %i.axv = insertelement <32 x float> poison, float %i.axk, i64 0
  %i.axw = shufflevector <16 x float> %i.axm, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.axx = shufflevector <32 x float> %i.axv, <32 x float> %i.axw, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.axy = shufflevector <8 x float> %i.axo, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.axz = shufflevector <32 x float> %i.axx, <32 x float> %i.axy, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aya = shufflevector <4 x float> %i.axq, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ayb = shufflevector <32 x float> %i.axz, <32 x float> %i.aya, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.ayc = insertelement <32 x float> %i.ayb, float %i.axs, i64 29
  %i.ayd = shufflevector <2 x float> %i.axu, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aye = shufflevector <32 x float> %i.ayc, <32 x float> %i.ayd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.ayf = bitcast <32 x float> %i.aye to <32 x i32>
  %i.ayg = lshr <32 x i32> %i.ayf, splat (i32 16)
  %i.ayh = trunc nuw <32 x i32> %i.ayg to <32 x i16>
  store <32 x i16> %i.ayh, ptr %next.gep274, align 2, !tbaa !56
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ayi = icmp eq i64 %index.next, %n.vec
  br i1 %i.ayi, label %middle.block, label %vector.body, !llvm.loop !1235

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.awp, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor15binary_op_atan2EEEvPKtS4_Pti.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.awr, 0
  br i1 %min.epilog.iters.check, label %.lr.ph112.i.preheader, label %vec.epilog.ph, !prof !64

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec275 = and i64 %i.awp, 8589934584          ; 4 uses
  %i.ayj = shl nuw nsw i64 %n.vec275, 1           ; 2 uses
  %i.ayk = getelementptr i8, ptr %.2.lcssa.i68, i64 %i.ayj
  %i.ayl = getelementptr i8, ptr %.232.lcssa.i, i64 %i.ayj
  %i.aym = trunc i64 %n.vec275 to i32
  %i.ayn = add i32 %.236.lcssa.i67, %i.aym
  %i.ayo = insertelement <4 x float> poison, float %i.ari, i64 0
  %i.ayp = shufflevector <4 x float> %i.ayo, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index276 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next280, %vec.epilog.vector.body ] ; 2 uses
  %i.ayq = shl i64 %index276, 1                   ; 2 uses
  %next.gep277 = getelementptr i8, ptr %.2.lcssa.i68, i64 %i.ayq
  %next.gep278 = getelementptr i8, ptr %.232.lcssa.i, i64 %i.ayq
  %wide.load279 = load <8 x i16>, ptr %next.gep277, align 2, !tbaa !56
  %i.ayr = zext <8 x i16> %wide.load279 to <8 x i32>
  %i.ays = shl nuw <8 x i32> %i.ayr, splat (i32 16)
  %i.ayt = bitcast <8 x i32> %i.ays to <8 x float> ; 5 uses
  %i.ayu = extractelement <8 x float> %i.ayt, i64 0
  %i.ayv = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ayu, float %i.ari)
  %i.ayw = extractelement <8 x float> %i.ayt, i64 1
  %i.ayx = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ayw, float %i.ari)
  %i.ayy = extractelement <8 x float> %i.ayt, i64 2
  %i.ayz = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ayy, float %i.ari)
  %i.aza = shufflevector <8 x float> %i.ayt, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.azb = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.aza, <4 x float> %i.ayp)
  %i.azc = extractelement <8 x float> %i.ayt, i64 7
  %i.azd = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.azc, float %i.ari)
  %i.aze = insertelement <8 x float> poison, float %i.ayv, i64 0
  %i.azf = insertelement <8 x float> %i.aze, float %i.ayx, i64 1
  %i.azg = insertelement <8 x float> %i.azf, float %i.ayz, i64 2
  %i.azh = shufflevector <4 x float> %i.azb, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.azi = shufflevector <8 x float> %i.azg, <8 x float> %i.azh, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.azj = insertelement <8 x float> %i.azi, float %i.azd, i64 7
  %i.azk = bitcast <8 x float> %i.azj to <8 x i32>
  %i.azl = lshr <8 x i32> %i.azk, splat (i32 16)
  %i.azm = trunc nuw <8 x i32> %i.azl to <8 x i16>
  store <8 x i16> %i.azm, ptr %next.gep278, align 2, !tbaa !56
  %index.next280 = add nuw i64 %index276, 8       ; 2 uses
  %i.azn = icmp eq i64 %index.next280, %n.vec275
  br i1 %i.azn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1236

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n281 = icmp eq i64 %i.awp, %n.vec275
  br i1 %cmp.n281, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor15binary_op_atan2EEEvPKtS4_Pti.exit, label %.lr.ph112.i.preheader

.lr.ph112.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3111.i.ph = phi ptr [ %.2.lcssa.i68, %iter.check ], [ %i.awt, %vec.epilog.iter.check ], [ %i.ayk, %vec.epilog.middle.block ] ; 3 uses
  %.333110.i.ph = phi ptr [ %.232.lcssa.i, %iter.check ], [ %i.awu, %vec.epilog.iter.check ], [ %i.ayl, %vec.epilog.middle.block ] ; 3 uses
  %.337109.i.ph = phi i32 [ %.236.lcssa.i67, %iter.check ], [ %i.aww, %vec.epilog.iter.check ], [ %i.ayn, %vec.epilog.middle.block ] ; 4 uses
  %i.azo = sub i32 %i.a, %.337109.i.ph
  %.neg = add i32 %.337109.i.ph, 1
  %xtraiter = and i32 %i.azo, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph112.i.prol.loopexit, label %.lr.ph112.i.prol

.lr.ph112.i.prol:                                 ; preds = %.lr.ph112.i.preheader
  %i.azp = getelementptr inbounds nuw i8, ptr %.3111.i.ph, i64 2
  %i.azq = load i16, ptr %.3111.i.ph, align 2, !tbaa !56
  %i.azr = zext i16 %i.azq to i32
  %i.azs = shl nuw i32 %i.azr, 16
  %i.azt = bitcast i32 %i.azs to float
  %i.azu = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.azt, float %i.ari)
  %i.azv = bitcast float %i.azu to i32
  %i.azw = lshr i32 %i.azv, 16
  %i.azx = trunc nuw i32 %i.azw to i16
  %i.azy = getelementptr inbounds nuw i8, ptr %.333110.i.ph, i64 2
  store i16 %i.azx, ptr %.333110.i.ph, align 2, !tbaa !56
  %i.azz = add nuw nsw i32 %.337109.i.ph, 1
  br label %.lr.ph112.i.prol.loopexit

.lr.ph112.i.prol.loopexit:                        ; preds = %.lr.ph112.i.prol, %.lr.ph112.i.preheader
  %.3111.i.unr = phi ptr [ %.3111.i.ph, %.lr.ph112.i.preheader ], [ %i.azp, %.lr.ph112.i.prol ]
  %.333110.i.unr = phi ptr [ %.333110.i.ph, %.lr.ph112.i.preheader ], [ %i.azy, %.lr.ph112.i.prol ]
  %.337109.i.unr = phi i32 [ %.337109.i.ph, %.lr.ph112.i.preheader ], [ %i.azz, %.lr.ph112.i.prol ]
  %i.baa = icmp eq i32 %i.a, %.neg
  br i1 %i.baa, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor15binary_op_atan2EEEvPKtS4_Pti.exit, label %.lr.ph112.i

bb.ae:                                            ; preds = %bb.ae, %.lr.ph105.i
  %.2103.i = phi ptr [ %.1.lcssa.i65, %.lr.ph105.i ], [ %i.bbv, %bb.ae ] ; 2 uses
  %.232102.i = phi ptr [ %.131.lcssa.i, %.lr.ph105.i ], [ %i.bbw, %bb.ae ] ; 2 uses
  %.236101.i = phi i32 [ %.135.lcssa.i64, %.lr.ph105.i ], [ %i.bbx, %bb.ae ]
  %i.bab = load i64, ptr %.2103.i, align 1, !tbaa !60
  %i.bac = insertelement <2 x i64> poison, i64 %i.bab, i64 0
  %i.bad = bitcast <2 x i64> %i.bac to <8 x i16>
  %i.bae = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bad, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.baf = bitcast <8 x i16> %i.bae to <4 x float> ; 3 uses
  %i.bag = fcmp fast oeq <4 x float> %i.baf, zeroinitializer ; 2 uses
  %.not83.i = or <4 x i1> %i.awg, %i.bag
  %i.bah = fcmp fast olt <4 x float> %i.baf, zeroinitializer
  %i.bai = select <4 x i1> %i.bah, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.baj = select <4 x i1> %i.awh, <4 x float> %i.bai, <4 x float> zeroinitializer
  %i.bak = fmul fast <4 x float> %i.baf, %i.awk   ; 2 uses
  %i.bal = bitcast <4 x float> %i.bak to <4 x i32>
  %i.bam = and <4 x i32> %i.bal, splat (i32 -2147483648)
  %i.ban = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bak) ; 3 uses
  %i.bao = fcmp fast ogt <4 x float> %i.ban, splat (float 1.000000e+00) ; 2 uses
  %i.bap = select <4 x i1> %i.bao, <4 x float> splat (float -1.000000e+00), <4 x float> %i.ban
  %i.baq = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ban, <4 x float> splat (float 1.000000e+00))
  %i.bar = fdiv fast <4 x float> %i.bap, %i.baq   ; 3 uses
  %i.bas = fmul fast <4 x float> %i.bar, %i.bar   ; 3 uses
  %i.bat = fmul fast <4 x float> %i.bas, %i.bas   ; 7 uses
  %i.bau = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bat, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.bav = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bat, <4 x float> nofpclass(nan inf) %i.bau, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.baw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bat, <4 x float> nofpclass(nan inf) %i.bav, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.bax = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bat, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.bay = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bat, <4 x float> nofpclass(nan inf) %i.bax, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.baz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bat, <4 x float> nofpclass(nan inf) %i.bay, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.bba = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bat, <4 x float> nofpclass(nan inf) %i.baz, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.bbb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bas, <4 x float> nofpclass(nan inf) %i.baw, <4 x float> nofpclass(nan inf) %i.bba)
  %i.bbc = fmul fast <4 x float> %i.bbb, %i.bar
  %i.bbd = select <4 x i1> %i.bao, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.bbe = fadd fast <4 x float> %i.bbc, %i.bbd
  %i.bbf = bitcast <4 x float> %i.bbe to <4 x i32>
  %i.bbg = or <4 x i32> %i.bam, %i.bbf
  %i.bbh = bitcast <4 x i32> %i.bbg to <4 x float>
  %i.bbi = fadd fast <4 x float> %i.baj, %i.bbh
  %i.bbj = bitcast <8 x i16> %i.bae to <4 x i32>
  %i.bbk = and <4 x i32> %i.bbj, splat (i32 -2147483648)
  %i.bbl = or disjoint <4 x i32> %i.bbk, splat (i32 1070137344)
  %i.bbm = bitcast <4 x float> %i.bbi to <4 x i32>
  %i.bbn = select <4 x i1> %.not83.i, <4 x i32> zeroinitializer, <4 x i32> %i.bbm
  %i.bbo = select <4 x i1> %i.awg, <4 x i32> %i.bbl, <4 x i32> zeroinitializer
  %i.bbp = select <4 x i1> %i.bag, <4 x i32> %i.awj, <4 x i32> %i.bbo
  %i.bbq = or <4 x i32> %i.bbn, %i.bbp
  %i.bbr = lshr <4 x i32> %i.bbq, splat (i32 16)
  %i.bbs = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bbr, <4 x i32> poison)
  %i.bbt = bitcast <8 x i16> %i.bbs to <2 x i64>
  %i.bbu = extractelement <2 x i64> %i.bbt, i64 0
  store i64 %i.bbu, ptr %.232102.i, align 1, !tbaa !60
  %i.bbv = getelementptr inbounds nuw i8, ptr %.2103.i, i64 8 ; 2 uses
  %i.bbw = getelementptr inbounds nuw i8, ptr %.232102.i, i64 8 ; 2 uses
  %i.bbx = add nuw nsw i32 %.236101.i, 4          ; 3 uses
  %i.bby = or disjoint i32 %i.bbx, 3
  %i.bbz = icmp slt i32 %i.bby, %i.a
  br i1 %i.bbz, label %bb.ae, label %.preheader.i66, !llvm.loop !1237

.lr.ph112.i:                                      ; preds = %.lr.ph112.i.prol.loopexit, %.lr.ph112.i
  %.3111.i = phi ptr [ %i.bck, %.lr.ph112.i ], [ %.3111.i.unr, %.lr.ph112.i.prol.loopexit ] ; 3 uses
  %.333110.i = phi ptr [ %i.bct, %.lr.ph112.i ], [ %.333110.i.unr, %.lr.ph112.i.prol.loopexit ] ; 3 uses
  %.337109.i = phi i32 [ %i.bcu, %.lr.ph112.i ], [ %.337109.i.unr, %.lr.ph112.i.prol.loopexit ]
  %i.bca = getelementptr inbounds nuw i8, ptr %.3111.i, i64 2
  %i.bcb = load i16, ptr %.3111.i, align 2, !tbaa !56
  %i.bcc = zext i16 %i.bcb to i32
  %i.bcd = shl nuw i32 %i.bcc, 16
  %i.bce = bitcast i32 %i.bcd to float
  %i.bcf = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.bce, float %i.ari)
  %i.bcg = bitcast float %i.bcf to i32
  %i.bch = lshr i32 %i.bcg, 16
  %i.bci = trunc nuw i32 %i.bch to i16
  %i.bcj = getelementptr inbounds nuw i8, ptr %.333110.i, i64 2
  store i16 %i.bci, ptr %.333110.i, align 2, !tbaa !56
  %i.bck = getelementptr inbounds nuw i8, ptr %.3111.i, i64 4
  %i.bcl = load i16, ptr %i.bca, align 2, !tbaa !56
  %i.bcm = zext i16 %i.bcl to i32
  %i.bcn = shl nuw i32 %i.bcm, 16
  %i.bco = bitcast i32 %i.bcn to float
  %i.bcp = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.bco, float %i.ari)
  %i.bcq = bitcast float %i.bcp to i32
  %i.bcr = lshr i32 %i.bcq, 16
  %i.bcs = trunc nuw i32 %i.bcr to i16
  %i.bct = getelementptr inbounds nuw i8, ptr %.333110.i, i64 4
  store i16 %i.bcs, ptr %i.bcj, align 2, !tbaa !56
  %i.bcu = add nuw nsw i32 %.337109.i, 2          ; 2 uses
  %exitcond.not.i69.1 = icmp eq i32 %i.bcu, %i.a
  br i1 %exitcond.not.i69.1, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor15binary_op_atan2EEEvPKtS4_Pti.exit, label %.lr.ph112.i, !llvm.loop !1238

bb.af:                                            ; preds = %bb.aa
  %i.bcv = icmp eq i32 %3, 1
  br i1 %i.bcv, label %bb.ag, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor15binary_op_atan2EEEvPKtS4_Pti.exit

bb.ag:                                            ; preds = %bb.af
  switch i32 %.sroa.speculated, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor15binary_op_atan2EEEvPKtS4_Pti.exit [
    i32 16, label %.lr.ph131.i
    i32 8, label %.lr.ph127.i
    i32 4, label %.lr.ph.i72
  ]

.lr.ph131.i:                                      ; preds = %bb.ag
  %i.bcw = load <16 x i16>, ptr %0, align 1, !tbaa !60 ; 2 uses
  %i.bcx = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bcw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bcy = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bcw, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bcz = shufflevector <16 x i16> %i.bcx, <16 x i16> %i.bcy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bda = shufflevector <16 x i16> %i.bcx, <16 x i16> %i.bcy, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bdb = bitcast <16 x i16> %i.bcz to <8 x i32>
  %i.bdc = bitcast <16 x i16> %i.bda to <8 x i32>
  %i.bdd = shufflevector <8 x i32> %i.bdb, <8 x i32> %i.bdc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bde = bitcast <16 x i32> %i.bdd to <16 x float> ; 4 uses
  %i.bdf = fcmp fast one <16 x float> %i.bde, zeroinitializer
  %i.bdg = fcmp fast olt <16 x float> %i.bde, zeroinitializer
  %i.bdh = select fast <16 x i1> %i.bdg, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.bdi = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.bde)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph131.i
  %.028130.i = phi ptr [ %1, %.lr.ph131.i ], [ %i.bfd, %bb.ah ] ; 2 uses
  %.030129.i = phi ptr [ %2, %.lr.ph131.i ], [ %i.bfe, %bb.ah ] ; 2 uses
  %.033128.i = phi i32 [ 0, %.lr.ph131.i ], [ %i.bff, %bb.ah ]
  %i.bdj = load i16, ptr %.028130.i, align 2, !tbaa !56
  %i.bdk = zext i16 %i.bdj to i32
  %i.bdl = shl nuw i32 %i.bdk, 16
  %i.bdm = insertelement <16 x i32> poison, i32 %i.bdl, i64 0
  %i.bdn = bitcast <16 x i32> %i.bdm to <16 x float>
  %i.bdo = shufflevector <16 x float> %i.bdn, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.bdp = fcmp fast one <16 x float> %i.bdo, zeroinitializer
  %i.bdq = fcmp fast olt <16 x float> %i.bdo, zeroinitializer
  %i.bdr = select fast <16 x i1> %i.bdq, <16 x float> %i.bdh, <16 x float> zeroinitializer
  %i.bds = fdiv fast <16 x float> %i.bde, %i.bdo  ; 2 uses
  %i.bdt = bitcast <16 x float> %i.bds to <16 x i32>
  %i.bdu = and <16 x i32> %i.bdt, splat (i32 -2147483648)
  %i.bdv = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.bds) ; 3 uses
  %i.bdw = fcmp fast ogt <16 x float> %i.bdv, splat (float 1.000000e+00) ; 2 uses
  %i.bdx = select fast <16 x i1> %i.bdw, <16 x float> splat (float -1.000000e+00), <16 x float> %i.bdv
  %i.bdy = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.bdv, <16 x float> splat (float 1.000000e+00))
  %i.bdz = fdiv fast <16 x float> %i.bdx, %i.bdy  ; 3 uses
  %i.bea = fmul fast <16 x float> %i.bdz, %i.bdz  ; 3 uses
  %i.beb = fmul fast <16 x float> %i.bea, %i.bea  ; 7 uses
  %i.bec = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.beb, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.bed = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.beb, <16 x float> nofpclass(nan inf) %i.bec, <16 x float> splat (float f0xBE117200))
  %i.bee = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.beb, <16 x float> nofpclass(nan inf) %i.bed, <16 x float> splat (float f0xBEAAAA53))
  %i.bef = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.beb, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.beg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.beb, <16 x float> nofpclass(nan inf) %i.bef, <16 x float> splat (float f0x3DD9ED24))
  %i.beh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.beb, <16 x float> nofpclass(nan inf) %i.beg, <16 x float> splat (float f0x3E4CB974))
  %i.bei = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.beb, <16 x float> nofpclass(nan inf) %i.beh, <16 x float> splat (float 1.000000e+00))
  %i.bej = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bea, <16 x float> nofpclass(nan inf) %i.bee, <16 x float> nofpclass(nan inf) %i.bei)
  %i.bek = fmul fast <16 x float> %i.bej, %i.bdz
  %i.bel = select fast <16 x i1> %i.bdw, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.bem = fadd fast <16 x float> %i.bek, %i.bel
end_hunk_13
begin_hunk_14_@_ZN4ncnnL22binary_op_vector_bf16sINS_27BinaryOp_x86_avx512_functor16binary_op_ratan2EEEvPKtS4_Ptiiii:bb.a

.lr.ph150.i40:                                    ; preds = %.preheader141.i
  %i.mg = fcmp fast ueq <8 x float> %i.lv, zeroinitializer ; 2 uses
  %i.mh = bitcast <8 x float> %i.lv to <8 x i32>
  %i.mi = and <8 x i32> %i.mh, splat (i32 -2147483648)
  %i.mj = fcmp fast olt <8 x float> %i.lv, zeroinitializer
  %i.mk = select <8 x i1> %i.mj, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.ml = or disjoint <8 x i32> %i.mi, splat (i32 1070137344)
  br label %bb.l

bb.k:                                             ; preds = %bb.k, %.lr.ph.i42
  %.0144.i = phi ptr [ %0, %.lr.ph.i42 ], [ %i.oi, %bb.k ] ; 2 uses
  %.035143.i = phi ptr [ %2, %.lr.ph.i42 ], [ %i.oj, %bb.k ] ; 2 uses
  %.039142.i = phi i32 [ 0, %.lr.ph.i42 ], [ %i.ok, %bb.k ]
  %i.mm = load <16 x i16>, ptr %.0144.i, align 1, !tbaa !60 ; 2 uses
  %i.mn = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.mm, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.mo = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.mm, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.mp = shufflevector <16 x i16> %i.mn, <16 x i16> %i.mo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.mq = shufflevector <16 x i16> %i.mn, <16 x i16> %i.mo, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.mr = bitcast <16 x i16> %i.mp to <8 x i32>
  %i.ms = bitcast <16 x i16> %i.mq to <8 x i32>
  %i.mt = shufflevector <8 x i32> %i.mr, <8 x i32> %i.ms, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.mu = bitcast <16 x i32> %i.mt to <16 x float> ; 3 uses
  %i.mv = fcmp fast one <16 x float> %i.mu, zeroinitializer
  %i.mw = fcmp fast olt <16 x float> %i.mu, zeroinitializer
  %i.mx = select fast <16 x i1> %i.mw, <16 x float> %i.mb, <16 x float> zeroinitializer
  %i.my = fdiv fast <16 x float> %i.lx, %i.mu     ; 2 uses
  %i.mz = bitcast <16 x float> %i.my to <16 x i32>
  %i.na = and <16 x i32> %i.mz, splat (i32 -2147483648)
  %i.nb = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.my) ; 3 uses
  %i.nc = fcmp fast ogt <16 x float> %i.nb, splat (float 1.000000e+00) ; 2 uses
  %i.nd = select fast <16 x i1> %i.nc, <16 x float> splat (float -1.000000e+00), <16 x float> %i.nb
  %i.ne = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.nb, <16 x float> splat (float 1.000000e+00))
  %i.nf = fdiv fast <16 x float> %i.nd, %i.ne     ; 3 uses
  %i.ng = fmul fast <16 x float> %i.nf, %i.nf     ; 3 uses
  %i.nh = fmul fast <16 x float> %i.ng, %i.ng     ; 7 uses
  %i.ni = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nh, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.nj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nh, <16 x float> nofpclass(nan inf) %i.ni, <16 x float> splat (float f0xBE117200))
  %i.nk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nh, <16 x float> nofpclass(nan inf) %i.nj, <16 x float> splat (float f0xBEAAAA53))
  %i.nl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nh, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.nm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nh, <16 x float> nofpclass(nan inf) %i.nl, <16 x float> splat (float f0x3DD9ED24))
  %i.nn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nh, <16 x float> nofpclass(nan inf) %i.nm, <16 x float> splat (float f0x3E4CB974))
  %i.no = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nh, <16 x float> nofpclass(nan inf) %i.nn, <16 x float> splat (float 1.000000e+00))
  %i.np = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ng, <16 x float> nofpclass(nan inf) %i.nk, <16 x float> nofpclass(nan inf) %i.no)
  %i.nq = fmul fast <16 x float> %i.np, %i.nf
  %i.nr = select fast <16 x i1> %i.nc, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.ns = fadd fast <16 x float> %i.nq, %i.nr
  %i.nt = bitcast <16 x float> %i.ns to <16 x i32>
  %i.nu = or <16 x i32> %i.na, %i.nt
  %i.nv = bitcast <16 x i32> %i.nu to <16 x float>
  %i.nw = fadd fast <16 x float> %i.mx, %i.nv
  %i.nx = icmp slt <16 x i32> %i.mt, zeroinitializer
  %i.ny = select fast <16 x i1> %i.nx, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.nz = select <16 x i1> %i.mv, <16 x float> %i.nw, <16 x float> %i.mc
  %i.oa = select <16 x i1> %i.lz, <16 x float> %i.nz, <16 x float> %i.ny
  %i.ob = bitcast <16 x float> %i.oa to <16 x i32>
  %i.oc = lshr <16 x i32> %i.ob, splat (i32 16)   ; 2 uses
  %i.od = shufflevector <16 x i32> %i.oc, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.oe = shufflevector <16 x i32> %i.oc, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.of = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.od, <8 x i32> %i.oe)
  %i.og = bitcast <16 x i16> %i.of to <4 x i64>
  %i.oh = shufflevector <4 x i64> %i.og, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.oh, ptr %.035143.i, align 1, !tbaa !60
  %i.oi = getelementptr inbounds nuw i8, ptr %.0144.i, i64 32 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.035143.i, i64 32 ; 2 uses
  %i.ok = add nuw nsw i32 %.039142.i, 16          ; 2 uses
  %i.ol = or disjoint i32 %i.ok, 15
  %i.om = icmp slt i32 %i.ol, %i.a
  br i1 %i.om, label %bb.k, label %.preheader141.loopexit.i, !llvm.loop !1248

.preheader140.i:                                  ; preds = %bb.l, %.preheader141.i
  %.140.lcssa.i = phi i32 [ %.039.lcssa.i, %.preheader141.i ], [ %i.qt, %bb.l ] ; 3 uses
  %.136.lcssa.i = phi ptr [ %.035.lcssa.i, %.preheader141.i ], [ %i.qs, %bb.l ] ; 2 uses
  %.1.lcssa.i35 = phi ptr [ %.0.lcssa.i34, %.preheader141.i ], [ %i.qr, %bb.l ] ; 2 uses
  %i.on = or disjoint i32 %.140.lcssa.i, 3
  %i.oo = icmp slt i32 %i.on, %i.a
  br i1 %i.oo, label %.lr.ph157.i, label %.preheader.i36

.lr.ph157.i:                                      ; preds = %.preheader140.i
  %i.op = fcmp fast oeq <4 x float> %i.lw, zeroinitializer ; 2 uses
  %i.oq = bitcast <4 x float> %i.lw to <4 x i32>
  %i.or = and <4 x i32> %i.oq, splat (i32 -2147483648)
  %i.os = fcmp fast olt <4 x float> %i.lw, zeroinitializer
  %i.ot = select <4 x i1> %i.os, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.ou = or disjoint <4 x i32> %i.or, splat (i32 1070137344)
  br label %bb.m

bb.l:                                             ; preds = %bb.l, %.lr.ph150.i40
  %.1149.i41 = phi ptr [ %.0.lcssa.i34, %.lr.ph150.i40 ], [ %i.qr, %bb.l ] ; 2 uses
  %.136148.i = phi ptr [ %.035.lcssa.i, %.lr.ph150.i40 ], [ %i.qs, %bb.l ] ; 2 uses
  %.140147.i = phi i32 [ %.039.lcssa.i, %.lr.ph150.i40 ], [ %i.qt, %bb.l ]
  %i.ov = load <8 x i16>, ptr %.1149.i41, align 1, !tbaa !60 ; 2 uses
  %i.ow = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ov, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ox = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ov, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.oy = shufflevector <8 x i16> %i.ow, <8 x i16> %i.ox, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.oz = bitcast <16 x i16> %i.oy to <8 x float> ; 3 uses
  %i.pa = fcmp fast ueq <8 x float> %i.oz, zeroinitializer ; 2 uses
  %.not139.i = or <8 x i1> %i.mg, %i.pa
  %i.pb = fcmp fast olt <8 x float> %i.oz, zeroinitializer
  %i.pc = select <8 x i1> %i.pb, <8 x float> %i.mk, <8 x float> zeroinitializer
  %i.pd = fdiv fast <8 x float> %i.lv, %i.oz      ; 2 uses
  %i.pe = bitcast <8 x float> %i.pd to <8 x i32>
  %i.pf = and <8 x i32> %i.pe, splat (i32 -2147483648)
  %i.pg = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.pd) ; 3 uses
  %i.ph = fcmp fast ogt <8 x float> %i.pg, splat (float 1.000000e+00) ; 2 uses
  %i.pi = select <8 x i1> %i.ph, <8 x float> splat (float -1.000000e+00), <8 x float> %i.pg
  %i.pj = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.pg, <8 x float> splat (float 1.000000e+00))
  %i.pk = fdiv fast <8 x float> %i.pi, %i.pj      ; 3 uses
  %i.pl = fmul fast <8 x float> %i.pk, %i.pk      ; 3 uses
  %i.pm = fmul fast <8 x float> %i.pl, %i.pl      ; 7 uses
  %i.pn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pm, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.po = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pm, <8 x float> nofpclass(nan inf) %i.pn, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.pp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pm, <8 x float> nofpclass(nan inf) %i.po, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.pq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pm, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.pr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pm, <8 x float> nofpclass(nan inf) %i.pq, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.ps = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pm, <8 x float> nofpclass(nan inf) %i.pr, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.pt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pm, <8 x float> nofpclass(nan inf) %i.ps, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.pu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pl, <8 x float> nofpclass(nan inf) %i.pp, <8 x float> nofpclass(nan inf) %i.pt)
  %i.pv = fmul fast <8 x float> %i.pu, %i.pk
  %i.pw = select <8 x i1> %i.ph, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.px = fadd fast <8 x float> %i.pv, %i.pw
  %i.py = bitcast <8 x float> %i.px to <8 x i32>
  %i.pz = or <8 x i32> %i.pf, %i.py
  %i.qa = bitcast <8 x i32> %i.pz to <8 x float>
  %i.qb = fadd fast <8 x float> %i.pc, %i.qa
  %i.qc = bitcast <16 x i16> %i.oy to <8 x i32>
  %i.qd = and <8 x i32> %i.qc, splat (i32 -2147483648)
  %i.qe = or disjoint <8 x i32> %i.qd, splat (i32 1078530011)
  %i.qf = bitcast <8 x i32> %i.qe to <8 x float>
  %i.qg = fcmp fast uge <8 x float> %i.qf, zeroinitializer
  %i.qh = select <8 x i1> %i.qg, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078525952)
  %i.qi = bitcast <8 x float> %i.qb to <8 x i32>
  %i.qj = select <8 x i1> %.not139.i, <8 x i32> zeroinitializer, <8 x i32> %i.qi
  %i.qk = select <8 x i1> %i.pa, <8 x i32> %i.ml, <8 x i32> zeroinitializer
  %i.ql = select <8 x i1> %i.mg, <8 x i32> %i.qh, <8 x i32> %i.qk
  %i.qm = or <8 x i32> %i.qj, %i.ql
  %i.qn = lshr <8 x i32> %i.qm, splat (i32 16)    ; 2 uses
  %i.qo = shufflevector <8 x i32> %i.qn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.qp = shufflevector <8 x i32> %i.qn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.qq = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.qo, <4 x i32> %i.qp)
  store <8 x i16> %i.qq, ptr %.136148.i, align 1, !tbaa !60
  %i.qr = getelementptr inbounds nuw i8, ptr %.1149.i41, i64 16 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.136148.i, i64 16 ; 2 uses
  %i.qt = add nuw nsw i32 %.140147.i, 8           ; 3 uses
  %i.qu = or disjoint i32 %i.qt, 7
  %i.qv = icmp slt i32 %i.qu, %i.a
  br i1 %i.qv, label %bb.l, label %.preheader140.i, !llvm.loop !1249

.preheader.i36:                                   ; preds = %bb.m, %.preheader140.i
  %.241.lcssa.i = phi i32 [ %.140.lcssa.i, %.preheader140.i ], [ %i.wk, %bb.m ] ; 5 uses
  %.237.lcssa.i = phi ptr [ %.136.lcssa.i, %.preheader140.i ], [ %i.wj, %bb.m ] ; 6 uses
  %.2.lcssa.i37 = phi ptr [ %.1.lcssa.i35, %.preheader140.i ], [ %i.wi, %bb.m ] ; 6 uses
  %i.qw = icmp slt i32 %.241.lcssa.i, %i.a
  br i1 %i.qw, label %iter.check341, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor16binary_op_ratan2EEEvPKtS4_Pti.exit

iter.check341:                                    ; preds = %.preheader.i36
  %.237.lcssa.i325 = ptrtoaddr ptr %.237.lcssa.i to i64
  %.2.lcssa.i37324 = ptrtoaddr ptr %.2.lcssa.i37 to i64
  %i.qx = xor i32 %.241.lcssa.i, -1
  %i.qy = add i32 %i.a, %i.qx                     ; 3 uses
  %i.qz = zext i32 %i.qy to i64
  %i.ra = add nuw nsw i64 %i.qz, 1                ; 5 uses
  %min.iters.check326 = icmp ult i32 %i.qy, 7
  %i.rb = sub i64 %.2.lcssa.i37324, %.237.lcssa.i325
  %diff.check328 = icmp ugt i64 %i.rb, -64
  %or.cond = select i1 %min.iters.check326, i1 true, i1 %diff.check328
  br i1 %or.cond, label %.lr.ph164.i.preheader, label %vector.main.loop.iter.check329

vector.main.loop.iter.check329:                   ; preds = %iter.check341
  %min.iters.check330 = icmp ult i32 %i.qy, 31
  br i1 %min.iters.check330, label %vec.epilog.ph345, label %vector.ph331

vector.ph331:                                     ; preds = %vector.main.loop.iter.check329
  %i.rc = and i64 %i.ra, 24
  %n.vec332 = and i64 %i.ra, 8589934560           ; 5 uses
  %i.rd = shl nuw nsw i64 %n.vec332, 1            ; 2 uses
  %i.re = getelementptr i8, ptr %.2.lcssa.i37, i64 %i.rd
  %i.rf = getelementptr i8, ptr %.237.lcssa.i, i64 %i.rd
  %i.rg = trunc i64 %n.vec332 to i32
  %i.rh = add i32 %.241.lcssa.i, %i.rg
  %i.ri = insertelement <16 x float> poison, float %i.kr, i64 0
  %i.rj = shufflevector <16 x float> %i.ri, <16 x float> poison, <16 x i32> zeroinitializer
  %i.rk = insertelement <8 x float> poison, float %i.kr, i64 0
  %i.rl = shufflevector <8 x float> %i.rk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rm = insertelement <4 x float> poison, float %i.kr, i64 0
  %i.rn = shufflevector <4 x float> %i.rm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ro = insertelement <2 x float> poison, float %i.kr, i64 0
  %i.rp = shufflevector <2 x float> %i.ro, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body333

vector.body333:                                   ; preds = %vector.ph331, %vector.body333
  %index334 = phi i64 [ 0, %vector.ph331 ], [ %index.next338, %vector.body333 ] ; 2 uses
  %i.rq = shl i64 %index334, 1                    ; 2 uses
  %next.gep335 = getelementptr i8, ptr %.2.lcssa.i37, i64 %i.rq
  %next.gep336 = getelementptr i8, ptr %.237.lcssa.i, i64 %i.rq
  %wide.load337 = load <32 x i16>, ptr %next.gep335, align 2, !tbaa !56
  %i.rr = zext <32 x i16> %wide.load337 to <32 x i32>
  %i.rs = shl nuw <32 x i32> %i.rr, splat (i32 16)
  %i.rt = bitcast <32 x i32> %i.rs to <32 x float> ; 6 uses
  %i.ru = extractelement <32 x float> %i.rt, i64 0
  %i.rv = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.kr, float %i.ru)
  %i.rw = shufflevector <32 x float> %i.rt, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.rx = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.rj, <16 x float> %i.rw)
  %i.ry = shufflevector <32 x float> %i.rt, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.rz = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.rl, <8 x float> %i.ry)
  %i.sa = shufflevector <32 x float> %i.rt, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.sb = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.rn, <4 x float> %i.sa)
  %i.sc = extractelement <32 x float> %i.rt, i64 29
  %i.sd = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.kr, float %i.sc)
  %i.se = shufflevector <32 x float> %i.rt, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.sf = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.rp, <2 x float> %i.se)
  %i.sg = insertelement <32 x float> poison, float %i.rv, i64 0
  %i.sh = shufflevector <16 x float> %i.rx, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.si = shufflevector <32 x float> %i.sg, <32 x float> %i.sh, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sj = shufflevector <8 x float> %i.rz, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sk = shufflevector <32 x float> %i.si, <32 x float> %i.sj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sl = shufflevector <4 x float> %i.sb, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sm = shufflevector <32 x float> %i.sk, <32 x float> %i.sl, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.sn = insertelement <32 x float> %i.sm, float %i.sd, i64 29
  %i.so = shufflevector <2 x float> %i.sf, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sp = shufflevector <32 x float> %i.sn, <32 x float> %i.so, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.sq = bitcast <32 x float> %i.sp to <32 x i32>
  %i.sr = lshr <32 x i32> %i.sq, splat (i32 16)
  %i.ss = trunc nuw <32 x i32> %i.sr to <32 x i16>
  store <32 x i16> %i.ss, ptr %next.gep336, align 2, !tbaa !56
  %index.next338 = add nuw i64 %index334, 32      ; 2 uses
  %i.st = icmp eq i64 %index.next338, %n.vec332
  br i1 %i.st, label %middle.block339, label %vector.body333, !llvm.loop !1250

middle.block339:                                  ; preds = %vector.body333
  %cmp.n340 = icmp eq i64 %i.ra, %n.vec332
  br i1 %cmp.n340, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor16binary_op_ratan2EEEvPKtS4_Pti.exit, label %vec.epilog.iter.check342

vec.epilog.iter.check342:                         ; preds = %middle.block339
  %min.epilog.iters.check344 = icmp eq i64 %i.rc, 0
  br i1 %min.epilog.iters.check344, label %.lr.ph164.i.preheader, label %vec.epilog.ph345, !prof !64

vec.epilog.ph345:                                 ; preds = %vector.main.loop.iter.check329, %vec.epilog.iter.check342
  %vec.epilog.resume.val346 = phi i64 [ %n.vec332, %vec.epilog.iter.check342 ], [ 0, %vector.main.loop.iter.check329 ]
  %n.vec347 = and i64 %i.ra, 8589934584           ; 4 uses
  %i.su = shl nuw nsw i64 %n.vec347, 1            ; 2 uses
  %i.sv = getelementptr i8, ptr %.2.lcssa.i37, i64 %i.su
  %i.sw = getelementptr i8, ptr %.237.lcssa.i, i64 %i.su
  %i.sx = trunc i64 %n.vec347 to i32
  %i.sy = add i32 %.241.lcssa.i, %i.sx
  %i.sz = insertelement <4 x float> poison, float %i.kr, i64 0
  %i.ta = shufflevector <4 x float> %i.sz, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body348

vec.epilog.vector.body348:                        ; preds = %vec.epilog.vector.body348, %vec.epilog.ph345
  %index349 = phi i64 [ %vec.epilog.resume.val346, %vec.epilog.ph345 ], [ %index.next353, %vec.epilog.vector.body348 ] ; 2 uses
  %i.tb = shl i64 %index349, 1                    ; 2 uses
  %next.gep350 = getelementptr i8, ptr %.2.lcssa.i37, i64 %i.tb
  %next.gep351 = getelementptr i8, ptr %.237.lcssa.i, i64 %i.tb
  %wide.load352 = load <8 x i16>, ptr %next.gep350, align 2, !tbaa !56
  %i.tc = zext <8 x i16> %wide.load352 to <8 x i32>
  %i.td = shl nuw <8 x i32> %i.tc, splat (i32 16)
  %i.te = bitcast <8 x i32> %i.td to <8 x float>  ; 5 uses
  %i.tf = extractelement <8 x float> %i.te, i64 0
  %i.tg = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.kr, float %i.tf)
  %i.th = extractelement <8 x float> %i.te, i64 1
  %i.ti = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.kr, float %i.th)
  %i.tj = extractelement <8 x float> %i.te, i64 2
  %i.tk = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.kr, float %i.tj)
  %i.tl = shufflevector <8 x float> %i.te, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.tm = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.ta, <4 x float> %i.tl)
  %i.tn = extractelement <8 x float> %i.te, i64 7
  %i.to = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.kr, float %i.tn)
  %i.tp = insertelement <8 x float> poison, float %i.tg, i64 0
  %i.tq = insertelement <8 x float> %i.tp, float %i.ti, i64 1
  %i.tr = insertelement <8 x float> %i.tq, float %i.tk, i64 2
  %i.ts = shufflevector <4 x float> %i.tm, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tt = shufflevector <8 x float> %i.tr, <8 x float> %i.ts, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.tu = insertelement <8 x float> %i.tt, float %i.to, i64 7
  %i.tv = bitcast <8 x float> %i.tu to <8 x i32>
  %i.tw = lshr <8 x i32> %i.tv, splat (i32 16)
  %i.tx = trunc nuw <8 x i32> %i.tw to <8 x i16>
  store <8 x i16> %i.tx, ptr %next.gep351, align 2, !tbaa !56
  %index.next353 = add nuw i64 %index349, 8       ; 2 uses
  %i.ty = icmp eq i64 %index.next353, %n.vec347
  br i1 %i.ty, label %vec.epilog.middle.block354, label %vec.epilog.vector.body348, !llvm.loop !1251

vec.epilog.middle.block354:                       ; preds = %vec.epilog.vector.body348
  %cmp.n355 = icmp eq i64 %i.ra, %n.vec347
  br i1 %cmp.n355, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor16binary_op_ratan2EEEvPKtS4_Pti.exit, label %.lr.ph164.i.preheader

.lr.ph164.i.preheader:                            ; preds = %iter.check341, %vec.epilog.iter.check342, %vec.epilog.middle.block354
  %.3163.i.ph = phi ptr [ %.2.lcssa.i37, %iter.check341 ], [ %i.re, %vec.epilog.iter.check342 ], [ %i.sv, %vec.epilog.middle.block354 ] ; 3 uses
  %.338162.i.ph = phi ptr [ %.237.lcssa.i, %iter.check341 ], [ %i.rf, %vec.epilog.iter.check342 ], [ %i.sw, %vec.epilog.middle.block354 ] ; 3 uses
  %.342161.i.ph = phi i32 [ %.241.lcssa.i, %iter.check341 ], [ %i.rh, %vec.epilog.iter.check342 ], [ %i.sy, %vec.epilog.middle.block354 ] ; 4 uses
  %i.tz = sub i32 %i.a, %.342161.i.ph
  %.neg486 = add i32 %.342161.i.ph, 1
  %xtraiter481 = and i32 %i.tz, 1
  %lcmp.mod482.not = icmp eq i32 %xtraiter481, 0
  br i1 %lcmp.mod482.not, label %.lr.ph164.i.prol.loopexit, label %.lr.ph164.i.prol

.lr.ph164.i.prol:                                 ; preds = %.lr.ph164.i.preheader
  %i.ua = getelementptr inbounds nuw i8, ptr %.3163.i.ph, i64 2
  %i.ub = load i16, ptr %.3163.i.ph, align 2, !tbaa !56
  %i.uc = zext i16 %i.ub to i32
  %i.ud = shl nuw i32 %i.uc, 16
  %i.ue = bitcast i32 %i.ud to float
  %i.uf = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.kr, float %i.ue)
  %i.ug = bitcast float %i.uf to i32
  %i.uh = lshr i32 %i.ug, 16
  %i.ui = trunc nuw i32 %i.uh to i16
  %i.uj = getelementptr inbounds nuw i8, ptr %.338162.i.ph, i64 2
  store i16 %i.ui, ptr %.338162.i.ph, align 2, !tbaa !56
  %i.uk = add nuw nsw i32 %.342161.i.ph, 1
  br label %.lr.ph164.i.prol.loopexit

.lr.ph164.i.prol.loopexit:                        ; preds = %.lr.ph164.i.prol, %.lr.ph164.i.preheader
  %.3163.i.unr = phi ptr [ %.3163.i.ph, %.lr.ph164.i.preheader ], [ %i.ua, %.lr.ph164.i.prol ]
  %.338162.i.unr = phi ptr [ %.338162.i.ph, %.lr.ph164.i.preheader ], [ %i.uj, %.lr.ph164.i.prol ]
  %.342161.i.unr = phi i32 [ %.342161.i.ph, %.lr.ph164.i.preheader ], [ %i.uk, %.lr.ph164.i.prol ]
  %i.ul = icmp eq i32 %i.a, %.neg486
  br i1 %i.ul, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor16binary_op_ratan2EEEvPKtS4_Pti.exit, label %.lr.ph164.i

bb.m:                                             ; preds = %bb.m, %.lr.ph157.i
  %.2156.i = phi ptr [ %.1.lcssa.i35, %.lr.ph157.i ], [ %i.wi, %bb.m ] ; 2 uses
  %.237155.i = phi ptr [ %.136.lcssa.i, %.lr.ph157.i ], [ %i.wj, %bb.m ] ; 2 uses
  %.241154.i = phi i32 [ %.140.lcssa.i, %.lr.ph157.i ], [ %i.wk, %bb.m ]
  %i.um = load i64, ptr %.2156.i, align 1, !tbaa !60
  %i.un = insertelement <2 x i64> poison, i64 %i.um, i64 0
  %i.uo = bitcast <2 x i64> %i.un to <8 x i16>
  %i.up = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.uo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.uq = bitcast <8 x i16> %i.up to <4 x float>  ; 3 uses
  %i.ur = fcmp fast oeq <4 x float> %i.uq, zeroinitializer ; 2 uses
  %.not136.i39 = or <4 x i1> %i.op, %i.ur
  %i.us = fcmp fast olt <4 x float> %i.uq, zeroinitializer
  %i.ut = select <4 x i1> %i.us, <4 x float> %i.ot, <4 x float> zeroinitializer
  %i.uu = fdiv fast <4 x float> %i.lw, %i.uq      ; 2 uses
  %i.uv = bitcast <4 x float> %i.uu to <4 x i32>
  %i.uw = and <4 x i32> %i.uv, splat (i32 -2147483648)
  %i.ux = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.uu) ; 3 uses
  %i.uy = fcmp fast ogt <4 x float> %i.ux, splat (float 1.000000e+00) ; 2 uses
  %i.uz = select <4 x i1> %i.uy, <4 x float> splat (float -1.000000e+00), <4 x float> %i.ux
  %i.va = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ux, <4 x float> splat (float 1.000000e+00))
  %i.vb = fdiv fast <4 x float> %i.uz, %i.va      ; 3 uses
  %i.vc = fmul fast <4 x float> %i.vb, %i.vb      ; 3 uses
  %i.vd = fmul fast <4 x float> %i.vc, %i.vc      ; 7 uses
  %i.ve = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.vd, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.vf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.vd, <4 x float> nofpclass(nan inf) %i.ve, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.vg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.vd, <4 x float> nofpclass(nan inf) %i.vf, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.vh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.vd, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.vi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.vd, <4 x float> nofpclass(nan inf) %i.vh, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.vj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.vd, <4 x float> nofpclass(nan inf) %i.vi, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.vk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.vd, <4 x float> nofpclass(nan inf) %i.vj, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.vl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.vc, <4 x float> nofpclass(nan inf) %i.vg, <4 x float> nofpclass(nan inf) %i.vk)
  %i.vm = fmul fast <4 x float> %i.vl, %i.vb
  %i.vn = select <4 x i1> %i.uy, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.vo = fadd fast <4 x float> %i.vm, %i.vn
  %i.vp = bitcast <4 x float> %i.vo to <4 x i32>
  %i.vq = or <4 x i32> %i.uw, %i.vp
  %i.vr = bitcast <4 x i32> %i.vq to <4 x float>
  %i.vs = fadd fast <4 x float> %i.ut, %i.vr
  %i.vt = bitcast <8 x i16> %i.up to <4 x i32>
  %i.vu = and <4 x i32> %i.vt, splat (i32 -2147483648)
  %i.vv = or disjoint <4 x i32> %i.vu, splat (i32 1078530011)
  %i.vw = bitcast <4 x i32> %i.vv to <4 x float>
  %i.vx = fcmp fast uge <4 x float> %i.vw, zeroinitializer
  %i.vy = select <4 x i1> %i.vx, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078525952)
  %i.vz = bitcast <4 x float> %i.vs to <4 x i32>
  %i.wa = select <4 x i1> %.not136.i39, <4 x i32> zeroinitializer, <4 x i32> %i.vz
  %i.wb = select <4 x i1> %i.ur, <4 x i32> %i.ou, <4 x i32> zeroinitializer
  %i.wc = select <4 x i1> %i.op, <4 x i32> %i.vy, <4 x i32> %i.wb
  %i.wd = or <4 x i32> %i.wa, %i.wc
  %i.we = lshr <4 x i32> %i.wd, splat (i32 16)
  %i.wf = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.we, <4 x i32> poison)
  %i.wg = bitcast <8 x i16> %i.wf to <2 x i64>
  %i.wh = extractelement <2 x i64> %i.wg, i64 0
  store i64 %i.wh, ptr %.237155.i, align 1, !tbaa !60
  %i.wi = getelementptr inbounds nuw i8, ptr %.2156.i, i64 8 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.237155.i, i64 8 ; 2 uses
  %i.wk = add nuw nsw i32 %.241154.i, 4           ; 3 uses
  %i.wl = or disjoint i32 %i.wk, 3
  %i.wm = icmp slt i32 %i.wl, %i.a
  br i1 %i.wm, label %bb.m, label %.preheader.i36, !llvm.loop !1252

.lr.ph164.i:                                      ; preds = %.lr.ph164.i.prol.loopexit, %.lr.ph164.i
  %.3163.i = phi ptr [ %i.wx, %.lr.ph164.i ], [ %.3163.i.unr, %.lr.ph164.i.prol.loopexit ] ; 3 uses
  %.338162.i = phi ptr [ %i.xg, %.lr.ph164.i ], [ %.338162.i.unr, %.lr.ph164.i.prol.loopexit ] ; 3 uses
  %.342161.i = phi i32 [ %i.xh, %.lr.ph164.i ], [ %.342161.i.unr, %.lr.ph164.i.prol.loopexit ]
  %i.wn = getelementptr inbounds nuw i8, ptr %.3163.i, i64 2
  %i.wo = load i16, ptr %.3163.i, align 2, !tbaa !56
  %i.wp = zext i16 %i.wo to i32
  %i.wq = shl nuw i32 %i.wp, 16
  %i.wr = bitcast i32 %i.wq to float
  %i.ws = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.kr, float %i.wr)
  %i.wt = bitcast float %i.ws to i32
  %i.wu = lshr i32 %i.wt, 16
  %i.wv = trunc nuw i32 %i.wu to i16
  %i.ww = getelementptr inbounds nuw i8, ptr %.338162.i, i64 2
  store i16 %i.wv, ptr %.338162.i, align 2, !tbaa !56
  %i.wx = getelementptr inbounds nuw i8, ptr %.3163.i, i64 4
  %i.wy = load i16, ptr %i.wn, align 2, !tbaa !56
  %i.wz = zext i16 %i.wy to i32
  %i.xa = shl nuw i32 %i.wz, 16
  %i.xb = bitcast i32 %i.xa to float
  %i.xc = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.kr, float %i.xb)
  %i.xd = bitcast float %i.xc to i32
  %i.xe = lshr i32 %i.xd, 16
  %i.xf = trunc nuw i32 %i.xe to i16
  %i.xg = getelementptr inbounds nuw i8, ptr %.338162.i, i64 4
  store i16 %i.xf, ptr %i.ww, align 2, !tbaa !56
  %i.xh = add nuw nsw i32 %.342161.i, 2           ; 2 uses
  %exitcond.not.i38.1 = icmp eq i32 %i.xh, %i.a
  br i1 %exitcond.not.i38.1, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor16binary_op_ratan2EEEvPKtS4_Pti.exit, label %.lr.ph164.i, !llvm.loop !1253

bb.n:                                             ; preds = %bb.d
  %i.xi = icmp eq i32 %3, 1
  br i1 %i.xi, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.xj = load i16, ptr %0, align 2, !tbaa !56
  %i.xk = zext i16 %i.xj to i32
  %i.xl = shl nuw i32 %i.xk, 16
  %i.xm = bitcast i32 %i.xl to float              ; 15 uses
  %i.xn = icmp eq i32 %.sroa.speculated, 4
  br i1 %i.xn, label %.thread133.i57, label %bb.p

.thread133.i57:                                   ; preds = %bb.o
  %i.xo = load i64, ptr %0, align 2, !tbaa !60
  %i.xp = insertelement <2 x i64> poison, i64 %i.xo, i64 0
  %i.xq = bitcast <2 x i64> %i.xp to <8 x i16>
  %i.xr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xs = bitcast <8 x i16> %i.xr to <4 x float>  ; 2 uses
  %i.xt = shufflevector <4 x float> %i.xs, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.xu = insertelement <4 x float> poison, float %i.xm, i64 0 ; 2 uses
  %i.xv = shufflevector <4 x float> %i.xu, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.xw = icmp eq i32 %.sroa.speculated, 8
  br i1 %i.xw, label %.thread132.i56, label %bb.q

.thread132.i56:                                   ; preds = %bb.p
  %i.xx = load <8 x i16>, ptr %0, align 2, !tbaa !60 ; 2 uses
  %i.xy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xz = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.xx, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ya = shufflevector <8 x i16> %i.xy, <8 x i16> %i.xz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yb = bitcast <16 x i16> %i.ya to <8 x float>
  br label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.yc = shufflevector <4 x float> %i.xu, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.yd = icmp eq i32 %.sroa.speculated, 16
  br i1 %i.yd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ye = load <16 x i16>, ptr %0, align 2, !tbaa !60 ; 2 uses
  %i.yf = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ye, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.yg = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ye, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.yh = shufflevector <16 x i16> %i.yf, <16 x i16> %i.yg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.yi = shufflevector <16 x i16> %i.yf, <16 x i16> %i.yg, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.yj = bitcast <16 x i16> %i.yh to <8 x i32>
  %i.yk = bitcast <16 x i16> %i.yi to <8 x i32>
  %i.yl = shufflevector <8 x i32> %i.yj, <8 x i32> %i.yk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ym = bitcast <16 x i32> %i.yl to <16 x float>
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %.thread132.i56, %.thread133.i57
  %i.yn = phi <8 x float> [ %i.yb, %.thread132.i56 ], [ %i.yc, %bb.q ], [ %i.xt, %.thread133.i57 ] ; 2 uses
  %i.yo = phi <4 x float> [ %i.xv, %.thread132.i56 ], [ %i.xv, %bb.q ], [ %i.xs, %.thread133.i57 ]
  %i.yp = shufflevector <8 x float> %i.yn, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
end_hunk_14
begin_hunk_15_@_ZN4ncnnL22binary_op_vector_bf16sINS_27BinaryOp_x86_avx512_functor16binary_op_ratan2EEEvPKtS4_Ptiiii:bb.a
  %i.zc = icmp slt i32 %i.zb, %i.a
  br i1 %i.zc, label %.lr.ph149.i, label %.preheader139.i

.lr.ph149.i:                                      ; preds = %.preheader140.i43
  %i.zd = fcmp fast ueq <8 x float> %i.yq, zeroinitializer ; 2 uses
  %i.ze = fcmp fast olt <8 x float> %i.yq, zeroinitializer
  %i.zf = bitcast <8 x float> %i.yq to <8 x i32>
  %isneg.inv136.i = icmp slt <8 x i32> %i.zf, zeroinitializer
  %i.zg = select <8 x i1> %isneg.inv136.i, <8 x i32> splat (i32 1078525952), <8 x i32> zeroinitializer
  %i.zh = fdiv fast <8 x float> splat (float 1.000000e+00), %i.yq
  br label %bb.v

bb.u:                                             ; preds = %bb.u, %.lr.ph.i55
  %.0143.i = phi ptr [ %1, %.lr.ph.i55 ], [ %i.abe, %bb.u ] ; 2 uses
  %.035142.i = phi ptr [ %2, %.lr.ph.i55 ], [ %i.abf, %bb.u ] ; 2 uses
  %.039141.i = phi i32 [ 0, %.lr.ph.i55 ], [ %i.abg, %bb.u ]
  %i.zi = load <16 x i16>, ptr %.0143.i, align 1, !tbaa !60 ; 2 uses
  %i.zj = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.zi, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.zk = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.zi, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.zl = shufflevector <16 x i16> %i.zj, <16 x i16> %i.zk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.zm = shufflevector <16 x i16> %i.zj, <16 x i16> %i.zk, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.zn = bitcast <16 x i16> %i.zl to <8 x i32>
  %i.zo = bitcast <16 x i16> %i.zm to <8 x i32>
  %i.zp = shufflevector <8 x i32> %i.zn, <8 x i32> %i.zo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zq = bitcast <16 x i32> %i.zp to <16 x float> ; 4 uses
  %i.zr = fcmp fast one <16 x float> %i.zq, zeroinitializer
  %i.zs = fcmp fast olt <16 x float> %i.zq, zeroinitializer
  %i.zt = select fast <16 x i1> %i.zs, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.zu = select fast <16 x i1> %i.yv, <16 x float> %i.zt, <16 x float> zeroinitializer
  %i.zv = fmul fast <16 x float> %i.zq, %i.yz     ; 2 uses
  %i.zw = bitcast <16 x float> %i.zv to <16 x i32>
  %i.zx = and <16 x i32> %i.zw, splat (i32 -2147483648)
  %i.zy = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.zv) ; 3 uses
  %i.zz = fcmp fast ogt <16 x float> %i.zy, splat (float 1.000000e+00) ; 2 uses
  %i.aaa = select fast <16 x i1> %i.zz, <16 x float> splat (float -1.000000e+00), <16 x float> %i.zy
  %i.aab = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.zy, <16 x float> splat (float 1.000000e+00))
  %i.aac = fdiv fast <16 x float> %i.aaa, %i.aab  ; 3 uses
  %i.aad = fmul fast <16 x float> %i.aac, %i.aac  ; 3 uses
  %i.aae = fmul fast <16 x float> %i.aad, %i.aad  ; 7 uses
  %i.aaf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aae, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.aag = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aae, <16 x float> nofpclass(nan inf) %i.aaf, <16 x float> splat (float f0xBE117200))
  %i.aah = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aae, <16 x float> nofpclass(nan inf) %i.aag, <16 x float> splat (float f0xBEAAAA53))
  %i.aai = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aae, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.aaj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aae, <16 x float> nofpclass(nan inf) %i.aai, <16 x float> splat (float f0x3DD9ED24))
  %i.aak = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aae, <16 x float> nofpclass(nan inf) %i.aaj, <16 x float> splat (float f0x3E4CB974))
  %i.aal = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aae, <16 x float> nofpclass(nan inf) %i.aak, <16 x float> splat (float 1.000000e+00))
  %i.aam = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aad, <16 x float> nofpclass(nan inf) %i.aah, <16 x float> nofpclass(nan inf) %i.aal)
  %i.aan = fmul fast <16 x float> %i.aam, %i.aac
  %i.aao = select fast <16 x i1> %i.zz, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.aap = fadd fast <16 x float> %i.aan, %i.aao
  %i.aaq = bitcast <16 x float> %i.aap to <16 x i32>
  %i.aar = or <16 x i32> %i.zx, %i.aaq
  %i.aas = bitcast <16 x i32> %i.aar to <16 x float>
  %i.aat = fadd fast <16 x float> %i.zu, %i.aas
  %i.aau = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.zq)
  %i.aav = select <16 x i1> %i.yu, <16 x float> %i.aat, <16 x float> %i.aau
  %i.aaw = select <16 x i1> %i.zr, <16 x float> %i.aav, <16 x float> %i.yy
  %i.aax = bitcast <16 x float> %i.aaw to <16 x i32>
  %i.aay = lshr <16 x i32> %i.aax, splat (i32 16) ; 2 uses
  %i.aaz = shufflevector <16 x i32> %i.aay, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aba = shufflevector <16 x i32> %i.aay, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abb = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.aaz, <8 x i32> %i.aba)
  %i.abc = bitcast <16 x i16> %i.abb to <4 x i64>
  %i.abd = shufflevector <4 x i64> %i.abc, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.abd, ptr %.035142.i, align 1, !tbaa !60
  %i.abe = getelementptr inbounds nuw i8, ptr %.0143.i, i64 32 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %.035142.i, i64 32 ; 2 uses
  %i.abg = add nuw nsw i32 %.039141.i, 16         ; 2 uses
  %i.abh = or disjoint i32 %i.abg, 15
  %i.abi = icmp slt i32 %i.abh, %i.a
  br i1 %i.abi, label %bb.u, label %.preheader140.loopexit.i, !llvm.loop !1254

.preheader139.i:                                  ; preds = %bb.v, %.preheader140.i43
  %.140.lcssa.i47 = phi i32 [ %.039.lcssa.i44, %.preheader140.i43 ], [ %i.adm, %bb.v ] ; 3 uses
  %.136.lcssa.i48 = phi ptr [ %.035.lcssa.i45, %.preheader140.i43 ], [ %i.adl, %bb.v ] ; 2 uses
  %.1.lcssa.i49 = phi ptr [ %.0.lcssa.i46, %.preheader140.i43 ], [ %i.adk, %bb.v ] ; 2 uses
  %i.abj = or disjoint i32 %.140.lcssa.i47, 3
  %i.abk = icmp slt i32 %i.abj, %i.a
  br i1 %i.abk, label %.lr.ph156.i, label %.preheader.i50

.lr.ph156.i:                                      ; preds = %.preheader139.i
  %i.abl = fcmp fast oeq <4 x float> %i.yr, zeroinitializer ; 2 uses
  %i.abm = fcmp fast olt <4 x float> %i.yr, zeroinitializer
  %i.abn = bitcast <4 x float> %i.yr to <4 x i32>
  %isneg.inv.i = icmp slt <4 x i32> %i.abn, zeroinitializer
  %i.abo = select <4 x i1> %isneg.inv.i, <4 x i32> splat (i32 1078525952), <4 x i32> zeroinitializer
  %i.abp = fdiv fast <4 x float> splat (float 1.000000e+00), %i.yr
  br label %bb.w

bb.v:                                             ; preds = %bb.v, %.lr.ph149.i
  %.1148.i = phi ptr [ %.0.lcssa.i46, %.lr.ph149.i ], [ %i.adk, %bb.v ] ; 2 uses
  %.136147.i = phi ptr [ %.035.lcssa.i45, %.lr.ph149.i ], [ %i.adl, %bb.v ] ; 2 uses
  %.140146.i = phi i32 [ %.039.lcssa.i44, %.lr.ph149.i ], [ %i.adm, %bb.v ]
  %i.abq = load <8 x i16>, ptr %.1148.i, align 1, !tbaa !60 ; 2 uses
  %i.abr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.abq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.abs = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.abq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.abt = shufflevector <8 x i16> %i.abr, <8 x i16> %i.abs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.abu = bitcast <16 x i16> %i.abt to <8 x float> ; 3 uses
  %i.abv = fcmp fast ueq <8 x float> %i.abu, zeroinitializer ; 2 uses
  %.not138.i = or <8 x i1> %i.zd, %i.abv
  %i.abw = fcmp fast olt <8 x float> %i.abu, zeroinitializer
  %i.abx = select <8 x i1> %i.abw, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.aby = select <8 x i1> %i.ze, <8 x float> %i.abx, <8 x float> zeroinitializer
  %i.abz = fmul fast <8 x float> %i.abu, %i.zh    ; 2 uses
  %i.aca = bitcast <8 x float> %i.abz to <8 x i32>
  %i.acb = and <8 x i32> %i.aca, splat (i32 -2147483648)
  %i.acc = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.abz) ; 3 uses
  %i.acd = fcmp fast ogt <8 x float> %i.acc, splat (float 1.000000e+00) ; 2 uses
  %i.ace = select <8 x i1> %i.acd, <8 x float> splat (float -1.000000e+00), <8 x float> %i.acc
  %i.acf = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.acc, <8 x float> splat (float 1.000000e+00))
  %i.acg = fdiv fast <8 x float> %i.ace, %i.acf   ; 3 uses
  %i.ach = fmul fast <8 x float> %i.acg, %i.acg   ; 3 uses
  %i.aci = fmul fast <8 x float> %i.ach, %i.ach   ; 7 uses
  %i.acj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aci, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.ack = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aci, <8 x float> nofpclass(nan inf) %i.acj, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.acl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aci, <8 x float> nofpclass(nan inf) %i.ack, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.acm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aci, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.acn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aci, <8 x float> nofpclass(nan inf) %i.acm, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.aco = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aci, <8 x float> nofpclass(nan inf) %i.acn, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.acp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aci, <8 x float> nofpclass(nan inf) %i.aco, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.acq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ach, <8 x float> nofpclass(nan inf) %i.acl, <8 x float> nofpclass(nan inf) %i.acp)
  %i.acr = fmul fast <8 x float> %i.acq, %i.acg
  %i.acs = select <8 x i1> %i.acd, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.act = fadd fast <8 x float> %i.acr, %i.acs
  %i.acu = bitcast <8 x float> %i.act to <8 x i32>
  %i.acv = or <8 x i32> %i.acb, %i.acu
  %i.acw = bitcast <8 x i32> %i.acv to <8 x float>
  %i.acx = fadd fast <8 x float> %i.aby, %i.acw
  %i.acy = bitcast <16 x i16> %i.abt to <8 x i32>
  %i.acz = and <8 x i32> %i.acy, splat (i32 -2147483648)
  %i.ada = or disjoint <8 x i32> %i.acz, splat (i32 1070137344)
  %i.adb = bitcast <8 x float> %i.acx to <8 x i32>
  %i.adc = select <8 x i1> %.not138.i, <8 x i32> zeroinitializer, <8 x i32> %i.adb
  %i.add = select <8 x i1> %i.zd, <8 x i32> %i.ada, <8 x i32> zeroinitializer
  %i.ade = select <8 x i1> %i.abv, <8 x i32> %i.zg, <8 x i32> %i.add
  %i.adf = or <8 x i32> %i.adc, %i.ade
  %i.adg = lshr <8 x i32> %i.adf, splat (i32 16)  ; 2 uses
  %i.adh = shufflevector <8 x i32> %i.adg, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.adi = shufflevector <8 x i32> %i.adg, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.adj = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.adh, <4 x i32> %i.adi)
  store <8 x i16> %i.adj, ptr %.136147.i, align 1, !tbaa !60
  %i.adk = getelementptr inbounds nuw i8, ptr %.1148.i, i64 16 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %.136147.i, i64 16 ; 2 uses
  %i.adm = add nuw nsw i32 %.140146.i, 8          ; 3 uses
  %i.adn = or disjoint i32 %i.adm, 7
  %i.ado = icmp slt i32 %i.adn, %i.a
  br i1 %i.ado, label %bb.v, label %.preheader139.i, !llvm.loop !1255

.preheader.i50:                                   ; preds = %bb.w, %.preheader139.i
  %.241.lcssa.i51 = phi i32 [ %.140.lcssa.i47, %.preheader139.i ], [ %i.ajb, %bb.w ] ; 5 uses
  %.237.lcssa.i52 = phi ptr [ %.136.lcssa.i48, %.preheader139.i ], [ %i.aja, %bb.w ] ; 6 uses
  %.2.lcssa.i53 = phi ptr [ %.1.lcssa.i49, %.preheader139.i ], [ %i.aiz, %bb.w ] ; 6 uses
  %i.adp = icmp slt i32 %.241.lcssa.i51, %i.a
  br i1 %i.adp, label %iter.check302, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor16binary_op_ratan2EEEvPKtS4_Pti.exit

iter.check302:                                    ; preds = %.preheader.i50
  %.237.lcssa.i52286 = ptrtoaddr ptr %.237.lcssa.i52 to i64
  %.2.lcssa.i53285 = ptrtoaddr ptr %.2.lcssa.i53 to i64
  %i.adq = xor i32 %.241.lcssa.i51, -1
  %i.adr = add i32 %i.a, %i.adq                   ; 3 uses
  %i.ads = zext i32 %i.adr to i64
  %i.adt = add nuw nsw i64 %i.ads, 1              ; 5 uses
  %min.iters.check287 = icmp ult i32 %i.adr, 7
  %i.adu = sub i64 %.2.lcssa.i53285, %.237.lcssa.i52286
  %diff.check289 = icmp ugt i64 %i.adu, -64
  %or.cond407 = select i1 %min.iters.check287, i1 true, i1 %diff.check289
  br i1 %or.cond407, label %.lr.ph163.i.preheader, label %vector.main.loop.iter.check290

vector.main.loop.iter.check290:                   ; preds = %iter.check302
  %min.iters.check291 = icmp ult i32 %i.adr, 31
  br i1 %min.iters.check291, label %vec.epilog.ph306, label %vector.ph292

vector.ph292:                                     ; preds = %vector.main.loop.iter.check290
  %i.adv = and i64 %i.adt, 24
  %n.vec293 = and i64 %i.adt, 8589934560          ; 5 uses
  %i.adw = shl nuw nsw i64 %n.vec293, 1           ; 2 uses
  %i.adx = getelementptr i8, ptr %.2.lcssa.i53, i64 %i.adw
  %i.ady = getelementptr i8, ptr %.237.lcssa.i52, i64 %i.adw
  %i.adz = trunc i64 %n.vec293 to i32
  %i.aea = add i32 %.241.lcssa.i51, %i.adz
  %i.aeb = insertelement <16 x float> poison, float %i.xm, i64 0
  %i.aec = shufflevector <16 x float> %i.aeb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aed = insertelement <8 x float> poison, float %i.xm, i64 0
  %i.aee = shufflevector <8 x float> %i.aed, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aef = insertelement <4 x float> poison, float %i.xm, i64 0
  %i.aeg = shufflevector <4 x float> %i.aef, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aeh = insertelement <2 x float> poison, float %i.xm, i64 0
  %i.aei = shufflevector <2 x float> %i.aeh, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body294

vector.body294:                                   ; preds = %vector.ph292, %vector.body294
  %index295 = phi i64 [ 0, %vector.ph292 ], [ %index.next299, %vector.body294 ] ; 2 uses
  %i.aej = shl i64 %index295, 1                   ; 2 uses
  %next.gep296 = getelementptr i8, ptr %.2.lcssa.i53, i64 %i.aej
  %next.gep297 = getelementptr i8, ptr %.237.lcssa.i52, i64 %i.aej
  %wide.load298 = load <32 x i16>, ptr %next.gep296, align 2, !tbaa !56
  %i.aek = zext <32 x i16> %wide.load298 to <32 x i32>
  %i.ael = shl nuw <32 x i32> %i.aek, splat (i32 16)
  %i.aem = bitcast <32 x i32> %i.ael to <32 x float> ; 6 uses
  %i.aen = extractelement <32 x float> %i.aem, i64 0
  %i.aeo = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.aen, float %i.xm)
  %i.aep = shufflevector <32 x float> %i.aem, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.aeq = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.aep, <16 x float> %i.aec)
  %i.aer = shufflevector <32 x float> %i.aem, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.aes = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.aer, <8 x float> %i.aee)
  %i.aet = shufflevector <32 x float> %i.aem, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.aeu = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.aet, <4 x float> %i.aeg)
  %i.aev = extractelement <32 x float> %i.aem, i64 29
  %i.aew = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.aev, float %i.xm)
  %i.aex = shufflevector <32 x float> %i.aem, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.aey = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.aex, <2 x float> %i.aei)
  %i.aez = insertelement <32 x float> poison, float %i.aeo, i64 0
  %i.afa = shufflevector <16 x float> %i.aeq, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afb = shufflevector <32 x float> %i.aez, <32 x float> %i.afa, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afc = shufflevector <8 x float> %i.aes, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afd = shufflevector <32 x float> %i.afb, <32 x float> %i.afc, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afe = shufflevector <4 x float> %i.aeu, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aff = shufflevector <32 x float> %i.afd, <32 x float> %i.afe, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.afg = insertelement <32 x float> %i.aff, float %i.aew, i64 29
  %i.afh = shufflevector <2 x float> %i.aey, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afi = shufflevector <32 x float> %i.afg, <32 x float> %i.afh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.afj = bitcast <32 x float> %i.afi to <32 x i32>
  %i.afk = lshr <32 x i32> %i.afj, splat (i32 16)
  %i.afl = trunc nuw <32 x i32> %i.afk to <32 x i16>
  store <32 x i16> %i.afl, ptr %next.gep297, align 2, !tbaa !56
  %index.next299 = add nuw i64 %index295, 32      ; 2 uses
  %i.afm = icmp eq i64 %index.next299, %n.vec293
  br i1 %i.afm, label %middle.block300, label %vector.body294, !llvm.loop !1256

middle.block300:                                  ; preds = %vector.body294
  %cmp.n301 = icmp eq i64 %i.adt, %n.vec293
  br i1 %cmp.n301, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor16binary_op_ratan2EEEvPKtS4_Pti.exit, label %vec.epilog.iter.check303

vec.epilog.iter.check303:                         ; preds = %middle.block300
  %min.epilog.iters.check305 = icmp eq i64 %i.adv, 0
  br i1 %min.epilog.iters.check305, label %.lr.ph163.i.preheader, label %vec.epilog.ph306, !prof !64

vec.epilog.ph306:                                 ; preds = %vector.main.loop.iter.check290, %vec.epilog.iter.check303
  %vec.epilog.resume.val307 = phi i64 [ %n.vec293, %vec.epilog.iter.check303 ], [ 0, %vector.main.loop.iter.check290 ]
  %n.vec308 = and i64 %i.adt, 8589934584          ; 4 uses
  %i.afn = shl nuw nsw i64 %n.vec308, 1           ; 2 uses
  %i.afo = getelementptr i8, ptr %.2.lcssa.i53, i64 %i.afn
  %i.afp = getelementptr i8, ptr %.237.lcssa.i52, i64 %i.afn
  %i.afq = trunc i64 %n.vec308 to i32
  %i.afr = add i32 %.241.lcssa.i51, %i.afq
  %i.afs = insertelement <4 x float> poison, float %i.xm, i64 0
  %i.aft = shufflevector <4 x float> %i.afs, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body309

vec.epilog.vector.body309:                        ; preds = %vec.epilog.vector.body309, %vec.epilog.ph306
  %index310 = phi i64 [ %vec.epilog.resume.val307, %vec.epilog.ph306 ], [ %index.next314, %vec.epilog.vector.body309 ] ; 2 uses
  %i.afu = shl i64 %index310, 1                   ; 2 uses
  %next.gep311 = getelementptr i8, ptr %.2.lcssa.i53, i64 %i.afu
  %next.gep312 = getelementptr i8, ptr %.237.lcssa.i52, i64 %i.afu
  %wide.load313 = load <8 x i16>, ptr %next.gep311, align 2, !tbaa !56
  %i.afv = zext <8 x i16> %wide.load313 to <8 x i32>
  %i.afw = shl nuw <8 x i32> %i.afv, splat (i32 16)
  %i.afx = bitcast <8 x i32> %i.afw to <8 x float> ; 5 uses
  %i.afy = extractelement <8 x float> %i.afx, i64 0
  %i.afz = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.afy, float %i.xm)
  %i.aga = extractelement <8 x float> %i.afx, i64 1
  %i.agb = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.aga, float %i.xm)
  %i.agc = extractelement <8 x float> %i.afx, i64 2
  %i.agd = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.agc, float %i.xm)
  %i.age = shufflevector <8 x float> %i.afx, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.agf = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.age, <4 x float> %i.aft)
  %i.agg = extractelement <8 x float> %i.afx, i64 7
  %i.agh = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.agg, float %i.xm)
  %i.agi = insertelement <8 x float> poison, float %i.afz, i64 0
  %i.agj = insertelement <8 x float> %i.agi, float %i.agb, i64 1
  %i.agk = insertelement <8 x float> %i.agj, float %i.agd, i64 2
  %i.agl = shufflevector <4 x float> %i.agf, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agm = shufflevector <8 x float> %i.agk, <8 x float> %i.agl, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.agn = insertelement <8 x float> %i.agm, float %i.agh, i64 7
  %i.ago = bitcast <8 x float> %i.agn to <8 x i32>
  %i.agp = lshr <8 x i32> %i.ago, splat (i32 16)
  %i.agq = trunc nuw <8 x i32> %i.agp to <8 x i16>
  store <8 x i16> %i.agq, ptr %next.gep312, align 2, !tbaa !56
  %index.next314 = add nuw i64 %index310, 8       ; 2 uses
  %i.agr = icmp eq i64 %index.next314, %n.vec308
  br i1 %i.agr, label %vec.epilog.middle.block315, label %vec.epilog.vector.body309, !llvm.loop !1257

vec.epilog.middle.block315:                       ; preds = %vec.epilog.vector.body309
  %cmp.n316 = icmp eq i64 %i.adt, %n.vec308
  br i1 %cmp.n316, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor16binary_op_ratan2EEEvPKtS4_Pti.exit, label %.lr.ph163.i.preheader

.lr.ph163.i.preheader:                            ; preds = %iter.check302, %vec.epilog.iter.check303, %vec.epilog.middle.block315
  %.3162.i.ph = phi ptr [ %.2.lcssa.i53, %iter.check302 ], [ %i.adx, %vec.epilog.iter.check303 ], [ %i.afo, %vec.epilog.middle.block315 ] ; 3 uses
  %.338161.i.ph = phi ptr [ %.237.lcssa.i52, %iter.check302 ], [ %i.ady, %vec.epilog.iter.check303 ], [ %i.afp, %vec.epilog.middle.block315 ] ; 3 uses
  %.342160.i.ph = phi i32 [ %.241.lcssa.i51, %iter.check302 ], [ %i.aea, %vec.epilog.iter.check303 ], [ %i.afr, %vec.epilog.middle.block315 ] ; 4 uses
  %i.ags = sub i32 %i.a, %.342160.i.ph
  %.neg485 = add i32 %.342160.i.ph, 1
  %xtraiter479 = and i32 %i.ags, 1
  %lcmp.mod480.not = icmp eq i32 %xtraiter479, 0
  br i1 %lcmp.mod480.not, label %.lr.ph163.i.prol.loopexit, label %.lr.ph163.i.prol

.lr.ph163.i.prol:                                 ; preds = %.lr.ph163.i.preheader
  %i.agt = getelementptr inbounds nuw i8, ptr %.3162.i.ph, i64 2
  %i.agu = load i16, ptr %.3162.i.ph, align 2, !tbaa !56
  %i.agv = zext i16 %i.agu to i32
  %i.agw = shl nuw i32 %i.agv, 16
  %i.agx = bitcast i32 %i.agw to float
  %i.agy = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.agx, float %i.xm)
  %i.agz = bitcast float %i.agy to i32
  %i.aha = lshr i32 %i.agz, 16
  %i.ahb = trunc nuw i32 %i.aha to i16
  %i.ahc = getelementptr inbounds nuw i8, ptr %.338161.i.ph, i64 2
  store i16 %i.ahb, ptr %.338161.i.ph, align 2, !tbaa !56
  %i.ahd = add nuw nsw i32 %.342160.i.ph, 1
  br label %.lr.ph163.i.prol.loopexit

.lr.ph163.i.prol.loopexit:                        ; preds = %.lr.ph163.i.prol, %.lr.ph163.i.preheader
  %.3162.i.unr = phi ptr [ %.3162.i.ph, %.lr.ph163.i.preheader ], [ %i.agt, %.lr.ph163.i.prol ]
  %.338161.i.unr = phi ptr [ %.338161.i.ph, %.lr.ph163.i.preheader ], [ %i.ahc, %.lr.ph163.i.prol ]
  %.342160.i.unr = phi i32 [ %.342160.i.ph, %.lr.ph163.i.preheader ], [ %i.ahd, %.lr.ph163.i.prol ]
  %i.ahe = icmp eq i32 %i.a, %.neg485
  br i1 %i.ahe, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor16binary_op_ratan2EEEvPKtS4_Pti.exit, label %.lr.ph163.i

bb.w:                                             ; preds = %bb.w, %.lr.ph156.i
  %.2155.i = phi ptr [ %.1.lcssa.i49, %.lr.ph156.i ], [ %i.aiz, %bb.w ] ; 2 uses
  %.237154.i = phi ptr [ %.136.lcssa.i48, %.lr.ph156.i ], [ %i.aja, %bb.w ] ; 2 uses
  %.241153.i = phi i32 [ %.140.lcssa.i47, %.lr.ph156.i ], [ %i.ajb, %bb.w ]
  %i.ahf = load i64, ptr %.2155.i, align 1, !tbaa !60
  %i.ahg = insertelement <2 x i64> poison, i64 %i.ahf, i64 0
  %i.ahh = bitcast <2 x i64> %i.ahg to <8 x i16>
  %i.ahi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ahh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ahj = bitcast <8 x i16> %i.ahi to <4 x float> ; 3 uses
  %i.ahk = fcmp fast oeq <4 x float> %i.ahj, zeroinitializer ; 2 uses
  %.not135.i = or <4 x i1> %i.abl, %i.ahk
  %i.ahl = fcmp fast olt <4 x float> %i.ahj, zeroinitializer
  %i.ahm = select <4 x i1> %i.ahl, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.ahn = select <4 x i1> %i.abm, <4 x float> %i.ahm, <4 x float> zeroinitializer
  %i.aho = fmul fast <4 x float> %i.ahj, %i.abp   ; 2 uses
  %i.ahp = bitcast <4 x float> %i.aho to <4 x i32>
  %i.ahq = and <4 x i32> %i.ahp, splat (i32 -2147483648)
  %i.ahr = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aho) ; 3 uses
  %i.ahs = fcmp fast ogt <4 x float> %i.ahr, splat (float 1.000000e+00) ; 2 uses
  %i.aht = select <4 x i1> %i.ahs, <4 x float> splat (float -1.000000e+00), <4 x float> %i.ahr
  %i.ahu = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ahr, <4 x float> splat (float 1.000000e+00))
  %i.ahv = fdiv fast <4 x float> %i.aht, %i.ahu   ; 3 uses
  %i.ahw = fmul fast <4 x float> %i.ahv, %i.ahv   ; 3 uses
  %i.ahx = fmul fast <4 x float> %i.ahw, %i.ahw   ; 7 uses
  %i.ahy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahx, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.ahz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahx, <4 x float> nofpclass(nan inf) %i.ahy, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.aia = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahx, <4 x float> nofpclass(nan inf) %i.ahz, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.aib = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahx, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.aic = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahx, <4 x float> nofpclass(nan inf) %i.aib, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.aid = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahx, <4 x float> nofpclass(nan inf) %i.aic, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.aie = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahx, <4 x float> nofpclass(nan inf) %i.aid, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.aif = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahw, <4 x float> nofpclass(nan inf) %i.aia, <4 x float> nofpclass(nan inf) %i.aie)
  %i.aig = fmul fast <4 x float> %i.aif, %i.ahv
  %i.aih = select <4 x i1> %i.ahs, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.aii = fadd fast <4 x float> %i.aig, %i.aih
  %i.aij = bitcast <4 x float> %i.aii to <4 x i32>
  %i.aik = or <4 x i32> %i.ahq, %i.aij
  %i.ail = bitcast <4 x i32> %i.aik to <4 x float>
  %i.aim = fadd fast <4 x float> %i.ahn, %i.ail
  %i.ain = bitcast <8 x i16> %i.ahi to <4 x i32>
  %i.aio = and <4 x i32> %i.ain, splat (i32 -2147483648)
  %i.aip = or disjoint <4 x i32> %i.aio, splat (i32 1070137344)
  %i.aiq = bitcast <4 x float> %i.aim to <4 x i32>
  %i.air = select <4 x i1> %.not135.i, <4 x i32> zeroinitializer, <4 x i32> %i.aiq
  %i.ais = select <4 x i1> %i.abl, <4 x i32> %i.aip, <4 x i32> zeroinitializer
  %i.ait = select <4 x i1> %i.ahk, <4 x i32> %i.abo, <4 x i32> %i.ais
  %i.aiu = or <4 x i32> %i.air, %i.ait
  %i.aiv = lshr <4 x i32> %i.aiu, splat (i32 16)
  %i.aiw = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aiv, <4 x i32> poison)
  %i.aix = bitcast <8 x i16> %i.aiw to <2 x i64>
  %i.aiy = extractelement <2 x i64> %i.aix, i64 0
  store i64 %i.aiy, ptr %.237154.i, align 1, !tbaa !60
  %i.aiz = getelementptr inbounds nuw i8, ptr %.2155.i, i64 8 ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %.237154.i, i64 8 ; 2 uses
  %i.ajb = add nuw nsw i32 %.241153.i, 4          ; 3 uses
  %i.ajc = or disjoint i32 %i.ajb, 3
  %i.ajd = icmp slt i32 %i.ajc, %i.a
  br i1 %i.ajd, label %bb.w, label %.preheader.i50, !llvm.loop !1258

.lr.ph163.i:                                      ; preds = %.lr.ph163.i.prol.loopexit, %.lr.ph163.i
  %.3162.i = phi ptr [ %i.ajo, %.lr.ph163.i ], [ %.3162.i.unr, %.lr.ph163.i.prol.loopexit ] ; 3 uses
  %.338161.i = phi ptr [ %i.ajx, %.lr.ph163.i ], [ %.338161.i.unr, %.lr.ph163.i.prol.loopexit ] ; 3 uses
  %.342160.i = phi i32 [ %i.ajy, %.lr.ph163.i ], [ %.342160.i.unr, %.lr.ph163.i.prol.loopexit ]
  %i.aje = getelementptr inbounds nuw i8, ptr %.3162.i, i64 2
  %i.ajf = load i16, ptr %.3162.i, align 2, !tbaa !56
  %i.ajg = zext i16 %i.ajf to i32
  %i.ajh = shl nuw i32 %i.ajg, 16
  %i.aji = bitcast i32 %i.ajh to float
  %i.ajj = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.aji, float %i.xm)
  %i.ajk = bitcast float %i.ajj to i32
  %i.ajl = lshr i32 %i.ajk, 16
  %i.ajm = trunc nuw i32 %i.ajl to i16
  %i.ajn = getelementptr inbounds nuw i8, ptr %.338161.i, i64 2
  store i16 %i.ajm, ptr %.338161.i, align 2, !tbaa !56
  %i.ajo = getelementptr inbounds nuw i8, ptr %.3162.i, i64 4
  %i.ajp = load i16, ptr %i.aje, align 2, !tbaa !56
  %i.ajq = zext i16 %i.ajp to i32
  %i.ajr = shl nuw i32 %i.ajq, 16
  %i.ajs = bitcast i32 %i.ajr to float
  %i.ajt = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ajs, float %i.xm)
  %i.aju = bitcast float %i.ajt to i32
  %i.ajv = lshr i32 %i.aju, 16
  %i.ajw = trunc nuw i32 %i.ajv to i16
  %i.ajx = getelementptr inbounds nuw i8, ptr %.338161.i, i64 4
  store i16 %i.ajw, ptr %i.ajn, align 2, !tbaa !56
  %i.ajy = add nuw nsw i32 %.342160.i, 2          ; 2 uses
  %exitcond.not.i54.1 = icmp eq i32 %i.ajy, %i.a
  br i1 %exitcond.not.i54.1, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor16binary_op_ratan2EEEvPKtS4_Pti.exit, label %.lr.ph163.i, !llvm.loop !1259

bb.x:                                             ; preds = %bb.n, %bb.a
  %i.ajz = icmp eq i32 %6, 1
  br i1 %i.ajz, label %bb.y, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor16binary_op_ratan2EEEvPKtS4_Pti.exit

bb.y:                                             ; preds = %bb.x
  %i.aka = icmp eq i32 %3, %4
  br i1 %i.aka, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  switch i32 %.sroa.speculated, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor16binary_op_ratan2EEEvPKtS4_Pti.exit [
    i32 16, label %.preheader.i60
    i32 8, label %.preheader126.i
    i32 4, label %.preheader128.i
  ]

.preheader128.i:                                  ; preds = %bb.z
  %i.akb = icmp sgt i32 %.sroa.speculated82, 0
  br i1 %i.akb, label %.lr.ph.i58, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor16binary_op_ratan2EEEvPKtS4_Pti.exit

.preheader126.i:                                  ; preds = %bb.z
  %i.akc = icmp sgt i32 %.sroa.speculated82, 0
  br i1 %i.akc, label %.lr.ph138.i, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor16binary_op_ratan2EEEvPKtS4_Pti.exit

.preheader.i60:                                   ; preds = %bb.z
  %i.akd = icmp sgt i32 %.sroa.speculated82, 0
  br i1 %i.akd, label %.lr.ph143.i, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor16binary_op_ratan2EEEvPKtS4_Pti.exit

.lr.ph143.i:                                      ; preds = %.preheader.i60, %.lr.ph143.i
  %.031142.i = phi ptr [ %i.amk, %.lr.ph143.i ], [ %0, %.preheader.i60 ] ; 2 uses
  %.033141.i = phi ptr [ %i.aml, %.lr.ph143.i ], [ %1, %.preheader.i60 ] ; 2 uses
  %.036140.i = phi i32 [ %i.amn, %.lr.ph143.i ], [ 0, %.preheader.i60 ]
  %.037139.i = phi ptr [ %i.amm, %.lr.ph143.i ], [ %2, %.preheader.i60 ] ; 2 uses
  %i.ake = load <16 x i16>, ptr %.031142.i, align 1, !tbaa !60 ; 2 uses
  %i.akf = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ake, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.akg = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ake, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.akh = shufflevector <16 x i16> %i.akf, <16 x i16> %i.akg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aki = shufflevector <16 x i16> %i.akf, <16 x i16> %i.akg, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.akj = bitcast <16 x i16> %i.akh to <8 x i32>
  %i.akk = bitcast <16 x i16> %i.aki to <8 x i32>
  %i.akl = shufflevector <8 x i32> %i.akj, <8 x i32> %i.akk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.akm = bitcast <16 x i32> %i.akl to <16 x float> ; 3 uses
  %i.akn = load i16, ptr %.033141.i, align 2, !tbaa !56
  %i.ako = zext i16 %i.akn to i32
  %i.akp = shl nuw i32 %i.ako, 16
  %i.akq = insertelement <16 x i32> poison, i32 %i.akp, i64 0
  %i.akr = bitcast <16 x i32> %i.akq to <16 x float>
  %i.aks = shufflevector <16 x float> %i.akr, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.akt = fcmp fast one <16 x float> %i.akm, zeroinitializer
  %i.aku = fcmp fast one <16 x float> %i.aks, zeroinitializer
  %i.akv = fcmp fast olt <16 x float> %i.akm, zeroinitializer
  %i.akw = fcmp fast olt <16 x float> %i.aks, zeroinitializer
  %i.akx = select fast <16 x i1> %i.akw, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.aky = select fast <16 x i1> %i.akv, <16 x float> %i.akx, <16 x float> zeroinitializer
  %i.akz = fdiv fast <16 x float> %i.aks, %i.akm  ; 2 uses
  %i.ala = bitcast <16 x float> %i.akz to <16 x i32>
  %i.alb = and <16 x i32> %i.ala, splat (i32 -2147483648)
  %i.alc = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.akz) ; 3 uses
  %i.ald = fcmp fast ogt <16 x float> %i.alc, splat (float 1.000000e+00) ; 2 uses
  %i.ale = select fast <16 x i1> %i.ald, <16 x float> splat (float -1.000000e+00), <16 x float> %i.alc
  %i.alf = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.alc, <16 x float> splat (float 1.000000e+00))
  %i.alg = fdiv fast <16 x float> %i.ale, %i.alf  ; 3 uses
end_hunk_15
begin_hunk_16_@_ZN4ncnnL22binary_op_vector_bf16sINS_27BinaryOp_x86_avx512_functor16binary_op_ratan2EEEvPKtS4_Ptiiii:bb.a
  %i.asi = select fast <16 x i1> %i.ash, <16 x float> %i.arv, <16 x float> zeroinitializer
  %i.asj = fdiv fast <16 x float> %i.arr, %i.asf  ; 2 uses
  %i.ask = bitcast <16 x float> %i.asj to <16 x i32>
  %i.asl = and <16 x i32> %i.ask, splat (i32 -2147483648)
  %i.asm = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.asj) ; 3 uses
  %i.asn = fcmp fast ogt <16 x float> %i.asm, splat (float 1.000000e+00) ; 2 uses
  %i.aso = select fast <16 x i1> %i.asn, <16 x float> splat (float -1.000000e+00), <16 x float> %i.asm
  %i.asp = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.asm, <16 x float> splat (float 1.000000e+00))
  %i.asq = fdiv fast <16 x float> %i.aso, %i.asp  ; 3 uses
  %i.asr = fmul fast <16 x float> %i.asq, %i.asq  ; 3 uses
  %i.ass = fmul fast <16 x float> %i.asr, %i.asr  ; 7 uses
  %i.ast = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ass, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.asu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ass, <16 x float> nofpclass(nan inf) %i.ast, <16 x float> splat (float f0xBE117200))
  %i.asv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ass, <16 x float> nofpclass(nan inf) %i.asu, <16 x float> splat (float f0xBEAAAA53))
  %i.asw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ass, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.asx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ass, <16 x float> nofpclass(nan inf) %i.asw, <16 x float> splat (float f0x3DD9ED24))
  %i.asy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ass, <16 x float> nofpclass(nan inf) %i.asx, <16 x float> splat (float f0x3E4CB974))
  %i.asz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ass, <16 x float> nofpclass(nan inf) %i.asy, <16 x float> splat (float 1.000000e+00))
  %i.ata = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.asr, <16 x float> nofpclass(nan inf) %i.asv, <16 x float> nofpclass(nan inf) %i.asz)
  %i.atb = fmul fast <16 x float> %i.ata, %i.asq
  %i.atc = select fast <16 x i1> %i.asn, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.atd = fadd fast <16 x float> %i.atb, %i.atc
  %i.ate = bitcast <16 x float> %i.atd to <16 x i32>
  %i.atf = or <16 x i32> %i.asl, %i.ate
  %i.atg = bitcast <16 x i32> %i.atf to <16 x float>
  %i.ath = fadd fast <16 x float> %i.asi, %i.atg
  %i.ati = icmp slt <16 x i32> %i.ase, zeroinitializer
  %i.atj = select fast <16 x i1> %i.ati, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.atk = select <16 x i1> %i.asg, <16 x float> %i.ath, <16 x float> %i.arw
  %i.atl = select <16 x i1> %i.art, <16 x float> %i.atk, <16 x float> %i.atj
  %i.atm = bitcast <16 x float> %i.atl to <16 x i32>
  %i.atn = lshr <16 x i32> %i.atm, splat (i32 16) ; 2 uses
  %i.ato = shufflevector <16 x i32> %i.atn, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.atp = shufflevector <16 x i32> %i.atn, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.atq = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ato, <8 x i32> %i.atp)
  %i.atr = bitcast <16 x i16> %i.atq to <4 x i64>
  %i.ats = shufflevector <4 x i64> %i.atr, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.ats, ptr %.03089.i, align 1, !tbaa !60
  %i.att = getelementptr inbounds nuw i8, ptr %.090.i, i64 32 ; 2 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %.03089.i, i64 32 ; 2 uses
  %i.atv = add nuw nsw i32 %.03488.i, 16          ; 2 uses
  %i.atw = or disjoint i32 %i.atv, 15
  %i.atx = icmp slt i32 %i.atw, %i.a
  br i1 %i.atx, label %bb.ac, label %._crit_edge.loopexit.i, !llvm.loop !1263

._crit_edge.loopexit.i:                           ; preds = %bb.ac
  %i.aty = and i32 %i.a, 2147483632
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.ab
  %.034.lcssa.i61 = phi i32 [ 0, %bb.ab ], [ %i.aty, %._crit_edge.loopexit.i ] ; 3 uses
  %.030.lcssa.i = phi ptr [ %2, %bb.ab ], [ %i.atu, %._crit_edge.loopexit.i ] ; 2 uses
  %.0.lcssa.i62 = phi ptr [ %0, %bb.ab ], [ %i.att, %._crit_edge.loopexit.i ] ; 2 uses
  %i.atz = insertelement <8 x float> poison, float %i.arp, i64 0
  %i.aua = shufflevector <8 x float> %i.atz, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.aub = or disjoint i32 %.034.lcssa.i61, 7
  %i.auc = icmp slt i32 %i.aub, %i.a
  br i1 %i.auc, label %.lr.ph97.i, label %._crit_edge98.i

.lr.ph97.i:                                       ; preds = %._crit_edge.i
  %i.aud = fcmp fast ueq <8 x float> %i.aua, zeroinitializer ; 2 uses
  %i.aue = bitcast <8 x float> %i.aua to <8 x i32>
  %i.auf = and <8 x i32> %i.aue, splat (i32 -2147483648)
  %i.aug = fcmp fast olt <8 x float> %i.aua, zeroinitializer
  %i.auh = select <8 x i1> %i.aug, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.aui = or disjoint <8 x i32> %i.auf, splat (i32 1070137344)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph97.i
  %.195.i = phi ptr [ %.0.lcssa.i62, %.lr.ph97.i ], [ %i.awf, %bb.ad ] ; 2 uses
  %.13194.i = phi ptr [ %.030.lcssa.i, %.lr.ph97.i ], [ %i.awg, %bb.ad ] ; 2 uses
  %.13593.i = phi i32 [ %.034.lcssa.i61, %.lr.ph97.i ], [ %i.awh, %bb.ad ]
  %i.auj = load <8 x i16>, ptr %.195.i, align 1, !tbaa !60 ; 2 uses
  %i.auk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.auj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aul = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.auj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aum = shufflevector <8 x i16> %i.auk, <8 x i16> %i.aul, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.aun = bitcast <16 x i16> %i.aum to <8 x float> ; 3 uses
  %i.auo = fcmp fast ueq <8 x float> %i.aun, zeroinitializer ; 2 uses
  %.not87.i = or <8 x i1> %i.aud, %i.auo
  %i.aup = fcmp fast olt <8 x float> %i.aun, zeroinitializer
  %i.auq = select <8 x i1> %i.aup, <8 x float> %i.auh, <8 x float> zeroinitializer
  %i.aur = fdiv fast <8 x float> %i.aua, %i.aun   ; 2 uses
  %i.aus = bitcast <8 x float> %i.aur to <8 x i32>
  %i.aut = and <8 x i32> %i.aus, splat (i32 -2147483648)
  %i.auu = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aur) ; 3 uses
  %i.auv = fcmp fast ogt <8 x float> %i.auu, splat (float 1.000000e+00) ; 2 uses
  %i.auw = select <8 x i1> %i.auv, <8 x float> splat (float -1.000000e+00), <8 x float> %i.auu
  %i.aux = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.auu, <8 x float> splat (float 1.000000e+00))
  %i.auy = fdiv fast <8 x float> %i.auw, %i.aux   ; 3 uses
  %i.auz = fmul fast <8 x float> %i.auy, %i.auy   ; 3 uses
  %i.ava = fmul fast <8 x float> %i.auz, %i.auz   ; 7 uses
  %i.avb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ava, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.avc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ava, <8 x float> nofpclass(nan inf) %i.avb, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.avd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ava, <8 x float> nofpclass(nan inf) %i.avc, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.ave = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ava, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.avf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ava, <8 x float> nofpclass(nan inf) %i.ave, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.avg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ava, <8 x float> nofpclass(nan inf) %i.avf, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.avh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ava, <8 x float> nofpclass(nan inf) %i.avg, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.avi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.auz, <8 x float> nofpclass(nan inf) %i.avd, <8 x float> nofpclass(nan inf) %i.avh)
  %i.avj = fmul fast <8 x float> %i.avi, %i.auy
  %i.avk = select <8 x i1> %i.auv, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.avl = fadd fast <8 x float> %i.avj, %i.avk
  %i.avm = bitcast <8 x float> %i.avl to <8 x i32>
  %i.avn = or <8 x i32> %i.aut, %i.avm
  %i.avo = bitcast <8 x i32> %i.avn to <8 x float>
  %i.avp = fadd fast <8 x float> %i.auq, %i.avo
  %i.avq = bitcast <16 x i16> %i.aum to <8 x i32>
  %i.avr = and <8 x i32> %i.avq, splat (i32 -2147483648)
  %i.avs = or disjoint <8 x i32> %i.avr, splat (i32 1078530011)
  %i.avt = bitcast <8 x i32> %i.avs to <8 x float>
  %i.avu = fcmp fast uge <8 x float> %i.avt, zeroinitializer
  %i.avv = select <8 x i1> %i.avu, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078525952)
  %i.avw = bitcast <8 x float> %i.avp to <8 x i32>
  %i.avx = select <8 x i1> %.not87.i, <8 x i32> zeroinitializer, <8 x i32> %i.avw
  %i.avy = select <8 x i1> %i.auo, <8 x i32> %i.aui, <8 x i32> zeroinitializer
  %i.avz = select <8 x i1> %i.aud, <8 x i32> %i.avv, <8 x i32> %i.avy
  %i.awa = or <8 x i32> %i.avx, %i.avz
  %i.awb = lshr <8 x i32> %i.awa, splat (i32 16)  ; 2 uses
  %i.awc = shufflevector <8 x i32> %i.awb, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.awd = shufflevector <8 x i32> %i.awb, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.awe = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.awc, <4 x i32> %i.awd)
  store <8 x i16> %i.awe, ptr %.13194.i, align 1, !tbaa !60
  %i.awf = getelementptr inbounds nuw i8, ptr %.195.i, i64 16 ; 2 uses
  %i.awg = getelementptr inbounds nuw i8, ptr %.13194.i, i64 16 ; 2 uses
  %i.awh = add nuw nsw i32 %.13593.i, 8           ; 3 uses
  %i.awi = or disjoint i32 %i.awh, 7
  %i.awj = icmp slt i32 %i.awi, %i.a
  br i1 %i.awj, label %bb.ad, label %._crit_edge98.i, !llvm.loop !1264

._crit_edge98.i:                                  ; preds = %bb.ad, %._crit_edge.i
  %.135.lcssa.i63 = phi i32 [ %.034.lcssa.i61, %._crit_edge.i ], [ %i.awh, %bb.ad ] ; 3 uses
  %.131.lcssa.i = phi ptr [ %.030.lcssa.i, %._crit_edge.i ], [ %i.awg, %bb.ad ] ; 2 uses
  %.1.lcssa.i64 = phi ptr [ %.0.lcssa.i62, %._crit_edge.i ], [ %i.awf, %bb.ad ] ; 2 uses
  %i.awk = insertelement <4 x float> poison, float %i.arp, i64 0
  %i.awl = shufflevector <4 x float> %i.awk, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.awm = or disjoint i32 %.135.lcssa.i63, 3
  %i.awn = icmp slt i32 %i.awm, %i.a
  br i1 %i.awn, label %.lr.ph106.i, label %.preheader.i65

.lr.ph106.i:                                      ; preds = %._crit_edge98.i
  %i.awo = fcmp fast oeq <4 x float> %i.awl, zeroinitializer ; 2 uses
  %i.awp = bitcast <4 x float> %i.awl to <4 x i32>
  %i.awq = and <4 x i32> %i.awp, splat (i32 -2147483648)
  %i.awr = fcmp fast olt <4 x float> %i.awl, zeroinitializer
  %i.aws = select <4 x i1> %i.awr, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.awt = or disjoint <4 x i32> %i.awq, splat (i32 1070137344)
  br label %bb.ae

.preheader.i65:                                   ; preds = %bb.ae, %._crit_edge98.i
  %.236.lcssa.i66 = phi i32 [ %.135.lcssa.i63, %._crit_edge98.i ], [ %i.bci, %bb.ae ] ; 5 uses
  %.232.lcssa.i = phi ptr [ %.131.lcssa.i, %._crit_edge98.i ], [ %i.bch, %bb.ae ] ; 6 uses
  %.2.lcssa.i67 = phi ptr [ %.1.lcssa.i64, %._crit_edge98.i ], [ %i.bcg, %bb.ae ] ; 6 uses
  %i.awu = icmp slt i32 %.236.lcssa.i66, %i.a
  br i1 %i.awu, label %iter.check, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor16binary_op_ratan2EEEvPKtS4_Pti.exit

iter.check:                                       ; preds = %.preheader.i65
  %.232.lcssa.i269 = ptrtoaddr ptr %.232.lcssa.i to i64
  %.2.lcssa.i67268 = ptrtoaddr ptr %.2.lcssa.i67 to i64
  %i.awv = xor i32 %.236.lcssa.i66, -1
  %i.aww = add i32 %i.a, %i.awv                   ; 3 uses
  %i.awx = zext i32 %i.aww to i64
  %i.awy = add nuw nsw i64 %i.awx, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.aww, 7
  %i.awz = sub i64 %.2.lcssa.i67268, %.232.lcssa.i269
  %diff.check = icmp ugt i64 %i.awz, -64
  %or.cond408 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond408, label %.lr.ph113.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check270 = icmp ult i32 %i.aww, 31
  br i1 %min.iters.check270, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.axa = and i64 %i.awy, 24
  %n.vec = and i64 %i.awy, 8589934560             ; 5 uses
  %i.axb = shl nuw nsw i64 %n.vec, 1              ; 2 uses
  %i.axc = getelementptr i8, ptr %.2.lcssa.i67, i64 %i.axb
  %i.axd = getelementptr i8, ptr %.232.lcssa.i, i64 %i.axb
  %i.axe = trunc i64 %n.vec to i32
  %i.axf = add i32 %.236.lcssa.i66, %i.axe
  %i.axg = insertelement <16 x float> poison, float %i.arp, i64 0
  %i.axh = shufflevector <16 x float> %i.axg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.axi = insertelement <8 x float> poison, float %i.arp, i64 0
  %i.axj = shufflevector <8 x float> %i.axi, <8 x float> poison, <8 x i32> zeroinitializer
  %i.axk = insertelement <4 x float> poison, float %i.arp, i64 0
  %i.axl = shufflevector <4 x float> %i.axk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.axm = insertelement <2 x float> poison, float %i.arp, i64 0
  %i.axn = shufflevector <2 x float> %i.axm, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.axo = shl i64 %index, 1                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.2.lcssa.i67, i64 %i.axo
  %next.gep271 = getelementptr i8, ptr %.232.lcssa.i, i64 %i.axo
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !56
  %i.axp = zext <32 x i16> %wide.load to <32 x i32>
  %i.axq = shl nuw <32 x i32> %i.axp, splat (i32 16)
  %i.axr = bitcast <32 x i32> %i.axq to <32 x float> ; 6 uses
  %i.axs = extractelement <32 x float> %i.axr, i64 0
  %i.axt = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.arp, float %i.axs)
  %i.axu = shufflevector <32 x float> %i.axr, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.axv = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.axh, <16 x float> %i.axu)
  %i.axw = shufflevector <32 x float> %i.axr, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.axx = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.axj, <8 x float> %i.axw)
  %i.axy = shufflevector <32 x float> %i.axr, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.axz = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.axl, <4 x float> %i.axy)
  %i.aya = extractelement <32 x float> %i.axr, i64 29
  %i.ayb = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.arp, float %i.aya)
  %i.ayc = shufflevector <32 x float> %i.axr, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.ayd = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.axn, <2 x float> %i.ayc)
  %i.aye = insertelement <32 x float> poison, float %i.axt, i64 0
  %i.ayf = shufflevector <16 x float> %i.axv, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ayg = shufflevector <32 x float> %i.aye, <32 x float> %i.ayf, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ayh = shufflevector <8 x float> %i.axx, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ayi = shufflevector <32 x float> %i.ayg, <32 x float> %i.ayh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ayj = shufflevector <4 x float> %i.axz, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ayk = shufflevector <32 x float> %i.ayi, <32 x float> %i.ayj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.ayl = insertelement <32 x float> %i.ayk, float %i.ayb, i64 29
  %i.aym = shufflevector <2 x float> %i.ayd, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ayn = shufflevector <32 x float> %i.ayl, <32 x float> %i.aym, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.ayo = bitcast <32 x float> %i.ayn to <32 x i32>
  %i.ayp = lshr <32 x i32> %i.ayo, splat (i32 16)
  %i.ayq = trunc nuw <32 x i32> %i.ayp to <32 x i16>
  store <32 x i16> %i.ayq, ptr %next.gep271, align 2, !tbaa !56
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ayr = icmp eq i64 %index.next, %n.vec
  br i1 %i.ayr, label %middle.block, label %vector.body, !llvm.loop !1265

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.awy, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor16binary_op_ratan2EEEvPKtS4_Pti.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.axa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph113.i.preheader, label %vec.epilog.ph, !prof !64

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec272 = and i64 %i.awy, 8589934584          ; 4 uses
  %i.ays = shl nuw nsw i64 %n.vec272, 1           ; 2 uses
  %i.ayt = getelementptr i8, ptr %.2.lcssa.i67, i64 %i.ays
  %i.ayu = getelementptr i8, ptr %.232.lcssa.i, i64 %i.ays
  %i.ayv = trunc i64 %n.vec272 to i32
  %i.ayw = add i32 %.236.lcssa.i66, %i.ayv
  %i.ayx = insertelement <4 x float> poison, float %i.arp, i64 0
  %i.ayy = shufflevector <4 x float> %i.ayx, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index273 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next277, %vec.epilog.vector.body ] ; 2 uses
  %i.ayz = shl i64 %index273, 1                   ; 2 uses
  %next.gep274 = getelementptr i8, ptr %.2.lcssa.i67, i64 %i.ayz
  %next.gep275 = getelementptr i8, ptr %.232.lcssa.i, i64 %i.ayz
  %wide.load276 = load <8 x i16>, ptr %next.gep274, align 2, !tbaa !56
  %i.aza = zext <8 x i16> %wide.load276 to <8 x i32>
  %i.azb = shl nuw <8 x i32> %i.aza, splat (i32 16)
  %i.azc = bitcast <8 x i32> %i.azb to <8 x float> ; 5 uses
  %i.azd = extractelement <8 x float> %i.azc, i64 0
  %i.aze = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.arp, float %i.azd)
  %i.azf = extractelement <8 x float> %i.azc, i64 1
  %i.azg = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.arp, float %i.azf)
  %i.azh = extractelement <8 x float> %i.azc, i64 2
  %i.azi = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.arp, float %i.azh)
  %i.azj = shufflevector <8 x float> %i.azc, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.azk = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.ayy, <4 x float> %i.azj)
  %i.azl = extractelement <8 x float> %i.azc, i64 7
  %i.azm = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.arp, float %i.azl)
  %i.azn = insertelement <8 x float> poison, float %i.aze, i64 0
  %i.azo = insertelement <8 x float> %i.azn, float %i.azg, i64 1
  %i.azp = insertelement <8 x float> %i.azo, float %i.azi, i64 2
  %i.azq = shufflevector <4 x float> %i.azk, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.azr = shufflevector <8 x float> %i.azp, <8 x float> %i.azq, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.azs = insertelement <8 x float> %i.azr, float %i.azm, i64 7
  %i.azt = bitcast <8 x float> %i.azs to <8 x i32>
  %i.azu = lshr <8 x i32> %i.azt, splat (i32 16)
  %i.azv = trunc nuw <8 x i32> %i.azu to <8 x i16>
  store <8 x i16> %i.azv, ptr %next.gep275, align 2, !tbaa !56
  %index.next277 = add nuw i64 %index273, 8       ; 2 uses
  %i.azw = icmp eq i64 %index.next277, %n.vec272
  br i1 %i.azw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1266

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n278 = icmp eq i64 %i.awy, %n.vec272
  br i1 %cmp.n278, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor16binary_op_ratan2EEEvPKtS4_Pti.exit, label %.lr.ph113.i.preheader

.lr.ph113.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3112.i.ph = phi ptr [ %.2.lcssa.i67, %iter.check ], [ %i.axc, %vec.epilog.iter.check ], [ %i.ayt, %vec.epilog.middle.block ] ; 3 uses
  %.333111.i.ph = phi ptr [ %.232.lcssa.i, %iter.check ], [ %i.axd, %vec.epilog.iter.check ], [ %i.ayu, %vec.epilog.middle.block ] ; 3 uses
  %.337110.i.ph = phi i32 [ %.236.lcssa.i66, %iter.check ], [ %i.axf, %vec.epilog.iter.check ], [ %i.ayw, %vec.epilog.middle.block ] ; 4 uses
  %i.azx = sub i32 %i.a, %.337110.i.ph
  %.neg = add i32 %.337110.i.ph, 1
  %xtraiter = and i32 %i.azx, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph113.i.prol.loopexit, label %.lr.ph113.i.prol

.lr.ph113.i.prol:                                 ; preds = %.lr.ph113.i.preheader
  %i.azy = getelementptr inbounds nuw i8, ptr %.3112.i.ph, i64 2
  %i.azz = load i16, ptr %.3112.i.ph, align 2, !tbaa !56
  %i.baa = zext i16 %i.azz to i32
  %i.bab = shl nuw i32 %i.baa, 16
  %i.bac = bitcast i32 %i.bab to float
  %i.bad = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.arp, float %i.bac)
  %i.bae = bitcast float %i.bad to i32
  %i.baf = lshr i32 %i.bae, 16
  %i.bag = trunc nuw i32 %i.baf to i16
  %i.bah = getelementptr inbounds nuw i8, ptr %.333111.i.ph, i64 2
  store i16 %i.bag, ptr %.333111.i.ph, align 2, !tbaa !56
  %i.bai = add nuw nsw i32 %.337110.i.ph, 1
  br label %.lr.ph113.i.prol.loopexit

.lr.ph113.i.prol.loopexit:                        ; preds = %.lr.ph113.i.prol, %.lr.ph113.i.preheader
  %.3112.i.unr = phi ptr [ %.3112.i.ph, %.lr.ph113.i.preheader ], [ %i.azy, %.lr.ph113.i.prol ]
  %.333111.i.unr = phi ptr [ %.333111.i.ph, %.lr.ph113.i.preheader ], [ %i.bah, %.lr.ph113.i.prol ]
  %.337110.i.unr = phi i32 [ %.337110.i.ph, %.lr.ph113.i.preheader ], [ %i.bai, %.lr.ph113.i.prol ]
  %i.baj = icmp eq i32 %i.a, %.neg
  br i1 %i.baj, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor16binary_op_ratan2EEEvPKtS4_Pti.exit, label %.lr.ph113.i

bb.ae:                                            ; preds = %bb.ae, %.lr.ph106.i
  %.2104.i = phi ptr [ %.1.lcssa.i64, %.lr.ph106.i ], [ %i.bcg, %bb.ae ] ; 2 uses
  %.232103.i = phi ptr [ %.131.lcssa.i, %.lr.ph106.i ], [ %i.bch, %bb.ae ] ; 2 uses
  %.236102.i = phi i32 [ %.135.lcssa.i63, %.lr.ph106.i ], [ %i.bci, %bb.ae ]
  %i.bak = load i64, ptr %.2104.i, align 1, !tbaa !60
  %i.bal = insertelement <2 x i64> poison, i64 %i.bak, i64 0
  %i.bam = bitcast <2 x i64> %i.bal to <8 x i16>
  %i.ban = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bam, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.bao = bitcast <8 x i16> %i.ban to <4 x float> ; 3 uses
  %i.bap = fcmp fast oeq <4 x float> %i.bao, zeroinitializer ; 2 uses
  %.not84.i = or <4 x i1> %i.awo, %i.bap
  %i.baq = fcmp fast olt <4 x float> %i.bao, zeroinitializer
  %i.bar = select <4 x i1> %i.baq, <4 x float> %i.aws, <4 x float> zeroinitializer
  %i.bas = fdiv fast <4 x float> %i.awl, %i.bao   ; 2 uses
  %i.bat = bitcast <4 x float> %i.bas to <4 x i32>
  %i.bau = and <4 x i32> %i.bat, splat (i32 -2147483648)
  %i.bav = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bas) ; 3 uses
  %i.baw = fcmp fast ogt <4 x float> %i.bav, splat (float 1.000000e+00) ; 2 uses
  %i.bax = select <4 x i1> %i.baw, <4 x float> splat (float -1.000000e+00), <4 x float> %i.bav
  %i.bay = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bav, <4 x float> splat (float 1.000000e+00))
  %i.baz = fdiv fast <4 x float> %i.bax, %i.bay   ; 3 uses
  %i.bba = fmul fast <4 x float> %i.baz, %i.baz   ; 3 uses
  %i.bbb = fmul fast <4 x float> %i.bba, %i.bba   ; 7 uses
  %i.bbc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bbb, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.bbd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bbb, <4 x float> nofpclass(nan inf) %i.bbc, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.bbe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bbb, <4 x float> nofpclass(nan inf) %i.bbd, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.bbf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bbb, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.bbg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bbb, <4 x float> nofpclass(nan inf) %i.bbf, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.bbh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bbb, <4 x float> nofpclass(nan inf) %i.bbg, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.bbi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bbb, <4 x float> nofpclass(nan inf) %i.bbh, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.bbj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bba, <4 x float> nofpclass(nan inf) %i.bbe, <4 x float> nofpclass(nan inf) %i.bbi)
  %i.bbk = fmul fast <4 x float> %i.bbj, %i.baz
  %i.bbl = select <4 x i1> %i.baw, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.bbm = fadd fast <4 x float> %i.bbk, %i.bbl
  %i.bbn = bitcast <4 x float> %i.bbm to <4 x i32>
  %i.bbo = or <4 x i32> %i.bau, %i.bbn
  %i.bbp = bitcast <4 x i32> %i.bbo to <4 x float>
  %i.bbq = fadd fast <4 x float> %i.bar, %i.bbp
  %i.bbr = bitcast <8 x i16> %i.ban to <4 x i32>
  %i.bbs = and <4 x i32> %i.bbr, splat (i32 -2147483648)
  %i.bbt = or disjoint <4 x i32> %i.bbs, splat (i32 1078530011)
  %i.bbu = bitcast <4 x i32> %i.bbt to <4 x float>
  %i.bbv = fcmp fast uge <4 x float> %i.bbu, zeroinitializer
  %i.bbw = select <4 x i1> %i.bbv, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078525952)
  %i.bbx = bitcast <4 x float> %i.bbq to <4 x i32>
  %i.bby = select <4 x i1> %.not84.i, <4 x i32> zeroinitializer, <4 x i32> %i.bbx
  %i.bbz = select <4 x i1> %i.bap, <4 x i32> %i.awt, <4 x i32> zeroinitializer
  %i.bca = select <4 x i1> %i.awo, <4 x i32> %i.bbw, <4 x i32> %i.bbz
  %i.bcb = or <4 x i32> %i.bby, %i.bca
  %i.bcc = lshr <4 x i32> %i.bcb, splat (i32 16)
  %i.bcd = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bcc, <4 x i32> poison)
  %i.bce = bitcast <8 x i16> %i.bcd to <2 x i64>
  %i.bcf = extractelement <2 x i64> %i.bce, i64 0
  store i64 %i.bcf, ptr %.232103.i, align 1, !tbaa !60
  %i.bcg = getelementptr inbounds nuw i8, ptr %.2104.i, i64 8 ; 2 uses
  %i.bch = getelementptr inbounds nuw i8, ptr %.232103.i, i64 8 ; 2 uses
  %i.bci = add nuw nsw i32 %.236102.i, 4          ; 3 uses
  %i.bcj = or disjoint i32 %i.bci, 3
  %i.bck = icmp slt i32 %i.bcj, %i.a
  br i1 %i.bck, label %bb.ae, label %.preheader.i65, !llvm.loop !1267

.lr.ph113.i:                                      ; preds = %.lr.ph113.i.prol.loopexit, %.lr.ph113.i
  %.3112.i = phi ptr [ %i.bcv, %.lr.ph113.i ], [ %.3112.i.unr, %.lr.ph113.i.prol.loopexit ] ; 3 uses
  %.333111.i = phi ptr [ %i.bde, %.lr.ph113.i ], [ %.333111.i.unr, %.lr.ph113.i.prol.loopexit ] ; 3 uses
  %.337110.i = phi i32 [ %i.bdf, %.lr.ph113.i ], [ %.337110.i.unr, %.lr.ph113.i.prol.loopexit ]
  %i.bcl = getelementptr inbounds nuw i8, ptr %.3112.i, i64 2
  %i.bcm = load i16, ptr %.3112.i, align 2, !tbaa !56
  %i.bcn = zext i16 %i.bcm to i32
  %i.bco = shl nuw i32 %i.bcn, 16
  %i.bcp = bitcast i32 %i.bco to float
  %i.bcq = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.arp, float %i.bcp)
  %i.bcr = bitcast float %i.bcq to i32
  %i.bcs = lshr i32 %i.bcr, 16
  %i.bct = trunc nuw i32 %i.bcs to i16
  %i.bcu = getelementptr inbounds nuw i8, ptr %.333111.i, i64 2
  store i16 %i.bct, ptr %.333111.i, align 2, !tbaa !56
  %i.bcv = getelementptr inbounds nuw i8, ptr %.3112.i, i64 4
  %i.bcw = load i16, ptr %i.bcl, align 2, !tbaa !56
  %i.bcx = zext i16 %i.bcw to i32
  %i.bcy = shl nuw i32 %i.bcx, 16
  %i.bcz = bitcast i32 %i.bcy to float
  %i.bda = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.arp, float %i.bcz)
  %i.bdb = bitcast float %i.bda to i32
  %i.bdc = lshr i32 %i.bdb, 16
  %i.bdd = trunc nuw i32 %i.bdc to i16
  %i.bde = getelementptr inbounds nuw i8, ptr %.333111.i, i64 4
  store i16 %i.bdd, ptr %i.bcu, align 2, !tbaa !56
  %i.bdf = add nuw nsw i32 %.337110.i, 2          ; 2 uses
  %exitcond.not.i68.1 = icmp eq i32 %i.bdf, %i.a
  br i1 %exitcond.not.i68.1, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor16binary_op_ratan2EEEvPKtS4_Pti.exit, label %.lr.ph113.i, !llvm.loop !1268

bb.af:                                            ; preds = %bb.aa
  %i.bdg = icmp eq i32 %3, 1
  br i1 %i.bdg, label %bb.ag, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor16binary_op_ratan2EEEvPKtS4_Pti.exit

bb.ag:                                            ; preds = %bb.af
  switch i32 %.sroa.speculated, label %_ZN4ncnnL35binary_op_vector_no_broadcast_bf16sINS_27BinaryOp_x86_avx512_functor16binary_op_ratan2EEEvPKtS4_Pti.exit [
    i32 16, label %.lr.ph132.i
    i32 8, label %.lr.ph128.i
    i32 4, label %.lr.ph.i70
  ]

.lr.ph132.i:                                      ; preds = %bb.ag
  %i.bdh = load <16 x i16>, ptr %0, align 1, !tbaa !60 ; 2 uses
  %i.bdi = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.bdh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bdj = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.bdh, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bdk = shufflevector <16 x i16> %i.bdi, <16 x i16> %i.bdj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bdl = bitcast <16 x i16> %i.bdk to <8 x i32>
  %i.bdm = shufflevector <16 x i16> %i.bdi, <16 x i16> %i.bdj, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bdn = bitcast <16 x i16> %i.bdm to <8 x i32>
  %i.bdo = shufflevector <8 x i32> %i.bdl, <8 x i32> %i.bdn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.bdp = bitcast <16 x i32> %i.bdo to <16 x float> ; 3 uses
  %i.bdq = fcmp fast one <16 x float> %i.bdp, zeroinitializer
  %i.bdr = fcmp fast olt <16 x float> %i.bdp, zeroinitializer
  %i.bds = icmp slt <16 x i32> %i.bdo, zeroinitializer
  %i.bdt = select fast <16 x i1> %i.bds, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.bdu = fdiv fast <16 x float> splat (float 1.000000e+00), %i.bdp
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph132.i
  %.028131.i = phi ptr [ %1, %.lr.ph132.i ], [ %i.bfo, %bb.ah ] ; 2 uses
  %.030130.i = phi ptr [ %2, %.lr.ph132.i ], [ %i.bfp, %bb.ah ] ; 2 uses
  %.033129.i = phi i32 [ 0, %.lr.ph132.i ], [ %i.bfq, %bb.ah ]
  %i.bdv = load i16, ptr %.028131.i, align 2, !tbaa !56
  %i.bdw = zext i16 %i.bdv to i32
  %i.bdx = shl nuw i32 %i.bdw, 16
  %i.bdy = insertelement <16 x i32> poison, i32 %i.bdx, i64 0
  %i.bdz = bitcast <16 x i32> %i.bdy to <16 x float>
  %i.bea = shufflevector <16 x float> %i.bdz, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.beb = fcmp fast one <16 x float> %i.bea, zeroinitializer
  %i.bec = fcmp fast olt <16 x float> %i.bea, zeroinitializer
  %i.bed = select fast <16 x i1> %i.bec, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.bee = select fast <16 x i1> %i.bdr, <16 x float> %i.bed, <16 x float> zeroinitializer
  %i.bef = fmul fast <16 x float> %i.bea, %i.bdu  ; 2 uses
  %i.beg = bitcast <16 x float> %i.bef to <16 x i32>
  %i.beh = and <16 x i32> %i.beg, splat (i32 -2147483648)
  %i.bei = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.bef) ; 3 uses
  %i.bej = fcmp fast ogt <16 x float> %i.bei, splat (float 1.000000e+00) ; 2 uses
  %i.bek = select fast <16 x i1> %i.bej, <16 x float> splat (float -1.000000e+00), <16 x float> %i.bei
  %i.bel = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.bei, <16 x float> splat (float 1.000000e+00))
  %i.bem = fdiv fast <16 x float> %i.bek, %i.bel  ; 3 uses
  %i.ben = fmul fast <16 x float> %i.bem, %i.bem  ; 3 uses
  %i.beo = fmul fast <16 x float> %i.ben, %i.ben  ; 7 uses
  %i.bep = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.beo, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.beq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.beo, <16 x float> nofpclass(nan inf) %i.bep, <16 x float> splat (float f0xBE117200))
  %i.ber = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.beo, <16 x float> nofpclass(nan inf) %i.beq, <16 x float> splat (float f0xBEAAAA53))
  %i.bes = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.beo, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.bet = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.beo, <16 x float> nofpclass(nan inf) %i.bes, <16 x float> splat (float f0x3DD9ED24))
  %i.beu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.beo, <16 x float> nofpclass(nan inf) %i.bet, <16 x float> splat (float f0x3E4CB974))
  %i.bev = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.beo, <16 x float> nofpclass(nan inf) %i.beu, <16 x float> splat (float 1.000000e+00))
end_hunk_16
