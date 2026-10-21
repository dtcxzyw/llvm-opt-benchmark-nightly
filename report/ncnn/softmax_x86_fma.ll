Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/softmax_x86_fma?download=true
inline.NumInlined: 26
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN4ncnnL7softmaxEPfiimiS0_S0_:bb.a
  %i.yw = add nsw i32 %4, -8                      ; 2 uses
  %i.yx = lshr i32 %i.yw, 3                       ; 2 uses
  %i.yy = add nuw nsw i32 %i.yx, 1                ; 2 uses
  %i.yz = icmp eq i32 %i.yx, 0
  br i1 %i.yz, label %.lr.ph678.i.epil.preheader, label %.lr.ph678.i.preheader.new

.lr.ph678.i.preheader.new:                        ; preds = %.lr.ph678.i.preheader
  %unroll_iter619 = and i32 %i.yy, 1073741822
  br label %.lr.ph678.i

.preheader627.i:                                  ; preds = %._crit_edge.i68, %._crit_edge673.i
  %indvars.iv738.i = phi i64 [ %indvars.iv.next739.i, %._crit_edge673.i ], [ 0, %._crit_edge.i68 ] ; 2 uses
  %i.za = mul i64 %indvars.iv738.i, %3
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.za ; 2 uses
  br i1 %i.a, label %.lr.ph654.i, label %.preheader626.i

.preheader626.i:                                  ; preds = %.lr.ph654.i, %.preheader627.i
  %.0323.lcssa.i = phi i32 [ 0, %.preheader627.i ], [ %i.vk, %.lr.ph654.i ] ; 3 uses
  %.0320.lcssa.i = phi ptr [ %6, %.preheader627.i ], [ %i.aet, %.lr.ph654.i ] ; 2 uses
  %.0317.lcssa.i = phi ptr [ %5, %.preheader627.i ], [ %i.aes, %.lr.ph654.i ] ; 2 uses
  %.0314.lcssa.i = phi ptr [ %i.zb, %.preheader627.i ], [ %i.aer, %.lr.ph654.i ] ; 2 uses
  %i.zc = or disjoint i32 %.0323.lcssa.i, 3
  %i.zd = icmp slt i32 %i.zc, %4
  br i1 %i.zd, label %.lr.ph663.i, label %.preheader625.i

.lr.ph654.i:                                      ; preds = %.preheader627.i, %.lr.ph654.i
  %.0314652.i = phi ptr [ %i.aer, %.lr.ph654.i ], [ %i.zb, %.preheader627.i ] ; 6 uses
  %.0317651.i = phi ptr [ %i.aes, %.lr.ph654.i ], [ %5, %.preheader627.i ] ; 9 uses
  %.0320650.i = phi ptr [ %i.aet, %.lr.ph654.i ], [ %6, %.preheader627.i ] ; 3 uses
  %.0323649.i = phi i32 [ %i.aeu, %.lr.ph654.i ], [ 0, %.preheader627.i ]
  %i.ze = load <8 x float>, ptr %.0314652.i, align 1, !tbaa !61
  %i.zf = getelementptr inbounds nuw i8, ptr %.0314652.i, i64 32 ; 2 uses
  %i.zg = load <8 x float>, ptr %i.zf, align 1, !tbaa !61
  %i.zh = getelementptr inbounds nuw i8, ptr %.0314652.i, i64 64 ; 2 uses
  %i.zi = load <8 x float>, ptr %i.zh, align 1, !tbaa !61
  %i.zj = getelementptr inbounds nuw i8, ptr %.0314652.i, i64 96 ; 2 uses
  %i.zk = load <8 x float>, ptr %i.zj, align 1, !tbaa !61
  %i.zl = load float, ptr %.0317651.i, align 4, !tbaa !65
  %i.zm = insertelement <4 x float> poison, float %i.zl, i64 0
  %i.zn = getelementptr inbounds nuw i8, ptr %.0317651.i, i64 4
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !65
  %i.zp = insertelement <4 x float> poison, float %i.zo, i64 0
  %i.zq = shufflevector <4 x float> %i.zm, <4 x float> %i.zp, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.zr = fsub fast <8 x float> %i.ze, %i.zq
  %i.zs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.zr, <8 x float> splat (float f0x42B0C0A5))
  %i.zt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.zs, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.zu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.zt, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.zv = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.zu, i32 1) ; 2 uses
  %i.zw = fcmp fast ogt <8 x float> %i.zv, %i.zu
  %i.zx = select <8 x i1> %i.zw, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.zy = fsub fast <8 x float> %i.zv, %i.zx      ; 2 uses
  %i.zz = fneg fast <8 x float> %i.zy             ; 2 uses
  %i.aaa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.zz, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.zt)
  %i.aab = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.zz, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.aaa) ; 8 uses
  %i.aac = fmul fast <8 x float> %i.aab, %i.aab
  %i.aad = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aab, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.aae = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aad, <8 x float> nofpclass(nan inf) %i.aab, <8 x float> splat (float f0x3C088908))
  %i.aaf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aae, <8 x float> nofpclass(nan inf) %i.aab, <8 x float> splat (float f0x3D2AA9C1))
  %i.aag = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aaf, <8 x float> nofpclass(nan inf) %i.aab, <8 x float> splat (float f0x3E2AAAAA))
  %i.aah = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aag, <8 x float> nofpclass(nan inf) %i.aab, <8 x float> splat (float 5.000000e-01))
  %i.aai = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aah, <8 x float> nofpclass(nan inf) %i.aac, <8 x float> nofpclass(nan inf) %i.aab)
  %i.aaj = fadd fast <8 x float> %i.aai, splat (float 1.000000e+00)
  %i.aak = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.zy)
  %i.aal = shl <8 x i32> %i.aak, splat (i32 23)
  %i.aam = add <8 x i32> %i.aal, splat (i32 1065353216)
  %i.aan = bitcast <8 x i32> %i.aam to <8 x float>
  %i.aao = fmul fast <8 x float> %i.aaj, %i.aan   ; 3 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %.0317651.i, i64 8
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !65
  %i.aar = insertelement <4 x float> poison, float %i.aaq, i64 0
  %i.aas = getelementptr inbounds nuw i8, ptr %.0317651.i, i64 12
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !65
  %i.aau = insertelement <4 x float> poison, float %i.aat, i64 0
  %i.aav = shufflevector <4 x float> %i.aar, <4 x float> %i.aau, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.aaw = fsub fast <8 x float> %i.zg, %i.aav
  %i.aax = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aaw, <8 x float> splat (float f0x42B0C0A5))
  %i.aay = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aax, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aaz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aay, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.aba = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aaz, i32 1) ; 2 uses
  %i.abb = fcmp fast ogt <8 x float> %i.aba, %i.aaz
  %i.abc = select <8 x i1> %i.abb, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.abd = fsub fast <8 x float> %i.aba, %i.abc   ; 2 uses
  %i.abe = fneg fast <8 x float> %i.abd           ; 2 uses
  %i.abf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.abe, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.aay)
  %i.abg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.abe, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.abf) ; 8 uses
  %i.abh = fmul fast <8 x float> %i.abg, %i.abg
  %i.abi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.abg, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.abj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.abi, <8 x float> nofpclass(nan inf) %i.abg, <8 x float> splat (float f0x3C088908))
  %i.abk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.abj, <8 x float> nofpclass(nan inf) %i.abg, <8 x float> splat (float f0x3D2AA9C1))
  %i.abl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.abk, <8 x float> nofpclass(nan inf) %i.abg, <8 x float> splat (float f0x3E2AAAAA))
  %i.abm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.abl, <8 x float> nofpclass(nan inf) %i.abg, <8 x float> splat (float 5.000000e-01))
  %i.abn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.abm, <8 x float> nofpclass(nan inf) %i.abh, <8 x float> nofpclass(nan inf) %i.abg)
  %i.abo = fadd fast <8 x float> %i.abn, splat (float 1.000000e+00)
  %i.abp = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.abd)
  %i.abq = shl <8 x i32> %i.abp, splat (i32 23)
  %i.abr = add <8 x i32> %i.abq, splat (i32 1065353216)
  %i.abs = bitcast <8 x i32> %i.abr to <8 x float>
  %i.abt = fmul fast <8 x float> %i.abo, %i.abs   ; 3 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %.0317651.i, i64 16
  %i.abv = load float, ptr %i.abu, align 4, !tbaa !65
  %i.abw = insertelement <4 x float> poison, float %i.abv, i64 0
  %i.abx = getelementptr inbounds nuw i8, ptr %.0317651.i, i64 20
  %i.aby = load float, ptr %i.abx, align 4, !tbaa !65
  %i.abz = insertelement <4 x float> poison, float %i.aby, i64 0
  %i.aca = shufflevector <4 x float> %i.abw, <4 x float> %i.abz, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.acb = fsub fast <8 x float> %i.zi, %i.aca
  %i.acc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.acb, <8 x float> splat (float f0x42B0C0A5))
  %i.acd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.acc, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ace = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acd, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.acf = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ace, i32 1) ; 2 uses
  %i.acg = fcmp fast ogt <8 x float> %i.acf, %i.ace
  %i.ach = select <8 x i1> %i.acg, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.aci = fsub fast <8 x float> %i.acf, %i.ach   ; 2 uses
  %i.acj = fneg fast <8 x float> %i.aci           ; 2 uses
  %i.ack = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.acj, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.acd)
  %i.acl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.acj, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ack) ; 8 uses
  %i.acm = fmul fast <8 x float> %i.acl, %i.acl
  %i.acn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acl, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.aco = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acn, <8 x float> nofpclass(nan inf) %i.acl, <8 x float> splat (float f0x3C088908))
  %i.acp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aco, <8 x float> nofpclass(nan inf) %i.acl, <8 x float> splat (float f0x3D2AA9C1))
  %i.acq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acp, <8 x float> nofpclass(nan inf) %i.acl, <8 x float> splat (float f0x3E2AAAAA))
  %i.acr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acq, <8 x float> nofpclass(nan inf) %i.acl, <8 x float> splat (float 5.000000e-01))
  %i.acs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acr, <8 x float> nofpclass(nan inf) %i.acm, <8 x float> nofpclass(nan inf) %i.acl)
  %i.act = fadd fast <8 x float> %i.acs, splat (float 1.000000e+00)
  %i.acu = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aci)
  %i.acv = shl <8 x i32> %i.acu, splat (i32 23)
  %i.acw = add <8 x i32> %i.acv, splat (i32 1065353216)
  %i.acx = bitcast <8 x i32> %i.acw to <8 x float>
  %i.acy = fmul fast <8 x float> %i.act, %i.acx   ; 3 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %.0317651.i, i64 24
  %i.ada = load float, ptr %i.acz, align 4, !tbaa !65
  %i.adb = insertelement <4 x float> poison, float %i.ada, i64 0
  %i.adc = getelementptr inbounds nuw i8, ptr %.0317651.i, i64 28
  %i.add = load float, ptr %i.adc, align 4, !tbaa !65
  %i.ade = insertelement <4 x float> poison, float %i.add, i64 0
  %i.adf = shufflevector <4 x float> %i.adb, <4 x float> %i.ade, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.adg = fsub fast <8 x float> %i.zk, %i.adf
  %i.adh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.adg, <8 x float> splat (float f0x42B0C0A5))
  %i.adi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.adh, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.adj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adi, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.adk = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.adj, i32 1) ; 2 uses
  %i.adl = fcmp fast ogt <8 x float> %i.adk, %i.adj
  %i.adm = select <8 x i1> %i.adl, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.adn = fsub fast <8 x float> %i.adk, %i.adm   ; 2 uses
  %i.ado = fneg fast <8 x float> %i.adn           ; 2 uses
  %i.adp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ado, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.adi)
  %i.adq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ado, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.adp) ; 8 uses
  %i.adr = fmul fast <8 x float> %i.adq, %i.adq
  %i.ads = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adq, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.adt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ads, <8 x float> nofpclass(nan inf) %i.adq, <8 x float> splat (float f0x3C088908))
  %i.adu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adt, <8 x float> nofpclass(nan inf) %i.adq, <8 x float> splat (float f0x3D2AA9C1))
  %i.adv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adu, <8 x float> nofpclass(nan inf) %i.adq, <8 x float> splat (float f0x3E2AAAAA))
  %i.adw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adv, <8 x float> nofpclass(nan inf) %i.adq, <8 x float> splat (float 5.000000e-01))
  %i.adx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adw, <8 x float> nofpclass(nan inf) %i.adr, <8 x float> nofpclass(nan inf) %i.adq)
  %i.ady = fadd fast <8 x float> %i.adx, splat (float 1.000000e+00)
  %i.adz = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.adn)
  %i.aea = shl <8 x i32> %i.adz, splat (i32 23)
  %i.aeb = add <8 x i32> %i.aea, splat (i32 1065353216)
  %i.aec = bitcast <8 x i32> %i.aeb to <8 x float>
  %i.aed = fmul fast <8 x float> %i.ady, %i.aec   ; 3 uses
  store <8 x float> %i.aao, ptr %.0314652.i, align 1, !tbaa !61
  store <8 x float> %i.abt, ptr %i.zf, align 1, !tbaa !61
  store <8 x float> %i.acy, ptr %i.zh, align 1, !tbaa !61
  store <8 x float> %i.aed, ptr %i.zj, align 1, !tbaa !61
  %i.aee = shufflevector <8 x float> %i.aao, <8 x float> %i.abt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.aef = shufflevector <8 x float> %i.aao, <8 x float> %i.abt, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.aeg = shufflevector <8 x float> %i.acy, <8 x float> %i.aed, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.aeh = shufflevector <8 x float> %i.acy, <8 x float> %i.aed, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.aei = fadd fast <8 x float> %i.aee, %i.aef   ; 2 uses
  %i.aej = fadd fast <8 x float> %i.aeg, %i.aeh   ; 2 uses
  %i.aek = shufflevector <8 x float> %i.aei, <8 x float> %i.aej, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ael = shufflevector <8 x float> %i.aei, <8 x float> %i.aej, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.aem = shufflevector <8 x float> %i.aek, <8 x float> %i.ael, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.aen = shufflevector <8 x float> %i.aek, <8 x float> %i.ael, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.aeo = load <8 x float>, ptr %.0320650.i, align 1, !tbaa !61
  %i.aep = fadd fast <8 x float> %i.aen, %i.aeo
  %i.aeq = fadd fast <8 x float> %i.aep, %i.aem
  store <8 x float> %i.aeq, ptr %.0320650.i, align 1, !tbaa !61
  %i.aer = getelementptr inbounds nuw i8, ptr %.0314652.i, i64 128 ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %.0317651.i, i64 32 ; 2 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %.0320650.i, i64 32 ; 2 uses
  %i.aeu = add nuw nsw i32 %.0323649.i, 8         ; 2 uses
  %i.aev = or disjoint i32 %i.aeu, 7
  %i.aew = icmp slt i32 %i.aev, %4
  br i1 %i.aew, label %.lr.ph654.i, label %.preheader626.i, !llvm.loop !118

