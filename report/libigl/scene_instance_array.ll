Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scene_instance_array?download=true
inline.NumInlined: 398
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK6embree13InstanceArray15nonlinearBoundsEmRKNS_4BBoxIfEES4_f:bb.a
  %i.fhk = fmul <4 x float> %i.fgy, %.sroa.26.0
  %i.fhl = fmul <4 x float> %i.fhb, %.sroa.26533.0
  %i.fhm = fadd <4 x float> %i.fhl, %i.fhk
  %.not.i146 = icmp eq ptr %i.dyc, null           ; 2 uses
  br i1 %.not.i146, label %_ZNK6embree13InstanceArray5validEm.exit148, label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit122

_ZNK6embree13InstanceArray5validEm.exit148:       ; preds = %_ZNK6embree13InstanceArray3l2wEmm.exit.i
  %i.fhn = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.fho = load ptr, ptr %i.fhn, align 16, !noalias !1073
  %i.fhp = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.fhq = load i64, ptr %i.fhp, align 16, !noalias !1073
  %i.fhr = mul i64 %i.fhq, %2
  %i.fhs = getelementptr inbounds nuw i8, ptr %i.fho, i64 %i.fhr
  %i.fht = load i32, ptr %i.fhs, align 4, !noalias !1073 ; 2 uses
  %.not5043 = icmp eq i32 %i.fht, -1
  br i1 %.not5043, label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit121, label %bb.cn

bb.cn:                                            ; preds = %_ZNK6embree13InstanceArray5validEm.exit148
  %i.fhu = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.fhv = load ptr, ptr %i.fhu, align 16, !noalias !1073
  %i.fhw = zext i32 %i.fht to i64
  %i.fhx = getelementptr inbounds nuw [8 x i8], ptr %i.fhv, i64 %i.fhw
  %i.fhy = load ptr, ptr %i.fhx, align 8, !noalias !1073
  br label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit122

_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit122: ; preds = %bb.cn, %_ZNK6embree13InstanceArray3l2wEmm.exit.i
  %.0.i242 = phi ptr [ %i.fhy, %bb.cn ], [ %i.dyc, %_ZNK6embree13InstanceArray3l2wEmm.exit.i ] ; 4 uses
  %i.fhz = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.fia = load float, ptr %i.fhz, align 4, !noalias !1073 ; 3 uses
  %i.fib = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fic = load float, ptr %i.fib, align 16, !noalias !1073
  %i.fid = fsub float %i.fic, %i.fia              ; 2 uses
  %i.fie = sitofp i32 %i.z to float
  %i.fif = fmul float %i.fid, %i.fie
  %i.fig = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fih = load float, ptr %i.fig, align 8, !noalias !1073 ; 2 uses
  %i.fii = fdiv float %i.fif, %i.fih
  %i.fij = fadd float %i.fia, %i.fii              ; 2 uses
  %i.fik = getelementptr inbounds nuw i8, ptr %.0.i242, i64 16
  %i.fil = getelementptr inbounds nuw i8, ptr %.0.i242, i64 48
  %i.fim = fsub float 1.000000e+00, %i.fij
  %i.fin = insertelement <4 x float> poison, float %i.fij, i64 0
  %i.fio = shufflevector <4 x float> %i.fin, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fip = load <4 x float>, ptr %i.fil, align 16, !noalias !1074
  %i.fiq = fmul <4 x float> %i.fip, %i.fio
  %i.fir = insertelement <4 x float> poison, float %i.fim, i64 0
  %i.fis = shufflevector <4 x float> %i.fir, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fit = load <4 x float>, ptr %i.fik, align 16, !noalias !1075
  %i.fiu = fmul <4 x float> %i.fit, %i.fis
  %i.fiv = fadd <4 x float> %i.fiq, %i.fiu        ; 2 uses
  %i.fiw = getelementptr inbounds nuw i8, ptr %.0.i242, i64 32
  %i.fix = getelementptr inbounds nuw i8, ptr %.0.i242, i64 64
  %i.fiy = load <4 x float>, ptr %i.fix, align 16, !noalias !1076
  %i.fiz = fmul <4 x float> %i.fiy, %i.fio
  %i.fja = load <4 x float>, ptr %i.fiw, align 16, !noalias !1077
  %i.fjb = fmul <4 x float> %i.fja, %i.fis
  %i.fjc = fadd <4 x float> %i.fiz, %i.fjb        ; 2 uses
  br i1 %.not.i146, label %_ZNK6embree13InstanceArray5validEm.exit151, label %_ZNK6embree13InstanceArray9getObjectEm.exit246

_ZNK6embree13InstanceArray5validEm.exit151:       ; preds = %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit122
  %.phi.trans.insert5108 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.pre5109 = load ptr, ptr %.phi.trans.insert5108, align 16, !noalias !1078
  %.phi.trans.insert5110 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.pre5111 = load i64, ptr %.phi.trans.insert5110, align 16, !noalias !1078
  %.pre5190 = mul i64 %.pre5111, %2
  %.phi.trans.insert5212 = getelementptr inbounds nuw i8, ptr %.pre5109, i64 %.pre5190
  %.pre5213 = load i32, ptr %.phi.trans.insert5212, align 4, !noalias !1078 ; 2 uses
  %.not5044 = icmp eq i32 %.pre5213, -1
  br i1 %.not5044, label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit121, label %bb.co

bb.co:                                            ; preds = %_ZNK6embree13InstanceArray5validEm.exit151
  %i.fjd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.fje = load ptr, ptr %i.fjd, align 16, !noalias !1078
  %i.fjf = zext i32 %.pre5213 to i64
  %i.fjg = getelementptr inbounds nuw [8 x i8], ptr %i.fje, i64 %i.fjf
  %i.fjh = load ptr, ptr %i.fjg, align 8, !noalias !1078
  %.phi.trans.insert5112 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.pre5113 = load float, ptr %.phi.trans.insert5112, align 4, !noalias !1078 ; 2 uses
  %.phi.trans.insert5114 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre5115 = load float, ptr %.phi.trans.insert5114, align 16, !noalias !1078
  %.phi.trans.insert5116 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre5117 = load float, ptr %.phi.trans.insert5116, align 8, !noalias !1078
  %.pre5246 = fsub float %.pre5115, %.pre5113
  br label %_ZNK6embree13InstanceArray9getObjectEm.exit246

_ZNK6embree13InstanceArray9getObjectEm.exit246:   ; preds = %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit122, %bb.co
  %.pre-phi5247 = phi float [ %i.fid, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit122 ], [ %.pre5246, %bb.co ]
  %i.fji = phi float [ %i.fih, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit122 ], [ %.pre5117, %bb.co ]
  %i.fjj = phi float [ %i.fia, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit122 ], [ %.pre5113, %bb.co ]
  %.0.i245 = phi ptr [ %i.dyc, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit122 ], [ %i.fjh, %bb.co ] ; 4 uses
  %i.fjk = sitofp i32 %i.dyf to float
  %i.fjl = fmul float %.pre-phi5247, %i.fjk
  %i.fjm = fdiv float %i.fjl, %i.fji
  %i.fjn = fadd float %i.fjj, %i.fjm              ; 2 uses
  %i.fjo = getelementptr inbounds nuw i8, ptr %.0.i245, i64 16
  %i.fjp = getelementptr inbounds nuw i8, ptr %.0.i245, i64 48
  %i.fjq = fsub float 1.000000e+00, %i.fjn
  %i.fjr = insertelement <4 x float> poison, float %i.fjn, i64 0
  %i.fjs = shufflevector <4 x float> %i.fjr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fjt = load <4 x float>, ptr %i.fjp, align 16, !noalias !1079
  %i.fju = fmul <4 x float> %i.fjt, %i.fjs
  %i.fjv = insertelement <4 x float> poison, float %i.fjq, i64 0
  %i.fjw = shufflevector <4 x float> %i.fjv, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fjx = load <4 x float>, ptr %i.fjo, align 16, !noalias !1080
  %i.fjy = fmul <4 x float> %i.fjx, %i.fjw
  %i.fjz = fadd <4 x float> %i.fju, %i.fjy
  %i.fka = getelementptr inbounds nuw i8, ptr %.0.i245, i64 32
  %i.fkb = getelementptr inbounds nuw i8, ptr %.0.i245, i64 64
  %i.fkc = load <4 x float>, ptr %i.fkb, align 16, !noalias !1081
  %i.fkd = fmul <4 x float> %i.fkc, %i.fjs
  %i.fke = load <4 x float>, ptr %i.fka, align 16, !noalias !1082
  %i.fkf = fmul <4 x float> %i.fke, %i.fjw
  %i.fkg = fadd <4 x float> %i.fkd, %i.fkf
  %i.fkh = fmul <4 x float> %i.fgy, %i.fjz
  %i.fki = fmul <4 x float> %i.fgy, %i.fkg
  br label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit121

_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit121: ; preds = %_ZNK6embree13InstanceArray5validEm.exit148, %_ZNK6embree13InstanceArray5validEm.exit151, %_ZNK6embree13InstanceArray9getObjectEm.exit246
  %.sroa.4484.050125021 = phi <4 x float> [ %i.fjc, %_ZNK6embree13InstanceArray9getObjectEm.exit246 ], [ %i.fjc, %_ZNK6embree13InstanceArray5validEm.exit151 ], [ undef, %_ZNK6embree13InstanceArray5validEm.exit148 ]
  %.sroa.0483.050145019 = phi <4 x float> [ %i.fiv, %_ZNK6embree13InstanceArray9getObjectEm.exit246 ], [ %i.fiv, %_ZNK6embree13InstanceArray5validEm.exit151 ], [ undef, %_ZNK6embree13InstanceArray5validEm.exit148 ]
  %.sroa.4482.0 = phi <4 x float> [ %i.fki, %_ZNK6embree13InstanceArray9getObjectEm.exit246 ], [ splat (float +qnan), %_ZNK6embree13InstanceArray5validEm.exit151 ], [ splat (float +qnan), %_ZNK6embree13InstanceArray5validEm.exit148 ]
  %.sroa.0481.0 = phi <4 x float> [ %i.fkh, %_ZNK6embree13InstanceArray9getObjectEm.exit246 ], [ splat (float +qnan), %_ZNK6embree13InstanceArray5validEm.exit151 ], [ splat (float +qnan), %_ZNK6embree13InstanceArray5validEm.exit148 ]
  %i.fkj = fmul <4 x float> %i.fhb, %.sroa.0483.050145019
  %i.fkk = fadd <4 x float> %i.fkj, %.sroa.0481.0
  %i.fkl = fmul <4 x float> %i.fhb, %.sroa.4484.050125021
  %i.fkm = fadd <4 x float> %i.fkl, %.sroa.4482.0
  br label %_ZNK6embree13InstanceArray6boundsEmmmf.exit

