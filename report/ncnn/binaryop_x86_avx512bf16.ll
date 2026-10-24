Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/binaryop_x86_avx512bf16?download=true
inline.NumInlined: 199
inline.NumDeleted: 137
loop-unroll.NumRuntimeUnrolled: 194
loop-unroll.NumUnrolled: 194
begin_hunk_0_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  br i1 %i.gsf, label %.lr.ph189.i39.i, label %.preheader179.i.i

.lr.ph.i41.i947:                                  ; preds = %bb.fq, %.lr.ph.i41.i947
  %.0183.i.i = phi ptr [ %i.gul, %.lr.ph.i41.i947 ], [ %0, %bb.fq ] ; 2 uses
  %.035182.i.i = phi ptr [ %i.gum, %.lr.ph.i41.i947 ], [ %2, %bb.fq ] ; 2 uses
  %.039181.i.i = phi i32 [ %i.gun, %.lr.ph.i41.i947 ], [ 0, %bb.fq ]
  %i.gsg = load <16 x bfloat>, ptr %.0183.i.i, align 1, !tbaa !555
  %i.gsh = fpext fast <16 x bfloat> %i.gsg to <16 x float>
  %i.gsi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.gsh, <16 x float> splat (float f0x00800000), i32 4)
  %i.gsj = bitcast <16 x float> %i.gsi to <16 x i32> ; 2 uses
  %i.gsk = lshr <16 x i32> %i.gsj, splat (i32 23)
  %i.gsl = and <16 x i32> %i.gsj, splat (i32 -2139095041)
  %i.gsm = or disjoint <16 x i32> %i.gsl, splat (i32 1056964608)
  %i.gsn = bitcast <16 x i32> %i.gsm to <16 x float> ; 3 uses
  %i.gso = add nsw <16 x i32> %i.gsk, splat (i32 -127)
  %i.gsp = sitofp fast <16 x i32> %i.gso to <16 x float> ; 2 uses
  %i.gsq = fadd fast <16 x float> %i.gsp, splat (float 1.000000e+00)
  %i.gsr = fcmp fast olt <16 x float> %i.gsn, splat (float f0x3F3504F3) ; 2 uses
  %i.gss = fadd fast <16 x float> %i.gsn, splat (float -1.000000e+00)
  %i.gst = select fast <16 x i1> %i.gsr, <16 x float> %i.gsp, <16 x float> %i.gsq ; 2 uses
  %i.gsu = select fast <16 x i1> %i.gsr, <16 x float> %i.gsn, <16 x float> zeroinitializer
  %i.gsv = fadd fast <16 x float> %i.gss, %i.gsu  ; 12 uses
  %i.gsw = fmul fast <16 x float> %i.gsv, %i.gsv  ; 2 uses
  %i.gsx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gsv, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.gsy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gsx, <16 x float> nofpclass(nan inf) %i.gsv, <16 x float> splat (float f0x3DEF251A))
  %i.gsz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gsy, <16 x float> nofpclass(nan inf) %i.gsv, <16 x float> splat (float f0xBDFE5D4F))
  %i.gta = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gsz, <16 x float> nofpclass(nan inf) %i.gsv, <16 x float> splat (float f0x3E11E9BF))
  %i.gtb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gta, <16 x float> nofpclass(nan inf) %i.gsv, <16 x float> splat (float f0xBE2AAE50))
  %i.gtc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gtb, <16 x float> nofpclass(nan inf) %i.gsv, <16 x float> splat (float f0x3E4CCEAC))
  %i.gtd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gtc, <16 x float> nofpclass(nan inf) %i.gsv, <16 x float> splat (float f0xBE7FFFFC))
  %i.gte = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gtd, <16 x float> nofpclass(nan inf) %i.gsv, <16 x float> splat (float f0x3EAAAAAA))
  %i.gtf = fmul fast <16 x float> %i.gsw, %i.gsv
  %i.gtg = fmul fast <16 x float> %i.gtf, %i.gte
  %i.gth = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gst, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.gtg)
  %i.gti = fneg fast <16 x float> %i.gsw
  %i.gtj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.gti, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.gth)
  %i.gtk = fadd fast <16 x float> %i.gtj, %i.gsv
  %i.gtl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gst, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.gtk)
  %i.gtm = fmul fast <16 x float> %i.gtl, %i.gsb
  %i.gtn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.gtm, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.gto = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.gtn, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.gtp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gto, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.gtq = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.gtp, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.gtr = fcmp fast ogt <16 x float> %i.gtq, %i.gtp
  %i.gts = fadd fast <16 x float> %i.gtq, splat (float -1.000000e+00)
  %i.gtt = select fast <16 x i1> %i.gtr, <16 x float> %i.gts, <16 x float> %i.gtq ; 2 uses
  %i.gtu = fneg fast <16 x float> %i.gtt          ; 2 uses
  %i.gtv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.gtu, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.gto)
  %i.gtw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.gtu, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.gtv) ; 8 uses
  %i.gtx = fmul fast <16 x float> %i.gtw, %i.gtw
  %i.gty = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gtw, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.gtz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gty, <16 x float> nofpclass(nan inf) %i.gtw, <16 x float> splat (float f0x3C088908))
  %i.gua = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gtz, <16 x float> nofpclass(nan inf) %i.gtw, <16 x float> splat (float f0x3D2AA9C1))
  %i.gub = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gua, <16 x float> nofpclass(nan inf) %i.gtw, <16 x float> splat (float f0x3E2AAAAA))
  %i.guc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.gub, <16 x float> nofpclass(nan inf) %i.gtw, <16 x float> splat (float 5.000000e-01))
  %i.gud = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.guc, <16 x float> nofpclass(nan inf) %i.gtx, <16 x float> nofpclass(nan inf) %i.gtw)
  %i.gue = fadd fast <16 x float> %i.gud, splat (float 1.000000e+00)
  %i.guf = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.gtt, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.gug = shl <16 x i32> %i.guf, splat (i32 23)
  %i.guh = add <16 x i32> %i.gug, splat (i32 1065353216)
  %i.gui = bitcast <16 x i32> %i.guh to <16 x float>
  %i.guj = fmul fast <16 x float> %i.gue, %i.gui
  %i.guk = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.guj)
  store <16 x bfloat> %i.guk, ptr %.035182.i.i, align 1, !tbaa !555
  %i.gul = getelementptr inbounds nuw i8, ptr %.0183.i.i, i64 32 ; 2 uses
  %i.gum = getelementptr inbounds nuw i8, ptr %.035182.i.i, i64 32 ; 2 uses
  %i.gun = add nuw nsw i32 %.039181.i.i, 16       ; 2 uses
  %i.guo = or disjoint i32 %i.gun, 15
  %i.gup = icmp slt i32 %i.guo, %i.gff
  br i1 %i.gup, label %.lr.ph.i41.i947, label %.preheader180.loopexit.i.i, !llvm.loop !195

.preheader179.i.i:                                ; preds = %.lr.ph189.i39.i, %.preheader180.i.i
  %.140.lcssa.i.i939 = phi i32 [ %.039.lcssa.i.i936, %.preheader180.i.i ], [ %i.gwz, %.lr.ph189.i39.i ] ; 3 uses
  %.136.lcssa.i.i940 = phi ptr [ %.035.lcssa.i.i937, %.preheader180.i.i ], [ %i.gwy, %.lr.ph189.i39.i ] ; 2 uses
  %.1.lcssa.i35.i941 = phi ptr [ %.0.lcssa.i34.i938, %.preheader180.i.i ], [ %i.gwx, %.lr.ph189.i39.i ] ; 2 uses
  %i.guq = or disjoint i32 %.140.lcssa.i.i939, 3
  %i.gur = icmp slt i32 %i.guq, %i.gff
  br i1 %i.gur, label %.lr.ph196.i.i, label %.preheader.i36.i942

.lr.ph189.i39.i:                                  ; preds = %.preheader180.i.i, %.lr.ph189.i39.i
  %.1188.i40.i = phi ptr [ %i.gwx, %.lr.ph189.i39.i ], [ %.0.lcssa.i34.i938, %.preheader180.i.i ] ; 2 uses
  %.136187.i.i = phi ptr [ %i.gwy, %.lr.ph189.i39.i ], [ %.035.lcssa.i.i937, %.preheader180.i.i ] ; 2 uses
  %.140186.i.i = phi i32 [ %i.gwz, %.lr.ph189.i39.i ], [ %.039.lcssa.i.i936, %.preheader180.i.i ]
  %i.gus = load <8 x bfloat>, ptr %.1188.i40.i, align 1, !tbaa !555
  %i.gut = fpext fast <8 x bfloat> %i.gus to <8 x float>
  %i.guu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gut, <8 x float> splat (float f0x00800000))
  %i.guv = bitcast <8 x float> %i.guu to <8 x i32> ; 2 uses
  %i.guw = lshr <8 x i32> %i.guv, splat (i32 23)
  %i.gux = and <8 x i32> %i.guv, splat (i32 -2139095041)
  %i.guy = or disjoint <8 x i32> %i.gux, splat (i32 1056964608)
  %i.guz = bitcast <8 x i32> %i.guy to <8 x float> ; 3 uses
  %i.gva = add nsw <8 x i32> %i.guw, splat (i32 -127)
  %i.gvb = sitofp fast <8 x i32> %i.gva to <8 x float> ; 2 uses
  %i.gvc = fadd fast <8 x float> %i.gvb, splat (float 1.000000e+00)
  %i.gvd = fcmp fast olt <8 x float> %i.guz, splat (float f0x3F3504F3) ; 2 uses
  %i.gve = select <8 x i1> %i.gvd, <8 x float> %i.guz, <8 x float> zeroinitializer
  %i.gvf = fadd fast <8 x float> %i.guz, splat (float -1.000000e+00)
  %i.gvg = select fast <8 x i1> %i.gvd, <8 x float> %i.gvb, <8 x float> %i.gvc ; 2 uses
  %i.gvh = fadd fast <8 x float> %i.gvf, %i.gve   ; 12 uses
  %i.gvi = fmul fast <8 x float> %i.gvh, %i.gvh   ; 2 uses
  %i.gvj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gvh, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.gvk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gvj, <8 x float> nofpclass(nan inf) %i.gvh, <8 x float> splat (float f0x3DEF251A))
  %i.gvl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gvk, <8 x float> nofpclass(nan inf) %i.gvh, <8 x float> splat (float f0xBDFE5D4F))
  %i.gvm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gvl, <8 x float> nofpclass(nan inf) %i.gvh, <8 x float> splat (float f0x3E11E9BF))
  %i.gvn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gvm, <8 x float> nofpclass(nan inf) %i.gvh, <8 x float> splat (float f0xBE2AAE50))
  %i.gvo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gvn, <8 x float> nofpclass(nan inf) %i.gvh, <8 x float> splat (float f0x3E4CCEAC))
  %i.gvp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gvo, <8 x float> nofpclass(nan inf) %i.gvh, <8 x float> splat (float f0xBE7FFFFC))
  %i.gvq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gvp, <8 x float> nofpclass(nan inf) %i.gvh, <8 x float> splat (float f0x3EAAAAAA))
  %i.gvr = fmul fast <8 x float> %i.gvi, %i.gvh
  %i.gvs = fmul fast <8 x float> %i.gvr, %i.gvq
  %i.gvt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gvg, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.gvs)
  %i.gvu = fneg fast <8 x float> %i.gvi
  %i.gvv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.gvu, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.gvt)
  %i.gvw = fadd fast <8 x float> %i.gvv, %i.gvh
  %i.gvx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gvg, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.gvw)
  %i.gvy = fmul fast <8 x float> %i.gvx, %i.grz
  %i.gvz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.gvy, <8 x float> splat (float f0x42B0C0A5))
  %i.gwa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gvz, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gwb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gwa, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.gwc = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.gwb, i32 1) ; 2 uses
  %i.gwd = fcmp fast ogt <8 x float> %i.gwc, %i.gwb
  %i.gwe = select <8 x i1> %i.gwd, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.gwf = fsub fast <8 x float> %i.gwc, %i.gwe   ; 2 uses
  %i.gwg = fneg fast <8 x float> %i.gwf           ; 2 uses
  %i.gwh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.gwg, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.gwa)
  %i.gwi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.gwg, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.gwh) ; 8 uses
  %i.gwj = fmul fast <8 x float> %i.gwi, %i.gwi
  %i.gwk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gwi, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.gwl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gwk, <8 x float> nofpclass(nan inf) %i.gwi, <8 x float> splat (float f0x3C088908))
  %i.gwm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gwl, <8 x float> nofpclass(nan inf) %i.gwi, <8 x float> splat (float f0x3D2AA9C1))
  %i.gwn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gwm, <8 x float> nofpclass(nan inf) %i.gwi, <8 x float> splat (float f0x3E2AAAAA))
  %i.gwo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gwn, <8 x float> nofpclass(nan inf) %i.gwi, <8 x float> splat (float 5.000000e-01))
  %i.gwp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gwo, <8 x float> nofpclass(nan inf) %i.gwj, <8 x float> nofpclass(nan inf) %i.gwi)
  %i.gwq = fadd fast <8 x float> %i.gwp, splat (float 1.000000e+00)
  %i.gwr = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gwf)
  %i.gws = shl <8 x i32> %i.gwr, splat (i32 23)
  %i.gwt = add <8 x i32> %i.gws, splat (i32 1065353216)
  %i.gwu = bitcast <8 x i32> %i.gwt to <8 x float>
  %i.gwv = fmul fast <8 x float> %i.gwq, %i.gwu
  %i.gww = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.gwv)
  store <8 x bfloat> %i.gww, ptr %.136187.i.i, align 1, !tbaa !555
  %i.gwx = getelementptr inbounds nuw i8, ptr %.1188.i40.i, i64 16 ; 2 uses
  %i.gwy = getelementptr inbounds nuw i8, ptr %.136187.i.i, i64 16 ; 2 uses
  %i.gwz = add nuw nsw i32 %.140186.i.i, 8        ; 3 uses
  %i.gxa = or disjoint i32 %i.gwz, 7
  %i.gxb = icmp slt i32 %i.gxa, %i.gff
  br i1 %i.gxb, label %.lr.ph189.i39.i, label %.preheader179.i.i, !llvm.loop !196

.preheader.i36.i942:                              ; preds = %.lr.ph196.i.i, %.preheader179.i.i
  %.241.lcssa.i.i943 = phi i32 [ %.140.lcssa.i.i939, %.preheader179.i.i ], [ %i.hdh, %.lr.ph196.i.i ] ; 5 uses
  %.237.lcssa.i.i944 = phi ptr [ %.136.lcssa.i.i940, %.preheader179.i.i ], [ %i.hdg, %.lr.ph196.i.i ] ; 6 uses
  %.2.lcssa.i37.i945 = phi ptr [ %.1.lcssa.i35.i941, %.preheader179.i.i ], [ %i.hdf, %.lr.ph196.i.i ] ; 6 uses
  %i.gxc = icmp slt i32 %.241.lcssa.i.i943, %i.gff
  br i1 %i.gxc, label %iter.check7997, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7997:                                   ; preds = %.preheader.i36.i942
  %.237.lcssa.i.i9447981 = ptrtoaddr ptr %.237.lcssa.i.i944 to i64
  %.2.lcssa.i37.i9457980 = ptrtoaddr ptr %.2.lcssa.i37.i945 to i64
  %i.gxd = xor i32 %.241.lcssa.i.i943, -1
  %i.gxe = add i32 %i.gff, %i.gxd                 ; 3 uses
  %i.gxf = zext i32 %i.gxe to i64
  %i.gxg = add nuw nsw i64 %i.gxf, 1              ; 5 uses
  %min.iters.check7982 = icmp ult i32 %i.gxe, 7
  %i.gxh = sub i64 %.2.lcssa.i37.i9457980, %.237.lcssa.i.i9447981
  %diff.check7984 = icmp ugt i64 %i.gxh, -64
  %or.cond9183 = select i1 %min.iters.check7982, i1 true, i1 %diff.check7984
  br i1 %or.cond9183, label %.lr.ph203.i.i.preheader, label %vector.main.loop.iter.check7985

vector.main.loop.iter.check7985:                  ; preds = %iter.check7997
  %min.iters.check7986 = icmp ult i32 %i.gxe, 31
  br i1 %min.iters.check7986, label %vec.epilog.ph8001, label %vector.ph7987

vector.ph7987:                                    ; preds = %vector.main.loop.iter.check7985
  %i.gxi = and i64 %i.gxg, 24
  %n.vec7988 = and i64 %i.gxg, 8589934560         ; 5 uses
  %i.gxj = shl nuw nsw i64 %n.vec7988, 1          ; 2 uses
  %i.gxk = getelementptr i8, ptr %.2.lcssa.i37.i945, i64 %i.gxj
  %i.gxl = getelementptr i8, ptr %.237.lcssa.i.i944, i64 %i.gxj
  %i.gxm = trunc i64 %n.vec7988 to i32
  %i.gxn = add i32 %.241.lcssa.i.i943, %i.gxm
  %i.gxo = insertelement <16 x float> poison, float %i.grf, i64 0
  %i.gxp = shufflevector <16 x float> %i.gxo, <16 x float> poison, <16 x i32> zeroinitializer
  %i.gxq = insertelement <8 x float> poison, float %i.grf, i64 0
  %i.gxr = shufflevector <8 x float> %i.gxq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gxs = insertelement <4 x float> poison, float %i.grf, i64 0
  %i.gxt = shufflevector <4 x float> %i.gxs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gxu = insertelement <2 x float> poison, float %i.grf, i64 0
  %i.gxv = shufflevector <2 x float> %i.gxu, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7989

vector.body7989:                                  ; preds = %vector.ph7987, %vector.body7989
  %index7990 = phi i64 [ 0, %vector.ph7987 ], [ %index.next7994, %vector.body7989 ] ; 2 uses
  %i.gxw = shl i64 %index7990, 1                  ; 2 uses
  %next.gep7991 = getelementptr i8, ptr %.2.lcssa.i37.i945, i64 %i.gxw
  %next.gep7992 = getelementptr i8, ptr %.237.lcssa.i.i944, i64 %i.gxw
  %wide.load7993 = load <32 x i16>, ptr %next.gep7991, align 2, !tbaa !558
  %i.gxx = zext <32 x i16> %wide.load7993 to <32 x i32>
  %i.gxy = shl nuw <32 x i32> %i.gxx, splat (i32 16)
  %i.gxz = bitcast <32 x i32> %i.gxy to <32 x float> ; 6 uses
  %i.gya = extractelement <32 x float> %i.gxz, i64 0
  %i.gyb = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gya, float %i.grf)
  %i.gyc = shufflevector <32 x float> %i.gxz, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.gyd = tail call fast <16 x float> @llvm.pow.v16f32(<16 x float> %i.gyc, <16 x float> %i.gxp)
  %i.gye = shufflevector <32 x float> %i.gxz, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.gyf = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.gye, <8 x float> %i.gxr)
  %i.gyg = shufflevector <32 x float> %i.gxz, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.gyh = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.gyg, <4 x float> %i.gxt)
  %i.gyi = extractelement <32 x float> %i.gxz, i64 29
  %i.gyj = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gyi, float %i.grf)
  %i.gyk = shufflevector <32 x float> %i.gxz, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.gyl = tail call fast <2 x float> @llvm.pow.v2f32(<2 x float> %i.gyk, <2 x float> %i.gxv)
  %i.gym = insertelement <32 x float> poison, float %i.gyb, i64 0
  %i.gyn = shufflevector <16 x float> %i.gyd, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gyo = shufflevector <32 x float> %i.gym, <32 x float> %i.gyn, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gyp = shufflevector <8 x float> %i.gyf, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gyq = shufflevector <32 x float> %i.gyo, <32 x float> %i.gyp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gyr = shufflevector <4 x float> %i.gyh, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gys = shufflevector <32 x float> %i.gyq, <32 x float> %i.gyr, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.gyt = insertelement <32 x float> %i.gys, float %i.gyj, i64 29
  %i.gyu = shufflevector <2 x float> %i.gyl, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gyv = shufflevector <32 x float> %i.gyt, <32 x float> %i.gyu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.gyw = bitcast <32 x float> %i.gyv to <32 x i32>
  %i.gyx = lshr <32 x i32> %i.gyw, splat (i32 16)
  %i.gyy = trunc nuw <32 x i32> %i.gyx to <32 x i16>
  store <32 x i16> %i.gyy, ptr %next.gep7992, align 2, !tbaa !558
  %index.next7994 = add nuw i64 %index7990, 32    ; 2 uses
  %i.gyz = icmp eq i64 %index.next7994, %n.vec7988
  br i1 %i.gyz, label %middle.block7995, label %vector.body7989, !llvm.loop !197

middle.block7995:                                 ; preds = %vector.body7989
  %cmp.n7996 = icmp eq i64 %i.gxg, %n.vec7988
  br i1 %cmp.n7996, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7998

vec.epilog.iter.check7998:                        ; preds = %middle.block7995
  %min.epilog.iters.check8000 = icmp eq i64 %i.gxi, 0
  br i1 %min.epilog.iters.check8000, label %.lr.ph203.i.i.preheader, label %vec.epilog.ph8001, !prof !561

vec.epilog.ph8001:                                ; preds = %vector.main.loop.iter.check7985, %vec.epilog.iter.check7998
  %vec.epilog.resume.val8002 = phi i64 [ %n.vec7988, %vec.epilog.iter.check7998 ], [ 0, %vector.main.loop.iter.check7985 ]
  %n.vec8003 = and i64 %i.gxg, 8589934584         ; 4 uses
  %i.gza = shl nuw nsw i64 %n.vec8003, 1          ; 2 uses
  %i.gzb = getelementptr i8, ptr %.2.lcssa.i37.i945, i64 %i.gza
  %i.gzc = getelementptr i8, ptr %.237.lcssa.i.i944, i64 %i.gza
  %i.gzd = trunc i64 %n.vec8003 to i32
  %i.gze = add i32 %.241.lcssa.i.i943, %i.gzd
  %i.gzf = insertelement <4 x float> poison, float %i.grf, i64 0
  %i.gzg = shufflevector <4 x float> %i.gzf, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body8004

vec.epilog.vector.body8004:                       ; preds = %vec.epilog.vector.body8004, %vec.epilog.ph8001
  %index8005 = phi i64 [ %vec.epilog.resume.val8002, %vec.epilog.ph8001 ], [ %index.next8009, %vec.epilog.vector.body8004 ] ; 2 uses
  %i.gzh = shl i64 %index8005, 1                  ; 2 uses
  %next.gep8006 = getelementptr i8, ptr %.2.lcssa.i37.i945, i64 %i.gzh
  %next.gep8007 = getelementptr i8, ptr %.237.lcssa.i.i944, i64 %i.gzh
  %wide.load8008 = load <8 x i16>, ptr %next.gep8006, align 2, !tbaa !558
  %i.gzi = zext <8 x i16> %wide.load8008 to <8 x i32>
  %i.gzj = shl nuw <8 x i32> %i.gzi, splat (i32 16)
  %i.gzk = bitcast <8 x i32> %i.gzj to <8 x float> ; 5 uses
  %i.gzl = extractelement <8 x float> %i.gzk, i64 0
  %i.gzm = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gzl, float %i.grf)
  %i.gzn = extractelement <8 x float> %i.gzk, i64 1
  %i.gzo = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gzn, float %i.grf)
  %i.gzp = extractelement <8 x float> %i.gzk, i64 2
  %i.gzq = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gzp, float %i.grf)
  %i.gzr = shufflevector <8 x float> %i.gzk, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.gzs = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.gzr, <4 x float> %i.gzg)
  %i.gzt = extractelement <8 x float> %i.gzk, i64 7
  %i.gzu = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gzt, float %i.grf)
  %i.gzv = insertelement <8 x float> poison, float %i.gzm, i64 0
  %i.gzw = insertelement <8 x float> %i.gzv, float %i.gzo, i64 1
  %i.gzx = insertelement <8 x float> %i.gzw, float %i.gzq, i64 2
  %i.gzy = shufflevector <4 x float> %i.gzs, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gzz = shufflevector <8 x float> %i.gzx, <8 x float> %i.gzy, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.haa = insertelement <8 x float> %i.gzz, float %i.gzu, i64 7
  %i.hab = bitcast <8 x float> %i.haa to <8 x i32>
  %i.hac = lshr <8 x i32> %i.hab, splat (i32 16)
  %i.had = trunc nuw <8 x i32> %i.hac to <8 x i16>
  store <8 x i16> %i.had, ptr %next.gep8007, align 2, !tbaa !558
  %index.next8009 = add nuw i64 %index8005, 8     ; 2 uses
  %i.hae = icmp eq i64 %index.next8009, %n.vec8003
  br i1 %i.hae, label %vec.epilog.middle.block8010, label %vec.epilog.vector.body8004, !llvm.loop !198

vec.epilog.middle.block8010:                      ; preds = %vec.epilog.vector.body8004
  %cmp.n8011 = icmp eq i64 %i.gxg, %n.vec8003
  br i1 %cmp.n8011, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph203.i.i.preheader

.lr.ph203.i.i.preheader:                          ; preds = %iter.check7997, %vec.epilog.iter.check7998, %vec.epilog.middle.block8010
  %.3202.i.i.ph = phi ptr [ %.2.lcssa.i37.i945, %iter.check7997 ], [ %i.gxk, %vec.epilog.iter.check7998 ], [ %i.gzb, %vec.epilog.middle.block8010 ] ; 3 uses
  %.338201.i.i.ph = phi ptr [ %.237.lcssa.i.i944, %iter.check7997 ], [ %i.gxl, %vec.epilog.iter.check7998 ], [ %i.gzc, %vec.epilog.middle.block8010 ] ; 3 uses
  %.342200.i.i.ph = phi i32 [ %.241.lcssa.i.i943, %iter.check7997 ], [ %i.gxn, %vec.epilog.iter.check7998 ], [ %i.gze, %vec.epilog.middle.block8010 ] ; 4 uses
  %i.haf = sub i32 %i.gff, %.342200.i.i.ph
  %.neg11067 = add i32 %.342200.i.i.ph, 1
  %xtraiter10608 = and i32 %i.haf, 1
  %lcmp.mod10609.not = icmp eq i32 %xtraiter10608, 0
  br i1 %lcmp.mod10609.not, label %.lr.ph203.i.i.prol.loopexit, label %.lr.ph203.i.i.prol

.lr.ph203.i.i.prol:                               ; preds = %.lr.ph203.i.i.preheader
  %i.hag = getelementptr inbounds nuw i8, ptr %.3202.i.i.ph, i64 2
  %i.hah = load i16, ptr %.3202.i.i.ph, align 2, !tbaa !558
  %i.hai = zext i16 %i.hah to i32
  %i.haj = shl nuw i32 %i.hai, 16
  %i.hak = bitcast i32 %i.haj to float
  %i.hal = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hak, float %i.grf)
  %i.ham = bitcast float %i.hal to i32
  %i.han = lshr i32 %i.ham, 16
  %i.hao = trunc nuw i32 %i.han to i16
  %i.hap = getelementptr inbounds nuw i8, ptr %.338201.i.i.ph, i64 2
  store i16 %i.hao, ptr %.338201.i.i.ph, align 2, !tbaa !558
  %i.haq = add nuw nsw i32 %.342200.i.i.ph, 1
  br label %.lr.ph203.i.i.prol.loopexit

.lr.ph203.i.i.prol.loopexit:                      ; preds = %.lr.ph203.i.i.prol, %.lr.ph203.i.i.preheader
  %.3202.i.i.unr = phi ptr [ %.3202.i.i.ph, %.lr.ph203.i.i.preheader ], [ %i.hag, %.lr.ph203.i.i.prol ]
  %.338201.i.i.unr = phi ptr [ %.338201.i.i.ph, %.lr.ph203.i.i.preheader ], [ %i.hap, %.lr.ph203.i.i.prol ]
  %.342200.i.i.unr = phi i32 [ %.342200.i.i.ph, %.lr.ph203.i.i.preheader ], [ %i.haq, %.lr.ph203.i.i.prol ]
  %i.har = icmp eq i32 %i.gff, %.neg11067
  br i1 %i.har, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph203.i.i

.lr.ph196.i.i:                                    ; preds = %.preheader179.i.i, %.lr.ph196.i.i
  %.2195.i.i = phi ptr [ %i.hdf, %.lr.ph196.i.i ], [ %.1.lcssa.i35.i941, %.preheader179.i.i ] ; 2 uses
  %.237194.i.i = phi ptr [ %i.hdg, %.lr.ph196.i.i ], [ %.136.lcssa.i.i940, %.preheader179.i.i ] ; 2 uses
  %.241193.i.i = phi i32 [ %i.hdh, %.lr.ph196.i.i ], [ %.140.lcssa.i.i939, %.preheader179.i.i ]
  %i.has = load i64, ptr %.2195.i.i, align 1, !tbaa !555
  %i.hat = insertelement <2 x i64> poison, i64 %i.has, i64 0
  %i.hau = bitcast <2 x i64> %i.hat to <8 x i16>
  %i.hav = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hau, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.haw = bitcast <8 x i16> %i.hav to <4 x float>
  %i.hax = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.haw, <4 x float> splat (float f0x00800000))
  %i.hay = bitcast <4 x float> %i.hax to <4 x i32> ; 2 uses
  %i.haz = lshr <4 x i32> %i.hay, splat (i32 23)
  %i.hba = and <4 x i32> %i.hay, splat (i32 -2139095041)
  %i.hbb = or disjoint <4 x i32> %i.hba, splat (i32 1056964608)
  %i.hbc = bitcast <4 x i32> %i.hbb to <4 x float> ; 3 uses
  %i.hbd = add nsw <4 x i32> %i.haz, splat (i32 -127)
  %i.hbe = sitofp fast <4 x i32> %i.hbd to <4 x float> ; 2 uses
  %i.hbf = fadd fast <4 x float> %i.hbe, splat (float 1.000000e+00)
  %i.hbg = fcmp fast olt <4 x float> %i.hbc, splat (float f0x3F3504F3) ; 2 uses
  %i.hbh = select <4 x i1> %i.hbg, <4 x float> %i.hbc, <4 x float> zeroinitializer
  %i.hbi = fadd fast <4 x float> %i.hbc, splat (float -1.000000e+00)
  %i.hbj = select fast <4 x i1> %i.hbg, <4 x float> %i.hbe, <4 x float> %i.hbf ; 2 uses
  %i.hbk = fadd fast <4 x float> %i.hbi, %i.hbh   ; 12 uses
  %i.hbl = fmul fast <4 x float> %i.hbk, %i.hbk   ; 2 uses
  %i.hbm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hbk, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.hbn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hbm, <4 x float> nofpclass(nan inf) %i.hbk, <4 x float> splat (float f0x3DEF251A))
  %i.hbo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hbn, <4 x float> nofpclass(nan inf) %i.hbk, <4 x float> splat (float f0xBDFE5D4F))
  %i.hbp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hbo, <4 x float> nofpclass(nan inf) %i.hbk, <4 x float> splat (float f0x3E11E9BF))
  %i.hbq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hbp, <4 x float> nofpclass(nan inf) %i.hbk, <4 x float> splat (float f0xBE2AAE50))
  %i.hbr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hbq, <4 x float> nofpclass(nan inf) %i.hbk, <4 x float> splat (float f0x3E4CCEAC))
  %i.hbs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hbr, <4 x float> nofpclass(nan inf) %i.hbk, <4 x float> splat (float f0xBE7FFFFC))
  %i.hbt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hbs, <4 x float> nofpclass(nan inf) %i.hbk, <4 x float> splat (float f0x3EAAAAAA))
  %i.hbu = fmul fast <4 x float> %i.hbl, %i.hbk
  %i.hbv = fmul fast <4 x float> %i.hbu, %i.hbt
  %i.hbw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hbj, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.hbv)
  %i.hbx = fneg fast <4 x float> %i.hbl
  %i.hby = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.hbx, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.hbw)
  %i.hbz = fadd fast <4 x float> %i.hby, %i.hbk
  %i.hca = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hbj, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.hbz)
  %i.hcb = fmul fast <4 x float> %i.hca, %i.gsa
  %i.hcc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hcb, <4 x float> splat (float f0x42B0C0A5))
  %i.hcd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hcc, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hce = fmul fast <4 x float> %i.hcd, splat (float f0x3FB8AA3B)
  %i.hcf = fadd fast <4 x float> %i.hce, splat (float 5.000000e-01) ; 2 uses
  %i.hcg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hcf)
  %i.hch = sitofp fast <4 x i32> %i.hcg to <4 x float> ; 2 uses
  %i.hci = fcmp fast olt <4 x float> %i.hcf, %i.hch
  %i.hcj = select <4 x i1> %i.hci, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hck = fsub fast <4 x float> %i.hch, %i.hcj   ; 2 uses
  %i.hcl = fneg fast <4 x float> %i.hck           ; 2 uses
  %i.hcm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.hcl, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.hcd)
  %i.hcn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.hcl, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.hcm) ; 8 uses
  %i.hco = fmul fast <4 x float> %i.hcn, %i.hcn
  %i.hcp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hcn, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.hcq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hcp, <4 x float> nofpclass(nan inf) %i.hcn, <4 x float> splat (float f0x3C088908))
  %i.hcr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hcq, <4 x float> nofpclass(nan inf) %i.hcn, <4 x float> splat (float f0x3D2AA9C1))
  %i.hcs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hcr, <4 x float> nofpclass(nan inf) %i.hcn, <4 x float> splat (float f0x3E2AAAAA))
  %i.hct = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hcs, <4 x float> nofpclass(nan inf) %i.hcn, <4 x float> splat (float 5.000000e-01))
  %i.hcu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hct, <4 x float> nofpclass(nan inf) %i.hco, <4 x float> nofpclass(nan inf) %i.hcn)
  %i.hcv = fadd fast <4 x float> %i.hcu, splat (float 1.000000e+00)
  %i.hcw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hck)
  %i.hcx = shl <4 x i32> %i.hcw, splat (i32 23)
  %i.hcy = add <4 x i32> %i.hcx, splat (i32 1065353216)
  %i.hcz = bitcast <4 x i32> %i.hcy to <4 x float>
  %i.hda = fmul fast <4 x float> %i.hcv, %i.hcz
  %i.hdb = shufflevector <4 x float> %i.hda, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.hdc = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.hdb)
  %i.hdd = bitcast <8 x bfloat> %i.hdc to <2 x i64>
  %i.hde = extractelement <2 x i64> %i.hdd, i64 0
  store i64 %i.hde, ptr %.237194.i.i, align 1, !tbaa !555
  %i.hdf = getelementptr inbounds nuw i8, ptr %.2195.i.i, i64 8 ; 2 uses
  %i.hdg = getelementptr inbounds nuw i8, ptr %.237194.i.i, i64 8 ; 2 uses
  %i.hdh = add nuw nsw i32 %.241193.i.i, 4        ; 3 uses
  %i.hdi = or disjoint i32 %i.hdh, 3
  %i.hdj = icmp slt i32 %i.hdi, %i.gff
  br i1 %i.hdj, label %.lr.ph196.i.i, label %.preheader.i36.i942, !llvm.loop !199

.lr.ph203.i.i:                                    ; preds = %.lr.ph203.i.i.prol.loopexit, %.lr.ph203.i.i
  %.3202.i.i = phi ptr [ %i.hdu, %.lr.ph203.i.i ], [ %.3202.i.i.unr, %.lr.ph203.i.i.prol.loopexit ] ; 3 uses
  %.338201.i.i = phi ptr [ %i.hed, %.lr.ph203.i.i ], [ %.338201.i.i.unr, %.lr.ph203.i.i.prol.loopexit ] ; 3 uses
  %.342200.i.i = phi i32 [ %i.hee, %.lr.ph203.i.i ], [ %.342200.i.i.unr, %.lr.ph203.i.i.prol.loopexit ]
  %i.hdk = getelementptr inbounds nuw i8, ptr %.3202.i.i, i64 2
  %i.hdl = load i16, ptr %.3202.i.i, align 2, !tbaa !558
  %i.hdm = zext i16 %i.hdl to i32
  %i.hdn = shl nuw i32 %i.hdm, 16
  %i.hdo = bitcast i32 %i.hdn to float
  %i.hdp = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hdo, float %i.grf)
  %i.hdq = bitcast float %i.hdp to i32
  %i.hdr = lshr i32 %i.hdq, 16
  %i.hds = trunc nuw i32 %i.hdr to i16
  %i.hdt = getelementptr inbounds nuw i8, ptr %.338201.i.i, i64 2
  store i16 %i.hds, ptr %.338201.i.i, align 2, !tbaa !558
  %i.hdu = getelementptr inbounds nuw i8, ptr %.3202.i.i, i64 4
  %i.hdv = load i16, ptr %i.hdk, align 2, !tbaa !558
  %i.hdw = zext i16 %i.hdv to i32
  %i.hdx = shl nuw i32 %i.hdw, 16
  %i.hdy = bitcast i32 %i.hdx to float
  %i.hdz = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hdy, float %i.grf)
  %i.hea = bitcast float %i.hdz to i32
  %i.heb = lshr i32 %i.hea, 16
  %i.hec = trunc nuw i32 %i.heb to i16
  %i.hed = getelementptr inbounds nuw i8, ptr %.338201.i.i, i64 4
  store i16 %i.hec, ptr %i.hdt, align 2, !tbaa !558
  %i.hee = add nuw nsw i32 %.342200.i.i, 2        ; 2 uses
  %exitcond.not.i38.i946.1 = icmp eq i32 %i.hee, %i.gff
  br i1 %exitcond.not.i38.i946.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph203.i.i, !llvm.loop !200

bb.fr:                                            ; preds = %bb.fk
  %i.hef = icmp eq i32 %3, 1
  br i1 %i.hef, label %bb.fs, label %bb.gb

bb.fs:                                            ; preds = %bb.fr
  %i.heg = load i16, ptr %0, align 2, !tbaa !558
  %i.heh = zext i16 %i.heg to i32
  %i.hei = shl nuw i32 %i.heh, 16
  %i.hej = bitcast i32 %i.hei to float            ; 15 uses
  %i.hek = icmp eq i32 %.sroa.speculated.i903, 4
  br i1 %i.hek, label %.thread178.i73.i, label %bb.ft

.thread178.i73.i:                                 ; preds = %bb.fs
  %i.hel = load i64, ptr %0, align 2, !tbaa !555
  %i.hem = insertelement <2 x i64> poison, i64 %i.hel, i64 0
  %i.hen = bitcast <2 x i64> %i.hem to <8 x i16>
  %i.heo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hen, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hep = bitcast <8 x i16> %i.heo to <4 x float> ; 2 uses
  %i.heq = shufflevector <4 x float> %i.hep, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.fw

bb.ft:                                            ; preds = %bb.fs
  %i.her = insertelement <4 x float> poison, float %i.hej, i64 0 ; 2 uses
  %i.hes = shufflevector <4 x float> %i.her, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.het = icmp eq i32 %.sroa.speculated.i903, 8
  br i1 %i.het, label %.thread177.i72.i, label %bb.fu

.thread177.i72.i:                                 ; preds = %bb.ft
  %i.heu = load <8 x bfloat>, ptr %0, align 2, !tbaa !555
  %i.hev = fpext fast <8 x bfloat> %i.heu to <8 x float>
  br label %bb.fw

bb.fu:                                            ; preds = %bb.ft
  %i.hew = shufflevector <4 x float> %i.her, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.hex = icmp eq i32 %.sroa.speculated.i903, 16
  br i1 %i.hex, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.hey = load <16 x bfloat>, ptr %0, align 2, !tbaa !555
  %i.hez = fpext fast <16 x bfloat> %i.hey to <16 x float>
  br label %bb.fx

bb.fw:                                            ; preds = %bb.fu, %.thread177.i72.i, %.thread178.i73.i
end_hunk_0
begin_hunk_1_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  %i.hgr = and <8 x i32> %i.hgp, splat (i32 -2139095041)
  %i.hgs = or disjoint <8 x i32> %i.hgr, splat (i32 1056964608)
  %i.hgt = bitcast <8 x i32> %i.hgs to <8 x float> ; 3 uses
  %i.hgu = add nsw <8 x i32> %i.hgq, splat (i32 -127)
  %i.hgv = sitofp fast <8 x i32> %i.hgu to <8 x float> ; 2 uses
  %i.hgw = fadd fast <8 x float> %i.hgv, splat (float 1.000000e+00)
  %i.hgx = fcmp fast olt <8 x float> %i.hgt, splat (float f0x3F3504F3) ; 2 uses
  %i.hgy = select <8 x i1> %i.hgx, <8 x float> %i.hgt, <8 x float> zeroinitializer
  %i.hgz = fadd fast <8 x float> %i.hgt, splat (float -1.000000e+00)
  %i.hha = select fast <8 x i1> %i.hgx, <8 x float> %i.hgv, <8 x float> %i.hgw ; 2 uses
  %i.hhb = fadd fast <8 x float> %i.hgz, %i.hgy   ; 12 uses
  %i.hhc = fmul fast <8 x float> %i.hhb, %i.hhb   ; 2 uses
  %i.hhd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hhb, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.hhe = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hhd, <8 x float> nofpclass(nan inf) %i.hhb, <8 x float> splat (float f0x3DEF251A))
  %i.hhf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hhe, <8 x float> nofpclass(nan inf) %i.hhb, <8 x float> splat (float f0xBDFE5D4F))
  %i.hhg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hhf, <8 x float> nofpclass(nan inf) %i.hhb, <8 x float> splat (float f0x3E11E9BF))
  %i.hhh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hhg, <8 x float> nofpclass(nan inf) %i.hhb, <8 x float> splat (float f0xBE2AAE50))
  %i.hhi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hhh, <8 x float> nofpclass(nan inf) %i.hhb, <8 x float> splat (float f0x3E4CCEAC))
  %i.hhj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hhi, <8 x float> nofpclass(nan inf) %i.hhb, <8 x float> splat (float f0xBE7FFFFC))
  %i.hhk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hhj, <8 x float> nofpclass(nan inf) %i.hhb, <8 x float> splat (float f0x3EAAAAAA))
  %i.hhl = fmul fast <8 x float> %i.hhc, %i.hhb
  %i.hhm = fmul fast <8 x float> %i.hhl, %i.hhk
  %i.hhn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hha, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.hhm)
  %i.hho = fneg fast <8 x float> %i.hhc
  %i.hhp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hho, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.hhn)
  %i.hhq = fadd fast <8 x float> %i.hhp, %i.hhb
  %i.hhr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hha, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.hhq)
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fy, %.lr.ph.i67.i935
  %.0183.i68.i = phi ptr [ %1, %.lr.ph.i67.i935 ], [ %i.hit, %bb.fy ] ; 2 uses
  %.035182.i69.i = phi ptr [ %2, %.lr.ph.i67.i935 ], [ %i.hiu, %bb.fy ] ; 2 uses
  %.039181.i70.i = phi i32 [ 0, %.lr.ph.i67.i935 ], [ %i.hiv, %bb.fy ]
  %i.hhs = load <16 x bfloat>, ptr %.0183.i68.i, align 1, !tbaa !555
  %i.hht = fpext fast <16 x bfloat> %i.hhs to <16 x float>
  %i.hhu = fmul fast <16 x float> %i.hgk, %i.hht
  %i.hhv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.hhu, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.hhw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.hhv, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.hhx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hhw, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.hhy = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.hhx, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.hhz = fcmp fast ogt <16 x float> %i.hhy, %i.hhx
  %i.hia = fadd fast <16 x float> %i.hhy, splat (float -1.000000e+00)
  %i.hib = select fast <16 x i1> %i.hhz, <16 x float> %i.hia, <16 x float> %i.hhy ; 2 uses
  %i.hic = fneg fast <16 x float> %i.hib          ; 2 uses
  %i.hid = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.hic, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.hhw)
  %i.hie = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.hic, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.hid) ; 8 uses
  %i.hif = fmul fast <16 x float> %i.hie, %i.hie
  %i.hig = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hie, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.hih = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hig, <16 x float> nofpclass(nan inf) %i.hie, <16 x float> splat (float f0x3C088908))
  %i.hii = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hih, <16 x float> nofpclass(nan inf) %i.hie, <16 x float> splat (float f0x3D2AA9C1))
  %i.hij = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hii, <16 x float> nofpclass(nan inf) %i.hie, <16 x float> splat (float f0x3E2AAAAA))
  %i.hik = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hij, <16 x float> nofpclass(nan inf) %i.hie, <16 x float> splat (float 5.000000e-01))
  %i.hil = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hik, <16 x float> nofpclass(nan inf) %i.hif, <16 x float> nofpclass(nan inf) %i.hie)
  %i.him = fadd fast <16 x float> %i.hil, splat (float 1.000000e+00)
  %i.hin = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.hib, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.hio = shl <16 x i32> %i.hin, splat (i32 23)
  %i.hip = add <16 x i32> %i.hio, splat (i32 1065353216)
  %i.hiq = bitcast <16 x i32> %i.hip to <16 x float>
  %i.hir = fmul fast <16 x float> %i.him, %i.hiq
  %i.his = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.hir)
  store <16 x bfloat> %i.his, ptr %.035182.i69.i, align 1, !tbaa !555
  %i.hit = getelementptr inbounds nuw i8, ptr %.0183.i68.i, i64 32 ; 2 uses
  %i.hiu = getelementptr inbounds nuw i8, ptr %.035182.i69.i, i64 32 ; 2 uses
  %i.hiv = add nuw nsw i32 %.039181.i70.i, 16     ; 2 uses
  %i.hiw = or disjoint i32 %i.hiv, 15
  %i.hix = icmp slt i32 %i.hiw, %i.gff
  br i1 %i.hix, label %bb.fy, label %.preheader180.loopexit.i71.i, !llvm.loop !201

.preheader179.i46.i:                              ; preds = %bb.fz, %.preheader180.i42.i
  %.140.lcssa.i47.i927 = phi i32 [ %.039.lcssa.i43.i924, %.preheader180.i42.i ], [ %i.hlh, %bb.fz ] ; 3 uses
  %.136.lcssa.i48.i928 = phi ptr [ %.035.lcssa.i44.i925, %.preheader180.i42.i ], [ %i.hlg, %bb.fz ] ; 2 uses
  %.1.lcssa.i49.i929 = phi ptr [ %.0.lcssa.i45.i926, %.preheader180.i42.i ], [ %i.hlf, %bb.fz ] ; 2 uses
  %i.hiy = or disjoint i32 %.140.lcssa.i47.i927, 3
  %i.hiz = icmp slt i32 %i.hiy, %i.gff
  br i1 %i.hiz, label %.lr.ph196.i59.i, label %.preheader.i50.i930

.lr.ph196.i59.i:                                  ; preds = %.preheader179.i46.i
  %i.hja = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hfe, <4 x float> splat (float f0x00800000))
  %i.hjb = bitcast <4 x float> %i.hja to <4 x i32> ; 2 uses
  %i.hjc = lshr <4 x i32> %i.hjb, splat (i32 23)
  %i.hjd = and <4 x i32> %i.hjb, splat (i32 -2139095041)
  %i.hje = or disjoint <4 x i32> %i.hjd, splat (i32 1056964608)
  %i.hjf = bitcast <4 x i32> %i.hje to <4 x float> ; 3 uses
  %i.hjg = add nsw <4 x i32> %i.hjc, splat (i32 -127)
  %i.hjh = sitofp fast <4 x i32> %i.hjg to <4 x float> ; 2 uses
  %i.hji = fadd fast <4 x float> %i.hjh, splat (float 1.000000e+00)
  %i.hjj = fcmp fast olt <4 x float> %i.hjf, splat (float f0x3F3504F3) ; 2 uses
  %i.hjk = select <4 x i1> %i.hjj, <4 x float> %i.hjf, <4 x float> zeroinitializer
  %i.hjl = fadd fast <4 x float> %i.hjf, splat (float -1.000000e+00)
  %i.hjm = select fast <4 x i1> %i.hjj, <4 x float> %i.hjh, <4 x float> %i.hji ; 2 uses
  %i.hjn = fadd fast <4 x float> %i.hjl, %i.hjk   ; 12 uses
  %i.hjo = fmul fast <4 x float> %i.hjn, %i.hjn   ; 2 uses
  %i.hjp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hjn, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.hjq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hjp, <4 x float> nofpclass(nan inf) %i.hjn, <4 x float> splat (float f0x3DEF251A))
  %i.hjr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hjq, <4 x float> nofpclass(nan inf) %i.hjn, <4 x float> splat (float f0xBDFE5D4F))
  %i.hjs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hjr, <4 x float> nofpclass(nan inf) %i.hjn, <4 x float> splat (float f0x3E11E9BF))
  %i.hjt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hjs, <4 x float> nofpclass(nan inf) %i.hjn, <4 x float> splat (float f0xBE2AAE50))
  %i.hju = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hjt, <4 x float> nofpclass(nan inf) %i.hjn, <4 x float> splat (float f0x3E4CCEAC))
  %i.hjv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hju, <4 x float> nofpclass(nan inf) %i.hjn, <4 x float> splat (float f0xBE7FFFFC))
  %i.hjw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hjv, <4 x float> nofpclass(nan inf) %i.hjn, <4 x float> splat (float f0x3EAAAAAA))
  %i.hjx = fmul fast <4 x float> %i.hjo, %i.hjn
  %i.hjy = fmul fast <4 x float> %i.hjx, %i.hjw
  %i.hjz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hjm, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.hjy)
  %i.hka = fneg fast <4 x float> %i.hjo
  %i.hkb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.hka, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.hjz)
  %i.hkc = fadd fast <4 x float> %i.hkb, %i.hjn
  %i.hkd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hjm, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.hkc)
  br label %bb.ga

bb.fz:                                            ; preds = %bb.fz, %.lr.ph189.i63.i
  %.1188.i64.i = phi ptr [ %.0.lcssa.i45.i926, %.lr.ph189.i63.i ], [ %i.hlf, %bb.fz ] ; 2 uses
  %.136187.i65.i = phi ptr [ %.035.lcssa.i44.i925, %.lr.ph189.i63.i ], [ %i.hlg, %bb.fz ] ; 2 uses
  %.140186.i66.i = phi i32 [ %.039.lcssa.i43.i924, %.lr.ph189.i63.i ], [ %i.hlh, %bb.fz ]
  %i.hke = load <8 x bfloat>, ptr %.1188.i64.i, align 1, !tbaa !555
  %i.hkf = fpext fast <8 x bfloat> %i.hke to <8 x float>
  %i.hkg = fmul fast <8 x float> %i.hhr, %i.hkf
  %i.hkh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hkg, <8 x float> splat (float f0x42B0C0A5))
  %i.hki = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hkh, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hkj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hki, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.hkk = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hkj, i32 1) ; 2 uses
  %i.hkl = fcmp fast ogt <8 x float> %i.hkk, %i.hkj
  %i.hkm = select <8 x i1> %i.hkl, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.hkn = fsub fast <8 x float> %i.hkk, %i.hkm   ; 2 uses
  %i.hko = fneg fast <8 x float> %i.hkn           ; 2 uses
  %i.hkp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hko, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.hki)
  %i.hkq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hko, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.hkp) ; 8 uses
  %i.hkr = fmul fast <8 x float> %i.hkq, %i.hkq
  %i.hks = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hkq, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.hkt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hks, <8 x float> nofpclass(nan inf) %i.hkq, <8 x float> splat (float f0x3C088908))
  %i.hku = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hkt, <8 x float> nofpclass(nan inf) %i.hkq, <8 x float> splat (float f0x3D2AA9C1))
  %i.hkv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hku, <8 x float> nofpclass(nan inf) %i.hkq, <8 x float> splat (float f0x3E2AAAAA))
  %i.hkw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hkv, <8 x float> nofpclass(nan inf) %i.hkq, <8 x float> splat (float 5.000000e-01))
  %i.hkx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hkw, <8 x float> nofpclass(nan inf) %i.hkr, <8 x float> nofpclass(nan inf) %i.hkq)
  %i.hky = fadd fast <8 x float> %i.hkx, splat (float 1.000000e+00)
  %i.hkz = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hkn)
  %i.hla = shl <8 x i32> %i.hkz, splat (i32 23)
  %i.hlb = add <8 x i32> %i.hla, splat (i32 1065353216)
  %i.hlc = bitcast <8 x i32> %i.hlb to <8 x float>
  %i.hld = fmul fast <8 x float> %i.hky, %i.hlc
  %i.hle = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.hld)
  store <8 x bfloat> %i.hle, ptr %.136187.i65.i, align 1, !tbaa !555
  %i.hlf = getelementptr inbounds nuw i8, ptr %.1188.i64.i, i64 16 ; 2 uses
  %i.hlg = getelementptr inbounds nuw i8, ptr %.136187.i65.i, i64 16 ; 2 uses
  %i.hlh = add nuw nsw i32 %.140186.i66.i, 8      ; 3 uses
  %i.hli = or disjoint i32 %i.hlh, 7
  %i.hlj = icmp slt i32 %i.hli, %i.gff
  br i1 %i.hlj, label %bb.fz, label %.preheader179.i46.i, !llvm.loop !202

.preheader.i50.i930:                              ; preds = %bb.ga, %.preheader179.i46.i
  %.241.lcssa.i51.i931 = phi i32 [ %.140.lcssa.i47.i927, %.preheader179.i46.i ], [ %i.hql, %bb.ga ] ; 5 uses
  %.237.lcssa.i52.i932 = phi ptr [ %.136.lcssa.i48.i928, %.preheader179.i46.i ], [ %i.hqk, %bb.ga ] ; 6 uses
  %.2.lcssa.i53.i933 = phi ptr [ %.1.lcssa.i49.i929, %.preheader179.i46.i ], [ %i.hqj, %bb.ga ] ; 6 uses
  %i.hlk = icmp slt i32 %.241.lcssa.i51.i931, %i.gff
  br i1 %i.hlk, label %iter.check7958, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7958:                                   ; preds = %.preheader.i50.i930
  %.237.lcssa.i52.i9327942 = ptrtoaddr ptr %.237.lcssa.i52.i932 to i64
  %.2.lcssa.i53.i9337941 = ptrtoaddr ptr %.2.lcssa.i53.i933 to i64
  %i.hll = xor i32 %.241.lcssa.i51.i931, -1
  %i.hlm = add i32 %i.gff, %i.hll                 ; 3 uses
  %i.hln = zext i32 %i.hlm to i64
  %i.hlo = add nuw nsw i64 %i.hln, 1              ; 5 uses
  %min.iters.check7943 = icmp ult i32 %i.hlm, 7
  %i.hlp = sub i64 %.2.lcssa.i53.i9337941, %.237.lcssa.i52.i9327942
  %diff.check7945 = icmp ugt i64 %i.hlp, -64
  %or.cond9184 = select i1 %min.iters.check7943, i1 true, i1 %diff.check7945
  br i1 %or.cond9184, label %.lr.ph203.i54.i.preheader, label %vector.main.loop.iter.check7946

vector.main.loop.iter.check7946:                  ; preds = %iter.check7958
  %min.iters.check7947 = icmp ult i32 %i.hlm, 31
  br i1 %min.iters.check7947, label %vec.epilog.ph7962, label %vector.ph7948

vector.ph7948:                                    ; preds = %vector.main.loop.iter.check7946
  %i.hlq = and i64 %i.hlo, 24
  %n.vec7949 = and i64 %i.hlo, 8589934560         ; 5 uses
  %i.hlr = shl nuw nsw i64 %n.vec7949, 1          ; 2 uses
  %i.hls = getelementptr i8, ptr %.2.lcssa.i53.i933, i64 %i.hlr
  %i.hlt = getelementptr i8, ptr %.237.lcssa.i52.i932, i64 %i.hlr
  %i.hlu = trunc i64 %n.vec7949 to i32
  %i.hlv = add i32 %.241.lcssa.i51.i931, %i.hlu
  %i.hlw = insertelement <16 x float> poison, float %i.hej, i64 0
  %i.hlx = shufflevector <16 x float> %i.hlw, <16 x float> poison, <16 x i32> zeroinitializer
  %i.hly = insertelement <8 x float> poison, float %i.hej, i64 0
  %i.hlz = shufflevector <8 x float> %i.hly, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hma = insertelement <4 x float> poison, float %i.hej, i64 0
  %i.hmb = shufflevector <4 x float> %i.hma, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hmc = insertelement <2 x float> poison, float %i.hej, i64 0
  %i.hmd = shufflevector <2 x float> %i.hmc, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7950

vector.body7950:                                  ; preds = %vector.ph7948, %vector.body7950
  %index7951 = phi i64 [ 0, %vector.ph7948 ], [ %index.next7955, %vector.body7950 ] ; 2 uses
  %i.hme = shl i64 %index7951, 1                  ; 2 uses
  %next.gep7952 = getelementptr i8, ptr %.2.lcssa.i53.i933, i64 %i.hme
  %next.gep7953 = getelementptr i8, ptr %.237.lcssa.i52.i932, i64 %i.hme
  %wide.load7954 = load <32 x i16>, ptr %next.gep7952, align 2, !tbaa !558
  %i.hmf = zext <32 x i16> %wide.load7954 to <32 x i32>
  %i.hmg = shl nuw <32 x i32> %i.hmf, splat (i32 16)
  %i.hmh = bitcast <32 x i32> %i.hmg to <32 x float> ; 6 uses
  %i.hmi = extractelement <32 x float> %i.hmh, i64 0
  %i.hmj = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hej, float %i.hmi)
  %i.hmk = shufflevector <32 x float> %i.hmh, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.hml = tail call fast <16 x float> @llvm.pow.v16f32(<16 x float> %i.hlx, <16 x float> %i.hmk)
  %i.hmm = shufflevector <32 x float> %i.hmh, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.hmn = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.hlz, <8 x float> %i.hmm)
  %i.hmo = shufflevector <32 x float> %i.hmh, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.hmp = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.hmb, <4 x float> %i.hmo)
  %i.hmq = extractelement <32 x float> %i.hmh, i64 29
  %i.hmr = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hej, float %i.hmq)
  %i.hms = shufflevector <32 x float> %i.hmh, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.hmt = tail call fast <2 x float> @llvm.pow.v2f32(<2 x float> %i.hmd, <2 x float> %i.hms)
  %i.hmu = insertelement <32 x float> poison, float %i.hmj, i64 0
  %i.hmv = shufflevector <16 x float> %i.hml, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hmw = shufflevector <32 x float> %i.hmu, <32 x float> %i.hmv, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hmx = shufflevector <8 x float> %i.hmn, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hmy = shufflevector <32 x float> %i.hmw, <32 x float> %i.hmx, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hmz = shufflevector <4 x float> %i.hmp, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hna = shufflevector <32 x float> %i.hmy, <32 x float> %i.hmz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.hnb = insertelement <32 x float> %i.hna, float %i.hmr, i64 29
  %i.hnc = shufflevector <2 x float> %i.hmt, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hnd = shufflevector <32 x float> %i.hnb, <32 x float> %i.hnc, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.hne = bitcast <32 x float> %i.hnd to <32 x i32>
  %i.hnf = lshr <32 x i32> %i.hne, splat (i32 16)
  %i.hng = trunc nuw <32 x i32> %i.hnf to <32 x i16>
  store <32 x i16> %i.hng, ptr %next.gep7953, align 2, !tbaa !558
  %index.next7955 = add nuw i64 %index7951, 32    ; 2 uses
  %i.hnh = icmp eq i64 %index.next7955, %n.vec7949
  br i1 %i.hnh, label %middle.block7956, label %vector.body7950, !llvm.loop !203

middle.block7956:                                 ; preds = %vector.body7950
  %cmp.n7957 = icmp eq i64 %i.hlo, %n.vec7949
  br i1 %cmp.n7957, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7959

vec.epilog.iter.check7959:                        ; preds = %middle.block7956
  %min.epilog.iters.check7961 = icmp eq i64 %i.hlq, 0
  br i1 %min.epilog.iters.check7961, label %.lr.ph203.i54.i.preheader, label %vec.epilog.ph7962, !prof !561

vec.epilog.ph7962:                                ; preds = %vector.main.loop.iter.check7946, %vec.epilog.iter.check7959
  %vec.epilog.resume.val7963 = phi i64 [ %n.vec7949, %vec.epilog.iter.check7959 ], [ 0, %vector.main.loop.iter.check7946 ]
  %n.vec7964 = and i64 %i.hlo, 8589934584         ; 4 uses
  %i.hni = shl nuw nsw i64 %n.vec7964, 1          ; 2 uses
  %i.hnj = getelementptr i8, ptr %.2.lcssa.i53.i933, i64 %i.hni
  %i.hnk = getelementptr i8, ptr %.237.lcssa.i52.i932, i64 %i.hni
  %i.hnl = trunc i64 %n.vec7964 to i32
  %i.hnm = add i32 %.241.lcssa.i51.i931, %i.hnl
  %i.hnn = insertelement <4 x float> poison, float %i.hej, i64 0
  %i.hno = shufflevector <4 x float> %i.hnn, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7965

vec.epilog.vector.body7965:                       ; preds = %vec.epilog.vector.body7965, %vec.epilog.ph7962
  %index7966 = phi i64 [ %vec.epilog.resume.val7963, %vec.epilog.ph7962 ], [ %index.next7970, %vec.epilog.vector.body7965 ] ; 2 uses
  %i.hnp = shl i64 %index7966, 1                  ; 2 uses
  %next.gep7967 = getelementptr i8, ptr %.2.lcssa.i53.i933, i64 %i.hnp
  %next.gep7968 = getelementptr i8, ptr %.237.lcssa.i52.i932, i64 %i.hnp
  %wide.load7969 = load <8 x i16>, ptr %next.gep7967, align 2, !tbaa !558
  %i.hnq = zext <8 x i16> %wide.load7969 to <8 x i32>
  %i.hnr = shl nuw <8 x i32> %i.hnq, splat (i32 16)
  %i.hns = bitcast <8 x i32> %i.hnr to <8 x float> ; 5 uses
  %i.hnt = extractelement <8 x float> %i.hns, i64 0
  %i.hnu = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hej, float %i.hnt)
  %i.hnv = extractelement <8 x float> %i.hns, i64 1
  %i.hnw = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hej, float %i.hnv)
  %i.hnx = extractelement <8 x float> %i.hns, i64 2
  %i.hny = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hej, float %i.hnx)
  %i.hnz = shufflevector <8 x float> %i.hns, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.hoa = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.hno, <4 x float> %i.hnz)
  %i.hob = extractelement <8 x float> %i.hns, i64 7
  %i.hoc = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hej, float %i.hob)
  %i.hod = insertelement <8 x float> poison, float %i.hnu, i64 0
  %i.hoe = insertelement <8 x float> %i.hod, float %i.hnw, i64 1
  %i.hof = insertelement <8 x float> %i.hoe, float %i.hny, i64 2
  %i.hog = shufflevector <4 x float> %i.hoa, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hoh = shufflevector <8 x float> %i.hof, <8 x float> %i.hog, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.hoi = insertelement <8 x float> %i.hoh, float %i.hoc, i64 7
  %i.hoj = bitcast <8 x float> %i.hoi to <8 x i32>
  %i.hok = lshr <8 x i32> %i.hoj, splat (i32 16)
  %i.hol = trunc nuw <8 x i32> %i.hok to <8 x i16>
  store <8 x i16> %i.hol, ptr %next.gep7968, align 2, !tbaa !558
  %index.next7970 = add nuw i64 %index7966, 8     ; 2 uses
  %i.hom = icmp eq i64 %index.next7970, %n.vec7964
  br i1 %i.hom, label %vec.epilog.middle.block7971, label %vec.epilog.vector.body7965, !llvm.loop !204

vec.epilog.middle.block7971:                      ; preds = %vec.epilog.vector.body7965
  %cmp.n7972 = icmp eq i64 %i.hlo, %n.vec7964
  br i1 %cmp.n7972, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph203.i54.i.preheader

.lr.ph203.i54.i.preheader:                        ; preds = %iter.check7958, %vec.epilog.iter.check7959, %vec.epilog.middle.block7971
  %.3202.i55.i.ph = phi ptr [ %.2.lcssa.i53.i933, %iter.check7958 ], [ %i.hls, %vec.epilog.iter.check7959 ], [ %i.hnj, %vec.epilog.middle.block7971 ] ; 3 uses
  %.338201.i56.i.ph = phi ptr [ %.237.lcssa.i52.i932, %iter.check7958 ], [ %i.hlt, %vec.epilog.iter.check7959 ], [ %i.hnk, %vec.epilog.middle.block7971 ] ; 3 uses
  %.342200.i57.i.ph = phi i32 [ %.241.lcssa.i51.i931, %iter.check7958 ], [ %i.hlv, %vec.epilog.iter.check7959 ], [ %i.hnm, %vec.epilog.middle.block7971 ] ; 4 uses
  %i.hon = sub i32 %i.gff, %.342200.i57.i.ph
  %.neg11066 = add i32 %.342200.i57.i.ph, 1
  %xtraiter10606 = and i32 %i.hon, 1
  %lcmp.mod10607.not = icmp eq i32 %xtraiter10606, 0
  br i1 %lcmp.mod10607.not, label %.lr.ph203.i54.i.prol.loopexit, label %.lr.ph203.i54.i.prol

.lr.ph203.i54.i.prol:                             ; preds = %.lr.ph203.i54.i.preheader
  %i.hoo = getelementptr inbounds nuw i8, ptr %.3202.i55.i.ph, i64 2
  %i.hop = load i16, ptr %.3202.i55.i.ph, align 2, !tbaa !558
  %i.hoq = zext i16 %i.hop to i32
  %i.hor = shl nuw i32 %i.hoq, 16
  %i.hos = bitcast i32 %i.hor to float
  %i.hot = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hej, float %i.hos)
  %i.hou = bitcast float %i.hot to i32
  %i.hov = lshr i32 %i.hou, 16
  %i.how = trunc nuw i32 %i.hov to i16
  %i.hox = getelementptr inbounds nuw i8, ptr %.338201.i56.i.ph, i64 2
  store i16 %i.how, ptr %.338201.i56.i.ph, align 2, !tbaa !558
  %i.hoy = add nuw nsw i32 %.342200.i57.i.ph, 1
  br label %.lr.ph203.i54.i.prol.loopexit

.lr.ph203.i54.i.prol.loopexit:                    ; preds = %.lr.ph203.i54.i.prol, %.lr.ph203.i54.i.preheader
  %.3202.i55.i.unr = phi ptr [ %.3202.i55.i.ph, %.lr.ph203.i54.i.preheader ], [ %i.hoo, %.lr.ph203.i54.i.prol ]
  %.338201.i56.i.unr = phi ptr [ %.338201.i56.i.ph, %.lr.ph203.i54.i.preheader ], [ %i.hox, %.lr.ph203.i54.i.prol ]
  %.342200.i57.i.unr = phi i32 [ %.342200.i57.i.ph, %.lr.ph203.i54.i.preheader ], [ %i.hoy, %.lr.ph203.i54.i.prol ]
  %i.hoz = icmp eq i32 %i.gff, %.neg11066
  br i1 %i.hoz, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph203.i54.i

bb.ga:                                            ; preds = %bb.ga, %.lr.ph196.i59.i
  %.2195.i60.i = phi ptr [ %.1.lcssa.i49.i929, %.lr.ph196.i59.i ], [ %i.hqj, %bb.ga ] ; 2 uses
  %.237194.i61.i = phi ptr [ %.136.lcssa.i48.i928, %.lr.ph196.i59.i ], [ %i.hqk, %bb.ga ] ; 2 uses
  %.241193.i62.i = phi i32 [ %.140.lcssa.i47.i927, %.lr.ph196.i59.i ], [ %i.hql, %bb.ga ]
  %i.hpa = load i64, ptr %.2195.i60.i, align 1, !tbaa !555
  %i.hpb = insertelement <2 x i64> poison, i64 %i.hpa, i64 0
  %i.hpc = bitcast <2 x i64> %i.hpb to <8 x i16>
  %i.hpd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.hpc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hpe = bitcast <8 x i16> %i.hpd to <4 x float>
  %i.hpf = fmul fast <4 x float> %i.hkd, %i.hpe
  %i.hpg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.hpf, <4 x float> splat (float f0x42B0C0A5))
  %i.hph = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.hpg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hpi = fmul fast <4 x float> %i.hph, splat (float f0x3FB8AA3B)
  %i.hpj = fadd fast <4 x float> %i.hpi, splat (float 5.000000e-01) ; 2 uses
  %i.hpk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hpj)
  %i.hpl = sitofp fast <4 x i32> %i.hpk to <4 x float> ; 2 uses
  %i.hpm = fcmp fast olt <4 x float> %i.hpj, %i.hpl
  %i.hpn = select <4 x i1> %i.hpm, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.hpo = fsub fast <4 x float> %i.hpl, %i.hpn   ; 2 uses
  %i.hpp = fneg fast <4 x float> %i.hpo           ; 2 uses
  %i.hpq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.hpp, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.hph)
  %i.hpr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.hpp, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.hpq) ; 8 uses
  %i.hps = fmul fast <4 x float> %i.hpr, %i.hpr
  %i.hpt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hpr, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.hpu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hpt, <4 x float> nofpclass(nan inf) %i.hpr, <4 x float> splat (float f0x3C088908))
  %i.hpv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hpu, <4 x float> nofpclass(nan inf) %i.hpr, <4 x float> splat (float f0x3D2AA9C1))
  %i.hpw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hpv, <4 x float> nofpclass(nan inf) %i.hpr, <4 x float> splat (float f0x3E2AAAAA))
  %i.hpx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hpw, <4 x float> nofpclass(nan inf) %i.hpr, <4 x float> splat (float 5.000000e-01))
  %i.hpy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.hpx, <4 x float> nofpclass(nan inf) %i.hps, <4 x float> nofpclass(nan inf) %i.hpr)
  %i.hpz = fadd fast <4 x float> %i.hpy, splat (float 1.000000e+00)
  %i.hqa = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hpo)
  %i.hqb = shl <4 x i32> %i.hqa, splat (i32 23)
  %i.hqc = add <4 x i32> %i.hqb, splat (i32 1065353216)
  %i.hqd = bitcast <4 x i32> %i.hqc to <4 x float>
  %i.hqe = fmul fast <4 x float> %i.hpz, %i.hqd
  %i.hqf = shufflevector <4 x float> %i.hqe, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.hqg = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.hqf)
  %i.hqh = bitcast <8 x bfloat> %i.hqg to <2 x i64>
  %i.hqi = extractelement <2 x i64> %i.hqh, i64 0
  store i64 %i.hqi, ptr %.237194.i61.i, align 1, !tbaa !555
  %i.hqj = getelementptr inbounds nuw i8, ptr %.2195.i60.i, i64 8 ; 2 uses
  %i.hqk = getelementptr inbounds nuw i8, ptr %.237194.i61.i, i64 8 ; 2 uses
  %i.hql = add nuw nsw i32 %.241193.i62.i, 4      ; 3 uses
  %i.hqm = or disjoint i32 %i.hql, 3
  %i.hqn = icmp slt i32 %i.hqm, %i.gff
  br i1 %i.hqn, label %bb.ga, label %.preheader.i50.i930, !llvm.loop !205

.lr.ph203.i54.i:                                  ; preds = %.lr.ph203.i54.i.prol.loopexit, %.lr.ph203.i54.i
  %.3202.i55.i = phi ptr [ %i.hqy, %.lr.ph203.i54.i ], [ %.3202.i55.i.unr, %.lr.ph203.i54.i.prol.loopexit ] ; 3 uses
  %.338201.i56.i = phi ptr [ %i.hrh, %.lr.ph203.i54.i ], [ %.338201.i56.i.unr, %.lr.ph203.i54.i.prol.loopexit ] ; 3 uses
  %.342200.i57.i = phi i32 [ %i.hri, %.lr.ph203.i54.i ], [ %.342200.i57.i.unr, %.lr.ph203.i54.i.prol.loopexit ]
  %i.hqo = getelementptr inbounds nuw i8, ptr %.3202.i55.i, i64 2
  %i.hqp = load i16, ptr %.3202.i55.i, align 2, !tbaa !558
  %i.hqq = zext i16 %i.hqp to i32
  %i.hqr = shl nuw i32 %i.hqq, 16
  %i.hqs = bitcast i32 %i.hqr to float
  %i.hqt = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hej, float %i.hqs)
  %i.hqu = bitcast float %i.hqt to i32
  %i.hqv = lshr i32 %i.hqu, 16
  %i.hqw = trunc nuw i32 %i.hqv to i16
  %i.hqx = getelementptr inbounds nuw i8, ptr %.338201.i56.i, i64 2
  store i16 %i.hqw, ptr %.338201.i56.i, align 2, !tbaa !558
  %i.hqy = getelementptr inbounds nuw i8, ptr %.3202.i55.i, i64 4
  %i.hqz = load i16, ptr %i.hqo, align 2, !tbaa !558
  %i.hra = zext i16 %i.hqz to i32
  %i.hrb = shl nuw i32 %i.hra, 16
  %i.hrc = bitcast i32 %i.hrb to float
  %i.hrd = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.hej, float %i.hrc)
  %i.hre = bitcast float %i.hrd to i32
  %i.hrf = lshr i32 %i.hre, 16
  %i.hrg = trunc nuw i32 %i.hrf to i16
  %i.hrh = getelementptr inbounds nuw i8, ptr %.338201.i56.i, i64 4
  store i16 %i.hrg, ptr %i.hqx, align 2, !tbaa !558
  %i.hri = add nuw nsw i32 %.342200.i57.i, 2      ; 2 uses
  %exitcond.not.i58.i934.1 = icmp eq i32 %i.hri, %i.gff
  br i1 %exitcond.not.i58.i934.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph203.i54.i, !llvm.loop !206

bb.gb:                                            ; preds = %bb.fr, %bb.fh
  %i.hrj = icmp eq i32 %6, 1
  br i1 %i.hrj, label %bb.gc, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.gc:                                            ; preds = %bb.gb
  %i.hrk = icmp eq i32 %3, %4
  br i1 %i.hrk, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  switch i32 %.sroa.speculated.i903, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 16, label %.preheader.i76.i923
    i32 8, label %.preheader167.i.i
    i32 4, label %.preheader169.i.i
  ]

.preheader169.i.i:                                ; preds = %bb.gd
  %i.hrl = icmp sgt i32 %.sroa.speculated98.i902, 0
  br i1 %i.hrl, label %.lr.ph.i74.i921, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader167.i.i:                                ; preds = %bb.gd
  %i.hrm = icmp sgt i32 %.sroa.speculated98.i902, 0
  br i1 %i.hrm, label %.lr.ph179.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader.i76.i923:                              ; preds = %bb.gd
  %i.hrn = icmp sgt i32 %.sroa.speculated98.i902, 0
  br i1 %i.hrn, label %.lr.ph184.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph184.i.i:                                    ; preds = %.preheader.i76.i923, %.lr.ph184.i.i
  %.031183.i.i = phi ptr [ %i.htz, %.lr.ph184.i.i ], [ %0, %.preheader.i76.i923 ] ; 2 uses
  %.033182.i.i = phi ptr [ %i.hua, %.lr.ph184.i.i ], [ %1, %.preheader.i76.i923 ] ; 2 uses
  %.036181.i.i = phi i32 [ %i.huc, %.lr.ph184.i.i ], [ 0, %.preheader.i76.i923 ]
  %.037180.i.i = phi ptr [ %i.hub, %.lr.ph184.i.i ], [ %2, %.preheader.i76.i923 ] ; 2 uses
  %i.hro = load <16 x bfloat>, ptr %.031183.i.i, align 1, !tbaa !555
  %i.hrp = fpext fast <16 x bfloat> %i.hro to <16 x float>
  %i.hrq = load i16, ptr %.033182.i.i, align 2, !tbaa !558
  %i.hrr = zext i16 %i.hrq to i32
  %i.hrs = shl nuw i32 %i.hrr, 16
  %i.hrt = insertelement <16 x i32> poison, i32 %i.hrs, i64 0
  %i.hru = bitcast <16 x i32> %i.hrt to <16 x float>
  %i.hrv = shufflevector <16 x float> %i.hru, <16 x float> poison, <16 x i32> zeroinitializer
  %i.hrw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.hrp, <16 x float> splat (float f0x00800000), i32 4)
  %i.hrx = bitcast <16 x float> %i.hrw to <16 x i32> ; 2 uses
  %i.hry = lshr <16 x i32> %i.hrx, splat (i32 23)
  %i.hrz = and <16 x i32> %i.hrx, splat (i32 -2139095041)
  %i.hsa = or disjoint <16 x i32> %i.hrz, splat (i32 1056964608)
  %i.hsb = bitcast <16 x i32> %i.hsa to <16 x float> ; 3 uses
  %i.hsc = add nsw <16 x i32> %i.hry, splat (i32 -127)
  %i.hsd = sitofp fast <16 x i32> %i.hsc to <16 x float> ; 2 uses
  %i.hse = fadd fast <16 x float> %i.hsd, splat (float 1.000000e+00)
  %i.hsf = fcmp fast olt <16 x float> %i.hsb, splat (float f0x3F3504F3) ; 2 uses
  %i.hsg = fadd fast <16 x float> %i.hsb, splat (float -1.000000e+00)
  %i.hsh = select fast <16 x i1> %i.hsf, <16 x float> %i.hsd, <16 x float> %i.hse ; 2 uses
  %i.hsi = select fast <16 x i1> %i.hsf, <16 x float> %i.hsb, <16 x float> zeroinitializer
  %i.hsj = fadd fast <16 x float> %i.hsg, %i.hsi  ; 12 uses
  %i.hsk = fmul fast <16 x float> %i.hsj, %i.hsj  ; 2 uses
  %i.hsl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hsj, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.hsm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hsl, <16 x float> nofpclass(nan inf) %i.hsj, <16 x float> splat (float f0x3DEF251A))
  %i.hsn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hsm, <16 x float> nofpclass(nan inf) %i.hsj, <16 x float> splat (float f0xBDFE5D4F))
  %i.hso = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hsn, <16 x float> nofpclass(nan inf) %i.hsj, <16 x float> splat (float f0x3E11E9BF))
  %i.hsp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hso, <16 x float> nofpclass(nan inf) %i.hsj, <16 x float> splat (float f0xBE2AAE50))
  %i.hsq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hsp, <16 x float> nofpclass(nan inf) %i.hsj, <16 x float> splat (float f0x3E4CCEAC))
  %i.hsr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hsq, <16 x float> nofpclass(nan inf) %i.hsj, <16 x float> splat (float f0xBE7FFFFC))
  %i.hss = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hsr, <16 x float> nofpclass(nan inf) %i.hsj, <16 x float> splat (float f0x3EAAAAAA))
  %i.hst = fmul fast <16 x float> %i.hsk, %i.hsj
  %i.hsu = fmul fast <16 x float> %i.hst, %i.hss
  %i.hsv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hsh, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.hsu)
  %i.hsw = fneg fast <16 x float> %i.hsk
  %i.hsx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.hsw, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.hsv)
  %i.hsy = fadd fast <16 x float> %i.hsx, %i.hsj
  %i.hsz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hsh, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.hsy)
  %i.hta = fmul fast <16 x float> %i.hsz, %i.hrv
  %i.htb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.hta, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.htc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.htb, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  %i.iag = fadd fast <16 x float> %i.iaf, splat (float 1.000000e+00)
  %i.iah = fcmp fast olt <16 x float> %i.iad, splat (float f0x3F3504F3) ; 2 uses
  %i.iai = fadd fast <16 x float> %i.iad, splat (float -1.000000e+00)
  %i.iaj = select fast <16 x i1> %i.iah, <16 x float> %i.iaf, <16 x float> %i.iag ; 2 uses
  %i.iak = select fast <16 x i1> %i.iah, <16 x float> %i.iad, <16 x float> zeroinitializer
  %i.ial = fadd fast <16 x float> %i.iai, %i.iak  ; 12 uses
  %i.iam = fmul fast <16 x float> %i.ial, %i.ial  ; 2 uses
  %i.ian = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ial, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.iao = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ian, <16 x float> nofpclass(nan inf) %i.ial, <16 x float> splat (float f0x3DEF251A))
  %i.iap = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iao, <16 x float> nofpclass(nan inf) %i.ial, <16 x float> splat (float f0xBDFE5D4F))
  %i.iaq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iap, <16 x float> nofpclass(nan inf) %i.ial, <16 x float> splat (float f0x3E11E9BF))
  %i.iar = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iaq, <16 x float> nofpclass(nan inf) %i.ial, <16 x float> splat (float f0xBE2AAE50))
  %i.ias = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iar, <16 x float> nofpclass(nan inf) %i.ial, <16 x float> splat (float f0x3E4CCEAC))
  %i.iat = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ias, <16 x float> nofpclass(nan inf) %i.ial, <16 x float> splat (float f0xBE7FFFFC))
  %i.iau = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iat, <16 x float> nofpclass(nan inf) %i.ial, <16 x float> splat (float f0x3EAAAAAA))
  %i.iav = fmul fast <16 x float> %i.iam, %i.ial
  %i.iaw = fmul fast <16 x float> %i.iav, %i.iau
  %i.iax = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iaj, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.iaw)
  %i.iay = fneg fast <16 x float> %i.iam
  %i.iaz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.iay, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.iax)
  %i.iba = fadd fast <16 x float> %i.iaz, %i.ial
  %i.ibb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.iaj, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.iba)
  %i.ibc = fmul fast <16 x float> %i.ibb, %i.hzu
  %i.ibd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ibc, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ibe = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ibd, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ibf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ibe, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ibg = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ibf, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ibh = fcmp fast ogt <16 x float> %i.ibg, %i.ibf
  %i.ibi = fadd fast <16 x float> %i.ibg, splat (float -1.000000e+00)
  %i.ibj = select fast <16 x i1> %i.ibh, <16 x float> %i.ibi, <16 x float> %i.ibg ; 2 uses
  %i.ibk = fneg fast <16 x float> %i.ibj          ; 2 uses
  %i.ibl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ibk, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ibe)
  %i.ibm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ibk, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ibl) ; 8 uses
  %i.ibn = fmul fast <16 x float> %i.ibm, %i.ibm
  %i.ibo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ibm, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.ibp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ibo, <16 x float> nofpclass(nan inf) %i.ibm, <16 x float> splat (float f0x3C088908))
  %i.ibq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ibp, <16 x float> nofpclass(nan inf) %i.ibm, <16 x float> splat (float f0x3D2AA9C1))
  %i.ibr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ibq, <16 x float> nofpclass(nan inf) %i.ibm, <16 x float> splat (float f0x3E2AAAAA))
  %i.ibs = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ibr, <16 x float> nofpclass(nan inf) %i.ibm, <16 x float> splat (float 5.000000e-01))
  %i.ibt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ibs, <16 x float> nofpclass(nan inf) %i.ibn, <16 x float> nofpclass(nan inf) %i.ibm)
  %i.ibu = fadd fast <16 x float> %i.ibt, splat (float 1.000000e+00)
  %i.ibv = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ibj, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ibw = shl <16 x i32> %i.ibv, splat (i32 23)
  %i.ibx = add <16 x i32> %i.ibw, splat (i32 1065353216)
  %i.iby = bitcast <16 x i32> %i.ibx to <16 x float>
  %i.ibz = fmul fast <16 x float> %i.ibu, %i.iby
  %i.ica = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ibz)
  store <16 x bfloat> %i.ica, ptr %.030131.i.i, align 1, !tbaa !555
  %i.icb = getelementptr inbounds nuw i8, ptr %.0132.i.i, i64 32 ; 2 uses
  %i.icc = getelementptr inbounds nuw i8, ptr %.030131.i.i, i64 32 ; 2 uses
  %i.icd = add nuw nsw i32 %.034130.i.i, 16       ; 2 uses
  %i.ice = or disjoint i32 %i.icd, 15
  %i.icf = icmp slt i32 %i.ice, %i.gff
  br i1 %i.icf, label %.lr.ph.i85.i919, label %._crit_edge.loopexit.i.i920, !llvm.loop !210

._crit_edge.loopexit.i.i920:                      ; preds = %.lr.ph.i85.i919
  %i.icg = and i32 %i.gff, 2147483632
  br label %._crit_edge.i.i907

._crit_edge.i.i907:                               ; preds = %._crit_edge.loopexit.i.i920, %bb.gf
  %.034.lcssa.i77.i908 = phi i32 [ 0, %bb.gf ], [ %i.icg, %._crit_edge.loopexit.i.i920 ] ; 3 uses
  %.030.lcssa.i.i909 = phi ptr [ %2, %bb.gf ], [ %i.icc, %._crit_edge.loopexit.i.i920 ] ; 2 uses
  %.0.lcssa.i78.i910 = phi ptr [ %0, %bb.gf ], [ %i.icb, %._crit_edge.loopexit.i.i920 ] ; 2 uses
  %i.ich = insertelement <8 x float> poison, float %i.hzs, i64 0
  %i.ici = shufflevector <8 x float> %i.ich, <8 x float> poison, <8 x i32> zeroinitializer
  %i.icj = or disjoint i32 %.034.lcssa.i77.i908, 7
  %i.ick = icmp slt i32 %i.icj, %i.gff
  br i1 %i.ick, label %.lr.ph139.i.i, label %._crit_edge140.i.i

.lr.ph139.i.i:                                    ; preds = %._crit_edge.i.i907, %.lr.ph139.i.i
  %.1137.i.i = phi ptr [ %i.ieq, %.lr.ph139.i.i ], [ %.0.lcssa.i78.i910, %._crit_edge.i.i907 ] ; 2 uses
  %.131136.i.i = phi ptr [ %i.ier, %.lr.ph139.i.i ], [ %.030.lcssa.i.i909, %._crit_edge.i.i907 ] ; 2 uses
  %.135135.i.i = phi i32 [ %i.ies, %.lr.ph139.i.i ], [ %.034.lcssa.i77.i908, %._crit_edge.i.i907 ]
  %i.icl = load <8 x bfloat>, ptr %.1137.i.i, align 1, !tbaa !555
  %i.icm = fpext fast <8 x bfloat> %i.icl to <8 x float>
  %i.icn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.icm, <8 x float> splat (float f0x00800000))
  %i.ico = bitcast <8 x float> %i.icn to <8 x i32> ; 2 uses
  %i.icp = lshr <8 x i32> %i.ico, splat (i32 23)
  %i.icq = and <8 x i32> %i.ico, splat (i32 -2139095041)
  %i.icr = or disjoint <8 x i32> %i.icq, splat (i32 1056964608)
  %i.ics = bitcast <8 x i32> %i.icr to <8 x float> ; 3 uses
  %i.ict = add nsw <8 x i32> %i.icp, splat (i32 -127)
  %i.icu = sitofp fast <8 x i32> %i.ict to <8 x float> ; 2 uses
  %i.icv = fadd fast <8 x float> %i.icu, splat (float 1.000000e+00)
  %i.icw = fcmp fast olt <8 x float> %i.ics, splat (float f0x3F3504F3) ; 2 uses
  %i.icx = select <8 x i1> %i.icw, <8 x float> %i.ics, <8 x float> zeroinitializer
  %i.icy = fadd fast <8 x float> %i.ics, splat (float -1.000000e+00)
  %i.icz = select fast <8 x i1> %i.icw, <8 x float> %i.icu, <8 x float> %i.icv ; 2 uses
  %i.ida = fadd fast <8 x float> %i.icy, %i.icx   ; 12 uses
  %i.idb = fmul fast <8 x float> %i.ida, %i.ida   ; 2 uses
  %i.idc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ida, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.idd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.idc, <8 x float> nofpclass(nan inf) %i.ida, <8 x float> splat (float f0x3DEF251A))
  %i.ide = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.idd, <8 x float> nofpclass(nan inf) %i.ida, <8 x float> splat (float f0xBDFE5D4F))
  %i.idf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ide, <8 x float> nofpclass(nan inf) %i.ida, <8 x float> splat (float f0x3E11E9BF))
  %i.idg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.idf, <8 x float> nofpclass(nan inf) %i.ida, <8 x float> splat (float f0xBE2AAE50))
  %i.idh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.idg, <8 x float> nofpclass(nan inf) %i.ida, <8 x float> splat (float f0x3E4CCEAC))
  %i.idi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.idh, <8 x float> nofpclass(nan inf) %i.ida, <8 x float> splat (float f0xBE7FFFFC))
  %i.idj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.idi, <8 x float> nofpclass(nan inf) %i.ida, <8 x float> splat (float f0x3EAAAAAA))
  %i.idk = fmul fast <8 x float> %i.idb, %i.ida
  %i.idl = fmul fast <8 x float> %i.idk, %i.idj
  %i.idm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.icz, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.idl)
  %i.idn = fneg fast <8 x float> %i.idb
  %i.ido = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.idn, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.idm)
  %i.idp = fadd fast <8 x float> %i.ido, %i.ida
  %i.idq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.icz, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.idp)
  %i.idr = fmul fast <8 x float> %i.idq, %i.ici
  %i.ids = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.idr, <8 x float> splat (float f0x42B0C0A5))
  %i.idt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ids, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.idu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.idt, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.idv = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.idu, i32 1) ; 2 uses
  %i.idw = fcmp fast ogt <8 x float> %i.idv, %i.idu
  %i.idx = select <8 x i1> %i.idw, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.idy = fsub fast <8 x float> %i.idv, %i.idx   ; 2 uses
  %i.idz = fneg fast <8 x float> %i.idy           ; 2 uses
  %i.iea = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.idz, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.idt)
  %i.ieb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.idz, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.iea) ; 8 uses
  %i.iec = fmul fast <8 x float> %i.ieb, %i.ieb
  %i.ied = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ieb, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.iee = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ied, <8 x float> nofpclass(nan inf) %i.ieb, <8 x float> splat (float f0x3C088908))
  %i.ief = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iee, <8 x float> nofpclass(nan inf) %i.ieb, <8 x float> splat (float f0x3D2AA9C1))
  %i.ieg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ief, <8 x float> nofpclass(nan inf) %i.ieb, <8 x float> splat (float f0x3E2AAAAA))
  %i.ieh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ieg, <8 x float> nofpclass(nan inf) %i.ieb, <8 x float> splat (float 5.000000e-01))
  %i.iei = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ieh, <8 x float> nofpclass(nan inf) %i.iec, <8 x float> nofpclass(nan inf) %i.ieb)
  %i.iej = fadd fast <8 x float> %i.iei, splat (float 1.000000e+00)
  %i.iek = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.idy)
  %i.iel = shl <8 x i32> %i.iek, splat (i32 23)
  %i.iem = add <8 x i32> %i.iel, splat (i32 1065353216)
  %i.ien = bitcast <8 x i32> %i.iem to <8 x float>
  %i.ieo = fmul fast <8 x float> %i.iej, %i.ien
  %i.iep = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ieo)
  store <8 x bfloat> %i.iep, ptr %.131136.i.i, align 1, !tbaa !555
  %i.ieq = getelementptr inbounds nuw i8, ptr %.1137.i.i, i64 16 ; 2 uses
  %i.ier = getelementptr inbounds nuw i8, ptr %.131136.i.i, i64 16 ; 2 uses
  %i.ies = add nuw nsw i32 %.135135.i.i, 8        ; 3 uses
  %i.iet = or disjoint i32 %i.ies, 7
  %i.ieu = icmp slt i32 %i.iet, %i.gff
  br i1 %i.ieu, label %.lr.ph139.i.i, label %._crit_edge140.i.i, !llvm.loop !211

._crit_edge140.i.i:                               ; preds = %.lr.ph139.i.i, %._crit_edge.i.i907
  %.135.lcssa.i79.i911 = phi i32 [ %.034.lcssa.i77.i908, %._crit_edge.i.i907 ], [ %i.ies, %.lr.ph139.i.i ] ; 3 uses
  %.131.lcssa.i.i912 = phi ptr [ %.030.lcssa.i.i909, %._crit_edge.i.i907 ], [ %i.ier, %.lr.ph139.i.i ] ; 2 uses
  %.1.lcssa.i80.i913 = phi ptr [ %.0.lcssa.i78.i910, %._crit_edge.i.i907 ], [ %i.ieq, %.lr.ph139.i.i ] ; 2 uses
  %i.iev = insertelement <4 x float> poison, float %i.hzs, i64 0
  %i.iew = shufflevector <4 x float> %i.iev, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iex = or disjoint i32 %.135.lcssa.i79.i911, 3
  %i.iey = icmp slt i32 %i.iex, %i.gff
  br i1 %i.iey, label %.lr.ph148.i.i, label %.preheader.i81.i914

.preheader.i81.i914:                              ; preds = %.lr.ph148.i.i, %._crit_edge140.i.i
  %.236.lcssa.i82.i915 = phi i32 [ %.135.lcssa.i79.i911, %._crit_edge140.i.i ], [ %i.ile, %.lr.ph148.i.i ] ; 5 uses
  %.232.lcssa.i.i916 = phi ptr [ %.131.lcssa.i.i912, %._crit_edge140.i.i ], [ %i.ild, %.lr.ph148.i.i ] ; 6 uses
  %.2.lcssa.i83.i917 = phi ptr [ %.1.lcssa.i80.i913, %._crit_edge140.i.i ], [ %i.ilc, %.lr.ph148.i.i ] ; 6 uses
  %i.iez = icmp slt i32 %.236.lcssa.i82.i915, %i.gff
  br i1 %i.iez, label %iter.check7919, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7919:                                   ; preds = %.preheader.i81.i914
  %.232.lcssa.i.i9167903 = ptrtoaddr ptr %.232.lcssa.i.i916 to i64
  %.2.lcssa.i83.i9177902 = ptrtoaddr ptr %.2.lcssa.i83.i917 to i64
  %i.ifa = xor i32 %.236.lcssa.i82.i915, -1
  %i.ifb = add i32 %i.gff, %i.ifa                 ; 3 uses
  %i.ifc = zext i32 %i.ifb to i64
  %i.ifd = add nuw nsw i64 %i.ifc, 1              ; 5 uses
  %min.iters.check7904 = icmp ult i32 %i.ifb, 7
  %i.ife = sub i64 %.2.lcssa.i83.i9177902, %.232.lcssa.i.i9167903
  %diff.check7906 = icmp ugt i64 %i.ife, -64
  %or.cond9185 = select i1 %min.iters.check7904, i1 true, i1 %diff.check7906
  br i1 %or.cond9185, label %.lr.ph155.i.i.preheader, label %vector.main.loop.iter.check7907

vector.main.loop.iter.check7907:                  ; preds = %iter.check7919
  %min.iters.check7908 = icmp ult i32 %i.ifb, 31
  br i1 %min.iters.check7908, label %vec.epilog.ph7923, label %vector.ph7909

vector.ph7909:                                    ; preds = %vector.main.loop.iter.check7907
  %i.iff = and i64 %i.ifd, 24
  %n.vec7910 = and i64 %i.ifd, 8589934560         ; 5 uses
  %i.ifg = shl nuw nsw i64 %n.vec7910, 1          ; 2 uses
  %i.ifh = getelementptr i8, ptr %.2.lcssa.i83.i917, i64 %i.ifg
  %i.ifi = getelementptr i8, ptr %.232.lcssa.i.i916, i64 %i.ifg
  %i.ifj = trunc i64 %n.vec7910 to i32
  %i.ifk = add i32 %.236.lcssa.i82.i915, %i.ifj
  %i.ifl = insertelement <16 x float> poison, float %i.hzs, i64 0
  %i.ifm = shufflevector <16 x float> %i.ifl, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ifn = insertelement <8 x float> poison, float %i.hzs, i64 0
  %i.ifo = shufflevector <8 x float> %i.ifn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ifp = insertelement <4 x float> poison, float %i.hzs, i64 0
  %i.ifq = shufflevector <4 x float> %i.ifp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ifr = insertelement <2 x float> poison, float %i.hzs, i64 0
  %i.ifs = shufflevector <2 x float> %i.ifr, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7911

vector.body7911:                                  ; preds = %vector.ph7909, %vector.body7911
  %index7912 = phi i64 [ 0, %vector.ph7909 ], [ %index.next7916, %vector.body7911 ] ; 2 uses
  %i.ift = shl i64 %index7912, 1                  ; 2 uses
  %next.gep7913 = getelementptr i8, ptr %.2.lcssa.i83.i917, i64 %i.ift
  %next.gep7914 = getelementptr i8, ptr %.232.lcssa.i.i916, i64 %i.ift
  %wide.load7915 = load <32 x i16>, ptr %next.gep7913, align 2, !tbaa !558
  %i.ifu = zext <32 x i16> %wide.load7915 to <32 x i32>
  %i.ifv = shl nuw <32 x i32> %i.ifu, splat (i32 16)
  %i.ifw = bitcast <32 x i32> %i.ifv to <32 x float> ; 6 uses
  %i.ifx = extractelement <32 x float> %i.ifw, i64 0
  %i.ify = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ifx, float %i.hzs)
  %i.ifz = shufflevector <32 x float> %i.ifw, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.iga = tail call fast <16 x float> @llvm.pow.v16f32(<16 x float> %i.ifz, <16 x float> %i.ifm)
  %i.igb = shufflevector <32 x float> %i.ifw, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.igc = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.igb, <8 x float> %i.ifo)
  %i.igd = shufflevector <32 x float> %i.ifw, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.ige = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.igd, <4 x float> %i.ifq)
  %i.igf = extractelement <32 x float> %i.ifw, i64 29
  %i.igg = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.igf, float %i.hzs)
  %i.igh = shufflevector <32 x float> %i.ifw, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.igi = tail call fast <2 x float> @llvm.pow.v2f32(<2 x float> %i.igh, <2 x float> %i.ifs)
  %i.igj = insertelement <32 x float> poison, float %i.ify, i64 0
  %i.igk = shufflevector <16 x float> %i.iga, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.igl = shufflevector <32 x float> %i.igj, <32 x float> %i.igk, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.igm = shufflevector <8 x float> %i.igc, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ign = shufflevector <32 x float> %i.igl, <32 x float> %i.igm, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.igo = shufflevector <4 x float> %i.ige, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.igp = shufflevector <32 x float> %i.ign, <32 x float> %i.igo, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.igq = insertelement <32 x float> %i.igp, float %i.igg, i64 29
  %i.igr = shufflevector <2 x float> %i.igi, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.igs = shufflevector <32 x float> %i.igq, <32 x float> %i.igr, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.igt = bitcast <32 x float> %i.igs to <32 x i32>
  %i.igu = lshr <32 x i32> %i.igt, splat (i32 16)
  %i.igv = trunc nuw <32 x i32> %i.igu to <32 x i16>
  store <32 x i16> %i.igv, ptr %next.gep7914, align 2, !tbaa !558
  %index.next7916 = add nuw i64 %index7912, 32    ; 2 uses
  %i.igw = icmp eq i64 %index.next7916, %n.vec7910
  br i1 %i.igw, label %middle.block7917, label %vector.body7911, !llvm.loop !212

middle.block7917:                                 ; preds = %vector.body7911
  %cmp.n7918 = icmp eq i64 %i.ifd, %n.vec7910
  br i1 %cmp.n7918, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7920

vec.epilog.iter.check7920:                        ; preds = %middle.block7917
  %min.epilog.iters.check7922 = icmp eq i64 %i.iff, 0
  br i1 %min.epilog.iters.check7922, label %.lr.ph155.i.i.preheader, label %vec.epilog.ph7923, !prof !561

vec.epilog.ph7923:                                ; preds = %vector.main.loop.iter.check7907, %vec.epilog.iter.check7920
  %vec.epilog.resume.val7924 = phi i64 [ %n.vec7910, %vec.epilog.iter.check7920 ], [ 0, %vector.main.loop.iter.check7907 ]
  %n.vec7925 = and i64 %i.ifd, 8589934584         ; 4 uses
  %i.igx = shl nuw nsw i64 %n.vec7925, 1          ; 2 uses
  %i.igy = getelementptr i8, ptr %.2.lcssa.i83.i917, i64 %i.igx
  %i.igz = getelementptr i8, ptr %.232.lcssa.i.i916, i64 %i.igx
  %i.iha = trunc i64 %n.vec7925 to i32
  %i.ihb = add i32 %.236.lcssa.i82.i915, %i.iha
  %i.ihc = insertelement <4 x float> poison, float %i.hzs, i64 0
  %i.ihd = shufflevector <4 x float> %i.ihc, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7926

vec.epilog.vector.body7926:                       ; preds = %vec.epilog.vector.body7926, %vec.epilog.ph7923
  %index7927 = phi i64 [ %vec.epilog.resume.val7924, %vec.epilog.ph7923 ], [ %index.next7931, %vec.epilog.vector.body7926 ] ; 2 uses
  %i.ihe = shl i64 %index7927, 1                  ; 2 uses
  %next.gep7928 = getelementptr i8, ptr %.2.lcssa.i83.i917, i64 %i.ihe
  %next.gep7929 = getelementptr i8, ptr %.232.lcssa.i.i916, i64 %i.ihe
  %wide.load7930 = load <8 x i16>, ptr %next.gep7928, align 2, !tbaa !558
  %i.ihf = zext <8 x i16> %wide.load7930 to <8 x i32>
  %i.ihg = shl nuw <8 x i32> %i.ihf, splat (i32 16)
  %i.ihh = bitcast <8 x i32> %i.ihg to <8 x float> ; 5 uses
  %i.ihi = extractelement <8 x float> %i.ihh, i64 0
  %i.ihj = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ihi, float %i.hzs)
  %i.ihk = extractelement <8 x float> %i.ihh, i64 1
  %i.ihl = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ihk, float %i.hzs)
  %i.ihm = extractelement <8 x float> %i.ihh, i64 2
  %i.ihn = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ihm, float %i.hzs)
  %i.iho = shufflevector <8 x float> %i.ihh, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ihp = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.iho, <4 x float> %i.ihd)
  %i.ihq = extractelement <8 x float> %i.ihh, i64 7
  %i.ihr = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ihq, float %i.hzs)
  %i.ihs = insertelement <8 x float> poison, float %i.ihj, i64 0
  %i.iht = insertelement <8 x float> %i.ihs, float %i.ihl, i64 1
  %i.ihu = insertelement <8 x float> %i.iht, float %i.ihn, i64 2
  %i.ihv = shufflevector <4 x float> %i.ihp, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ihw = shufflevector <8 x float> %i.ihu, <8 x float> %i.ihv, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.ihx = insertelement <8 x float> %i.ihw, float %i.ihr, i64 7
  %i.ihy = bitcast <8 x float> %i.ihx to <8 x i32>
  %i.ihz = lshr <8 x i32> %i.ihy, splat (i32 16)
  %i.iia = trunc nuw <8 x i32> %i.ihz to <8 x i16>
  store <8 x i16> %i.iia, ptr %next.gep7929, align 2, !tbaa !558
  %index.next7931 = add nuw i64 %index7927, 8     ; 2 uses
  %i.iib = icmp eq i64 %index.next7931, %n.vec7925
  br i1 %i.iib, label %vec.epilog.middle.block7932, label %vec.epilog.vector.body7926, !llvm.loop !213

vec.epilog.middle.block7932:                      ; preds = %vec.epilog.vector.body7926
  %cmp.n7933 = icmp eq i64 %i.ifd, %n.vec7925
  br i1 %cmp.n7933, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph155.i.i.preheader

.lr.ph155.i.i.preheader:                          ; preds = %iter.check7919, %vec.epilog.iter.check7920, %vec.epilog.middle.block7932
  %.3154.i.i.ph = phi ptr [ %.2.lcssa.i83.i917, %iter.check7919 ], [ %i.ifh, %vec.epilog.iter.check7920 ], [ %i.igy, %vec.epilog.middle.block7932 ] ; 3 uses
  %.333153.i.i.ph = phi ptr [ %.232.lcssa.i.i916, %iter.check7919 ], [ %i.ifi, %vec.epilog.iter.check7920 ], [ %i.igz, %vec.epilog.middle.block7932 ] ; 3 uses
  %.337152.i.i.ph = phi i32 [ %.236.lcssa.i82.i915, %iter.check7919 ], [ %i.ifk, %vec.epilog.iter.check7920 ], [ %i.ihb, %vec.epilog.middle.block7932 ] ; 4 uses
  %i.iic = sub i32 %i.gff, %.337152.i.i.ph
  %.neg11065 = add i32 %.337152.i.i.ph, 1
  %xtraiter10604 = and i32 %i.iic, 1
  %lcmp.mod10605.not = icmp eq i32 %xtraiter10604, 0
  br i1 %lcmp.mod10605.not, label %.lr.ph155.i.i.prol.loopexit, label %.lr.ph155.i.i.prol

.lr.ph155.i.i.prol:                               ; preds = %.lr.ph155.i.i.preheader
  %i.iid = getelementptr inbounds nuw i8, ptr %.3154.i.i.ph, i64 2
  %i.iie = load i16, ptr %.3154.i.i.ph, align 2, !tbaa !558
  %i.iif = zext i16 %i.iie to i32
  %i.iig = shl nuw i32 %i.iif, 16
  %i.iih = bitcast i32 %i.iig to float
  %i.iii = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.iih, float %i.hzs)
  %i.iij = bitcast float %i.iii to i32
  %i.iik = lshr i32 %i.iij, 16
  %i.iil = trunc nuw i32 %i.iik to i16
  %i.iim = getelementptr inbounds nuw i8, ptr %.333153.i.i.ph, i64 2
  store i16 %i.iil, ptr %.333153.i.i.ph, align 2, !tbaa !558
  %i.iin = add nuw nsw i32 %.337152.i.i.ph, 1
  br label %.lr.ph155.i.i.prol.loopexit

.lr.ph155.i.i.prol.loopexit:                      ; preds = %.lr.ph155.i.i.prol, %.lr.ph155.i.i.preheader
  %.3154.i.i.unr = phi ptr [ %.3154.i.i.ph, %.lr.ph155.i.i.preheader ], [ %i.iid, %.lr.ph155.i.i.prol ]
  %.333153.i.i.unr = phi ptr [ %.333153.i.i.ph, %.lr.ph155.i.i.preheader ], [ %i.iim, %.lr.ph155.i.i.prol ]
  %.337152.i.i.unr = phi i32 [ %.337152.i.i.ph, %.lr.ph155.i.i.preheader ], [ %i.iin, %.lr.ph155.i.i.prol ]
  %i.iio = icmp eq i32 %i.gff, %.neg11065
  br i1 %i.iio, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph155.i.i

.lr.ph148.i.i:                                    ; preds = %._crit_edge140.i.i, %.lr.ph148.i.i
  %.2146.i.i = phi ptr [ %i.ilc, %.lr.ph148.i.i ], [ %.1.lcssa.i80.i913, %._crit_edge140.i.i ] ; 2 uses
  %.232145.i.i = phi ptr [ %i.ild, %.lr.ph148.i.i ], [ %.131.lcssa.i.i912, %._crit_edge140.i.i ] ; 2 uses
  %.236144.i.i = phi i32 [ %i.ile, %.lr.ph148.i.i ], [ %.135.lcssa.i79.i911, %._crit_edge140.i.i ]
  %i.iip = load i64, ptr %.2146.i.i, align 1, !tbaa !555
  %i.iiq = insertelement <2 x i64> poison, i64 %i.iip, i64 0
  %i.iir = bitcast <2 x i64> %i.iiq to <8 x i16>
  %i.iis = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.iir, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.iit = bitcast <8 x i16> %i.iis to <4 x float>
  %i.iiu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.iit, <4 x float> splat (float f0x00800000))
  %i.iiv = bitcast <4 x float> %i.iiu to <4 x i32> ; 2 uses
  %i.iiw = lshr <4 x i32> %i.iiv, splat (i32 23)
  %i.iix = and <4 x i32> %i.iiv, splat (i32 -2139095041)
  %i.iiy = or disjoint <4 x i32> %i.iix, splat (i32 1056964608)
  %i.iiz = bitcast <4 x i32> %i.iiy to <4 x float> ; 3 uses
  %i.ija = add nsw <4 x i32> %i.iiw, splat (i32 -127)
  %i.ijb = sitofp fast <4 x i32> %i.ija to <4 x float> ; 2 uses
  %i.ijc = fadd fast <4 x float> %i.ijb, splat (float 1.000000e+00)
  %i.ijd = fcmp fast olt <4 x float> %i.iiz, splat (float f0x3F3504F3) ; 2 uses
  %i.ije = select <4 x i1> %i.ijd, <4 x float> %i.iiz, <4 x float> zeroinitializer
  %i.ijf = fadd fast <4 x float> %i.iiz, splat (float -1.000000e+00)
  %i.ijg = select fast <4 x i1> %i.ijd, <4 x float> %i.ijb, <4 x float> %i.ijc ; 2 uses
  %i.ijh = fadd fast <4 x float> %i.ijf, %i.ije   ; 12 uses
  %i.iji = fmul fast <4 x float> %i.ijh, %i.ijh   ; 2 uses
  %i.ijj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ijh, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.ijk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ijj, <4 x float> nofpclass(nan inf) %i.ijh, <4 x float> splat (float f0x3DEF251A))
  %i.ijl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ijk, <4 x float> nofpclass(nan inf) %i.ijh, <4 x float> splat (float f0xBDFE5D4F))
  %i.ijm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ijl, <4 x float> nofpclass(nan inf) %i.ijh, <4 x float> splat (float f0x3E11E9BF))
  %i.ijn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ijm, <4 x float> nofpclass(nan inf) %i.ijh, <4 x float> splat (float f0xBE2AAE50))
  %i.ijo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ijn, <4 x float> nofpclass(nan inf) %i.ijh, <4 x float> splat (float f0x3E4CCEAC))
  %i.ijp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ijo, <4 x float> nofpclass(nan inf) %i.ijh, <4 x float> splat (float f0xBE7FFFFC))
  %i.ijq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ijp, <4 x float> nofpclass(nan inf) %i.ijh, <4 x float> splat (float f0x3EAAAAAA))
  %i.ijr = fmul fast <4 x float> %i.iji, %i.ijh
  %i.ijs = fmul fast <4 x float> %i.ijr, %i.ijq
  %i.ijt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ijg, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ijs)
  %i.iju = fneg fast <4 x float> %i.iji
  %i.ijv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.iju, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.ijt)
  %i.ijw = fadd fast <4 x float> %i.ijv, %i.ijh
  %i.ijx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ijg, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ijw)
  %i.ijy = fmul fast <4 x float> %i.ijx, %i.iew
  %i.ijz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ijy, <4 x float> splat (float f0x42B0C0A5))
  %i.ika = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ijz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ikb = fmul fast <4 x float> %i.ika, splat (float f0x3FB8AA3B)
  %i.ikc = fadd fast <4 x float> %i.ikb, splat (float 5.000000e-01) ; 2 uses
  %i.ikd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ikc)
  %i.ike = sitofp fast <4 x i32> %i.ikd to <4 x float> ; 2 uses
  %i.ikf = fcmp fast olt <4 x float> %i.ikc, %i.ike
  %i.ikg = select <4 x i1> %i.ikf, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ikh = fsub fast <4 x float> %i.ike, %i.ikg   ; 2 uses
  %i.iki = fneg fast <4 x float> %i.ikh           ; 2 uses
  %i.ikj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.iki, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ika)
  %i.ikk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.iki, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ikj) ; 8 uses
  %i.ikl = fmul fast <4 x float> %i.ikk, %i.ikk
  %i.ikm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ikk, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.ikn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ikm, <4 x float> nofpclass(nan inf) %i.ikk, <4 x float> splat (float f0x3C088908))
  %i.iko = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ikn, <4 x float> nofpclass(nan inf) %i.ikk, <4 x float> splat (float f0x3D2AA9C1))
  %i.ikp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iko, <4 x float> nofpclass(nan inf) %i.ikk, <4 x float> splat (float f0x3E2AAAAA))
  %i.ikq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ikp, <4 x float> nofpclass(nan inf) %i.ikk, <4 x float> splat (float 5.000000e-01))
  %i.ikr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ikq, <4 x float> nofpclass(nan inf) %i.ikl, <4 x float> nofpclass(nan inf) %i.ikk)
  %i.iks = fadd fast <4 x float> %i.ikr, splat (float 1.000000e+00)
  %i.ikt = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ikh)
  %i.iku = shl <4 x i32> %i.ikt, splat (i32 23)
  %i.ikv = add <4 x i32> %i.iku, splat (i32 1065353216)
  %i.ikw = bitcast <4 x i32> %i.ikv to <4 x float>
  %i.ikx = fmul fast <4 x float> %i.iks, %i.ikw
  %i.iky = shufflevector <4 x float> %i.ikx, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ikz = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.iky)
  %i.ila = bitcast <8 x bfloat> %i.ikz to <2 x i64>
  %i.ilb = extractelement <2 x i64> %i.ila, i64 0
  store i64 %i.ilb, ptr %.232145.i.i, align 1, !tbaa !555
  %i.ilc = getelementptr inbounds nuw i8, ptr %.2146.i.i, i64 8 ; 2 uses
  %i.ild = getelementptr inbounds nuw i8, ptr %.232145.i.i, i64 8 ; 2 uses
  %i.ile = add nuw nsw i32 %.236144.i.i, 4        ; 3 uses
  %i.ilf = or disjoint i32 %i.ile, 3
  %i.ilg = icmp slt i32 %i.ilf, %i.gff
  br i1 %i.ilg, label %.lr.ph148.i.i, label %.preheader.i81.i914, !llvm.loop !214

.lr.ph155.i.i:                                    ; preds = %.lr.ph155.i.i.prol.loopexit, %.lr.ph155.i.i
  %.3154.i.i = phi ptr [ %i.ilr, %.lr.ph155.i.i ], [ %.3154.i.i.unr, %.lr.ph155.i.i.prol.loopexit ] ; 3 uses
  %.333153.i.i = phi ptr [ %i.ima, %.lr.ph155.i.i ], [ %.333153.i.i.unr, %.lr.ph155.i.i.prol.loopexit ] ; 3 uses
  %.337152.i.i = phi i32 [ %i.imb, %.lr.ph155.i.i ], [ %.337152.i.i.unr, %.lr.ph155.i.i.prol.loopexit ]
  %i.ilh = getelementptr inbounds nuw i8, ptr %.3154.i.i, i64 2
  %i.ili = load i16, ptr %.3154.i.i, align 2, !tbaa !558
  %i.ilj = zext i16 %i.ili to i32
  %i.ilk = shl nuw i32 %i.ilj, 16
  %i.ill = bitcast i32 %i.ilk to float
  %i.ilm = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ill, float %i.hzs)
  %i.iln = bitcast float %i.ilm to i32
  %i.ilo = lshr i32 %i.iln, 16
  %i.ilp = trunc nuw i32 %i.ilo to i16
  %i.ilq = getelementptr inbounds nuw i8, ptr %.333153.i.i, i64 2
  store i16 %i.ilp, ptr %.333153.i.i, align 2, !tbaa !558
  %i.ilr = getelementptr inbounds nuw i8, ptr %.3154.i.i, i64 4
  %i.ils = load i16, ptr %i.ilh, align 2, !tbaa !558
  %i.ilt = zext i16 %i.ils to i32
  %i.ilu = shl nuw i32 %i.ilt, 16
  %i.ilv = bitcast i32 %i.ilu to float
  %i.ilw = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.ilv, float %i.hzs)
  %i.ilx = bitcast float %i.ilw to i32
  %i.ily = lshr i32 %i.ilx, 16
  %i.ilz = trunc nuw i32 %i.ily to i16
  %i.ima = getelementptr inbounds nuw i8, ptr %.333153.i.i, i64 4
  store i16 %i.ilz, ptr %i.ilq, align 2, !tbaa !558
  %i.imb = add nuw nsw i32 %.337152.i.i, 2        ; 2 uses
  %exitcond.not.i84.i918.1 = icmp eq i32 %i.imb, %i.gff
  br i1 %exitcond.not.i84.i918.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph155.i.i, !llvm.loop !215

bb.gg:                                            ; preds = %bb.ge
  %i.imc = icmp eq i32 %3, 1
  br i1 %i.imc, label %bb.gh, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.gh:                                            ; preds = %bb.gg
  switch i32 %.sroa.speculated.i903, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 16, label %.lr.ph173.i.i
    i32 8, label %.lr.ph169.i.i
    i32 4, label %.lr.ph.i86.i904
  ]

.lr.ph173.i.i:                                    ; preds = %bb.gh
  %i.imd = load <16 x bfloat>, ptr %0, align 1, !tbaa !555
  %i.ime = fpext fast <16 x bfloat> %i.imd to <16 x float>
  %i.imf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ime, <16 x float> splat (float f0x00800000), i32 4)
  %i.img = bitcast <16 x float> %i.imf to <16 x i32> ; 2 uses
  %i.imh = lshr <16 x i32> %i.img, splat (i32 23)
  %i.imi = and <16 x i32> %i.img, splat (i32 -2139095041)
  %i.imj = or disjoint <16 x i32> %i.imi, splat (i32 1056964608)
  %i.imk = bitcast <16 x i32> %i.imj to <16 x float> ; 3 uses
  %i.iml = add nsw <16 x i32> %i.imh, splat (i32 -127)
  %i.imm = sitofp fast <16 x i32> %i.iml to <16 x float> ; 2 uses
  %i.imn = fadd fast <16 x float> %i.imm, splat (float 1.000000e+00)
  %i.imo = fcmp fast olt <16 x float> %i.imk, splat (float f0x3F3504F3) ; 2 uses
  %i.imp = fadd fast <16 x float> %i.imk, splat (float -1.000000e+00)
  %i.imq = select fast <16 x i1> %i.imo, <16 x float> %i.imm, <16 x float> %i.imn ; 2 uses
  %i.imr = select fast <16 x i1> %i.imo, <16 x float> %i.imk, <16 x float> zeroinitializer
  %i.ims = fadd fast <16 x float> %i.imp, %i.imr  ; 12 uses
  %i.imt = fmul fast <16 x float> %i.ims, %i.ims  ; 2 uses
  %i.imu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ims, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.imv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.imu, <16 x float> nofpclass(nan inf) %i.ims, <16 x float> splat (float f0x3DEF251A))
  %i.imw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.imv, <16 x float> nofpclass(nan inf) %i.ims, <16 x float> splat (float f0xBDFE5D4F))
  %i.imx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.imw, <16 x float> nofpclass(nan inf) %i.ims, <16 x float> splat (float f0x3E11E9BF))
  %i.imy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.imx, <16 x float> nofpclass(nan inf) %i.ims, <16 x float> splat (float f0xBE2AAE50))
  %i.imz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.imy, <16 x float> nofpclass(nan inf) %i.ims, <16 x float> splat (float f0x3E4CCEAC))
  %i.ina = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.imz, <16 x float> nofpclass(nan inf) %i.ims, <16 x float> splat (float f0xBE7FFFFC))
  %i.inb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ina, <16 x float> nofpclass(nan inf) %i.ims, <16 x float> splat (float f0x3EAAAAAA))
  %i.inc = fmul fast <16 x float> %i.imt, %i.ims
  %i.ind = fmul fast <16 x float> %i.inc, %i.inb
  %i.ine = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.imq, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ind)
  %i.inf = fneg fast <16 x float> %i.imt
  %i.ing = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.inf, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.ine)
  %i.inh = fadd fast <16 x float> %i.ing, %i.ims
end_hunk_2
begin_hunk_3_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  %i.ltl = and <8 x i32> %i.ltj, splat (i32 -2139095041)
  %i.ltm = or disjoint <8 x i32> %i.ltl, splat (i32 1056964608)
  %i.ltn = bitcast <8 x i32> %i.ltm to <8 x float> ; 3 uses
  %i.lto = add nsw <8 x i32> %i.ltk, splat (i32 -127)
  %i.ltp = sitofp fast <8 x i32> %i.lto to <8 x float> ; 2 uses
  %i.ltq = fadd fast <8 x float> %i.ltp, splat (float 1.000000e+00)
  %i.ltr = fcmp fast olt <8 x float> %i.ltn, splat (float f0x3F3504F3) ; 2 uses
  %i.lts = select <8 x i1> %i.ltr, <8 x float> %i.ltn, <8 x float> zeroinitializer
  %i.ltt = fadd fast <8 x float> %i.ltn, splat (float -1.000000e+00)
  %i.ltu = select fast <8 x i1> %i.ltr, <8 x float> %i.ltp, <8 x float> %i.ltq ; 2 uses
  %i.ltv = fadd fast <8 x float> %i.ltt, %i.lts   ; 12 uses
  %i.ltw = fmul fast <8 x float> %i.ltv, %i.ltv   ; 2 uses
  %i.ltx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ltv, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.lty = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ltx, <8 x float> nofpclass(nan inf) %i.ltv, <8 x float> splat (float f0x3DEF251A))
  %i.ltz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lty, <8 x float> nofpclass(nan inf) %i.ltv, <8 x float> splat (float f0xBDFE5D4F))
  %i.lua = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ltz, <8 x float> nofpclass(nan inf) %i.ltv, <8 x float> splat (float f0x3E11E9BF))
  %i.lub = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lua, <8 x float> nofpclass(nan inf) %i.ltv, <8 x float> splat (float f0xBE2AAE50))
  %i.luc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lub, <8 x float> nofpclass(nan inf) %i.ltv, <8 x float> splat (float f0x3E4CCEAC))
  %i.lud = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.luc, <8 x float> nofpclass(nan inf) %i.ltv, <8 x float> splat (float f0xBE7FFFFC))
  %i.lue = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lud, <8 x float> nofpclass(nan inf) %i.ltv, <8 x float> splat (float f0x3EAAAAAA))
  %i.luf = fmul fast <8 x float> %i.ltw, %i.ltv
  %i.lug = fmul fast <8 x float> %i.luf, %i.lue
  %i.luh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ltu, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.lug)
  %i.lui = fneg fast <8 x float> %i.ltw
  %i.luj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.lui, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.luh)
  %i.luk = fadd fast <8 x float> %i.luj, %i.ltv
  %i.lul = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ltu, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.luk)
  br label %bb.iv

bb.iu:                                            ; preds = %bb.iu, %.lr.ph.i41.i1426
  %.0183.i.i1427 = phi ptr [ %0, %.lr.ph.i41.i1426 ], [ %i.lvn, %bb.iu ] ; 2 uses
  %.035182.i.i1428 = phi ptr [ %2, %.lr.ph.i41.i1426 ], [ %i.lvo, %bb.iu ] ; 2 uses
  %.039181.i.i1429 = phi i32 [ 0, %.lr.ph.i41.i1426 ], [ %i.lvp, %bb.iu ]
  %i.lum = load <16 x bfloat>, ptr %.0183.i.i1427, align 1, !tbaa !555
  %i.lun = fpext fast <16 x bfloat> %i.lum to <16 x float>
  %i.luo = fmul fast <16 x float> %i.lte, %i.lun
  %i.lup = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.luo, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.luq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.lup, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.lur = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.luq, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.lus = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.lur, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.lut = fcmp fast ogt <16 x float> %i.lus, %i.lur
  %i.luu = fadd fast <16 x float> %i.lus, splat (float -1.000000e+00)
  %i.luv = select fast <16 x i1> %i.lut, <16 x float> %i.luu, <16 x float> %i.lus ; 2 uses
  %i.luw = fneg fast <16 x float> %i.luv          ; 2 uses
  %i.lux = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.luw, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.luq)
  %i.luy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.luw, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.lux) ; 8 uses
  %i.luz = fmul fast <16 x float> %i.luy, %i.luy
  %i.lva = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.luy, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.lvb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lva, <16 x float> nofpclass(nan inf) %i.luy, <16 x float> splat (float f0x3C088908))
  %i.lvc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lvb, <16 x float> nofpclass(nan inf) %i.luy, <16 x float> splat (float f0x3D2AA9C1))
  %i.lvd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lvc, <16 x float> nofpclass(nan inf) %i.luy, <16 x float> splat (float f0x3E2AAAAA))
  %i.lve = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lvd, <16 x float> nofpclass(nan inf) %i.luy, <16 x float> splat (float 5.000000e-01))
  %i.lvf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lve, <16 x float> nofpclass(nan inf) %i.luz, <16 x float> nofpclass(nan inf) %i.luy)
  %i.lvg = fadd fast <16 x float> %i.lvf, splat (float 1.000000e+00)
  %i.lvh = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.luv, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.lvi = shl <16 x i32> %i.lvh, splat (i32 23)
  %i.lvj = add <16 x i32> %i.lvi, splat (i32 1065353216)
  %i.lvk = bitcast <16 x i32> %i.lvj to <16 x float>
  %i.lvl = fmul fast <16 x float> %i.lvg, %i.lvk
  %i.lvm = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.lvl)
  store <16 x bfloat> %i.lvm, ptr %.035182.i.i1428, align 1, !tbaa !555
  %i.lvn = getelementptr inbounds nuw i8, ptr %.0183.i.i1427, i64 32 ; 2 uses
  %i.lvo = getelementptr inbounds nuw i8, ptr %.035182.i.i1428, i64 32 ; 2 uses
  %i.lvp = add nuw nsw i32 %.039181.i.i1429, 16   ; 2 uses
  %i.lvq = or disjoint i32 %i.lvp, 15
  %i.lvr = icmp slt i32 %i.lvq, %i.lfd
  br i1 %i.lvr, label %bb.iu, label %.preheader180.loopexit.i.i1430, !llvm.loop !285

.preheader179.i.i1405:                            ; preds = %bb.iv, %.preheader180.i.i1401
  %.140.lcssa.i.i1406 = phi i32 [ %.039.lcssa.i.i1402, %.preheader180.i.i1401 ], [ %i.lyb, %bb.iv ] ; 3 uses
  %.136.lcssa.i.i1407 = phi ptr [ %.035.lcssa.i.i1403, %.preheader180.i.i1401 ], [ %i.lya, %bb.iv ] ; 2 uses
  %.1.lcssa.i35.i1408 = phi ptr [ %.0.lcssa.i34.i1404, %.preheader180.i.i1401 ], [ %i.lxz, %bb.iv ] ; 2 uses
  %i.lvs = or disjoint i32 %.140.lcssa.i.i1406, 3
  %i.lvt = icmp slt i32 %i.lvs, %i.lfd
  br i1 %i.lvt, label %.lr.ph196.i.i1418, label %.preheader.i36.i1409

.lr.ph196.i.i1418:                                ; preds = %.preheader179.i.i1405
  %i.lvu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.lry, <4 x float> splat (float f0x00800000))
  %i.lvv = bitcast <4 x float> %i.lvu to <4 x i32> ; 2 uses
  %i.lvw = lshr <4 x i32> %i.lvv, splat (i32 23)
  %i.lvx = and <4 x i32> %i.lvv, splat (i32 -2139095041)
  %i.lvy = or disjoint <4 x i32> %i.lvx, splat (i32 1056964608)
  %i.lvz = bitcast <4 x i32> %i.lvy to <4 x float> ; 3 uses
  %i.lwa = add nsw <4 x i32> %i.lvw, splat (i32 -127)
  %i.lwb = sitofp fast <4 x i32> %i.lwa to <4 x float> ; 2 uses
  %i.lwc = fadd fast <4 x float> %i.lwb, splat (float 1.000000e+00)
  %i.lwd = fcmp fast olt <4 x float> %i.lvz, splat (float f0x3F3504F3) ; 2 uses
  %i.lwe = select <4 x i1> %i.lwd, <4 x float> %i.lvz, <4 x float> zeroinitializer
  %i.lwf = fadd fast <4 x float> %i.lvz, splat (float -1.000000e+00)
  %i.lwg = select fast <4 x i1> %i.lwd, <4 x float> %i.lwb, <4 x float> %i.lwc ; 2 uses
  %i.lwh = fadd fast <4 x float> %i.lwf, %i.lwe   ; 12 uses
  %i.lwi = fmul fast <4 x float> %i.lwh, %i.lwh   ; 2 uses
  %i.lwj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lwh, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.lwk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lwj, <4 x float> nofpclass(nan inf) %i.lwh, <4 x float> splat (float f0x3DEF251A))
  %i.lwl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lwk, <4 x float> nofpclass(nan inf) %i.lwh, <4 x float> splat (float f0xBDFE5D4F))
  %i.lwm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lwl, <4 x float> nofpclass(nan inf) %i.lwh, <4 x float> splat (float f0x3E11E9BF))
  %i.lwn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lwm, <4 x float> nofpclass(nan inf) %i.lwh, <4 x float> splat (float f0xBE2AAE50))
  %i.lwo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lwn, <4 x float> nofpclass(nan inf) %i.lwh, <4 x float> splat (float f0x3E4CCEAC))
  %i.lwp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lwo, <4 x float> nofpclass(nan inf) %i.lwh, <4 x float> splat (float f0xBE7FFFFC))
  %i.lwq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lwp, <4 x float> nofpclass(nan inf) %i.lwh, <4 x float> splat (float f0x3EAAAAAA))
  %i.lwr = fmul fast <4 x float> %i.lwi, %i.lwh
  %i.lws = fmul fast <4 x float> %i.lwr, %i.lwq
  %i.lwt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lwg, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.lws)
  %i.lwu = fneg fast <4 x float> %i.lwi
  %i.lwv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.lwu, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.lwt)
  %i.lww = fadd fast <4 x float> %i.lwv, %i.lwh
  %i.lwx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lwg, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.lww)
  br label %bb.iw

bb.iv:                                            ; preds = %bb.iv, %.lr.ph189.i39.i1422
  %.1188.i40.i1423 = phi ptr [ %.0.lcssa.i34.i1404, %.lr.ph189.i39.i1422 ], [ %i.lxz, %bb.iv ] ; 2 uses
  %.136187.i.i1424 = phi ptr [ %.035.lcssa.i.i1403, %.lr.ph189.i39.i1422 ], [ %i.lya, %bb.iv ] ; 2 uses
  %.140186.i.i1425 = phi i32 [ %.039.lcssa.i.i1402, %.lr.ph189.i39.i1422 ], [ %i.lyb, %bb.iv ]
  %i.lwy = load <8 x bfloat>, ptr %.1188.i40.i1423, align 1, !tbaa !555
  %i.lwz = fpext fast <8 x bfloat> %i.lwy to <8 x float>
  %i.lxa = fmul fast <8 x float> %i.lul, %i.lwz
  %i.lxb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.lxa, <8 x float> splat (float f0x42B0C0A5))
  %i.lxc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.lxb, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.lxd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lxc, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.lxe = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.lxd, i32 1) ; 2 uses
  %i.lxf = fcmp fast ogt <8 x float> %i.lxe, %i.lxd
  %i.lxg = select <8 x i1> %i.lxf, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.lxh = fsub fast <8 x float> %i.lxe, %i.lxg   ; 2 uses
  %i.lxi = fneg fast <8 x float> %i.lxh           ; 2 uses
  %i.lxj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.lxi, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.lxc)
  %i.lxk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.lxi, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.lxj) ; 8 uses
  %i.lxl = fmul fast <8 x float> %i.lxk, %i.lxk
  %i.lxm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lxk, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.lxn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lxm, <8 x float> nofpclass(nan inf) %i.lxk, <8 x float> splat (float f0x3C088908))
  %i.lxo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lxn, <8 x float> nofpclass(nan inf) %i.lxk, <8 x float> splat (float f0x3D2AA9C1))
  %i.lxp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lxo, <8 x float> nofpclass(nan inf) %i.lxk, <8 x float> splat (float f0x3E2AAAAA))
  %i.lxq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lxp, <8 x float> nofpclass(nan inf) %i.lxk, <8 x float> splat (float 5.000000e-01))
  %i.lxr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lxq, <8 x float> nofpclass(nan inf) %i.lxl, <8 x float> nofpclass(nan inf) %i.lxk)
  %i.lxs = fadd fast <8 x float> %i.lxr, splat (float 1.000000e+00)
  %i.lxt = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lxh)
  %i.lxu = shl <8 x i32> %i.lxt, splat (i32 23)
  %i.lxv = add <8 x i32> %i.lxu, splat (i32 1065353216)
  %i.lxw = bitcast <8 x i32> %i.lxv to <8 x float>
  %i.lxx = fmul fast <8 x float> %i.lxs, %i.lxw
  %i.lxy = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.lxx)
  store <8 x bfloat> %i.lxy, ptr %.136187.i.i1424, align 1, !tbaa !555
  %i.lxz = getelementptr inbounds nuw i8, ptr %.1188.i40.i1423, i64 16 ; 2 uses
  %i.lya = getelementptr inbounds nuw i8, ptr %.136187.i.i1424, i64 16 ; 2 uses
  %i.lyb = add nuw nsw i32 %.140186.i.i1425, 8    ; 3 uses
  %i.lyc = or disjoint i32 %i.lyb, 7
  %i.lyd = icmp slt i32 %i.lyc, %i.lfd
  br i1 %i.lyd, label %bb.iv, label %.preheader179.i.i1405, !llvm.loop !286

.preheader.i36.i1409:                             ; preds = %bb.iw, %.preheader179.i.i1405
  %.241.lcssa.i.i1410 = phi i32 [ %.140.lcssa.i.i1406, %.preheader179.i.i1405 ], [ %i.mdf, %bb.iw ] ; 5 uses
  %.237.lcssa.i.i1411 = phi ptr [ %.136.lcssa.i.i1407, %.preheader179.i.i1405 ], [ %i.mde, %bb.iw ] ; 6 uses
  %.2.lcssa.i37.i1412 = phi ptr [ %.1.lcssa.i35.i1408, %.preheader179.i.i1405 ], [ %i.mdd, %bb.iw ] ; 6 uses
  %i.lye = icmp slt i32 %.241.lcssa.i.i1410, %i.lfd
  br i1 %i.lye, label %iter.check7463, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7463:                                   ; preds = %.preheader.i36.i1409
  %.237.lcssa.i.i14117447 = ptrtoaddr ptr %.237.lcssa.i.i1411 to i64
  %.2.lcssa.i37.i14127446 = ptrtoaddr ptr %.2.lcssa.i37.i1412 to i64
  %i.lyf = xor i32 %.241.lcssa.i.i1410, -1
  %i.lyg = add i32 %i.lfd, %i.lyf                 ; 3 uses
  %i.lyh = zext i32 %i.lyg to i64
  %i.lyi = add nuw nsw i64 %i.lyh, 1              ; 5 uses
  %min.iters.check7448 = icmp ult i32 %i.lyg, 7
  %i.lyj = sub i64 %.2.lcssa.i37.i14127446, %.237.lcssa.i.i14117447
  %diff.check7450 = icmp ugt i64 %i.lyj, -64
  %or.cond9192 = select i1 %min.iters.check7448, i1 true, i1 %diff.check7450
  br i1 %or.cond9192, label %.lr.ph203.i.i1413.preheader, label %vector.main.loop.iter.check7451

vector.main.loop.iter.check7451:                  ; preds = %iter.check7463
  %min.iters.check7452 = icmp ult i32 %i.lyg, 31
  br i1 %min.iters.check7452, label %vec.epilog.ph7467, label %vector.ph7453

vector.ph7453:                                    ; preds = %vector.main.loop.iter.check7451
  %i.lyk = and i64 %i.lyi, 24
  %n.vec7454 = and i64 %i.lyi, 8589934560         ; 5 uses
  %i.lyl = shl nuw nsw i64 %n.vec7454, 1          ; 2 uses
  %i.lym = getelementptr i8, ptr %.2.lcssa.i37.i1412, i64 %i.lyl
  %i.lyn = getelementptr i8, ptr %.237.lcssa.i.i1411, i64 %i.lyl
  %i.lyo = trunc i64 %n.vec7454 to i32
  %i.lyp = add i32 %.241.lcssa.i.i1410, %i.lyo
  %i.lyq = insertelement <16 x float> poison, float %i.lrd, i64 0
  %i.lyr = shufflevector <16 x float> %i.lyq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.lys = insertelement <8 x float> poison, float %i.lrd, i64 0
  %i.lyt = shufflevector <8 x float> %i.lys, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lyu = insertelement <4 x float> poison, float %i.lrd, i64 0
  %i.lyv = shufflevector <4 x float> %i.lyu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lyw = insertelement <2 x float> poison, float %i.lrd, i64 0
  %i.lyx = shufflevector <2 x float> %i.lyw, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7455

vector.body7455:                                  ; preds = %vector.ph7453, %vector.body7455
  %index7456 = phi i64 [ 0, %vector.ph7453 ], [ %index.next7460, %vector.body7455 ] ; 2 uses
  %i.lyy = shl i64 %index7456, 1                  ; 2 uses
  %next.gep7457 = getelementptr i8, ptr %.2.lcssa.i37.i1412, i64 %i.lyy
  %next.gep7458 = getelementptr i8, ptr %.237.lcssa.i.i1411, i64 %i.lyy
  %wide.load7459 = load <32 x i16>, ptr %next.gep7457, align 2, !tbaa !558
  %i.lyz = zext <32 x i16> %wide.load7459 to <32 x i32>
  %i.lza = shl nuw <32 x i32> %i.lyz, splat (i32 16)
  %i.lzb = bitcast <32 x i32> %i.lza to <32 x float> ; 6 uses
  %i.lzc = extractelement <32 x float> %i.lzb, i64 0
  %i.lzd = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.lrd, float %i.lzc)
  %i.lze = shufflevector <32 x float> %i.lzb, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.lzf = tail call fast <16 x float> @llvm.pow.v16f32(<16 x float> %i.lyr, <16 x float> %i.lze)
  %i.lzg = shufflevector <32 x float> %i.lzb, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.lzh = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.lyt, <8 x float> %i.lzg)
  %i.lzi = shufflevector <32 x float> %i.lzb, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.lzj = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.lyv, <4 x float> %i.lzi)
  %i.lzk = extractelement <32 x float> %i.lzb, i64 29
  %i.lzl = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.lrd, float %i.lzk)
  %i.lzm = shufflevector <32 x float> %i.lzb, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.lzn = tail call fast <2 x float> @llvm.pow.v2f32(<2 x float> %i.lyx, <2 x float> %i.lzm)
  %i.lzo = insertelement <32 x float> poison, float %i.lzd, i64 0
  %i.lzp = shufflevector <16 x float> %i.lzf, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lzq = shufflevector <32 x float> %i.lzo, <32 x float> %i.lzp, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lzr = shufflevector <8 x float> %i.lzh, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lzs = shufflevector <32 x float> %i.lzq, <32 x float> %i.lzr, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lzt = shufflevector <4 x float> %i.lzj, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lzu = shufflevector <32 x float> %i.lzs, <32 x float> %i.lzt, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.lzv = insertelement <32 x float> %i.lzu, float %i.lzl, i64 29
  %i.lzw = shufflevector <2 x float> %i.lzn, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lzx = shufflevector <32 x float> %i.lzv, <32 x float> %i.lzw, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.lzy = bitcast <32 x float> %i.lzx to <32 x i32>
  %i.lzz = lshr <32 x i32> %i.lzy, splat (i32 16)
  %i.maa = trunc nuw <32 x i32> %i.lzz to <32 x i16>
  store <32 x i16> %i.maa, ptr %next.gep7458, align 2, !tbaa !558
  %index.next7460 = add nuw i64 %index7456, 32    ; 2 uses
  %i.mab = icmp eq i64 %index.next7460, %n.vec7454
  br i1 %i.mab, label %middle.block7461, label %vector.body7455, !llvm.loop !287

middle.block7461:                                 ; preds = %vector.body7455
  %cmp.n7462 = icmp eq i64 %i.lyi, %n.vec7454
  br i1 %cmp.n7462, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7464

vec.epilog.iter.check7464:                        ; preds = %middle.block7461
  %min.epilog.iters.check7466 = icmp eq i64 %i.lyk, 0
  br i1 %min.epilog.iters.check7466, label %.lr.ph203.i.i1413.preheader, label %vec.epilog.ph7467, !prof !561

vec.epilog.ph7467:                                ; preds = %vector.main.loop.iter.check7451, %vec.epilog.iter.check7464
  %vec.epilog.resume.val7468 = phi i64 [ %n.vec7454, %vec.epilog.iter.check7464 ], [ 0, %vector.main.loop.iter.check7451 ]
  %n.vec7469 = and i64 %i.lyi, 8589934584         ; 4 uses
  %i.mac = shl nuw nsw i64 %n.vec7469, 1          ; 2 uses
  %i.mad = getelementptr i8, ptr %.2.lcssa.i37.i1412, i64 %i.mac
  %i.mae = getelementptr i8, ptr %.237.lcssa.i.i1411, i64 %i.mac
  %i.maf = trunc i64 %n.vec7469 to i32
  %i.mag = add i32 %.241.lcssa.i.i1410, %i.maf
  %i.mah = insertelement <4 x float> poison, float %i.lrd, i64 0
  %i.mai = shufflevector <4 x float> %i.mah, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7470

vec.epilog.vector.body7470:                       ; preds = %vec.epilog.vector.body7470, %vec.epilog.ph7467
  %index7471 = phi i64 [ %vec.epilog.resume.val7468, %vec.epilog.ph7467 ], [ %index.next7475, %vec.epilog.vector.body7470 ] ; 2 uses
  %i.maj = shl i64 %index7471, 1                  ; 2 uses
  %next.gep7472 = getelementptr i8, ptr %.2.lcssa.i37.i1412, i64 %i.maj
  %next.gep7473 = getelementptr i8, ptr %.237.lcssa.i.i1411, i64 %i.maj
  %wide.load7474 = load <8 x i16>, ptr %next.gep7472, align 2, !tbaa !558
  %i.mak = zext <8 x i16> %wide.load7474 to <8 x i32>
  %i.mal = shl nuw <8 x i32> %i.mak, splat (i32 16)
  %i.mam = bitcast <8 x i32> %i.mal to <8 x float> ; 5 uses
  %i.man = extractelement <8 x float> %i.mam, i64 0
  %i.mao = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.lrd, float %i.man)
  %i.map = extractelement <8 x float> %i.mam, i64 1
  %i.maq = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.lrd, float %i.map)
  %i.mar = extractelement <8 x float> %i.mam, i64 2
  %i.mas = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.lrd, float %i.mar)
  %i.mat = shufflevector <8 x float> %i.mam, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.mau = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.mai, <4 x float> %i.mat)
  %i.mav = extractelement <8 x float> %i.mam, i64 7
  %i.maw = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.lrd, float %i.mav)
  %i.max = insertelement <8 x float> poison, float %i.mao, i64 0
  %i.may = insertelement <8 x float> %i.max, float %i.maq, i64 1
  %i.maz = insertelement <8 x float> %i.may, float %i.mas, i64 2
  %i.mba = shufflevector <4 x float> %i.mau, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mbb = shufflevector <8 x float> %i.maz, <8 x float> %i.mba, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.mbc = insertelement <8 x float> %i.mbb, float %i.maw, i64 7
  %i.mbd = bitcast <8 x float> %i.mbc to <8 x i32>
  %i.mbe = lshr <8 x i32> %i.mbd, splat (i32 16)
  %i.mbf = trunc nuw <8 x i32> %i.mbe to <8 x i16>
  store <8 x i16> %i.mbf, ptr %next.gep7473, align 2, !tbaa !558
  %index.next7475 = add nuw i64 %index7471, 8     ; 2 uses
  %i.mbg = icmp eq i64 %index.next7475, %n.vec7469
  br i1 %i.mbg, label %vec.epilog.middle.block7476, label %vec.epilog.vector.body7470, !llvm.loop !288

vec.epilog.middle.block7476:                      ; preds = %vec.epilog.vector.body7470
  %cmp.n7477 = icmp eq i64 %i.lyi, %n.vec7469
  br i1 %cmp.n7477, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph203.i.i1413.preheader

.lr.ph203.i.i1413.preheader:                      ; preds = %iter.check7463, %vec.epilog.iter.check7464, %vec.epilog.middle.block7476
  %.3202.i.i1414.ph = phi ptr [ %.2.lcssa.i37.i1412, %iter.check7463 ], [ %i.lym, %vec.epilog.iter.check7464 ], [ %i.mad, %vec.epilog.middle.block7476 ] ; 3 uses
  %.338201.i.i1415.ph = phi ptr [ %.237.lcssa.i.i1411, %iter.check7463 ], [ %i.lyn, %vec.epilog.iter.check7464 ], [ %i.mae, %vec.epilog.middle.block7476 ] ; 3 uses
  %.342200.i.i1416.ph = phi i32 [ %.241.lcssa.i.i1410, %iter.check7463 ], [ %i.lyp, %vec.epilog.iter.check7464 ], [ %i.mag, %vec.epilog.middle.block7476 ] ; 4 uses
  %i.mbh = sub i32 %i.lfd, %.342200.i.i1416.ph
  %.neg11055 = add i32 %.342200.i.i1416.ph, 1
  %xtraiter10463 = and i32 %i.mbh, 1
  %lcmp.mod10464.not = icmp eq i32 %xtraiter10463, 0
  br i1 %lcmp.mod10464.not, label %.lr.ph203.i.i1413.prol.loopexit, label %.lr.ph203.i.i1413.prol

.lr.ph203.i.i1413.prol:                           ; preds = %.lr.ph203.i.i1413.preheader
  %i.mbi = getelementptr inbounds nuw i8, ptr %.3202.i.i1414.ph, i64 2
  %i.mbj = load i16, ptr %.3202.i.i1414.ph, align 2, !tbaa !558
  %i.mbk = zext i16 %i.mbj to i32
  %i.mbl = shl nuw i32 %i.mbk, 16
  %i.mbm = bitcast i32 %i.mbl to float
  %i.mbn = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.lrd, float %i.mbm)
  %i.mbo = bitcast float %i.mbn to i32
  %i.mbp = lshr i32 %i.mbo, 16
  %i.mbq = trunc nuw i32 %i.mbp to i16
  %i.mbr = getelementptr inbounds nuw i8, ptr %.338201.i.i1415.ph, i64 2
  store i16 %i.mbq, ptr %.338201.i.i1415.ph, align 2, !tbaa !558
  %i.mbs = add nuw nsw i32 %.342200.i.i1416.ph, 1
  br label %.lr.ph203.i.i1413.prol.loopexit

.lr.ph203.i.i1413.prol.loopexit:                  ; preds = %.lr.ph203.i.i1413.prol, %.lr.ph203.i.i1413.preheader
  %.3202.i.i1414.unr = phi ptr [ %.3202.i.i1414.ph, %.lr.ph203.i.i1413.preheader ], [ %i.mbi, %.lr.ph203.i.i1413.prol ]
  %.338201.i.i1415.unr = phi ptr [ %.338201.i.i1415.ph, %.lr.ph203.i.i1413.preheader ], [ %i.mbr, %.lr.ph203.i.i1413.prol ]
  %.342200.i.i1416.unr = phi i32 [ %.342200.i.i1416.ph, %.lr.ph203.i.i1413.preheader ], [ %i.mbs, %.lr.ph203.i.i1413.prol ]
  %i.mbt = icmp eq i32 %i.lfd, %.neg11055
  br i1 %i.mbt, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph203.i.i1413

bb.iw:                                            ; preds = %bb.iw, %.lr.ph196.i.i1418
  %.2195.i.i1419 = phi ptr [ %.1.lcssa.i35.i1408, %.lr.ph196.i.i1418 ], [ %i.mdd, %bb.iw ] ; 2 uses
  %.237194.i.i1420 = phi ptr [ %.136.lcssa.i.i1407, %.lr.ph196.i.i1418 ], [ %i.mde, %bb.iw ] ; 2 uses
  %.241193.i.i1421 = phi i32 [ %.140.lcssa.i.i1406, %.lr.ph196.i.i1418 ], [ %i.mdf, %bb.iw ]
  %i.mbu = load i64, ptr %.2195.i.i1419, align 1, !tbaa !555
  %i.mbv = insertelement <2 x i64> poison, i64 %i.mbu, i64 0
  %i.mbw = bitcast <2 x i64> %i.mbv to <8 x i16>
  %i.mbx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mbw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mby = bitcast <8 x i16> %i.mbx to <4 x float>
  %i.mbz = fmul fast <4 x float> %i.lwx, %i.mby
  %i.mca = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.mbz, <4 x float> splat (float f0x42B0C0A5))
  %i.mcb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mca, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.mcc = fmul fast <4 x float> %i.mcb, splat (float f0x3FB8AA3B)
  %i.mcd = fadd fast <4 x float> %i.mcc, splat (float 5.000000e-01) ; 2 uses
  %i.mce = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mcd)
  %i.mcf = sitofp fast <4 x i32> %i.mce to <4 x float> ; 2 uses
  %i.mcg = fcmp fast olt <4 x float> %i.mcd, %i.mcf
  %i.mch = select <4 x i1> %i.mcg, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.mci = fsub fast <4 x float> %i.mcf, %i.mch   ; 2 uses
  %i.mcj = fneg fast <4 x float> %i.mci           ; 2 uses
  %i.mck = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.mcj, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.mcb)
  %i.mcl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.mcj, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.mck) ; 8 uses
  %i.mcm = fmul fast <4 x float> %i.mcl, %i.mcl
  %i.mcn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mcl, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.mco = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mcn, <4 x float> nofpclass(nan inf) %i.mcl, <4 x float> splat (float f0x3C088908))
  %i.mcp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mco, <4 x float> nofpclass(nan inf) %i.mcl, <4 x float> splat (float f0x3D2AA9C1))
  %i.mcq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mcp, <4 x float> nofpclass(nan inf) %i.mcl, <4 x float> splat (float f0x3E2AAAAA))
  %i.mcr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mcq, <4 x float> nofpclass(nan inf) %i.mcl, <4 x float> splat (float 5.000000e-01))
  %i.mcs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mcr, <4 x float> nofpclass(nan inf) %i.mcm, <4 x float> nofpclass(nan inf) %i.mcl)
  %i.mct = fadd fast <4 x float> %i.mcs, splat (float 1.000000e+00)
  %i.mcu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mci)
  %i.mcv = shl <4 x i32> %i.mcu, splat (i32 23)
  %i.mcw = add <4 x i32> %i.mcv, splat (i32 1065353216)
  %i.mcx = bitcast <4 x i32> %i.mcw to <4 x float>
  %i.mcy = fmul fast <4 x float> %i.mct, %i.mcx
  %i.mcz = shufflevector <4 x float> %i.mcy, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.mda = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.mcz)
  %i.mdb = bitcast <8 x bfloat> %i.mda to <2 x i64>
  %i.mdc = extractelement <2 x i64> %i.mdb, i64 0
  store i64 %i.mdc, ptr %.237194.i.i1420, align 1, !tbaa !555
  %i.mdd = getelementptr inbounds nuw i8, ptr %.2195.i.i1419, i64 8 ; 2 uses
  %i.mde = getelementptr inbounds nuw i8, ptr %.237194.i.i1420, i64 8 ; 2 uses
  %i.mdf = add nuw nsw i32 %.241193.i.i1421, 4    ; 3 uses
  %i.mdg = or disjoint i32 %i.mdf, 3
  %i.mdh = icmp slt i32 %i.mdg, %i.lfd
  br i1 %i.mdh, label %bb.iw, label %.preheader.i36.i1409, !llvm.loop !289

.lr.ph203.i.i1413:                                ; preds = %.lr.ph203.i.i1413.prol.loopexit, %.lr.ph203.i.i1413
  %.3202.i.i1414 = phi ptr [ %i.mds, %.lr.ph203.i.i1413 ], [ %.3202.i.i1414.unr, %.lr.ph203.i.i1413.prol.loopexit ] ; 3 uses
  %.338201.i.i1415 = phi ptr [ %i.meb, %.lr.ph203.i.i1413 ], [ %.338201.i.i1415.unr, %.lr.ph203.i.i1413.prol.loopexit ] ; 3 uses
  %.342200.i.i1416 = phi i32 [ %i.mec, %.lr.ph203.i.i1413 ], [ %.342200.i.i1416.unr, %.lr.ph203.i.i1413.prol.loopexit ]
  %i.mdi = getelementptr inbounds nuw i8, ptr %.3202.i.i1414, i64 2
  %i.mdj = load i16, ptr %.3202.i.i1414, align 2, !tbaa !558
  %i.mdk = zext i16 %i.mdj to i32
  %i.mdl = shl nuw i32 %i.mdk, 16
  %i.mdm = bitcast i32 %i.mdl to float
  %i.mdn = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.lrd, float %i.mdm)
  %i.mdo = bitcast float %i.mdn to i32
  %i.mdp = lshr i32 %i.mdo, 16
  %i.mdq = trunc nuw i32 %i.mdp to i16
  %i.mdr = getelementptr inbounds nuw i8, ptr %.338201.i.i1415, i64 2
  store i16 %i.mdq, ptr %.338201.i.i1415, align 2, !tbaa !558
  %i.mds = getelementptr inbounds nuw i8, ptr %.3202.i.i1414, i64 4
  %i.mdt = load i16, ptr %i.mdi, align 2, !tbaa !558
  %i.mdu = zext i16 %i.mdt to i32
  %i.mdv = shl nuw i32 %i.mdu, 16
  %i.mdw = bitcast i32 %i.mdv to float
  %i.mdx = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.lrd, float %i.mdw)
  %i.mdy = bitcast float %i.mdx to i32
  %i.mdz = lshr i32 %i.mdy, 16
  %i.mea = trunc nuw i32 %i.mdz to i16
  %i.meb = getelementptr inbounds nuw i8, ptr %.338201.i.i1415, i64 4
  store i16 %i.mea, ptr %i.mdr, align 2, !tbaa !558
  %i.mec = add nuw nsw i32 %.342200.i.i1416, 2    ; 2 uses
  %exitcond.not.i38.i1417.1 = icmp eq i32 %i.mec, %i.lfd
  br i1 %exitcond.not.i38.i1417.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph203.i.i1413, !llvm.loop !290

bb.ix:                                            ; preds = %bb.in
  %i.med = icmp eq i32 %3, 1
  br i1 %i.med, label %bb.iy, label %bb.je

bb.iy:                                            ; preds = %bb.ix
  %i.mee = load i16, ptr %0, align 2, !tbaa !558
  %i.mef = zext i16 %i.mee to i32
  %i.meg = shl nuw i32 %i.mef, 16
  %i.meh = bitcast i32 %i.meg to float            ; 15 uses
  %i.mei = icmp eq i32 %.sroa.speculated.i1301, 4
  br i1 %i.mei, label %.thread178.i73.i1400, label %bb.iz

.thread178.i73.i1400:                             ; preds = %bb.iy
  %i.mej = load i64, ptr %0, align 2, !tbaa !555
  %i.mek = insertelement <2 x i64> poison, i64 %i.mej, i64 0
  %i.mel = bitcast <2 x i64> %i.mek to <8 x i16>
  %i.mem = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mel, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.men = bitcast <8 x i16> %i.mem to <4 x float> ; 2 uses
  %i.meo = shufflevector <4 x float> %i.men, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.jc

bb.iz:                                            ; preds = %bb.iy
  %i.mep = insertelement <4 x float> poison, float %i.meh, i64 0 ; 2 uses
  %i.meq = shufflevector <4 x float> %i.mep, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.mer = icmp eq i32 %.sroa.speculated.i1301, 8
  br i1 %i.mer, label %.thread177.i72.i1399, label %bb.ja

.thread177.i72.i1399:                             ; preds = %bb.iz
  %i.mes = load <8 x bfloat>, ptr %0, align 2, !tbaa !555
  %i.met = fpext fast <8 x bfloat> %i.mes to <8 x float>
  br label %bb.jc

bb.ja:                                            ; preds = %bb.iz
  %i.meu = shufflevector <4 x float> %i.mep, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.mev = icmp eq i32 %.sroa.speculated.i1301, 16
  br i1 %i.mev, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  %i.mew = load <16 x bfloat>, ptr %0, align 2, !tbaa !555
  %i.mex = fpext fast <16 x bfloat> %i.mew to <16 x float>
  br label %bb.jd

bb.jc:                                            ; preds = %bb.ja, %.thread177.i72.i1399, %.thread178.i73.i1400
  %i.mey = phi <8 x float> [ %i.met, %.thread177.i72.i1399 ], [ %i.meu, %bb.ja ], [ %i.meo, %.thread178.i73.i1400 ] ; 2 uses
  %i.mez = phi <4 x float> [ %i.meq, %.thread177.i72.i1399 ], [ %i.meq, %bb.ja ], [ %i.men, %.thread178.i73.i1400 ]
  %i.mfa = shufflevector <8 x float> %i.mey, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.jb
  %i.mfb = phi <8 x float> [ %i.meu, %bb.jb ], [ %i.mey, %bb.jc ]
  %i.mfc = phi <4 x float> [ %i.meq, %bb.jb ], [ %i.mez, %bb.jc ]
  %i.mfd = phi fast <16 x float> [ %i.mex, %bb.jb ], [ %i.mfa, %bb.jc ]
  %i.mfe = icmp sgt i32 %i.lfd, 15
  br i1 %i.mfe, label %.lr.ph.i67.i1394, label %.preheader180.i42.i1369

.preheader180.loopexit.i71.i1398:                 ; preds = %.lr.ph.i67.i1394
  %i.mff = and i32 %i.lfd, 2147483632
  br label %.preheader180.i42.i1369

.preheader180.i42.i1369:                          ; preds = %.preheader180.loopexit.i71.i1398, %bb.jd
  %.039.lcssa.i43.i1370 = phi i32 [ 0, %bb.jd ], [ %i.mff, %.preheader180.loopexit.i71.i1398 ] ; 3 uses
  %.035.lcssa.i44.i1371 = phi ptr [ %2, %bb.jd ], [ %i.mho, %.preheader180.loopexit.i71.i1398 ] ; 2 uses
  %.0.lcssa.i45.i1372 = phi ptr [ %1, %bb.jd ], [ %i.mhn, %.preheader180.loopexit.i71.i1398 ] ; 2 uses
  %i.mfg = or disjoint i32 %.039.lcssa.i43.i1370, 7
  %i.mfh = icmp slt i32 %i.mfg, %i.lfd
  br i1 %i.mfh, label %.lr.ph189.i63.i1390, label %.preheader179.i46.i1373

.lr.ph.i67.i1394:                                 ; preds = %bb.jd, %.lr.ph.i67.i1394
  %.0183.i68.i1395 = phi ptr [ %i.mhn, %.lr.ph.i67.i1394 ], [ %1, %bb.jd ] ; 2 uses
  %.035182.i69.i1396 = phi ptr [ %i.mho, %.lr.ph.i67.i1394 ], [ %2, %bb.jd ] ; 2 uses
  %.039181.i70.i1397 = phi i32 [ %i.mhp, %.lr.ph.i67.i1394 ], [ 0, %bb.jd ]
  %i.mfi = load <16 x bfloat>, ptr %.0183.i68.i1395, align 1, !tbaa !555
  %i.mfj = fpext fast <16 x bfloat> %i.mfi to <16 x float>
  %i.mfk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.mfj, <16 x float> splat (float f0x00800000), i32 4)
  %i.mfl = bitcast <16 x float> %i.mfk to <16 x i32> ; 2 uses
  %i.mfm = lshr <16 x i32> %i.mfl, splat (i32 23)
  %i.mfn = and <16 x i32> %i.mfl, splat (i32 -2139095041)
  %i.mfo = or disjoint <16 x i32> %i.mfn, splat (i32 1056964608)
  %i.mfp = bitcast <16 x i32> %i.mfo to <16 x float> ; 3 uses
  %i.mfq = add nsw <16 x i32> %i.mfm, splat (i32 -127)
  %i.mfr = sitofp fast <16 x i32> %i.mfq to <16 x float> ; 2 uses
  %i.mfs = fadd fast <16 x float> %i.mfr, splat (float 1.000000e+00)
  %i.mft = fcmp fast olt <16 x float> %i.mfp, splat (float f0x3F3504F3) ; 2 uses
  %i.mfu = fadd fast <16 x float> %i.mfp, splat (float -1.000000e+00)
  %i.mfv = select fast <16 x i1> %i.mft, <16 x float> %i.mfr, <16 x float> %i.mfs ; 2 uses
  %i.mfw = select fast <16 x i1> %i.mft, <16 x float> %i.mfp, <16 x float> zeroinitializer
  %i.mfx = fadd fast <16 x float> %i.mfu, %i.mfw  ; 12 uses
  %i.mfy = fmul fast <16 x float> %i.mfx, %i.mfx  ; 2 uses
  %i.mfz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mfx, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.mga = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mfz, <16 x float> nofpclass(nan inf) %i.mfx, <16 x float> splat (float f0x3DEF251A))
  %i.mgb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mga, <16 x float> nofpclass(nan inf) %i.mfx, <16 x float> splat (float f0xBDFE5D4F))
  %i.mgc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mgb, <16 x float> nofpclass(nan inf) %i.mfx, <16 x float> splat (float f0x3E11E9BF))
  %i.mgd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mgc, <16 x float> nofpclass(nan inf) %i.mfx, <16 x float> splat (float f0xBE2AAE50))
  %i.mge = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mgd, <16 x float> nofpclass(nan inf) %i.mfx, <16 x float> splat (float f0x3E4CCEAC))
  %i.mgf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mge, <16 x float> nofpclass(nan inf) %i.mfx, <16 x float> splat (float f0xBE7FFFFC))
  %i.mgg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mgf, <16 x float> nofpclass(nan inf) %i.mfx, <16 x float> splat (float f0x3EAAAAAA))
  %i.mgh = fmul fast <16 x float> %i.mfy, %i.mfx
  %i.mgi = fmul fast <16 x float> %i.mgh, %i.mgg
  %i.mgj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mfv, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.mgi)
  %i.mgk = fneg fast <16 x float> %i.mfy
  %i.mgl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.mgk, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.mgj)
  %i.mgm = fadd fast <16 x float> %i.mgl, %i.mfx
  %i.mgn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mfv, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.mgm)
  %i.mgo = fmul fast <16 x float> %i.mgn, %i.mfd
  %i.mgp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.mgo, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.mgq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.mgp, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.mgr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mgq, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.mgs = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.mgr, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.mgt = fcmp fast ogt <16 x float> %i.mgs, %i.mgr
  %i.mgu = fadd fast <16 x float> %i.mgs, splat (float -1.000000e+00)
  %i.mgv = select fast <16 x i1> %i.mgt, <16 x float> %i.mgu, <16 x float> %i.mgs ; 2 uses
  %i.mgw = fneg fast <16 x float> %i.mgv          ; 2 uses
  %i.mgx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.mgw, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.mgq)
  %i.mgy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.mgw, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.mgx) ; 8 uses
  %i.mgz = fmul fast <16 x float> %i.mgy, %i.mgy
  %i.mha = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mgy, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.mhb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mha, <16 x float> nofpclass(nan inf) %i.mgy, <16 x float> splat (float f0x3C088908))
  %i.mhc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mhb, <16 x float> nofpclass(nan inf) %i.mgy, <16 x float> splat (float f0x3D2AA9C1))
  %i.mhd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mhc, <16 x float> nofpclass(nan inf) %i.mgy, <16 x float> splat (float f0x3E2AAAAA))
  %i.mhe = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mhd, <16 x float> nofpclass(nan inf) %i.mgy, <16 x float> splat (float 5.000000e-01))
  %i.mhf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mhe, <16 x float> nofpclass(nan inf) %i.mgz, <16 x float> nofpclass(nan inf) %i.mgy)
  %i.mhg = fadd fast <16 x float> %i.mhf, splat (float 1.000000e+00)
  %i.mhh = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.mgv, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.mhi = shl <16 x i32> %i.mhh, splat (i32 23)
  %i.mhj = add <16 x i32> %i.mhi, splat (i32 1065353216)
  %i.mhk = bitcast <16 x i32> %i.mhj to <16 x float>
  %i.mhl = fmul fast <16 x float> %i.mhg, %i.mhk
  %i.mhm = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.mhl)
  store <16 x bfloat> %i.mhm, ptr %.035182.i69.i1396, align 1, !tbaa !555
  %i.mhn = getelementptr inbounds nuw i8, ptr %.0183.i68.i1395, i64 32 ; 2 uses
  %i.mho = getelementptr inbounds nuw i8, ptr %.035182.i69.i1396, i64 32 ; 2 uses
  %i.mhp = add nuw nsw i32 %.039181.i70.i1397, 16 ; 2 uses
  %i.mhq = or disjoint i32 %i.mhp, 15
  %i.mhr = icmp slt i32 %i.mhq, %i.lfd
  br i1 %i.mhr, label %.lr.ph.i67.i1394, label %.preheader180.loopexit.i71.i1398, !llvm.loop !291

.preheader179.i46.i1373:                          ; preds = %.lr.ph189.i63.i1390, %.preheader180.i42.i1369
  %.140.lcssa.i47.i1374 = phi i32 [ %.039.lcssa.i43.i1370, %.preheader180.i42.i1369 ], [ %i.mkb, %.lr.ph189.i63.i1390 ] ; 3 uses
  %.136.lcssa.i48.i1375 = phi ptr [ %.035.lcssa.i44.i1371, %.preheader180.i42.i1369 ], [ %i.mka, %.lr.ph189.i63.i1390 ] ; 2 uses
  %.1.lcssa.i49.i1376 = phi ptr [ %.0.lcssa.i45.i1372, %.preheader180.i42.i1369 ], [ %i.mjz, %.lr.ph189.i63.i1390 ] ; 2 uses
  %i.mhs = or disjoint i32 %.140.lcssa.i47.i1374, 3
  %i.mht = icmp slt i32 %i.mhs, %i.lfd
  br i1 %i.mht, label %.lr.ph196.i59.i1386, label %.preheader.i50.i1377

.lr.ph189.i63.i1390:                              ; preds = %.preheader180.i42.i1369, %.lr.ph189.i63.i1390
  %.1188.i64.i1391 = phi ptr [ %i.mjz, %.lr.ph189.i63.i1390 ], [ %.0.lcssa.i45.i1372, %.preheader180.i42.i1369 ] ; 2 uses
  %.136187.i65.i1392 = phi ptr [ %i.mka, %.lr.ph189.i63.i1390 ], [ %.035.lcssa.i44.i1371, %.preheader180.i42.i1369 ] ; 2 uses
  %.140186.i66.i1393 = phi i32 [ %i.mkb, %.lr.ph189.i63.i1390 ], [ %.039.lcssa.i43.i1370, %.preheader180.i42.i1369 ]
  %i.mhu = load <8 x bfloat>, ptr %.1188.i64.i1391, align 1, !tbaa !555
  %i.mhv = fpext fast <8 x bfloat> %i.mhu to <8 x float>
  %i.mhw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.mhv, <8 x float> splat (float f0x00800000))
  %i.mhx = bitcast <8 x float> %i.mhw to <8 x i32> ; 2 uses
  %i.mhy = lshr <8 x i32> %i.mhx, splat (i32 23)
  %i.mhz = and <8 x i32> %i.mhx, splat (i32 -2139095041)
  %i.mia = or disjoint <8 x i32> %i.mhz, splat (i32 1056964608)
  %i.mib = bitcast <8 x i32> %i.mia to <8 x float> ; 3 uses
  %i.mic = add nsw <8 x i32> %i.mhy, splat (i32 -127)
  %i.mid = sitofp fast <8 x i32> %i.mic to <8 x float> ; 2 uses
  %i.mie = fadd fast <8 x float> %i.mid, splat (float 1.000000e+00)
  %i.mif = fcmp fast olt <8 x float> %i.mib, splat (float f0x3F3504F3) ; 2 uses
  %i.mig = select <8 x i1> %i.mif, <8 x float> %i.mib, <8 x float> zeroinitializer
  %i.mih = fadd fast <8 x float> %i.mib, splat (float -1.000000e+00)
  %i.mii = select fast <8 x i1> %i.mif, <8 x float> %i.mid, <8 x float> %i.mie ; 2 uses
  %i.mij = fadd fast <8 x float> %i.mih, %i.mig   ; 12 uses
  %i.mik = fmul fast <8 x float> %i.mij, %i.mij   ; 2 uses
  %i.mil = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mij, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.mim = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mil, <8 x float> nofpclass(nan inf) %i.mij, <8 x float> splat (float f0x3DEF251A))
  %i.min = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mim, <8 x float> nofpclass(nan inf) %i.mij, <8 x float> splat (float f0xBDFE5D4F))
  %i.mio = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.min, <8 x float> nofpclass(nan inf) %i.mij, <8 x float> splat (float f0x3E11E9BF))
  %i.mip = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mio, <8 x float> nofpclass(nan inf) %i.mij, <8 x float> splat (float f0xBE2AAE50))
  %i.miq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mip, <8 x float> nofpclass(nan inf) %i.mij, <8 x float> splat (float f0x3E4CCEAC))
  %i.mir = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.miq, <8 x float> nofpclass(nan inf) %i.mij, <8 x float> splat (float f0xBE7FFFFC))
  %i.mis = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mir, <8 x float> nofpclass(nan inf) %i.mij, <8 x float> splat (float f0x3EAAAAAA))
  %i.mit = fmul fast <8 x float> %i.mik, %i.mij
  %i.miu = fmul fast <8 x float> %i.mit, %i.mis
  %i.miv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mii, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.miu)
  %i.miw = fneg fast <8 x float> %i.mik
  %i.mix = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.miw, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.miv)
  %i.miy = fadd fast <8 x float> %i.mix, %i.mij
  %i.miz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mii, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.miy)
  %i.mja = fmul fast <8 x float> %i.miz, %i.mfb
  %i.mjb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.mja, <8 x float> splat (float f0x42B0C0A5))
  %i.mjc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.mjb, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.mjd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mjc, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.mje = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.mjd, i32 1) ; 2 uses
  %i.mjf = fcmp fast ogt <8 x float> %i.mje, %i.mjd
  %i.mjg = select <8 x i1> %i.mjf, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.mjh = fsub fast <8 x float> %i.mje, %i.mjg   ; 2 uses
  %i.mji = fneg fast <8 x float> %i.mjh           ; 2 uses
  %i.mjj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.mji, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.mjc)
  %i.mjk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.mji, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.mjj) ; 8 uses
  %i.mjl = fmul fast <8 x float> %i.mjk, %i.mjk
  %i.mjm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mjk, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.mjn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mjm, <8 x float> nofpclass(nan inf) %i.mjk, <8 x float> splat (float f0x3C088908))
  %i.mjo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mjn, <8 x float> nofpclass(nan inf) %i.mjk, <8 x float> splat (float f0x3D2AA9C1))
  %i.mjp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mjo, <8 x float> nofpclass(nan inf) %i.mjk, <8 x float> splat (float f0x3E2AAAAA))
  %i.mjq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mjp, <8 x float> nofpclass(nan inf) %i.mjk, <8 x float> splat (float 5.000000e-01))
  %i.mjr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.mjq, <8 x float> nofpclass(nan inf) %i.mjl, <8 x float> nofpclass(nan inf) %i.mjk)
  %i.mjs = fadd fast <8 x float> %i.mjr, splat (float 1.000000e+00)
  %i.mjt = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mjh)
  %i.mju = shl <8 x i32> %i.mjt, splat (i32 23)
  %i.mjv = add <8 x i32> %i.mju, splat (i32 1065353216)
  %i.mjw = bitcast <8 x i32> %i.mjv to <8 x float>
  %i.mjx = fmul fast <8 x float> %i.mjs, %i.mjw
  %i.mjy = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.mjx)
  store <8 x bfloat> %i.mjy, ptr %.136187.i65.i1392, align 1, !tbaa !555
  %i.mjz = getelementptr inbounds nuw i8, ptr %.1188.i64.i1391, i64 16 ; 2 uses
  %i.mka = getelementptr inbounds nuw i8, ptr %.136187.i65.i1392, i64 16 ; 2 uses
  %i.mkb = add nuw nsw i32 %.140186.i66.i1393, 8  ; 3 uses
  %i.mkc = or disjoint i32 %i.mkb, 7
  %i.mkd = icmp slt i32 %i.mkc, %i.lfd
  br i1 %i.mkd, label %.lr.ph189.i63.i1390, label %.preheader179.i46.i1373, !llvm.loop !292

.preheader.i50.i1377:                             ; preds = %.lr.ph196.i59.i1386, %.preheader179.i46.i1373
  %.241.lcssa.i51.i1378 = phi i32 [ %.140.lcssa.i47.i1374, %.preheader179.i46.i1373 ], [ %i.mqj, %.lr.ph196.i59.i1386 ] ; 5 uses
  %.237.lcssa.i52.i1379 = phi ptr [ %.136.lcssa.i48.i1375, %.preheader179.i46.i1373 ], [ %i.mqi, %.lr.ph196.i59.i1386 ] ; 6 uses
  %.2.lcssa.i53.i1380 = phi ptr [ %.1.lcssa.i49.i1376, %.preheader179.i46.i1373 ], [ %i.mqh, %.lr.ph196.i59.i1386 ] ; 6 uses
  %i.mke = icmp slt i32 %.241.lcssa.i51.i1378, %i.lfd
  br i1 %i.mke, label %iter.check7424, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7424:                                   ; preds = %.preheader.i50.i1377
  %.237.lcssa.i52.i13797408 = ptrtoaddr ptr %.237.lcssa.i52.i1379 to i64
  %.2.lcssa.i53.i13807407 = ptrtoaddr ptr %.2.lcssa.i53.i1380 to i64
  %i.mkf = xor i32 %.241.lcssa.i51.i1378, -1
  %i.mkg = add i32 %i.lfd, %i.mkf                 ; 3 uses
  %i.mkh = zext i32 %i.mkg to i64
  %i.mki = add nuw nsw i64 %i.mkh, 1              ; 5 uses
  %min.iters.check7409 = icmp ult i32 %i.mkg, 7
  %i.mkj = sub i64 %.2.lcssa.i53.i13807407, %.237.lcssa.i52.i13797408
  %diff.check7411 = icmp ugt i64 %i.mkj, -64
  %or.cond9193 = select i1 %min.iters.check7409, i1 true, i1 %diff.check7411
  br i1 %or.cond9193, label %.lr.ph203.i54.i1381.preheader, label %vector.main.loop.iter.check7412

vector.main.loop.iter.check7412:                  ; preds = %iter.check7424
  %min.iters.check7413 = icmp ult i32 %i.mkg, 31
  br i1 %min.iters.check7413, label %vec.epilog.ph7428, label %vector.ph7414

vector.ph7414:                                    ; preds = %vector.main.loop.iter.check7412
  %i.mkk = and i64 %i.mki, 24
  %n.vec7415 = and i64 %i.mki, 8589934560         ; 5 uses
  %i.mkl = shl nuw nsw i64 %n.vec7415, 1          ; 2 uses
  %i.mkm = getelementptr i8, ptr %.2.lcssa.i53.i1380, i64 %i.mkl
  %i.mkn = getelementptr i8, ptr %.237.lcssa.i52.i1379, i64 %i.mkl
  %i.mko = trunc i64 %n.vec7415 to i32
  %i.mkp = add i32 %.241.lcssa.i51.i1378, %i.mko
  %i.mkq = insertelement <16 x float> poison, float %i.meh, i64 0
  %i.mkr = shufflevector <16 x float> %i.mkq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.mks = insertelement <8 x float> poison, float %i.meh, i64 0
  %i.mkt = shufflevector <8 x float> %i.mks, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mku = insertelement <4 x float> poison, float %i.meh, i64 0
  %i.mkv = shufflevector <4 x float> %i.mku, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mkw = insertelement <2 x float> poison, float %i.meh, i64 0
  %i.mkx = shufflevector <2 x float> %i.mkw, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7416

vector.body7416:                                  ; preds = %vector.ph7414, %vector.body7416
  %index7417 = phi i64 [ 0, %vector.ph7414 ], [ %index.next7421, %vector.body7416 ] ; 2 uses
  %i.mky = shl i64 %index7417, 1                  ; 2 uses
  %next.gep7418 = getelementptr i8, ptr %.2.lcssa.i53.i1380, i64 %i.mky
  %next.gep7419 = getelementptr i8, ptr %.237.lcssa.i52.i1379, i64 %i.mky
  %wide.load7420 = load <32 x i16>, ptr %next.gep7418, align 2, !tbaa !558
  %i.mkz = zext <32 x i16> %wide.load7420 to <32 x i32>
  %i.mla = shl nuw <32 x i32> %i.mkz, splat (i32 16)
  %i.mlb = bitcast <32 x i32> %i.mla to <32 x float> ; 6 uses
  %i.mlc = extractelement <32 x float> %i.mlb, i64 0
  %i.mld = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mlc, float %i.meh)
  %i.mle = shufflevector <32 x float> %i.mlb, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.mlf = tail call fast <16 x float> @llvm.pow.v16f32(<16 x float> %i.mle, <16 x float> %i.mkr)
  %i.mlg = shufflevector <32 x float> %i.mlb, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.mlh = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.mlg, <8 x float> %i.mkt)
  %i.mli = shufflevector <32 x float> %i.mlb, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.mlj = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.mli, <4 x float> %i.mkv)
  %i.mlk = extractelement <32 x float> %i.mlb, i64 29
  %i.mll = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mlk, float %i.meh)
  %i.mlm = shufflevector <32 x float> %i.mlb, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.mln = tail call fast <2 x float> @llvm.pow.v2f32(<2 x float> %i.mlm, <2 x float> %i.mkx)
  %i.mlo = insertelement <32 x float> poison, float %i.mld, i64 0
  %i.mlp = shufflevector <16 x float> %i.mlf, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mlq = shufflevector <32 x float> %i.mlo, <32 x float> %i.mlp, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mlr = shufflevector <8 x float> %i.mlh, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mls = shufflevector <32 x float> %i.mlq, <32 x float> %i.mlr, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mlt = shufflevector <4 x float> %i.mlj, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mlu = shufflevector <32 x float> %i.mls, <32 x float> %i.mlt, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.mlv = insertelement <32 x float> %i.mlu, float %i.mll, i64 29
  %i.mlw = shufflevector <2 x float> %i.mln, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mlx = shufflevector <32 x float> %i.mlv, <32 x float> %i.mlw, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.mly = bitcast <32 x float> %i.mlx to <32 x i32>
  %i.mlz = lshr <32 x i32> %i.mly, splat (i32 16)
  %i.mma = trunc nuw <32 x i32> %i.mlz to <32 x i16>
  store <32 x i16> %i.mma, ptr %next.gep7419, align 2, !tbaa !558
  %index.next7421 = add nuw i64 %index7417, 32    ; 2 uses
  %i.mmb = icmp eq i64 %index.next7421, %n.vec7415
  br i1 %i.mmb, label %middle.block7422, label %vector.body7416, !llvm.loop !293

middle.block7422:                                 ; preds = %vector.body7416
  %cmp.n7423 = icmp eq i64 %i.mki, %n.vec7415
  br i1 %cmp.n7423, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7425

vec.epilog.iter.check7425:                        ; preds = %middle.block7422
  %min.epilog.iters.check7427 = icmp eq i64 %i.mkk, 0
  br i1 %min.epilog.iters.check7427, label %.lr.ph203.i54.i1381.preheader, label %vec.epilog.ph7428, !prof !561

vec.epilog.ph7428:                                ; preds = %vector.main.loop.iter.check7412, %vec.epilog.iter.check7425
  %vec.epilog.resume.val7429 = phi i64 [ %n.vec7415, %vec.epilog.iter.check7425 ], [ 0, %vector.main.loop.iter.check7412 ]
  %n.vec7430 = and i64 %i.mki, 8589934584         ; 4 uses
  %i.mmc = shl nuw nsw i64 %n.vec7430, 1          ; 2 uses
  %i.mmd = getelementptr i8, ptr %.2.lcssa.i53.i1380, i64 %i.mmc
  %i.mme = getelementptr i8, ptr %.237.lcssa.i52.i1379, i64 %i.mmc
  %i.mmf = trunc i64 %n.vec7430 to i32
  %i.mmg = add i32 %.241.lcssa.i51.i1378, %i.mmf
  %i.mmh = insertelement <4 x float> poison, float %i.meh, i64 0
  %i.mmi = shufflevector <4 x float> %i.mmh, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7431

vec.epilog.vector.body7431:                       ; preds = %vec.epilog.vector.body7431, %vec.epilog.ph7428
  %index7432 = phi i64 [ %vec.epilog.resume.val7429, %vec.epilog.ph7428 ], [ %index.next7436, %vec.epilog.vector.body7431 ] ; 2 uses
  %i.mmj = shl i64 %index7432, 1                  ; 2 uses
  %next.gep7433 = getelementptr i8, ptr %.2.lcssa.i53.i1380, i64 %i.mmj
  %next.gep7434 = getelementptr i8, ptr %.237.lcssa.i52.i1379, i64 %i.mmj
  %wide.load7435 = load <8 x i16>, ptr %next.gep7433, align 2, !tbaa !558
  %i.mmk = zext <8 x i16> %wide.load7435 to <8 x i32>
  %i.mml = shl nuw <8 x i32> %i.mmk, splat (i32 16)
  %i.mmm = bitcast <8 x i32> %i.mml to <8 x float> ; 5 uses
  %i.mmn = extractelement <8 x float> %i.mmm, i64 0
  %i.mmo = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mmn, float %i.meh)
  %i.mmp = extractelement <8 x float> %i.mmm, i64 1
  %i.mmq = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mmp, float %i.meh)
  %i.mmr = extractelement <8 x float> %i.mmm, i64 2
  %i.mms = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mmr, float %i.meh)
  %i.mmt = shufflevector <8 x float> %i.mmm, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.mmu = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.mmt, <4 x float> %i.mmi)
  %i.mmv = extractelement <8 x float> %i.mmm, i64 7
  %i.mmw = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mmv, float %i.meh)
  %i.mmx = insertelement <8 x float> poison, float %i.mmo, i64 0
  %i.mmy = insertelement <8 x float> %i.mmx, float %i.mmq, i64 1
  %i.mmz = insertelement <8 x float> %i.mmy, float %i.mms, i64 2
  %i.mna = shufflevector <4 x float> %i.mmu, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mnb = shufflevector <8 x float> %i.mmz, <8 x float> %i.mna, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.mnc = insertelement <8 x float> %i.mnb, float %i.mmw, i64 7
  %i.mnd = bitcast <8 x float> %i.mnc to <8 x i32>
  %i.mne = lshr <8 x i32> %i.mnd, splat (i32 16)
  %i.mnf = trunc nuw <8 x i32> %i.mne to <8 x i16>
  store <8 x i16> %i.mnf, ptr %next.gep7434, align 2, !tbaa !558
  %index.next7436 = add nuw i64 %index7432, 8     ; 2 uses
  %i.mng = icmp eq i64 %index.next7436, %n.vec7430
  br i1 %i.mng, label %vec.epilog.middle.block7437, label %vec.epilog.vector.body7431, !llvm.loop !294

vec.epilog.middle.block7437:                      ; preds = %vec.epilog.vector.body7431
  %cmp.n7438 = icmp eq i64 %i.mki, %n.vec7430
  br i1 %cmp.n7438, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph203.i54.i1381.preheader

.lr.ph203.i54.i1381.preheader:                    ; preds = %iter.check7424, %vec.epilog.iter.check7425, %vec.epilog.middle.block7437
  %.3202.i55.i1382.ph = phi ptr [ %.2.lcssa.i53.i1380, %iter.check7424 ], [ %i.mkm, %vec.epilog.iter.check7425 ], [ %i.mmd, %vec.epilog.middle.block7437 ] ; 3 uses
  %.338201.i56.i1383.ph = phi ptr [ %.237.lcssa.i52.i1379, %iter.check7424 ], [ %i.mkn, %vec.epilog.iter.check7425 ], [ %i.mme, %vec.epilog.middle.block7437 ] ; 3 uses
  %.342200.i57.i1384.ph = phi i32 [ %.241.lcssa.i51.i1378, %iter.check7424 ], [ %i.mkp, %vec.epilog.iter.check7425 ], [ %i.mmg, %vec.epilog.middle.block7437 ] ; 4 uses
  %i.mnh = sub i32 %i.lfd, %.342200.i57.i1384.ph
  %.neg11054 = add i32 %.342200.i57.i1384.ph, 1
  %xtraiter10461 = and i32 %i.mnh, 1
  %lcmp.mod10462.not = icmp eq i32 %xtraiter10461, 0
  br i1 %lcmp.mod10462.not, label %.lr.ph203.i54.i1381.prol.loopexit, label %.lr.ph203.i54.i1381.prol

.lr.ph203.i54.i1381.prol:                         ; preds = %.lr.ph203.i54.i1381.preheader
  %i.mni = getelementptr inbounds nuw i8, ptr %.3202.i55.i1382.ph, i64 2
  %i.mnj = load i16, ptr %.3202.i55.i1382.ph, align 2, !tbaa !558
  %i.mnk = zext i16 %i.mnj to i32
  %i.mnl = shl nuw i32 %i.mnk, 16
  %i.mnm = bitcast i32 %i.mnl to float
  %i.mnn = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mnm, float %i.meh)
  %i.mno = bitcast float %i.mnn to i32
  %i.mnp = lshr i32 %i.mno, 16
  %i.mnq = trunc nuw i32 %i.mnp to i16
  %i.mnr = getelementptr inbounds nuw i8, ptr %.338201.i56.i1383.ph, i64 2
  store i16 %i.mnq, ptr %.338201.i56.i1383.ph, align 2, !tbaa !558
  %i.mns = add nuw nsw i32 %.342200.i57.i1384.ph, 1
  br label %.lr.ph203.i54.i1381.prol.loopexit

.lr.ph203.i54.i1381.prol.loopexit:                ; preds = %.lr.ph203.i54.i1381.prol, %.lr.ph203.i54.i1381.preheader
  %.3202.i55.i1382.unr = phi ptr [ %.3202.i55.i1382.ph, %.lr.ph203.i54.i1381.preheader ], [ %i.mni, %.lr.ph203.i54.i1381.prol ]
  %.338201.i56.i1383.unr = phi ptr [ %.338201.i56.i1383.ph, %.lr.ph203.i54.i1381.preheader ], [ %i.mnr, %.lr.ph203.i54.i1381.prol ]
  %.342200.i57.i1384.unr = phi i32 [ %.342200.i57.i1384.ph, %.lr.ph203.i54.i1381.preheader ], [ %i.mns, %.lr.ph203.i54.i1381.prol ]
  %i.mnt = icmp eq i32 %i.lfd, %.neg11054
  br i1 %i.mnt, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph203.i54.i1381

.lr.ph196.i59.i1386:                              ; preds = %.preheader179.i46.i1373, %.lr.ph196.i59.i1386
  %.2195.i60.i1387 = phi ptr [ %i.mqh, %.lr.ph196.i59.i1386 ], [ %.1.lcssa.i49.i1376, %.preheader179.i46.i1373 ] ; 2 uses
  %.237194.i61.i1388 = phi ptr [ %i.mqi, %.lr.ph196.i59.i1386 ], [ %.136.lcssa.i48.i1375, %.preheader179.i46.i1373 ] ; 2 uses
  %.241193.i62.i1389 = phi i32 [ %i.mqj, %.lr.ph196.i59.i1386 ], [ %.140.lcssa.i47.i1374, %.preheader179.i46.i1373 ]
  %i.mnu = load i64, ptr %.2195.i60.i1387, align 1, !tbaa !555
  %i.mnv = insertelement <2 x i64> poison, i64 %i.mnu, i64 0
  %i.mnw = bitcast <2 x i64> %i.mnv to <8 x i16>
  %i.mnx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mnw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mny = bitcast <8 x i16> %i.mnx to <4 x float>
  %i.mnz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mny, <4 x float> splat (float f0x00800000))
  %i.moa = bitcast <4 x float> %i.mnz to <4 x i32> ; 2 uses
  %i.mob = lshr <4 x i32> %i.moa, splat (i32 23)
  %i.moc = and <4 x i32> %i.moa, splat (i32 -2139095041)
  %i.mod = or disjoint <4 x i32> %i.moc, splat (i32 1056964608)
  %i.moe = bitcast <4 x i32> %i.mod to <4 x float> ; 3 uses
  %i.mof = add nsw <4 x i32> %i.mob, splat (i32 -127)
  %i.mog = sitofp fast <4 x i32> %i.mof to <4 x float> ; 2 uses
  %i.moh = fadd fast <4 x float> %i.mog, splat (float 1.000000e+00)
  %i.moi = fcmp fast olt <4 x float> %i.moe, splat (float f0x3F3504F3) ; 2 uses
  %i.moj = select <4 x i1> %i.moi, <4 x float> %i.moe, <4 x float> zeroinitializer
  %i.mok = fadd fast <4 x float> %i.moe, splat (float -1.000000e+00)
  %i.mol = select fast <4 x i1> %i.moi, <4 x float> %i.mog, <4 x float> %i.moh ; 2 uses
  %i.mom = fadd fast <4 x float> %i.mok, %i.moj   ; 12 uses
  %i.mon = fmul fast <4 x float> %i.mom, %i.mom   ; 2 uses
  %i.moo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mom, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.mop = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.moo, <4 x float> nofpclass(nan inf) %i.mom, <4 x float> splat (float f0x3DEF251A))
  %i.moq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mop, <4 x float> nofpclass(nan inf) %i.mom, <4 x float> splat (float f0xBDFE5D4F))
  %i.mor = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.moq, <4 x float> nofpclass(nan inf) %i.mom, <4 x float> splat (float f0x3E11E9BF))
  %i.mos = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mor, <4 x float> nofpclass(nan inf) %i.mom, <4 x float> splat (float f0xBE2AAE50))
  %i.mot = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mos, <4 x float> nofpclass(nan inf) %i.mom, <4 x float> splat (float f0x3E4CCEAC))
  %i.mou = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mot, <4 x float> nofpclass(nan inf) %i.mom, <4 x float> splat (float f0xBE7FFFFC))
  %i.mov = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mou, <4 x float> nofpclass(nan inf) %i.mom, <4 x float> splat (float f0x3EAAAAAA))
  %i.mow = fmul fast <4 x float> %i.mon, %i.mom
  %i.mox = fmul fast <4 x float> %i.mow, %i.mov
  %i.moy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mol, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.mox)
  %i.moz = fneg fast <4 x float> %i.mon
  %i.mpa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.moz, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.moy)
  %i.mpb = fadd fast <4 x float> %i.mpa, %i.mom
  %i.mpc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mol, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.mpb)
  %i.mpd = fmul fast <4 x float> %i.mpc, %i.mfc
  %i.mpe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.mpd, <4 x float> splat (float f0x42B0C0A5))
  %i.mpf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mpe, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.mpg = fmul fast <4 x float> %i.mpf, splat (float f0x3FB8AA3B)
  %i.mph = fadd fast <4 x float> %i.mpg, splat (float 5.000000e-01) ; 2 uses
  %i.mpi = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mph)
  %i.mpj = sitofp fast <4 x i32> %i.mpi to <4 x float> ; 2 uses
  %i.mpk = fcmp fast olt <4 x float> %i.mph, %i.mpj
  %i.mpl = select <4 x i1> %i.mpk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.mpm = fsub fast <4 x float> %i.mpj, %i.mpl   ; 2 uses
  %i.mpn = fneg fast <4 x float> %i.mpm           ; 2 uses
  %i.mpo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.mpn, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.mpf)
  %i.mpp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.mpn, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.mpo) ; 8 uses
  %i.mpq = fmul fast <4 x float> %i.mpp, %i.mpp
  %i.mpr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mpp, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.mps = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mpr, <4 x float> nofpclass(nan inf) %i.mpp, <4 x float> splat (float f0x3C088908))
  %i.mpt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mps, <4 x float> nofpclass(nan inf) %i.mpp, <4 x float> splat (float f0x3D2AA9C1))
  %i.mpu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mpt, <4 x float> nofpclass(nan inf) %i.mpp, <4 x float> splat (float f0x3E2AAAAA))
  %i.mpv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mpu, <4 x float> nofpclass(nan inf) %i.mpp, <4 x float> splat (float 5.000000e-01))
  %i.mpw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.mpv, <4 x float> nofpclass(nan inf) %i.mpq, <4 x float> nofpclass(nan inf) %i.mpp)
  %i.mpx = fadd fast <4 x float> %i.mpw, splat (float 1.000000e+00)
  %i.mpy = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mpm)
  %i.mpz = shl <4 x i32> %i.mpy, splat (i32 23)
  %i.mqa = add <4 x i32> %i.mpz, splat (i32 1065353216)
  %i.mqb = bitcast <4 x i32> %i.mqa to <4 x float>
  %i.mqc = fmul fast <4 x float> %i.mpx, %i.mqb
  %i.mqd = shufflevector <4 x float> %i.mqc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.mqe = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.mqd)
  %i.mqf = bitcast <8 x bfloat> %i.mqe to <2 x i64>
  %i.mqg = extractelement <2 x i64> %i.mqf, i64 0
  store i64 %i.mqg, ptr %.237194.i61.i1388, align 1, !tbaa !555
  %i.mqh = getelementptr inbounds nuw i8, ptr %.2195.i60.i1387, i64 8 ; 2 uses
  %i.mqi = getelementptr inbounds nuw i8, ptr %.237194.i61.i1388, i64 8 ; 2 uses
  %i.mqj = add nuw nsw i32 %.241193.i62.i1389, 4  ; 3 uses
  %i.mqk = or disjoint i32 %i.mqj, 3
  %i.mql = icmp slt i32 %i.mqk, %i.lfd
  br i1 %i.mql, label %.lr.ph196.i59.i1386, label %.preheader.i50.i1377, !llvm.loop !295

.lr.ph203.i54.i1381:                              ; preds = %.lr.ph203.i54.i1381.prol.loopexit, %.lr.ph203.i54.i1381
  %.3202.i55.i1382 = phi ptr [ %i.mqw, %.lr.ph203.i54.i1381 ], [ %.3202.i55.i1382.unr, %.lr.ph203.i54.i1381.prol.loopexit ] ; 3 uses
  %.338201.i56.i1383 = phi ptr [ %i.mrf, %.lr.ph203.i54.i1381 ], [ %.338201.i56.i1383.unr, %.lr.ph203.i54.i1381.prol.loopexit ] ; 3 uses
  %.342200.i57.i1384 = phi i32 [ %i.mrg, %.lr.ph203.i54.i1381 ], [ %.342200.i57.i1384.unr, %.lr.ph203.i54.i1381.prol.loopexit ]
  %i.mqm = getelementptr inbounds nuw i8, ptr %.3202.i55.i1382, i64 2
  %i.mqn = load i16, ptr %.3202.i55.i1382, align 2, !tbaa !558
  %i.mqo = zext i16 %i.mqn to i32
  %i.mqp = shl nuw i32 %i.mqo, 16
  %i.mqq = bitcast i32 %i.mqp to float
  %i.mqr = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mqq, float %i.meh)
  %i.mqs = bitcast float %i.mqr to i32
  %i.mqt = lshr i32 %i.mqs, 16
  %i.mqu = trunc nuw i32 %i.mqt to i16
  %i.mqv = getelementptr inbounds nuw i8, ptr %.338201.i56.i1383, i64 2
  store i16 %i.mqu, ptr %.338201.i56.i1383, align 2, !tbaa !558
  %i.mqw = getelementptr inbounds nuw i8, ptr %.3202.i55.i1382, i64 4
  %i.mqx = load i16, ptr %i.mqm, align 2, !tbaa !558
  %i.mqy = zext i16 %i.mqx to i32
  %i.mqz = shl nuw i32 %i.mqy, 16
  %i.mra = bitcast i32 %i.mqz to float
  %i.mrb = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mra, float %i.meh)
  %i.mrc = bitcast float %i.mrb to i32
  %i.mrd = lshr i32 %i.mrc, 16
  %i.mre = trunc nuw i32 %i.mrd to i16
  %i.mrf = getelementptr inbounds nuw i8, ptr %.338201.i56.i1383, i64 4
  store i16 %i.mre, ptr %i.mqv, align 2, !tbaa !558
  %i.mrg = add nuw nsw i32 %.342200.i57.i1384, 2  ; 2 uses
  %exitcond.not.i58.i1385.1 = icmp eq i32 %i.mrg, %i.lfd
  br i1 %exitcond.not.i58.i1385.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph203.i54.i1381, !llvm.loop !296

bb.je:                                            ; preds = %bb.ix, %bb.ik
  %i.mrh = icmp eq i32 %6, 1
  br i1 %i.mrh, label %bb.jf, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.jf:                                            ; preds = %bb.je
  %i.mri = icmp eq i32 %3, %4
  br i1 %i.mri, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  switch i32 %.sroa.speculated.i1301, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 16, label %.preheader.i76.i1362
    i32 8, label %.preheader167.i.i1355
    i32 4, label %.preheader169.i.i1348
  ]

.preheader169.i.i1348:                            ; preds = %bb.jg
  %i.mrj = icmp sgt i32 %.sroa.speculated98.i1300, 0
  br i1 %i.mrj, label %.lr.ph.i74.i1349, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader167.i.i1355:                            ; preds = %bb.jg
  %i.mrk = icmp sgt i32 %.sroa.speculated98.i1300, 0
  br i1 %i.mrk, label %.lr.ph179.i.i1356, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader.i76.i1362:                             ; preds = %bb.jg
  %i.mrl = icmp sgt i32 %.sroa.speculated98.i1300, 0
  br i1 %i.mrl, label %.lr.ph184.i.i1363, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph184.i.i1363:                                ; preds = %.preheader.i76.i1362, %.lr.ph184.i.i1363
  %.031183.i.i1364 = phi ptr [ %i.mtx, %.lr.ph184.i.i1363 ], [ %0, %.preheader.i76.i1362 ] ; 2 uses
  %.033182.i.i1365 = phi ptr [ %i.mty, %.lr.ph184.i.i1363 ], [ %1, %.preheader.i76.i1362 ] ; 2 uses
  %.036181.i.i1366 = phi i32 [ %i.mua, %.lr.ph184.i.i1363 ], [ 0, %.preheader.i76.i1362 ]
  %.037180.i.i1367 = phi ptr [ %i.mtz, %.lr.ph184.i.i1363 ], [ %2, %.preheader.i76.i1362 ] ; 2 uses
  %i.mrm = load <16 x bfloat>, ptr %.031183.i.i1364, align 1, !tbaa !555
  %i.mrn = fpext fast <16 x bfloat> %i.mrm to <16 x float>
  %i.mro = load i16, ptr %.033182.i.i1365, align 2, !tbaa !558
  %i.mrp = zext i16 %i.mro to i32
  %i.mrq = shl nuw i32 %i.mrp, 16
  %i.mrr = insertelement <16 x i32> poison, i32 %i.mrq, i64 0
  %i.mrs = bitcast <16 x i32> %i.mrr to <16 x float>
  %i.mrt = shufflevector <16 x float> %i.mrs, <16 x float> poison, <16 x i32> zeroinitializer
  %i.mru = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.mrt, <16 x float> splat (float f0x00800000), i32 4)
  %i.mrv = bitcast <16 x float> %i.mru to <16 x i32> ; 2 uses
  %i.mrw = lshr <16 x i32> %i.mrv, splat (i32 23)
end_hunk_3
begin_hunk_4_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  %i.nbo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nbn, <16 x float> nofpclass(nan inf) %i.nbk, <16 x float> splat (float f0x3D2AA9C1))
  %i.nbp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nbo, <16 x float> nofpclass(nan inf) %i.nbk, <16 x float> splat (float f0x3E2AAAAA))
  %i.nbq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nbp, <16 x float> nofpclass(nan inf) %i.nbk, <16 x float> splat (float 5.000000e-01))
  %i.nbr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nbq, <16 x float> nofpclass(nan inf) %i.nbl, <16 x float> nofpclass(nan inf) %i.nbk)
  %i.nbs = fadd fast <16 x float> %i.nbr, splat (float 1.000000e+00)
  %i.nbt = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.nbh, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.nbu = shl <16 x i32> %i.nbt, splat (i32 23)
  %i.nbv = add <16 x i32> %i.nbu, splat (i32 1065353216)
  %i.nbw = bitcast <16 x i32> %i.nbv to <16 x float>
  %i.nbx = fmul fast <16 x float> %i.nbs, %i.nbw
  %i.nby = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.nbx)
  store <16 x bfloat> %i.nby, ptr %.030131.i.i1345, align 1, !tbaa !555
  %i.nbz = getelementptr inbounds nuw i8, ptr %.0132.i.i1344, i64 32 ; 2 uses
  %i.nca = getelementptr inbounds nuw i8, ptr %.030131.i.i1345, i64 32 ; 2 uses
  %i.ncb = add nuw nsw i32 %.034130.i.i1346, 16   ; 2 uses
  %i.ncc = or disjoint i32 %i.ncb, 15
  %i.ncd = icmp slt i32 %i.ncc, %i.lfd
  br i1 %i.ncd, label %bb.jj, label %._crit_edge.loopexit.i.i1347, !llvm.loop !300

._crit_edge.loopexit.i.i1347:                     ; preds = %bb.jj
  %i.nce = and i32 %i.lfd, 2147483632
  br label %._crit_edge.i.i1318

._crit_edge.i.i1318:                              ; preds = %._crit_edge.loopexit.i.i1347, %bb.ji
  %.034.lcssa.i77.i1319 = phi i32 [ 0, %bb.ji ], [ %i.nce, %._crit_edge.loopexit.i.i1347 ] ; 3 uses
  %.030.lcssa.i.i1320 = phi ptr [ %2, %bb.ji ], [ %i.nca, %._crit_edge.loopexit.i.i1347 ] ; 2 uses
  %.0.lcssa.i78.i1321 = phi ptr [ %0, %bb.ji ], [ %i.nbz, %._crit_edge.loopexit.i.i1347 ] ; 2 uses
  %i.ncf = or disjoint i32 %.034.lcssa.i77.i1319, 7
  %i.ncg = icmp slt i32 %i.ncf, %i.lfd
  br i1 %i.ncg, label %.lr.ph139.i.i1339, label %._crit_edge140.i.i1322

.lr.ph139.i.i1339:                                ; preds = %._crit_edge.i.i1318
  %i.nch = insertelement <8 x float> poison, float %i.mzq, i64 0
  %i.nci = shufflevector <8 x float> %i.nch, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ncj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.nci, <8 x float> splat (float f0x00800000))
  %i.nck = bitcast <8 x float> %i.ncj to <8 x i32> ; 2 uses
  %i.ncl = lshr <8 x i32> %i.nck, splat (i32 23)
  %i.ncm = and <8 x i32> %i.nck, splat (i32 -2139095041)
  %i.ncn = or disjoint <8 x i32> %i.ncm, splat (i32 1056964608)
  %i.nco = bitcast <8 x i32> %i.ncn to <8 x float> ; 3 uses
  %i.ncp = add nsw <8 x i32> %i.ncl, splat (i32 -127)
  %i.ncq = sitofp fast <8 x i32> %i.ncp to <8 x float> ; 2 uses
  %i.ncr = fadd fast <8 x float> %i.ncq, splat (float 1.000000e+00)
  %i.ncs = fcmp fast olt <8 x float> %i.nco, splat (float f0x3F3504F3) ; 2 uses
  %i.nct = select <8 x i1> %i.ncs, <8 x float> %i.nco, <8 x float> zeroinitializer
  %i.ncu = fadd fast <8 x float> %i.nco, splat (float -1.000000e+00)
  %i.ncv = select fast <8 x i1> %i.ncs, <8 x float> %i.ncq, <8 x float> %i.ncr ; 2 uses
  %i.ncw = fadd fast <8 x float> %i.ncu, %i.nct   ; 12 uses
  %i.ncx = fmul fast <8 x float> %i.ncw, %i.ncw   ; 2 uses
  %i.ncy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ncw, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.ncz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ncy, <8 x float> nofpclass(nan inf) %i.ncw, <8 x float> splat (float f0x3DEF251A))
  %i.nda = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ncz, <8 x float> nofpclass(nan inf) %i.ncw, <8 x float> splat (float f0xBDFE5D4F))
  %i.ndb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nda, <8 x float> nofpclass(nan inf) %i.ncw, <8 x float> splat (float f0x3E11E9BF))
  %i.ndc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ndb, <8 x float> nofpclass(nan inf) %i.ncw, <8 x float> splat (float f0xBE2AAE50))
  %i.ndd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ndc, <8 x float> nofpclass(nan inf) %i.ncw, <8 x float> splat (float f0x3E4CCEAC))
  %i.nde = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ndd, <8 x float> nofpclass(nan inf) %i.ncw, <8 x float> splat (float f0xBE7FFFFC))
  %i.ndf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nde, <8 x float> nofpclass(nan inf) %i.ncw, <8 x float> splat (float f0x3EAAAAAA))
  %i.ndg = fmul fast <8 x float> %i.ncx, %i.ncw
  %i.ndh = fmul fast <8 x float> %i.ndg, %i.ndf
  %i.ndi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ncv, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ndh)
  %i.ndj = fneg fast <8 x float> %i.ncx
  %i.ndk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ndj, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.ndi)
  %i.ndl = fadd fast <8 x float> %i.ndk, %i.ncw
  %i.ndm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ncv, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ndl)
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jk, %.lr.ph139.i.i1339
  %.1137.i.i1340 = phi ptr [ %.0.lcssa.i78.i1321, %.lr.ph139.i.i1339 ], [ %i.neo, %bb.jk ] ; 2 uses
  %.131136.i.i1341 = phi ptr [ %.030.lcssa.i.i1320, %.lr.ph139.i.i1339 ], [ %i.nep, %bb.jk ] ; 2 uses
  %.135135.i.i1342 = phi i32 [ %.034.lcssa.i77.i1319, %.lr.ph139.i.i1339 ], [ %i.neq, %bb.jk ]
  %i.ndn = load <8 x bfloat>, ptr %.1137.i.i1340, align 1, !tbaa !555
  %i.ndo = fpext fast <8 x bfloat> %i.ndn to <8 x float>
  %i.ndp = fmul fast <8 x float> %i.ndm, %i.ndo
  %i.ndq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ndp, <8 x float> splat (float f0x42B0C0A5))
  %i.ndr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ndq, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.nds = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ndr, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ndt = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.nds, i32 1) ; 2 uses
  %i.ndu = fcmp fast ogt <8 x float> %i.ndt, %i.nds
  %i.ndv = select <8 x i1> %i.ndu, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ndw = fsub fast <8 x float> %i.ndt, %i.ndv   ; 2 uses
  %i.ndx = fneg fast <8 x float> %i.ndw           ; 2 uses
  %i.ndy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ndx, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ndr)
  %i.ndz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ndx, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ndy) ; 8 uses
  %i.nea = fmul fast <8 x float> %i.ndz, %i.ndz
  %i.neb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ndz, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.nec = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.neb, <8 x float> nofpclass(nan inf) %i.ndz, <8 x float> splat (float f0x3C088908))
  %i.ned = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nec, <8 x float> nofpclass(nan inf) %i.ndz, <8 x float> splat (float f0x3D2AA9C1))
  %i.nee = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ned, <8 x float> nofpclass(nan inf) %i.ndz, <8 x float> splat (float f0x3E2AAAAA))
  %i.nef = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nee, <8 x float> nofpclass(nan inf) %i.ndz, <8 x float> splat (float 5.000000e-01))
  %i.neg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nef, <8 x float> nofpclass(nan inf) %i.nea, <8 x float> nofpclass(nan inf) %i.ndz)
  %i.neh = fadd fast <8 x float> %i.neg, splat (float 1.000000e+00)
  %i.nei = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ndw)
  %i.nej = shl <8 x i32> %i.nei, splat (i32 23)
  %i.nek = add <8 x i32> %i.nej, splat (i32 1065353216)
  %i.nel = bitcast <8 x i32> %i.nek to <8 x float>
  %i.nem = fmul fast <8 x float> %i.neh, %i.nel
  %i.nen = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.nem)
  store <8 x bfloat> %i.nen, ptr %.131136.i.i1341, align 1, !tbaa !555
  %i.neo = getelementptr inbounds nuw i8, ptr %.1137.i.i1340, i64 16 ; 2 uses
  %i.nep = getelementptr inbounds nuw i8, ptr %.131136.i.i1341, i64 16 ; 2 uses
  %i.neq = add nuw nsw i32 %.135135.i.i1342, 8    ; 3 uses
  %i.ner = or disjoint i32 %i.neq, 7
  %i.nes = icmp slt i32 %i.ner, %i.lfd
  br i1 %i.nes, label %bb.jk, label %._crit_edge140.i.i1322, !llvm.loop !301

._crit_edge140.i.i1322:                           ; preds = %bb.jk, %._crit_edge.i.i1318
  %.135.lcssa.i79.i1323 = phi i32 [ %.034.lcssa.i77.i1319, %._crit_edge.i.i1318 ], [ %i.neq, %bb.jk ] ; 3 uses
  %.131.lcssa.i.i1324 = phi ptr [ %.030.lcssa.i.i1320, %._crit_edge.i.i1318 ], [ %i.nep, %bb.jk ] ; 2 uses
  %.1.lcssa.i80.i1325 = phi ptr [ %.0.lcssa.i78.i1321, %._crit_edge.i.i1318 ], [ %i.neo, %bb.jk ] ; 2 uses
  %i.net = or disjoint i32 %.135.lcssa.i79.i1323, 3
  %i.neu = icmp slt i32 %i.net, %i.lfd
  br i1 %i.neu, label %.lr.ph148.i.i1335, label %.preheader.i81.i1326

.lr.ph148.i.i1335:                                ; preds = %._crit_edge140.i.i1322
  %i.nev = insertelement <4 x float> poison, float %i.mzq, i64 0
  %i.new = shufflevector <4 x float> %i.nev, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nex = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.new, <4 x float> splat (float f0x00800000))
  %i.ney = bitcast <4 x float> %i.nex to <4 x i32> ; 2 uses
  %i.nez = lshr <4 x i32> %i.ney, splat (i32 23)
  %i.nfa = and <4 x i32> %i.ney, splat (i32 -2139095041)
  %i.nfb = or disjoint <4 x i32> %i.nfa, splat (i32 1056964608)
  %i.nfc = bitcast <4 x i32> %i.nfb to <4 x float> ; 3 uses
  %i.nfd = add nsw <4 x i32> %i.nez, splat (i32 -127)
  %i.nfe = sitofp fast <4 x i32> %i.nfd to <4 x float> ; 2 uses
  %i.nff = fadd fast <4 x float> %i.nfe, splat (float 1.000000e+00)
  %i.nfg = fcmp fast olt <4 x float> %i.nfc, splat (float f0x3F3504F3) ; 2 uses
  %i.nfh = select <4 x i1> %i.nfg, <4 x float> %i.nfc, <4 x float> zeroinitializer
  %i.nfi = fadd fast <4 x float> %i.nfc, splat (float -1.000000e+00)
  %i.nfj = select fast <4 x i1> %i.nfg, <4 x float> %i.nfe, <4 x float> %i.nff ; 2 uses
  %i.nfk = fadd fast <4 x float> %i.nfi, %i.nfh   ; 12 uses
  %i.nfl = fmul fast <4 x float> %i.nfk, %i.nfk   ; 2 uses
  %i.nfm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nfk, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.nfn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nfm, <4 x float> nofpclass(nan inf) %i.nfk, <4 x float> splat (float f0x3DEF251A))
  %i.nfo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nfn, <4 x float> nofpclass(nan inf) %i.nfk, <4 x float> splat (float f0xBDFE5D4F))
  %i.nfp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nfo, <4 x float> nofpclass(nan inf) %i.nfk, <4 x float> splat (float f0x3E11E9BF))
  %i.nfq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nfp, <4 x float> nofpclass(nan inf) %i.nfk, <4 x float> splat (float f0xBE2AAE50))
  %i.nfr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nfq, <4 x float> nofpclass(nan inf) %i.nfk, <4 x float> splat (float f0x3E4CCEAC))
  %i.nfs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nfr, <4 x float> nofpclass(nan inf) %i.nfk, <4 x float> splat (float f0xBE7FFFFC))
  %i.nft = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nfs, <4 x float> nofpclass(nan inf) %i.nfk, <4 x float> splat (float f0x3EAAAAAA))
  %i.nfu = fmul fast <4 x float> %i.nfl, %i.nfk
  %i.nfv = fmul fast <4 x float> %i.nfu, %i.nft
  %i.nfw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nfj, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.nfv)
  %i.nfx = fneg fast <4 x float> %i.nfl
  %i.nfy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.nfx, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.nfw)
  %i.nfz = fadd fast <4 x float> %i.nfy, %i.nfk
  %i.nga = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nfj, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.nfz)
  br label %bb.jl

.preheader.i81.i1326:                             ; preds = %bb.jl, %._crit_edge140.i.i1322
  %.236.lcssa.i82.i1327 = phi i32 [ %.135.lcssa.i79.i1323, %._crit_edge140.i.i1322 ], [ %i.nlc, %bb.jl ] ; 5 uses
  %.232.lcssa.i.i1328 = phi ptr [ %.131.lcssa.i.i1324, %._crit_edge140.i.i1322 ], [ %i.nlb, %bb.jl ] ; 6 uses
  %.2.lcssa.i83.i1329 = phi ptr [ %.1.lcssa.i80.i1325, %._crit_edge140.i.i1322 ], [ %i.nla, %bb.jl ] ; 6 uses
  %i.ngb = icmp slt i32 %.236.lcssa.i82.i1327, %i.lfd
  br i1 %i.ngb, label %iter.check7385, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7385:                                   ; preds = %.preheader.i81.i1326
  %.232.lcssa.i.i13287369 = ptrtoaddr ptr %.232.lcssa.i.i1328 to i64
  %.2.lcssa.i83.i13297368 = ptrtoaddr ptr %.2.lcssa.i83.i1329 to i64
  %i.ngc = xor i32 %.236.lcssa.i82.i1327, -1
  %i.ngd = add i32 %i.lfd, %i.ngc                 ; 3 uses
  %i.nge = zext i32 %i.ngd to i64
  %i.ngf = add nuw nsw i64 %i.nge, 1              ; 5 uses
  %min.iters.check7370 = icmp ult i32 %i.ngd, 7
  %i.ngg = sub i64 %.2.lcssa.i83.i13297368, %.232.lcssa.i.i13287369
  %diff.check7372 = icmp ugt i64 %i.ngg, -64
  %or.cond9194 = select i1 %min.iters.check7370, i1 true, i1 %diff.check7372
  br i1 %or.cond9194, label %.lr.ph155.i.i1330.preheader, label %vector.main.loop.iter.check7373

vector.main.loop.iter.check7373:                  ; preds = %iter.check7385
  %min.iters.check7374 = icmp ult i32 %i.ngd, 31
  br i1 %min.iters.check7374, label %vec.epilog.ph7389, label %vector.ph7375

vector.ph7375:                                    ; preds = %vector.main.loop.iter.check7373
  %i.ngh = and i64 %i.ngf, 24
  %n.vec7376 = and i64 %i.ngf, 8589934560         ; 5 uses
  %i.ngi = shl nuw nsw i64 %n.vec7376, 1          ; 2 uses
  %i.ngj = getelementptr i8, ptr %.2.lcssa.i83.i1329, i64 %i.ngi
  %i.ngk = getelementptr i8, ptr %.232.lcssa.i.i1328, i64 %i.ngi
  %i.ngl = trunc i64 %n.vec7376 to i32
  %i.ngm = add i32 %.236.lcssa.i82.i1327, %i.ngl
  %i.ngn = insertelement <16 x float> poison, float %i.mzq, i64 0
  %i.ngo = shufflevector <16 x float> %i.ngn, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ngp = insertelement <8 x float> poison, float %i.mzq, i64 0
  %i.ngq = shufflevector <8 x float> %i.ngp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ngr = insertelement <4 x float> poison, float %i.mzq, i64 0
  %i.ngs = shufflevector <4 x float> %i.ngr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ngt = insertelement <2 x float> poison, float %i.mzq, i64 0
  %i.ngu = shufflevector <2 x float> %i.ngt, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7377

vector.body7377:                                  ; preds = %vector.ph7375, %vector.body7377
  %index7378 = phi i64 [ 0, %vector.ph7375 ], [ %index.next7382, %vector.body7377 ] ; 2 uses
  %i.ngv = shl i64 %index7378, 1                  ; 2 uses
  %next.gep7379 = getelementptr i8, ptr %.2.lcssa.i83.i1329, i64 %i.ngv
  %next.gep7380 = getelementptr i8, ptr %.232.lcssa.i.i1328, i64 %i.ngv
  %wide.load7381 = load <32 x i16>, ptr %next.gep7379, align 2, !tbaa !558
  %i.ngw = zext <32 x i16> %wide.load7381 to <32 x i32>
  %i.ngx = shl nuw <32 x i32> %i.ngw, splat (i32 16)
  %i.ngy = bitcast <32 x i32> %i.ngx to <32 x float> ; 6 uses
  %i.ngz = extractelement <32 x float> %i.ngy, i64 0
  %i.nha = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mzq, float %i.ngz)
  %i.nhb = shufflevector <32 x float> %i.ngy, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.nhc = tail call fast <16 x float> @llvm.pow.v16f32(<16 x float> %i.ngo, <16 x float> %i.nhb)
  %i.nhd = shufflevector <32 x float> %i.ngy, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.nhe = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.ngq, <8 x float> %i.nhd)
  %i.nhf = shufflevector <32 x float> %i.ngy, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.nhg = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.ngs, <4 x float> %i.nhf)
  %i.nhh = extractelement <32 x float> %i.ngy, i64 29
  %i.nhi = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mzq, float %i.nhh)
  %i.nhj = shufflevector <32 x float> %i.ngy, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.nhk = tail call fast <2 x float> @llvm.pow.v2f32(<2 x float> %i.ngu, <2 x float> %i.nhj)
  %i.nhl = insertelement <32 x float> poison, float %i.nha, i64 0
  %i.nhm = shufflevector <16 x float> %i.nhc, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nhn = shufflevector <32 x float> %i.nhl, <32 x float> %i.nhm, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nho = shufflevector <8 x float> %i.nhe, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nhp = shufflevector <32 x float> %i.nhn, <32 x float> %i.nho, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nhq = shufflevector <4 x float> %i.nhg, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nhr = shufflevector <32 x float> %i.nhp, <32 x float> %i.nhq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.nhs = insertelement <32 x float> %i.nhr, float %i.nhi, i64 29
  %i.nht = shufflevector <2 x float> %i.nhk, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nhu = shufflevector <32 x float> %i.nhs, <32 x float> %i.nht, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.nhv = bitcast <32 x float> %i.nhu to <32 x i32>
  %i.nhw = lshr <32 x i32> %i.nhv, splat (i32 16)
  %i.nhx = trunc nuw <32 x i32> %i.nhw to <32 x i16>
  store <32 x i16> %i.nhx, ptr %next.gep7380, align 2, !tbaa !558
  %index.next7382 = add nuw i64 %index7378, 32    ; 2 uses
  %i.nhy = icmp eq i64 %index.next7382, %n.vec7376
  br i1 %i.nhy, label %middle.block7383, label %vector.body7377, !llvm.loop !302

middle.block7383:                                 ; preds = %vector.body7377
  %cmp.n7384 = icmp eq i64 %i.ngf, %n.vec7376
  br i1 %cmp.n7384, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7386

vec.epilog.iter.check7386:                        ; preds = %middle.block7383
  %min.epilog.iters.check7388 = icmp eq i64 %i.ngh, 0
  br i1 %min.epilog.iters.check7388, label %.lr.ph155.i.i1330.preheader, label %vec.epilog.ph7389, !prof !561

vec.epilog.ph7389:                                ; preds = %vector.main.loop.iter.check7373, %vec.epilog.iter.check7386
  %vec.epilog.resume.val7390 = phi i64 [ %n.vec7376, %vec.epilog.iter.check7386 ], [ 0, %vector.main.loop.iter.check7373 ]
  %n.vec7391 = and i64 %i.ngf, 8589934584         ; 4 uses
  %i.nhz = shl nuw nsw i64 %n.vec7391, 1          ; 2 uses
  %i.nia = getelementptr i8, ptr %.2.lcssa.i83.i1329, i64 %i.nhz
  %i.nib = getelementptr i8, ptr %.232.lcssa.i.i1328, i64 %i.nhz
  %i.nic = trunc i64 %n.vec7391 to i32
  %i.nid = add i32 %.236.lcssa.i82.i1327, %i.nic
  %i.nie = insertelement <4 x float> poison, float %i.mzq, i64 0
  %i.nif = shufflevector <4 x float> %i.nie, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7392

vec.epilog.vector.body7392:                       ; preds = %vec.epilog.vector.body7392, %vec.epilog.ph7389
  %index7393 = phi i64 [ %vec.epilog.resume.val7390, %vec.epilog.ph7389 ], [ %index.next7397, %vec.epilog.vector.body7392 ] ; 2 uses
  %i.nig = shl i64 %index7393, 1                  ; 2 uses
  %next.gep7394 = getelementptr i8, ptr %.2.lcssa.i83.i1329, i64 %i.nig
  %next.gep7395 = getelementptr i8, ptr %.232.lcssa.i.i1328, i64 %i.nig
  %wide.load7396 = load <8 x i16>, ptr %next.gep7394, align 2, !tbaa !558
  %i.nih = zext <8 x i16> %wide.load7396 to <8 x i32>
  %i.nii = shl nuw <8 x i32> %i.nih, splat (i32 16)
  %i.nij = bitcast <8 x i32> %i.nii to <8 x float> ; 5 uses
  %i.nik = extractelement <8 x float> %i.nij, i64 0
  %i.nil = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mzq, float %i.nik)
  %i.nim = extractelement <8 x float> %i.nij, i64 1
  %i.nin = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mzq, float %i.nim)
  %i.nio = extractelement <8 x float> %i.nij, i64 2
  %i.nip = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mzq, float %i.nio)
  %i.niq = shufflevector <8 x float> %i.nij, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.nir = tail call fast <4 x float> @llvm.pow.v4f32(<4 x float> %i.nif, <4 x float> %i.niq)
  %i.nis = extractelement <8 x float> %i.nij, i64 7
  %i.nit = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mzq, float %i.nis)
  %i.niu = insertelement <8 x float> poison, float %i.nil, i64 0
  %i.niv = insertelement <8 x float> %i.niu, float %i.nin, i64 1
  %i.niw = insertelement <8 x float> %i.niv, float %i.nip, i64 2
  %i.nix = shufflevector <4 x float> %i.nir, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.niy = shufflevector <8 x float> %i.niw, <8 x float> %i.nix, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.niz = insertelement <8 x float> %i.niy, float %i.nit, i64 7
  %i.nja = bitcast <8 x float> %i.niz to <8 x i32>
  %i.njb = lshr <8 x i32> %i.nja, splat (i32 16)
  %i.njc = trunc nuw <8 x i32> %i.njb to <8 x i16>
  store <8 x i16> %i.njc, ptr %next.gep7395, align 2, !tbaa !558
  %index.next7397 = add nuw i64 %index7393, 8     ; 2 uses
  %i.njd = icmp eq i64 %index.next7397, %n.vec7391
  br i1 %i.njd, label %vec.epilog.middle.block7398, label %vec.epilog.vector.body7392, !llvm.loop !303

vec.epilog.middle.block7398:                      ; preds = %vec.epilog.vector.body7392
  %cmp.n7399 = icmp eq i64 %i.ngf, %n.vec7391
  br i1 %cmp.n7399, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph155.i.i1330.preheader

.lr.ph155.i.i1330.preheader:                      ; preds = %iter.check7385, %vec.epilog.iter.check7386, %vec.epilog.middle.block7398
  %.3154.i.i1331.ph = phi ptr [ %.2.lcssa.i83.i1329, %iter.check7385 ], [ %i.ngj, %vec.epilog.iter.check7386 ], [ %i.nia, %vec.epilog.middle.block7398 ] ; 3 uses
  %.333153.i.i1332.ph = phi ptr [ %.232.lcssa.i.i1328, %iter.check7385 ], [ %i.ngk, %vec.epilog.iter.check7386 ], [ %i.nib, %vec.epilog.middle.block7398 ] ; 3 uses
  %.337152.i.i1333.ph = phi i32 [ %.236.lcssa.i82.i1327, %iter.check7385 ], [ %i.ngm, %vec.epilog.iter.check7386 ], [ %i.nid, %vec.epilog.middle.block7398 ] ; 4 uses
  %i.nje = sub i32 %i.lfd, %.337152.i.i1333.ph
  %.neg11053 = add i32 %.337152.i.i1333.ph, 1
  %xtraiter10459 = and i32 %i.nje, 1
  %lcmp.mod10460.not = icmp eq i32 %xtraiter10459, 0
  br i1 %lcmp.mod10460.not, label %.lr.ph155.i.i1330.prol.loopexit, label %.lr.ph155.i.i1330.prol

.lr.ph155.i.i1330.prol:                           ; preds = %.lr.ph155.i.i1330.preheader
  %i.njf = getelementptr inbounds nuw i8, ptr %.3154.i.i1331.ph, i64 2
  %i.njg = load i16, ptr %.3154.i.i1331.ph, align 2, !tbaa !558
  %i.njh = zext i16 %i.njg to i32
  %i.nji = shl nuw i32 %i.njh, 16
  %i.njj = bitcast i32 %i.nji to float
  %i.njk = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mzq, float %i.njj)
  %i.njl = bitcast float %i.njk to i32
  %i.njm = lshr i32 %i.njl, 16
  %i.njn = trunc nuw i32 %i.njm to i16
  %i.njo = getelementptr inbounds nuw i8, ptr %.333153.i.i1332.ph, i64 2
  store i16 %i.njn, ptr %.333153.i.i1332.ph, align 2, !tbaa !558
  %i.njp = add nuw nsw i32 %.337152.i.i1333.ph, 1
  br label %.lr.ph155.i.i1330.prol.loopexit

.lr.ph155.i.i1330.prol.loopexit:                  ; preds = %.lr.ph155.i.i1330.prol, %.lr.ph155.i.i1330.preheader
  %.3154.i.i1331.unr = phi ptr [ %.3154.i.i1331.ph, %.lr.ph155.i.i1330.preheader ], [ %i.njf, %.lr.ph155.i.i1330.prol ]
  %.333153.i.i1332.unr = phi ptr [ %.333153.i.i1332.ph, %.lr.ph155.i.i1330.preheader ], [ %i.njo, %.lr.ph155.i.i1330.prol ]
  %.337152.i.i1333.unr = phi i32 [ %.337152.i.i1333.ph, %.lr.ph155.i.i1330.preheader ], [ %i.njp, %.lr.ph155.i.i1330.prol ]
  %i.njq = icmp eq i32 %i.lfd, %.neg11053
  br i1 %i.njq, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph155.i.i1330

bb.jl:                                            ; preds = %bb.jl, %.lr.ph148.i.i1335
  %.2146.i.i1336 = phi ptr [ %.1.lcssa.i80.i1325, %.lr.ph148.i.i1335 ], [ %i.nla, %bb.jl ] ; 2 uses
  %.232145.i.i1337 = phi ptr [ %.131.lcssa.i.i1324, %.lr.ph148.i.i1335 ], [ %i.nlb, %bb.jl ] ; 2 uses
  %.236144.i.i1338 = phi i32 [ %.135.lcssa.i79.i1323, %.lr.ph148.i.i1335 ], [ %i.nlc, %bb.jl ]
  %i.njr = load i64, ptr %.2146.i.i1336, align 1, !tbaa !555
  %i.njs = insertelement <2 x i64> poison, i64 %i.njr, i64 0
  %i.njt = bitcast <2 x i64> %i.njs to <8 x i16>
  %i.nju = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.njt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.njv = bitcast <8 x i16> %i.nju to <4 x float>
  %i.njw = fmul fast <4 x float> %i.nga, %i.njv
  %i.njx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.njw, <4 x float> splat (float f0x42B0C0A5))
  %i.njy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.njx, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.njz = fmul fast <4 x float> %i.njy, splat (float f0x3FB8AA3B)
  %i.nka = fadd fast <4 x float> %i.njz, splat (float 5.000000e-01) ; 2 uses
  %i.nkb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nka)
  %i.nkc = sitofp fast <4 x i32> %i.nkb to <4 x float> ; 2 uses
  %i.nkd = fcmp fast olt <4 x float> %i.nka, %i.nkc
  %i.nke = select <4 x i1> %i.nkd, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.nkf = fsub fast <4 x float> %i.nkc, %i.nke   ; 2 uses
  %i.nkg = fneg fast <4 x float> %i.nkf           ; 2 uses
  %i.nkh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.nkg, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.njy)
  %i.nki = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.nkg, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.nkh) ; 8 uses
  %i.nkj = fmul fast <4 x float> %i.nki, %i.nki
  %i.nkk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nki, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.nkl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nkk, <4 x float> nofpclass(nan inf) %i.nki, <4 x float> splat (float f0x3C088908))
  %i.nkm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nkl, <4 x float> nofpclass(nan inf) %i.nki, <4 x float> splat (float f0x3D2AA9C1))
  %i.nkn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nkm, <4 x float> nofpclass(nan inf) %i.nki, <4 x float> splat (float f0x3E2AAAAA))
  %i.nko = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nkn, <4 x float> nofpclass(nan inf) %i.nki, <4 x float> splat (float 5.000000e-01))
  %i.nkp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nko, <4 x float> nofpclass(nan inf) %i.nkj, <4 x float> nofpclass(nan inf) %i.nki)
  %i.nkq = fadd fast <4 x float> %i.nkp, splat (float 1.000000e+00)
  %i.nkr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nkf)
  %i.nks = shl <4 x i32> %i.nkr, splat (i32 23)
  %i.nkt = add <4 x i32> %i.nks, splat (i32 1065353216)
  %i.nku = bitcast <4 x i32> %i.nkt to <4 x float>
  %i.nkv = fmul fast <4 x float> %i.nkq, %i.nku
  %i.nkw = shufflevector <4 x float> %i.nkv, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.nkx = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.nkw)
  %i.nky = bitcast <8 x bfloat> %i.nkx to <2 x i64>
  %i.nkz = extractelement <2 x i64> %i.nky, i64 0
  store i64 %i.nkz, ptr %.232145.i.i1337, align 1, !tbaa !555
  %i.nla = getelementptr inbounds nuw i8, ptr %.2146.i.i1336, i64 8 ; 2 uses
  %i.nlb = getelementptr inbounds nuw i8, ptr %.232145.i.i1337, i64 8 ; 2 uses
  %i.nlc = add nuw nsw i32 %.236144.i.i1338, 4    ; 3 uses
  %i.nld = or disjoint i32 %i.nlc, 3
  %i.nle = icmp slt i32 %i.nld, %i.lfd
  br i1 %i.nle, label %bb.jl, label %.preheader.i81.i1326, !llvm.loop !304

.lr.ph155.i.i1330:                                ; preds = %.lr.ph155.i.i1330.prol.loopexit, %.lr.ph155.i.i1330
  %.3154.i.i1331 = phi ptr [ %i.nlp, %.lr.ph155.i.i1330 ], [ %.3154.i.i1331.unr, %.lr.ph155.i.i1330.prol.loopexit ] ; 3 uses
  %.333153.i.i1332 = phi ptr [ %i.nly, %.lr.ph155.i.i1330 ], [ %.333153.i.i1332.unr, %.lr.ph155.i.i1330.prol.loopexit ] ; 3 uses
  %.337152.i.i1333 = phi i32 [ %i.nlz, %.lr.ph155.i.i1330 ], [ %.337152.i.i1333.unr, %.lr.ph155.i.i1330.prol.loopexit ]
  %i.nlf = getelementptr inbounds nuw i8, ptr %.3154.i.i1331, i64 2
  %i.nlg = load i16, ptr %.3154.i.i1331, align 2, !tbaa !558
  %i.nlh = zext i16 %i.nlg to i32
  %i.nli = shl nuw i32 %i.nlh, 16
  %i.nlj = bitcast i32 %i.nli to float
  %i.nlk = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mzq, float %i.nlj)
  %i.nll = bitcast float %i.nlk to i32
  %i.nlm = lshr i32 %i.nll, 16
  %i.nln = trunc nuw i32 %i.nlm to i16
  %i.nlo = getelementptr inbounds nuw i8, ptr %.333153.i.i1332, i64 2
  store i16 %i.nln, ptr %.333153.i.i1332, align 2, !tbaa !558
  %i.nlp = getelementptr inbounds nuw i8, ptr %.3154.i.i1331, i64 4
  %i.nlq = load i16, ptr %i.nlf, align 2, !tbaa !558
  %i.nlr = zext i16 %i.nlq to i32
  %i.nls = shl nuw i32 %i.nlr, 16
  %i.nlt = bitcast i32 %i.nls to float
  %i.nlu = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.mzq, float %i.nlt)
  %i.nlv = bitcast float %i.nlu to i32
  %i.nlw = lshr i32 %i.nlv, 16
  %i.nlx = trunc nuw i32 %i.nlw to i16
  %i.nly = getelementptr inbounds nuw i8, ptr %.333153.i.i1332, i64 4
  store i16 %i.nlx, ptr %i.nlo, align 2, !tbaa !558
  %i.nlz = add nuw nsw i32 %.337152.i.i1333, 2    ; 2 uses
  %exitcond.not.i84.i1334.1 = icmp eq i32 %i.nlz, %i.lfd
  br i1 %exitcond.not.i84.i1334.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph155.i.i1330, !llvm.loop !305

bb.jm:                                            ; preds = %bb.jh
  %i.nma = icmp eq i32 %3, 1
  br i1 %i.nma, label %bb.jn, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.jn:                                            ; preds = %bb.jm
  switch i32 %.sroa.speculated.i1301, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 16, label %bb.jo
    i32 8, label %bb.jp
    i32 4, label %bb.jq
  ]

bb.jo:                                            ; preds = %bb.jn
  %i.nmb = load <16 x bfloat>, ptr %0, align 1, !tbaa !555
  %i.nmc = fpext fast <16 x bfloat> %i.nmb to <16 x float>
  br label %.lr.ph173.i.i1312

.lr.ph173.i.i1312:                                ; preds = %.lr.ph173.i.i1312, %bb.jo
  %.028172.i.i1313 = phi ptr [ %i.nom, %.lr.ph173.i.i1312 ], [ %1, %bb.jo ] ; 2 uses
  %.030171.i.i1314 = phi ptr [ %i.non, %.lr.ph173.i.i1312 ], [ %2, %bb.jo ] ; 2 uses
  %.033170.i.i1315 = phi i32 [ %i.noo, %.lr.ph173.i.i1312 ], [ 0, %bb.jo ]
  %i.nmd = load i16, ptr %.028172.i.i1313, align 2, !tbaa !558
  %i.nme = zext i16 %i.nmd to i32
  %i.nmf = shl nuw i32 %i.nme, 16
  %i.nmg = insertelement <16 x i32> poison, i32 %i.nmf, i64 0
  %i.nmh = bitcast <16 x i32> %i.nmg to <16 x float>
  %i.nmi = shufflevector <16 x float> %i.nmh, <16 x float> poison, <16 x i32> zeroinitializer
  %i.nmj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.nmi, <16 x float> splat (float f0x00800000), i32 4)
  %i.nmk = bitcast <16 x float> %i.nmj to <16 x i32> ; 2 uses
  %i.nml = lshr <16 x i32> %i.nmk, splat (i32 23)
  %i.nmm = and <16 x i32> %i.nmk, splat (i32 -2139095041)
  %i.nmn = or disjoint <16 x i32> %i.nmm, splat (i32 1056964608)
  %i.nmo = bitcast <16 x i32> %i.nmn to <16 x float> ; 3 uses
  %i.nmp = add nsw <16 x i32> %i.nml, splat (i32 -127)
  %i.nmq = sitofp fast <16 x i32> %i.nmp to <16 x float> ; 2 uses
  %i.nmr = fadd fast <16 x float> %i.nmq, splat (float 1.000000e+00)
  %i.nms = fcmp fast olt <16 x float> %i.nmo, splat (float f0x3F3504F3) ; 2 uses
  %i.nmt = fadd fast <16 x float> %i.nmo, splat (float -1.000000e+00)
  %i.nmu = select fast <16 x i1> %i.nms, <16 x float> %i.nmq, <16 x float> %i.nmr ; 2 uses
  %i.nmv = select fast <16 x i1> %i.nms, <16 x float> %i.nmo, <16 x float> zeroinitializer
  %i.nmw = fadd fast <16 x float> %i.nmt, %i.nmv  ; 12 uses
  %i.nmx = fmul fast <16 x float> %i.nmw, %i.nmw  ; 2 uses
  %i.nmy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nmw, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.nmz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nmy, <16 x float> nofpclass(nan inf) %i.nmw, <16 x float> splat (float f0x3DEF251A))
  %i.nna = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nmz, <16 x float> nofpclass(nan inf) %i.nmw, <16 x float> splat (float f0xBDFE5D4F))
  %i.nnb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nna, <16 x float> nofpclass(nan inf) %i.nmw, <16 x float> splat (float f0x3E11E9BF))
  %i.nnc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nnb, <16 x float> nofpclass(nan inf) %i.nmw, <16 x float> splat (float f0xBE2AAE50))
  %i.nnd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nnc, <16 x float> nofpclass(nan inf) %i.nmw, <16 x float> splat (float f0x3E4CCEAC))
  %i.nne = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nnd, <16 x float> nofpclass(nan inf) %i.nmw, <16 x float> splat (float f0xBE7FFFFC))
  %i.nnf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nne, <16 x float> nofpclass(nan inf) %i.nmw, <16 x float> splat (float f0x3EAAAAAA))
  %i.nng = fmul fast <16 x float> %i.nmx, %i.nmw
  %i.nnh = fmul fast <16 x float> %i.nng, %i.nnf
  %i.nni = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nmu, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.nnh)
  %i.nnj = fneg fast <16 x float> %i.nmx
  %i.nnk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.nnj, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.nni)
  %i.nnl = fadd fast <16 x float> %i.nnk, %i.nmw
  %i.nnm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nmu, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.nnl)
  %i.nnn = fmul fast <16 x float> %i.nnm, %i.nmc
  %i.nno = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.nnn, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.nnp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.nno, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.nnq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nnp, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.nnr = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.nnq, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.nns = fcmp fast ogt <16 x float> %i.nnr, %i.nnq
  %i.nnt = fadd fast <16 x float> %i.nnr, splat (float -1.000000e+00)
  %i.nnu = select fast <16 x i1> %i.nns, <16 x float> %i.nnt, <16 x float> %i.nnr ; 2 uses
  %i.nnv = fneg fast <16 x float> %i.nnu          ; 2 uses
  %i.nnw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.nnv, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.nnp)
  %i.nnx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.nnv, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.nnw) ; 8 uses
  %i.nny = fmul fast <16 x float> %i.nnx, %i.nnx
  %i.nnz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nnx, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.noa = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nnz, <16 x float> nofpclass(nan inf) %i.nnx, <16 x float> splat (float f0x3C088908))
  %i.nob = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.noa, <16 x float> nofpclass(nan inf) %i.nnx, <16 x float> splat (float f0x3D2AA9C1))
  %i.noc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nob, <16 x float> nofpclass(nan inf) %i.nnx, <16 x float> splat (float f0x3E2AAAAA))
  %i.nod = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.noc, <16 x float> nofpclass(nan inf) %i.nnx, <16 x float> splat (float 5.000000e-01))
end_hunk_4
begin_hunk_5_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
.lr.ph.i42.i1499:                                 ; preds = %bb.ka
  %i.ofk = fcmp fast one <16 x float> %i.ofi, zeroinitializer
  %i.ofl = fcmp fast olt <16 x float> %i.ofi, zeroinitializer
  %i.ofm = bitcast <16 x float> %i.ofi to <16 x i32>
  %i.ofn = icmp slt <16 x i32> %i.ofm, zeroinitializer
  %i.ofo = select fast <16 x i1> %i.ofn, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.ofp = fdiv fast <16 x float> splat (float 1.000000e+00), %i.ofi
  br label %bb.kb

.preheader136.loopexit.i.i:                       ; preds = %bb.kb
  %i.ofq = and i32 %i.ntz, 2147483632
  br label %.preheader136.i.i

.preheader136.i.i:                                ; preds = %.preheader136.loopexit.i.i, %bb.ka
  %.039.lcssa.i.i1488 = phi i32 [ 0, %bb.ka ], [ %i.ofq, %.preheader136.loopexit.i.i ] ; 3 uses
  %.035.lcssa.i.i1489 = phi ptr [ %2, %bb.ka ], [ %i.ohi, %.preheader136.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i34.i1490 = phi ptr [ %0, %bb.ka ], [ %i.ohh, %.preheader136.loopexit.i.i ] ; 2 uses
  %i.ofr = or disjoint i32 %.039.lcssa.i.i1488, 7
  %i.ofs = icmp slt i32 %i.ofr, %i.ntz
  br i1 %i.ofs, label %.lr.ph145.i40.i, label %.preheader135.i.i

.lr.ph145.i40.i:                                  ; preds = %.preheader136.i.i
  %i.oft = fcmp fast ueq <8 x float> %i.ofg, zeroinitializer ; 2 uses
  %i.ofu = fcmp fast olt <8 x float> %i.ofg, zeroinitializer
  %i.ofv = bitcast <8 x float> %i.ofg to <8 x i32>
  %isneg.inv132.i.i = icmp slt <8 x i32> %i.ofv, zeroinitializer
  %i.ofw = select <8 x i1> %isneg.inv132.i.i, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.ofx = fdiv fast <8 x float> splat (float 1.000000e+00), %i.ofg
  br label %bb.kc

bb.kb:                                            ; preds = %bb.kb, %.lr.ph.i42.i1499
  %.0139.i.i = phi ptr [ %0, %.lr.ph.i42.i1499 ], [ %i.ohh, %bb.kb ] ; 2 uses
  %.035138.i.i = phi ptr [ %2, %.lr.ph.i42.i1499 ], [ %i.ohi, %bb.kb ] ; 2 uses
  %.039137.i.i = phi i32 [ 0, %.lr.ph.i42.i1499 ], [ %i.ohj, %bb.kb ]
  %i.ofy = load <16 x bfloat>, ptr %.0139.i.i, align 1, !tbaa !555 ; 3 uses
  %i.ofz = fpext fast <16 x bfloat> %i.ofy to <16 x float> ; 2 uses
  %i.oga = fcmp fast one <16 x bfloat> %i.ofy, zeroinitializer
  %i.ogb = fcmp fast olt <16 x bfloat> %i.ofy, zeroinitializer
  %i.ogc = select fast <16 x i1> %i.ogb, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.ogd = select fast <16 x i1> %i.ofl, <16 x float> %i.ogc, <16 x float> zeroinitializer
  %i.oge = fmul fast <16 x float> %i.ofz, %i.ofp  ; 2 uses
  %i.ogf = bitcast <16 x float> %i.oge to <16 x i32>
  %i.ogg = and <16 x i32> %i.ogf, splat (i32 -2147483648)
  %i.ogh = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.oge) ; 3 uses
  %i.ogi = fcmp fast ogt <16 x float> %i.ogh, splat (float 1.000000e+00) ; 2 uses
  %i.ogj = select fast <16 x i1> %i.ogi, <16 x float> splat (float -1.000000e+00), <16 x float> %i.ogh
  %i.ogk = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.ogh, <16 x float> splat (float 1.000000e+00))
  %i.ogl = fdiv fast <16 x float> %i.ogj, %i.ogk  ; 3 uses
  %i.ogm = fmul fast <16 x float> %i.ogl, %i.ogl  ; 3 uses
  %i.ogn = fmul fast <16 x float> %i.ogm, %i.ogm  ; 7 uses
  %i.ogo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ogn, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.ogp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ogn, <16 x float> nofpclass(nan inf) %i.ogo, <16 x float> splat (float f0xBE117200))
  %i.ogq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ogn, <16 x float> nofpclass(nan inf) %i.ogp, <16 x float> splat (float f0xBEAAAA53))
  %i.ogr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ogn, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.ogs = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ogn, <16 x float> nofpclass(nan inf) %i.ogr, <16 x float> splat (float f0x3DD9ED24))
  %i.ogt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ogn, <16 x float> nofpclass(nan inf) %i.ogs, <16 x float> splat (float f0x3E4CB974))
  %i.ogu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ogn, <16 x float> nofpclass(nan inf) %i.ogt, <16 x float> splat (float 1.000000e+00))
  %i.ogv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ogm, <16 x float> nofpclass(nan inf) %i.ogq, <16 x float> nofpclass(nan inf) %i.ogu)
  %i.ogw = fmul fast <16 x float> %i.ogv, %i.ogl
  %i.ogx = select fast <16 x i1> %i.ogi, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.ogy = fadd fast <16 x float> %i.ogw, %i.ogx
  %i.ogz = bitcast <16 x float> %i.ogy to <16 x i32>
  %i.oha = or <16 x i32> %i.ogg, %i.ogz
  %i.ohb = bitcast <16 x i32> %i.oha to <16 x float>
  %i.ohc = fadd fast <16 x float> %i.ogd, %i.ohb
  %i.ohd = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.ofz)
  %i.ohe = select <16 x i1> %i.ofk, <16 x float> %i.ohc, <16 x float> %i.ohd
  %i.ohf = select <16 x i1> %i.oga, <16 x float> %i.ohe, <16 x float> %i.ofo
  %i.ohg = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ohf)
  store <16 x bfloat> %i.ohg, ptr %.035138.i.i, align 1, !tbaa !555
  %i.ohh = getelementptr inbounds nuw i8, ptr %.0139.i.i, i64 32 ; 2 uses
  %i.ohi = getelementptr inbounds nuw i8, ptr %.035138.i.i, i64 32 ; 2 uses
  %i.ohj = add nuw nsw i32 %.039137.i.i, 16       ; 2 uses
  %i.ohk = or disjoint i32 %i.ohj, 15
  %i.ohl = icmp slt i32 %i.ohk, %i.ntz
  br i1 %i.ohl, label %bb.kb, label %.preheader136.loopexit.i.i, !llvm.loop !315

.preheader135.i.i:                                ; preds = %bb.kc, %.preheader136.i.i
  %.140.lcssa.i.i1491 = phi i32 [ %.039.lcssa.i.i1488, %.preheader136.i.i ], [ %i.ojk, %bb.kc ] ; 3 uses
  %.136.lcssa.i.i1492 = phi ptr [ %.035.lcssa.i.i1489, %.preheader136.i.i ], [ %i.ojj, %bb.kc ] ; 2 uses
  %.1.lcssa.i35.i1493 = phi ptr [ %.0.lcssa.i34.i1490, %.preheader136.i.i ], [ %i.oji, %bb.kc ] ; 2 uses
  %i.ohm = or disjoint i32 %.140.lcssa.i.i1491, 3
  %i.ohn = icmp slt i32 %i.ohm, %i.ntz
  br i1 %i.ohn, label %.lr.ph152.i.i, label %.preheader.i36.i1494

.lr.ph152.i.i:                                    ; preds = %.preheader135.i.i
  %i.oho = fcmp fast oeq <4 x float> %i.ofh, zeroinitializer ; 2 uses
  %i.ohp = fcmp fast olt <4 x float> %i.ofh, zeroinitializer
  %i.ohq = bitcast <4 x float> %i.ofh to <4 x i32>
  %isneg.inv.i.i = icmp slt <4 x i32> %i.ohq, zeroinitializer
  %i.ohr = select <4 x i1> %isneg.inv.i.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.ohs = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ofh
  br label %bb.kd

bb.kc:                                            ; preds = %bb.kc, %.lr.ph145.i40.i
  %.1144.i41.i = phi ptr [ %.0.lcssa.i34.i1490, %.lr.ph145.i40.i ], [ %i.oji, %bb.kc ] ; 2 uses
  %.136143.i.i = phi ptr [ %.035.lcssa.i.i1489, %.lr.ph145.i40.i ], [ %i.ojj, %bb.kc ] ; 2 uses
  %.140142.i.i = phi i32 [ %.039.lcssa.i.i1488, %.lr.ph145.i40.i ], [ %i.ojk, %bb.kc ]
  %i.oht = load <8 x bfloat>, ptr %.1144.i41.i, align 1, !tbaa !555 ; 3 uses
  %i.ohu = fpext fast <8 x bfloat> %i.oht to <8 x float> ; 2 uses
  %i.ohv = fcmp fast ueq <8 x bfloat> %i.oht, zeroinitializer ; 2 uses
  %.not134.i.i = or <8 x i1> %i.oft, %i.ohv
  %i.ohw = bitcast <8 x float> %i.ohu to <8 x i32>
  %i.ohx = and <8 x i32> %i.ohw, splat (i32 -2147483648)
  %i.ohy = fcmp fast olt <8 x bfloat> %i.oht, zeroinitializer
  %i.ohz = select <8 x i1> %i.ohy, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.oia = select <8 x i1> %i.ofu, <8 x float> %i.ohz, <8 x float> zeroinitializer
  %i.oib = fmul fast <8 x float> %i.ohu, %i.ofx   ; 2 uses
  %i.oic = bitcast <8 x float> %i.oib to <8 x i32>
  %i.oid = and <8 x i32> %i.oic, splat (i32 -2147483648)
  %i.oie = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.oib) ; 3 uses
  %i.oif = fcmp fast ogt <8 x float> %i.oie, splat (float 1.000000e+00) ; 2 uses
  %i.oig = select <8 x i1> %i.oif, <8 x float> splat (float -1.000000e+00), <8 x float> %i.oie
  %i.oih = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.oie, <8 x float> splat (float 1.000000e+00))
  %i.oii = fdiv fast <8 x float> %i.oig, %i.oih   ; 3 uses
  %i.oij = fmul fast <8 x float> %i.oii, %i.oii   ; 3 uses
  %i.oik = fmul fast <8 x float> %i.oij, %i.oij   ; 7 uses
  %i.oil = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oik, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.oim = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oik, <8 x float> nofpclass(nan inf) %i.oil, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.oin = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oik, <8 x float> nofpclass(nan inf) %i.oim, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.oio = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oik, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.oip = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oik, <8 x float> nofpclass(nan inf) %i.oio, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.oiq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oik, <8 x float> nofpclass(nan inf) %i.oip, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.oir = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oik, <8 x float> nofpclass(nan inf) %i.oiq, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.ois = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oij, <8 x float> nofpclass(nan inf) %i.oin, <8 x float> nofpclass(nan inf) %i.oir)
  %i.oit = fmul fast <8 x float> %i.ois, %i.oii
  %i.oiu = select <8 x i1> %i.oif, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.oiv = fadd fast <8 x float> %i.oit, %i.oiu
  %i.oiw = bitcast <8 x float> %i.oiv to <8 x i32>
  %i.oix = or <8 x i32> %i.oid, %i.oiw
  %i.oiy = bitcast <8 x i32> %i.oix to <8 x float>
  %i.oiz = fadd fast <8 x float> %i.oia, %i.oiy
  %i.oja = or disjoint <8 x i32> %i.ohx, splat (i32 1070141403)
  %i.ojb = bitcast <8 x float> %i.oiz to <8 x i32>
  %i.ojc = select <8 x i1> %.not134.i.i, <8 x i32> zeroinitializer, <8 x i32> %i.ojb
  %i.ojd = select <8 x i1> %i.oft, <8 x i32> %i.oja, <8 x i32> zeroinitializer
  %i.oje = select <8 x i1> %i.ohv, <8 x i32> %i.ofw, <8 x i32> %i.ojd
  %i.ojf = or <8 x i32> %i.ojc, %i.oje
  %i.ojg = bitcast <8 x i32> %i.ojf to <8 x float>
  %i.ojh = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ojg)
  store <8 x bfloat> %i.ojh, ptr %.136143.i.i, align 1, !tbaa !555
  %i.oji = getelementptr inbounds nuw i8, ptr %.1144.i41.i, i64 16 ; 2 uses
  %i.ojj = getelementptr inbounds nuw i8, ptr %.136143.i.i, i64 16 ; 2 uses
  %i.ojk = add nuw nsw i32 %.140142.i.i, 8        ; 3 uses
  %i.ojl = or disjoint i32 %i.ojk, 7
  %i.ojm = icmp slt i32 %i.ojl, %i.ntz
  br i1 %i.ojm, label %bb.kc, label %.preheader135.i.i, !llvm.loop !316

.preheader.i36.i1494:                             ; preds = %bb.kd, %.preheader135.i.i
  %.241.lcssa.i.i1495 = phi i32 [ %.140.lcssa.i.i1491, %.preheader135.i.i ], [ %i.opa, %bb.kd ] ; 5 uses
  %.237.lcssa.i.i1496 = phi ptr [ %.136.lcssa.i.i1492, %.preheader135.i.i ], [ %i.ooz, %bb.kd ] ; 6 uses
  %.2.lcssa.i37.i1497 = phi ptr [ %.1.lcssa.i35.i1493, %.preheader135.i.i ], [ %i.ooy, %bb.kd ] ; 6 uses
  %i.ojn = icmp slt i32 %.241.lcssa.i.i1495, %i.ntz
  br i1 %i.ojn, label %iter.check7296, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7296:                                   ; preds = %.preheader.i36.i1494
  %.237.lcssa.i.i14967280 = ptrtoaddr ptr %.237.lcssa.i.i1496 to i64
  %.2.lcssa.i37.i14977279 = ptrtoaddr ptr %.2.lcssa.i37.i1497 to i64
  %i.ojo = xor i32 %.241.lcssa.i.i1495, -1
  %i.ojp = add i32 %i.ntz, %i.ojo                 ; 3 uses
  %i.ojq = zext i32 %i.ojp to i64
  %i.ojr = add nuw nsw i64 %i.ojq, 1              ; 5 uses
  %min.iters.check7281 = icmp ult i32 %i.ojp, 7
  %i.ojs = sub i64 %.2.lcssa.i37.i14977279, %.237.lcssa.i.i14967280
  %diff.check7283 = icmp ugt i64 %i.ojs, -64
  %or.cond9195 = select i1 %min.iters.check7281, i1 true, i1 %diff.check7283
  br i1 %or.cond9195, label %.lr.ph159.i.i.preheader, label %vector.main.loop.iter.check7284

vector.main.loop.iter.check7284:                  ; preds = %iter.check7296
  %min.iters.check7285 = icmp ult i32 %i.ojp, 31
  br i1 %min.iters.check7285, label %vec.epilog.ph7300, label %vector.ph7286

vector.ph7286:                                    ; preds = %vector.main.loop.iter.check7284
  %i.ojt = and i64 %i.ojr, 24
  %n.vec7287 = and i64 %i.ojr, 8589934560         ; 5 uses
  %i.oju = shl nuw nsw i64 %n.vec7287, 1          ; 2 uses
  %i.ojv = getelementptr i8, ptr %.2.lcssa.i37.i1497, i64 %i.oju
  %i.ojw = getelementptr i8, ptr %.237.lcssa.i.i1496, i64 %i.oju
  %i.ojx = trunc i64 %n.vec7287 to i32
  %i.ojy = add i32 %.241.lcssa.i.i1495, %i.ojx
  %i.ojz = insertelement <16 x float> poison, float %i.oem, i64 0
  %i.oka = shufflevector <16 x float> %i.ojz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.okb = insertelement <8 x float> poison, float %i.oem, i64 0
  %i.okc = shufflevector <8 x float> %i.okb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.okd = insertelement <4 x float> poison, float %i.oem, i64 0
  %i.oke = shufflevector <4 x float> %i.okd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.okf = insertelement <2 x float> poison, float %i.oem, i64 0
  %i.okg = shufflevector <2 x float> %i.okf, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7288

vector.body7288:                                  ; preds = %vector.ph7286, %vector.body7288
  %index7289 = phi i64 [ 0, %vector.ph7286 ], [ %index.next7293, %vector.body7288 ] ; 2 uses
  %i.okh = shl i64 %index7289, 1                  ; 2 uses
  %next.gep7290 = getelementptr i8, ptr %.2.lcssa.i37.i1497, i64 %i.okh
  %next.gep7291 = getelementptr i8, ptr %.237.lcssa.i.i1496, i64 %i.okh
  %wide.load7292 = load <32 x i16>, ptr %next.gep7290, align 2, !tbaa !558
  %i.oki = zext <32 x i16> %wide.load7292 to <32 x i32>
  %i.okj = shl nuw <32 x i32> %i.oki, splat (i32 16)
  %i.okk = bitcast <32 x i32> %i.okj to <32 x float> ; 6 uses
  %i.okl = extractelement <32 x float> %i.okk, i64 0
  %i.okm = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.okl, float %i.oem)
  %i.okn = shufflevector <32 x float> %i.okk, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.oko = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.okn, <16 x float> %i.oka)
  %i.okp = shufflevector <32 x float> %i.okk, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.okq = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.okp, <8 x float> %i.okc)
  %i.okr = shufflevector <32 x float> %i.okk, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.oks = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.okr, <4 x float> %i.oke)
  %i.okt = extractelement <32 x float> %i.okk, i64 29
  %i.oku = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.okt, float %i.oem)
  %i.okv = shufflevector <32 x float> %i.okk, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.okw = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.okv, <2 x float> %i.okg)
  %i.okx = insertelement <32 x float> poison, float %i.okm, i64 0
  %i.oky = shufflevector <16 x float> %i.oko, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.okz = shufflevector <32 x float> %i.okx, <32 x float> %i.oky, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ola = shufflevector <8 x float> %i.okq, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.olb = shufflevector <32 x float> %i.okz, <32 x float> %i.ola, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.olc = shufflevector <4 x float> %i.oks, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.old = shufflevector <32 x float> %i.olb, <32 x float> %i.olc, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.ole = insertelement <32 x float> %i.old, float %i.oku, i64 29
  %i.olf = shufflevector <2 x float> %i.okw, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.olg = shufflevector <32 x float> %i.ole, <32 x float> %i.olf, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.olh = bitcast <32 x float> %i.olg to <32 x i32>
  %i.oli = lshr <32 x i32> %i.olh, splat (i32 16)
  %i.olj = trunc nuw <32 x i32> %i.oli to <32 x i16>
  store <32 x i16> %i.olj, ptr %next.gep7291, align 2, !tbaa !558
  %index.next7293 = add nuw i64 %index7289, 32    ; 2 uses
  %i.olk = icmp eq i64 %index.next7293, %n.vec7287
  br i1 %i.olk, label %middle.block7294, label %vector.body7288, !llvm.loop !317

middle.block7294:                                 ; preds = %vector.body7288
  %cmp.n7295 = icmp eq i64 %i.ojr, %n.vec7287
  br i1 %cmp.n7295, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7297

vec.epilog.iter.check7297:                        ; preds = %middle.block7294
  %min.epilog.iters.check7299 = icmp eq i64 %i.ojt, 0
  br i1 %min.epilog.iters.check7299, label %.lr.ph159.i.i.preheader, label %vec.epilog.ph7300, !prof !561

vec.epilog.ph7300:                                ; preds = %vector.main.loop.iter.check7284, %vec.epilog.iter.check7297
  %vec.epilog.resume.val7301 = phi i64 [ %n.vec7287, %vec.epilog.iter.check7297 ], [ 0, %vector.main.loop.iter.check7284 ]
  %n.vec7302 = and i64 %i.ojr, 8589934584         ; 4 uses
  %i.oll = shl nuw nsw i64 %n.vec7302, 1          ; 2 uses
  %i.olm = getelementptr i8, ptr %.2.lcssa.i37.i1497, i64 %i.oll
  %i.oln = getelementptr i8, ptr %.237.lcssa.i.i1496, i64 %i.oll
  %i.olo = trunc i64 %n.vec7302 to i32
  %i.olp = add i32 %.241.lcssa.i.i1495, %i.olo
  %i.olq = insertelement <4 x float> poison, float %i.oem, i64 0
  %i.olr = shufflevector <4 x float> %i.olq, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7303

vec.epilog.vector.body7303:                       ; preds = %vec.epilog.vector.body7303, %vec.epilog.ph7300
  %index7304 = phi i64 [ %vec.epilog.resume.val7301, %vec.epilog.ph7300 ], [ %index.next7308, %vec.epilog.vector.body7303 ] ; 2 uses
  %i.ols = shl i64 %index7304, 1                  ; 2 uses
  %next.gep7305 = getelementptr i8, ptr %.2.lcssa.i37.i1497, i64 %i.ols
  %next.gep7306 = getelementptr i8, ptr %.237.lcssa.i.i1496, i64 %i.ols
  %wide.load7307 = load <8 x i16>, ptr %next.gep7305, align 2, !tbaa !558
  %i.olt = zext <8 x i16> %wide.load7307 to <8 x i32>
  %i.olu = shl nuw <8 x i32> %i.olt, splat (i32 16)
  %i.olv = bitcast <8 x i32> %i.olu to <8 x float> ; 5 uses
  %i.olw = extractelement <8 x float> %i.olv, i64 0
  %i.olx = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.olw, float %i.oem)
  %i.oly = extractelement <8 x float> %i.olv, i64 1
  %i.olz = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oly, float %i.oem)
  %i.oma = extractelement <8 x float> %i.olv, i64 2
  %i.omb = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oma, float %i.oem)
  %i.omc = shufflevector <8 x float> %i.olv, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.omd = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.omc, <4 x float> %i.olr)
  %i.ome = extractelement <8 x float> %i.olv, i64 7
  %i.omf = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ome, float %i.oem)
  %i.omg = insertelement <8 x float> poison, float %i.olx, i64 0
  %i.omh = insertelement <8 x float> %i.omg, float %i.olz, i64 1
  %i.omi = insertelement <8 x float> %i.omh, float %i.omb, i64 2
  %i.omj = shufflevector <4 x float> %i.omd, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.omk = shufflevector <8 x float> %i.omi, <8 x float> %i.omj, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.oml = insertelement <8 x float> %i.omk, float %i.omf, i64 7
  %i.omm = bitcast <8 x float> %i.oml to <8 x i32>
  %i.omn = lshr <8 x i32> %i.omm, splat (i32 16)
  %i.omo = trunc nuw <8 x i32> %i.omn to <8 x i16>
  store <8 x i16> %i.omo, ptr %next.gep7306, align 2, !tbaa !558
  %index.next7308 = add nuw i64 %index7304, 8     ; 2 uses
  %i.omp = icmp eq i64 %index.next7308, %n.vec7302
  br i1 %i.omp, label %vec.epilog.middle.block7309, label %vec.epilog.vector.body7303, !llvm.loop !318

vec.epilog.middle.block7309:                      ; preds = %vec.epilog.vector.body7303
  %cmp.n7310 = icmp eq i64 %i.ojr, %n.vec7302
  br i1 %cmp.n7310, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i.i.preheader

.lr.ph159.i.i.preheader:                          ; preds = %iter.check7296, %vec.epilog.iter.check7297, %vec.epilog.middle.block7309
  %.3158.i.i.ph = phi ptr [ %.2.lcssa.i37.i1497, %iter.check7296 ], [ %i.ojv, %vec.epilog.iter.check7297 ], [ %i.olm, %vec.epilog.middle.block7309 ] ; 3 uses
  %.338157.i.i.ph = phi ptr [ %.237.lcssa.i.i1496, %iter.check7296 ], [ %i.ojw, %vec.epilog.iter.check7297 ], [ %i.oln, %vec.epilog.middle.block7309 ] ; 3 uses
  %.342156.i.i.ph = phi i32 [ %.241.lcssa.i.i1495, %iter.check7296 ], [ %i.ojy, %vec.epilog.iter.check7297 ], [ %i.olp, %vec.epilog.middle.block7309 ] ; 4 uses
  %i.omq = sub i32 %i.ntz, %.342156.i.i.ph
  %.neg11051 = add i32 %.342156.i.i.ph, 1
  %xtraiter10455 = and i32 %i.omq, 1
  %lcmp.mod10456.not = icmp eq i32 %xtraiter10455, 0
  br i1 %lcmp.mod10456.not, label %.lr.ph159.i.i.prol.loopexit, label %.lr.ph159.i.i.prol

.lr.ph159.i.i.prol:                               ; preds = %.lr.ph159.i.i.preheader
  %i.omr = getelementptr inbounds nuw i8, ptr %.3158.i.i.ph, i64 2
  %i.oms = load i16, ptr %.3158.i.i.ph, align 2, !tbaa !558
  %i.omt = zext i16 %i.oms to i32
  %i.omu = shl nuw i32 %i.omt, 16
  %i.omv = bitcast i32 %i.omu to float
  %i.omw = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.omv, float %i.oem)
  %i.omx = bitcast float %i.omw to i32
  %i.omy = lshr i32 %i.omx, 16
  %i.omz = trunc nuw i32 %i.omy to i16
  %i.ona = getelementptr inbounds nuw i8, ptr %.338157.i.i.ph, i64 2
  store i16 %i.omz, ptr %.338157.i.i.ph, align 2, !tbaa !558
  %i.onb = add nuw nsw i32 %.342156.i.i.ph, 1
  br label %.lr.ph159.i.i.prol.loopexit

.lr.ph159.i.i.prol.loopexit:                      ; preds = %.lr.ph159.i.i.prol, %.lr.ph159.i.i.preheader
  %.3158.i.i.unr = phi ptr [ %.3158.i.i.ph, %.lr.ph159.i.i.preheader ], [ %i.omr, %.lr.ph159.i.i.prol ]
  %.338157.i.i.unr = phi ptr [ %.338157.i.i.ph, %.lr.ph159.i.i.preheader ], [ %i.ona, %.lr.ph159.i.i.prol ]
  %.342156.i.i.unr = phi i32 [ %.342156.i.i.ph, %.lr.ph159.i.i.preheader ], [ %i.onb, %.lr.ph159.i.i.prol ]
  %i.onc = icmp eq i32 %i.ntz, %.neg11051
  br i1 %i.onc, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i.i

bb.kd:                                            ; preds = %bb.kd, %.lr.ph152.i.i
  %.2151.i.i = phi ptr [ %.1.lcssa.i35.i1493, %.lr.ph152.i.i ], [ %i.ooy, %bb.kd ] ; 2 uses
  %.237150.i.i = phi ptr [ %.136.lcssa.i.i1492, %.lr.ph152.i.i ], [ %i.ooz, %bb.kd ] ; 2 uses
  %.241149.i.i = phi i32 [ %.140.lcssa.i.i1491, %.lr.ph152.i.i ], [ %i.opa, %bb.kd ]
  %i.ond = load i64, ptr %.2151.i.i, align 1, !tbaa !555
  %i.one = insertelement <2 x i64> poison, i64 %i.ond, i64 0
  %i.onf = bitcast <2 x i64> %i.one to <8 x i16>
  %i.ong = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.onf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.onh = bitcast <8 x i16> %i.ong to <4 x float> ; 3 uses
  %i.oni = fcmp fast oeq <4 x float> %i.onh, zeroinitializer ; 2 uses
  %.not131.i39.i = or <4 x i1> %i.oho, %i.oni
  %i.onj = fcmp fast olt <4 x float> %i.onh, zeroinitializer
  %i.onk = select <4 x i1> %i.onj, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.onl = select <4 x i1> %i.ohp, <4 x float> %i.onk, <4 x float> zeroinitializer
  %i.onm = fmul fast <4 x float> %i.onh, %i.ohs   ; 2 uses
  %i.onn = bitcast <4 x float> %i.onm to <4 x i32>
  %i.ono = and <4 x i32> %i.onn, splat (i32 -2147483648)
  %i.onp = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.onm) ; 3 uses
  %i.onq = fcmp fast ogt <4 x float> %i.onp, splat (float 1.000000e+00) ; 2 uses
  %i.onr = select <4 x i1> %i.onq, <4 x float> splat (float -1.000000e+00), <4 x float> %i.onp
  %i.ons = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.onp, <4 x float> splat (float 1.000000e+00))
  %i.ont = fdiv fast <4 x float> %i.onr, %i.ons   ; 3 uses
  %i.onu = fmul fast <4 x float> %i.ont, %i.ont   ; 3 uses
  %i.onv = fmul fast <4 x float> %i.onu, %i.onu   ; 7 uses
  %i.onw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.onv, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.onx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.onv, <4 x float> nofpclass(nan inf) %i.onw, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.ony = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.onv, <4 x float> nofpclass(nan inf) %i.onx, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.onz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.onv, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.ooa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.onv, <4 x float> nofpclass(nan inf) %i.onz, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.oob = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.onv, <4 x float> nofpclass(nan inf) %i.ooa, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.ooc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.onv, <4 x float> nofpclass(nan inf) %i.oob, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.ood = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.onu, <4 x float> nofpclass(nan inf) %i.ony, <4 x float> nofpclass(nan inf) %i.ooc)
  %i.ooe = fmul fast <4 x float> %i.ood, %i.ont
  %i.oof = select <4 x i1> %i.onq, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.oog = fadd fast <4 x float> %i.ooe, %i.oof
  %i.ooh = bitcast <4 x float> %i.oog to <4 x i32>
  %i.ooi = or <4 x i32> %i.ono, %i.ooh
  %i.ooj = bitcast <4 x i32> %i.ooi to <4 x float>
  %i.ook = fadd fast <4 x float> %i.onl, %i.ooj
  %i.ool = bitcast <8 x i16> %i.ong to <4 x i32>
  %i.oom = and <4 x i32> %i.ool, splat (i32 -2147483648)
  %i.oon = or disjoint <4 x i32> %i.oom, splat (i32 1070141403)
  %i.ooo = bitcast <4 x float> %i.ook to <4 x i32>
  %i.oop = select <4 x i1> %.not131.i39.i, <4 x i32> zeroinitializer, <4 x i32> %i.ooo
  %i.ooq = select <4 x i1> %i.oho, <4 x i32> %i.oon, <4 x i32> zeroinitializer
  %i.oor = select <4 x i1> %i.oni, <4 x i32> %i.ohr, <4 x i32> %i.ooq
  %i.oos = or <4 x i32> %i.oop, %i.oor
  %i.oot = bitcast <4 x i32> %i.oos to <4 x float>
  %i.oou = shufflevector <4 x float> %i.oot, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.oov = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.oou)
  %i.oow = bitcast <8 x bfloat> %i.oov to <2 x i64>
  %i.oox = extractelement <2 x i64> %i.oow, i64 0
  store i64 %i.oox, ptr %.237150.i.i, align 1, !tbaa !555
  %i.ooy = getelementptr inbounds nuw i8, ptr %.2151.i.i, i64 8 ; 2 uses
  %i.ooz = getelementptr inbounds nuw i8, ptr %.237150.i.i, i64 8 ; 2 uses
  %i.opa = add nuw nsw i32 %.241149.i.i, 4        ; 3 uses
  %i.opb = or disjoint i32 %i.opa, 3
  %i.opc = icmp slt i32 %i.opb, %i.ntz
  br i1 %i.opc, label %bb.kd, label %.preheader.i36.i1494, !llvm.loop !319

.lr.ph159.i.i:                                    ; preds = %.lr.ph159.i.i.prol.loopexit, %.lr.ph159.i.i
  %.3158.i.i = phi ptr [ %i.opn, %.lr.ph159.i.i ], [ %.3158.i.i.unr, %.lr.ph159.i.i.prol.loopexit ] ; 3 uses
  %.338157.i.i = phi ptr [ %i.opw, %.lr.ph159.i.i ], [ %.338157.i.i.unr, %.lr.ph159.i.i.prol.loopexit ] ; 3 uses
  %.342156.i.i = phi i32 [ %i.opx, %.lr.ph159.i.i ], [ %.342156.i.i.unr, %.lr.ph159.i.i.prol.loopexit ]
  %i.opd = getelementptr inbounds nuw i8, ptr %.3158.i.i, i64 2
  %i.ope = load i16, ptr %.3158.i.i, align 2, !tbaa !558
  %i.opf = zext i16 %i.ope to i32
  %i.opg = shl nuw i32 %i.opf, 16
  %i.oph = bitcast i32 %i.opg to float
  %i.opi = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oph, float %i.oem)
  %i.opj = bitcast float %i.opi to i32
  %i.opk = lshr i32 %i.opj, 16
  %i.opl = trunc nuw i32 %i.opk to i16
  %i.opm = getelementptr inbounds nuw i8, ptr %.338157.i.i, i64 2
  store i16 %i.opl, ptr %.338157.i.i, align 2, !tbaa !558
  %i.opn = getelementptr inbounds nuw i8, ptr %.3158.i.i, i64 4
  %i.opo = load i16, ptr %i.opd, align 2, !tbaa !558
  %i.opp = zext i16 %i.opo to i32
  %i.opq = shl nuw i32 %i.opp, 16
  %i.opr = bitcast i32 %i.opq to float
  %i.ops = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.opr, float %i.oem)
  %i.opt = bitcast float %i.ops to i32
  %i.opu = lshr i32 %i.opt, 16
  %i.opv = trunc nuw i32 %i.opu to i16
  %i.opw = getelementptr inbounds nuw i8, ptr %.338157.i.i, i64 4
  store i16 %i.opv, ptr %i.opm, align 2, !tbaa !558
  %i.opx = add nuw nsw i32 %.342156.i.i, 2        ; 2 uses
  %exitcond.not.i38.i1498.1 = icmp eq i32 %i.opx, %i.ntz
  br i1 %exitcond.not.i38.i1498.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i.i, !llvm.loop !320

bb.ke:                                            ; preds = %bb.ju
  %i.opy = icmp eq i32 %3, 1
  br i1 %i.opy, label %bb.kf, label %bb.ko

bb.kf:                                            ; preds = %bb.ke
  %i.opz = load i16, ptr %0, align 2, !tbaa !558
  %i.oqa = zext i16 %i.opz to i32
  %i.oqb = shl nuw i32 %i.oqa, 16
  %i.oqc = bitcast i32 %i.oqb to float            ; 15 uses
  %i.oqd = icmp eq i32 %.sroa.speculated.i1470, 4
  br i1 %i.oqd, label %.thread129.i76.i, label %bb.kg

.thread129.i76.i:                                 ; preds = %bb.kf
  %i.oqe = load i64, ptr %0, align 2, !tbaa !555
  %i.oqf = insertelement <2 x i64> poison, i64 %i.oqe, i64 0
  %i.oqg = bitcast <2 x i64> %i.oqf to <8 x i16>
  %i.oqh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.oqg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.oqi = bitcast <8 x i16> %i.oqh to <4 x float> ; 2 uses
  %i.oqj = shufflevector <4 x float> %i.oqi, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.kj

bb.kg:                                            ; preds = %bb.kf
  %i.oqk = insertelement <4 x float> poison, float %i.oqc, i64 0 ; 2 uses
  %i.oql = shufflevector <4 x float> %i.oqk, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.oqm = icmp eq i32 %.sroa.speculated.i1470, 8
  br i1 %i.oqm, label %.thread128.i75.i, label %bb.kh

.thread128.i75.i:                                 ; preds = %bb.kg
  %i.oqn = load <8 x bfloat>, ptr %0, align 2, !tbaa !555
  %i.oqo = fpext fast <8 x bfloat> %i.oqn to <8 x float>
  br label %bb.kj

bb.kh:                                            ; preds = %bb.kg
  %i.oqp = shufflevector <4 x float> %i.oqk, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.oqq = icmp eq i32 %.sroa.speculated.i1470, 16
  br i1 %i.oqq, label %bb.ki, label %bb.kj

bb.ki:                                            ; preds = %bb.kh
  %i.oqr = load <16 x bfloat>, ptr %0, align 2, !tbaa !555
  %i.oqs = fpext fast <16 x bfloat> %i.oqr to <16 x float>
  br label %bb.kk

bb.kj:                                            ; preds = %bb.kh, %.thread128.i75.i, %.thread129.i76.i
  %i.oqt = phi <8 x float> [ %i.oqo, %.thread128.i75.i ], [ %i.oqp, %bb.kh ], [ %i.oqj, %.thread129.i76.i ] ; 2 uses
  %i.oqu = phi <4 x float> [ %i.oql, %.thread128.i75.i ], [ %i.oql, %bb.kh ], [ %i.oqi, %.thread129.i76.i ]
  %i.oqv = shufflevector <8 x float> %i.oqt, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %bb.ki
  %i.oqw = phi <8 x float> [ %i.oqp, %bb.ki ], [ %i.oqt, %bb.kj ] ; 4 uses
  %i.oqx = phi <4 x float> [ %i.oql, %bb.ki ], [ %i.oqu, %bb.kj ] ; 4 uses
  %i.oqy = phi fast <16 x float> [ %i.oqs, %bb.ki ], [ %i.oqv, %bb.kj ] ; 4 uses
  %i.oqz = icmp sgt i32 %i.ntz, 15
  br i1 %i.oqz, label %.lr.ph.i70.i, label %.preheader136.i43.i

.lr.ph.i70.i:                                     ; preds = %bb.kk
  %i.ora = fcmp fast one <16 x float> %i.oqy, zeroinitializer
  %i.orb = fcmp fast olt <16 x float> %i.oqy, zeroinitializer
  %i.orc = select fast <16 x i1> %i.orb, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.ord = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.oqy)
  br label %bb.kl

.preheader136.loopexit.i74.i:                     ; preds = %bb.kl
  %i.ore = and i32 %i.ntz, 2147483632
  br label %.preheader136.i43.i

.preheader136.i43.i:                              ; preds = %.preheader136.loopexit.i74.i, %bb.kk
  %.039.lcssa.i44.i1478 = phi i32 [ 0, %bb.kk ], [ %i.ore, %.preheader136.loopexit.i74.i ] ; 3 uses
  %.035.lcssa.i45.i1479 = phi ptr [ %2, %bb.kk ], [ %i.osy, %.preheader136.loopexit.i74.i ] ; 2 uses
  %.0.lcssa.i46.i1480 = phi ptr [ %1, %bb.kk ], [ %i.osx, %.preheader136.loopexit.i74.i ] ; 2 uses
  %i.orf = or disjoint i32 %.039.lcssa.i44.i1478, 7
  %i.org = icmp slt i32 %i.orf, %i.ntz
  br i1 %i.org, label %.lr.ph145.i64.i, label %.preheader135.i47.i

.lr.ph145.i64.i:                                  ; preds = %.preheader136.i43.i
  %i.orh = fcmp fast ueq <8 x float> %i.oqw, zeroinitializer ; 2 uses
  %i.ori = bitcast <8 x float> %i.oqw to <8 x i32>
  %i.orj = and <8 x i32> %i.ori, splat (i32 -2147483648)
  %i.ork = fcmp fast olt <8 x float> %i.oqw, zeroinitializer
  %i.orl = select <8 x i1> %i.ork, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.orm = or disjoint <8 x i32> %i.orj, splat (i32 1070141403)
  br label %bb.km

bb.kl:                                            ; preds = %bb.kl, %.lr.ph.i70.i
  %.0139.i71.i = phi ptr [ %1, %.lr.ph.i70.i ], [ %i.osx, %bb.kl ] ; 2 uses
  %.035138.i72.i = phi ptr [ %2, %.lr.ph.i70.i ], [ %i.osy, %bb.kl ] ; 2 uses
  %.039137.i73.i = phi i32 [ 0, %.lr.ph.i70.i ], [ %i.osz, %bb.kl ]
  %i.orn = load <16 x bfloat>, ptr %.0139.i71.i, align 1, !tbaa !555 ; 4 uses
  %i.oro = fpext fast <16 x bfloat> %i.orn to <16 x float>
  %i.orp = fcmp fast one <16 x bfloat> %i.orn, zeroinitializer
  %i.orq = fcmp fast olt <16 x bfloat> %i.orn, zeroinitializer
  %i.orr = select fast <16 x i1> %i.orq, <16 x float> %i.orc, <16 x float> zeroinitializer
  %i.ors = fdiv fast <16 x float> %i.oqy, %i.oro  ; 2 uses
  %i.ort = bitcast <16 x float> %i.ors to <16 x i32>
  %i.oru = and <16 x i32> %i.ort, splat (i32 -2147483648)
  %i.orv = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.ors) ; 3 uses
  %i.orw = fcmp fast ogt <16 x float> %i.orv, splat (float 1.000000e+00) ; 2 uses
  %i.orx = select fast <16 x i1> %i.orw, <16 x float> splat (float -1.000000e+00), <16 x float> %i.orv
  %i.ory = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.orv, <16 x float> splat (float 1.000000e+00))
  %i.orz = fdiv fast <16 x float> %i.orx, %i.ory  ; 3 uses
  %i.osa = fmul fast <16 x float> %i.orz, %i.orz  ; 3 uses
  %i.osb = fmul fast <16 x float> %i.osa, %i.osa  ; 7 uses
  %i.osc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.osb, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.osd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.osb, <16 x float> nofpclass(nan inf) %i.osc, <16 x float> splat (float f0xBE117200))
  %i.ose = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.osb, <16 x float> nofpclass(nan inf) %i.osd, <16 x float> splat (float f0xBEAAAA53))
  %i.osf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.osb, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.osg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.osb, <16 x float> nofpclass(nan inf) %i.osf, <16 x float> splat (float f0x3DD9ED24))
  %i.osh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.osb, <16 x float> nofpclass(nan inf) %i.osg, <16 x float> splat (float f0x3E4CB974))
  %i.osi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.osb, <16 x float> nofpclass(nan inf) %i.osh, <16 x float> splat (float 1.000000e+00))
  %i.osj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.osa, <16 x float> nofpclass(nan inf) %i.ose, <16 x float> nofpclass(nan inf) %i.osi)
  %i.osk = fmul fast <16 x float> %i.osj, %i.orz
  %i.osl = select fast <16 x i1> %i.orw, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.osm = fadd fast <16 x float> %i.osk, %i.osl
  %i.osn = bitcast <16 x float> %i.osm to <16 x i32>
  %i.oso = or <16 x i32> %i.oru, %i.osn
  %i.osp = bitcast <16 x i32> %i.oso to <16 x float>
  %i.osq = fadd fast <16 x float> %i.orr, %i.osp
  %i.osr = bitcast <16 x bfloat> %i.orn to <16 x i16>
  %i.oss = icmp slt <16 x i16> %i.osr, zeroinitializer
  %i.ost = select fast <16 x i1> %i.oss, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.osu = select <16 x i1> %i.orp, <16 x float> %i.osq, <16 x float> %i.ord
  %i.osv = select <16 x i1> %i.ora, <16 x float> %i.osu, <16 x float> %i.ost
  %i.osw = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.osv)
  store <16 x bfloat> %i.osw, ptr %.035138.i72.i, align 1, !tbaa !555
  %i.osx = getelementptr inbounds nuw i8, ptr %.0139.i71.i, i64 32 ; 2 uses
  %i.osy = getelementptr inbounds nuw i8, ptr %.035138.i72.i, i64 32 ; 2 uses
  %i.osz = add nuw nsw i32 %.039137.i73.i, 16     ; 2 uses
  %i.ota = or disjoint i32 %i.osz, 15
  %i.otb = icmp slt i32 %i.ota, %i.ntz
  br i1 %i.otb, label %bb.kl, label %.preheader136.loopexit.i74.i, !llvm.loop !321

.preheader135.i47.i:                              ; preds = %bb.km, %.preheader136.i43.i
  %.140.lcssa.i48.i1481 = phi i32 [ %.039.lcssa.i44.i1478, %.preheader136.i43.i ], [ %i.ouz, %bb.km ] ; 3 uses
  %.136.lcssa.i49.i1482 = phi ptr [ %.035.lcssa.i45.i1479, %.preheader136.i43.i ], [ %i.ouy, %bb.km ] ; 2 uses
  %.1.lcssa.i50.i1483 = phi ptr [ %.0.lcssa.i46.i1480, %.preheader136.i43.i ], [ %i.oux, %bb.km ] ; 2 uses
  %i.otc = or disjoint i32 %.140.lcssa.i48.i1481, 3
  %i.otd = icmp slt i32 %i.otc, %i.ntz
  br i1 %i.otd, label %.lr.ph152.i60.i, label %.preheader.i51.i1484

.lr.ph152.i60.i:                                  ; preds = %.preheader135.i47.i
  %i.ote = fcmp fast oeq <4 x float> %i.oqx, zeroinitializer ; 2 uses
  %i.otf = bitcast <4 x float> %i.oqx to <4 x i32>
  %i.otg = and <4 x i32> %i.otf, splat (i32 -2147483648)
  %i.oth = fcmp fast olt <4 x float> %i.oqx, zeroinitializer
  %i.oti = select <4 x i1> %i.oth, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.otj = or disjoint <4 x i32> %i.otg, splat (i32 1070141403)
  br label %bb.kn

bb.km:                                            ; preds = %bb.km, %.lr.ph145.i64.i
  %.1144.i65.i = phi ptr [ %.0.lcssa.i46.i1480, %.lr.ph145.i64.i ], [ %i.oux, %bb.km ] ; 2 uses
  %.136143.i66.i = phi ptr [ %.035.lcssa.i45.i1479, %.lr.ph145.i64.i ], [ %i.ouy, %bb.km ] ; 2 uses
  %.140142.i67.i = phi i32 [ %.039.lcssa.i44.i1478, %.lr.ph145.i64.i ], [ %i.ouz, %bb.km ]
  %i.otk = load <8 x bfloat>, ptr %.1144.i65.i, align 1, !tbaa !555 ; 4 uses
  %i.otl = fpext fast <8 x bfloat> %i.otk to <8 x float>
  %i.otm = fcmp fast ueq <8 x bfloat> %i.otk, zeroinitializer ; 2 uses
  %.not134.i68.i = or <8 x i1> %i.orh, %i.otm
  %i.otn = fcmp fast olt <8 x bfloat> %i.otk, zeroinitializer
  %i.oto = select <8 x i1> %i.otn, <8 x float> %i.orl, <8 x float> zeroinitializer
  %i.otp = fdiv fast <8 x float> %i.oqw, %i.otl   ; 2 uses
  %i.otq = bitcast <8 x float> %i.otp to <8 x i32>
  %i.otr = and <8 x i32> %i.otq, splat (i32 -2147483648)
  %i.ots = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.otp) ; 3 uses
  %i.ott = fcmp fast ogt <8 x float> %i.ots, splat (float 1.000000e+00) ; 2 uses
  %i.otu = select <8 x i1> %i.ott, <8 x float> splat (float -1.000000e+00), <8 x float> %i.ots
  %i.otv = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ots, <8 x float> splat (float 1.000000e+00))
  %i.otw = fdiv fast <8 x float> %i.otu, %i.otv   ; 3 uses
  %i.otx = fmul fast <8 x float> %i.otw, %i.otw   ; 3 uses
  %i.oty = fmul fast <8 x float> %i.otx, %i.otx   ; 7 uses
  %i.otz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oty, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.oua = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oty, <8 x float> nofpclass(nan inf) %i.otz, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.oub = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oty, <8 x float> nofpclass(nan inf) %i.oua, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.ouc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oty, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.oud = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oty, <8 x float> nofpclass(nan inf) %i.ouc, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.oue = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oty, <8 x float> nofpclass(nan inf) %i.oud, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.ouf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oty, <8 x float> nofpclass(nan inf) %i.oue, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.oug = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.otx, <8 x float> nofpclass(nan inf) %i.oub, <8 x float> nofpclass(nan inf) %i.ouf)
  %i.ouh = fmul fast <8 x float> %i.oug, %i.otw
  %i.oui = select <8 x i1> %i.ott, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.ouj = fadd fast <8 x float> %i.ouh, %i.oui
  %i.ouk = bitcast <8 x float> %i.ouj to <8 x i32>
  %i.oul = or <8 x i32> %i.otr, %i.ouk
  %i.oum = bitcast <8 x i32> %i.oul to <8 x float>
  %i.oun = fadd fast <8 x float> %i.oto, %i.oum
  %i.ouo = bitcast <8 x bfloat> %i.otk to <8 x i16>
  %isneg.i69.i = icmp sgt <8 x i16> %i.ouo, splat (i16 -1)
  %i.oup = select <8 x i1> %isneg.i69.i, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.ouq = bitcast <8 x float> %i.oun to <8 x i32>
  %i.our = select <8 x i1> %.not134.i68.i, <8 x i32> zeroinitializer, <8 x i32> %i.ouq
  %i.ous = select <8 x i1> %i.otm, <8 x i32> %i.orm, <8 x i32> zeroinitializer
  %i.out = select <8 x i1> %i.orh, <8 x i32> %i.oup, <8 x i32> %i.ous
  %i.ouu = or <8 x i32> %i.our, %i.out
  %i.ouv = bitcast <8 x i32> %i.ouu to <8 x float>
  %i.ouw = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ouv)
  store <8 x bfloat> %i.ouw, ptr %.136143.i66.i, align 1, !tbaa !555
  %i.oux = getelementptr inbounds nuw i8, ptr %.1144.i65.i, i64 16 ; 2 uses
  %i.ouy = getelementptr inbounds nuw i8, ptr %.136143.i66.i, i64 16 ; 2 uses
  %i.ouz = add nuw nsw i32 %.140142.i67.i, 8      ; 3 uses
  %i.ova = or disjoint i32 %i.ouz, 7
  %i.ovb = icmp slt i32 %i.ova, %i.ntz
  br i1 %i.ovb, label %bb.km, label %.preheader135.i47.i, !llvm.loop !322

.preheader.i51.i1484:                             ; preds = %bb.kn, %.preheader135.i47.i
  %.241.lcssa.i52.i1485 = phi i32 [ %.140.lcssa.i48.i1481, %.preheader135.i47.i ], [ %i.par, %bb.kn ] ; 5 uses
  %.237.lcssa.i53.i1486 = phi ptr [ %.136.lcssa.i49.i1482, %.preheader135.i47.i ], [ %i.paq, %bb.kn ] ; 6 uses
  %.2.lcssa.i54.i1487 = phi ptr [ %.1.lcssa.i50.i1483, %.preheader135.i47.i ], [ %i.pap, %bb.kn ] ; 6 uses
  %i.ovc = icmp slt i32 %.241.lcssa.i52.i1485, %i.ntz
  br i1 %i.ovc, label %iter.check7257, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7257:                                   ; preds = %.preheader.i51.i1484
  %.237.lcssa.i53.i14867241 = ptrtoaddr ptr %.237.lcssa.i53.i1486 to i64
  %.2.lcssa.i54.i14877240 = ptrtoaddr ptr %.2.lcssa.i54.i1487 to i64
  %i.ovd = xor i32 %.241.lcssa.i52.i1485, -1
  %i.ove = add i32 %i.ntz, %i.ovd                 ; 3 uses
  %i.ovf = zext i32 %i.ove to i64
  %i.ovg = add nuw nsw i64 %i.ovf, 1              ; 5 uses
  %min.iters.check7242 = icmp ult i32 %i.ove, 7
  %i.ovh = sub i64 %.2.lcssa.i54.i14877240, %.237.lcssa.i53.i14867241
  %diff.check7244 = icmp ugt i64 %i.ovh, -64
  %or.cond9196 = select i1 %min.iters.check7242, i1 true, i1 %diff.check7244
  br i1 %or.cond9196, label %.lr.ph159.i55.i.preheader, label %vector.main.loop.iter.check7245

vector.main.loop.iter.check7245:                  ; preds = %iter.check7257
  %min.iters.check7246 = icmp ult i32 %i.ove, 31
  br i1 %min.iters.check7246, label %vec.epilog.ph7261, label %vector.ph7247

vector.ph7247:                                    ; preds = %vector.main.loop.iter.check7245
  %i.ovi = and i64 %i.ovg, 24
  %n.vec7248 = and i64 %i.ovg, 8589934560         ; 5 uses
  %i.ovj = shl nuw nsw i64 %n.vec7248, 1          ; 2 uses
  %i.ovk = getelementptr i8, ptr %.2.lcssa.i54.i1487, i64 %i.ovj
  %i.ovl = getelementptr i8, ptr %.237.lcssa.i53.i1486, i64 %i.ovj
  %i.ovm = trunc i64 %n.vec7248 to i32
  %i.ovn = add i32 %.241.lcssa.i52.i1485, %i.ovm
  %i.ovo = insertelement <16 x float> poison, float %i.oqc, i64 0
  %i.ovp = shufflevector <16 x float> %i.ovo, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ovq = insertelement <8 x float> poison, float %i.oqc, i64 0
  %i.ovr = shufflevector <8 x float> %i.ovq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ovs = insertelement <4 x float> poison, float %i.oqc, i64 0
  %i.ovt = shufflevector <4 x float> %i.ovs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ovu = insertelement <2 x float> poison, float %i.oqc, i64 0
  %i.ovv = shufflevector <2 x float> %i.ovu, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7249

vector.body7249:                                  ; preds = %vector.ph7247, %vector.body7249
  %index7250 = phi i64 [ 0, %vector.ph7247 ], [ %index.next7254, %vector.body7249 ] ; 2 uses
  %i.ovw = shl i64 %index7250, 1                  ; 2 uses
  %next.gep7251 = getelementptr i8, ptr %.2.lcssa.i54.i1487, i64 %i.ovw
  %next.gep7252 = getelementptr i8, ptr %.237.lcssa.i53.i1486, i64 %i.ovw
  %wide.load7253 = load <32 x i16>, ptr %next.gep7251, align 2, !tbaa !558
  %i.ovx = zext <32 x i16> %wide.load7253 to <32 x i32>
  %i.ovy = shl nuw <32 x i32> %i.ovx, splat (i32 16)
  %i.ovz = bitcast <32 x i32> %i.ovy to <32 x float> ; 6 uses
  %i.owa = extractelement <32 x float> %i.ovz, i64 0
  %i.owb = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oqc, float %i.owa)
  %i.owc = shufflevector <32 x float> %i.ovz, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.owd = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.ovp, <16 x float> %i.owc)
  %i.owe = shufflevector <32 x float> %i.ovz, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.owf = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.ovr, <8 x float> %i.owe)
  %i.owg = shufflevector <32 x float> %i.ovz, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.owh = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.ovt, <4 x float> %i.owg)
  %i.owi = extractelement <32 x float> %i.ovz, i64 29
  %i.owj = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oqc, float %i.owi)
  %i.owk = shufflevector <32 x float> %i.ovz, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.owl = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.ovv, <2 x float> %i.owk)
  %i.owm = insertelement <32 x float> poison, float %i.owb, i64 0
  %i.own = shufflevector <16 x float> %i.owd, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.owo = shufflevector <32 x float> %i.owm, <32 x float> %i.own, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.owp = shufflevector <8 x float> %i.owf, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.owq = shufflevector <32 x float> %i.owo, <32 x float> %i.owp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.owr = shufflevector <4 x float> %i.owh, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ows = shufflevector <32 x float> %i.owq, <32 x float> %i.owr, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.owt = insertelement <32 x float> %i.ows, float %i.owj, i64 29
  %i.owu = shufflevector <2 x float> %i.owl, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.owv = shufflevector <32 x float> %i.owt, <32 x float> %i.owu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.oww = bitcast <32 x float> %i.owv to <32 x i32>
  %i.owx = lshr <32 x i32> %i.oww, splat (i32 16)
  %i.owy = trunc nuw <32 x i32> %i.owx to <32 x i16>
  store <32 x i16> %i.owy, ptr %next.gep7252, align 2, !tbaa !558
  %index.next7254 = add nuw i64 %index7250, 32    ; 2 uses
  %i.owz = icmp eq i64 %index.next7254, %n.vec7248
  br i1 %i.owz, label %middle.block7255, label %vector.body7249, !llvm.loop !323

middle.block7255:                                 ; preds = %vector.body7249
  %cmp.n7256 = icmp eq i64 %i.ovg, %n.vec7248
  br i1 %cmp.n7256, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7258

vec.epilog.iter.check7258:                        ; preds = %middle.block7255
  %min.epilog.iters.check7260 = icmp eq i64 %i.ovi, 0
  br i1 %min.epilog.iters.check7260, label %.lr.ph159.i55.i.preheader, label %vec.epilog.ph7261, !prof !561

vec.epilog.ph7261:                                ; preds = %vector.main.loop.iter.check7245, %vec.epilog.iter.check7258
  %vec.epilog.resume.val7262 = phi i64 [ %n.vec7248, %vec.epilog.iter.check7258 ], [ 0, %vector.main.loop.iter.check7245 ]
  %n.vec7263 = and i64 %i.ovg, 8589934584         ; 4 uses
  %i.oxa = shl nuw nsw i64 %n.vec7263, 1          ; 2 uses
  %i.oxb = getelementptr i8, ptr %.2.lcssa.i54.i1487, i64 %i.oxa
  %i.oxc = getelementptr i8, ptr %.237.lcssa.i53.i1486, i64 %i.oxa
  %i.oxd = trunc i64 %n.vec7263 to i32
  %i.oxe = add i32 %.241.lcssa.i52.i1485, %i.oxd
  %i.oxf = insertelement <4 x float> poison, float %i.oqc, i64 0
  %i.oxg = shufflevector <4 x float> %i.oxf, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7264

vec.epilog.vector.body7264:                       ; preds = %vec.epilog.vector.body7264, %vec.epilog.ph7261
  %index7265 = phi i64 [ %vec.epilog.resume.val7262, %vec.epilog.ph7261 ], [ %index.next7269, %vec.epilog.vector.body7264 ] ; 2 uses
  %i.oxh = shl i64 %index7265, 1                  ; 2 uses
  %next.gep7266 = getelementptr i8, ptr %.2.lcssa.i54.i1487, i64 %i.oxh
  %next.gep7267 = getelementptr i8, ptr %.237.lcssa.i53.i1486, i64 %i.oxh
  %wide.load7268 = load <8 x i16>, ptr %next.gep7266, align 2, !tbaa !558
  %i.oxi = zext <8 x i16> %wide.load7268 to <8 x i32>
  %i.oxj = shl nuw <8 x i32> %i.oxi, splat (i32 16)
  %i.oxk = bitcast <8 x i32> %i.oxj to <8 x float> ; 5 uses
  %i.oxl = extractelement <8 x float> %i.oxk, i64 0
  %i.oxm = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oqc, float %i.oxl)
  %i.oxn = extractelement <8 x float> %i.oxk, i64 1
  %i.oxo = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oqc, float %i.oxn)
  %i.oxp = extractelement <8 x float> %i.oxk, i64 2
  %i.oxq = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oqc, float %i.oxp)
  %i.oxr = shufflevector <8 x float> %i.oxk, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.oxs = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.oxg, <4 x float> %i.oxr)
  %i.oxt = extractelement <8 x float> %i.oxk, i64 7
  %i.oxu = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oqc, float %i.oxt)
  %i.oxv = insertelement <8 x float> poison, float %i.oxm, i64 0
  %i.oxw = insertelement <8 x float> %i.oxv, float %i.oxo, i64 1
  %i.oxx = insertelement <8 x float> %i.oxw, float %i.oxq, i64 2
  %i.oxy = shufflevector <4 x float> %i.oxs, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.oxz = shufflevector <8 x float> %i.oxx, <8 x float> %i.oxy, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.oya = insertelement <8 x float> %i.oxz, float %i.oxu, i64 7
  %i.oyb = bitcast <8 x float> %i.oya to <8 x i32>
  %i.oyc = lshr <8 x i32> %i.oyb, splat (i32 16)
  %i.oyd = trunc nuw <8 x i32> %i.oyc to <8 x i16>
  store <8 x i16> %i.oyd, ptr %next.gep7267, align 2, !tbaa !558
  %index.next7269 = add nuw i64 %index7265, 8     ; 2 uses
  %i.oye = icmp eq i64 %index.next7269, %n.vec7263
  br i1 %i.oye, label %vec.epilog.middle.block7270, label %vec.epilog.vector.body7264, !llvm.loop !324

vec.epilog.middle.block7270:                      ; preds = %vec.epilog.vector.body7264
  %cmp.n7271 = icmp eq i64 %i.ovg, %n.vec7263
  br i1 %cmp.n7271, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i55.i.preheader

.lr.ph159.i55.i.preheader:                        ; preds = %iter.check7257, %vec.epilog.iter.check7258, %vec.epilog.middle.block7270
  %.3158.i56.i.ph = phi ptr [ %.2.lcssa.i54.i1487, %iter.check7257 ], [ %i.ovk, %vec.epilog.iter.check7258 ], [ %i.oxb, %vec.epilog.middle.block7270 ] ; 3 uses
  %.338157.i57.i.ph = phi ptr [ %.237.lcssa.i53.i1486, %iter.check7257 ], [ %i.ovl, %vec.epilog.iter.check7258 ], [ %i.oxc, %vec.epilog.middle.block7270 ] ; 3 uses
  %.342156.i58.i.ph = phi i32 [ %.241.lcssa.i52.i1485, %iter.check7257 ], [ %i.ovn, %vec.epilog.iter.check7258 ], [ %i.oxe, %vec.epilog.middle.block7270 ] ; 4 uses
  %i.oyf = sub i32 %i.ntz, %.342156.i58.i.ph
  %.neg11050 = add i32 %.342156.i58.i.ph, 1
  %xtraiter10453 = and i32 %i.oyf, 1
  %lcmp.mod10454.not = icmp eq i32 %xtraiter10453, 0
  br i1 %lcmp.mod10454.not, label %.lr.ph159.i55.i.prol.loopexit, label %.lr.ph159.i55.i.prol

.lr.ph159.i55.i.prol:                             ; preds = %.lr.ph159.i55.i.preheader
  %i.oyg = getelementptr inbounds nuw i8, ptr %.3158.i56.i.ph, i64 2
  %i.oyh = load i16, ptr %.3158.i56.i.ph, align 2, !tbaa !558
  %i.oyi = zext i16 %i.oyh to i32
  %i.oyj = shl nuw i32 %i.oyi, 16
  %i.oyk = bitcast i32 %i.oyj to float
  %i.oyl = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oqc, float %i.oyk)
  %i.oym = bitcast float %i.oyl to i32
  %i.oyn = lshr i32 %i.oym, 16
  %i.oyo = trunc nuw i32 %i.oyn to i16
  %i.oyp = getelementptr inbounds nuw i8, ptr %.338157.i57.i.ph, i64 2
  store i16 %i.oyo, ptr %.338157.i57.i.ph, align 2, !tbaa !558
  %i.oyq = add nuw nsw i32 %.342156.i58.i.ph, 1
  br label %.lr.ph159.i55.i.prol.loopexit

.lr.ph159.i55.i.prol.loopexit:                    ; preds = %.lr.ph159.i55.i.prol, %.lr.ph159.i55.i.preheader
  %.3158.i56.i.unr = phi ptr [ %.3158.i56.i.ph, %.lr.ph159.i55.i.preheader ], [ %i.oyg, %.lr.ph159.i55.i.prol ]
  %.338157.i57.i.unr = phi ptr [ %.338157.i57.i.ph, %.lr.ph159.i55.i.preheader ], [ %i.oyp, %.lr.ph159.i55.i.prol ]
  %.342156.i58.i.unr = phi i32 [ %.342156.i58.i.ph, %.lr.ph159.i55.i.preheader ], [ %i.oyq, %.lr.ph159.i55.i.prol ]
  %i.oyr = icmp eq i32 %i.ntz, %.neg11050
  br i1 %i.oyr, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i55.i

bb.kn:                                            ; preds = %bb.kn, %.lr.ph152.i60.i
  %.2151.i61.i = phi ptr [ %.1.lcssa.i50.i1483, %.lr.ph152.i60.i ], [ %i.pap, %bb.kn ] ; 2 uses
  %.237150.i62.i = phi ptr [ %.136.lcssa.i49.i1482, %.lr.ph152.i60.i ], [ %i.paq, %bb.kn ] ; 2 uses
  %.241149.i63.i = phi i32 [ %.140.lcssa.i48.i1481, %.lr.ph152.i60.i ], [ %i.par, %bb.kn ]
  %i.oys = load i64, ptr %.2151.i61.i, align 1, !tbaa !555
  %i.oyt = insertelement <2 x i64> poison, i64 %i.oys, i64 0
  %i.oyu = bitcast <2 x i64> %i.oyt to <8 x i16>
  %i.oyv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.oyu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.oyw = bitcast <8 x i16> %i.oyv to <4 x float> ; 3 uses
  %i.oyx = fcmp fast oeq <4 x float> %i.oyw, zeroinitializer ; 2 uses
  %.not132.i.i = or <4 x i1> %i.ote, %i.oyx
  %i.oyy = fcmp fast olt <4 x float> %i.oyw, zeroinitializer
  %i.oyz = select <4 x i1> %i.oyy, <4 x float> %i.oti, <4 x float> zeroinitializer
  %i.oza = fdiv fast <4 x float> %i.oqx, %i.oyw   ; 2 uses
  %i.ozb = bitcast <4 x float> %i.oza to <4 x i32>
  %i.ozc = and <4 x i32> %i.ozb, splat (i32 -2147483648)
  %i.ozd = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oza) ; 3 uses
  %i.oze = fcmp fast ogt <4 x float> %i.ozd, splat (float 1.000000e+00) ; 2 uses
  %i.ozf = select <4 x i1> %i.oze, <4 x float> splat (float -1.000000e+00), <4 x float> %i.ozd
  %i.ozg = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ozd, <4 x float> splat (float 1.000000e+00))
  %i.ozh = fdiv fast <4 x float> %i.ozf, %i.ozg   ; 3 uses
  %i.ozi = fmul fast <4 x float> %i.ozh, %i.ozh   ; 3 uses
  %i.ozj = fmul fast <4 x float> %i.ozi, %i.ozi   ; 7 uses
  %i.ozk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ozj, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.ozl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ozj, <4 x float> nofpclass(nan inf) %i.ozk, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.ozm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ozj, <4 x float> nofpclass(nan inf) %i.ozl, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.ozn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ozj, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.ozo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ozj, <4 x float> nofpclass(nan inf) %i.ozn, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.ozp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ozj, <4 x float> nofpclass(nan inf) %i.ozo, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.ozq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ozj, <4 x float> nofpclass(nan inf) %i.ozp, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.ozr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ozi, <4 x float> nofpclass(nan inf) %i.ozm, <4 x float> nofpclass(nan inf) %i.ozq)
  %i.ozs = fmul fast <4 x float> %i.ozr, %i.ozh
  %i.ozt = select <4 x i1> %i.oze, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.ozu = fadd fast <4 x float> %i.ozs, %i.ozt
  %i.ozv = bitcast <4 x float> %i.ozu to <4 x i32>
  %i.ozw = or <4 x i32> %i.ozc, %i.ozv
  %i.ozx = bitcast <4 x i32> %i.ozw to <4 x float>
  %i.ozy = fadd fast <4 x float> %i.oyz, %i.ozx
  %i.ozz = bitcast <8 x i16> %i.oyv to <4 x i32>
  %i.paa = and <4 x i32> %i.ozz, splat (i32 -2147483648)
  %i.pab = or disjoint <4 x i32> %i.paa, splat (i32 1078530011)
  %i.pac = bitcast <4 x i32> %i.pab to <4 x float>
  %i.pad = fcmp fast uge <4 x float> %i.pac, zeroinitializer
  %i.pae = select <4 x i1> %i.pad, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.paf = bitcast <4 x float> %i.ozy to <4 x i32>
  %i.pag = select <4 x i1> %.not132.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.paf
  %i.pah = select <4 x i1> %i.oyx, <4 x i32> %i.otj, <4 x i32> zeroinitializer
  %i.pai = select <4 x i1> %i.ote, <4 x i32> %i.pae, <4 x i32> %i.pah
  %i.paj = or <4 x i32> %i.pag, %i.pai
  %i.pak = bitcast <4 x i32> %i.paj to <4 x float>
  %i.pal = shufflevector <4 x float> %i.pak, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.pam = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.pal)
  %i.pan = bitcast <8 x bfloat> %i.pam to <2 x i64>
  %i.pao = extractelement <2 x i64> %i.pan, i64 0
  store i64 %i.pao, ptr %.237150.i62.i, align 1, !tbaa !555
  %i.pap = getelementptr inbounds nuw i8, ptr %.2151.i61.i, i64 8 ; 2 uses
  %i.paq = getelementptr inbounds nuw i8, ptr %.237150.i62.i, i64 8 ; 2 uses
  %i.par = add nuw nsw i32 %.241149.i63.i, 4      ; 3 uses
  %i.pas = or disjoint i32 %i.par, 3
  %i.pat = icmp slt i32 %i.pas, %i.ntz
  br i1 %i.pat, label %bb.kn, label %.preheader.i51.i1484, !llvm.loop !325

.lr.ph159.i55.i:                                  ; preds = %.lr.ph159.i55.i.prol.loopexit, %.lr.ph159.i55.i
  %.3158.i56.i = phi ptr [ %i.pbe, %.lr.ph159.i55.i ], [ %.3158.i56.i.unr, %.lr.ph159.i55.i.prol.loopexit ] ; 3 uses
  %.338157.i57.i = phi ptr [ %i.pbn, %.lr.ph159.i55.i ], [ %.338157.i57.i.unr, %.lr.ph159.i55.i.prol.loopexit ] ; 3 uses
  %.342156.i58.i = phi i32 [ %i.pbo, %.lr.ph159.i55.i ], [ %.342156.i58.i.unr, %.lr.ph159.i55.i.prol.loopexit ]
  %i.pau = getelementptr inbounds nuw i8, ptr %.3158.i56.i, i64 2
  %i.pav = load i16, ptr %.3158.i56.i, align 2, !tbaa !558
  %i.paw = zext i16 %i.pav to i32
  %i.pax = shl nuw i32 %i.paw, 16
  %i.pay = bitcast i32 %i.pax to float
  %i.paz = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oqc, float %i.pay)
  %i.pba = bitcast float %i.paz to i32
  %i.pbb = lshr i32 %i.pba, 16
  %i.pbc = trunc nuw i32 %i.pbb to i16
  %i.pbd = getelementptr inbounds nuw i8, ptr %.338157.i57.i, i64 2
  store i16 %i.pbc, ptr %.338157.i57.i, align 2, !tbaa !558
  %i.pbe = getelementptr inbounds nuw i8, ptr %.3158.i56.i, i64 4
  %i.pbf = load i16, ptr %i.pau, align 2, !tbaa !558
  %i.pbg = zext i16 %i.pbf to i32
  %i.pbh = shl nuw i32 %i.pbg, 16
  %i.pbi = bitcast i32 %i.pbh to float
  %i.pbj = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oqc, float %i.pbi)
  %i.pbk = bitcast float %i.pbj to i32
  %i.pbl = lshr i32 %i.pbk, 16
  %i.pbm = trunc nuw i32 %i.pbl to i16
  %i.pbn = getelementptr inbounds nuw i8, ptr %.338157.i57.i, i64 4
  store i16 %i.pbm, ptr %i.pbd, align 2, !tbaa !558
  %i.pbo = add nuw nsw i32 %.342156.i58.i, 2      ; 2 uses
  %exitcond.not.i59.i.1 = icmp eq i32 %i.pbo, %i.ntz
  br i1 %exitcond.not.i59.i.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i55.i, !llvm.loop !326

bb.ko:                                            ; preds = %bb.ke, %bb.jr
  %i.pbp = icmp eq i32 %6, 1
  br i1 %i.pbp, label %bb.kp, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.kp:                                            ; preds = %bb.ko
  %i.pbq = icmp eq i32 %3, %4
  br i1 %i.pbq, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  switch i32 %.sroa.speculated.i1470, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 16, label %.preheader.i80.i
    i32 8, label %.preheader123.i.i
    i32 4, label %.preheader125.i.i
  ]

.preheader125.i.i:                                ; preds = %bb.kq
  %i.pbr = icmp sgt i32 %.sroa.speculated104.i, 0
  br i1 %i.pbr, label %.lr.ph.i77.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader123.i.i:                                ; preds = %bb.kq
  %i.pbs = icmp sgt i32 %.sroa.speculated104.i, 0
  br i1 %i.pbs, label %.lr.ph135.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader.i80.i:                                 ; preds = %bb.kq
  %i.pbt = icmp sgt i32 %.sroa.speculated104.i, 0
  br i1 %i.pbt, label %.lr.ph140.i.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph140.i.i:                                    ; preds = %.preheader.i80.i, %.lr.ph140.i.i
  %.031139.i.i = phi ptr [ %i.pdo, %.lr.ph140.i.i ], [ %0, %.preheader.i80.i ] ; 2 uses
  %.033138.i.i = phi ptr [ %i.pdp, %.lr.ph140.i.i ], [ %1, %.preheader.i80.i ] ; 2 uses
  %.036137.i.i = phi i32 [ %i.pdr, %.lr.ph140.i.i ], [ 0, %.preheader.i80.i ]
  %.037136.i.i = phi ptr [ %i.pdq, %.lr.ph140.i.i ], [ %2, %.preheader.i80.i ] ; 2 uses
  %i.pbu = load <16 x bfloat>, ptr %.031139.i.i, align 1, !tbaa !555 ; 3 uses
  %i.pbv = fpext fast <16 x bfloat> %i.pbu to <16 x float> ; 2 uses
  %i.pbw = load i16, ptr %.033138.i.i, align 2, !tbaa !558
  %i.pbx = zext i16 %i.pbw to i32
  %i.pby = shl nuw i32 %i.pbx, 16
  %i.pbz = insertelement <16 x i32> poison, i32 %i.pby, i64 0
  %i.pca = bitcast <16 x i32> %i.pbz to <16 x float>
  %i.pcb = shufflevector <16 x float> %i.pca, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.pcc = fcmp fast one <16 x float> %i.pcb, zeroinitializer
  %i.pcd = fcmp fast one <16 x bfloat> %i.pbu, zeroinitializer
  %i.pce = fcmp fast olt <16 x float> %i.pcb, zeroinitializer
  %i.pcf = fcmp fast olt <16 x bfloat> %i.pbu, zeroinitializer
  %i.pcg = select fast <16 x i1> %i.pcf, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.pch = select fast <16 x i1> %i.pce, <16 x float> %i.pcg, <16 x float> zeroinitializer
  %i.pci = fdiv fast <16 x float> %i.pbv, %i.pcb  ; 2 uses
  %i.pcj = bitcast <16 x float> %i.pci to <16 x i32>
  %i.pck = and <16 x i32> %i.pcj, splat (i32 -2147483648)
  %i.pcl = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.pci) ; 3 uses
  %i.pcm = fcmp fast ogt <16 x float> %i.pcl, splat (float 1.000000e+00) ; 2 uses
  %i.pcn = select fast <16 x i1> %i.pcm, <16 x float> splat (float -1.000000e+00), <16 x float> %i.pcl
  %i.pco = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.pcl, <16 x float> splat (float 1.000000e+00))
  %i.pcp = fdiv fast <16 x float> %i.pcn, %i.pco  ; 3 uses
  %i.pcq = fmul fast <16 x float> %i.pcp, %i.pcp  ; 3 uses
  %i.pcr = fmul fast <16 x float> %i.pcq, %i.pcq  ; 7 uses
  %i.pcs = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pcr, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.pct = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pcr, <16 x float> nofpclass(nan inf) %i.pcs, <16 x float> splat (float f0xBE117200))
end_hunk_5
begin_hunk_6_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  %i.pio = icmp slt <16 x i32> %i.pin, zeroinitializer
  %i.pip = select fast <16 x i1> %i.pio, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.piq = fdiv fast <16 x float> splat (float 1.000000e+00), %i.pik
  br label %bb.kt

bb.kt:                                            ; preds = %bb.kt, %.lr.ph.i90.i
  %.087.i.i = phi ptr [ %0, %.lr.ph.i90.i ], [ %i.pka, %bb.kt ] ; 2 uses
  %.03086.i.i = phi ptr [ %2, %.lr.ph.i90.i ], [ %i.pkb, %bb.kt ] ; 2 uses
  %.03485.i.i = phi i32 [ 0, %.lr.ph.i90.i ], [ %i.pkc, %bb.kt ]
  %i.pir = load <16 x bfloat>, ptr %.087.i.i, align 1, !tbaa !555 ; 3 uses
  %i.pis = fpext fast <16 x bfloat> %i.pir to <16 x float> ; 2 uses
  %i.pit = fcmp fast one <16 x bfloat> %i.pir, zeroinitializer
  %i.piu = fcmp fast olt <16 x bfloat> %i.pir, zeroinitializer
  %i.piv = select fast <16 x i1> %i.piu, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.piw = select fast <16 x i1> %i.pim, <16 x float> %i.piv, <16 x float> zeroinitializer
  %i.pix = fmul fast <16 x float> %i.pis, %i.piq  ; 2 uses
  %i.piy = bitcast <16 x float> %i.pix to <16 x i32>
  %i.piz = and <16 x i32> %i.piy, splat (i32 -2147483648)
  %i.pja = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.pix) ; 3 uses
  %i.pjb = fcmp fast ogt <16 x float> %i.pja, splat (float 1.000000e+00) ; 2 uses
  %i.pjc = select fast <16 x i1> %i.pjb, <16 x float> splat (float -1.000000e+00), <16 x float> %i.pja
  %i.pjd = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.pja, <16 x float> splat (float 1.000000e+00))
  %i.pje = fdiv fast <16 x float> %i.pjc, %i.pjd  ; 3 uses
  %i.pjf = fmul fast <16 x float> %i.pje, %i.pje  ; 3 uses
  %i.pjg = fmul fast <16 x float> %i.pjf, %i.pjf  ; 7 uses
  %i.pjh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pjg, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.pji = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pjg, <16 x float> nofpclass(nan inf) %i.pjh, <16 x float> splat (float f0xBE117200))
  %i.pjj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pjg, <16 x float> nofpclass(nan inf) %i.pji, <16 x float> splat (float f0xBEAAAA53))
  %i.pjk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pjg, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.pjl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pjg, <16 x float> nofpclass(nan inf) %i.pjk, <16 x float> splat (float f0x3DD9ED24))
  %i.pjm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pjg, <16 x float> nofpclass(nan inf) %i.pjl, <16 x float> splat (float f0x3E4CB974))
  %i.pjn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pjg, <16 x float> nofpclass(nan inf) %i.pjm, <16 x float> splat (float 1.000000e+00))
  %i.pjo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pjf, <16 x float> nofpclass(nan inf) %i.pjj, <16 x float> nofpclass(nan inf) %i.pjn)
  %i.pjp = fmul fast <16 x float> %i.pjo, %i.pje
  %i.pjq = select fast <16 x i1> %i.pjb, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.pjr = fadd fast <16 x float> %i.pjp, %i.pjq
  %i.pjs = bitcast <16 x float> %i.pjr to <16 x i32>
  %i.pjt = or <16 x i32> %i.piz, %i.pjs
  %i.pju = bitcast <16 x i32> %i.pjt to <16 x float>
  %i.pjv = fadd fast <16 x float> %i.piw, %i.pju
  %i.pjw = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.pis)
  %i.pjx = select <16 x i1> %i.pil, <16 x float> %i.pjv, <16 x float> %i.pjw
  %i.pjy = select <16 x i1> %i.pit, <16 x float> %i.pjx, <16 x float> %i.pip
  %i.pjz = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.pjy)
  store <16 x bfloat> %i.pjz, ptr %.03086.i.i, align 1, !tbaa !555
  %i.pka = getelementptr inbounds nuw i8, ptr %.087.i.i, i64 32 ; 2 uses
  %i.pkb = getelementptr inbounds nuw i8, ptr %.03086.i.i, i64 32 ; 2 uses
  %i.pkc = add nuw nsw i32 %.03485.i.i, 16        ; 2 uses
  %i.pkd = or disjoint i32 %i.pkc, 15
  %i.pke = icmp slt i32 %i.pkd, %i.ntz
  br i1 %i.pke, label %bb.kt, label %._crit_edge.loopexit.i.i1477, !llvm.loop !330

._crit_edge.loopexit.i.i1477:                     ; preds = %bb.kt
  %i.pkf = and i32 %i.ntz, 2147483632
  br label %._crit_edge.i.i1472

._crit_edge.i.i1472:                              ; preds = %._crit_edge.loopexit.i.i1477, %bb.ks
  %.034.lcssa.i81.i = phi i32 [ 0, %bb.ks ], [ %i.pkf, %._crit_edge.loopexit.i.i1477 ] ; 3 uses
  %.030.lcssa.i.i1473 = phi ptr [ %2, %bb.ks ], [ %i.pkb, %._crit_edge.loopexit.i.i1477 ] ; 2 uses
  %.0.lcssa.i82.i = phi ptr [ %0, %bb.ks ], [ %i.pka, %._crit_edge.loopexit.i.i1477 ] ; 2 uses
  %i.pkg = or disjoint i32 %.034.lcssa.i81.i, 7
  %i.pkh = icmp slt i32 %i.pkg, %i.ntz
  br i1 %i.pkh, label %.lr.ph94.i.i, label %._crit_edge95.i.i

.lr.ph94.i.i:                                     ; preds = %._crit_edge.i.i1472
  %i.pki = insertelement <8 x float> poison, float %i.pih, i64 0
  %i.pkj = shufflevector <8 x float> %i.pki, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.pkk = fcmp fast ueq <8 x float> %i.pkj, zeroinitializer ; 2 uses
  %i.pkl = fcmp fast olt <8 x float> %i.pkj, zeroinitializer
  %i.pkm = bitcast <8 x float> %i.pkj to <8 x i32>
  %isneg.inv82.i.i = icmp slt <8 x i32> %i.pkm, zeroinitializer
  %i.pkn = select <8 x i1> %isneg.inv82.i.i, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.pko = fdiv fast <8 x float> splat (float 1.000000e+00), %i.pkj
  br label %bb.ku

bb.ku:                                            ; preds = %bb.ku, %.lr.ph94.i.i
  %.192.i.i = phi ptr [ %.0.lcssa.i82.i, %.lr.ph94.i.i ], [ %i.pme, %bb.ku ] ; 2 uses
  %.13191.i.i = phi ptr [ %.030.lcssa.i.i1473, %.lr.ph94.i.i ], [ %i.pmf, %bb.ku ] ; 2 uses
  %.13590.i.i = phi i32 [ %.034.lcssa.i81.i, %.lr.ph94.i.i ], [ %i.pmg, %bb.ku ]
  %i.pkp = load <8 x bfloat>, ptr %.192.i.i, align 1, !tbaa !555 ; 3 uses
  %i.pkq = fpext fast <8 x bfloat> %i.pkp to <8 x float> ; 2 uses
  %i.pkr = fcmp fast ueq <8 x bfloat> %i.pkp, zeroinitializer ; 2 uses
  %.not84.i.i = or <8 x i1> %i.pkk, %i.pkr
  %i.pks = bitcast <8 x float> %i.pkq to <8 x i32>
  %i.pkt = and <8 x i32> %i.pks, splat (i32 -2147483648)
  %i.pku = fcmp fast olt <8 x bfloat> %i.pkp, zeroinitializer
  %i.pkv = select <8 x i1> %i.pku, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.pkw = select <8 x i1> %i.pkl, <8 x float> %i.pkv, <8 x float> zeroinitializer
  %i.pkx = fmul fast <8 x float> %i.pkq, %i.pko   ; 2 uses
  %i.pky = bitcast <8 x float> %i.pkx to <8 x i32>
  %i.pkz = and <8 x i32> %i.pky, splat (i32 -2147483648)
  %i.pla = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.pkx) ; 3 uses
  %i.plb = fcmp fast ogt <8 x float> %i.pla, splat (float 1.000000e+00) ; 2 uses
  %i.plc = select <8 x i1> %i.plb, <8 x float> splat (float -1.000000e+00), <8 x float> %i.pla
  %i.pld = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.pla, <8 x float> splat (float 1.000000e+00))
  %i.ple = fdiv fast <8 x float> %i.plc, %i.pld   ; 3 uses
  %i.plf = fmul fast <8 x float> %i.ple, %i.ple   ; 3 uses
  %i.plg = fmul fast <8 x float> %i.plf, %i.plf   ; 7 uses
  %i.plh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.plg, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.pli = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.plg, <8 x float> nofpclass(nan inf) %i.plh, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.plj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.plg, <8 x float> nofpclass(nan inf) %i.pli, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.plk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.plg, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.pll = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.plg, <8 x float> nofpclass(nan inf) %i.plk, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.plm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.plg, <8 x float> nofpclass(nan inf) %i.pll, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.pln = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.plg, <8 x float> nofpclass(nan inf) %i.plm, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.plo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.plf, <8 x float> nofpclass(nan inf) %i.plj, <8 x float> nofpclass(nan inf) %i.pln)
  %i.plp = fmul fast <8 x float> %i.plo, %i.ple
  %i.plq = select <8 x i1> %i.plb, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.plr = fadd fast <8 x float> %i.plp, %i.plq
  %i.pls = bitcast <8 x float> %i.plr to <8 x i32>
  %i.plt = or <8 x i32> %i.pkz, %i.pls
  %i.plu = bitcast <8 x i32> %i.plt to <8 x float>
  %i.plv = fadd fast <8 x float> %i.pkw, %i.plu
  %i.plw = or disjoint <8 x i32> %i.pkt, splat (i32 1070141403)
  %i.plx = bitcast <8 x float> %i.plv to <8 x i32>
  %i.ply = select <8 x i1> %.not84.i.i, <8 x i32> zeroinitializer, <8 x i32> %i.plx
  %i.plz = select <8 x i1> %i.pkk, <8 x i32> %i.plw, <8 x i32> zeroinitializer
  %i.pma = select <8 x i1> %i.pkr, <8 x i32> %i.pkn, <8 x i32> %i.plz
  %i.pmb = or <8 x i32> %i.ply, %i.pma
  %i.pmc = bitcast <8 x i32> %i.pmb to <8 x float>
  %i.pmd = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.pmc)
  store <8 x bfloat> %i.pmd, ptr %.13191.i.i, align 1, !tbaa !555
  %i.pme = getelementptr inbounds nuw i8, ptr %.192.i.i, i64 16 ; 2 uses
  %i.pmf = getelementptr inbounds nuw i8, ptr %.13191.i.i, i64 16 ; 2 uses
  %i.pmg = add nuw nsw i32 %.13590.i.i, 8         ; 3 uses
  %i.pmh = or disjoint i32 %i.pmg, 7
  %i.pmi = icmp slt i32 %i.pmh, %i.ntz
  br i1 %i.pmi, label %bb.ku, label %._crit_edge95.i.i, !llvm.loop !331

._crit_edge95.i.i:                                ; preds = %bb.ku, %._crit_edge.i.i1472
  %.135.lcssa.i83.i = phi i32 [ %.034.lcssa.i81.i, %._crit_edge.i.i1472 ], [ %i.pmg, %bb.ku ] ; 3 uses
  %.131.lcssa.i.i1474 = phi ptr [ %.030.lcssa.i.i1473, %._crit_edge.i.i1472 ], [ %i.pmf, %bb.ku ] ; 2 uses
  %.1.lcssa.i84.i = phi ptr [ %.0.lcssa.i82.i, %._crit_edge.i.i1472 ], [ %i.pme, %bb.ku ] ; 2 uses
  %i.pmj = or disjoint i32 %.135.lcssa.i83.i, 3
  %i.pmk = icmp slt i32 %i.pmj, %i.ntz
  br i1 %i.pmk, label %.lr.ph103.i.i, label %.preheader.i85.i

.lr.ph103.i.i:                                    ; preds = %._crit_edge95.i.i
  %i.pml = insertelement <4 x float> poison, float %i.pih, i64 0
  %i.pmm = shufflevector <4 x float> %i.pml, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.pmn = fcmp fast oeq <4 x float> %i.pmm, zeroinitializer ; 2 uses
  %i.pmo = fcmp fast olt <4 x float> %i.pmm, zeroinitializer
  %i.pmp = bitcast <4 x float> %i.pmm to <4 x i32>
  %isneg.inv.i89.i = icmp slt <4 x i32> %i.pmp, zeroinitializer
  %i.pmq = select <4 x i1> %isneg.inv.i89.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.pmr = fdiv fast <4 x float> splat (float 1.000000e+00), %i.pmm
  br label %bb.kv

.preheader.i85.i:                                 ; preds = %bb.kv, %._crit_edge95.i.i
  %.236.lcssa.i86.i = phi i32 [ %.135.lcssa.i83.i, %._crit_edge95.i.i ], [ %i.psf, %bb.kv ] ; 5 uses
  %.232.lcssa.i.i1475 = phi ptr [ %.131.lcssa.i.i1474, %._crit_edge95.i.i ], [ %i.pse, %bb.kv ] ; 6 uses
  %.2.lcssa.i87.i = phi ptr [ %.1.lcssa.i84.i, %._crit_edge95.i.i ], [ %i.psd, %bb.kv ] ; 6 uses
  %i.pms = icmp slt i32 %.236.lcssa.i86.i, %i.ntz
  br i1 %i.pms, label %iter.check7218, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7218:                                   ; preds = %.preheader.i85.i
  %.232.lcssa.i.i14757202 = ptrtoaddr ptr %.232.lcssa.i.i1475 to i64
  %.2.lcssa.i87.i7201 = ptrtoaddr ptr %.2.lcssa.i87.i to i64
  %i.pmt = xor i32 %.236.lcssa.i86.i, -1
  %i.pmu = add i32 %i.ntz, %i.pmt                 ; 3 uses
  %i.pmv = zext i32 %i.pmu to i64
  %i.pmw = add nuw nsw i64 %i.pmv, 1              ; 5 uses
  %min.iters.check7203 = icmp ult i32 %i.pmu, 7
  %i.pmx = sub i64 %.2.lcssa.i87.i7201, %.232.lcssa.i.i14757202
  %diff.check7205 = icmp ugt i64 %i.pmx, -64
  %or.cond9197 = select i1 %min.iters.check7203, i1 true, i1 %diff.check7205
  br i1 %or.cond9197, label %.lr.ph110.i.i.preheader, label %vector.main.loop.iter.check7206

vector.main.loop.iter.check7206:                  ; preds = %iter.check7218
  %min.iters.check7207 = icmp ult i32 %i.pmu, 31
  br i1 %min.iters.check7207, label %vec.epilog.ph7222, label %vector.ph7208

vector.ph7208:                                    ; preds = %vector.main.loop.iter.check7206
  %i.pmy = and i64 %i.pmw, 24
  %n.vec7209 = and i64 %i.pmw, 8589934560         ; 5 uses
  %i.pmz = shl nuw nsw i64 %n.vec7209, 1          ; 2 uses
  %i.pna = getelementptr i8, ptr %.2.lcssa.i87.i, i64 %i.pmz
  %i.pnb = getelementptr i8, ptr %.232.lcssa.i.i1475, i64 %i.pmz
  %i.pnc = trunc i64 %n.vec7209 to i32
  %i.pnd = add i32 %.236.lcssa.i86.i, %i.pnc
  %i.pne = insertelement <16 x float> poison, float %i.pih, i64 0
  %i.pnf = shufflevector <16 x float> %i.pne, <16 x float> poison, <16 x i32> zeroinitializer
  %i.png = insertelement <8 x float> poison, float %i.pih, i64 0
  %i.pnh = shufflevector <8 x float> %i.png, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pni = insertelement <4 x float> poison, float %i.pih, i64 0
  %i.pnj = shufflevector <4 x float> %i.pni, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pnk = insertelement <2 x float> poison, float %i.pih, i64 0
  %i.pnl = shufflevector <2 x float> %i.pnk, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7210

vector.body7210:                                  ; preds = %vector.ph7208, %vector.body7210
  %index7211 = phi i64 [ 0, %vector.ph7208 ], [ %index.next7215, %vector.body7210 ] ; 2 uses
  %i.pnm = shl i64 %index7211, 1                  ; 2 uses
  %next.gep7212 = getelementptr i8, ptr %.2.lcssa.i87.i, i64 %i.pnm
  %next.gep7213 = getelementptr i8, ptr %.232.lcssa.i.i1475, i64 %i.pnm
  %wide.load7214 = load <32 x i16>, ptr %next.gep7212, align 2, !tbaa !558
  %i.pnn = zext <32 x i16> %wide.load7214 to <32 x i32>
  %i.pno = shl nuw <32 x i32> %i.pnn, splat (i32 16)
  %i.pnp = bitcast <32 x i32> %i.pno to <32 x float> ; 6 uses
  %i.pnq = extractelement <32 x float> %i.pnp, i64 0
  %i.pnr = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.pnq, float %i.pih)
  %i.pns = shufflevector <32 x float> %i.pnp, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.pnt = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.pns, <16 x float> %i.pnf)
  %i.pnu = shufflevector <32 x float> %i.pnp, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.pnv = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.pnu, <8 x float> %i.pnh)
  %i.pnw = shufflevector <32 x float> %i.pnp, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.pnx = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.pnw, <4 x float> %i.pnj)
  %i.pny = extractelement <32 x float> %i.pnp, i64 29
  %i.pnz = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.pny, float %i.pih)
  %i.poa = shufflevector <32 x float> %i.pnp, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.pob = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.poa, <2 x float> %i.pnl)
  %i.poc = insertelement <32 x float> poison, float %i.pnr, i64 0
  %i.pod = shufflevector <16 x float> %i.pnt, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.poe = shufflevector <32 x float> %i.poc, <32 x float> %i.pod, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pof = shufflevector <8 x float> %i.pnv, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pog = shufflevector <32 x float> %i.poe, <32 x float> %i.pof, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.poh = shufflevector <4 x float> %i.pnx, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.poi = shufflevector <32 x float> %i.pog, <32 x float> %i.poh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.poj = insertelement <32 x float> %i.poi, float %i.pnz, i64 29
  %i.pok = shufflevector <2 x float> %i.pob, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pol = shufflevector <32 x float> %i.poj, <32 x float> %i.pok, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.pom = bitcast <32 x float> %i.pol to <32 x i32>
  %i.pon = lshr <32 x i32> %i.pom, splat (i32 16)
  %i.poo = trunc nuw <32 x i32> %i.pon to <32 x i16>
  store <32 x i16> %i.poo, ptr %next.gep7213, align 2, !tbaa !558
  %index.next7215 = add nuw i64 %index7211, 32    ; 2 uses
  %i.pop = icmp eq i64 %index.next7215, %n.vec7209
  br i1 %i.pop, label %middle.block7216, label %vector.body7210, !llvm.loop !332

middle.block7216:                                 ; preds = %vector.body7210
  %cmp.n7217 = icmp eq i64 %i.pmw, %n.vec7209
  br i1 %cmp.n7217, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7219

vec.epilog.iter.check7219:                        ; preds = %middle.block7216
  %min.epilog.iters.check7221 = icmp eq i64 %i.pmy, 0
  br i1 %min.epilog.iters.check7221, label %.lr.ph110.i.i.preheader, label %vec.epilog.ph7222, !prof !561

vec.epilog.ph7222:                                ; preds = %vector.main.loop.iter.check7206, %vec.epilog.iter.check7219
  %vec.epilog.resume.val7223 = phi i64 [ %n.vec7209, %vec.epilog.iter.check7219 ], [ 0, %vector.main.loop.iter.check7206 ]
  %n.vec7224 = and i64 %i.pmw, 8589934584         ; 4 uses
  %i.poq = shl nuw nsw i64 %n.vec7224, 1          ; 2 uses
  %i.por = getelementptr i8, ptr %.2.lcssa.i87.i, i64 %i.poq
  %i.pos = getelementptr i8, ptr %.232.lcssa.i.i1475, i64 %i.poq
  %i.pot = trunc i64 %n.vec7224 to i32
  %i.pou = add i32 %.236.lcssa.i86.i, %i.pot
  %i.pov = insertelement <4 x float> poison, float %i.pih, i64 0
  %i.pow = shufflevector <4 x float> %i.pov, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7225

vec.epilog.vector.body7225:                       ; preds = %vec.epilog.vector.body7225, %vec.epilog.ph7222
  %index7226 = phi i64 [ %vec.epilog.resume.val7223, %vec.epilog.ph7222 ], [ %index.next7230, %vec.epilog.vector.body7225 ] ; 2 uses
  %i.pox = shl i64 %index7226, 1                  ; 2 uses
  %next.gep7227 = getelementptr i8, ptr %.2.lcssa.i87.i, i64 %i.pox
  %next.gep7228 = getelementptr i8, ptr %.232.lcssa.i.i1475, i64 %i.pox
  %wide.load7229 = load <8 x i16>, ptr %next.gep7227, align 2, !tbaa !558
  %i.poy = zext <8 x i16> %wide.load7229 to <8 x i32>
  %i.poz = shl nuw <8 x i32> %i.poy, splat (i32 16)
  %i.ppa = bitcast <8 x i32> %i.poz to <8 x float> ; 5 uses
  %i.ppb = extractelement <8 x float> %i.ppa, i64 0
  %i.ppc = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ppb, float %i.pih)
  %i.ppd = extractelement <8 x float> %i.ppa, i64 1
  %i.ppe = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ppd, float %i.pih)
  %i.ppf = extractelement <8 x float> %i.ppa, i64 2
  %i.ppg = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ppf, float %i.pih)
  %i.pph = shufflevector <8 x float> %i.ppa, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ppi = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.pph, <4 x float> %i.pow)
  %i.ppj = extractelement <8 x float> %i.ppa, i64 7
  %i.ppk = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.ppj, float %i.pih)
  %i.ppl = insertelement <8 x float> poison, float %i.ppc, i64 0
  %i.ppm = insertelement <8 x float> %i.ppl, float %i.ppe, i64 1
  %i.ppn = insertelement <8 x float> %i.ppm, float %i.ppg, i64 2
  %i.ppo = shufflevector <4 x float> %i.ppi, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ppp = shufflevector <8 x float> %i.ppn, <8 x float> %i.ppo, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.ppq = insertelement <8 x float> %i.ppp, float %i.ppk, i64 7
  %i.ppr = bitcast <8 x float> %i.ppq to <8 x i32>
  %i.pps = lshr <8 x i32> %i.ppr, splat (i32 16)
  %i.ppt = trunc nuw <8 x i32> %i.pps to <8 x i16>
  store <8 x i16> %i.ppt, ptr %next.gep7228, align 2, !tbaa !558
  %index.next7230 = add nuw i64 %index7226, 8     ; 2 uses
  %i.ppu = icmp eq i64 %index.next7230, %n.vec7224
  br i1 %i.ppu, label %vec.epilog.middle.block7231, label %vec.epilog.vector.body7225, !llvm.loop !333

vec.epilog.middle.block7231:                      ; preds = %vec.epilog.vector.body7225
  %cmp.n7232 = icmp eq i64 %i.pmw, %n.vec7224
  br i1 %cmp.n7232, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph110.i.i.preheader

.lr.ph110.i.i.preheader:                          ; preds = %iter.check7218, %vec.epilog.iter.check7219, %vec.epilog.middle.block7231
  %.3109.i.i.ph = phi ptr [ %.2.lcssa.i87.i, %iter.check7218 ], [ %i.pna, %vec.epilog.iter.check7219 ], [ %i.por, %vec.epilog.middle.block7231 ] ; 3 uses
  %.333108.i.i.ph = phi ptr [ %.232.lcssa.i.i1475, %iter.check7218 ], [ %i.pnb, %vec.epilog.iter.check7219 ], [ %i.pos, %vec.epilog.middle.block7231 ] ; 3 uses
  %.337107.i.i.ph = phi i32 [ %.236.lcssa.i86.i, %iter.check7218 ], [ %i.pnd, %vec.epilog.iter.check7219 ], [ %i.pou, %vec.epilog.middle.block7231 ] ; 4 uses
  %i.ppv = sub i32 %i.ntz, %.337107.i.i.ph
  %.neg11049 = add i32 %.337107.i.i.ph, 1
  %xtraiter10451 = and i32 %i.ppv, 1
  %lcmp.mod10452.not = icmp eq i32 %xtraiter10451, 0
  br i1 %lcmp.mod10452.not, label %.lr.ph110.i.i.prol.loopexit, label %.lr.ph110.i.i.prol

.lr.ph110.i.i.prol:                               ; preds = %.lr.ph110.i.i.preheader
  %i.ppw = getelementptr inbounds nuw i8, ptr %.3109.i.i.ph, i64 2
  %i.ppx = load i16, ptr %.3109.i.i.ph, align 2, !tbaa !558
  %i.ppy = zext i16 %i.ppx to i32
  %i.ppz = shl nuw i32 %i.ppy, 16
  %i.pqa = bitcast i32 %i.ppz to float
  %i.pqb = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.pqa, float %i.pih)
  %i.pqc = bitcast float %i.pqb to i32
  %i.pqd = lshr i32 %i.pqc, 16
  %i.pqe = trunc nuw i32 %i.pqd to i16
  %i.pqf = getelementptr inbounds nuw i8, ptr %.333108.i.i.ph, i64 2
  store i16 %i.pqe, ptr %.333108.i.i.ph, align 2, !tbaa !558
  %i.pqg = add nuw nsw i32 %.337107.i.i.ph, 1
  br label %.lr.ph110.i.i.prol.loopexit

.lr.ph110.i.i.prol.loopexit:                      ; preds = %.lr.ph110.i.i.prol, %.lr.ph110.i.i.preheader
  %.3109.i.i.unr = phi ptr [ %.3109.i.i.ph, %.lr.ph110.i.i.preheader ], [ %i.ppw, %.lr.ph110.i.i.prol ]
  %.333108.i.i.unr = phi ptr [ %.333108.i.i.ph, %.lr.ph110.i.i.preheader ], [ %i.pqf, %.lr.ph110.i.i.prol ]
  %.337107.i.i.unr = phi i32 [ %.337107.i.i.ph, %.lr.ph110.i.i.preheader ], [ %i.pqg, %.lr.ph110.i.i.prol ]
  %i.pqh = icmp eq i32 %i.ntz, %.neg11049
  br i1 %i.pqh, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph110.i.i

bb.kv:                                            ; preds = %bb.kv, %.lr.ph103.i.i
  %.2101.i.i = phi ptr [ %.1.lcssa.i84.i, %.lr.ph103.i.i ], [ %i.psd, %bb.kv ] ; 2 uses
  %.232100.i.i = phi ptr [ %.131.lcssa.i.i1474, %.lr.ph103.i.i ], [ %i.pse, %bb.kv ] ; 2 uses
  %.23699.i.i = phi i32 [ %.135.lcssa.i83.i, %.lr.ph103.i.i ], [ %i.psf, %bb.kv ]
  %i.pqi = load i64, ptr %.2101.i.i, align 1, !tbaa !555
  %i.pqj = insertelement <2 x i64> poison, i64 %i.pqi, i64 0
  %i.pqk = bitcast <2 x i64> %i.pqj to <8 x i16>
  %i.pql = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.pqk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.pqm = bitcast <8 x i16> %i.pql to <4 x float> ; 3 uses
  %i.pqn = fcmp fast oeq <4 x float> %i.pqm, zeroinitializer ; 2 uses
  %.not81.i.i = or <4 x i1> %i.pmn, %i.pqn
  %i.pqo = fcmp fast olt <4 x float> %i.pqm, zeroinitializer
  %i.pqp = select <4 x i1> %i.pqo, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.pqq = select <4 x i1> %i.pmo, <4 x float> %i.pqp, <4 x float> zeroinitializer
  %i.pqr = fmul fast <4 x float> %i.pqm, %i.pmr   ; 2 uses
  %i.pqs = bitcast <4 x float> %i.pqr to <4 x i32>
  %i.pqt = and <4 x i32> %i.pqs, splat (i32 -2147483648)
  %i.pqu = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pqr) ; 3 uses
  %i.pqv = fcmp fast ogt <4 x float> %i.pqu, splat (float 1.000000e+00) ; 2 uses
  %i.pqw = select <4 x i1> %i.pqv, <4 x float> splat (float -1.000000e+00), <4 x float> %i.pqu
  %i.pqx = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.pqu, <4 x float> splat (float 1.000000e+00))
  %i.pqy = fdiv fast <4 x float> %i.pqw, %i.pqx   ; 3 uses
  %i.pqz = fmul fast <4 x float> %i.pqy, %i.pqy   ; 3 uses
  %i.pra = fmul fast <4 x float> %i.pqz, %i.pqz   ; 7 uses
  %i.prb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pra, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.prc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pra, <4 x float> nofpclass(nan inf) %i.prb, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.prd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pra, <4 x float> nofpclass(nan inf) %i.prc, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.pre = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pra, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.prf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pra, <4 x float> nofpclass(nan inf) %i.pre, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.prg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pra, <4 x float> nofpclass(nan inf) %i.prf, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.prh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pra, <4 x float> nofpclass(nan inf) %i.prg, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.pri = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pqz, <4 x float> nofpclass(nan inf) %i.prd, <4 x float> nofpclass(nan inf) %i.prh)
  %i.prj = fmul fast <4 x float> %i.pri, %i.pqy
  %i.prk = select <4 x i1> %i.pqv, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.prl = fadd fast <4 x float> %i.prj, %i.prk
  %i.prm = bitcast <4 x float> %i.prl to <4 x i32>
  %i.prn = or <4 x i32> %i.pqt, %i.prm
  %i.pro = bitcast <4 x i32> %i.prn to <4 x float>
  %i.prp = fadd fast <4 x float> %i.pqq, %i.pro
  %i.prq = bitcast <8 x i16> %i.pql to <4 x i32>
  %i.prr = and <4 x i32> %i.prq, splat (i32 -2147483648)
  %i.prs = or disjoint <4 x i32> %i.prr, splat (i32 1070141403)
  %i.prt = bitcast <4 x float> %i.prp to <4 x i32>
  %i.pru = select <4 x i1> %.not81.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.prt
  %i.prv = select <4 x i1> %i.pmn, <4 x i32> %i.prs, <4 x i32> zeroinitializer
  %i.prw = select <4 x i1> %i.pqn, <4 x i32> %i.pmq, <4 x i32> %i.prv
  %i.prx = or <4 x i32> %i.pru, %i.prw
  %i.pry = bitcast <4 x i32> %i.prx to <4 x float>
  %i.prz = shufflevector <4 x float> %i.pry, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.psa = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.prz)
  %i.psb = bitcast <8 x bfloat> %i.psa to <2 x i64>
  %i.psc = extractelement <2 x i64> %i.psb, i64 0
  store i64 %i.psc, ptr %.232100.i.i, align 1, !tbaa !555
  %i.psd = getelementptr inbounds nuw i8, ptr %.2101.i.i, i64 8 ; 2 uses
  %i.pse = getelementptr inbounds nuw i8, ptr %.232100.i.i, i64 8 ; 2 uses
  %i.psf = add nuw nsw i32 %.23699.i.i, 4         ; 3 uses
  %i.psg = or disjoint i32 %i.psf, 3
  %i.psh = icmp slt i32 %i.psg, %i.ntz
  br i1 %i.psh, label %bb.kv, label %.preheader.i85.i, !llvm.loop !334

.lr.ph110.i.i:                                    ; preds = %.lr.ph110.i.i.prol.loopexit, %.lr.ph110.i.i
  %.3109.i.i = phi ptr [ %i.pss, %.lr.ph110.i.i ], [ %.3109.i.i.unr, %.lr.ph110.i.i.prol.loopexit ] ; 3 uses
  %.333108.i.i = phi ptr [ %i.ptb, %.lr.ph110.i.i ], [ %.333108.i.i.unr, %.lr.ph110.i.i.prol.loopexit ] ; 3 uses
  %.337107.i.i = phi i32 [ %i.ptc, %.lr.ph110.i.i ], [ %.337107.i.i.unr, %.lr.ph110.i.i.prol.loopexit ]
  %i.psi = getelementptr inbounds nuw i8, ptr %.3109.i.i, i64 2
  %i.psj = load i16, ptr %.3109.i.i, align 2, !tbaa !558
  %i.psk = zext i16 %i.psj to i32
  %i.psl = shl nuw i32 %i.psk, 16
  %i.psm = bitcast i32 %i.psl to float
  %i.psn = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.psm, float %i.pih)
  %i.pso = bitcast float %i.psn to i32
  %i.psp = lshr i32 %i.pso, 16
  %i.psq = trunc nuw i32 %i.psp to i16
  %i.psr = getelementptr inbounds nuw i8, ptr %.333108.i.i, i64 2
  store i16 %i.psq, ptr %.333108.i.i, align 2, !tbaa !558
  %i.pss = getelementptr inbounds nuw i8, ptr %.3109.i.i, i64 4
  %i.pst = load i16, ptr %i.psi, align 2, !tbaa !558
  %i.psu = zext i16 %i.pst to i32
  %i.psv = shl nuw i32 %i.psu, 16
  %i.psw = bitcast i32 %i.psv to float
  %i.psx = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.psw, float %i.pih)
  %i.psy = bitcast float %i.psx to i32
  %i.psz = lshr i32 %i.psy, 16
  %i.pta = trunc nuw i32 %i.psz to i16
  %i.ptb = getelementptr inbounds nuw i8, ptr %.333108.i.i, i64 4
  store i16 %i.pta, ptr %i.psr, align 2, !tbaa !558
  %i.ptc = add nuw nsw i32 %.337107.i.i, 2        ; 2 uses
  %exitcond.not.i88.i1476.1 = icmp eq i32 %i.ptc, %i.ntz
  br i1 %exitcond.not.i88.i1476.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph110.i.i, !llvm.loop !335

bb.kw:                                            ; preds = %bb.kr
  %i.ptd = icmp eq i32 %3, 1
  br i1 %i.ptd, label %bb.kx, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.kx:                                            ; preds = %bb.kw
  switch i32 %.sroa.speculated.i1470, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 16, label %.lr.ph129.i.i
    i32 8, label %.lr.ph125.i.i
    i32 4, label %.lr.ph.i91.i
  ]

.lr.ph129.i.i:                                    ; preds = %bb.kx
  %i.pte = load <16 x bfloat>, ptr %0, align 1, !tbaa !555 ; 3 uses
  %i.ptf = fpext fast <16 x bfloat> %i.pte to <16 x float> ; 2 uses
  %i.ptg = fcmp fast one <16 x bfloat> %i.pte, zeroinitializer
  %i.pth = fcmp fast olt <16 x bfloat> %i.pte, zeroinitializer
  %i.pti = select fast <16 x i1> %i.pth, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.ptj = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.ptf)
  br label %bb.ky

bb.ky:                                            ; preds = %bb.ky, %.lr.ph129.i.i
  %.028128.i.i = phi ptr [ %1, %.lr.ph129.i.i ], [ %i.puy, %bb.ky ] ; 2 uses
  %.030127.i.i = phi ptr [ %2, %.lr.ph129.i.i ], [ %i.puz, %bb.ky ] ; 2 uses
  %.033126.i.i = phi i32 [ 0, %.lr.ph129.i.i ], [ %i.pva, %bb.ky ]
  %i.ptk = load i16, ptr %.028128.i.i, align 2, !tbaa !558
  %i.ptl = zext i16 %i.ptk to i32
  %i.ptm = shl nuw i32 %i.ptl, 16
  %i.ptn = insertelement <16 x i32> poison, i32 %i.ptm, i64 0
  %i.pto = bitcast <16 x i32> %i.ptn to <16 x float>
  %i.ptp = shufflevector <16 x float> %i.pto, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.ptq = fcmp fast one <16 x float> %i.ptp, zeroinitializer
  %i.ptr = fcmp fast olt <16 x float> %i.ptp, zeroinitializer
  %i.pts = select fast <16 x i1> %i.ptr, <16 x float> %i.pti, <16 x float> zeroinitializer
  %i.ptt = fdiv fast <16 x float> %i.ptf, %i.ptp  ; 2 uses
  %i.ptu = bitcast <16 x float> %i.ptt to <16 x i32>
  %i.ptv = and <16 x i32> %i.ptu, splat (i32 -2147483648)
  %i.ptw = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.ptt) ; 3 uses
  %i.ptx = fcmp fast ogt <16 x float> %i.ptw, splat (float 1.000000e+00) ; 2 uses
  %i.pty = select fast <16 x i1> %i.ptx, <16 x float> splat (float -1.000000e+00), <16 x float> %i.ptw
  %i.ptz = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.ptw, <16 x float> splat (float 1.000000e+00))
  %i.pua = fdiv fast <16 x float> %i.pty, %i.ptz  ; 3 uses
  %i.pub = fmul fast <16 x float> %i.pua, %i.pua  ; 3 uses
  %i.puc = fmul fast <16 x float> %i.pub, %i.pub  ; 7 uses
  %i.pud = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.puc, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.pue = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.puc, <16 x float> nofpclass(nan inf) %i.pud, <16 x float> splat (float f0xBE117200))
  %i.puf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.puc, <16 x float> nofpclass(nan inf) %i.pue, <16 x float> splat (float f0xBEAAAA53))
  %i.pug = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.puc, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.puh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.puc, <16 x float> nofpclass(nan inf) %i.pug, <16 x float> splat (float f0x3DD9ED24))
  %i.pui = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.puc, <16 x float> nofpclass(nan inf) %i.puh, <16 x float> splat (float f0x3E4CB974))
  %i.puj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.puc, <16 x float> nofpclass(nan inf) %i.pui, <16 x float> splat (float 1.000000e+00))
  %i.puk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pub, <16 x float> nofpclass(nan inf) %i.puf, <16 x float> nofpclass(nan inf) %i.puj)
  %i.pul = fmul fast <16 x float> %i.puk, %i.pua
  %i.pum = select fast <16 x i1> %i.ptx, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.pun = fadd fast <16 x float> %i.pul, %i.pum
  %i.puo = bitcast <16 x float> %i.pun to <16 x i32>
  %i.pup = or <16 x i32> %i.ptv, %i.puo
  %i.puq = bitcast <16 x i32> %i.pup to <16 x float>
  %i.pur = fadd fast <16 x float> %i.pts, %i.puq
  %i.pus = bitcast <16 x float> %i.ptp to <16 x i32>
  %i.put = icmp slt <16 x i32> %i.pus, zeroinitializer
end_hunk_6
begin_hunk_7_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  br i1 %i.qkv, label %.lr.ph.i42.i1640, label %.preheader136.i.i1615

.lr.ph.i42.i1640:                                 ; preds = %bb.lk
  %i.qkw = fcmp fast one <16 x float> %i.qku, zeroinitializer
  %i.qkx = fcmp fast olt <16 x float> %i.qku, zeroinitializer
  %i.qky = select fast <16 x i1> %i.qkx, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.qkz = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.qku)
  br label %bb.ll

.preheader136.loopexit.i.i1644:                   ; preds = %bb.ll
  %i.qla = and i32 %i.pzl, 2147483632
  br label %.preheader136.i.i1615

.preheader136.i.i1615:                            ; preds = %.preheader136.loopexit.i.i1644, %bb.lk
  %.039.lcssa.i.i1616 = phi i32 [ 0, %bb.lk ], [ %i.qla, %.preheader136.loopexit.i.i1644 ] ; 3 uses
  %.035.lcssa.i.i1617 = phi ptr [ %2, %bb.lk ], [ %i.qmu, %.preheader136.loopexit.i.i1644 ] ; 2 uses
  %.0.lcssa.i34.i1618 = phi ptr [ %0, %bb.lk ], [ %i.qmt, %.preheader136.loopexit.i.i1644 ] ; 2 uses
  %i.qlb = or disjoint i32 %.039.lcssa.i.i1616, 7
  %i.qlc = icmp slt i32 %i.qlb, %i.pzl
  br i1 %i.qlc, label %.lr.ph145.i39.i, label %.preheader135.i.i1619

.lr.ph145.i39.i:                                  ; preds = %.preheader136.i.i1615
  %i.qld = fcmp fast ueq <8 x float> %i.qks, zeroinitializer ; 2 uses
  %i.qle = bitcast <8 x float> %i.qks to <8 x i32>
  %i.qlf = and <8 x i32> %i.qle, splat (i32 -2147483648)
  %i.qlg = fcmp fast olt <8 x float> %i.qks, zeroinitializer
  %i.qlh = select <8 x i1> %i.qlg, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.qli = or disjoint <8 x i32> %i.qlf, splat (i32 1070141403)
  br label %bb.lm

bb.ll:                                            ; preds = %bb.ll, %.lr.ph.i42.i1640
  %.0139.i.i1641 = phi ptr [ %0, %.lr.ph.i42.i1640 ], [ %i.qmt, %bb.ll ] ; 2 uses
  %.035138.i.i1642 = phi ptr [ %2, %.lr.ph.i42.i1640 ], [ %i.qmu, %bb.ll ] ; 2 uses
  %.039137.i.i1643 = phi i32 [ 0, %.lr.ph.i42.i1640 ], [ %i.qmv, %bb.ll ]
  %i.qlj = load <16 x bfloat>, ptr %.0139.i.i1641, align 1, !tbaa !555 ; 4 uses
  %i.qlk = fpext fast <16 x bfloat> %i.qlj to <16 x float>
  %i.qll = fcmp fast one <16 x bfloat> %i.qlj, zeroinitializer
  %i.qlm = fcmp fast olt <16 x bfloat> %i.qlj, zeroinitializer
  %i.qln = select fast <16 x i1> %i.qlm, <16 x float> %i.qky, <16 x float> zeroinitializer
  %i.qlo = fdiv fast <16 x float> %i.qku, %i.qlk  ; 2 uses
  %i.qlp = bitcast <16 x float> %i.qlo to <16 x i32>
  %i.qlq = and <16 x i32> %i.qlp, splat (i32 -2147483648)
  %i.qlr = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.qlo) ; 3 uses
  %i.qls = fcmp fast ogt <16 x float> %i.qlr, splat (float 1.000000e+00) ; 2 uses
  %i.qlt = select fast <16 x i1> %i.qls, <16 x float> splat (float -1.000000e+00), <16 x float> %i.qlr
  %i.qlu = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.qlr, <16 x float> splat (float 1.000000e+00))
  %i.qlv = fdiv fast <16 x float> %i.qlt, %i.qlu  ; 3 uses
  %i.qlw = fmul fast <16 x float> %i.qlv, %i.qlv  ; 3 uses
  %i.qlx = fmul fast <16 x float> %i.qlw, %i.qlw  ; 7 uses
  %i.qly = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qlx, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.qlz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qlx, <16 x float> nofpclass(nan inf) %i.qly, <16 x float> splat (float f0xBE117200))
  %i.qma = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qlx, <16 x float> nofpclass(nan inf) %i.qlz, <16 x float> splat (float f0xBEAAAA53))
  %i.qmb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qlx, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.qmc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qlx, <16 x float> nofpclass(nan inf) %i.qmb, <16 x float> splat (float f0x3DD9ED24))
  %i.qmd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qlx, <16 x float> nofpclass(nan inf) %i.qmc, <16 x float> splat (float f0x3E4CB974))
  %i.qme = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qlx, <16 x float> nofpclass(nan inf) %i.qmd, <16 x float> splat (float 1.000000e+00))
  %i.qmf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qlw, <16 x float> nofpclass(nan inf) %i.qma, <16 x float> nofpclass(nan inf) %i.qme)
  %i.qmg = fmul fast <16 x float> %i.qmf, %i.qlv
  %i.qmh = select fast <16 x i1> %i.qls, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.qmi = fadd fast <16 x float> %i.qmg, %i.qmh
  %i.qmj = bitcast <16 x float> %i.qmi to <16 x i32>
  %i.qmk = or <16 x i32> %i.qlq, %i.qmj
  %i.qml = bitcast <16 x i32> %i.qmk to <16 x float>
  %i.qmm = fadd fast <16 x float> %i.qln, %i.qml
  %i.qmn = bitcast <16 x bfloat> %i.qlj to <16 x i16>
  %i.qmo = icmp slt <16 x i16> %i.qmn, zeroinitializer
  %i.qmp = select fast <16 x i1> %i.qmo, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.qmq = select <16 x i1> %i.qll, <16 x float> %i.qmm, <16 x float> %i.qkz
  %i.qmr = select <16 x i1> %i.qkw, <16 x float> %i.qmq, <16 x float> %i.qmp
  %i.qms = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.qmr)
  store <16 x bfloat> %i.qms, ptr %.035138.i.i1642, align 1, !tbaa !555
  %i.qmt = getelementptr inbounds nuw i8, ptr %.0139.i.i1641, i64 32 ; 2 uses
  %i.qmu = getelementptr inbounds nuw i8, ptr %.035138.i.i1642, i64 32 ; 2 uses
  %i.qmv = add nuw nsw i32 %.039137.i.i1643, 16   ; 2 uses
  %i.qmw = or disjoint i32 %i.qmv, 15
  %i.qmx = icmp slt i32 %i.qmw, %i.pzl
  br i1 %i.qmx, label %bb.ll, label %.preheader136.loopexit.i.i1644, !llvm.loop !345

.preheader135.i.i1619:                            ; preds = %bb.lm, %.preheader136.i.i1615
  %.140.lcssa.i.i1620 = phi i32 [ %.039.lcssa.i.i1616, %.preheader136.i.i1615 ], [ %i.qov, %bb.lm ] ; 3 uses
  %.136.lcssa.i.i1621 = phi ptr [ %.035.lcssa.i.i1617, %.preheader136.i.i1615 ], [ %i.qou, %bb.lm ] ; 2 uses
  %.1.lcssa.i35.i1622 = phi ptr [ %.0.lcssa.i34.i1618, %.preheader136.i.i1615 ], [ %i.qot, %bb.lm ] ; 2 uses
  %i.qmy = or disjoint i32 %.140.lcssa.i.i1620, 3
  %i.qmz = icmp slt i32 %i.qmy, %i.pzl
  br i1 %i.qmz, label %.lr.ph152.i.i1632, label %.preheader.i36.i1623

.lr.ph152.i.i1632:                                ; preds = %.preheader135.i.i1619
  %i.qna = fcmp fast oeq <4 x float> %i.qkt, zeroinitializer ; 2 uses
  %i.qnb = bitcast <4 x float> %i.qkt to <4 x i32>
  %i.qnc = and <4 x i32> %i.qnb, splat (i32 -2147483648)
  %i.qnd = fcmp fast olt <4 x float> %i.qkt, zeroinitializer
  %i.qne = select <4 x i1> %i.qnd, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.qnf = or disjoint <4 x i32> %i.qnc, splat (i32 1070141403)
  br label %bb.ln

bb.lm:                                            ; preds = %bb.lm, %.lr.ph145.i39.i
  %.1144.i40.i = phi ptr [ %.0.lcssa.i34.i1618, %.lr.ph145.i39.i ], [ %i.qot, %bb.lm ] ; 2 uses
  %.136143.i.i1637 = phi ptr [ %.035.lcssa.i.i1617, %.lr.ph145.i39.i ], [ %i.qou, %bb.lm ] ; 2 uses
  %.140142.i.i1638 = phi i32 [ %.039.lcssa.i.i1616, %.lr.ph145.i39.i ], [ %i.qov, %bb.lm ]
  %i.qng = load <8 x bfloat>, ptr %.1144.i40.i, align 1, !tbaa !555 ; 4 uses
  %i.qnh = fpext fast <8 x bfloat> %i.qng to <8 x float>
  %i.qni = fcmp fast ueq <8 x bfloat> %i.qng, zeroinitializer ; 2 uses
  %.not134.i.i1639 = or <8 x i1> %i.qld, %i.qni
  %i.qnj = fcmp fast olt <8 x bfloat> %i.qng, zeroinitializer
  %i.qnk = select <8 x i1> %i.qnj, <8 x float> %i.qlh, <8 x float> zeroinitializer
  %i.qnl = fdiv fast <8 x float> %i.qks, %i.qnh   ; 2 uses
  %i.qnm = bitcast <8 x float> %i.qnl to <8 x i32>
  %i.qnn = and <8 x i32> %i.qnm, splat (i32 -2147483648)
  %i.qno = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.qnl) ; 3 uses
  %i.qnp = fcmp fast ogt <8 x float> %i.qno, splat (float 1.000000e+00) ; 2 uses
  %i.qnq = select <8 x i1> %i.qnp, <8 x float> splat (float -1.000000e+00), <8 x float> %i.qno
  %i.qnr = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.qno, <8 x float> splat (float 1.000000e+00))
  %i.qns = fdiv fast <8 x float> %i.qnq, %i.qnr   ; 3 uses
  %i.qnt = fmul fast <8 x float> %i.qns, %i.qns   ; 3 uses
  %i.qnu = fmul fast <8 x float> %i.qnt, %i.qnt   ; 7 uses
  %i.qnv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qnu, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.qnw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qnu, <8 x float> nofpclass(nan inf) %i.qnv, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.qnx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qnu, <8 x float> nofpclass(nan inf) %i.qnw, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.qny = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qnu, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.qnz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qnu, <8 x float> nofpclass(nan inf) %i.qny, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.qoa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qnu, <8 x float> nofpclass(nan inf) %i.qnz, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.qob = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qnu, <8 x float> nofpclass(nan inf) %i.qoa, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.qoc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qnt, <8 x float> nofpclass(nan inf) %i.qnx, <8 x float> nofpclass(nan inf) %i.qob)
  %i.qod = fmul fast <8 x float> %i.qoc, %i.qns
  %i.qoe = select <8 x i1> %i.qnp, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.qof = fadd fast <8 x float> %i.qod, %i.qoe
  %i.qog = bitcast <8 x float> %i.qof to <8 x i32>
  %i.qoh = or <8 x i32> %i.qnn, %i.qog
  %i.qoi = bitcast <8 x i32> %i.qoh to <8 x float>
  %i.qoj = fadd fast <8 x float> %i.qnk, %i.qoi
  %i.qok = bitcast <8 x bfloat> %i.qng to <8 x i16>
  %isneg.i41.i = icmp sgt <8 x i16> %i.qok, splat (i16 -1)
  %i.qol = select <8 x i1> %isneg.i41.i, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.qom = bitcast <8 x float> %i.qoj to <8 x i32>
  %i.qon = select <8 x i1> %.not134.i.i1639, <8 x i32> zeroinitializer, <8 x i32> %i.qom
  %i.qoo = select <8 x i1> %i.qni, <8 x i32> %i.qli, <8 x i32> zeroinitializer
  %i.qop = select <8 x i1> %i.qld, <8 x i32> %i.qol, <8 x i32> %i.qoo
  %i.qoq = or <8 x i32> %i.qon, %i.qop
  %i.qor = bitcast <8 x i32> %i.qoq to <8 x float>
  %i.qos = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.qor)
  store <8 x bfloat> %i.qos, ptr %.136143.i.i1637, align 1, !tbaa !555
  %i.qot = getelementptr inbounds nuw i8, ptr %.1144.i40.i, i64 16 ; 2 uses
  %i.qou = getelementptr inbounds nuw i8, ptr %.136143.i.i1637, i64 16 ; 2 uses
  %i.qov = add nuw nsw i32 %.140142.i.i1638, 8    ; 3 uses
  %i.qow = or disjoint i32 %i.qov, 7
  %i.qox = icmp slt i32 %i.qow, %i.pzl
  br i1 %i.qox, label %bb.lm, label %.preheader135.i.i1619, !llvm.loop !346

.preheader.i36.i1623:                             ; preds = %bb.ln, %.preheader135.i.i1619
  %.241.lcssa.i.i1624 = phi i32 [ %.140.lcssa.i.i1620, %.preheader135.i.i1619 ], [ %i.qun, %bb.ln ] ; 5 uses
  %.237.lcssa.i.i1625 = phi ptr [ %.136.lcssa.i.i1621, %.preheader135.i.i1619 ], [ %i.qum, %bb.ln ] ; 6 uses
  %.2.lcssa.i37.i1626 = phi ptr [ %.1.lcssa.i35.i1622, %.preheader135.i.i1619 ], [ %i.qul, %bb.ln ] ; 6 uses
  %i.qoy = icmp slt i32 %.241.lcssa.i.i1624, %i.pzl
  br i1 %i.qoy, label %iter.check7129, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7129:                                   ; preds = %.preheader.i36.i1623
  %.237.lcssa.i.i16257113 = ptrtoaddr ptr %.237.lcssa.i.i1625 to i64
  %.2.lcssa.i37.i16267112 = ptrtoaddr ptr %.2.lcssa.i37.i1626 to i64
  %i.qoz = xor i32 %.241.lcssa.i.i1624, -1
  %i.qpa = add i32 %i.pzl, %i.qoz                 ; 3 uses
  %i.qpb = zext i32 %i.qpa to i64
  %i.qpc = add nuw nsw i64 %i.qpb, 1              ; 5 uses
  %min.iters.check7114 = icmp ult i32 %i.qpa, 7
  %i.qpd = sub i64 %.2.lcssa.i37.i16267112, %.237.lcssa.i.i16257113
  %diff.check7116 = icmp ugt i64 %i.qpd, -64
  %or.cond9198 = select i1 %min.iters.check7114, i1 true, i1 %diff.check7116
  br i1 %or.cond9198, label %.lr.ph159.i.i1627.preheader, label %vector.main.loop.iter.check7117

vector.main.loop.iter.check7117:                  ; preds = %iter.check7129
  %min.iters.check7118 = icmp ult i32 %i.qpa, 31
  br i1 %min.iters.check7118, label %vec.epilog.ph7133, label %vector.ph7119

vector.ph7119:                                    ; preds = %vector.main.loop.iter.check7117
  %i.qpe = and i64 %i.qpc, 24
  %n.vec7120 = and i64 %i.qpc, 8589934560         ; 5 uses
  %i.qpf = shl nuw nsw i64 %n.vec7120, 1          ; 2 uses
  %i.qpg = getelementptr i8, ptr %.2.lcssa.i37.i1626, i64 %i.qpf
  %i.qph = getelementptr i8, ptr %.237.lcssa.i.i1625, i64 %i.qpf
  %i.qpi = trunc i64 %n.vec7120 to i32
  %i.qpj = add i32 %.241.lcssa.i.i1624, %i.qpi
  %i.qpk = insertelement <16 x float> poison, float %i.qjy, i64 0
  %i.qpl = shufflevector <16 x float> %i.qpk, <16 x float> poison, <16 x i32> zeroinitializer
  %i.qpm = insertelement <8 x float> poison, float %i.qjy, i64 0
  %i.qpn = shufflevector <8 x float> %i.qpm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qpo = insertelement <4 x float> poison, float %i.qjy, i64 0
  %i.qpp = shufflevector <4 x float> %i.qpo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qpq = insertelement <2 x float> poison, float %i.qjy, i64 0
  %i.qpr = shufflevector <2 x float> %i.qpq, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7121

vector.body7121:                                  ; preds = %vector.ph7119, %vector.body7121
  %index7122 = phi i64 [ 0, %vector.ph7119 ], [ %index.next7126, %vector.body7121 ] ; 2 uses
  %i.qps = shl i64 %index7122, 1                  ; 2 uses
  %next.gep7123 = getelementptr i8, ptr %.2.lcssa.i37.i1626, i64 %i.qps
  %next.gep7124 = getelementptr i8, ptr %.237.lcssa.i.i1625, i64 %i.qps
  %wide.load7125 = load <32 x i16>, ptr %next.gep7123, align 2, !tbaa !558
  %i.qpt = zext <32 x i16> %wide.load7125 to <32 x i32>
  %i.qpu = shl nuw <32 x i32> %i.qpt, splat (i32 16)
  %i.qpv = bitcast <32 x i32> %i.qpu to <32 x float> ; 6 uses
  %i.qpw = extractelement <32 x float> %i.qpv, i64 0
  %i.qpx = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qjy, float %i.qpw)
  %i.qpy = shufflevector <32 x float> %i.qpv, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.qpz = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.qpl, <16 x float> %i.qpy)
  %i.qqa = shufflevector <32 x float> %i.qpv, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.qqb = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.qpn, <8 x float> %i.qqa)
  %i.qqc = shufflevector <32 x float> %i.qpv, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.qqd = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.qpp, <4 x float> %i.qqc)
  %i.qqe = extractelement <32 x float> %i.qpv, i64 29
  %i.qqf = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qjy, float %i.qqe)
  %i.qqg = shufflevector <32 x float> %i.qpv, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.qqh = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.qpr, <2 x float> %i.qqg)
  %i.qqi = insertelement <32 x float> poison, float %i.qpx, i64 0
  %i.qqj = shufflevector <16 x float> %i.qpz, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qqk = shufflevector <32 x float> %i.qqi, <32 x float> %i.qqj, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qql = shufflevector <8 x float> %i.qqb, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qqm = shufflevector <32 x float> %i.qqk, <32 x float> %i.qql, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qqn = shufflevector <4 x float> %i.qqd, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qqo = shufflevector <32 x float> %i.qqm, <32 x float> %i.qqn, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.qqp = insertelement <32 x float> %i.qqo, float %i.qqf, i64 29
  %i.qqq = shufflevector <2 x float> %i.qqh, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qqr = shufflevector <32 x float> %i.qqp, <32 x float> %i.qqq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.qqs = bitcast <32 x float> %i.qqr to <32 x i32>
  %i.qqt = lshr <32 x i32> %i.qqs, splat (i32 16)
  %i.qqu = trunc nuw <32 x i32> %i.qqt to <32 x i16>
  store <32 x i16> %i.qqu, ptr %next.gep7124, align 2, !tbaa !558
  %index.next7126 = add nuw i64 %index7122, 32    ; 2 uses
  %i.qqv = icmp eq i64 %index.next7126, %n.vec7120
  br i1 %i.qqv, label %middle.block7127, label %vector.body7121, !llvm.loop !347

middle.block7127:                                 ; preds = %vector.body7121
  %cmp.n7128 = icmp eq i64 %i.qpc, %n.vec7120
  br i1 %cmp.n7128, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7130

vec.epilog.iter.check7130:                        ; preds = %middle.block7127
  %min.epilog.iters.check7132 = icmp eq i64 %i.qpe, 0
  br i1 %min.epilog.iters.check7132, label %.lr.ph159.i.i1627.preheader, label %vec.epilog.ph7133, !prof !561

vec.epilog.ph7133:                                ; preds = %vector.main.loop.iter.check7117, %vec.epilog.iter.check7130
  %vec.epilog.resume.val7134 = phi i64 [ %n.vec7120, %vec.epilog.iter.check7130 ], [ 0, %vector.main.loop.iter.check7117 ]
  %n.vec7135 = and i64 %i.qpc, 8589934584         ; 4 uses
  %i.qqw = shl nuw nsw i64 %n.vec7135, 1          ; 2 uses
  %i.qqx = getelementptr i8, ptr %.2.lcssa.i37.i1626, i64 %i.qqw
  %i.qqy = getelementptr i8, ptr %.237.lcssa.i.i1625, i64 %i.qqw
  %i.qqz = trunc i64 %n.vec7135 to i32
  %i.qra = add i32 %.241.lcssa.i.i1624, %i.qqz
  %i.qrb = insertelement <4 x float> poison, float %i.qjy, i64 0
  %i.qrc = shufflevector <4 x float> %i.qrb, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7136

vec.epilog.vector.body7136:                       ; preds = %vec.epilog.vector.body7136, %vec.epilog.ph7133
  %index7137 = phi i64 [ %vec.epilog.resume.val7134, %vec.epilog.ph7133 ], [ %index.next7141, %vec.epilog.vector.body7136 ] ; 2 uses
  %i.qrd = shl i64 %index7137, 1                  ; 2 uses
  %next.gep7138 = getelementptr i8, ptr %.2.lcssa.i37.i1626, i64 %i.qrd
  %next.gep7139 = getelementptr i8, ptr %.237.lcssa.i.i1625, i64 %i.qrd
  %wide.load7140 = load <8 x i16>, ptr %next.gep7138, align 2, !tbaa !558
  %i.qre = zext <8 x i16> %wide.load7140 to <8 x i32>
  %i.qrf = shl nuw <8 x i32> %i.qre, splat (i32 16)
  %i.qrg = bitcast <8 x i32> %i.qrf to <8 x float> ; 5 uses
  %i.qrh = extractelement <8 x float> %i.qrg, i64 0
  %i.qri = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qjy, float %i.qrh)
  %i.qrj = extractelement <8 x float> %i.qrg, i64 1
  %i.qrk = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qjy, float %i.qrj)
  %i.qrl = extractelement <8 x float> %i.qrg, i64 2
  %i.qrm = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qjy, float %i.qrl)
  %i.qrn = shufflevector <8 x float> %i.qrg, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.qro = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.qrc, <4 x float> %i.qrn)
  %i.qrp = extractelement <8 x float> %i.qrg, i64 7
  %i.qrq = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qjy, float %i.qrp)
  %i.qrr = insertelement <8 x float> poison, float %i.qri, i64 0
  %i.qrs = insertelement <8 x float> %i.qrr, float %i.qrk, i64 1
  %i.qrt = insertelement <8 x float> %i.qrs, float %i.qrm, i64 2
  %i.qru = shufflevector <4 x float> %i.qro, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qrv = shufflevector <8 x float> %i.qrt, <8 x float> %i.qru, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.qrw = insertelement <8 x float> %i.qrv, float %i.qrq, i64 7
  %i.qrx = bitcast <8 x float> %i.qrw to <8 x i32>
  %i.qry = lshr <8 x i32> %i.qrx, splat (i32 16)
  %i.qrz = trunc nuw <8 x i32> %i.qry to <8 x i16>
  store <8 x i16> %i.qrz, ptr %next.gep7139, align 2, !tbaa !558
  %index.next7141 = add nuw i64 %index7137, 8     ; 2 uses
  %i.qsa = icmp eq i64 %index.next7141, %n.vec7135
  br i1 %i.qsa, label %vec.epilog.middle.block7142, label %vec.epilog.vector.body7136, !llvm.loop !348

vec.epilog.middle.block7142:                      ; preds = %vec.epilog.vector.body7136
  %cmp.n7143 = icmp eq i64 %i.qpc, %n.vec7135
  br i1 %cmp.n7143, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i.i1627.preheader

.lr.ph159.i.i1627.preheader:                      ; preds = %iter.check7129, %vec.epilog.iter.check7130, %vec.epilog.middle.block7142
  %.3158.i.i1628.ph = phi ptr [ %.2.lcssa.i37.i1626, %iter.check7129 ], [ %i.qpg, %vec.epilog.iter.check7130 ], [ %i.qqx, %vec.epilog.middle.block7142 ] ; 3 uses
  %.338157.i.i1629.ph = phi ptr [ %.237.lcssa.i.i1625, %iter.check7129 ], [ %i.qph, %vec.epilog.iter.check7130 ], [ %i.qqy, %vec.epilog.middle.block7142 ] ; 3 uses
  %.342156.i.i1630.ph = phi i32 [ %.241.lcssa.i.i1624, %iter.check7129 ], [ %i.qpj, %vec.epilog.iter.check7130 ], [ %i.qra, %vec.epilog.middle.block7142 ] ; 4 uses
  %i.qsb = sub i32 %i.pzl, %.342156.i.i1630.ph
  %.neg11047 = add i32 %.342156.i.i1630.ph, 1
  %xtraiter10447 = and i32 %i.qsb, 1
  %lcmp.mod10448.not = icmp eq i32 %xtraiter10447, 0
  br i1 %lcmp.mod10448.not, label %.lr.ph159.i.i1627.prol.loopexit, label %.lr.ph159.i.i1627.prol

.lr.ph159.i.i1627.prol:                           ; preds = %.lr.ph159.i.i1627.preheader
  %i.qsc = getelementptr inbounds nuw i8, ptr %.3158.i.i1628.ph, i64 2
  %i.qsd = load i16, ptr %.3158.i.i1628.ph, align 2, !tbaa !558
  %i.qse = zext i16 %i.qsd to i32
  %i.qsf = shl nuw i32 %i.qse, 16
  %i.qsg = bitcast i32 %i.qsf to float
  %i.qsh = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qjy, float %i.qsg)
  %i.qsi = bitcast float %i.qsh to i32
  %i.qsj = lshr i32 %i.qsi, 16
  %i.qsk = trunc nuw i32 %i.qsj to i16
  %i.qsl = getelementptr inbounds nuw i8, ptr %.338157.i.i1629.ph, i64 2
  store i16 %i.qsk, ptr %.338157.i.i1629.ph, align 2, !tbaa !558
  %i.qsm = add nuw nsw i32 %.342156.i.i1630.ph, 1
  br label %.lr.ph159.i.i1627.prol.loopexit

.lr.ph159.i.i1627.prol.loopexit:                  ; preds = %.lr.ph159.i.i1627.prol, %.lr.ph159.i.i1627.preheader
  %.3158.i.i1628.unr = phi ptr [ %.3158.i.i1628.ph, %.lr.ph159.i.i1627.preheader ], [ %i.qsc, %.lr.ph159.i.i1627.prol ]
  %.338157.i.i1629.unr = phi ptr [ %.338157.i.i1629.ph, %.lr.ph159.i.i1627.preheader ], [ %i.qsl, %.lr.ph159.i.i1627.prol ]
  %.342156.i.i1630.unr = phi i32 [ %.342156.i.i1630.ph, %.lr.ph159.i.i1627.preheader ], [ %i.qsm, %.lr.ph159.i.i1627.prol ]
  %i.qsn = icmp eq i32 %i.pzl, %.neg11047
  br i1 %i.qsn, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i.i1627

bb.ln:                                            ; preds = %bb.ln, %.lr.ph152.i.i1632
  %.2151.i.i1633 = phi ptr [ %.1.lcssa.i35.i1622, %.lr.ph152.i.i1632 ], [ %i.qul, %bb.ln ] ; 2 uses
  %.237150.i.i1634 = phi ptr [ %.136.lcssa.i.i1621, %.lr.ph152.i.i1632 ], [ %i.qum, %bb.ln ] ; 2 uses
  %.241149.i.i1635 = phi i32 [ %.140.lcssa.i.i1620, %.lr.ph152.i.i1632 ], [ %i.qun, %bb.ln ]
  %i.qso = load i64, ptr %.2151.i.i1633, align 1, !tbaa !555
  %i.qsp = insertelement <2 x i64> poison, i64 %i.qso, i64 0
  %i.qsq = bitcast <2 x i64> %i.qsp to <8 x i16>
  %i.qsr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qsq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.qss = bitcast <8 x i16> %i.qsr to <4 x float> ; 3 uses
  %i.qst = fcmp fast oeq <4 x float> %i.qss, zeroinitializer ; 2 uses
  %.not132.i.i1636 = or <4 x i1> %i.qna, %i.qst
  %i.qsu = fcmp fast olt <4 x float> %i.qss, zeroinitializer
  %i.qsv = select <4 x i1> %i.qsu, <4 x float> %i.qne, <4 x float> zeroinitializer
  %i.qsw = fdiv fast <4 x float> %i.qkt, %i.qss   ; 2 uses
  %i.qsx = bitcast <4 x float> %i.qsw to <4 x i32>
  %i.qsy = and <4 x i32> %i.qsx, splat (i32 -2147483648)
  %i.qsz = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.qsw) ; 3 uses
  %i.qta = fcmp fast ogt <4 x float> %i.qsz, splat (float 1.000000e+00) ; 2 uses
  %i.qtb = select <4 x i1> %i.qta, <4 x float> splat (float -1.000000e+00), <4 x float> %i.qsz
  %i.qtc = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.qsz, <4 x float> splat (float 1.000000e+00))
  %i.qtd = fdiv fast <4 x float> %i.qtb, %i.qtc   ; 3 uses
  %i.qte = fmul fast <4 x float> %i.qtd, %i.qtd   ; 3 uses
  %i.qtf = fmul fast <4 x float> %i.qte, %i.qte   ; 7 uses
  %i.qtg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qtf, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.qth = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qtf, <4 x float> nofpclass(nan inf) %i.qtg, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.qti = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qtf, <4 x float> nofpclass(nan inf) %i.qth, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.qtj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qtf, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.qtk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qtf, <4 x float> nofpclass(nan inf) %i.qtj, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.qtl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qtf, <4 x float> nofpclass(nan inf) %i.qtk, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.qtm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qtf, <4 x float> nofpclass(nan inf) %i.qtl, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.qtn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qte, <4 x float> nofpclass(nan inf) %i.qti, <4 x float> nofpclass(nan inf) %i.qtm)
  %i.qto = fmul fast <4 x float> %i.qtn, %i.qtd
  %i.qtp = select <4 x i1> %i.qta, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.qtq = fadd fast <4 x float> %i.qto, %i.qtp
  %i.qtr = bitcast <4 x float> %i.qtq to <4 x i32>
  %i.qts = or <4 x i32> %i.qsy, %i.qtr
  %i.qtt = bitcast <4 x i32> %i.qts to <4 x float>
  %i.qtu = fadd fast <4 x float> %i.qsv, %i.qtt
  %i.qtv = bitcast <8 x i16> %i.qsr to <4 x i32>
  %i.qtw = and <4 x i32> %i.qtv, splat (i32 -2147483648)
  %i.qtx = or disjoint <4 x i32> %i.qtw, splat (i32 1078530011)
  %i.qty = bitcast <4 x i32> %i.qtx to <4 x float>
  %i.qtz = fcmp fast uge <4 x float> %i.qty, zeroinitializer
  %i.qua = select <4 x i1> %i.qtz, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.qub = bitcast <4 x float> %i.qtu to <4 x i32>
  %i.quc = select <4 x i1> %.not132.i.i1636, <4 x i32> zeroinitializer, <4 x i32> %i.qub
  %i.qud = select <4 x i1> %i.qst, <4 x i32> %i.qnf, <4 x i32> zeroinitializer
  %i.que = select <4 x i1> %i.qna, <4 x i32> %i.qua, <4 x i32> %i.qud
  %i.quf = or <4 x i32> %i.quc, %i.que
  %i.qug = bitcast <4 x i32> %i.quf to <4 x float>
  %i.quh = shufflevector <4 x float> %i.qug, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.qui = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.quh)
  %i.quj = bitcast <8 x bfloat> %i.qui to <2 x i64>
  %i.quk = extractelement <2 x i64> %i.quj, i64 0
  store i64 %i.quk, ptr %.237150.i.i1634, align 1, !tbaa !555
  %i.qul = getelementptr inbounds nuw i8, ptr %.2151.i.i1633, i64 8 ; 2 uses
  %i.qum = getelementptr inbounds nuw i8, ptr %.237150.i.i1634, i64 8 ; 2 uses
  %i.qun = add nuw nsw i32 %.241149.i.i1635, 4    ; 3 uses
  %i.quo = or disjoint i32 %i.qun, 3
  %i.qup = icmp slt i32 %i.quo, %i.pzl
  br i1 %i.qup, label %bb.ln, label %.preheader.i36.i1623, !llvm.loop !349

.lr.ph159.i.i1627:                                ; preds = %.lr.ph159.i.i1627.prol.loopexit, %.lr.ph159.i.i1627
  %.3158.i.i1628 = phi ptr [ %i.qva, %.lr.ph159.i.i1627 ], [ %.3158.i.i1628.unr, %.lr.ph159.i.i1627.prol.loopexit ] ; 3 uses
  %.338157.i.i1629 = phi ptr [ %i.qvj, %.lr.ph159.i.i1627 ], [ %.338157.i.i1629.unr, %.lr.ph159.i.i1627.prol.loopexit ] ; 3 uses
  %.342156.i.i1630 = phi i32 [ %i.qvk, %.lr.ph159.i.i1627 ], [ %.342156.i.i1630.unr, %.lr.ph159.i.i1627.prol.loopexit ]
  %i.quq = getelementptr inbounds nuw i8, ptr %.3158.i.i1628, i64 2
  %i.qur = load i16, ptr %.3158.i.i1628, align 2, !tbaa !558
  %i.qus = zext i16 %i.qur to i32
  %i.qut = shl nuw i32 %i.qus, 16
  %i.quu = bitcast i32 %i.qut to float
  %i.quv = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qjy, float %i.quu)
  %i.quw = bitcast float %i.quv to i32
  %i.qux = lshr i32 %i.quw, 16
  %i.quy = trunc nuw i32 %i.qux to i16
  %i.quz = getelementptr inbounds nuw i8, ptr %.338157.i.i1629, i64 2
  store i16 %i.quy, ptr %.338157.i.i1629, align 2, !tbaa !558
  %i.qva = getelementptr inbounds nuw i8, ptr %.3158.i.i1628, i64 4
  %i.qvb = load i16, ptr %i.quq, align 2, !tbaa !558
  %i.qvc = zext i16 %i.qvb to i32
  %i.qvd = shl nuw i32 %i.qvc, 16
  %i.qve = bitcast i32 %i.qvd to float
  %i.qvf = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qjy, float %i.qve)
  %i.qvg = bitcast float %i.qvf to i32
  %i.qvh = lshr i32 %i.qvg, 16
  %i.qvi = trunc nuw i32 %i.qvh to i16
  %i.qvj = getelementptr inbounds nuw i8, ptr %.338157.i.i1629, i64 4
  store i16 %i.qvi, ptr %i.quz, align 2, !tbaa !558
  %i.qvk = add nuw nsw i32 %.342156.i.i1630, 2    ; 2 uses
  %exitcond.not.i38.i1631.1 = icmp eq i32 %i.qvk, %i.pzl
  br i1 %exitcond.not.i38.i1631.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i.i1627, !llvm.loop !350

bb.lo:                                            ; preds = %bb.le
  %i.qvl = icmp eq i32 %3, 1
  br i1 %i.qvl, label %bb.lp, label %bb.ly

bb.lp:                                            ; preds = %bb.lo
  %i.qvm = load i16, ptr %0, align 2, !tbaa !558
  %i.qvn = zext i16 %i.qvm to i32
  %i.qvo = shl nuw i32 %i.qvn, 16
  %i.qvp = bitcast i32 %i.qvo to float            ; 15 uses
  %i.qvq = icmp eq i32 %.sroa.speculated.i1516, 4
  br i1 %i.qvq, label %.thread129.i76.i1614, label %bb.lq

.thread129.i76.i1614:                             ; preds = %bb.lp
  %i.qvr = load i64, ptr %0, align 2, !tbaa !555
  %i.qvs = insertelement <2 x i64> poison, i64 %i.qvr, i64 0
  %i.qvt = bitcast <2 x i64> %i.qvs to <8 x i16>
  %i.qvu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qvt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qvv = bitcast <8 x i16> %i.qvu to <4 x float> ; 2 uses
  %i.qvw = shufflevector <4 x float> %i.qvv, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.lt

bb.lq:                                            ; preds = %bb.lp
  %i.qvx = insertelement <4 x float> poison, float %i.qvp, i64 0 ; 2 uses
  %i.qvy = shufflevector <4 x float> %i.qvx, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.qvz = icmp eq i32 %.sroa.speculated.i1516, 8
  br i1 %i.qvz, label %.thread128.i75.i1613, label %bb.lr

.thread128.i75.i1613:                             ; preds = %bb.lq
  %i.qwa = load <8 x bfloat>, ptr %0, align 2, !tbaa !555
  %i.qwb = fpext fast <8 x bfloat> %i.qwa to <8 x float>
  br label %bb.lt

bb.lr:                                            ; preds = %bb.lq
  %i.qwc = shufflevector <4 x float> %i.qvx, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.qwd = icmp eq i32 %.sroa.speculated.i1516, 16
  br i1 %i.qwd, label %bb.ls, label %bb.lt

bb.ls:                                            ; preds = %bb.lr
  %i.qwe = load <16 x bfloat>, ptr %0, align 2, !tbaa !555
  %i.qwf = fpext fast <16 x bfloat> %i.qwe to <16 x float>
  br label %bb.lu

bb.lt:                                            ; preds = %bb.lr, %.thread128.i75.i1613, %.thread129.i76.i1614
  %i.qwg = phi <8 x float> [ %i.qwb, %.thread128.i75.i1613 ], [ %i.qwc, %bb.lr ], [ %i.qvw, %.thread129.i76.i1614 ] ; 2 uses
  %i.qwh = phi <4 x float> [ %i.qvy, %.thread128.i75.i1613 ], [ %i.qvy, %bb.lr ], [ %i.qvv, %.thread129.i76.i1614 ]
  %i.qwi = shufflevector <8 x float> %i.qwg, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  %i.qwj = phi <8 x float> [ %i.qwc, %bb.ls ], [ %i.qwg, %bb.lt ] ; 4 uses
  %i.qwk = phi <4 x float> [ %i.qvy, %bb.ls ], [ %i.qwh, %bb.lt ] ; 4 uses
  %i.qwl = phi fast <16 x float> [ %i.qwf, %bb.ls ], [ %i.qwi, %bb.lt ] ; 4 uses
  %i.qwm = icmp sgt i32 %i.pzl, 15
  br i1 %i.qwm, label %.lr.ph.i70.i1608, label %.preheader136.i43.i1585

.lr.ph.i70.i1608:                                 ; preds = %bb.lu
  %i.qwn = fcmp fast one <16 x float> %i.qwl, zeroinitializer
  %i.qwo = fcmp fast olt <16 x float> %i.qwl, zeroinitializer
  %i.qwp = bitcast <16 x float> %i.qwl to <16 x i32>
  %i.qwq = icmp slt <16 x i32> %i.qwp, zeroinitializer
  %i.qwr = select fast <16 x i1> %i.qwq, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.qws = fdiv fast <16 x float> splat (float 1.000000e+00), %i.qwl
  br label %bb.lv

.preheader136.loopexit.i74.i1612:                 ; preds = %bb.lv
  %i.qwt = and i32 %i.pzl, 2147483632
  br label %.preheader136.i43.i1585

.preheader136.i43.i1585:                          ; preds = %.preheader136.loopexit.i74.i1612, %bb.lu
  %.039.lcssa.i44.i1586 = phi i32 [ 0, %bb.lu ], [ %i.qwt, %.preheader136.loopexit.i74.i1612 ] ; 3 uses
  %.035.lcssa.i45.i1587 = phi ptr [ %2, %bb.lu ], [ %i.qyl, %.preheader136.loopexit.i74.i1612 ] ; 2 uses
  %.0.lcssa.i46.i1588 = phi ptr [ %1, %bb.lu ], [ %i.qyk, %.preheader136.loopexit.i74.i1612 ] ; 2 uses
  %i.qwu = or disjoint i32 %.039.lcssa.i44.i1586, 7
  %i.qwv = icmp slt i32 %i.qwu, %i.pzl
  br i1 %i.qwv, label %.lr.ph145.i65.i, label %.preheader135.i47.i1589

.lr.ph145.i65.i:                                  ; preds = %.preheader136.i43.i1585
  %i.qww = fcmp fast ueq <8 x float> %i.qwj, zeroinitializer ; 2 uses
  %i.qwx = fcmp fast olt <8 x float> %i.qwj, zeroinitializer
  %i.qwy = bitcast <8 x float> %i.qwj to <8 x i32>
  %isneg.inv132.i.i1607 = icmp slt <8 x i32> %i.qwy, zeroinitializer
  %i.qwz = select <8 x i1> %isneg.inv132.i.i1607, <8 x i32> splat (i32 1078530011), <8 x i32> zeroinitializer
  %i.qxa = fdiv fast <8 x float> splat (float 1.000000e+00), %i.qwj
  br label %bb.lw

bb.lv:                                            ; preds = %bb.lv, %.lr.ph.i70.i1608
  %.0139.i71.i1609 = phi ptr [ %1, %.lr.ph.i70.i1608 ], [ %i.qyk, %bb.lv ] ; 2 uses
  %.035138.i72.i1610 = phi ptr [ %2, %.lr.ph.i70.i1608 ], [ %i.qyl, %bb.lv ] ; 2 uses
  %.039137.i73.i1611 = phi i32 [ 0, %.lr.ph.i70.i1608 ], [ %i.qym, %bb.lv ]
  %i.qxb = load <16 x bfloat>, ptr %.0139.i71.i1609, align 1, !tbaa !555 ; 3 uses
  %i.qxc = fpext fast <16 x bfloat> %i.qxb to <16 x float> ; 2 uses
  %i.qxd = fcmp fast one <16 x bfloat> %i.qxb, zeroinitializer
  %i.qxe = fcmp fast olt <16 x bfloat> %i.qxb, zeroinitializer
  %i.qxf = select fast <16 x i1> %i.qxe, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.qxg = select fast <16 x i1> %i.qwo, <16 x float> %i.qxf, <16 x float> zeroinitializer
  %i.qxh = fmul fast <16 x float> %i.qxc, %i.qws  ; 2 uses
  %i.qxi = bitcast <16 x float> %i.qxh to <16 x i32>
  %i.qxj = and <16 x i32> %i.qxi, splat (i32 -2147483648)
  %i.qxk = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.qxh) ; 3 uses
  %i.qxl = fcmp fast ogt <16 x float> %i.qxk, splat (float 1.000000e+00) ; 2 uses
  %i.qxm = select fast <16 x i1> %i.qxl, <16 x float> splat (float -1.000000e+00), <16 x float> %i.qxk
  %i.qxn = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.qxk, <16 x float> splat (float 1.000000e+00))
  %i.qxo = fdiv fast <16 x float> %i.qxm, %i.qxn  ; 3 uses
  %i.qxp = fmul fast <16 x float> %i.qxo, %i.qxo  ; 3 uses
  %i.qxq = fmul fast <16 x float> %i.qxp, %i.qxp  ; 7 uses
  %i.qxr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qxq, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.qxs = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qxq, <16 x float> nofpclass(nan inf) %i.qxr, <16 x float> splat (float f0xBE117200))
  %i.qxt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qxq, <16 x float> nofpclass(nan inf) %i.qxs, <16 x float> splat (float f0xBEAAAA53))
  %i.qxu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qxq, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.qxv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qxq, <16 x float> nofpclass(nan inf) %i.qxu, <16 x float> splat (float f0x3DD9ED24))
  %i.qxw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qxq, <16 x float> nofpclass(nan inf) %i.qxv, <16 x float> splat (float f0x3E4CB974))
  %i.qxx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qxq, <16 x float> nofpclass(nan inf) %i.qxw, <16 x float> splat (float 1.000000e+00))
  %i.qxy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qxp, <16 x float> nofpclass(nan inf) %i.qxt, <16 x float> nofpclass(nan inf) %i.qxx)
  %i.qxz = fmul fast <16 x float> %i.qxy, %i.qxo
  %i.qya = select fast <16 x i1> %i.qxl, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.qyb = fadd fast <16 x float> %i.qxz, %i.qya
  %i.qyc = bitcast <16 x float> %i.qyb to <16 x i32>
  %i.qyd = or <16 x i32> %i.qxj, %i.qyc
  %i.qye = bitcast <16 x i32> %i.qyd to <16 x float>
  %i.qyf = fadd fast <16 x float> %i.qxg, %i.qye
  %i.qyg = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.qxc)
  %i.qyh = select <16 x i1> %i.qwn, <16 x float> %i.qyf, <16 x float> %i.qyg
  %i.qyi = select <16 x i1> %i.qxd, <16 x float> %i.qyh, <16 x float> %i.qwr
  %i.qyj = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.qyi)
  store <16 x bfloat> %i.qyj, ptr %.035138.i72.i1610, align 1, !tbaa !555
  %i.qyk = getelementptr inbounds nuw i8, ptr %.0139.i71.i1609, i64 32 ; 2 uses
  %i.qyl = getelementptr inbounds nuw i8, ptr %.035138.i72.i1610, i64 32 ; 2 uses
  %i.qym = add nuw nsw i32 %.039137.i73.i1611, 16 ; 2 uses
  %i.qyn = or disjoint i32 %i.qym, 15
  %i.qyo = icmp slt i32 %i.qyn, %i.pzl
  br i1 %i.qyo, label %bb.lv, label %.preheader136.loopexit.i74.i1612, !llvm.loop !351

.preheader135.i47.i1589:                          ; preds = %bb.lw, %.preheader136.i43.i1585
  %.140.lcssa.i48.i1590 = phi i32 [ %.039.lcssa.i44.i1586, %.preheader136.i43.i1585 ], [ %i.ran, %bb.lw ] ; 3 uses
  %.136.lcssa.i49.i1591 = phi ptr [ %.035.lcssa.i45.i1587, %.preheader136.i43.i1585 ], [ %i.ram, %bb.lw ] ; 2 uses
  %.1.lcssa.i50.i1592 = phi ptr [ %.0.lcssa.i46.i1588, %.preheader136.i43.i1585 ], [ %i.ral, %bb.lw ] ; 2 uses
  %i.qyp = or disjoint i32 %.140.lcssa.i48.i1590, 3
  %i.qyq = icmp slt i32 %i.qyp, %i.pzl
  br i1 %i.qyq, label %.lr.ph152.i60.i1602, label %.preheader.i51.i1593

.lr.ph152.i60.i1602:                              ; preds = %.preheader135.i47.i1589
  %i.qyr = fcmp fast oeq <4 x float> %i.qwk, zeroinitializer ; 2 uses
  %i.qys = fcmp fast olt <4 x float> %i.qwk, zeroinitializer
  %i.qyt = bitcast <4 x float> %i.qwk to <4 x i32>
  %isneg.inv.i.i1603 = icmp slt <4 x i32> %i.qyt, zeroinitializer
  %i.qyu = select <4 x i1> %isneg.inv.i.i1603, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.qyv = fdiv fast <4 x float> splat (float 1.000000e+00), %i.qwk
  br label %bb.lx

bb.lw:                                            ; preds = %bb.lw, %.lr.ph145.i65.i
  %.1144.i66.i = phi ptr [ %.0.lcssa.i46.i1588, %.lr.ph145.i65.i ], [ %i.ral, %bb.lw ] ; 2 uses
  %.136143.i67.i = phi ptr [ %.035.lcssa.i45.i1587, %.lr.ph145.i65.i ], [ %i.ram, %bb.lw ] ; 2 uses
  %.140142.i68.i = phi i32 [ %.039.lcssa.i44.i1586, %.lr.ph145.i65.i ], [ %i.ran, %bb.lw ]
  %i.qyw = load <8 x bfloat>, ptr %.1144.i66.i, align 1, !tbaa !555 ; 3 uses
  %i.qyx = fpext fast <8 x bfloat> %i.qyw to <8 x float> ; 2 uses
  %i.qyy = fcmp fast ueq <8 x bfloat> %i.qyw, zeroinitializer ; 2 uses
  %.not134.i69.i = or <8 x i1> %i.qww, %i.qyy
  %i.qyz = bitcast <8 x float> %i.qyx to <8 x i32>
  %i.qza = and <8 x i32> %i.qyz, splat (i32 -2147483648)
  %i.qzb = fcmp fast olt <8 x bfloat> %i.qyw, zeroinitializer
  %i.qzc = select <8 x i1> %i.qzb, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.qzd = select <8 x i1> %i.qwx, <8 x float> %i.qzc, <8 x float> zeroinitializer
  %i.qze = fmul fast <8 x float> %i.qyx, %i.qxa   ; 2 uses
  %i.qzf = bitcast <8 x float> %i.qze to <8 x i32>
  %i.qzg = and <8 x i32> %i.qzf, splat (i32 -2147483648)
  %i.qzh = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.qze) ; 3 uses
  %i.qzi = fcmp fast ogt <8 x float> %i.qzh, splat (float 1.000000e+00) ; 2 uses
  %i.qzj = select <8 x i1> %i.qzi, <8 x float> splat (float -1.000000e+00), <8 x float> %i.qzh
  %i.qzk = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.qzh, <8 x float> splat (float 1.000000e+00))
  %i.qzl = fdiv fast <8 x float> %i.qzj, %i.qzk   ; 3 uses
  %i.qzm = fmul fast <8 x float> %i.qzl, %i.qzl   ; 3 uses
  %i.qzn = fmul fast <8 x float> %i.qzm, %i.qzm   ; 7 uses
  %i.qzo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qzn, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.qzp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qzn, <8 x float> nofpclass(nan inf) %i.qzo, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.qzq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qzn, <8 x float> nofpclass(nan inf) %i.qzp, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.qzr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qzn, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.qzs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qzn, <8 x float> nofpclass(nan inf) %i.qzr, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.qzt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qzn, <8 x float> nofpclass(nan inf) %i.qzs, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.qzu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qzn, <8 x float> nofpclass(nan inf) %i.qzt, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.qzv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qzm, <8 x float> nofpclass(nan inf) %i.qzq, <8 x float> nofpclass(nan inf) %i.qzu)
  %i.qzw = fmul fast <8 x float> %i.qzv, %i.qzl
  %i.qzx = select <8 x i1> %i.qzi, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.qzy = fadd fast <8 x float> %i.qzw, %i.qzx
  %i.qzz = bitcast <8 x float> %i.qzy to <8 x i32>
  %i.raa = or <8 x i32> %i.qzg, %i.qzz
  %i.rab = bitcast <8 x i32> %i.raa to <8 x float>
  %i.rac = fadd fast <8 x float> %i.qzd, %i.rab
  %i.rad = or disjoint <8 x i32> %i.qza, splat (i32 1070141403)
  %i.rae = bitcast <8 x float> %i.rac to <8 x i32>
  %i.raf = select <8 x i1> %.not134.i69.i, <8 x i32> zeroinitializer, <8 x i32> %i.rae
  %i.rag = select <8 x i1> %i.qww, <8 x i32> %i.rad, <8 x i32> zeroinitializer
  %i.rah = select <8 x i1> %i.qyy, <8 x i32> %i.qwz, <8 x i32> %i.rag
  %i.rai = or <8 x i32> %i.raf, %i.rah
  %i.raj = bitcast <8 x i32> %i.rai to <8 x float>
  %i.rak = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.raj)
  store <8 x bfloat> %i.rak, ptr %.136143.i67.i, align 1, !tbaa !555
  %i.ral = getelementptr inbounds nuw i8, ptr %.1144.i66.i, i64 16 ; 2 uses
  %i.ram = getelementptr inbounds nuw i8, ptr %.136143.i67.i, i64 16 ; 2 uses
  %i.ran = add nuw nsw i32 %.140142.i68.i, 8      ; 3 uses
  %i.rao = or disjoint i32 %i.ran, 7
  %i.rap = icmp slt i32 %i.rao, %i.pzl
  br i1 %i.rap, label %bb.lw, label %.preheader135.i47.i1589, !llvm.loop !352

.preheader.i51.i1593:                             ; preds = %bb.lx, %.preheader135.i47.i1589
  %.241.lcssa.i52.i1594 = phi i32 [ %.140.lcssa.i48.i1590, %.preheader135.i47.i1589 ], [ %i.rgd, %bb.lx ] ; 5 uses
  %.237.lcssa.i53.i1595 = phi ptr [ %.136.lcssa.i49.i1591, %.preheader135.i47.i1589 ], [ %i.rgc, %bb.lx ] ; 6 uses
  %.2.lcssa.i54.i1596 = phi ptr [ %.1.lcssa.i50.i1592, %.preheader135.i47.i1589 ], [ %i.rgb, %bb.lx ] ; 6 uses
  %i.raq = icmp slt i32 %.241.lcssa.i52.i1594, %i.pzl
  br i1 %i.raq, label %iter.check7090, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7090:                                   ; preds = %.preheader.i51.i1593
  %.237.lcssa.i53.i15957074 = ptrtoaddr ptr %.237.lcssa.i53.i1595 to i64
  %.2.lcssa.i54.i15967073 = ptrtoaddr ptr %.2.lcssa.i54.i1596 to i64
  %i.rar = xor i32 %.241.lcssa.i52.i1594, -1
  %i.ras = add i32 %i.pzl, %i.rar                 ; 3 uses
  %i.rat = zext i32 %i.ras to i64
  %i.rau = add nuw nsw i64 %i.rat, 1              ; 5 uses
  %min.iters.check7075 = icmp ult i32 %i.ras, 7
  %i.rav = sub i64 %.2.lcssa.i54.i15967073, %.237.lcssa.i53.i15957074
  %diff.check7077 = icmp ugt i64 %i.rav, -64
  %or.cond9199 = select i1 %min.iters.check7075, i1 true, i1 %diff.check7077
  br i1 %or.cond9199, label %.lr.ph159.i55.i1597.preheader, label %vector.main.loop.iter.check7078

vector.main.loop.iter.check7078:                  ; preds = %iter.check7090
  %min.iters.check7079 = icmp ult i32 %i.ras, 31
  br i1 %min.iters.check7079, label %vec.epilog.ph7094, label %vector.ph7080

vector.ph7080:                                    ; preds = %vector.main.loop.iter.check7078
  %i.raw = and i64 %i.rau, 24
  %n.vec7081 = and i64 %i.rau, 8589934560         ; 5 uses
  %i.rax = shl nuw nsw i64 %n.vec7081, 1          ; 2 uses
  %i.ray = getelementptr i8, ptr %.2.lcssa.i54.i1596, i64 %i.rax
  %i.raz = getelementptr i8, ptr %.237.lcssa.i53.i1595, i64 %i.rax
  %i.rba = trunc i64 %n.vec7081 to i32
  %i.rbb = add i32 %.241.lcssa.i52.i1594, %i.rba
  %i.rbc = insertelement <16 x float> poison, float %i.qvp, i64 0
  %i.rbd = shufflevector <16 x float> %i.rbc, <16 x float> poison, <16 x i32> zeroinitializer
  %i.rbe = insertelement <8 x float> poison, float %i.qvp, i64 0
  %i.rbf = shufflevector <8 x float> %i.rbe, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rbg = insertelement <4 x float> poison, float %i.qvp, i64 0
  %i.rbh = shufflevector <4 x float> %i.rbg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rbi = insertelement <2 x float> poison, float %i.qvp, i64 0
  %i.rbj = shufflevector <2 x float> %i.rbi, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7082

vector.body7082:                                  ; preds = %vector.ph7080, %vector.body7082
  %index7083 = phi i64 [ 0, %vector.ph7080 ], [ %index.next7087, %vector.body7082 ] ; 2 uses
  %i.rbk = shl i64 %index7083, 1                  ; 2 uses
  %next.gep7084 = getelementptr i8, ptr %.2.lcssa.i54.i1596, i64 %i.rbk
  %next.gep7085 = getelementptr i8, ptr %.237.lcssa.i53.i1595, i64 %i.rbk
  %wide.load7086 = load <32 x i16>, ptr %next.gep7084, align 2, !tbaa !558
  %i.rbl = zext <32 x i16> %wide.load7086 to <32 x i32>
  %i.rbm = shl nuw <32 x i32> %i.rbl, splat (i32 16)
  %i.rbn = bitcast <32 x i32> %i.rbm to <32 x float> ; 6 uses
  %i.rbo = extractelement <32 x float> %i.rbn, i64 0
  %i.rbp = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rbo, float %i.qvp)
  %i.rbq = shufflevector <32 x float> %i.rbn, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.rbr = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.rbq, <16 x float> %i.rbd)
  %i.rbs = shufflevector <32 x float> %i.rbn, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.rbt = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.rbs, <8 x float> %i.rbf)
  %i.rbu = shufflevector <32 x float> %i.rbn, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.rbv = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.rbu, <4 x float> %i.rbh)
  %i.rbw = extractelement <32 x float> %i.rbn, i64 29
  %i.rbx = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rbw, float %i.qvp)
  %i.rby = shufflevector <32 x float> %i.rbn, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.rbz = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.rby, <2 x float> %i.rbj)
  %i.rca = insertelement <32 x float> poison, float %i.rbp, i64 0
  %i.rcb = shufflevector <16 x float> %i.rbr, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rcc = shufflevector <32 x float> %i.rca, <32 x float> %i.rcb, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rcd = shufflevector <8 x float> %i.rbt, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rce = shufflevector <32 x float> %i.rcc, <32 x float> %i.rcd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rcf = shufflevector <4 x float> %i.rbv, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rcg = shufflevector <32 x float> %i.rce, <32 x float> %i.rcf, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.rch = insertelement <32 x float> %i.rcg, float %i.rbx, i64 29
  %i.rci = shufflevector <2 x float> %i.rbz, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rcj = shufflevector <32 x float> %i.rch, <32 x float> %i.rci, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.rck = bitcast <32 x float> %i.rcj to <32 x i32>
  %i.rcl = lshr <32 x i32> %i.rck, splat (i32 16)
  %i.rcm = trunc nuw <32 x i32> %i.rcl to <32 x i16>
  store <32 x i16> %i.rcm, ptr %next.gep7085, align 2, !tbaa !558
  %index.next7087 = add nuw i64 %index7083, 32    ; 2 uses
  %i.rcn = icmp eq i64 %index.next7087, %n.vec7081
  br i1 %i.rcn, label %middle.block7088, label %vector.body7082, !llvm.loop !353

middle.block7088:                                 ; preds = %vector.body7082
  %cmp.n7089 = icmp eq i64 %i.rau, %n.vec7081
  br i1 %cmp.n7089, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7091

vec.epilog.iter.check7091:                        ; preds = %middle.block7088
  %min.epilog.iters.check7093 = icmp eq i64 %i.raw, 0
  br i1 %min.epilog.iters.check7093, label %.lr.ph159.i55.i1597.preheader, label %vec.epilog.ph7094, !prof !561

vec.epilog.ph7094:                                ; preds = %vector.main.loop.iter.check7078, %vec.epilog.iter.check7091
  %vec.epilog.resume.val7095 = phi i64 [ %n.vec7081, %vec.epilog.iter.check7091 ], [ 0, %vector.main.loop.iter.check7078 ]
  %n.vec7096 = and i64 %i.rau, 8589934584         ; 4 uses
  %i.rco = shl nuw nsw i64 %n.vec7096, 1          ; 2 uses
  %i.rcp = getelementptr i8, ptr %.2.lcssa.i54.i1596, i64 %i.rco
  %i.rcq = getelementptr i8, ptr %.237.lcssa.i53.i1595, i64 %i.rco
  %i.rcr = trunc i64 %n.vec7096 to i32
  %i.rcs = add i32 %.241.lcssa.i52.i1594, %i.rcr
  %i.rct = insertelement <4 x float> poison, float %i.qvp, i64 0
  %i.rcu = shufflevector <4 x float> %i.rct, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7097

vec.epilog.vector.body7097:                       ; preds = %vec.epilog.vector.body7097, %vec.epilog.ph7094
  %index7098 = phi i64 [ %vec.epilog.resume.val7095, %vec.epilog.ph7094 ], [ %index.next7102, %vec.epilog.vector.body7097 ] ; 2 uses
  %i.rcv = shl i64 %index7098, 1                  ; 2 uses
  %next.gep7099 = getelementptr i8, ptr %.2.lcssa.i54.i1596, i64 %i.rcv
  %next.gep7100 = getelementptr i8, ptr %.237.lcssa.i53.i1595, i64 %i.rcv
  %wide.load7101 = load <8 x i16>, ptr %next.gep7099, align 2, !tbaa !558
  %i.rcw = zext <8 x i16> %wide.load7101 to <8 x i32>
  %i.rcx = shl nuw <8 x i32> %i.rcw, splat (i32 16)
  %i.rcy = bitcast <8 x i32> %i.rcx to <8 x float> ; 5 uses
  %i.rcz = extractelement <8 x float> %i.rcy, i64 0
  %i.rda = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rcz, float %i.qvp)
  %i.rdb = extractelement <8 x float> %i.rcy, i64 1
  %i.rdc = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rdb, float %i.qvp)
  %i.rdd = extractelement <8 x float> %i.rcy, i64 2
  %i.rde = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rdd, float %i.qvp)
  %i.rdf = shufflevector <8 x float> %i.rcy, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.rdg = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.rdf, <4 x float> %i.rcu)
  %i.rdh = extractelement <8 x float> %i.rcy, i64 7
  %i.rdi = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rdh, float %i.qvp)
  %i.rdj = insertelement <8 x float> poison, float %i.rda, i64 0
  %i.rdk = insertelement <8 x float> %i.rdj, float %i.rdc, i64 1
  %i.rdl = insertelement <8 x float> %i.rdk, float %i.rde, i64 2
  %i.rdm = shufflevector <4 x float> %i.rdg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rdn = shufflevector <8 x float> %i.rdl, <8 x float> %i.rdm, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.rdo = insertelement <8 x float> %i.rdn, float %i.rdi, i64 7
  %i.rdp = bitcast <8 x float> %i.rdo to <8 x i32>
  %i.rdq = lshr <8 x i32> %i.rdp, splat (i32 16)
  %i.rdr = trunc nuw <8 x i32> %i.rdq to <8 x i16>
  store <8 x i16> %i.rdr, ptr %next.gep7100, align 2, !tbaa !558
  %index.next7102 = add nuw i64 %index7098, 8     ; 2 uses
  %i.rds = icmp eq i64 %index.next7102, %n.vec7096
  br i1 %i.rds, label %vec.epilog.middle.block7103, label %vec.epilog.vector.body7097, !llvm.loop !354

vec.epilog.middle.block7103:                      ; preds = %vec.epilog.vector.body7097
  %cmp.n7104 = icmp eq i64 %i.rau, %n.vec7096
  br i1 %cmp.n7104, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i55.i1597.preheader

.lr.ph159.i55.i1597.preheader:                    ; preds = %iter.check7090, %vec.epilog.iter.check7091, %vec.epilog.middle.block7103
  %.3158.i56.i1598.ph = phi ptr [ %.2.lcssa.i54.i1596, %iter.check7090 ], [ %i.ray, %vec.epilog.iter.check7091 ], [ %i.rcp, %vec.epilog.middle.block7103 ] ; 3 uses
  %.338157.i57.i1599.ph = phi ptr [ %.237.lcssa.i53.i1595, %iter.check7090 ], [ %i.raz, %vec.epilog.iter.check7091 ], [ %i.rcq, %vec.epilog.middle.block7103 ] ; 3 uses
  %.342156.i58.i1600.ph = phi i32 [ %.241.lcssa.i52.i1594, %iter.check7090 ], [ %i.rbb, %vec.epilog.iter.check7091 ], [ %i.rcs, %vec.epilog.middle.block7103 ] ; 4 uses
  %i.rdt = sub i32 %i.pzl, %.342156.i58.i1600.ph
  %.neg11046 = add i32 %.342156.i58.i1600.ph, 1
  %xtraiter10445 = and i32 %i.rdt, 1
  %lcmp.mod10446.not = icmp eq i32 %xtraiter10445, 0
  br i1 %lcmp.mod10446.not, label %.lr.ph159.i55.i1597.prol.loopexit, label %.lr.ph159.i55.i1597.prol

.lr.ph159.i55.i1597.prol:                         ; preds = %.lr.ph159.i55.i1597.preheader
  %i.rdu = getelementptr inbounds nuw i8, ptr %.3158.i56.i1598.ph, i64 2
  %i.rdv = load i16, ptr %.3158.i56.i1598.ph, align 2, !tbaa !558
  %i.rdw = zext i16 %i.rdv to i32
  %i.rdx = shl nuw i32 %i.rdw, 16
  %i.rdy = bitcast i32 %i.rdx to float
  %i.rdz = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rdy, float %i.qvp)
  %i.rea = bitcast float %i.rdz to i32
  %i.reb = lshr i32 %i.rea, 16
  %i.rec = trunc nuw i32 %i.reb to i16
  %i.red = getelementptr inbounds nuw i8, ptr %.338157.i57.i1599.ph, i64 2
  store i16 %i.rec, ptr %.338157.i57.i1599.ph, align 2, !tbaa !558
  %i.ree = add nuw nsw i32 %.342156.i58.i1600.ph, 1
  br label %.lr.ph159.i55.i1597.prol.loopexit

.lr.ph159.i55.i1597.prol.loopexit:                ; preds = %.lr.ph159.i55.i1597.prol, %.lr.ph159.i55.i1597.preheader
  %.3158.i56.i1598.unr = phi ptr [ %.3158.i56.i1598.ph, %.lr.ph159.i55.i1597.preheader ], [ %i.rdu, %.lr.ph159.i55.i1597.prol ]
  %.338157.i57.i1599.unr = phi ptr [ %.338157.i57.i1599.ph, %.lr.ph159.i55.i1597.preheader ], [ %i.red, %.lr.ph159.i55.i1597.prol ]
  %.342156.i58.i1600.unr = phi i32 [ %.342156.i58.i1600.ph, %.lr.ph159.i55.i1597.preheader ], [ %i.ree, %.lr.ph159.i55.i1597.prol ]
  %i.ref = icmp eq i32 %i.pzl, %.neg11046
  br i1 %i.ref, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i55.i1597

bb.lx:                                            ; preds = %bb.lx, %.lr.ph152.i60.i1602
  %.2151.i61.i1604 = phi ptr [ %.1.lcssa.i50.i1592, %.lr.ph152.i60.i1602 ], [ %i.rgb, %bb.lx ] ; 2 uses
  %.237150.i62.i1605 = phi ptr [ %.136.lcssa.i49.i1591, %.lr.ph152.i60.i1602 ], [ %i.rgc, %bb.lx ] ; 2 uses
  %.241149.i63.i1606 = phi i32 [ %.140.lcssa.i48.i1590, %.lr.ph152.i60.i1602 ], [ %i.rgd, %bb.lx ]
  %i.reg = load i64, ptr %.2151.i61.i1604, align 1, !tbaa !555
  %i.reh = insertelement <2 x i64> poison, i64 %i.reg, i64 0
  %i.rei = bitcast <2 x i64> %i.reh to <8 x i16>
  %i.rej = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rei, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.rek = bitcast <8 x i16> %i.rej to <4 x float> ; 3 uses
  %i.rel = fcmp fast oeq <4 x float> %i.rek, zeroinitializer ; 2 uses
  %.not131.i64.i = or <4 x i1> %i.qyr, %i.rel
  %i.rem = fcmp fast olt <4 x float> %i.rek, zeroinitializer
  %i.ren = select <4 x i1> %i.rem, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.reo = select <4 x i1> %i.qys, <4 x float> %i.ren, <4 x float> zeroinitializer
  %i.rep = fmul fast <4 x float> %i.rek, %i.qyv   ; 2 uses
  %i.req = bitcast <4 x float> %i.rep to <4 x i32>
  %i.rer = and <4 x i32> %i.req, splat (i32 -2147483648)
  %i.res = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.rep) ; 3 uses
  %i.ret = fcmp fast ogt <4 x float> %i.res, splat (float 1.000000e+00) ; 2 uses
  %i.reu = select <4 x i1> %i.ret, <4 x float> splat (float -1.000000e+00), <4 x float> %i.res
  %i.rev = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.res, <4 x float> splat (float 1.000000e+00))
  %i.rew = fdiv fast <4 x float> %i.reu, %i.rev   ; 3 uses
  %i.rex = fmul fast <4 x float> %i.rew, %i.rew   ; 3 uses
  %i.rey = fmul fast <4 x float> %i.rex, %i.rex   ; 7 uses
  %i.rez = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rey, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.rfa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rey, <4 x float> nofpclass(nan inf) %i.rez, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.rfb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rey, <4 x float> nofpclass(nan inf) %i.rfa, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.rfc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rey, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.rfd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rey, <4 x float> nofpclass(nan inf) %i.rfc, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.rfe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rey, <4 x float> nofpclass(nan inf) %i.rfd, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.rff = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rey, <4 x float> nofpclass(nan inf) %i.rfe, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.rfg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rex, <4 x float> nofpclass(nan inf) %i.rfb, <4 x float> nofpclass(nan inf) %i.rff)
  %i.rfh = fmul fast <4 x float> %i.rfg, %i.rew
  %i.rfi = select <4 x i1> %i.ret, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.rfj = fadd fast <4 x float> %i.rfh, %i.rfi
  %i.rfk = bitcast <4 x float> %i.rfj to <4 x i32>
  %i.rfl = or <4 x i32> %i.rer, %i.rfk
  %i.rfm = bitcast <4 x i32> %i.rfl to <4 x float>
  %i.rfn = fadd fast <4 x float> %i.reo, %i.rfm
  %i.rfo = bitcast <8 x i16> %i.rej to <4 x i32>
  %i.rfp = and <4 x i32> %i.rfo, splat (i32 -2147483648)
  %i.rfq = or disjoint <4 x i32> %i.rfp, splat (i32 1070141403)
  %i.rfr = bitcast <4 x float> %i.rfn to <4 x i32>
  %i.rfs = select <4 x i1> %.not131.i64.i, <4 x i32> zeroinitializer, <4 x i32> %i.rfr
  %i.rft = select <4 x i1> %i.qyr, <4 x i32> %i.rfq, <4 x i32> zeroinitializer
  %i.rfu = select <4 x i1> %i.rel, <4 x i32> %i.qyu, <4 x i32> %i.rft
  %i.rfv = or <4 x i32> %i.rfs, %i.rfu
  %i.rfw = bitcast <4 x i32> %i.rfv to <4 x float>
  %i.rfx = shufflevector <4 x float> %i.rfw, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.rfy = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.rfx)
  %i.rfz = bitcast <8 x bfloat> %i.rfy to <2 x i64>
  %i.rga = extractelement <2 x i64> %i.rfz, i64 0
  store i64 %i.rga, ptr %.237150.i62.i1605, align 1, !tbaa !555
  %i.rgb = getelementptr inbounds nuw i8, ptr %.2151.i61.i1604, i64 8 ; 2 uses
  %i.rgc = getelementptr inbounds nuw i8, ptr %.237150.i62.i1605, i64 8 ; 2 uses
  %i.rgd = add nuw nsw i32 %.241149.i63.i1606, 4  ; 3 uses
  %i.rge = or disjoint i32 %i.rgd, 3
  %i.rgf = icmp slt i32 %i.rge, %i.pzl
  br i1 %i.rgf, label %bb.lx, label %.preheader.i51.i1593, !llvm.loop !355

.lr.ph159.i55.i1597:                              ; preds = %.lr.ph159.i55.i1597.prol.loopexit, %.lr.ph159.i55.i1597
  %.3158.i56.i1598 = phi ptr [ %i.rgq, %.lr.ph159.i55.i1597 ], [ %.3158.i56.i1598.unr, %.lr.ph159.i55.i1597.prol.loopexit ] ; 3 uses
  %.338157.i57.i1599 = phi ptr [ %i.rgz, %.lr.ph159.i55.i1597 ], [ %.338157.i57.i1599.unr, %.lr.ph159.i55.i1597.prol.loopexit ] ; 3 uses
  %.342156.i58.i1600 = phi i32 [ %i.rha, %.lr.ph159.i55.i1597 ], [ %.342156.i58.i1600.unr, %.lr.ph159.i55.i1597.prol.loopexit ]
  %i.rgg = getelementptr inbounds nuw i8, ptr %.3158.i56.i1598, i64 2
  %i.rgh = load i16, ptr %.3158.i56.i1598, align 2, !tbaa !558
  %i.rgi = zext i16 %i.rgh to i32
  %i.rgj = shl nuw i32 %i.rgi, 16
  %i.rgk = bitcast i32 %i.rgj to float
  %i.rgl = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rgk, float %i.qvp)
  %i.rgm = bitcast float %i.rgl to i32
  %i.rgn = lshr i32 %i.rgm, 16
  %i.rgo = trunc nuw i32 %i.rgn to i16
  %i.rgp = getelementptr inbounds nuw i8, ptr %.338157.i57.i1599, i64 2
  store i16 %i.rgo, ptr %.338157.i57.i1599, align 2, !tbaa !558
  %i.rgq = getelementptr inbounds nuw i8, ptr %.3158.i56.i1598, i64 4
  %i.rgr = load i16, ptr %i.rgg, align 2, !tbaa !558
  %i.rgs = zext i16 %i.rgr to i32
  %i.rgt = shl nuw i32 %i.rgs, 16
  %i.rgu = bitcast i32 %i.rgt to float
  %i.rgv = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rgu, float %i.qvp)
  %i.rgw = bitcast float %i.rgv to i32
  %i.rgx = lshr i32 %i.rgw, 16
  %i.rgy = trunc nuw i32 %i.rgx to i16
  %i.rgz = getelementptr inbounds nuw i8, ptr %.338157.i57.i1599, i64 4
  store i16 %i.rgy, ptr %i.rgp, align 2, !tbaa !558
  %i.rha = add nuw nsw i32 %.342156.i58.i1600, 2  ; 2 uses
  %exitcond.not.i59.i1601.1 = icmp eq i32 %i.rha, %i.pzl
  br i1 %exitcond.not.i59.i1601.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph159.i55.i1597, !llvm.loop !356

bb.ly:                                            ; preds = %bb.lo, %bb.lb
  %i.rhb = icmp eq i32 %6, 1
  br i1 %i.rhb, label %bb.lz, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.lz:                                            ; preds = %bb.ly
  %i.rhc = icmp eq i32 %3, %4
  br i1 %i.rhc, label %bb.ma, label %bb.mb

bb.ma:                                            ; preds = %bb.lz
  switch i32 %.sroa.speculated.i1516, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 16, label %.preheader.i80.i1578
    i32 8, label %.preheader123.i.i1570
    i32 4, label %.preheader125.i.i1564
  ]

.preheader125.i.i1564:                            ; preds = %bb.ma
  %i.rhd = icmp sgt i32 %.sroa.speculated104.i1515, 0
  br i1 %i.rhd, label %.lr.ph.i77.i1565, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader123.i.i1570:                            ; preds = %bb.ma
  %i.rhe = icmp sgt i32 %.sroa.speculated104.i1515, 0
  br i1 %i.rhe, label %.lr.ph135.i.i1571, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.preheader.i80.i1578:                             ; preds = %bb.ma
  %i.rhf = icmp sgt i32 %.sroa.speculated104.i1515, 0
  br i1 %i.rhf, label %.lr.ph140.i.i1579, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

.lr.ph140.i.i1579:                                ; preds = %.preheader.i80.i1578, %.lr.ph140.i.i1579
  %.031139.i.i1580 = phi ptr [ %i.rja, %.lr.ph140.i.i1579 ], [ %0, %.preheader.i80.i1578 ] ; 2 uses
  %.033138.i.i1581 = phi ptr [ %i.rjb, %.lr.ph140.i.i1579 ], [ %1, %.preheader.i80.i1578 ] ; 2 uses
  %.036137.i.i1582 = phi i32 [ %i.rjd, %.lr.ph140.i.i1579 ], [ 0, %.preheader.i80.i1578 ]
  %.037136.i.i1583 = phi ptr [ %i.rjc, %.lr.ph140.i.i1579 ], [ %2, %.preheader.i80.i1578 ] ; 2 uses
  %i.rhg = load <16 x bfloat>, ptr %.031139.i.i1580, align 1, !tbaa !555 ; 4 uses
  %i.rhh = fpext fast <16 x bfloat> %i.rhg to <16 x float>
  %i.rhi = load i16, ptr %.033138.i.i1581, align 2, !tbaa !558
  %i.rhj = zext i16 %i.rhi to i32
  %i.rhk = shl nuw i32 %i.rhj, 16
  %i.rhl = insertelement <16 x i32> poison, i32 %i.rhk, i64 0
  %i.rhm = bitcast <16 x i32> %i.rhl to <16 x float>
  %i.rhn = shufflevector <16 x float> %i.rhm, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.rho = fcmp fast one <16 x bfloat> %i.rhg, zeroinitializer
  %i.rhp = fcmp fast one <16 x float> %i.rhn, zeroinitializer
  %i.rhq = fcmp fast olt <16 x bfloat> %i.rhg, zeroinitializer
  %i.rhr = fcmp fast olt <16 x float> %i.rhn, zeroinitializer
  %i.rhs = select fast <16 x i1> %i.rhr, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.rht = select fast <16 x i1> %i.rhq, <16 x float> %i.rhs, <16 x float> zeroinitializer
  %i.rhu = fdiv fast <16 x float> %i.rhn, %i.rhh  ; 2 uses
  %i.rhv = bitcast <16 x float> %i.rhu to <16 x i32>
  %i.rhw = and <16 x i32> %i.rhv, splat (i32 -2147483648)
  %i.rhx = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.rhu) ; 3 uses
  %i.rhy = fcmp fast ogt <16 x float> %i.rhx, splat (float 1.000000e+00) ; 2 uses
  %i.rhz = select fast <16 x i1> %i.rhy, <16 x float> splat (float -1.000000e+00), <16 x float> %i.rhx
  %i.ria = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.rhx, <16 x float> splat (float 1.000000e+00))
  %i.rib = fdiv fast <16 x float> %i.rhz, %i.ria  ; 3 uses
  %i.ric = fmul fast <16 x float> %i.rib, %i.rib  ; 3 uses
  %i.rid = fmul fast <16 x float> %i.ric, %i.ric  ; 7 uses
  %i.rie = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rid, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.rif = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rid, <16 x float> nofpclass(nan inf) %i.rie, <16 x float> splat (float f0xBE117200))
  %i.rig = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rid, <16 x float> nofpclass(nan inf) %i.rif, <16 x float> splat (float f0xBEAAAA53))
  %i.rih = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rid, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
end_hunk_7
begin_hunk_8_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  %i.roc = fcmp fast olt <16 x float> %i.rnz, zeroinitializer
  %i.rod = select fast <16 x i1> %i.roc, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.roe = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.rnz)
  br label %bb.md

bb.md:                                            ; preds = %bb.md, %.lr.ph.i90.i1559
  %.087.i.i1560 = phi ptr [ %0, %.lr.ph.i90.i1559 ], [ %i.rpp, %bb.md ] ; 2 uses
  %.03086.i.i1561 = phi ptr [ %2, %.lr.ph.i90.i1559 ], [ %i.rpq, %bb.md ] ; 2 uses
  %.03485.i.i1562 = phi i32 [ 0, %.lr.ph.i90.i1559 ], [ %i.rpr, %bb.md ]
  %i.rof = load <16 x bfloat>, ptr %.087.i.i1560, align 1, !tbaa !555 ; 4 uses
  %i.rog = fpext fast <16 x bfloat> %i.rof to <16 x float>
  %i.roh = fcmp fast one <16 x bfloat> %i.rof, zeroinitializer
  %i.roi = fcmp fast olt <16 x bfloat> %i.rof, zeroinitializer
  %i.roj = select fast <16 x i1> %i.roi, <16 x float> %i.rod, <16 x float> zeroinitializer
  %i.rok = fdiv fast <16 x float> %i.rnz, %i.rog  ; 2 uses
  %i.rol = bitcast <16 x float> %i.rok to <16 x i32>
  %i.rom = and <16 x i32> %i.rol, splat (i32 -2147483648)
  %i.ron = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.rok) ; 3 uses
  %i.roo = fcmp fast ogt <16 x float> %i.ron, splat (float 1.000000e+00) ; 2 uses
  %i.rop = select fast <16 x i1> %i.roo, <16 x float> splat (float -1.000000e+00), <16 x float> %i.ron
  %i.roq = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.ron, <16 x float> splat (float 1.000000e+00))
  %i.ror = fdiv fast <16 x float> %i.rop, %i.roq  ; 3 uses
  %i.ros = fmul fast <16 x float> %i.ror, %i.ror  ; 3 uses
  %i.rot = fmul fast <16 x float> %i.ros, %i.ros  ; 7 uses
  %i.rou = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rot, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.rov = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rot, <16 x float> nofpclass(nan inf) %i.rou, <16 x float> splat (float f0xBE117200))
  %i.row = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rot, <16 x float> nofpclass(nan inf) %i.rov, <16 x float> splat (float f0xBEAAAA53))
  %i.rox = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rot, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.roy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rot, <16 x float> nofpclass(nan inf) %i.rox, <16 x float> splat (float f0x3DD9ED24))
  %i.roz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rot, <16 x float> nofpclass(nan inf) %i.roy, <16 x float> splat (float f0x3E4CB974))
  %i.rpa = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rot, <16 x float> nofpclass(nan inf) %i.roz, <16 x float> splat (float 1.000000e+00))
  %i.rpb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ros, <16 x float> nofpclass(nan inf) %i.row, <16 x float> nofpclass(nan inf) %i.rpa)
  %i.rpc = fmul fast <16 x float> %i.rpb, %i.ror
  %i.rpd = select fast <16 x i1> %i.roo, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.rpe = fadd fast <16 x float> %i.rpc, %i.rpd
  %i.rpf = bitcast <16 x float> %i.rpe to <16 x i32>
  %i.rpg = or <16 x i32> %i.rom, %i.rpf
  %i.rph = bitcast <16 x i32> %i.rpg to <16 x float>
  %i.rpi = fadd fast <16 x float> %i.roj, %i.rph
  %i.rpj = bitcast <16 x bfloat> %i.rof to <16 x i16>
  %i.rpk = icmp slt <16 x i16> %i.rpj, zeroinitializer
  %i.rpl = select fast <16 x i1> %i.rpk, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.rpm = select <16 x i1> %i.roh, <16 x float> %i.rpi, <16 x float> %i.roe
  %i.rpn = select <16 x i1> %i.rob, <16 x float> %i.rpm, <16 x float> %i.rpl
  %i.rpo = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rpn)
  store <16 x bfloat> %i.rpo, ptr %.03086.i.i1561, align 1, !tbaa !555
  %i.rpp = getelementptr inbounds nuw i8, ptr %.087.i.i1560, i64 32 ; 2 uses
  %i.rpq = getelementptr inbounds nuw i8, ptr %.03086.i.i1561, i64 32 ; 2 uses
  %i.rpr = add nuw nsw i32 %.03485.i.i1562, 16    ; 2 uses
  %i.rps = or disjoint i32 %i.rpr, 15
  %i.rpt = icmp slt i32 %i.rps, %i.pzl
  br i1 %i.rpt, label %bb.md, label %._crit_edge.loopexit.i.i1563, !llvm.loop !360

._crit_edge.loopexit.i.i1563:                     ; preds = %bb.md
  %i.rpu = and i32 %i.pzl, 2147483632
  br label %._crit_edge.i.i1533

._crit_edge.i.i1533:                              ; preds = %._crit_edge.loopexit.i.i1563, %bb.mc
  %.034.lcssa.i81.i1534 = phi i32 [ 0, %bb.mc ], [ %i.rpu, %._crit_edge.loopexit.i.i1563 ] ; 3 uses
  %.030.lcssa.i.i1535 = phi ptr [ %2, %bb.mc ], [ %i.rpq, %._crit_edge.loopexit.i.i1563 ] ; 2 uses
  %.0.lcssa.i82.i1536 = phi ptr [ %0, %bb.mc ], [ %i.rpp, %._crit_edge.loopexit.i.i1563 ] ; 2 uses
  %i.rpv = insertelement <8 x float> poison, float %i.rnx, i64 0
  %i.rpw = shufflevector <8 x float> %i.rpv, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.rpx = or disjoint i32 %.034.lcssa.i81.i1534, 7
  %i.rpy = icmp slt i32 %i.rpx, %i.pzl
  br i1 %i.rpy, label %.lr.ph94.i.i1554, label %._crit_edge95.i.i1537

.lr.ph94.i.i1554:                                 ; preds = %._crit_edge.i.i1533
  %i.rpz = fcmp fast ueq <8 x float> %i.rpw, zeroinitializer ; 2 uses
  %i.rqa = bitcast <8 x float> %i.rpw to <8 x i32>
  %i.rqb = and <8 x i32> %i.rqa, splat (i32 -2147483648)
  %i.rqc = fcmp fast olt <8 x float> %i.rpw, zeroinitializer
  %i.rqd = select <8 x i1> %i.rqc, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.rqe = or disjoint <8 x i32> %i.rqb, splat (i32 1070141403)
  br label %bb.me

bb.me:                                            ; preds = %bb.me, %.lr.ph94.i.i1554
  %.192.i.i1555 = phi ptr [ %.0.lcssa.i82.i1536, %.lr.ph94.i.i1554 ], [ %i.rrs, %bb.me ] ; 2 uses
  %.13191.i.i1556 = phi ptr [ %.030.lcssa.i.i1535, %.lr.ph94.i.i1554 ], [ %i.rrt, %bb.me ] ; 2 uses
  %.13590.i.i1557 = phi i32 [ %.034.lcssa.i81.i1534, %.lr.ph94.i.i1554 ], [ %i.rru, %bb.me ]
  %i.rqf = load <8 x bfloat>, ptr %.192.i.i1555, align 1, !tbaa !555 ; 4 uses
  %i.rqg = fpext fast <8 x bfloat> %i.rqf to <8 x float>
  %i.rqh = fcmp fast ueq <8 x bfloat> %i.rqf, zeroinitializer ; 2 uses
  %.not84.i.i1558 = or <8 x i1> %i.rpz, %i.rqh
  %i.rqi = fcmp fast olt <8 x bfloat> %i.rqf, zeroinitializer
  %i.rqj = select <8 x i1> %i.rqi, <8 x float> %i.rqd, <8 x float> zeroinitializer
  %i.rqk = fdiv fast <8 x float> %i.rpw, %i.rqg   ; 2 uses
  %i.rql = bitcast <8 x float> %i.rqk to <8 x i32>
  %i.rqm = and <8 x i32> %i.rql, splat (i32 -2147483648)
  %i.rqn = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.rqk) ; 3 uses
  %i.rqo = fcmp fast ogt <8 x float> %i.rqn, splat (float 1.000000e+00) ; 2 uses
  %i.rqp = select <8 x i1> %i.rqo, <8 x float> splat (float -1.000000e+00), <8 x float> %i.rqn
  %i.rqq = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.rqn, <8 x float> splat (float 1.000000e+00))
  %i.rqr = fdiv fast <8 x float> %i.rqp, %i.rqq   ; 3 uses
  %i.rqs = fmul fast <8 x float> %i.rqr, %i.rqr   ; 3 uses
  %i.rqt = fmul fast <8 x float> %i.rqs, %i.rqs   ; 7 uses
  %i.rqu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rqt, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.rqv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rqt, <8 x float> nofpclass(nan inf) %i.rqu, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.rqw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rqt, <8 x float> nofpclass(nan inf) %i.rqv, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.rqx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rqt, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.rqy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rqt, <8 x float> nofpclass(nan inf) %i.rqx, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.rqz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rqt, <8 x float> nofpclass(nan inf) %i.rqy, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.rra = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rqt, <8 x float> nofpclass(nan inf) %i.rqz, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.rrb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rqs, <8 x float> nofpclass(nan inf) %i.rqw, <8 x float> nofpclass(nan inf) %i.rra)
  %i.rrc = fmul fast <8 x float> %i.rrb, %i.rqr
  %i.rrd = select <8 x i1> %i.rqo, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.rre = fadd fast <8 x float> %i.rrc, %i.rrd
  %i.rrf = bitcast <8 x float> %i.rre to <8 x i32>
  %i.rrg = or <8 x i32> %i.rqm, %i.rrf
  %i.rrh = bitcast <8 x i32> %i.rrg to <8 x float>
  %i.rri = fadd fast <8 x float> %i.rqj, %i.rrh
  %i.rrj = bitcast <8 x bfloat> %i.rqf to <8 x i16>
  %isneg.i89.i = icmp sgt <8 x i16> %i.rrj, splat (i16 -1)
  %i.rrk = select <8 x i1> %isneg.i89.i, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.rrl = bitcast <8 x float> %i.rri to <8 x i32>
  %i.rrm = select <8 x i1> %.not84.i.i1558, <8 x i32> zeroinitializer, <8 x i32> %i.rrl
  %i.rrn = select <8 x i1> %i.rqh, <8 x i32> %i.rqe, <8 x i32> zeroinitializer
  %i.rro = select <8 x i1> %i.rpz, <8 x i32> %i.rrk, <8 x i32> %i.rrn
  %i.rrp = or <8 x i32> %i.rrm, %i.rro
  %i.rrq = bitcast <8 x i32> %i.rrp to <8 x float>
  %i.rrr = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.rrq)
  store <8 x bfloat> %i.rrr, ptr %.13191.i.i1556, align 1, !tbaa !555
  %i.rrs = getelementptr inbounds nuw i8, ptr %.192.i.i1555, i64 16 ; 2 uses
  %i.rrt = getelementptr inbounds nuw i8, ptr %.13191.i.i1556, i64 16 ; 2 uses
  %i.rru = add nuw nsw i32 %.13590.i.i1557, 8     ; 3 uses
  %i.rrv = or disjoint i32 %i.rru, 7
  %i.rrw = icmp slt i32 %i.rrv, %i.pzl
  br i1 %i.rrw, label %bb.me, label %._crit_edge95.i.i1537, !llvm.loop !361

._crit_edge95.i.i1537:                            ; preds = %bb.me, %._crit_edge.i.i1533
  %.135.lcssa.i83.i1538 = phi i32 [ %.034.lcssa.i81.i1534, %._crit_edge.i.i1533 ], [ %i.rru, %bb.me ] ; 3 uses
  %.131.lcssa.i.i1539 = phi ptr [ %.030.lcssa.i.i1535, %._crit_edge.i.i1533 ], [ %i.rrt, %bb.me ] ; 2 uses
  %.1.lcssa.i84.i1540 = phi ptr [ %.0.lcssa.i82.i1536, %._crit_edge.i.i1533 ], [ %i.rrs, %bb.me ] ; 2 uses
  %i.rrx = insertelement <4 x float> poison, float %i.rnx, i64 0
  %i.rry = shufflevector <4 x float> %i.rrx, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.rrz = or disjoint i32 %.135.lcssa.i83.i1538, 3
  %i.rsa = icmp slt i32 %i.rrz, %i.pzl
  br i1 %i.rsa, label %.lr.ph103.i.i1550, label %.preheader.i85.i1541

.lr.ph103.i.i1550:                                ; preds = %._crit_edge95.i.i1537
  %i.rsb = fcmp fast oeq <4 x float> %i.rry, zeroinitializer ; 2 uses
  %i.rsc = bitcast <4 x float> %i.rry to <4 x i32>
  %i.rsd = and <4 x i32> %i.rsc, splat (i32 -2147483648)
  %i.rse = fcmp fast olt <4 x float> %i.rry, zeroinitializer
  %i.rsf = select <4 x i1> %i.rse, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.rsg = or disjoint <4 x i32> %i.rsd, splat (i32 1070141403)
  br label %bb.mf

.preheader.i85.i1541:                             ; preds = %bb.mf, %._crit_edge95.i.i1537
  %.236.lcssa.i86.i1542 = phi i32 [ %.135.lcssa.i83.i1538, %._crit_edge95.i.i1537 ], [ %i.rxw, %bb.mf ] ; 5 uses
  %.232.lcssa.i.i1543 = phi ptr [ %.131.lcssa.i.i1539, %._crit_edge95.i.i1537 ], [ %i.rxv, %bb.mf ] ; 6 uses
  %.2.lcssa.i87.i1544 = phi ptr [ %.1.lcssa.i84.i1540, %._crit_edge95.i.i1537 ], [ %i.rxu, %bb.mf ] ; 6 uses
  %i.rsh = icmp slt i32 %.236.lcssa.i86.i1542, %i.pzl
  br i1 %i.rsh, label %iter.check7051, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7051:                                   ; preds = %.preheader.i85.i1541
  %.232.lcssa.i.i15437035 = ptrtoaddr ptr %.232.lcssa.i.i1543 to i64
  %.2.lcssa.i87.i15447034 = ptrtoaddr ptr %.2.lcssa.i87.i1544 to i64
  %i.rsi = xor i32 %.236.lcssa.i86.i1542, -1
  %i.rsj = add i32 %i.pzl, %i.rsi                 ; 3 uses
  %i.rsk = zext i32 %i.rsj to i64
  %i.rsl = add nuw nsw i64 %i.rsk, 1              ; 5 uses
  %min.iters.check7036 = icmp ult i32 %i.rsj, 7
  %i.rsm = sub i64 %.2.lcssa.i87.i15447034, %.232.lcssa.i.i15437035
  %diff.check7038 = icmp ugt i64 %i.rsm, -64
  %or.cond9200 = select i1 %min.iters.check7036, i1 true, i1 %diff.check7038
  br i1 %or.cond9200, label %.lr.ph110.i.i1545.preheader, label %vector.main.loop.iter.check7039

vector.main.loop.iter.check7039:                  ; preds = %iter.check7051
  %min.iters.check7040 = icmp ult i32 %i.rsj, 31
  br i1 %min.iters.check7040, label %vec.epilog.ph7055, label %vector.ph7041

vector.ph7041:                                    ; preds = %vector.main.loop.iter.check7039
  %i.rsn = and i64 %i.rsl, 24
  %n.vec7042 = and i64 %i.rsl, 8589934560         ; 5 uses
  %i.rso = shl nuw nsw i64 %n.vec7042, 1          ; 2 uses
  %i.rsp = getelementptr i8, ptr %.2.lcssa.i87.i1544, i64 %i.rso
  %i.rsq = getelementptr i8, ptr %.232.lcssa.i.i1543, i64 %i.rso
  %i.rsr = trunc i64 %n.vec7042 to i32
  %i.rss = add i32 %.236.lcssa.i86.i1542, %i.rsr
  %i.rst = insertelement <16 x float> poison, float %i.rnx, i64 0
  %i.rsu = shufflevector <16 x float> %i.rst, <16 x float> poison, <16 x i32> zeroinitializer
  %i.rsv = insertelement <8 x float> poison, float %i.rnx, i64 0
  %i.rsw = shufflevector <8 x float> %i.rsv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rsx = insertelement <4 x float> poison, float %i.rnx, i64 0
  %i.rsy = shufflevector <4 x float> %i.rsx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rsz = insertelement <2 x float> poison, float %i.rnx, i64 0
  %i.rta = shufflevector <2 x float> %i.rsz, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body7043

vector.body7043:                                  ; preds = %vector.ph7041, %vector.body7043
  %index7044 = phi i64 [ 0, %vector.ph7041 ], [ %index.next7048, %vector.body7043 ] ; 2 uses
  %i.rtb = shl i64 %index7044, 1                  ; 2 uses
  %next.gep7045 = getelementptr i8, ptr %.2.lcssa.i87.i1544, i64 %i.rtb
  %next.gep7046 = getelementptr i8, ptr %.232.lcssa.i.i1543, i64 %i.rtb
  %wide.load7047 = load <32 x i16>, ptr %next.gep7045, align 2, !tbaa !558
  %i.rtc = zext <32 x i16> %wide.load7047 to <32 x i32>
  %i.rtd = shl nuw <32 x i32> %i.rtc, splat (i32 16)
  %i.rte = bitcast <32 x i32> %i.rtd to <32 x float> ; 6 uses
  %i.rtf = extractelement <32 x float> %i.rte, i64 0
  %i.rtg = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rnx, float %i.rtf)
  %i.rth = shufflevector <32 x float> %i.rte, <32 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.rti = tail call fast <16 x float> @llvm.atan2.v16f32(<16 x float> %i.rsu, <16 x float> %i.rth)
  %i.rtj = shufflevector <32 x float> %i.rte, <32 x float> poison, <8 x i32> <i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.rtk = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.rsw, <8 x float> %i.rtj)
  %i.rtl = shufflevector <32 x float> %i.rte, <32 x float> poison, <4 x i32> <i32 25, i32 26, i32 27, i32 28>
  %i.rtm = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.rsy, <4 x float> %i.rtl)
  %i.rtn = extractelement <32 x float> %i.rte, i64 29
  %i.rto = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rnx, float %i.rtn)
  %i.rtp = shufflevector <32 x float> %i.rte, <32 x float> poison, <2 x i32> <i32 30, i32 31>
  %i.rtq = tail call fast <2 x float> @llvm.atan2.v2f32(<2 x float> %i.rta, <2 x float> %i.rtp)
  %i.rtr = insertelement <32 x float> poison, float %i.rtg, i64 0
  %i.rts = shufflevector <16 x float> %i.rti, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rtt = shufflevector <32 x float> %i.rtr, <32 x float> %i.rts, <32 x i32> <i32 0, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rtu = shufflevector <8 x float> %i.rtk, <8 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rtv = shufflevector <32 x float> %i.rtt, <32 x float> %i.rtu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rtw = shufflevector <4 x float> %i.rtm, <4 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rtx = shufflevector <32 x float> %i.rtv, <32 x float> %i.rtw, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 32, i32 33, i32 34, i32 35, i32 poison, i32 poison, i32 poison>
  %i.rty = insertelement <32 x float> %i.rtx, float %i.rto, i64 29
  %i.rtz = shufflevector <2 x float> %i.rtq, <2 x float> poison, <32 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rua = shufflevector <32 x float> %i.rty, <32 x float> %i.rtz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 32, i32 33>
  %i.rub = bitcast <32 x float> %i.rua to <32 x i32>
  %i.ruc = lshr <32 x i32> %i.rub, splat (i32 16)
  %i.rud = trunc nuw <32 x i32> %i.ruc to <32 x i16>
  store <32 x i16> %i.rud, ptr %next.gep7046, align 2, !tbaa !558
  %index.next7048 = add nuw i64 %index7044, 32    ; 2 uses
  %i.rue = icmp eq i64 %index.next7048, %n.vec7042
  br i1 %i.rue, label %middle.block7049, label %vector.body7043, !llvm.loop !362

middle.block7049:                                 ; preds = %vector.body7043
  %cmp.n7050 = icmp eq i64 %i.rsl, %n.vec7042
  br i1 %cmp.n7050, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7052

vec.epilog.iter.check7052:                        ; preds = %middle.block7049
  %min.epilog.iters.check7054 = icmp eq i64 %i.rsn, 0
  br i1 %min.epilog.iters.check7054, label %.lr.ph110.i.i1545.preheader, label %vec.epilog.ph7055, !prof !561

vec.epilog.ph7055:                                ; preds = %vector.main.loop.iter.check7039, %vec.epilog.iter.check7052
  %vec.epilog.resume.val7056 = phi i64 [ %n.vec7042, %vec.epilog.iter.check7052 ], [ 0, %vector.main.loop.iter.check7039 ]
  %n.vec7057 = and i64 %i.rsl, 8589934584         ; 4 uses
  %i.ruf = shl nuw nsw i64 %n.vec7057, 1          ; 2 uses
  %i.rug = getelementptr i8, ptr %.2.lcssa.i87.i1544, i64 %i.ruf
  %i.ruh = getelementptr i8, ptr %.232.lcssa.i.i1543, i64 %i.ruf
  %i.rui = trunc i64 %n.vec7057 to i32
  %i.ruj = add i32 %.236.lcssa.i86.i1542, %i.rui
  %i.ruk = insertelement <4 x float> poison, float %i.rnx, i64 0
  %i.rul = shufflevector <4 x float> %i.ruk, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body7058

vec.epilog.vector.body7058:                       ; preds = %vec.epilog.vector.body7058, %vec.epilog.ph7055
  %index7059 = phi i64 [ %vec.epilog.resume.val7056, %vec.epilog.ph7055 ], [ %index.next7063, %vec.epilog.vector.body7058 ] ; 2 uses
  %i.rum = shl i64 %index7059, 1                  ; 2 uses
  %next.gep7060 = getelementptr i8, ptr %.2.lcssa.i87.i1544, i64 %i.rum
  %next.gep7061 = getelementptr i8, ptr %.232.lcssa.i.i1543, i64 %i.rum
  %wide.load7062 = load <8 x i16>, ptr %next.gep7060, align 2, !tbaa !558
  %i.run = zext <8 x i16> %wide.load7062 to <8 x i32>
  %i.ruo = shl nuw <8 x i32> %i.run, splat (i32 16)
  %i.rup = bitcast <8 x i32> %i.ruo to <8 x float> ; 5 uses
  %i.ruq = extractelement <8 x float> %i.rup, i64 0
  %i.rur = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rnx, float %i.ruq)
  %i.rus = extractelement <8 x float> %i.rup, i64 1
  %i.rut = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rnx, float %i.rus)
  %i.ruu = extractelement <8 x float> %i.rup, i64 2
  %i.ruv = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rnx, float %i.ruu)
  %i.ruw = shufflevector <8 x float> %i.rup, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.rux = tail call fast <4 x float> @llvm.atan2.v4f32(<4 x float> %i.rul, <4 x float> %i.ruw)
  %i.ruy = extractelement <8 x float> %i.rup, i64 7
  %i.ruz = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rnx, float %i.ruy)
  %i.rva = insertelement <8 x float> poison, float %i.rur, i64 0
  %i.rvb = insertelement <8 x float> %i.rva, float %i.rut, i64 1
  %i.rvc = insertelement <8 x float> %i.rvb, float %i.ruv, i64 2
  %i.rvd = shufflevector <4 x float> %i.rux, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rve = shufflevector <8 x float> %i.rvc, <8 x float> %i.rvd, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.rvf = insertelement <8 x float> %i.rve, float %i.ruz, i64 7
  %i.rvg = bitcast <8 x float> %i.rvf to <8 x i32>
  %i.rvh = lshr <8 x i32> %i.rvg, splat (i32 16)
  %i.rvi = trunc nuw <8 x i32> %i.rvh to <8 x i16>
  store <8 x i16> %i.rvi, ptr %next.gep7061, align 2, !tbaa !558
  %index.next7063 = add nuw i64 %index7059, 8     ; 2 uses
  %i.rvj = icmp eq i64 %index.next7063, %n.vec7057
  br i1 %i.rvj, label %vec.epilog.middle.block7064, label %vec.epilog.vector.body7058, !llvm.loop !363

vec.epilog.middle.block7064:                      ; preds = %vec.epilog.vector.body7058
  %cmp.n7065 = icmp eq i64 %i.rsl, %n.vec7057
  br i1 %cmp.n7065, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph110.i.i1545.preheader

.lr.ph110.i.i1545.preheader:                      ; preds = %iter.check7051, %vec.epilog.iter.check7052, %vec.epilog.middle.block7064
  %.3109.i.i1546.ph = phi ptr [ %.2.lcssa.i87.i1544, %iter.check7051 ], [ %i.rsp, %vec.epilog.iter.check7052 ], [ %i.rug, %vec.epilog.middle.block7064 ] ; 3 uses
  %.333108.i.i1547.ph = phi ptr [ %.232.lcssa.i.i1543, %iter.check7051 ], [ %i.rsq, %vec.epilog.iter.check7052 ], [ %i.ruh, %vec.epilog.middle.block7064 ] ; 3 uses
  %.337107.i.i1548.ph = phi i32 [ %.236.lcssa.i86.i1542, %iter.check7051 ], [ %i.rss, %vec.epilog.iter.check7052 ], [ %i.ruj, %vec.epilog.middle.block7064 ] ; 4 uses
  %i.rvk = sub i32 %i.pzl, %.337107.i.i1548.ph
  %.neg11045 = add i32 %.337107.i.i1548.ph, 1
  %xtraiter10443 = and i32 %i.rvk, 1
  %lcmp.mod10444.not = icmp eq i32 %xtraiter10443, 0
  br i1 %lcmp.mod10444.not, label %.lr.ph110.i.i1545.prol.loopexit, label %.lr.ph110.i.i1545.prol

.lr.ph110.i.i1545.prol:                           ; preds = %.lr.ph110.i.i1545.preheader
  %i.rvl = getelementptr inbounds nuw i8, ptr %.3109.i.i1546.ph, i64 2
  %i.rvm = load i16, ptr %.3109.i.i1546.ph, align 2, !tbaa !558
  %i.rvn = zext i16 %i.rvm to i32
  %i.rvo = shl nuw i32 %i.rvn, 16
  %i.rvp = bitcast i32 %i.rvo to float
  %i.rvq = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rnx, float %i.rvp)
  %i.rvr = bitcast float %i.rvq to i32
  %i.rvs = lshr i32 %i.rvr, 16
  %i.rvt = trunc nuw i32 %i.rvs to i16
  %i.rvu = getelementptr inbounds nuw i8, ptr %.333108.i.i1547.ph, i64 2
  store i16 %i.rvt, ptr %.333108.i.i1547.ph, align 2, !tbaa !558
  %i.rvv = add nuw nsw i32 %.337107.i.i1548.ph, 1
  br label %.lr.ph110.i.i1545.prol.loopexit

.lr.ph110.i.i1545.prol.loopexit:                  ; preds = %.lr.ph110.i.i1545.prol, %.lr.ph110.i.i1545.preheader
  %.3109.i.i1546.unr = phi ptr [ %.3109.i.i1546.ph, %.lr.ph110.i.i1545.preheader ], [ %i.rvl, %.lr.ph110.i.i1545.prol ]
  %.333108.i.i1547.unr = phi ptr [ %.333108.i.i1547.ph, %.lr.ph110.i.i1545.preheader ], [ %i.rvu, %.lr.ph110.i.i1545.prol ]
  %.337107.i.i1548.unr = phi i32 [ %.337107.i.i1548.ph, %.lr.ph110.i.i1545.preheader ], [ %i.rvv, %.lr.ph110.i.i1545.prol ]
  %i.rvw = icmp eq i32 %i.pzl, %.neg11045
  br i1 %i.rvw, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph110.i.i1545

bb.mf:                                            ; preds = %bb.mf, %.lr.ph103.i.i1550
  %.2101.i.i1551 = phi ptr [ %.1.lcssa.i84.i1540, %.lr.ph103.i.i1550 ], [ %i.rxu, %bb.mf ] ; 2 uses
  %.232100.i.i1552 = phi ptr [ %.131.lcssa.i.i1539, %.lr.ph103.i.i1550 ], [ %i.rxv, %bb.mf ] ; 2 uses
  %.23699.i.i1553 = phi i32 [ %.135.lcssa.i83.i1538, %.lr.ph103.i.i1550 ], [ %i.rxw, %bb.mf ]
  %i.rvx = load i64, ptr %.2101.i.i1551, align 1, !tbaa !555
  %i.rvy = insertelement <2 x i64> poison, i64 %i.rvx, i64 0
  %i.rvz = bitcast <2 x i64> %i.rvy to <8 x i16>
  %i.rwa = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rvz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.rwb = bitcast <8 x i16> %i.rwa to <4 x float> ; 3 uses
  %i.rwc = fcmp fast oeq <4 x float> %i.rwb, zeroinitializer ; 2 uses
  %.not82.i.i = or <4 x i1> %i.rsb, %i.rwc
  %i.rwd = fcmp fast olt <4 x float> %i.rwb, zeroinitializer
  %i.rwe = select <4 x i1> %i.rwd, <4 x float> %i.rsf, <4 x float> zeroinitializer
  %i.rwf = fdiv fast <4 x float> %i.rry, %i.rwb   ; 2 uses
  %i.rwg = bitcast <4 x float> %i.rwf to <4 x i32>
  %i.rwh = and <4 x i32> %i.rwg, splat (i32 -2147483648)
  %i.rwi = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.rwf) ; 3 uses
  %i.rwj = fcmp fast ogt <4 x float> %i.rwi, splat (float 1.000000e+00) ; 2 uses
  %i.rwk = select <4 x i1> %i.rwj, <4 x float> splat (float -1.000000e+00), <4 x float> %i.rwi
  %i.rwl = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.rwi, <4 x float> splat (float 1.000000e+00))
  %i.rwm = fdiv fast <4 x float> %i.rwk, %i.rwl   ; 3 uses
  %i.rwn = fmul fast <4 x float> %i.rwm, %i.rwm   ; 3 uses
  %i.rwo = fmul fast <4 x float> %i.rwn, %i.rwn   ; 7 uses
  %i.rwp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rwo, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.rwq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rwo, <4 x float> nofpclass(nan inf) %i.rwp, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.rwr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rwo, <4 x float> nofpclass(nan inf) %i.rwq, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.rws = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rwo, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.rwt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rwo, <4 x float> nofpclass(nan inf) %i.rws, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.rwu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rwo, <4 x float> nofpclass(nan inf) %i.rwt, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.rwv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rwo, <4 x float> nofpclass(nan inf) %i.rwu, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.rww = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.rwn, <4 x float> nofpclass(nan inf) %i.rwr, <4 x float> nofpclass(nan inf) %i.rwv)
  %i.rwx = fmul fast <4 x float> %i.rww, %i.rwm
  %i.rwy = select <4 x i1> %i.rwj, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.rwz = fadd fast <4 x float> %i.rwx, %i.rwy
  %i.rxa = bitcast <4 x float> %i.rwz to <4 x i32>
  %i.rxb = or <4 x i32> %i.rwh, %i.rxa
  %i.rxc = bitcast <4 x i32> %i.rxb to <4 x float>
  %i.rxd = fadd fast <4 x float> %i.rwe, %i.rxc
  %i.rxe = bitcast <8 x i16> %i.rwa to <4 x i32>
  %i.rxf = and <4 x i32> %i.rxe, splat (i32 -2147483648)
  %i.rxg = or disjoint <4 x i32> %i.rxf, splat (i32 1078530011)
  %i.rxh = bitcast <4 x i32> %i.rxg to <4 x float>
  %i.rxi = fcmp fast uge <4 x float> %i.rxh, zeroinitializer
  %i.rxj = select <4 x i1> %i.rxi, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.rxk = bitcast <4 x float> %i.rxd to <4 x i32>
  %i.rxl = select <4 x i1> %.not82.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.rxk
  %i.rxm = select <4 x i1> %i.rwc, <4 x i32> %i.rsg, <4 x i32> zeroinitializer
  %i.rxn = select <4 x i1> %i.rsb, <4 x i32> %i.rxj, <4 x i32> %i.rxm
  %i.rxo = or <4 x i32> %i.rxl, %i.rxn
  %i.rxp = bitcast <4 x i32> %i.rxo to <4 x float>
  %i.rxq = shufflevector <4 x float> %i.rxp, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.rxr = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.rxq)
  %i.rxs = bitcast <8 x bfloat> %i.rxr to <2 x i64>
  %i.rxt = extractelement <2 x i64> %i.rxs, i64 0
  store i64 %i.rxt, ptr %.232100.i.i1552, align 1, !tbaa !555
  %i.rxu = getelementptr inbounds nuw i8, ptr %.2101.i.i1551, i64 8 ; 2 uses
  %i.rxv = getelementptr inbounds nuw i8, ptr %.232100.i.i1552, i64 8 ; 2 uses
  %i.rxw = add nuw nsw i32 %.23699.i.i1553, 4     ; 3 uses
  %i.rxx = or disjoint i32 %i.rxw, 3
  %i.rxy = icmp slt i32 %i.rxx, %i.pzl
  br i1 %i.rxy, label %bb.mf, label %.preheader.i85.i1541, !llvm.loop !364

.lr.ph110.i.i1545:                                ; preds = %.lr.ph110.i.i1545.prol.loopexit, %.lr.ph110.i.i1545
  %.3109.i.i1546 = phi ptr [ %i.ryj, %.lr.ph110.i.i1545 ], [ %.3109.i.i1546.unr, %.lr.ph110.i.i1545.prol.loopexit ] ; 3 uses
  %.333108.i.i1547 = phi ptr [ %i.rys, %.lr.ph110.i.i1545 ], [ %.333108.i.i1547.unr, %.lr.ph110.i.i1545.prol.loopexit ] ; 3 uses
  %.337107.i.i1548 = phi i32 [ %i.ryt, %.lr.ph110.i.i1545 ], [ %.337107.i.i1548.unr, %.lr.ph110.i.i1545.prol.loopexit ]
  %i.rxz = getelementptr inbounds nuw i8, ptr %.3109.i.i1546, i64 2
  %i.rya = load i16, ptr %.3109.i.i1546, align 2, !tbaa !558
  %i.ryb = zext i16 %i.rya to i32
  %i.ryc = shl nuw i32 %i.ryb, 16
  %i.ryd = bitcast i32 %i.ryc to float
  %i.rye = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rnx, float %i.ryd)
  %i.ryf = bitcast float %i.rye to i32
  %i.ryg = lshr i32 %i.ryf, 16
  %i.ryh = trunc nuw i32 %i.ryg to i16
  %i.ryi = getelementptr inbounds nuw i8, ptr %.333108.i.i1547, i64 2
  store i16 %i.ryh, ptr %.333108.i.i1547, align 2, !tbaa !558
  %i.ryj = getelementptr inbounds nuw i8, ptr %.3109.i.i1546, i64 4
  %i.ryk = load i16, ptr %i.rxz, align 2, !tbaa !558
  %i.ryl = zext i16 %i.ryk to i32
  %i.rym = shl nuw i32 %i.ryl, 16
  %i.ryn = bitcast i32 %i.rym to float
  %i.ryo = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.rnx, float %i.ryn)
  %i.ryp = bitcast float %i.ryo to i32
  %i.ryq = lshr i32 %i.ryp, 16
  %i.ryr = trunc nuw i32 %i.ryq to i16
  %i.rys = getelementptr inbounds nuw i8, ptr %.333108.i.i1547, i64 4
  store i16 %i.ryr, ptr %i.ryi, align 2, !tbaa !558
  %i.ryt = add nuw nsw i32 %.337107.i.i1548, 2    ; 2 uses
  %exitcond.not.i88.i1549.1 = icmp eq i32 %i.ryt, %i.pzl
  br i1 %exitcond.not.i88.i1549.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph110.i.i1545, !llvm.loop !365

bb.mg:                                            ; preds = %bb.mb
  %i.ryu = icmp eq i32 %3, 1
  br i1 %i.ryu, label %bb.mh, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

bb.mh:                                            ; preds = %bb.mg
  switch i32 %.sroa.speculated.i1516, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 16, label %.lr.ph129.i.i1527
    i32 8, label %.lr.ph125.i.i1521
    i32 4, label %.lr.ph.i91.i1517
  ]

.lr.ph129.i.i1527:                                ; preds = %bb.mh
  %i.ryv = load <16 x bfloat>, ptr %0, align 1, !tbaa !555 ; 4 uses
  %i.ryw = fpext fast <16 x bfloat> %i.ryv to <16 x float>
  %i.ryx = fcmp fast one <16 x bfloat> %i.ryv, zeroinitializer
  %i.ryy = fcmp fast olt <16 x bfloat> %i.ryv, zeroinitializer
  %i.ryz = bitcast <16 x bfloat> %i.ryv to <16 x i16>
  %i.rza = icmp slt <16 x i16> %i.ryz, zeroinitializer
  %i.rzb = select fast <16 x i1> %i.rza, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.rzc = fdiv fast <16 x float> splat (float 1.000000e+00), %i.ryw
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mi, %.lr.ph129.i.i1527
  %.028128.i.i1528 = phi ptr [ %1, %.lr.ph129.i.i1527 ], [ %i.saq, %bb.mi ] ; 2 uses
  %.030127.i.i1529 = phi ptr [ %2, %.lr.ph129.i.i1527 ], [ %i.sar, %bb.mi ] ; 2 uses
  %.033126.i.i1530 = phi i32 [ 0, %.lr.ph129.i.i1527 ], [ %i.sas, %bb.mi ]
  %i.rzd = load i16, ptr %.028128.i.i1528, align 2, !tbaa !558
  %i.rze = zext i16 %i.rzd to i32
  %i.rzf = shl nuw i32 %i.rze, 16
  %i.rzg = insertelement <16 x i32> poison, i32 %i.rzf, i64 0
  %i.rzh = bitcast <16 x i32> %i.rzg to <16 x float>
  %i.rzi = shufflevector <16 x float> %i.rzh, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.rzj = fcmp fast one <16 x float> %i.rzi, zeroinitializer
  %i.rzk = fcmp fast olt <16 x float> %i.rzi, zeroinitializer
  %i.rzl = select fast <16 x i1> %i.rzk, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.rzm = select fast <16 x i1> %i.ryy, <16 x float> %i.rzl, <16 x float> zeroinitializer
  %i.rzn = fmul fast <16 x float> %i.rzi, %i.rzc  ; 2 uses
  %i.rzo = bitcast <16 x float> %i.rzn to <16 x i32>
  %i.rzp = and <16 x i32> %i.rzo, splat (i32 -2147483648)
  %i.rzq = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.rzn) ; 3 uses
  %i.rzr = fcmp fast ogt <16 x float> %i.rzq, splat (float 1.000000e+00) ; 2 uses
  %i.rzs = select fast <16 x i1> %i.rzr, <16 x float> splat (float -1.000000e+00), <16 x float> %i.rzq
  %i.rzt = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.rzq, <16 x float> splat (float 1.000000e+00))
  %i.rzu = fdiv fast <16 x float> %i.rzs, %i.rzt  ; 3 uses
  %i.rzv = fmul fast <16 x float> %i.rzu, %i.rzu  ; 3 uses
  %i.rzw = fmul fast <16 x float> %i.rzv, %i.rzv  ; 7 uses
  %i.rzx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rzw, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.rzy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rzw, <16 x float> nofpclass(nan inf) %i.rzx, <16 x float> splat (float f0xBE117200))
  %i.rzz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rzw, <16 x float> nofpclass(nan inf) %i.rzy, <16 x float> splat (float f0xBEAAAA53))
  %i.saa = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rzw, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.sab = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rzw, <16 x float> nofpclass(nan inf) %i.saa, <16 x float> splat (float f0x3DD9ED24))
  %i.sac = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rzw, <16 x float> nofpclass(nan inf) %i.sab, <16 x float> splat (float f0x3E4CB974))
  %i.sad = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rzw, <16 x float> nofpclass(nan inf) %i.sac, <16 x float> splat (float 1.000000e+00))
  %i.sae = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rzv, <16 x float> nofpclass(nan inf) %i.rzz, <16 x float> nofpclass(nan inf) %i.sad)
  %i.saf = fmul fast <16 x float> %i.sae, %i.rzu
  %i.sag = select fast <16 x i1> %i.rzr, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.sah = fadd fast <16 x float> %i.saf, %i.sag
  %i.sai = bitcast <16 x float> %i.sah to <16 x i32>
end_hunk_8