.preheader625.i:                                  ; preds = %.lr.ph663.i, %.preheader626.i
  %.1324.lcssa.i = phi i32 [ %.0323.lcssa.i, %.preheader626.i ], [ %i.akk, %.lr.ph663.i ] ; 2 uses
  %.1321.lcssa.i = phi ptr [ %.0320.lcssa.i, %.preheader626.i ], [ %i.akj, %.lr.ph663.i ]
  %.1318.lcssa.i = phi ptr [ %.0317.lcssa.i, %.preheader626.i ], [ %i.aki, %.lr.ph663.i ]
  %.1315.lcssa.i = phi ptr [ %.0314.lcssa.i, %.preheader626.i ], [ %i.akh, %.lr.ph663.i ]
  %i.aex = icmp slt i32 %.1324.lcssa.i, %4
  br i1 %i.aex, label %.lr.ph672.i, label %._crit_edge673.i

.lr.ph663.i:                                      ; preds = %.preheader626.i, %.lr.ph663.i
  %.1315662.i = phi ptr [ %i.akh, %.lr.ph663.i ], [ %.0314.lcssa.i, %.preheader626.i ] ; 6 uses
  %.1318661.i = phi ptr [ %i.aki, %.lr.ph663.i ], [ %.0317.lcssa.i, %.preheader626.i ] ; 5 uses
  %.1321660.i = phi ptr [ %i.akj, %.lr.ph663.i ], [ %.0320.lcssa.i, %.preheader626.i ] ; 3 uses
  %.1324659.i = phi i32 [ %i.akk, %.lr.ph663.i ], [ %.0323.lcssa.i, %.preheader626.i ]
  %i.aey = load <4 x float>, ptr %.1315662.i, align 1, !tbaa !61
  %i.aez = getelementptr inbounds nuw i8, ptr %.1315662.i, i64 16
  %i.afa = load <4 x float>, ptr %i.aez, align 1, !tbaa !61
  %i.afb = getelementptr inbounds nuw i8, ptr %.1315662.i, i64 32 ; 2 uses
  %i.afc = load <4 x float>, ptr %i.afb, align 1, !tbaa !61
  %i.afd = getelementptr inbounds nuw i8, ptr %.1315662.i, i64 48
  %i.afe = load <4 x float>, ptr %i.afd, align 1, !tbaa !61
  %i.aff = load float, ptr %.1318661.i, align 4, !tbaa !65
  %i.afg = insertelement <4 x float> poison, float %i.aff, i64 0
  %i.afh = shufflevector <4 x float> %i.afg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.afi = fsub fast <4 x float> %i.aey, %i.afh
  %i.afj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.afi, <4 x float> splat (float f0x42B0C0A5))
  %i.afk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.afj, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.afl = fmul fast <4 x float> %i.afk, splat (float f0x3FB8AA3B)
  %i.afm = fadd fast <4 x float> %i.afl, splat (float 5.000000e-01) ; 2 uses
  %i.afn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.afm)
  %i.afo = sitofp fast <4 x i32> %i.afn to <4 x float> ; 2 uses
  %i.afp = fcmp fast olt <4 x float> %i.afm, %i.afo
  %i.afq = select <4 x i1> %i.afp, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.afr = fsub fast <4 x float> %i.afo, %i.afq   ; 2 uses
  %i.afs = fneg fast <4 x float> %i.afr           ; 2 uses
  %i.aft = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.afs, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.afk)
  %i.afu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.afs, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.aft) ; 8 uses
  %i.afv = fmul fast <4 x float> %i.afu, %i.afu
  %i.afw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.afu, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.afx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.afw, <4 x float> nofpclass(nan inf) %i.afu, <4 x float> splat (float f0x3C088908))
  %i.afy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.afx, <4 x float> nofpclass(nan inf) %i.afu, <4 x float> splat (float f0x3D2AA9C1))
  %i.afz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.afy, <4 x float> nofpclass(nan inf) %i.afu, <4 x float> splat (float f0x3E2AAAAA))
  %i.aga = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.afz, <4 x float> nofpclass(nan inf) %i.afu, <4 x float> splat (float 5.000000e-01))
  %i.agb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aga, <4 x float> nofpclass(nan inf) %i.afv, <4 x float> nofpclass(nan inf) %i.afu)
  %i.agc = fadd fast <4 x float> %i.agb, splat (float 1.000000e+00)
  %i.agd = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.afr)
  %i.age = shl <4 x i32> %i.agd, splat (i32 23)
  %i.agf = add <4 x i32> %i.age, splat (i32 1065353216)
  %i.agg = bitcast <4 x i32> %i.agf to <4 x float>
  %i.agh = fmul fast <4 x float> %i.agc, %i.agg   ; 3 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %.1318661.i, i64 4
  %i.agj = load float, ptr %i.agi, align 4, !tbaa !65
  %i.agk = insertelement <4 x float> poison, float %i.agj, i64 0
  %i.agl = shufflevector <4 x float> %i.agk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.agm = fsub fast <4 x float> %i.afa, %i.agl
  %i.agn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.agm, <4 x float> splat (float f0x42B0C0A5))
  %i.ago = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.agn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.agp = fmul fast <4 x float> %i.ago, splat (float f0x3FB8AA3B)
  %i.agq = fadd fast <4 x float> %i.agp, splat (float 5.000000e-01) ; 2 uses
  %i.agr = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.agq)
  %i.ags = sitofp fast <4 x i32> %i.agr to <4 x float> ; 2 uses
  %i.agt = fcmp fast olt <4 x float> %i.agq, %i.ags
  %i.agu = select <4 x i1> %i.agt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.agv = fsub fast <4 x float> %i.ags, %i.agu   ; 2 uses
  %i.agw = fneg fast <4 x float> %i.agv           ; 2 uses
  %i.agx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.agw, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ago)
  %i.agy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.agw, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.agx) ; 8 uses
  %i.agz = fmul fast <4 x float> %i.agy, %i.agy
  %i.aha = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.agy, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.ahb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aha, <4 x float> nofpclass(nan inf) %i.agy, <4 x float> splat (float f0x3C088908))
  %i.ahc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahb, <4 x float> nofpclass(nan inf) %i.agy, <4 x float> splat (float f0x3D2AA9C1))
  %i.ahd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahc, <4 x float> nofpclass(nan inf) %i.agy, <4 x float> splat (float f0x3E2AAAAA))
  %i.ahe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahd, <4 x float> nofpclass(nan inf) %i.agy, <4 x float> splat (float 5.000000e-01))
  %i.ahf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ahe, <4 x float> nofpclass(nan inf) %i.agz, <4 x float> nofpclass(nan inf) %i.agy)
  %i.ahg = fadd fast <4 x float> %i.ahf, splat (float 1.000000e+00)
  %i.ahh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.agv)
  %i.ahi = shl <4 x i32> %i.ahh, splat (i32 23)
  %i.ahj = add <4 x i32> %i.ahi, splat (i32 1065353216)
  %i.ahk = bitcast <4 x i32> %i.ahj to <4 x float>
  %i.ahl = fmul fast <4 x float> %i.ahg, %i.ahk   ; 3 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %.1318661.i, i64 8
  %i.ahn = load float, ptr %i.ahm, align 4, !tbaa !65
  %i.aho = insertelement <4 x float> poison, float %i.ahn, i64 0
  %i.ahp = shufflevector <4 x float> %i.aho, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahq = fsub fast <4 x float> %i.afc, %i.ahp
  %i.ahr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ahq, <4 x float> splat (float f0x42B0C0A5))
  %i.ahs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ahr, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aht = fmul fast <4 x float> %i.ahs, splat (float f0x3FB8AA3B)
  %i.ahu = fadd fast <4 x float> %i.aht, splat (float 5.000000e-01) ; 2 uses
  %i.ahv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ahu)
  %i.ahw = sitofp fast <4 x i32> %i.ahv to <4 x float> ; 2 uses
  %i.ahx = fcmp fast olt <4 x float> %i.ahu, %i.ahw
  %i.ahy = select <4 x i1> %i.ahx, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ahz = fsub fast <4 x float> %i.ahw, %i.ahy   ; 2 uses
  %i.aia = fneg fast <4 x float> %i.ahz           ; 2 uses
  %i.aib = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.aia, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ahs)
  %i.aic = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.aia, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.aib) ; 8 uses
  %i.aid = fmul fast <4 x float> %i.aic, %i.aic
  %i.aie = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aic, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.aif = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aie, <4 x float> nofpclass(nan inf) %i.aic, <4 x float> splat (float f0x3C088908))
  %i.aig = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aif, <4 x float> nofpclass(nan inf) %i.aic, <4 x float> splat (float f0x3D2AA9C1))
  %i.aih = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aig, <4 x float> nofpclass(nan inf) %i.aic, <4 x float> splat (float f0x3E2AAAAA))
  %i.aii = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aih, <4 x float> nofpclass(nan inf) %i.aic, <4 x float> splat (float 5.000000e-01))
  %i.aij = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aii, <4 x float> nofpclass(nan inf) %i.aid, <4 x float> nofpclass(nan inf) %i.aic)
  %i.aik = fadd fast <4 x float> %i.aij, splat (float 1.000000e+00)
  %i.ail = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ahz)
  %i.aim = shl <4 x i32> %i.ail, splat (i32 23)
  %i.ain = add <4 x i32> %i.aim, splat (i32 1065353216)
  %i.aio = bitcast <4 x i32> %i.ain to <4 x float>
  %i.aip = fmul fast <4 x float> %i.aik, %i.aio   ; 3 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %.1318661.i, i64 12
  %i.air = load float, ptr %i.aiq, align 4, !tbaa !65
  %i.ais = insertelement <4 x float> poison, float %i.air, i64 0
  %i.ait = shufflevector <4 x float> %i.ais, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aiu = fsub fast <4 x float> %i.afe, %i.ait
  %i.aiv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aiu, <4 x float> splat (float f0x42B0C0A5))
  %i.aiw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aiv, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aix = fmul fast <4 x float> %i.aiw, splat (float f0x3FB8AA3B)
  %i.aiy = fadd fast <4 x float> %i.aix, splat (float 5.000000e-01) ; 2 uses
  %i.aiz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aiy)
  %i.aja = sitofp fast <4 x i32> %i.aiz to <4 x float> ; 2 uses
  %i.ajb = fcmp fast olt <4 x float> %i.aiy, %i.aja
  %i.ajc = select <4 x i1> %i.ajb, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ajd = fsub fast <4 x float> %i.aja, %i.ajc   ; 2 uses
  %i.aje = fneg fast <4 x float> %i.ajd           ; 2 uses
  %i.ajf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.aje, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.aiw)
  %i.ajg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.aje, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ajf) ; 8 uses
  %i.ajh = fmul fast <4 x float> %i.ajg, %i.ajg
  %i.aji = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ajg, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.ajj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aji, <4 x float> nofpclass(nan inf) %i.ajg, <4 x float> splat (float f0x3C088908))
  %i.ajk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ajj, <4 x float> nofpclass(nan inf) %i.ajg, <4 x float> splat (float f0x3D2AA9C1))
  %i.ajl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ajk, <4 x float> nofpclass(nan inf) %i.ajg, <4 x float> splat (float f0x3E2AAAAA))
  %i.ajm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ajl, <4 x float> nofpclass(nan inf) %i.ajg, <4 x float> splat (float 5.000000e-01))
  %i.ajn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ajm, <4 x float> nofpclass(nan inf) %i.ajh, <4 x float> nofpclass(nan inf) %i.ajg)
  %i.ajo = fadd fast <4 x float> %i.ajn, splat (float 1.000000e+00)
  %i.ajp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ajd)
  %i.ajq = shl <4 x i32> %i.ajp, splat (i32 23)
  %i.ajr = add <4 x i32> %i.ajq, splat (i32 1065353216)
  %i.ajs = bitcast <4 x i32> %i.ajr to <4 x float>
  %i.ajt = fmul fast <4 x float> %i.ajo, %i.ajs   ; 3 uses
  %7 = shufflevector <4 x float> %i.agh, <4 x float> %i.ahl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %7, ptr %.1315662.i, align 1, !tbaa !61
  %8 = shufflevector <4 x float> %i.aip, <4 x float> %i.ajt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %8, ptr %i.afb, align 1, !tbaa !61
  %i.aju = shufflevector <4 x float> %i.agh, <4 x float> %i.ahl, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ajv = shufflevector <4 x float> %i.aip, <4 x float> %i.ajt, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ajw = shufflevector <4 x float> %i.agh, <4 x float> %i.ahl, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ajx = shufflevector <4 x float> %i.aip, <4 x float> %i.ajt, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ajy = shufflevector <4 x float> %i.aju, <4 x float> %i.ajv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ajz = shufflevector <4 x float> %i.ajv, <4 x float> %i.aju, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.aka = shufflevector <4 x float> %i.ajw, <4 x float> %i.ajx, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.akb = shufflevector <4 x float> %i.ajx, <4 x float> %i.ajw, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.akc = load <4 x float>, ptr %.1321660.i, align 1, !tbaa !61
  %i.akd = fadd fast <4 x float> %i.ajz, %i.akc
  %i.ake = fadd fast <4 x float> %i.akd, %i.ajy
  %i.akf = fadd fast <4 x float> %i.ake, %i.akb
  %i.akg = fadd fast <4 x float> %i.akf, %i.aka
  store <4 x float> %i.akg, ptr %.1321660.i, align 1, !tbaa !61
  %i.akh = getelementptr inbounds nuw i8, ptr %.1315662.i, i64 64 ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %.1318661.i, i64 16 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %.1321660.i, i64 16 ; 2 uses
  %i.akk = add nuw nsw i32 %.1324659.i, 4         ; 3 uses
  %i.akl = or disjoint i32 %i.akk, 3
  %i.akm = icmp slt i32 %i.akl, %4
  br i1 %i.akm, label %.lr.ph663.i, label %.preheader625.i, !llvm.loop !119