_ZNK6embree13InstanceArray6boundsEmmmf.exit:      ; preds = %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit119, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit121
  %.sink5481 = phi <4 x float> [ %i.ewk, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit119 ], [ %i.fkk, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit121 ] ; 3 uses
  %.sink5477 = phi <4 x float> [ %i.etb, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit119 ], [ %i.fhj, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit121 ] ; 2 uses
  %.sink5475 = phi <4 x float> [ %i.etk, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit119 ], [ %i.fhm, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit121 ] ; 2 uses
  %.sink5473 = phi <4 x float> [ %i.est, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit119 ], [ %i.fhg, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit121 ] ; 2 uses
  %.sink5469 = phi <4 x float> [ %i.esn, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit119 ], [ %i.fhd, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit121 ] ; 2 uses
  %.sink5464 = phi <4 x float> [ %i.ewm, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit119 ], [ %i.fkm, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit121 ] ; 3 uses
  %i.fkn = phi ptr [ %i.etm, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit119 ], [ %i.dyc, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit121 ] ; 3 uses
  %i.fko = shufflevector <4 x float> %.sink5481, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fkp = shufflevector <4 x float> %.sink5481, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fkq = shufflevector <4 x float> %.sink5481, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fkr = fmul <4 x float> %.sink5477, %i.fkq
  %i.fks = fadd <4 x float> %.sink5475, %i.fkr    ; 2 uses
  %i.fkt = fmul <4 x float> %.sink5473, %i.fkp    ; 2 uses
  %i.fku = fadd <4 x float> %i.fkt, %i.fks        ; 2 uses
  %i.fkv = fmul <4 x float> %.sink5469, %i.fko    ; 4 uses
  %i.fkw = fadd <4 x float> %i.fkv, %i.fku        ; 2 uses
  %i.fkx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.fkw)
  %i.fky = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.fkw)
  %i.fkz = shufflevector <4 x float> %.sink5464, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fla = fmul <4 x float> %.sink5477, %i.fkz
  %i.flb = fadd <4 x float> %.sink5475, %i.fla    ; 2 uses
  %i.flc = fadd <4 x float> %i.fkt, %i.flb        ; 2 uses
  %i.fld = fadd <4 x float> %i.fkv, %i.flc        ; 2 uses
  %i.fle = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fkx, <4 x float> %i.fld)
  %i.flf = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fky, <4 x float> %i.fld)
  %i.flg = shufflevector <4 x float> %.sink5464, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.flh = fmul <4 x float> %.sink5473, %i.flg    ; 2 uses
  %i.fli = fadd <4 x float> %i.flh, %i.fks        ; 2 uses
  %i.flj = fadd <4 x float> %i.fkv, %i.fli        ; 2 uses
  %i.flk = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fle, <4 x float> %i.flj)
  %i.fll = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.flf, <4 x float> %i.flj)
  %i.flm = fadd <4 x float> %i.flh, %i.flb        ; 2 uses
  %i.fln = fadd <4 x float> %i.fkv, %i.flm        ; 2 uses
  %i.flo = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.flk, <4 x float> %i.fln)
  %i.flp = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fll, <4 x float> %i.fln)
  %i.flq = shufflevector <4 x float> %.sink5464, <4 x float> poison, <4 x i32> zeroinitializer
  %i.flr = fmul <4 x float> %.sink5469, %i.flq    ; 4 uses
  %i.fls = fadd <4 x float> %i.flr, %i.fku        ; 2 uses
  %i.flt = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.flo, <4 x float> %i.fls)
  %i.flu = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.flp, <4 x float> %i.fls)
  %i.flv = fadd <4 x float> %i.flr, %i.flc        ; 2 uses
  %i.flw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.flt, <4 x float> %i.flv)
  %i.flx = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.flu, <4 x float> %i.flv)
  %i.fly = fadd <4 x float> %i.flr, %i.fli        ; 2 uses
  %i.flz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.flw, <4 x float> %i.fly)
  %i.fma = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.flx, <4 x float> %i.fly)
  %i.fmb = fadd <4 x float> %i.flr, %i.flm        ; 2 uses
  %i.fmc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.flz, <4 x float> %i.fmb) ; 2 uses
  %i.fmd = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fma, <4 x float> %i.fmb) ; 2 uses
  %i.fme = add nsw i32 %i.ab, 1                   ; 3 uses
  %i.fmf = icmp slt i32 %i.fme, %i.af
  br i1 %i.fmf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK6embree13InstanceArray6boundsEmmmf.exit
  %i.fmg = fsub float %i.q, %i.o
  %.not.i131 = icmp eq ptr %i.fkn, null           ; 3 uses
  %i.fmh = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.fmi = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.fmj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.fmk = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.fml = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.fmm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fmn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fmo = zext nneg i32 %i.fme to i64
  br label %bb.cr

._crit_edge:                                      ; preds = %_ZNK6embree13InstanceArray6boundsEmm.exit, %_ZNK6embree13InstanceArray6boundsEmmmf.exit
  %.sroa.44374.0.lcssa = phi <4 x float> [ %.sroa.44374.1, %_ZNK6embree13InstanceArray6boundsEmmmf.exit ], [ %i.gjs, %_ZNK6embree13InstanceArray6boundsEmm.exit ] ; 5 uses
  %.sroa.0352.0.lcssa = phi <4 x float> [ %.sroa.0352.1, %_ZNK6embree13InstanceArray6boundsEmmmf.exit ], [ %i.gjq, %_ZNK6embree13InstanceArray6boundsEmm.exit ] ; 5 uses
  %.sroa.44.0.lcssa = phi <4 x float> [ %i.fmd, %_ZNK6embree13InstanceArray6boundsEmmmf.exit ], [ %i.gjt, %_ZNK6embree13InstanceArray6boundsEmm.exit ] ; 5 uses
  %.sroa.0309.0.lcssa = phi <4 x float> [ %i.fmc, %_ZNK6embree13InstanceArray6boundsEmmmf.exit ], [ %i.gjr, %_ZNK6embree13InstanceArray6boundsEmm.exit ] ; 5 uses
  %i.fmp = tail call noundef i32 @llvm.smax.i32(i32 %i.fme, i32 1) ; 5 uses
  %i.fmq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.fmr = load float, ptr %i.fmq, align 8        ; 3 uses
  %i.fms = fptosi float %i.fmr to i32
  %i.fmt = tail call noundef i32 @llvm.smin.i32(i32 %i.fms, i32 %i.af) ; 2 uses
  %.not5070 = icmp sgt i32 %i.fmp, %i.fmt
  br i1 %.not5070, label %._crit_edge5076, label %.lr.ph5075

.lr.ph5075:                                       ; preds = %._crit_edge
  %i.fmu = fsub float %i.q, %i.o
  %i.fmv = fcmp ogt float %i.cim, 0.000000e+00
  %i.fmw = fcmp ogt float %i.dyh, 0.000000e+00
  %i.fmx = select i1 %i.fmw, float %i.dyh, float 0.000000e+00
  %i.fmy = fsub float 1.000000e+00, %i.fmx        ; 2 uses
  %i.fmz = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.fna = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.fnb = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  %i.fnc = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.fnd = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  %i.fne = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.fnf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.fng = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fnh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.fni = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.fnj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fnk = zext nneg i32 %i.fmp to i64            ; 2 uses
  %i.fnl = add nsw i64 %i.fnk, -1                 ; 2 uses
  %i.fnm = trunc nuw nsw i64 %i.fnl to i32
  %i.fnn = uitofp nneg i32 %i.fnm to float        ; 2 uses
  %i.fno = uitofp nneg i32 %i.fmp to float        ; 2 uses
  %i.fnp = insertelement <2 x float> poison, float %i.fnn, i64 0
  %i.fnq = insertelement <2 x float> %i.fnp, float %i.fno, i64 1
  %i.fnr = insertelement <2 x float> poison, float %5, i64 0
  %i.fns = shufflevector <2 x float> %i.fnr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fnt = fdiv <2 x float> %i.fnq, %i.fns
  %i.fnu = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fnv = fsub <2 x float> %i.fnt, %i.fnu
  %i.fnw = insertelement <2 x float> poison, float %i.fmu, i64 0
  %i.fnx = shufflevector <2 x float> %i.fnw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fny = fdiv <2 x float> %i.fnv, %i.fnx        ; 3 uses
  %i.fnz = select i1 %i.fmv, float %i.cim, float 0.000000e+00
  %i.foa = icmp eq i32 %i.fmp, %i.fmt
  %i.fob = select i1 %i.foa, float %i.fmy, float 1.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.foc = load ptr, ptr %i.fmz, align 8, !noalias !1083 ; 3 uses
  %.not.i140.peel = icmp eq ptr %i.foc, null      ; 2 uses
  br i1 %.not.i140.peel, label %_ZNK6embree13InstanceArray5validEm.exit142.peel, label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124.peel

_ZNK6embree13InstanceArray5validEm.exit142.peel:  ; preds = %.lr.ph5075
  %i.fod = load ptr, ptr %i.fna, align 16, !noalias !1083
  %i.foe = load i64, ptr %i.fnb, align 16, !noalias !1083
  %i.fof = mul i64 %i.foe, %2
  %i.fog = getelementptr inbounds nuw i8, ptr %i.fod, i64 %i.fof
  %i.foh = load i32, ptr %i.fog, align 4, !noalias !1083 ; 2 uses
  %.not5047.peel = icmp eq i32 %i.foh, -1
  br i1 %.not5047.peel, label %_ZNK6embree13InstanceArray5validEm.exit145.peel.thread, label %bb.cp

bb.cp:                                            ; preds = %_ZNK6embree13InstanceArray5validEm.exit142.peel
  %i.foi = load ptr, ptr %i.fnc, align 16, !noalias !1083
  %i.foj = zext i32 %i.foh to i64
  %i.fok = getelementptr inbounds nuw [8 x i8], ptr %i.foi, i64 %i.foj
  %i.fol = load ptr, ptr %i.fok, align 8, !noalias !1083
  br label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124.peel

_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124.peel: ; preds = %bb.cp, %.lr.ph5075
  %.0.i254.peel = phi ptr [ %i.fol, %bb.cp ], [ %i.foc, %.lr.ph5075 ] ; 4 uses
  %i.fom = load float, ptr %i.fnd, align 4, !noalias !1083 ; 3 uses
  %i.fon = load float, ptr %i.fne, align 16, !noalias !1083
  %i.foo = fsub float %i.fon, %i.fom              ; 2 uses
  %i.fop = fmul float %i.foo, %i.fnn
  %i.foq = fdiv float %i.fop, %i.fmr
  %i.for = fadd float %i.fom, %i.foq              ; 2 uses
  %i.fos = getelementptr inbounds nuw i8, ptr %.0.i254.peel, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %i.fot = getelementptr inbounds nuw i8, ptr %.0.i254.peel, i64 48
  %i.fou = fsub float 1.000000e+00, %i.for
  %i.fov = insertelement <4 x float> poison, float %i.for, i64 0
  %i.fow = shufflevector <4 x float> %i.fov, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fox = load <4 x float>, ptr %i.fot, align 16, !noalias !1085
  %i.foy = fmul <4 x float> %i.fox, %i.fow
  %i.foz = insertelement <4 x float> poison, float %i.fou, i64 0
  %i.fpa = shufflevector <4 x float> %i.foz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fpb = load <4 x float>, ptr %i.fos, align 16, !noalias !1086
  %i.fpc = fmul <4 x float> %i.fpb, %i.fpa
  %i.fpd = fadd <4 x float> %i.foy, %i.fpc
  %i.fpe = getelementptr inbounds nuw i8, ptr %.0.i254.peel, i64 32
  %i.fpf = getelementptr inbounds nuw i8, ptr %.0.i254.peel, i64 64
  %i.fpg = load <4 x float>, ptr %i.fpf, align 16, !noalias !1087
  %i.fph = fmul <4 x float> %i.fpg, %i.fow
  %i.fpi = load <4 x float>, ptr %i.fpe, align 16, !noalias !1088
  %i.fpj = fmul <4 x float> %i.fpi, %i.fpa
  %i.fpk = fadd <4 x float> %i.fph, %i.fpj
  store <4 x float> %i.fpd, ptr %12, align 16, !alias.scope !1084
  store <4 x float> %i.fpk, ptr %i.fnf, align 16, !alias.scope !1084
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  br i1 %.not.i140.peel, label %_ZNK6embree13InstanceArray5validEm.exit145.peel, label %_ZNK6embree13InstanceArray9getObjectEm.exit258.peel

_ZNK6embree13InstanceArray5validEm.exit145.peel.thread: ; preds = %_ZNK6embree13InstanceArray5validEm.exit142.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  br label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel

_ZNK6embree13InstanceArray5validEm.exit145.peel:  ; preds = %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124.peel
  %.pre5128 = load ptr, ptr %i.fna, align 16, !noalias !1089
  %.pre5129 = load i64, ptr %i.fnb, align 16, !noalias !1089
  %.pre5194 = mul i64 %.pre5129, %2
  %.phi.trans.insert5216 = getelementptr inbounds nuw i8, ptr %.pre5128, i64 %.pre5194
  %.pre5217 = load i32, ptr %.phi.trans.insert5216, align 4, !noalias !1089 ; 2 uses
  %.not5048.peel = icmp eq i32 %.pre5217, -1
  br i1 %.not5048.peel, label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel, label %bb.cq

bb.cq:                                            ; preds = %_ZNK6embree13InstanceArray5validEm.exit145.peel
  %i.fpl = load ptr, ptr %i.fnc, align 16, !noalias !1089
  %i.fpm = zext i32 %.pre5217 to i64
  %i.fpn = getelementptr inbounds nuw [8 x i8], ptr %i.fpl, i64 %i.fpm
  %i.fpo = load ptr, ptr %i.fpn, align 8, !noalias !1089
  %.pre5130 = load float, ptr %i.fnd, align 4, !noalias !1089 ; 2 uses
  %.pre5131 = load float, ptr %i.fne, align 16, !noalias !1089
  %.pre5242 = fsub float %.pre5131, %.pre5130
  br label %_ZNK6embree13InstanceArray9getObjectEm.exit258.peel

_ZNK6embree13InstanceArray9getObjectEm.exit258.peel: ; preds = %bb.cq, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124.peel
  %.pre-phi5243 = phi float [ %.pre5242, %bb.cq ], [ %i.foo, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124.peel ]
  %i.fpp = phi float [ %.pre5130, %bb.cq ], [ %i.fom, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124.peel ]
  %.0.i257.peel = phi ptr [ %i.fpo, %bb.cq ], [ %i.foc, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124.peel ] ; 4 uses
  %i.fpq = fmul float %.pre-phi5243, %i.fno
  %i.fpr = fdiv float %i.fpq, %i.fmr
  %i.fps = fadd float %i.fpp, %i.fpr              ; 2 uses
  %i.fpt = getelementptr inbounds nuw i8, ptr %.0.i257.peel, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  %i.fpu = getelementptr inbounds nuw i8, ptr %.0.i257.peel, i64 48
  %i.fpv = fsub float 1.000000e+00, %i.fps
  %i.fpw = insertelement <4 x float> poison, float %i.fps, i64 0
  %i.fpx = shufflevector <4 x float> %i.fpw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fpy = load <4 x float>, ptr %i.fpu, align 16, !noalias !1091
  %i.fpz = fmul <4 x float> %i.fpy, %i.fpx
  %i.fqa = insertelement <4 x float> poison, float %i.fpv, i64 0
  %i.fqb = shufflevector <4 x float> %i.fqa, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fqc = load <4 x float>, ptr %i.fpt, align 16, !noalias !1092
  %i.fqd = fmul <4 x float> %i.fqc, %i.fqb
  %i.fqe = fadd <4 x float> %i.fpz, %i.fqd
  %i.fqf = getelementptr inbounds nuw i8, ptr %.0.i257.peel, i64 32
  %i.fqg = getelementptr inbounds nuw i8, ptr %.0.i257.peel, i64 64
  %i.fqh = load <4 x float>, ptr %i.fqg, align 16, !noalias !1093
  %i.fqi = fmul <4 x float> %i.fqh, %i.fpx
  %i.fqj = load <4 x float>, ptr %i.fqf, align 16, !noalias !1094
  %i.fqk = fmul <4 x float> %i.fqj, %i.fqb
  %i.fql = fadd <4 x float> %i.fqi, %i.fqk
  store <4 x float> %i.fqe, ptr %13, align 16, !alias.scope !1090
  store <4 x float> %i.fql, ptr %i.fng, align 16, !alias.scope !1090
  br label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel

_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel: ; preds = %_ZNK6embree13InstanceArray5validEm.exit145.peel.thread, %_ZNK6embree13InstanceArray9getObjectEm.exit258.peel, %_ZNK6embree13InstanceArray5validEm.exit145.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.fqm = fsub <2 x float> splat (float 1.000000e+00), %i.fny ; 2 uses
  %i.fqn = shufflevector <2 x float> %i.fny, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fqo = fmul <4 x float> %.sroa.0309.0.lcssa, %i.fqn
  %i.fqp = shufflevector <2 x float> %i.fqm, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fqq = fmul <4 x float> %.sroa.0352.0.lcssa, %i.fqp
  %i.fqr = fadd <4 x float> %i.fqo, %i.fqq
  %i.fqs = fmul <4 x float> %.sroa.44.0.lcssa, %i.fqn
  %i.fqt = fmul <4 x float> %.sroa.44374.0.lcssa, %i.fqp
  %i.fqu = fadd <4 x float> %i.fqs, %i.fqt
  store <4 x float> %i.fqr, ptr %14, align 16
  store <4 x float> %i.fqu, ptr %i.fnh, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.fqv = shufflevector <2 x float> %i.fny, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.fqw = fmul <4 x float> %.sroa.0309.0.lcssa, %i.fqv
  %i.fqx = shufflevector <2 x float> %i.fqm, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.fqy = fmul <4 x float> %.sroa.0352.0.lcssa, %i.fqx
  %i.fqz = fadd <4 x float> %i.fqw, %i.fqy
  %i.fra = fmul <4 x float> %.sroa.44.0.lcssa, %i.fqv
  %i.frb = fmul <4 x float> %.sroa.44374.0.lcssa, %i.fqx
  %i.frc = fadd <4 x float> %i.fra, %i.frb
  store <4 x float> %i.fqz, ptr %15, align 16
  store <4 x float> %i.frc, ptr %i.fni, align 16
  call void @_ZNK6embree13InstanceArray12boundSegmentEmmRKNS_4BBoxINS_6Vec3faEEES5_S5_S5_ff(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BBox.13") align 16 %11, ptr noundef nonnull align 16 dereferenceable(200) %1, i64 noundef %2, i64 noundef %i.fnl, ptr noundef nonnull align 16 dereferenceable(32) %12, ptr noundef nonnull align 16 dereferenceable(32) %13, ptr noundef nonnull align 16 dereferenceable(32) %14, ptr noundef nonnull align 16 dereferenceable(32) %15, float noundef %i.fnz, float noundef %i.fob)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.frd = load <4 x float>, ptr %11, align 16, !noalias !1095
  %i.fre = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> %i.frd) ; 2 uses
  %i.frf = load <4 x float>, ptr %i.fnj, align 16, !noalias !1096
  %i.frg = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> %i.frf) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.frh = load float, ptr %i.fmq, align 8        ; 2 uses
  %i.fri = fptosi float %i.frh to i32
  %i.frj = tail call noundef i32 @llvm.smin.i32(i32 %i.fri, i32 %i.af) ; 2 uses
  %.not.not.peel = icmp slt i32 %i.fmp, %i.frj
  br i1 %.not.not.peel, label %.peel.next, label %._crit_edge5076