.lr.ph672.i:                                      ; preds = %.preheader625.i, %.lr.ph672.i
  %.2316671.i = phi ptr [ %i.aly, %.lr.ph672.i ], [ %.1315.lcssa.i, %.preheader625.i ] ; 3 uses
  %.2319670.i = phi ptr [ %i.alz, %.lr.ph672.i ], [ %.1318.lcssa.i, %.preheader625.i ] ; 2 uses
  %.2322669.i = phi ptr [ %i.ama, %.lr.ph672.i ], [ %.1321.lcssa.i, %.preheader625.i ] ; 3 uses
  %.2325668.i = phi i32 [ %i.amb, %.lr.ph672.i ], [ %.1324.lcssa.i, %.preheader625.i ]
  %i.akn = load <4 x float>, ptr %.2316671.i, align 1, !tbaa !61
  %i.ako = load float, ptr %.2319670.i, align 4, !tbaa !65
  %i.akp = insertelement <4 x float> poison, float %i.ako, i64 0
  %i.akq = shufflevector <4 x float> %i.akp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akr = fsub fast <4 x float> %i.akn, %i.akq
  %i.aks = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.akr, <4 x float> splat (float f0x42B0C0A5))
  %i.akt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aks, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aku = fmul fast <4 x float> %i.akt, splat (float f0x3FB8AA3B)
  %i.akv = fadd fast <4 x float> %i.aku, splat (float 5.000000e-01) ; 2 uses
  %i.akw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.akv)
  %i.akx = sitofp fast <4 x i32> %i.akw to <4 x float> ; 2 uses
  %i.aky = fcmp fast olt <4 x float> %i.akv, %i.akx
  %i.akz = select <4 x i1> %i.aky, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ala = fsub fast <4 x float> %i.akx, %i.akz   ; 2 uses
  %i.alb = fneg fast <4 x float> %i.ala           ; 2 uses
  %i.alc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.alb, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.akt)
  %i.ald = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.alb, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.alc) ; 8 uses
  %i.ale = fmul fast <4 x float> %i.ald, %i.ald
  %i.alf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ald, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.alg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.alf, <4 x float> nofpclass(nan inf) %i.ald, <4 x float> splat (float f0x3C088908))
  %i.alh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.alg, <4 x float> nofpclass(nan inf) %i.ald, <4 x float> splat (float f0x3D2AA9C1))
  %i.ali = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.alh, <4 x float> nofpclass(nan inf) %i.ald, <4 x float> splat (float f0x3E2AAAAA))
  %i.alj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ali, <4 x float> nofpclass(nan inf) %i.ald, <4 x float> splat (float 5.000000e-01))
  %i.alk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.alj, <4 x float> nofpclass(nan inf) %i.ale, <4 x float> nofpclass(nan inf) %i.ald)
  %i.all = fadd fast <4 x float> %i.alk, splat (float 1.000000e+00)
  %i.alm = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ala)
  %i.aln = shl <4 x i32> %i.alm, splat (i32 23)
  %i.alo = add <4 x i32> %i.aln, splat (i32 1065353216)
  %i.alp = bitcast <4 x i32> %i.alo to <4 x float>
  %i.alq = fmul fast <4 x float> %i.all, %i.alp   ; 3 uses
  store <4 x float> %i.alq, ptr %.2316671.i, align 1, !tbaa !61
  %i.alr = shufflevector <4 x float> %i.alq, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.als = fadd fast <4 x float> %i.alr, %i.alq   ; 2 uses
  %i.alt = extractelement <4 x float> %i.als, i64 1
  %i.alu = extractelement <4 x float> %i.als, i64 0
  %i.alv = load float, ptr %.2322669.i, align 4, !tbaa !65
  %i.alw = fadd fast float %i.alt, %i.alv
  %i.alx = fadd fast float %i.alw, %i.alu
  store float %i.alx, ptr %.2322669.i, align 4, !tbaa !65
  %i.aly = getelementptr inbounds nuw i8, ptr %.2316671.i, i64 16
  %i.alz = getelementptr inbounds nuw i8, ptr %.2319670.i, i64 4
  %i.ama = getelementptr inbounds nuw i8, ptr %.2322669.i, i64 4
  %i.amb = add nuw nsw i32 %.2325668.i, 1         ; 2 uses
  %exitcond737.not.i = icmp eq i32 %i.amb, %4
  br i1 %exitcond737.not.i, label %._crit_edge673.i, label %.lr.ph672.i, !llvm.loop !120