bb.cr:                                            ; preds = %.lr.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit
  %indvars.iv = phi i64 [ %i.fmo, %.lr.ph ], [ %indvars.iv.next, %_ZNK6embree13InstanceArray6boundsEmm.exit ] ; 3 uses
  %.sroa.0309.05065 = phi <4 x float> [ %i.fmc, %.lr.ph ], [ %i.gjr, %_ZNK6embree13InstanceArray6boundsEmm.exit ] ; 2 uses
  %.sroa.44.05064 = phi <4 x float> [ %i.fmd, %.lr.ph ], [ %i.gjt, %_ZNK6embree13InstanceArray6boundsEmm.exit ] ; 2 uses
  %.sroa.0352.05063 = phi <4 x float> [ %.sroa.0352.1, %.lr.ph ], [ %i.gjq, %_ZNK6embree13InstanceArray6boundsEmm.exit ] ; 2 uses
  %.sroa.44374.05062 = phi <4 x float> [ %.sroa.44374.1, %.lr.ph ], [ %i.gjs, %_ZNK6embree13InstanceArray6boundsEmm.exit ] ; 2 uses
  %i.frk = trunc nsw i64 %indvars.iv to i32
  %i.frl = sitofp i32 %i.frk to float             ; 2 uses
  %i.frm = fdiv float %i.frl, %5
  %i.frn = fsub float %i.frm, %i.o
  %i.fro = fdiv float %i.frn, %i.fmg              ; 2 uses
  %i.frp = fsub float 1.000000e+00, %i.fro
  %i.frq = insertelement <4 x float> poison, float %i.fro, i64 0
  %i.frr = shufflevector <4 x float> %i.frq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.frs = fmul <4 x float> %.sroa.0309.05065, %i.frr
  %i.frt = insertelement <4 x float> poison, float %i.frp, i64 0
  %i.fru = shufflevector <4 x float> %i.frt, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.frv = fmul <4 x float> %.sroa.0352.05063, %i.fru
  %i.frw = fadd <4 x float> %i.frs, %i.frv
  %i.frx = fmul <4 x float> %.sroa.44.05064, %i.frr
  %i.fry = fmul <4 x float> %.sroa.44374.05062, %i.fru
  %i.frz = fadd <4 x float> %i.frx, %i.fry
  br i1 %.not.i131, label %_ZNK6embree13InstanceArray5validEm.exit133, label %_ZNK6embree13InstanceArray5validEm.exit133.thread

_ZNK6embree13InstanceArray5validEm.exit133:       ; preds = %bb.cr
  %i.fsa = load ptr, ptr %i.fmh, align 16, !noalias !1097
  %i.fsb = load i64, ptr %i.fmi, align 16, !noalias !1097
  %i.fsc = mul i64 %i.fsb, %2
  %i.fsd = getelementptr inbounds nuw i8, ptr %i.fsa, i64 %i.fsc
  %i.fse = load i32, ptr %i.fsd, align 4, !noalias !1097
  %.not5049 = icmp eq i32 %i.fse, -1
  br i1 %.not5049, label %_ZNK6embree13InstanceArray6boundsEmm.exit, label %_ZNK6embree13InstanceArray5validEm.exit133.thread

_ZNK6embree13InstanceArray5validEm.exit133.thread: ; preds = %bb.cr, %_ZNK6embree13InstanceArray5validEm.exit133
  %i.fsf = load i32, ptr %i.cin, align 4, !noalias !1097
  %i.fsg = and i32 %i.fsf, 65280
  %i.fsh = icmp eq i32 %i.fsg, 256
  %i.fsi = load ptr, ptr %i.fmj, align 8, !noalias !1097
  %i.fsj = getelementptr inbounds nuw [56 x i8], ptr %i.fsi, i64 %indvars.iv ; 17 uses
  %i.fsk = getelementptr inbounds nuw i8, ptr %i.fsj, i64 32
  %i.fsl = load i32, ptr %i.fsk, align 8, !noalias !1097 ; 2 uses
  br i1 %i.fsh, label %bb.cs, label %bb.cx, !prof !8

bb.cs:                                            ; preds = %_ZNK6embree13InstanceArray5validEm.exit133.thread
  switch i32 %i.fsl, label %_ZNK6embree13InstanceArray3l2wEmm.exit9.i [
    i32 37444, label %bb.ct
    i32 45057, label %bb.cu
    i32 37428, label %bb.cv
    i32 37172, label %bb.cw
  ]

bb.ct:                                            ; preds = %bb.cs
  %i.fsm = load ptr, ptr %i.fsj, align 8, !noalias !1098
  %i.fsn = getelementptr inbounds nuw i8, ptr %i.fsj, i64 16
  %i.fso = load i64, ptr %i.fsn, align 8, !noalias !1098
  %i.fsp = mul i64 %i.fso, %2
  %i.fsq = getelementptr inbounds nuw i8, ptr %i.fsm, i64 %i.fsp ; 4 uses
  %i.fsr = load <4 x float>, ptr %i.fsq, align 16, !noalias !1097
  %i.fss = getelementptr inbounds nuw i8, ptr %i.fsq, i64 16
  %i.fst = load <4 x float>, ptr %i.fss, align 16, !noalias !1097
  %i.fsu = getelementptr inbounds nuw i8, ptr %i.fsq, i64 32
  %i.fsv = load <4 x float>, ptr %i.fsu, align 16, !noalias !1097
  %i.fsw = getelementptr inbounds nuw i8, ptr %i.fsq, i64 48
  %i.fsx = load <4 x float>, ptr %i.fsw, align 16, !noalias !1097
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit9.i

bb.cu:                                            ; preds = %bb.cs
  %i.fsy = load ptr, ptr %i.fsj, align 8, !noalias !1097
  %i.fsz = getelementptr inbounds nuw i8, ptr %i.fsj, i64 16
  %i.fta = load i64, ptr %i.fsz, align 8, !noalias !1097
  %i.ftb = mul i64 %i.fta, %2
  %i.ftc = getelementptr inbounds nuw i8, ptr %i.fsy, i64 %i.ftb ; 12 uses
  %i.ftd = load float, ptr %i.ftc, align 16, !noalias !1097
  %.sroa.01881.0.vec.insert = insertelement <4 x float> poison, float %i.ftd, i64 0
  %i.fte = getelementptr inbounds nuw i8, ptr %i.ftc, i64 4
  %i.ftf = load float, ptr %i.fte, align 4, !noalias !1097
  %i.ftg = getelementptr inbounds nuw i8, ptr %i.ftc, i64 8
  %i.fth = load float, ptr %i.ftg, align 8, !noalias !1097
  %i.fti = getelementptr inbounds nuw i8, ptr %i.ftc, i64 12
  %i.ftj = load float, ptr %i.fti, align 4, !noalias !1097
  %i.ftk = insertelement <4 x float> poison, float %i.ftj, i64 0
  %.sroa.111884.16.vec.insert = insertelement <4 x float> %i.ftk, float %i.ftf, i64 1
  %i.ftl = getelementptr inbounds nuw i8, ptr %i.ftc, i64 16
  %i.ftm = load <2 x float>, ptr %i.ftl, align 16, !noalias !1097
  %i.ftn = shufflevector <2 x float> %i.ftm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.201887.36.vec.insert = insertelement <4 x float> %i.ftn, float %i.fth, i64 2
  %i.fto = getelementptr inbounds nuw i8, ptr %i.ftc, i64 52
  %i.ftp = load <2 x float>, ptr %i.fto, align 4, !noalias !1097
  %i.ftq = shufflevector <2 x float> %i.ftp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.01881.8.vec.insert5597 = shufflevector <4 x float> %.sroa.01881.0.vec.insert, <4 x float> %i.ftq, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ftr = getelementptr inbounds nuw i8, ptr %i.ftc, i64 60
  %i.fts = load float, ptr %i.ftr, align 4, !noalias !1097
  %.sroa.111884.24.vec.insert = insertelement <4 x float> %.sroa.111884.16.vec.insert, float %i.fts, i64 2
  %i.ftt = getelementptr inbounds nuw i8, ptr %i.ftc, i64 24
  %i.ftu = getelementptr inbounds nuw i8, ptr %i.ftc, i64 36
  %i.ftv = getelementptr inbounds nuw i8, ptr %i.ftc, i64 40
  %i.ftw = getelementptr inbounds nuw i8, ptr %i.ftc, i64 44
  %i.ftx = getelementptr inbounds nuw i8, ptr %i.ftc, i64 48
  %i.fty = load float, ptr %i.ftx, align 16, !noalias !1097 ; 3 uses
  %i.ftz = load float, ptr %i.ftu, align 4, !noalias !1097 ; 2 uses
  %i.fua = load <4 x float>, ptr %i.ftt, align 8, !noalias !1097
  %i.fub = load float, ptr %i.ftv, align 8, !noalias !1097 ; 3 uses
  %i.fuc = load float, ptr %i.ftw, align 4, !noalias !1097 ; 3 uses
  %i.fud = fmul float %i.fub, %i.fub
  %i.fue = tail call float @llvm.fmuladd.f32(float %i.ftz, float %i.ftz, float %i.fud)
  %i.fuf = tail call float @llvm.fmuladd.f32(float %i.fuc, float %i.fuc, float %i.fue)
  %i.fug = tail call float @llvm.fmuladd.f32(float %i.fty, float %i.fty, float %i.fuf) ; 2 uses
  %i.fuh = insertelement <4 x float> poison, float %i.fug, i64 0
  %i.fui = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.fuh) ; 3 uses
  %i.fuj = extractelement <4 x float> %i.fui, i64 0 ; 2 uses
  %i.fuk = fmul float %i.fuj, 1.500000e+00
  %i.ful = fmul float %i.fug, 5.000000e-01
  %i.fum = fmul float %i.fuj, %i.ful
  %foldExtExtBinop5662 = fmul <4 x float> %i.fui, %i.fui
  %i.fun = extractelement <4 x float> %foldExtExtBinop5662, i64 0
  %i.fuo = fmul float %i.fun, %i.fum
  %i.fup = fsub float %i.fuk, %i.fuo              ; 4 uses
  %i.fuq = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.fup, i64 3
  %i.fur = fmul <4 x float> %i.fua, %i.fuq
  %i.fus = fmul float %i.fub, %i.fup
  %i.fut = fmul float %i.fuc, %i.fup
  %i.fuu = fmul float %i.fty, %i.fup
  %.sroa.01881.12.vec.insert = insertelement <4 x float> %.sroa.01881.8.vec.insert5597, float %i.fus, i64 3
  %.sroa.111884.28.vec.insert = insertelement <4 x float> %.sroa.111884.24.vec.insert, float %i.fut, i64 3
  %.sroa.201887.44.vec.insert = insertelement <4 x float> %.sroa.201887.36.vec.insert, float %i.fuu, i64 3
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit9.i