._crit_edge673.i:                                 ; preds = %.lr.ph672.i, %.preheader625.i
  %indvars.iv.next739.i = add nuw nsw i64 %indvars.iv738.i, 1 ; 2 uses
  %exitcond742.not.i = icmp eq i64 %indvars.iv.next739.i, %wide.trip.count.i66
  br i1 %exitcond742.not.i, label %.preheader624.i, label %.preheader627.i, !llvm.loop !121

.preheader623.loopexit.i.unr-lcssa:               ; preds = %.lr.ph678.i
  %i.amc = and i32 %i.yw, 8
  %lcmp.mod616.not.not = icmp eq i32 %i.amc, 0
  br i1 %lcmp.mod616.not.not, label %.lr.ph678.i.epil.preheader, label %.preheader623.loopexit.i

.lr.ph678.i.epil.preheader:                       ; preds = %.preheader623.loopexit.i.unr-lcssa, %.lr.ph678.i.preheader
  %.0326677.i.epil.init = phi ptr [ %6, %.lr.ph678.i.preheader ], [ %i.amx, %.preheader623.loopexit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod618 = trunc i32 %i.yy to i1
  tail call void @llvm.assume(i1 %lcmp.mod618)
  %i.amd = load <8 x float>, ptr %.0326677.i.epil.init, align 1, !tbaa !61 ; 2 uses
  %i.ame = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.amd) ; 2 uses
  %i.amf = fneg fast <8 x float> %i.amd
  %i.amg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.amf, <8 x float> nofpclass(nan inf) %i.ame, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.amh = fmul fast <8 x float> %i.amg, %i.ame
  store <8 x float> %i.amh, ptr %.0326677.i.epil.init, align 1, !tbaa !61
  %i.ami = getelementptr inbounds nuw i8, ptr %.0326677.i.epil.init, i64 32
  br label %.preheader623.loopexit.i

.preheader623.loopexit.i:                         ; preds = %.preheader623.loopexit.i.unr-lcssa, %.lr.ph678.i.epil.preheader
  %.lcssa539 = phi ptr [ %i.amx, %.preheader623.loopexit.i.unr-lcssa ], [ %i.ami, %.lr.ph678.i.epil.preheader ]
  %i.amj = and i32 %4, 2147483640
  br label %.preheader623.i

.preheader623.i:                                  ; preds = %.preheader623.loopexit.i, %.preheader624.i
  %.0339.lcssa.i = phi i32 [ 0, %.preheader624.i ], [ %i.amj, %.preheader623.loopexit.i ] ; 3 uses
  %.0326.lcssa.i = phi ptr [ %6, %.preheader624.i ], [ %.lcssa539, %.preheader623.loopexit.i ] ; 2 uses
  %i.amk = or disjoint i32 %.0339.lcssa.i, 3
  %i.aml = icmp slt i32 %i.amk, %4
  br i1 %i.aml, label %.lr.ph683.i, label %.preheader622.i