bb.cv:                                            ; preds = %bb.cs
  %i.fuv = load ptr, ptr %i.fsj, align 8, !noalias !1098
  %i.fuw = getelementptr inbounds nuw i8, ptr %i.fsj, i64 16
  %i.fux = load i64, ptr %i.fuw, align 8, !noalias !1098
  %i.fuy = mul i64 %i.fux, %2
  %i.fuz = getelementptr inbounds nuw i8, ptr %i.fuv, i64 %i.fuy ; 8 uses
  %i.fva = getelementptr inbounds nuw i8, ptr %i.fuz, i64 4
  %i.fvb = load <2 x float>, ptr %i.fva, align 4, !noalias !1097
  %i.fvc = load float, ptr %i.fuz, align 4, !noalias !1097
  %i.fvd = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fvc, i64 0
  %i.fve = shufflevector <2 x float> %i.fvb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fvf = shufflevector <4 x float> %i.fvd, <4 x float> %i.fve, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.fvg = getelementptr inbounds nuw i8, ptr %i.fuz, i64 12
  %i.fvh = getelementptr inbounds nuw i8, ptr %i.fuz, i64 16
  %i.fvi = load <2 x float>, ptr %i.fvh, align 4, !noalias !1097
  %i.fvj = load float, ptr %i.fvg, align 4, !noalias !1097
  %i.fvk = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fvj, i64 0
  %i.fvl = shufflevector <2 x float> %i.fvi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fvm = shufflevector <4 x float> %i.fvk, <4 x float> %i.fvl, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.fvn = getelementptr inbounds nuw i8, ptr %i.fuz, i64 24
  %i.fvo = getelementptr inbounds nuw i8, ptr %i.fuz, i64 28
  %i.fvp = load <2 x float>, ptr %i.fvo, align 4, !noalias !1097
  %i.fvq = load float, ptr %i.fvn, align 4, !noalias !1097
  %i.fvr = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fvq, i64 0
  %i.fvs = shufflevector <2 x float> %i.fvp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fvt = shufflevector <4 x float> %i.fvr, <4 x float> %i.fvs, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.fvu = getelementptr inbounds nuw i8, ptr %i.fuz, i64 36
  %i.fvv = getelementptr inbounds nuw i8, ptr %i.fuz, i64 40
  %i.fvw = load <2 x float>, ptr %i.fvv, align 4, !noalias !1097
  %i.fvx = load float, ptr %i.fvu, align 4, !noalias !1097
  %i.fvy = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fvx, i64 0
  %i.fvz = shufflevector <2 x float> %i.fvw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fwa = shufflevector <4 x float> %i.fvy, <4 x float> %i.fvz, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit9.i

bb.cw:                                            ; preds = %bb.cs
  %i.fwb = load ptr, ptr %i.fsj, align 8, !noalias !1098
  %i.fwc = getelementptr inbounds nuw i8, ptr %i.fsj, i64 16
  %i.fwd = load i64, ptr %i.fwc, align 8, !noalias !1098
  %i.fwe = mul i64 %i.fwd, %2
  %i.fwf = getelementptr inbounds nuw i8, ptr %i.fwb, i64 %i.fwe ; 12 uses
  %i.fwg = load float, ptr %i.fwf, align 4, !noalias !1098
  %i.fwh = getelementptr inbounds nuw i8, ptr %i.fwf, i64 4
  %i.fwi = load float, ptr %i.fwh, align 4, !noalias !1098
  %i.fwj = getelementptr inbounds nuw i8, ptr %i.fwf, i64 8
  %i.fwk = load float, ptr %i.fwj, align 4, !noalias !1098
  %i.fwl = getelementptr inbounds nuw i8, ptr %i.fwf, i64 12
  %i.fwm = load float, ptr %i.fwl, align 4, !noalias !1098
  %i.fwn = getelementptr inbounds nuw i8, ptr %i.fwf, i64 16
  %i.fwo = load float, ptr %i.fwn, align 4, !noalias !1098
  %i.fwp = getelementptr inbounds nuw i8, ptr %i.fwf, i64 20
  %i.fwq = load float, ptr %i.fwp, align 4, !noalias !1098
  %i.fwr = getelementptr inbounds nuw i8, ptr %i.fwf, i64 24
  %i.fws = load float, ptr %i.fwr, align 4, !noalias !1098
  %i.fwt = getelementptr inbounds nuw i8, ptr %i.fwf, i64 28
  %i.fwu = load float, ptr %i.fwt, align 4, !noalias !1098
  %i.fwv = getelementptr inbounds nuw i8, ptr %i.fwf, i64 32
  %i.fww = load float, ptr %i.fwv, align 4, !noalias !1098
  %i.fwx = getelementptr inbounds nuw i8, ptr %i.fwf, i64 36
  %i.fwy = load float, ptr %i.fwx, align 4, !noalias !1098
  %i.fwz = getelementptr inbounds nuw i8, ptr %i.fwf, i64 40
  %i.fxa = load float, ptr %i.fwz, align 4, !noalias !1098
  %i.fxb = getelementptr inbounds nuw i8, ptr %i.fwf, i64 44
  %i.fxc = load float, ptr %i.fxb, align 4, !noalias !1098
  %i.fxd = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fwg, i64 0
  %i.fxe = insertelement <4 x float> %i.fxd, float %i.fwo, i64 1
  %i.fxf = insertelement <4 x float> %i.fxe, float %i.fww, i64 2
  %i.fxg = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fwi, i64 0
  %i.fxh = insertelement <4 x float> %i.fxg, float %i.fwq, i64 1
  %i.fxi = insertelement <4 x float> %i.fxh, float %i.fwy, i64 2
  %i.fxj = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fwk, i64 0
  %i.fxk = insertelement <4 x float> %i.fxj, float %i.fws, i64 1
end_hunk_0
begin_hunk_1_@_ZNK6embree13InstanceArray15nonlinearBoundsEmRKNS_4BBoxIfEES4_f:bb.a
  %i.gen = load <2 x float>, ptr %i.gem, align 4, !noalias !1097
  %i.geo = load float, ptr %i.gel, align 4, !noalias !1097
  %i.gep = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.geo, i64 0
  %i.geq = shufflevector <2 x float> %i.gen, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ger = shufflevector <4 x float> %i.gep, <4 x float> %i.geq, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ges = getelementptr inbounds nuw i8, ptr %i.gdx, i64 36
  %i.get = getelementptr inbounds nuw i8, ptr %i.gdx, i64 40
  %i.geu = load <2 x float>, ptr %i.get, align 4, !noalias !1097
  %i.gev = load float, ptr %i.ges, align 4, !noalias !1097
  %i.gew = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.gev, i64 0
  %i.gex = shufflevector <2 x float> %i.geu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gey = shufflevector <4 x float> %i.gew, <4 x float> %i.gex, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit.i127

bb.db:                                            ; preds = %bb.cx
  %i.gez = load ptr, ptr %i.fsj, align 8, !noalias !1100
  %i.gfa = getelementptr inbounds nuw i8, ptr %i.fsj, i64 16
  %i.gfb = load i64, ptr %i.gfa, align 8, !noalias !1100
  %i.gfc = mul i64 %i.gfb, %2
  %i.gfd = getelementptr inbounds nuw i8, ptr %i.gez, i64 %i.gfc ; 12 uses
  %i.gfe = load float, ptr %i.gfd, align 4, !noalias !1100
  %i.gff = getelementptr inbounds nuw i8, ptr %i.gfd, i64 4
  %i.gfg = load float, ptr %i.gff, align 4, !noalias !1100
  %i.gfh = getelementptr inbounds nuw i8, ptr %i.gfd, i64 8
  %i.gfi = load float, ptr %i.gfh, align 4, !noalias !1100
  %i.gfj = getelementptr inbounds nuw i8, ptr %i.gfd, i64 12
  %i.gfk = load float, ptr %i.gfj, align 4, !noalias !1100
  %i.gfl = getelementptr inbounds nuw i8, ptr %i.gfd, i64 16
  %i.gfm = load float, ptr %i.gfl, align 4, !noalias !1100
  %i.gfn = getelementptr inbounds nuw i8, ptr %i.gfd, i64 20
  %i.gfo = load float, ptr %i.gfn, align 4, !noalias !1100
  %i.gfp = getelementptr inbounds nuw i8, ptr %i.gfd, i64 24
  %i.gfq = load float, ptr %i.gfp, align 4, !noalias !1100
  %i.gfr = getelementptr inbounds nuw i8, ptr %i.gfd, i64 28
  %i.gfs = load float, ptr %i.gfr, align 4, !noalias !1100
  %i.gft = getelementptr inbounds nuw i8, ptr %i.gfd, i64 32
  %i.gfu = load float, ptr %i.gft, align 4, !noalias !1100
  %i.gfv = getelementptr inbounds nuw i8, ptr %i.gfd, i64 36
  %i.gfw = load float, ptr %i.gfv, align 4, !noalias !1100
  %i.gfx = getelementptr inbounds nuw i8, ptr %i.gfd, i64 40
  %i.gfy = load float, ptr %i.gfx, align 4, !noalias !1100
  %i.gfz = getelementptr inbounds nuw i8, ptr %i.gfd, i64 44
  %i.gga = load float, ptr %i.gfz, align 4, !noalias !1100
  %i.ggb = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.gfe, i64 0
  %i.ggc = insertelement <4 x float> %i.ggb, float %i.gfm, i64 1
  %i.ggd = insertelement <4 x float> %i.ggc, float %i.gfu, i64 2
  %i.gge = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.gfg, i64 0
  %i.ggf = insertelement <4 x float> %i.gge, float %i.gfo, i64 1
  %i.ggg = insertelement <4 x float> %i.ggf, float %i.gfw, i64 2
  %i.ggh = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.gfi, i64 0
  %i.ggi = insertelement <4 x float> %i.ggh, float %i.gfq, i64 1
  %i.ggj = insertelement <4 x float> %i.ggi, float %i.gfy, i64 2
  %i.ggk = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.gfk, i64 0
  %i.ggl = insertelement <4 x float> %i.ggk, float %i.gfs, i64 1
  %i.ggm = insertelement <4 x float> %i.ggl, float %i.gga, i64 2
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit.i127

_ZNK6embree13InstanceArray3l2wEmm.exit.i127:      ; preds = %bb.cx, %bb.db, %bb.da, %bb.cz, %bb.cy
  %.sroa.01803.0 = phi <4 x float> [ %i.gbp, %bb.cy ], [ %.sroa.01803.12.vec.insert, %bb.cz ], [ %i.ged, %bb.da ], [ %i.ggd, %bb.db ], [ undef, %bb.cx ] ; 3 uses
  %.sroa.101805.0 = phi <4 x float> [ %i.gbr, %bb.cy ], [ %.sroa.101805.28.vec.insert, %bb.cz ], [ %i.gek, %bb.da ], [ %i.ggg, %bb.db ], [ undef, %bb.cx ] ; 3 uses
  %.sroa.181807.0 = phi <4 x float> [ %i.gbt, %bb.cy ], [ %.sroa.181807.44.vec.insert, %bb.cz ], [ %i.ger, %bb.da ], [ %i.ggj, %bb.db ], [ undef, %bb.cx ] ; 3 uses
  %.sroa.261809.0 = phi <4 x float> [ %i.gbv, %bb.cy ], [ %i.gdp, %bb.cz ], [ %i.gey, %bb.da ], [ %i.ggm, %bb.db ], [ undef, %bb.cx ] ; 3 uses
  br i1 %.not.i131, label %_ZNK6embree13InstanceArray5validEm.exit130, label %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split

_ZNK6embree13InstanceArray5validEm.exit130:       ; preds = %_ZNK6embree13InstanceArray3l2wEmm.exit.i127
  %i.ggn = load ptr, ptr %i.fmh, align 16, !noalias !1101
  %i.ggo = load i64, ptr %i.fmi, align 16, !noalias !1101
  %i.ggp = mul i64 %i.ggo, %2
  %i.ggq = getelementptr inbounds nuw i8, ptr %i.ggn, i64 %i.ggp
  %i.ggr = load i32, ptr %i.ggq, align 4, !noalias !1101 ; 2 uses
  %.not5050 = icmp eq i32 %i.ggr, -1
  br i1 %.not5050, label %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split, label %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split.sink.split

_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split.sink.split: ; preds = %_ZNK6embree13InstanceArray5validEm.exit130, %_ZNK6embree13InstanceArray5validEm.exit
  %.sink = phi i32 [ %i.gbj, %_ZNK6embree13InstanceArray5validEm.exit ], [ %i.ggr, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %.sink5552.ph.ph = phi <4 x float> [ %i.gav, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.181807.0, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %.sink5550.ph.ph = phi <4 x float> [ %i.gbe, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.261809.0, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %.sink5548.ph.ph = phi <4 x float> [ %i.gan, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.101805.0, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %.sink5544.ph.ph = phi <4 x float> [ %i.gah, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.01803.0, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %i.ggs = load ptr, ptr %i.fmk, align 16, !noalias !1097
  %i.ggt = zext i32 %.sink to i64
  %i.ggu = getelementptr inbounds nuw [8 x i8], ptr %i.ggs, i64 %i.ggt
  %i.ggv = load ptr, ptr %i.ggu, align 8, !noalias !1097
  br label %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split

_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split: ; preds = %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split.sink.split, %_ZNK6embree13InstanceArray3l2wEmm.exit.i127, %_ZNK6embree13InstanceArray3l2wEmm.exit9.i
  %.0.i251.sink5575 = phi ptr [ %i.fkn, %_ZNK6embree13InstanceArray3l2wEmm.exit9.i ], [ %i.fkn, %_ZNK6embree13InstanceArray3l2wEmm.exit.i127 ], [ %i.ggv, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split.sink.split ] ; 4 uses
  %.sink5552.ph = phi <4 x float> [ %i.gav, %_ZNK6embree13InstanceArray3l2wEmm.exit9.i ], [ %.sroa.181807.0, %_ZNK6embree13InstanceArray3l2wEmm.exit.i127 ], [ %.sink5552.ph.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split.sink.split ]
  %.sink5550.ph = phi <4 x float> [ %i.gbe, %_ZNK6embree13InstanceArray3l2wEmm.exit9.i ], [ %.sroa.261809.0, %_ZNK6embree13InstanceArray3l2wEmm.exit.i127 ], [ %.sink5550.ph.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split.sink.split ]
  %.sink5548.ph = phi <4 x float> [ %i.gan, %_ZNK6embree13InstanceArray3l2wEmm.exit9.i ], [ %.sroa.101805.0, %_ZNK6embree13InstanceArray3l2wEmm.exit.i127 ], [ %.sink5548.ph.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split.sink.split ]
  %.sink5544.ph = phi <4 x float> [ %i.gah, %_ZNK6embree13InstanceArray3l2wEmm.exit9.i ], [ %.sroa.01803.0, %_ZNK6embree13InstanceArray3l2wEmm.exit.i127 ], [ %.sink5544.ph.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split.sink.split ]
  %i.ggw = load float, ptr %i.fml, align 4, !noalias !1097 ; 2 uses
  %i.ggx = load float, ptr %i.fmm, align 16, !noalias !1097
  %i.ggy = fsub float %i.ggx, %i.ggw
  %i.ggz = fmul float %i.ggy, %i.frl
  %i.gha = load float, ptr %i.fmn, align 8, !noalias !1097
  %i.ghb = fdiv float %i.ggz, %i.gha
  %i.ghc = fadd float %i.ggw, %i.ghb              ; 2 uses
  %i.ghd = getelementptr inbounds nuw i8, ptr %.0.i251.sink5575, i64 16
  %i.ghe = getelementptr inbounds nuw i8, ptr %.0.i251.sink5575, i64 48
  %i.ghf = fsub float 1.000000e+00, %i.ghc
  %i.ghg = insertelement <4 x float> poison, float %i.ghc, i64 0
  %i.ghh = shufflevector <4 x float> %i.ghg, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ghi = load <4 x float>, ptr %i.ghe, align 16, !noalias !1097
  %i.ghj = fmul <4 x float> %i.ghi, %i.ghh
  %i.ghk = insertelement <4 x float> poison, float %i.ghf, i64 0
  %i.ghl = shufflevector <4 x float> %i.ghk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ghm = load <4 x float>, ptr %i.ghd, align 16, !noalias !1097
  %i.ghn = fmul <4 x float> %i.ghm, %i.ghl
  %i.gho = fadd <4 x float> %i.ghj, %i.ghn
  %i.ghp = getelementptr inbounds nuw i8, ptr %.0.i251.sink5575, i64 32
  %i.ghq = getelementptr inbounds nuw i8, ptr %.0.i251.sink5575, i64 64
  %i.ghr = load <4 x float>, ptr %i.ghq, align 16, !noalias !1097
  %i.ghs = fmul <4 x float> %i.ghr, %i.ghh
  %i.ght = load <4 x float>, ptr %i.ghp, align 16, !noalias !1097
  %i.ghu = fmul <4 x float> %i.ght, %i.ghl
  %i.ghv = fadd <4 x float> %i.ghs, %i.ghu
  br label %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split

_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split: ; preds = %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split, %_ZNK6embree13InstanceArray5validEm.exit130, %_ZNK6embree13InstanceArray5validEm.exit
  %.sroa.01843.0.sink5555 = phi <4 x float> [ undef, %_ZNK6embree13InstanceArray5validEm.exit ], [ undef, %_ZNK6embree13InstanceArray5validEm.exit130 ], [ %i.gho, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split ] ; 3 uses
  %.sink5552 = phi <4 x float> [ %i.gav, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.181807.0, %_ZNK6embree13InstanceArray5validEm.exit130 ], [ %.sink5552.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split ] ; 2 uses
  %.sink5550 = phi <4 x float> [ %i.gbe, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.261809.0, %_ZNK6embree13InstanceArray5validEm.exit130 ], [ %.sink5550.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split ] ; 2 uses
  %.sink5548 = phi <4 x float> [ %i.gan, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.101805.0, %_ZNK6embree13InstanceArray5validEm.exit130 ], [ %.sink5548.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split ] ; 2 uses
  %.sink5544 = phi <4 x float> [ %i.gah, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.01803.0, %_ZNK6embree13InstanceArray5validEm.exit130 ], [ %.sink5544.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split ] ; 2 uses
  %.sroa.151862.0.sink5539 = phi <4 x float> [ undef, %_ZNK6embree13InstanceArray5validEm.exit ], [ undef, %_ZNK6embree13InstanceArray5validEm.exit130 ], [ %i.ghv, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split ] ; 3 uses
  %i.ghw = shufflevector <4 x float> %.sroa.01843.0.sink5555, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ghx = shufflevector <4 x float> %.sroa.01843.0.sink5555, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ghy = shufflevector <4 x float> %.sroa.01843.0.sink5555, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ghz = fmul <4 x float> %.sink5552, %i.ghy
  %i.gia = fadd <4 x float> %.sink5550, %i.ghz    ; 2 uses
  %i.gib = fmul <4 x float> %.sink5548, %i.ghx    ; 2 uses
  %i.gic = fadd <4 x float> %i.gib, %i.gia        ; 2 uses
  %i.gid = fmul <4 x float> %.sink5544, %i.ghw    ; 4 uses
  %i.gie = fadd <4 x float> %i.gid, %i.gic        ; 2 uses
  %i.gif = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.gie)
  %i.gig = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.gie)
  %i.gih = shufflevector <4 x float> %.sroa.151862.0.sink5539, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gii = fmul <4 x float> %.sink5552, %i.gih
  %i.gij = fadd <4 x float> %.sink5550, %i.gii    ; 2 uses
  %i.gik = fadd <4 x float> %i.gib, %i.gij        ; 2 uses
  %i.gil = fadd <4 x float> %i.gid, %i.gik        ; 2 uses
  %i.gim = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gif, <4 x float> %i.gil)
  %i.gin = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gig, <4 x float> %i.gil)
  %i.gio = shufflevector <4 x float> %.sroa.151862.0.sink5539, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gip = fmul <4 x float> %.sink5548, %i.gio    ; 2 uses
  %i.giq = fadd <4 x float> %i.gip, %i.gia        ; 2 uses
  %i.gir = fadd <4 x float> %i.gid, %i.giq        ; 2 uses
  %i.gis = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gim, <4 x float> %i.gir)
  %i.git = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gin, <4 x float> %i.gir)
  %i.giu = fadd <4 x float> %i.gip, %i.gij        ; 2 uses
  %i.giv = fadd <4 x float> %i.gid, %i.giu        ; 2 uses
  %i.giw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gis, <4 x float> %i.giv)
  %i.gix = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.git, <4 x float> %i.giv)
  %i.giy = shufflevector <4 x float> %.sroa.151862.0.sink5539, <4 x float> poison, <4 x i32> zeroinitializer
  %i.giz = fmul <4 x float> %.sink5544, %i.giy    ; 4 uses
  %i.gja = fadd <4 x float> %i.giz, %i.gic        ; 2 uses
  %i.gjb = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.giw, <4 x float> %i.gja)
  %i.gjc = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gix, <4 x float> %i.gja)
  %i.gjd = fadd <4 x float> %i.giz, %i.gik        ; 2 uses
  %i.gje = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gjb, <4 x float> %i.gjd)
  %i.gjf = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gjc, <4 x float> %i.gjd)
  %i.gjg = fadd <4 x float> %i.giz, %i.giq        ; 2 uses
  %i.gjh = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gje, <4 x float> %i.gjg)
  %i.gji = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gjf, <4 x float> %i.gjg)
  %i.gjj = fadd <4 x float> %i.giz, %i.giu        ; 2 uses
  %i.gjk = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gjh, <4 x float> %i.gjj)
  %i.gjl = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gji, <4 x float> %i.gjj)
  br label %_ZNK6embree13InstanceArray6boundsEmm.exit