.lr.ph678.i:                                      ; preds = %.lr.ph678.i, %.lr.ph678.i.preheader.new
  %.0326677.i = phi ptr [ %6, %.lr.ph678.i.preheader.new ], [ %i.amx, %.lr.ph678.i ] ; 4 uses
  %niter620 = phi i32 [ 0, %.lr.ph678.i.preheader.new ], [ %niter620.next.1, %.lr.ph678.i ]
  %i.amm = load <8 x float>, ptr %.0326677.i, align 1, !tbaa !61 ; 2 uses
  %i.amn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.amm) ; 2 uses
  %i.amo = fneg fast <8 x float> %i.amm
  %i.amp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.amo, <8 x float> nofpclass(nan inf) %i.amn, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.amq = fmul fast <8 x float> %i.amp, %i.amn
  store <8 x float> %i.amq, ptr %.0326677.i, align 1, !tbaa !61
  %i.amr = getelementptr inbounds nuw i8, ptr %.0326677.i, i64 32 ; 2 uses
  %i.ams = load <8 x float>, ptr %i.amr, align 1, !tbaa !61 ; 2 uses
  %i.amt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> nofpclass(nan inf) %i.ams) ; 2 uses
  %i.amu = fneg fast <8 x float> %i.ams
  %i.amv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.amu, <8 x float> nofpclass(nan inf) %i.amt, <8 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.amw = fmul fast <8 x float> %i.amv, %i.amt
  store <8 x float> %i.amw, ptr %i.amr, align 1, !tbaa !61
  %i.amx = getelementptr inbounds nuw i8, ptr %.0326677.i, i64 64 ; 3 uses
  %niter620.next.1 = add i32 %niter620, 2         ; 2 uses
  %niter620.ncmp.1.not = icmp eq i32 %niter620.next.1, %unroll_iter619
  br i1 %niter620.ncmp.1.not, label %.preheader623.loopexit.i.unr-lcssa, label %.lr.ph678.i, !llvm.loop !122

.preheader622.i:                                  ; preds = %.lr.ph683.i, %.preheader623.i
  %.1340.lcssa.i = phi i32 [ %.0339.lcssa.i, %.preheader623.i ], [ %i.anq, %.lr.ph683.i ] ; 4 uses
  %.1327.lcssa.i = phi ptr [ %.0326.lcssa.i, %.preheader623.i ], [ %i.anp, %.lr.ph683.i ] ; 3 uses
  %i.amy = icmp slt i32 %.1340.lcssa.i, %4
  br i1 %i.amy, label %.lr.ph688.i.preheader, label %.preheader621.i

.lr.ph688.i.preheader:                            ; preds = %.preheader622.i
  %i.amz = xor i32 %.1340.lcssa.i, -1
  %i.ana = add i32 %4, %i.amz                     ; 2 uses
  %i.anb = zext i32 %i.ana to i64
  %i.anc = add nuw nsw i64 %i.anb, 1              ; 2 uses
  %min.iters.check495 = icmp ult i32 %i.ana, 7
  br i1 %min.iters.check495, label %.lr.ph688.i.preheader536, label %vector.ph496

vector.ph496:                                     ; preds = %.lr.ph688.i.preheader
  %n.vec497 = and i64 %i.anc, 8589934584          ; 4 uses
  %i.and = shl nuw nsw i64 %n.vec497, 2
  %i.ane = getelementptr i8, ptr %.1327.lcssa.i, i64 %i.and
  %i.anf = trunc i64 %n.vec497 to i32
  %i.ang = add i32 %.1340.lcssa.i, %i.anf
  br label %vector.body498

vector.body498:                                   ; preds = %vector.body498, %vector.ph496
  %index499 = phi i64 [ 0, %vector.ph496 ], [ %index.next502, %vector.body498 ] ; 2 uses
  %i.anh = shl i64 %index499, 2
  %next.gep500 = getelementptr i8, ptr %.1327.lcssa.i, i64 %i.anh ; 2 uses
  %wide.load501 = load <8 x float>, ptr %next.gep500, align 4, !tbaa !65
  %i.ani = fdiv fast <8 x float> splat (float 1.000000e+00), %wide.load501
  store <8 x float> %i.ani, ptr %next.gep500, align 4, !tbaa !65
  %index.next502 = add nuw i64 %index499, 8       ; 2 uses
  %i.anj = icmp eq i64 %index.next502, %n.vec497
  br i1 %i.anj, label %middle.block503, label %vector.body498, !llvm.loop !123

middle.block503:                                  ; preds = %vector.body498
  %cmp.n504 = icmp eq i64 %i.anc, %n.vec497
  br i1 %cmp.n504, label %.preheader621.i, label %.lr.ph688.i.preheader536

.lr.ph688.i.preheader536:                         ; preds = %.lr.ph688.i.preheader, %middle.block503
  %.2328687.i.ph = phi ptr [ %.1327.lcssa.i, %.lr.ph688.i.preheader ], [ %i.ane, %middle.block503 ]
  %.2341686.i.ph = phi i32 [ %.1340.lcssa.i, %.lr.ph688.i.preheader ], [ %i.ang, %middle.block503 ]
  br label %.lr.ph688.i

.lr.ph683.i:                                      ; preds = %.preheader623.i, %.lr.ph683.i
  %.1327682.i = phi ptr [ %i.anp, %.lr.ph683.i ], [ %.0326.lcssa.i, %.preheader623.i ] ; 3 uses
  %.1340681.i = phi i32 [ %i.anq, %.lr.ph683.i ], [ %.0339.lcssa.i, %.preheader623.i ]
  %i.ank = load <4 x float>, ptr %.1327682.i, align 1, !tbaa !61 ; 2 uses
  %i.anl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.ank) ; 2 uses
  %i.anm = fneg fast <4 x float> %i.ank
  %i.ann = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.anm, <4 x float> nofpclass(nan inf) %i.anl, <4 x float> nofpclass(nan inf) splat (float 2.000000e+00))
  %i.ano = fmul fast <4 x float> %i.ann, %i.anl
  store <4 x float> %i.ano, ptr %.1327682.i, align 1, !tbaa !61
  %i.anp = getelementptr inbounds nuw i8, ptr %.1327682.i, i64 16 ; 2 uses
  %i.anq = add nuw nsw i32 %.1340681.i, 4         ; 3 uses
  %i.anr = or disjoint i32 %i.anq, 3
  %i.ans = icmp slt i32 %i.anr, %4
  br i1 %i.ans, label %.lr.ph683.i, label %.preheader622.i, !llvm.loop !124

.preheader621.i:                                  ; preds = %.lr.ph688.i, %middle.block503, %.preheader622.i
  br i1 %i.vj, label %.lr.ph710.i, label %_ZN4ncnnL13softmax_pack8EPfimiS0_S0_.exit

.lr.ph710.i:                                      ; preds = %.preheader621.i
  %i.ant = and i32 %4, -8
  %wide.trip.count748.i = zext nneg i32 %1 to i64
  br label %bb.g

.lr.ph688.i:                                      ; preds = %.lr.ph688.i.preheader536, %.lr.ph688.i
  %.2328687.i = phi ptr [ %i.anw, %.lr.ph688.i ], [ %.2328687.i.ph, %.lr.ph688.i.preheader536 ] ; 3 uses
  %.2341686.i = phi i32 [ %i.anx, %.lr.ph688.i ], [ %.2341686.i.ph, %.lr.ph688.i.preheader536 ]
  %i.anu = load float, ptr %.2328687.i, align 4, !tbaa !65
  %i.anv = fdiv fast float 1.000000e+00, %i.anu
  store float %i.anv, ptr %.2328687.i, align 4, !tbaa !65
  %i.anw = getelementptr inbounds nuw i8, ptr %.2328687.i, i64 4
  %i.anx = add nuw nsw i32 %.2341686.i, 1         ; 2 uses
  %exitcond743.not.i = icmp eq i32 %i.anx, %4
  br i1 %exitcond743.not.i, label %.preheader621.i, label %.lr.ph688.i, !llvm.loop !125

bb.g:                                             ; preds = %._crit_edge708.i, %.lr.ph710.i
  %indvars.iv745.i = phi i64 [ 0, %.lr.ph710.i ], [ %indvars.iv.next746.i, %._crit_edge708.i ] ; 2 uses
  %i.any = mul i64 %indvars.iv745.i, %3
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.any ; 2 uses
  br i1 %i.a, label %.lr.ph693.i, label %.preheader620.i

.preheader620.i:                                  ; preds = %.lr.ph693.i, %bb.g
  %.0335.lcssa.i = phi ptr [ %i.anz, %bb.g ], [ %i.apo, %.lr.ph693.i ] ; 2 uses
  %.0332.lcssa.i = phi ptr [ %6, %bb.g ], [ %i.app, %.lr.ph693.i ] ; 2 uses
  %.0329.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.ant, %.lr.ph693.i ] ; 3 uses
  %i.aoa = or disjoint i32 %.0329.lcssa.i, 3
  %i.aob = icmp slt i32 %i.aoa, %4
  br i1 %i.aob, label %.lr.ph700.i, label %.preheader.i64

.lr.ph693.i:                                      ; preds = %bb.g, %.lr.ph693.i
  %.0329691.i = phi i32 [ %i.apq, %.lr.ph693.i ], [ 0, %bb.g ]
  %.0332690.i = phi ptr [ %i.app, %.lr.ph693.i ], [ %6, %bb.g ] ; 9 uses
  %.0335689.i = phi ptr [ %i.apo, %.lr.ph693.i ], [ %i.anz, %bb.g ] ; 6 uses
  %i.aoc = load <8 x float>, ptr %.0335689.i, align 1, !tbaa !61
  %i.aod = getelementptr inbounds nuw i8, ptr %.0335689.i, i64 32 ; 2 uses
  %i.aoe = load <8 x float>, ptr %i.aod, align 1, !tbaa !61
  %i.aof = getelementptr inbounds nuw i8, ptr %.0335689.i, i64 64 ; 2 uses
  %i.aog = load <8 x float>, ptr %i.aof, align 1, !tbaa !61
  %i.aoh = getelementptr inbounds nuw i8, ptr %.0335689.i, i64 96 ; 2 uses
  %i.aoi = load <8 x float>, ptr %i.aoh, align 1, !tbaa !61
  %i.aoj = load float, ptr %.0332690.i, align 4, !tbaa !65
  %i.aok = insertelement <4 x float> poison, float %i.aoj, i64 0
  %i.aol = getelementptr inbounds nuw i8, ptr %.0332690.i, i64 4
  %i.aom = load float, ptr %i.aol, align 4, !tbaa !65
  %i.aon = insertelement <4 x float> poison, float %i.aom, i64 0
  %i.aoo = shufflevector <4 x float> %i.aok, <4 x float> %i.aon, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.aop = fmul fast <8 x float> %i.aoo, %i.aoc
  %i.aoq = getelementptr inbounds nuw i8, ptr %.0332690.i, i64 8
  %i.aor = load float, ptr %i.aoq, align 4, !tbaa !65
  %i.aos = insertelement <4 x float> poison, float %i.aor, i64 0
  %i.aot = getelementptr inbounds nuw i8, ptr %.0332690.i, i64 12
  %i.aou = load float, ptr %i.aot, align 4, !tbaa !65
  %i.aov = insertelement <4 x float> poison, float %i.aou, i64 0
  %i.aow = shufflevector <4 x float> %i.aos, <4 x float> %i.aov, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.aox = fmul fast <8 x float> %i.aow, %i.aoe
  %i.aoy = getelementptr inbounds nuw i8, ptr %.0332690.i, i64 16
  %i.aoz = load float, ptr %i.aoy, align 4, !tbaa !65
  %i.apa = insertelement <4 x float> poison, float %i.aoz, i64 0
  %i.apb = getelementptr inbounds nuw i8, ptr %.0332690.i, i64 20
  %i.apc = load float, ptr %i.apb, align 4, !tbaa !65
  %i.apd = insertelement <4 x float> poison, float %i.apc, i64 0
  %i.ape = shufflevector <4 x float> %i.apa, <4 x float> %i.apd, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.apf = fmul fast <8 x float> %i.ape, %i.aog
  %i.apg = getelementptr inbounds nuw i8, ptr %.0332690.i, i64 24
  %i.aph = load float, ptr %i.apg, align 4, !tbaa !65
  %i.api = insertelement <4 x float> poison, float %i.aph, i64 0
  %i.apj = getelementptr inbounds nuw i8, ptr %.0332690.i, i64 28
  %i.apk = load float, ptr %i.apj, align 4, !tbaa !65
  %i.apl = insertelement <4 x float> poison, float %i.apk, i64 0
  %i.apm = shufflevector <4 x float> %i.api, <4 x float> %i.apl, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.apn = fmul fast <8 x float> %i.apm, %i.aoi
  store <8 x float> %i.aop, ptr %.0335689.i, align 1, !tbaa !61
  store <8 x float> %i.aox, ptr %i.aod, align 1, !tbaa !61
  store <8 x float> %i.apf, ptr %i.aof, align 1, !tbaa !61
  store <8 x float> %i.apn, ptr %i.aoh, align 1, !tbaa !61
  %i.apo = getelementptr inbounds nuw i8, ptr %.0335689.i, i64 128 ; 2 uses
  %i.app = getelementptr inbounds nuw i8, ptr %.0332690.i, i64 32 ; 2 uses
  %i.apq = add nuw nsw i32 %.0329691.i, 8         ; 2 uses
  %i.apr = or disjoint i32 %i.apq, 7
  %i.aps = icmp slt i32 %i.apr, %4
  br i1 %i.aps, label %.lr.ph693.i, label %.preheader620.i, !llvm.loop !126

.preheader.i64:                                   ; preds = %.lr.ph700.i, %.preheader620.i
  %.1336.lcssa.i = phi ptr [ %.0335.lcssa.i, %.preheader620.i ], [ %i.aqu, %.lr.ph700.i ] ; 2 uses
  %.1333.lcssa.i = phi ptr [ %.0332.lcssa.i, %.preheader620.i ], [ %i.aqv, %.lr.ph700.i ] ; 2 uses
  %.1330.lcssa.i = phi i32 [ %.0329.lcssa.i, %.preheader620.i ], [ %i.aqw, %.lr.ph700.i ] ; 5 uses
  %i.apt = icmp slt i32 %.1330.lcssa.i, %4
  br i1 %i.apt, label %.lr.ph707.i.preheader, label %._crit_edge708.i

.lr.ph707.i.preheader:                            ; preds = %.preheader.i64
  %i.apu = sub i32 %4, %.1330.lcssa.i
  %xtraiter621 = and i32 %i.apu, 3                ; 2 uses
  %lcmp.mod622.not = icmp eq i32 %xtraiter621, 0
  br i1 %lcmp.mod622.not, label %.lr.ph707.i.prol.loopexit, label %.lr.ph707.i.prol

.lr.ph707.i.prol:                                 ; preds = %.lr.ph707.i.preheader, %.lr.ph707.i.prol
  %.2331706.i.prol = phi i32 [ %i.aqc, %.lr.ph707.i.prol ], [ %.1330.lcssa.i, %.lr.ph707.i.preheader ]
  %.2334705.i.prol = phi ptr [ %i.aqb, %.lr.ph707.i.prol ], [ %.1333.lcssa.i, %.lr.ph707.i.preheader ] ; 2 uses
  %.2337704.i.prol = phi ptr [ %i.aqa, %.lr.ph707.i.prol ], [ %.1336.lcssa.i, %.lr.ph707.i.preheader ] ; 3 uses
  %prol.iter623 = phi i32 [ %prol.iter623.next, %.lr.ph707.i.prol ], [ 0, %.lr.ph707.i.preheader ]
  %i.apv = load <4 x float>, ptr %.2337704.i.prol, align 1, !tbaa !61
  %i.apw = load float, ptr %.2334705.i.prol, align 4, !tbaa !65
  %i.apx = insertelement <4 x float> poison, float %i.apw, i64 0
  %i.apy = shufflevector <4 x float> %i.apx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apz = fmul fast <4 x float> %i.apy, %i.apv
  store <4 x float> %i.apz, ptr %.2337704.i.prol, align 1, !tbaa !61
  %i.aqa = getelementptr inbounds nuw i8, ptr %.2337704.i.prol, i64 16 ; 2 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %.2334705.i.prol, i64 4 ; 2 uses
  %i.aqc = add nuw nsw i32 %.2331706.i.prol, 1    ; 2 uses
  %prol.iter623.next = add i32 %prol.iter623, 1   ; 2 uses
  %prol.iter623.cmp.not = icmp eq i32 %prol.iter623.next, %xtraiter621
  br i1 %prol.iter623.cmp.not, label %.lr.ph707.i.prol.loopexit, label %.lr.ph707.i.prol, !llvm.loop !127

.lr.ph707.i.prol.loopexit:                        ; preds = %.lr.ph707.i.prol, %.lr.ph707.i.preheader
  %.2331706.i.unr = phi i32 [ %.1330.lcssa.i, %.lr.ph707.i.preheader ], [ %i.aqc, %.lr.ph707.i.prol ]
  %.2334705.i.unr = phi ptr [ %.1333.lcssa.i, %.lr.ph707.i.preheader ], [ %i.aqb, %.lr.ph707.i.prol ]
  %.2337704.i.unr = phi ptr [ %.1336.lcssa.i, %.lr.ph707.i.preheader ], [ %i.aqa, %.lr.ph707.i.prol ]
  %i.aqd = sub i32 %.1330.lcssa.i, %4
  %i.aqe = icmp ugt i32 %i.aqd, -4
  br i1 %i.aqe, label %._crit_edge708.i, label %.lr.ph707.i