_ZNK6embree13InstanceArray6boundsEmm.exit:        ; preds = %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split, %_ZNK6embree13InstanceArray5validEm.exit133
  %.sroa.37.0 = phi <4 x float> [ undef, %_ZNK6embree13InstanceArray5validEm.exit133 ], [ %i.gjl, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split ]
  %.sroa.0275.0 = phi <4 x float> [ undef, %_ZNK6embree13InstanceArray5validEm.exit133 ], [ %i.gjk, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split ]
  %i.gjm = fsub <4 x float> %.sroa.0275.0, %i.frw
  %i.gjn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gjm, <4 x float> zeroinitializer) ; 2 uses
  %i.gjo = fsub <4 x float> %.sroa.37.0, %i.frz
  %i.gjp = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gjo, <4 x float> zeroinitializer) ; 2 uses
  %i.gjq = fadd <4 x float> %.sroa.0352.05063, %i.gjn ; 2 uses
  %i.gjr = fadd <4 x float> %.sroa.0309.05065, %i.gjn ; 2 uses
  %i.gjs = fadd <4 x float> %.sroa.44374.05062, %i.gjp ; 2 uses
  %i.gjt = fadd <4 x float> %.sroa.44.05064, %i.gjp ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.af, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.cr, !llvm.loop !959

._crit_edge5076:                                  ; preds = %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel, %._crit_edge
  %.sroa.7.0.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge ], [ %i.frg, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ], [ %i.gnq, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ] ; 2 uses
  %.sroa.0262.0.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge ], [ %i.fre, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ], [ %i.gno, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ] ; 2 uses
  %i.gju = fadd <4 x float> %.sroa.0352.0.lcssa, %.sroa.0262.0.lcssa
  %i.gjv = fadd <4 x float> %.sroa.0309.0.lcssa, %.sroa.0262.0.lcssa
  %i.gjw = fadd <4 x float> %.sroa.44374.0.lcssa, %.sroa.7.0.lcssa
  %i.gjx = fadd <4 x float> %.sroa.44.0.lcssa, %.sroa.7.0.lcssa
  store <4 x float> %i.gju, ptr %0, align 16
  store <4 x float> %i.gjw, ptr %i.a, align 16
  store <4 x float> %i.gjv, ptr %i.b, align 16
  store <4 x float> %i.gjx, ptr %i.c, align 16
  br label %bb.de

.peel.next:                                       ; preds = %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123
  %indvars.iv5085.in = phi i64 [ %indvars.iv5085, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ], [ %i.fnk, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ] ; 3 uses
  %i.gjy = phi i32 [ %i.gnt, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ], [ %i.frj, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ]
  %i.gjz = phi float [ %i.gnr, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ], [ %i.frh, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ] ; 2 uses
  %.sroa.0262.05072 = phi <4 x float> [ %i.gno, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ], [ %i.fre, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ]
  %.sroa.7.05071 = phi <4 x float> [ %i.gnq, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ], [ %i.frg, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ]
  %indvars.iv5085 = add nuw nsw i64 %indvars.iv5085.in, 1 ; 4 uses
  %i.gka = trunc nuw nsw i64 %indvars.iv5085.in to i32
  %i.gkb = uitofp nneg i32 %i.gka to float        ; 2 uses
  %i.gkc = trunc nuw nsw i64 %indvars.iv5085 to i32
  %i.gkd = uitofp nneg i32 %i.gkc to float        ; 2 uses
  %i.gke = insertelement <2 x float> poison, float %i.gkb, i64 0
  %i.gkf = insertelement <2 x float> %i.gke, float %i.gkd, i64 1
  %i.gkg = fdiv <2 x float> %i.gkf, %i.fns
  %i.gkh = fsub <2 x float> %i.gkg, %i.fnu
  %i.gki = fdiv <2 x float> %i.gkh, %i.fnx        ; 3 uses
  %i.gkj = zext i32 %i.gjy to i64
  %i.gkk = icmp eq i64 %indvars.iv5085, %i.gkj
  %i.gkl = select i1 %i.gkk, float %i.fmy, float 1.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.gkm = load ptr, ptr %i.fmz, align 8, !noalias !1083 ; 3 uses
  %.not.i140 = icmp eq ptr %i.gkm, null           ; 2 uses
  br i1 %.not.i140, label %_ZNK6embree13InstanceArray5validEm.exit142, label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124

_ZNK6embree13InstanceArray5validEm.exit142:       ; preds = %.peel.next
  %i.gkn = load ptr, ptr %i.fna, align 16, !noalias !1083
  %i.gko = load i64, ptr %i.fnb, align 16, !noalias !1083
  %i.gkp = mul i64 %i.gko, %2
  %i.gkq = getelementptr inbounds nuw i8, ptr %i.gkn, i64 %i.gkp
  %i.gkr = load i32, ptr %i.gkq, align 4, !noalias !1083 ; 2 uses
  %.not5047 = icmp eq i32 %i.gkr, -1
  br i1 %.not5047, label %_ZNK6embree13InstanceArray5validEm.exit145.thread, label %bb.dc

_ZNK6embree13InstanceArray5validEm.exit145.thread: ; preds = %_ZNK6embree13InstanceArray5validEm.exit142
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  br label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123

bb.dc:                                            ; preds = %_ZNK6embree13InstanceArray5validEm.exit142
  %i.gks = load ptr, ptr %i.fnc, align 16, !noalias !1083
  %i.gkt = zext i32 %i.gkr to i64
  %i.gku = getelementptr inbounds nuw [8 x i8], ptr %i.gks, i64 %i.gkt
  %i.gkv = load ptr, ptr %i.gku, align 8, !noalias !1083
  br label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124

_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124: ; preds = %bb.dc, %.peel.next
  %.0.i254 = phi ptr [ %i.gkv, %bb.dc ], [ %i.gkm, %.peel.next ] ; 4 uses
  %i.gkw = load float, ptr %i.fnd, align 4, !noalias !1083 ; 3 uses
  %i.gkx = load float, ptr %i.fne, align 16, !noalias !1083
  %i.gky = fsub float %i.gkx, %i.gkw              ; 2 uses
  %i.gkz = fmul float %i.gky, %i.gkb
  %i.gla = fdiv float %i.gkz, %i.gjz
  %i.glb = fadd float %i.gkw, %i.gla              ; 2 uses
  %i.glc = getelementptr inbounds nuw i8, ptr %.0.i254, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  %i.gld = getelementptr inbounds nuw i8, ptr %.0.i254, i64 48
  %i.gle = fsub float 1.000000e+00, %i.glb
  %i.glf = insertelement <4 x float> poison, float %i.glb, i64 0
  %i.glg = shufflevector <4 x float> %i.glf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.glh = load <4 x float>, ptr %i.gld, align 16, !noalias !1103
  %i.gli = fmul <4 x float> %i.glh, %i.glg
  %i.glj = insertelement <4 x float> poison, float %i.gle, i64 0
  %i.glk = shufflevector <4 x float> %i.glj, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gll = load <4 x float>, ptr %i.glc, align 16, !noalias !1104
  %i.glm = fmul <4 x float> %i.gll, %i.glk
  %i.gln = fadd <4 x float> %i.gli, %i.glm
  %i.glo = getelementptr inbounds nuw i8, ptr %.0.i254, i64 32
  %i.glp = getelementptr inbounds nuw i8, ptr %.0.i254, i64 64
  %i.glq = load <4 x float>, ptr %i.glp, align 16, !noalias !1105
  %i.glr = fmul <4 x float> %i.glq, %i.glg
  %i.gls = load <4 x float>, ptr %i.glo, align 16, !noalias !1106
  %i.glt = fmul <4 x float> %i.gls, %i.glk
  %i.glu = fadd <4 x float> %i.glr, %i.glt
  store <4 x float> %i.gln, ptr %12, align 16, !alias.scope !1102
  store <4 x float> %i.glu, ptr %i.fnf, align 16, !alias.scope !1102
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  br i1 %.not.i140, label %_ZNK6embree13InstanceArray5validEm.exit145, label %_ZNK6embree13InstanceArray9getObjectEm.exit258

_ZNK6embree13InstanceArray5validEm.exit145:       ; preds = %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124
  %.pre5132 = load ptr, ptr %i.fna, align 16, !noalias !1089
  %.pre5133 = load i64, ptr %i.fnb, align 16, !noalias !1089
  %.pre5196 = mul i64 %.pre5133, %2
  %.phi.trans.insert5218 = getelementptr inbounds nuw i8, ptr %.pre5132, i64 %.pre5196
  %.pre5219 = load i32, ptr %.phi.trans.insert5218, align 4, !noalias !1089 ; 2 uses
  %.not5048 = icmp eq i32 %.pre5219, -1
  br i1 %.not5048, label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123, label %bb.dd