.lr.ph700.i:                                      ; preds = %.preheader620.i, %.lr.ph700.i
  %.1330699.i = phi i32 [ %i.aqw, %.lr.ph700.i ], [ %.0329.lcssa.i, %.preheader620.i ]
  %.1333698.i = phi ptr [ %i.aqv, %.lr.ph700.i ], [ %.0332.lcssa.i, %.preheader620.i ] ; 5 uses
  %.1336697.i = phi ptr [ %i.aqu, %.lr.ph700.i ], [ %.0335.lcssa.i, %.preheader620.i ] ; 6 uses
  %i.aqf = load <4 x float>, ptr %.1336697.i, align 1, !tbaa !61
  %i.aqg = getelementptr inbounds nuw i8, ptr %.1336697.i, i64 16
  %i.aqh = load <4 x float>, ptr %i.aqg, align 1, !tbaa !61
  %i.aqi = getelementptr inbounds nuw i8, ptr %.1336697.i, i64 32 ; 2 uses
  %i.aqj = load <4 x float>, ptr %i.aqi, align 1, !tbaa !61
  %i.aqk = getelementptr inbounds nuw i8, ptr %.1336697.i, i64 48
  %i.aql = load <4 x float>, ptr %i.aqk, align 1, !tbaa !61
  %i.aqm = load float, ptr %.1333698.i, align 4, !tbaa !65
  %i.aqn = insertelement <4 x float> poison, float %i.aqm, i64 0
  %i.aqo = getelementptr inbounds nuw i8, ptr %.1333698.i, i64 4
  %i.aqp = load float, ptr %i.aqo, align 4, !tbaa !65
  %i.aqq = insertelement <4 x float> poison, float %i.aqp, i64 0
  %i.aqr = getelementptr inbounds nuw i8, ptr %.1333698.i, i64 8
  %i.aqs = load float, ptr %i.aqr, align 4, !tbaa !65
  %i.aqt = insertelement <4 x float> poison, float %i.aqs, i64 0
  %9 = getelementptr inbounds nuw i8, ptr %.1333698.i, i64 12
  %10 = load float, ptr %9, align 4, !tbaa !65
  %11 = insertelement <4 x float> poison, float %10, i64 0
  %12 = shufflevector <4 x float> %i.aqn, <4 x float> %i.aqq, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %13 = shufflevector <4 x float> %i.aqf, <4 x float> %i.aqh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %14 = fmul fast <8 x float> %12, %13
  store <8 x float> %14, ptr %.1336697.i, align 1, !tbaa !61
  %15 = shufflevector <4 x float> %i.aqt, <4 x float> %11, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %16 = shufflevector <4 x float> %i.aqj, <4 x float> %i.aql, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %17 = fmul fast <8 x float> %15, %16
  store <8 x float> %17, ptr %i.aqi, align 1, !tbaa !61
  %i.aqu = getelementptr inbounds nuw i8, ptr %.1336697.i, i64 64 ; 2 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %.1333698.i, i64 16 ; 2 uses
  %i.aqw = add nuw nsw i32 %.1330699.i, 4         ; 3 uses
  %i.aqx = or disjoint i32 %i.aqw, 3
  %i.aqy = icmp slt i32 %i.aqx, %4
  br i1 %i.aqy, label %.lr.ph700.i, label %.preheader.i64, !llvm.loop !128

.lr.ph707.i:                                      ; preds = %.lr.ph707.i.prol.loopexit, %.lr.ph707.i
  %.2331706.i = phi i32 [ %i.asb, %.lr.ph707.i ], [ %.2331706.i.unr, %.lr.ph707.i.prol.loopexit ]
  %.2334705.i = phi ptr [ %i.asa, %.lr.ph707.i ], [ %.2334705.i.unr, %.lr.ph707.i.prol.loopexit ] ; 5 uses
  %.2337704.i = phi ptr [ %i.arz, %.lr.ph707.i ], [ %.2337704.i.unr, %.lr.ph707.i.prol.loopexit ] ; 6 uses
  %i.aqz = load <4 x float>, ptr %.2337704.i, align 1, !tbaa !61
  %i.ara = load float, ptr %.2334705.i, align 4, !tbaa !65
  %i.arb = insertelement <4 x float> poison, float %i.ara, i64 0
  %i.arc = shufflevector <4 x float> %i.arb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ard = fmul fast <4 x float> %i.arc, %i.aqz
  store <4 x float> %i.ard, ptr %.2337704.i, align 1, !tbaa !61
  %i.are = getelementptr inbounds nuw i8, ptr %.2337704.i, i64 16 ; 2 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %.2334705.i, i64 4
  %i.arg = load <4 x float>, ptr %i.are, align 1, !tbaa !61
  %i.arh = load float, ptr %i.arf, align 4, !tbaa !65
  %i.ari = insertelement <4 x float> poison, float %i.arh, i64 0
  %i.arj = shufflevector <4 x float> %i.ari, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ark = fmul fast <4 x float> %i.arj, %i.arg
  store <4 x float> %i.ark, ptr %i.are, align 1, !tbaa !61
  %i.arl = getelementptr inbounds nuw i8, ptr %.2337704.i, i64 32 ; 2 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %.2334705.i, i64 8
  %i.arn = load <4 x float>, ptr %i.arl, align 1, !tbaa !61
  %i.aro = load float, ptr %i.arm, align 4, !tbaa !65
  %i.arp = insertelement <4 x float> poison, float %i.aro, i64 0
  %i.arq = shufflevector <4 x float> %i.arp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arr = fmul fast <4 x float> %i.arq, %i.arn
  store <4 x float> %i.arr, ptr %i.arl, align 1, !tbaa !61
  %i.ars = getelementptr inbounds nuw i8, ptr %.2337704.i, i64 48 ; 2 uses
  %i.art = getelementptr inbounds nuw i8, ptr %.2334705.i, i64 12
  %i.aru = load <4 x float>, ptr %i.ars, align 1, !tbaa !61
  %i.arv = load float, ptr %i.art, align 4, !tbaa !65
  %i.arw = insertelement <4 x float> poison, float %i.arv, i64 0
  %i.arx = shufflevector <4 x float> %i.arw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ary = fmul fast <4 x float> %i.arx, %i.aru
  store <4 x float> %i.ary, ptr %i.ars, align 1, !tbaa !61
  %i.arz = getelementptr inbounds nuw i8, ptr %.2337704.i, i64 64
  %i.asa = getelementptr inbounds nuw i8, ptr %.2334705.i, i64 16
  %i.asb = add nuw nsw i32 %.2331706.i, 4         ; 2 uses
  %exitcond744.not.i.3 = icmp eq i32 %i.asb, %4
  br i1 %exitcond744.not.i.3, label %._crit_edge708.i, label %.lr.ph707.i, !llvm.loop !129

._crit_edge708.i:                                 ; preds = %.lr.ph707.i.prol.loopexit, %.lr.ph707.i, %.preheader.i64
  %indvars.iv.next746.i = add nuw nsw i64 %indvars.iv745.i, 1 ; 2 uses
  %exitcond749.not.i = icmp eq i64 %indvars.iv.next746.i, %wide.trip.count748.i
  br i1 %exitcond749.not.i, label %_ZN4ncnnL13softmax_pack8EPfimiS0_S0_.exit, label %bb.g, !llvm.loop !130

bb.h:                                             ; preds = %._crit_edge
  %i.asc = icmp sgt i32 %1, 0                     ; 2 uses
  br i1 %i.asc, label %.lr.ph269.i, label %.preheader245.i

.lr.ph269.i:                                      ; preds = %bb.h
  %i.asd = and i32 %4, -8                         ; 3 uses
  %wide.trip.count.i82 = zext nneg i32 %1 to i64  ; 2 uses
  %i.ase = add i32 %4, -8                         ; 2 uses
  %i.asf = lshr i32 %i.ase, 3
  %i.asg = add nuw nsw i32 %i.asf, 1              ; 2 uses
  %xtraiter580 = and i32 %i.asg, 3                ; 3 uses
  %i.ash = icmp ult i32 %i.ase, 24
  %unroll_iter586 = and i32 %i.asg, 1073741820
  %lcmp.mod582.not = icmp eq i32 %xtraiter580, 0
  %lcmp.mod585 = icmp ne i32 %xtraiter580, 0
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i85, %.lr.ph269.i
  %indvars.iv.i83 = phi i64 [ 0, %.lr.ph269.i ], [ %indvars.iv.next.i86, %._crit_edge.i85 ] ; 2 uses
  %i.asi = mul i64 %indvars.iv.i83, %3
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.asi ; 3 uses
  br i1 %i.a, label %.lr.ph.i90.preheader, label %.preheader250.i

.lr.ph.i90.preheader:                             ; preds = %bb.i
  br i1 %i.ash, label %.lr.ph.i90.epil.preheader, label %.lr.ph.i90

.preheader250.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i90
  br i1 %lcmp.mod582.not, label %.preheader250.i, label %.lr.ph.i90.epil.preheader

.lr.ph.i90.epil.preheader:                        ; preds = %.preheader250.i.loopexit.unr-lcssa, %.lr.ph.i90.preheader
  %.0139253.i.epil.init = phi ptr [ %i.asj, %.lr.ph.i90.preheader ], [ %i.atj, %.preheader250.i.loopexit.unr-lcssa ]
  %.0140252.i.epil.init = phi ptr [ %5, %.lr.ph.i90.preheader ], [ %i.atk, %.preheader250.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod585)
  br label %.lr.ph.i90.epil

.lr.ph.i90.epil:                                  ; preds = %.lr.ph.i90.epil, %.lr.ph.i90.epil.preheader
  %.0139253.i.epil = phi ptr [ %i.asn, %.lr.ph.i90.epil ], [ %.0139253.i.epil.init, %.lr.ph.i90.epil.preheader ] ; 2 uses
  %.0140252.i.epil = phi ptr [ %i.aso, %.lr.ph.i90.epil ], [ %.0140252.i.epil.init, %.lr.ph.i90.epil.preheader ] ; 3 uses
  %epil.iter581 = phi i32 [ %epil.iter581.next, %.lr.ph.i90.epil ], [ 0, %.lr.ph.i90.epil.preheader ]
  %i.ask = load <8 x float>, ptr %.0139253.i.epil, align 1, !tbaa !61
  %i.asl = load <8 x float>, ptr %.0140252.i.epil, align 1, !tbaa !61
  %i.asm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.asl, <8 x float> nofpclass(nan inf) %i.ask)
  store <8 x float> %i.asm, ptr %.0140252.i.epil, align 1, !tbaa !61
  %i.asn = getelementptr inbounds nuw i8, ptr %.0139253.i.epil, i64 32 ; 2 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %.0140252.i.epil, i64 32 ; 2 uses
  %epil.iter581.next = add i32 %epil.iter581, 1   ; 2 uses
  %epil.iter581.cmp.not = icmp eq i32 %epil.iter581.next, %xtraiter580
  br i1 %epil.iter581.cmp.not, label %.preheader250.i, label %.lr.ph.i90.epil, !llvm.loop !131