bb.dd:                                            ; preds = %_ZNK6embree13InstanceArray5validEm.exit145
  %i.glv = load ptr, ptr %i.fnc, align 16, !noalias !1089
  %i.glw = zext i32 %.pre5219 to i64
  %i.glx = getelementptr inbounds nuw [8 x i8], ptr %i.glv, i64 %i.glw
  %i.gly = load ptr, ptr %i.glx, align 8, !noalias !1089
  %.pre5134 = load float, ptr %i.fnd, align 4, !noalias !1089 ; 2 uses
  %.pre5135 = load float, ptr %i.fne, align 16, !noalias !1089
  %.pre5240 = fsub float %.pre5135, %.pre5134
  br label %_ZNK6embree13InstanceArray9getObjectEm.exit258

_ZNK6embree13InstanceArray9getObjectEm.exit258:   ; preds = %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124, %bb.dd
  %.pre-phi5241 = phi float [ %i.gky, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124 ], [ %.pre5240, %bb.dd ]
  %i.glz = phi float [ %i.gkw, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124 ], [ %.pre5134, %bb.dd ]
  %.0.i257 = phi ptr [ %i.gkm, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124 ], [ %i.gly, %bb.dd ] ; 4 uses
  %i.gma = fmul float %.pre-phi5241, %i.gkd
  %i.gmb = fdiv float %i.gma, %i.gjz
  %i.gmc = fadd float %i.glz, %i.gmb              ; 2 uses
  %i.gmd = getelementptr inbounds nuw i8, ptr %.0.i257, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  %i.gme = getelementptr inbounds nuw i8, ptr %.0.i257, i64 48
  %i.gmf = fsub float 1.000000e+00, %i.gmc
  %i.gmg = insertelement <4 x float> poison, float %i.gmc, i64 0
  %i.gmh = shufflevector <4 x float> %i.gmg, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gmi = load <4 x float>, ptr %i.gme, align 16, !noalias !1108
  %i.gmj = fmul <4 x float> %i.gmi, %i.gmh
  %i.gmk = insertelement <4 x float> poison, float %i.gmf, i64 0
  %i.gml = shufflevector <4 x float> %i.gmk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gmm = load <4 x float>, ptr %i.gmd, align 16, !noalias !1109
  %i.gmn = fmul <4 x float> %i.gmm, %i.gml
  %i.gmo = fadd <4 x float> %i.gmj, %i.gmn
  %i.gmp = getelementptr inbounds nuw i8, ptr %.0.i257, i64 32
  %i.gmq = getelementptr inbounds nuw i8, ptr %.0.i257, i64 64
  %i.gmr = load <4 x float>, ptr %i.gmq, align 16, !noalias !1110
  %i.gms = fmul <4 x float> %i.gmr, %i.gmh
  %i.gmt = load <4 x float>, ptr %i.gmp, align 16, !noalias !1111
  %i.gmu = fmul <4 x float> %i.gmt, %i.gml
  %i.gmv = fadd <4 x float> %i.gms, %i.gmu
  store <4 x float> %i.gmo, ptr %13, align 16, !alias.scope !1107
  store <4 x float> %i.gmv, ptr %i.fng, align 16, !alias.scope !1107
  br label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123

_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123: ; preds = %_ZNK6embree13InstanceArray5validEm.exit145.thread, %_ZNK6embree13InstanceArray5validEm.exit145, %_ZNK6embree13InstanceArray9getObjectEm.exit258
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.gmw = fsub <2 x float> splat (float 1.000000e+00), %i.gki ; 2 uses
  %i.gmx = shufflevector <2 x float> %i.gki, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gmy = fmul <4 x float> %.sroa.0309.0.lcssa, %i.gmx
  %i.gmz = shufflevector <2 x float> %i.gmw, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gna = fmul <4 x float> %.sroa.0352.0.lcssa, %i.gmz
  %i.gnb = fadd <4 x float> %i.gmy, %i.gna
  %i.gnc = fmul <4 x float> %.sroa.44.0.lcssa, %i.gmx
  %i.gnd = fmul <4 x float> %.sroa.44374.0.lcssa, %i.gmz
  %i.gne = fadd <4 x float> %i.gnc, %i.gnd
  store <4 x float> %i.gnb, ptr %14, align 16
  store <4 x float> %i.gne, ptr %i.fnh, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.gnf = shufflevector <2 x float> %i.gki, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.gng = fmul <4 x float> %.sroa.0309.0.lcssa, %i.gnf
  %i.gnh = shufflevector <2 x float> %i.gmw, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.gni = fmul <4 x float> %.sroa.0352.0.lcssa, %i.gnh
  %i.gnj = fadd <4 x float> %i.gng, %i.gni
  %i.gnk = fmul <4 x float> %.sroa.44.0.lcssa, %i.gnf
  %i.gnl = fmul <4 x float> %.sroa.44374.0.lcssa, %i.gnh
  %i.gnm = fadd <4 x float> %i.gnk, %i.gnl
  store <4 x float> %i.gnj, ptr %15, align 16
  store <4 x float> %i.gnm, ptr %i.fni, align 16
  call void @_ZNK6embree13InstanceArray12boundSegmentEmmRKNS_4BBoxINS_6Vec3faEEES5_S5_S5_ff(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BBox.13") align 16 %11, ptr noundef nonnull align 16 dereferenceable(200) %1, i64 noundef %2, i64 noundef %indvars.iv5085.in, ptr noundef nonnull align 16 dereferenceable(32) %12, ptr noundef nonnull align 16 dereferenceable(32) %13, ptr noundef nonnull align 16 dereferenceable(32) %14, ptr noundef nonnull align 16 dereferenceable(32) %15, float noundef 0.000000e+00, float noundef %i.gkl)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.gnn = load <4 x float>, ptr %11, align 16, !noalias !1095
  %i.gno = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0262.05072, <4 x float> %i.gnn) ; 2 uses
  %i.gnp = load <4 x float>, ptr %i.fnj, align 16, !noalias !1096
  %i.gnq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.7.05071, <4 x float> %i.gnp) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.gnr = load float, ptr %i.fmq, align 8        ; 2 uses
  %i.gns = fptosi float %i.gnr to i32
  %i.gnt = tail call noundef i32 @llvm.smin.i32(i32 %i.gns, i32 %i.af) ; 2 uses
  %i.gnu = sext i32 %i.gnt to i64
  %.not.not = icmp slt i64 %indvars.iv5085, %i.gnu
  br i1 %.not.not, label %.peel.next, label %._crit_edge5076, !llvm.loop !964

bb.de:                                            ; preds = %._crit_edge5076, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit125
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6embree4sse219createInstanceArrayEPNS_6DeviceE(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #27 ; 4 uses
  invoke void @_ZN6embree13InstanceArrayC2EPNS_6DeviceEj(ptr noundef nonnull align 16 dereferenceable(200) %i.a, ptr noundef %0, i32 noundef 1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 520) (i8, ptr @_ZTVN6embree4sse216InstanceArrayISAE, i64 16), ptr %i.a, align 16
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #25
  resume { ptr, i32 } %i.b
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6embree8RefCount6refIncEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw add ptr %i.a, i64 1 seq_cst, align 8 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree8RefCount6refDecEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw add ptr %i.a, i64 -1 seq_cst, align 8
  %.not = icmp eq i64 %i.b, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN6embree8Geometry16setNumPrimitivesEj(ptr noundef nonnull align 16 dereferenceable(88), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree8Geometry23setVertexAttributeCountEj(ptr noundef nonnull align 16 dereferenceable(88) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = tail call ptr @__cxa_allocate_exception(i64 48) #24 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.d, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 41, ptr %i.b, align 8
  %i.e = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.e, ptr %2, align 8
  %i.f = load i64, ptr %i.b, align 8              ; 3 uses
  store i64 %i.f, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.e, ptr noundef nonnull align 1 dereferenceable(41) @.str.12, i64 41, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.h, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6embree12rtcore_errorE, i64 16), ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  store ptr %i.k, ptr %i.j, align 8
  %i.l = load ptr, ptr %2, align 8                ; 2 uses
  %i.m = load i64, ptr %i.g, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.m, ptr %i.a, align 8
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i6, label %._crit_edge.i.i5

.noexc.i6:                                        ; preds = %.noexc
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc7 unwind label %.body   ; 2 uses

.noexc7:                                          ; preds = %.noexc.i6
  store ptr %i.o, ptr %i.j, align 8
  %i.p = load i64, ptr %i.a, align 8
  store i64 %i.p, ptr %i.k, align 8
  br label %._crit_edge.i.i5

._crit_edge.i.i5:                                 ; preds = %.noexc7, %.noexc
  %i.q = phi ptr [ %i.o, %.noexc7 ], [ %i.k, %.noexc ] ; 2 uses
  switch i64 %i.m, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i5
  %i.r = load i8, ptr %i.l, align 1
  store i8 %i.r, ptr %i.q, align 1
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.l, i64 %i.m, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i5, %bb.a, %bb.b
  %i.s = load i64, ptr %i.a, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.s, ptr %i.t, align 8
  %i.u = load ptr, ptr %i.j, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6embree12rtcore_errorE, ptr nonnull @_ZN6embree12rtcore_errorD2Ev) #26
          to label %bb.e unwind label %.body.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body:                                            ; preds = %.noexc.i6
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %i.c) #24
  %i.y = load ptr, ptr %2, align 8                ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.y) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body.thread:                                     ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %2, align 8               ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.d
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread18: ; preds = %.body.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body.thread
  call void @_ZdlPv(ptr noundef %i.ab) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %.pn11 = phi { ptr, i32 } [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread ], [ %i.x, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @__cxa_free_exception(ptr %i.c) #24
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread18 ], [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn10

bb.e:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree8Geometry16setTopologyCountEj(ptr noundef nonnull align 16 dereferenceable(88) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = tail call ptr @__cxa_allocate_exception(i64 48) #24 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.d, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 41, ptr %i.b, align 8
  %i.e = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.e, ptr %2, align 8
  %i.f = load i64, ptr %i.b, align 8              ; 3 uses
  store i64 %i.f, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.e, ptr noundef nonnull align 1 dereferenceable(41) @.str.12, i64 41, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
end_hunk_1