.preheader250.i:                                  ; preds = %.preheader250.i.loopexit.unr-lcssa, %.lr.ph.i90.epil, %bb.i
  %.0143.lcssa.i = phi i32 [ 0, %bb.i ], [ %i.asd, %.lr.ph.i90.epil ], [ %i.asd, %.preheader250.i.loopexit.unr-lcssa ] ; 3 uses
  %.0140.lcssa.i = phi ptr [ %5, %bb.i ], [ %i.atk, %.preheader250.i.loopexit.unr-lcssa ], [ %i.aso, %.lr.ph.i90.epil ] ; 2 uses
  %.0139.lcssa.i = phi ptr [ %i.asj, %bb.i ], [ %i.atj, %.preheader250.i.loopexit.unr-lcssa ], [ %i.asn, %.lr.ph.i90.epil ] ; 2 uses
  %i.asp = or disjoint i32 %.0143.lcssa.i, 3
  %i.asq = icmp slt i32 %i.asp, %4
  br i1 %i.asq, label %.lr.ph259.i, label %.preheader249.i

.lr.ph.i90:                                       ; preds = %.lr.ph.i90.preheader, %.lr.ph.i90
  %.0139253.i = phi ptr [ %i.atj, %.lr.ph.i90 ], [ %i.asj, %.lr.ph.i90.preheader ] ; 5 uses
  %.0140252.i = phi ptr [ %i.atk, %.lr.ph.i90 ], [ %5, %.lr.ph.i90.preheader ] ; 6 uses
  %niter587 = phi i32 [ %niter587.next.3, %.lr.ph.i90 ], [ 0, %.lr.ph.i90.preheader ]
  %i.asr = load <8 x float>, ptr %.0139253.i, align 1, !tbaa !61
  %i.ass = load <8 x float>, ptr %.0140252.i, align 1, !tbaa !61
  %i.ast = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ass, <8 x float> nofpclass(nan inf) %i.asr)
  store <8 x float> %i.ast, ptr %.0140252.i, align 1, !tbaa !61
  %i.asu = getelementptr inbounds nuw i8, ptr %.0139253.i, i64 32
  %i.asv = getelementptr inbounds nuw i8, ptr %.0140252.i, i64 32 ; 2 uses
  %i.asw = load <8 x float>, ptr %i.asu, align 1, !tbaa !61
  %i.asx = load <8 x float>, ptr %i.asv, align 1, !tbaa !61
  %i.asy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.asx, <8 x float> nofpclass(nan inf) %i.asw)
  store <8 x float> %i.asy, ptr %i.asv, align 1, !tbaa !61
  %i.asz = getelementptr inbounds nuw i8, ptr %.0139253.i, i64 64
  %i.ata = getelementptr inbounds nuw i8, ptr %.0140252.i, i64 64 ; 2 uses
  %i.atb = load <8 x float>, ptr %i.asz, align 1, !tbaa !61
  %i.atc = load <8 x float>, ptr %i.ata, align 1, !tbaa !61
  %i.atd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.atc, <8 x float> nofpclass(nan inf) %i.atb)
  store <8 x float> %i.atd, ptr %i.ata, align 1, !tbaa !61
  %i.ate = getelementptr inbounds nuw i8, ptr %.0139253.i, i64 96
  %i.atf = getelementptr inbounds nuw i8, ptr %.0140252.i, i64 96 ; 2 uses
  %i.atg = load <8 x float>, ptr %i.ate, align 1, !tbaa !61
  %i.ath = load <8 x float>, ptr %i.atf, align 1, !tbaa !61
  %i.ati = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ath, <8 x float> nofpclass(nan inf) %i.atg)
  store <8 x float> %i.ati, ptr %i.atf, align 1, !tbaa !61
  %i.atj = getelementptr inbounds nuw i8, ptr %.0139253.i, i64 128 ; 3 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %.0140252.i, i64 128 ; 3 uses
  %niter587.next.3 = add i32 %niter587, 4         ; 2 uses
  %niter587.ncmp.3.not = icmp eq i32 %niter587.next.3, %unroll_iter586
  br i1 %niter587.ncmp.3.not, label %.preheader250.i.loopexit.unr-lcssa, label %.lr.ph.i90, !llvm.loop !132

.preheader249.i:                                  ; preds = %.lr.ph259.i, %.preheader250.i
  %.1144.lcssa.i = phi i32 [ %.0143.lcssa.i, %.preheader250.i ], [ %i.avo, %.lr.ph259.i ] ; 7 uses
  %.1141.lcssa.i = phi ptr [ %.0140.lcssa.i, %.preheader250.i ], [ %i.avn, %.lr.ph259.i ] ; 8 uses
  %.1.lcssa.i84 = phi ptr [ %.0139.lcssa.i, %.preheader250.i ], [ %i.avm, %.lr.ph259.i ] ; 8 uses
  %i.atl = icmp slt i32 %.1144.lcssa.i, %4
  br i1 %i.atl, label %iter.check378, label %._crit_edge.i85

iter.check378:                                    ; preds = %.preheader249.i
  %i.atm = xor i32 %.1144.lcssa.i, -1
  %i.atn = add i32 %4, %i.atm                     ; 3 uses
  %i.ato = zext i32 %i.atn to i64
  %i.atp = add nuw nsw i64 %i.ato, 1              ; 5 uses
  %min.iters.check356 = icmp ult i32 %i.atn, 7
  br i1 %min.iters.check356, label %.lr.ph266.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check378
  %scevgep352 = getelementptr i8, ptr %.1141.lcssa.i, i64 4
  %i.atq = xor i32 %.1144.lcssa.i, -1
  %i.atr = add i32 %4, %i.atq
  %i.ats = zext i32 %i.atr to i64
  %i.att = shl nuw nsw i64 %i.ats, 2              ; 2 uses
  %scevgep353 = getelementptr i8, ptr %scevgep352, i64 %i.att
  %scevgep354 = getelementptr i8, ptr %.1.lcssa.i84, i64 4
  %scevgep355 = getelementptr i8, ptr %scevgep354, i64 %i.att
  %bound0 = icmp ult ptr %.1141.lcssa.i, %scevgep355
  %bound1 = icmp ult ptr %.1.lcssa.i84, %scevgep353
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph266.i.preheader, label %vector.main.loop.iter.check357

vector.main.loop.iter.check357:                   ; preds = %vector.memcheck
  %min.iters.check358 = icmp ult i32 %i.atn, 31
  br i1 %min.iters.check358, label %vec.epilog.ph382, label %vector.ph359

vector.ph359:                                     ; preds = %vector.main.loop.iter.check357
  %i.atu = and i64 %i.atp, 24
  %n.vec360 = and i64 %i.atp, 8589934560          ; 5 uses
  %i.atv = shl nuw nsw i64 %n.vec360, 2           ; 2 uses
  %i.atw = getelementptr i8, ptr %.1.lcssa.i84, i64 %i.atv
  %i.atx = getelementptr i8, ptr %.1141.lcssa.i, i64 %i.atv
  %i.aty = trunc i64 %n.vec360 to i32
  %i.atz = add i32 %.1144.lcssa.i, %i.aty
  br label %vector.body361

vector.body361:                                   ; preds = %vector.ph359, %vector.body361
  %index362 = phi i64 [ 0, %vector.ph359 ], [ %index.next372, %vector.body361 ] ; 2 uses
  %i.aua = shl i64 %index362, 2                   ; 2 uses
  %next.gep363 = getelementptr i8, ptr %.1.lcssa.i84, i64 %i.aua ; 4 uses
  %next.gep364 = getelementptr i8, ptr %.1141.lcssa.i, i64 %i.aua ; 5 uses
  %i.aub = getelementptr i8, ptr %next.gep364, i64 32 ; 2 uses
  %i.auc = getelementptr i8, ptr %next.gep364, i64 64 ; 2 uses
  %i.aud = getelementptr i8, ptr %next.gep364, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep364, align 4, !tbaa !65, !alias.scope !166, !noalias !167 ; 2 uses
  %wide.load365 = load <8 x float>, ptr %i.aub, align 4, !tbaa !65, !alias.scope !166, !noalias !167 ; 2 uses
  %wide.load366 = load <8 x float>, ptr %i.auc, align 4, !tbaa !65, !alias.scope !166, !noalias !167 ; 2 uses
  %wide.load367 = load <8 x float>, ptr %i.aud, align 4, !tbaa !65, !alias.scope !166, !noalias !167 ; 2 uses
  %i.aue = getelementptr i8, ptr %next.gep363, i64 32
  %i.auf = getelementptr i8, ptr %next.gep363, i64 64
  %i.aug = getelementptr i8, ptr %next.gep363, i64 96
  %wide.load368 = load <8 x float>, ptr %next.gep363, align 4, !tbaa !65, !alias.scope !167 ; 2 uses
end_hunk_0
