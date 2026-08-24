Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scene_instance_array?download=true
inline.NumInlined: 398
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK6embree13InstanceArray15nonlinearBoundsEmRKNS_4BBoxIfEES4_f:bb.a
  %i.feq = fmul <4 x float> %i.fep, %.sroa.0527.0
  %i.fer = fadd <4 x float> %i.feq, %i.fen
  %i.fes = fmul <4 x float> %i.fem, %.sroa.10.0
  %i.fet = fmul <4 x float> %i.fep, %.sroa.10529.0
  %i.feu = fadd <4 x float> %i.fet, %i.fes
  %i.fev = fmul <4 x float> %i.fem, %.sroa.18.0
  %i.few = fmul <4 x float> %i.fep, %.sroa.18531.0
  %i.fex = fadd <4 x float> %i.few, %i.fev
  %i.fey = fmul <4 x float> %i.fem, %.sroa.26.0
  %i.fez = fmul <4 x float> %i.fep, %.sroa.26533.0
  %i.ffa = fadd <4 x float> %i.fez, %i.fey
  %.not.i146 = icmp eq ptr %i.dwi, null           ; 2 uses
  br i1 %.not.i146, label %_ZNK6embree13InstanceArray5validEm.exit148, label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit122

_ZNK6embree13InstanceArray5validEm.exit148:       ; preds = %_ZNK6embree13InstanceArray3l2wEmm.exit.i
  %i.ffb = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ffc = load ptr, ptr %i.ffb, align 16, !noalias !932
  %i.ffd = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ffe = load i64, ptr %i.ffd, align 16, !noalias !932
  %i.fff = mul i64 %i.ffe, %2
  %i.ffg = getelementptr inbounds nuw i8, ptr %i.ffc, i64 %i.fff
  %i.ffh = load i32, ptr %i.ffg, align 4, !noalias !932 ; 2 uses
  %.not5043 = icmp eq i32 %i.ffh, -1
  br i1 %.not5043, label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit121, label %bb.cn

bb.cn:                                            ; preds = %_ZNK6embree13InstanceArray5validEm.exit148
  %i.ffi = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ffj = load ptr, ptr %i.ffi, align 16, !noalias !932
  %i.ffk = zext i32 %i.ffh to i64
  %i.ffl = getelementptr inbounds nuw [8 x i8], ptr %i.ffj, i64 %i.ffk
  %i.ffm = load ptr, ptr %i.ffl, align 8, !noalias !932
  br label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit122

_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit122: ; preds = %bb.cn, %_ZNK6embree13InstanceArray3l2wEmm.exit.i
  %.0.i242 = phi ptr [ %i.ffm, %bb.cn ], [ %i.dwi, %_ZNK6embree13InstanceArray3l2wEmm.exit.i ] ; 4 uses
  %i.ffn = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ffo = load float, ptr %i.ffn, align 4, !noalias !932 ; 3 uses
  %i.ffp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ffq = load float, ptr %i.ffp, align 16, !noalias !932
  %i.ffr = fsub float %i.ffq, %i.ffo              ; 2 uses
  %i.ffs = sitofp i32 %i.dwk to float
  %i.fft = fmul float %i.ffr, %i.ffs
  %i.ffu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ffv = load float, ptr %i.ffu, align 8, !noalias !932 ; 2 uses
  %i.ffw = fdiv float %i.fft, %i.ffv
  %i.ffx = fadd float %i.ffo, %i.ffw              ; 2 uses
  %i.ffy = getelementptr inbounds nuw i8, ptr %.0.i242, i64 16
  %i.ffz = getelementptr inbounds nuw i8, ptr %.0.i242, i64 48
  %i.fga = fsub float 1.000000e+00, %i.ffx
  %i.fgb = insertelement <4 x float> poison, float %i.ffx, i64 0
  %i.fgc = shufflevector <4 x float> %i.fgb, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fgd = load <4 x float>, ptr %i.ffz, align 16, !noalias !935
  %i.fge = fmul <4 x float> %i.fgd, %i.fgc
  %i.fgf = insertelement <4 x float> poison, float %i.fga, i64 0
  %i.fgg = shufflevector <4 x float> %i.fgf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fgh = load <4 x float>, ptr %i.ffy, align 16, !noalias !946
  %i.fgi = fmul <4 x float> %i.fgh, %i.fgg
  %i.fgj = fadd <4 x float> %i.fge, %i.fgi        ; 2 uses
  %i.fgk = getelementptr inbounds nuw i8, ptr %.0.i242, i64 32
  %i.fgl = getelementptr inbounds nuw i8, ptr %.0.i242, i64 64
  %i.fgm = load <4 x float>, ptr %i.fgl, align 16, !noalias !953
  %i.fgn = fmul <4 x float> %i.fgm, %i.fgc
  %i.fgo = load <4 x float>, ptr %i.fgk, align 16, !noalias !960
  %i.fgp = fmul <4 x float> %i.fgo, %i.fgg
  %i.fgq = fadd <4 x float> %i.fgn, %i.fgp        ; 2 uses
  br i1 %.not.i146, label %_ZNK6embree13InstanceArray5validEm.exit151, label %_ZNK6embree13InstanceArray9getObjectEm.exit246

_ZNK6embree13InstanceArray5validEm.exit151:       ; preds = %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit122
  %.phi.trans.insert5108 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.pre5109 = load ptr, ptr %.phi.trans.insert5108, align 16, !noalias !967
  %.phi.trans.insert5110 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.pre5111 = load i64, ptr %.phi.trans.insert5110, align 16, !noalias !967
  %.pre5190 = mul i64 %.pre5111, %2
  %.phi.trans.insert5212 = getelementptr inbounds nuw i8, ptr %.pre5109, i64 %.pre5190
  %.pre5213 = load i32, ptr %.phi.trans.insert5212, align 4, !noalias !967 ; 2 uses
  %.not5044 = icmp eq i32 %.pre5213, -1
  br i1 %.not5044, label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit121, label %bb.co

bb.co:                                            ; preds = %_ZNK6embree13InstanceArray5validEm.exit151
  %i.fgr = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.fgs = load ptr, ptr %i.fgr, align 16, !noalias !967
  %i.fgt = zext i32 %.pre5213 to i64
  %i.fgu = getelementptr inbounds nuw [8 x i8], ptr %i.fgs, i64 %i.fgt
  %i.fgv = load ptr, ptr %i.fgu, align 8, !noalias !967
  %.phi.trans.insert5112 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.pre5113 = load float, ptr %.phi.trans.insert5112, align 4, !noalias !967 ; 2 uses
  %.phi.trans.insert5114 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre5115 = load float, ptr %.phi.trans.insert5114, align 16, !noalias !967
  %.phi.trans.insert5116 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre5117 = load float, ptr %.phi.trans.insert5116, align 8, !noalias !967
  %.pre5246 = fsub float %.pre5115, %.pre5113
  br label %_ZNK6embree13InstanceArray9getObjectEm.exit246

_ZNK6embree13InstanceArray9getObjectEm.exit246:   ; preds = %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit122, %bb.co
  %.pre-phi5247 = phi float [ %i.ffr, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit122 ], [ %.pre5246, %bb.co ]
  %i.fgw = phi float [ %i.ffv, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit122 ], [ %.pre5117, %bb.co ]
  %i.fgx = phi float [ %i.ffo, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit122 ], [ %.pre5113, %bb.co ]
  %.0.i245 = phi ptr [ %i.dwi, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit122 ], [ %i.fgv, %bb.co ] ; 4 uses
  %i.fgy = sitofp i32 %i.dwm to float
  %i.fgz = fmul float %.pre-phi5247, %i.fgy
  %i.fha = fdiv float %i.fgz, %i.fgw
  %i.fhb = fadd float %i.fgx, %i.fha              ; 2 uses
  %i.fhc = getelementptr inbounds nuw i8, ptr %.0.i245, i64 16
  %i.fhd = getelementptr inbounds nuw i8, ptr %.0.i245, i64 48
  %i.fhe = fsub float 1.000000e+00, %i.fhb
  %i.fhf = insertelement <4 x float> poison, float %i.fhb, i64 0
  %i.fhg = shufflevector <4 x float> %i.fhf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fhh = load <4 x float>, ptr %i.fhd, align 16, !noalias !970
  %i.fhi = fmul <4 x float> %i.fhh, %i.fhg
  %i.fhj = insertelement <4 x float> poison, float %i.fhe, i64 0
  %i.fhk = shufflevector <4 x float> %i.fhj, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fhl = load <4 x float>, ptr %i.fhc, align 16, !noalias !981
  %i.fhm = fmul <4 x float> %i.fhl, %i.fhk
  %i.fhn = fadd <4 x float> %i.fhi, %i.fhm
  %i.fho = getelementptr inbounds nuw i8, ptr %.0.i245, i64 32
  %i.fhp = getelementptr inbounds nuw i8, ptr %.0.i245, i64 64
  %i.fhq = load <4 x float>, ptr %i.fhp, align 16, !noalias !988
  %i.fhr = fmul <4 x float> %i.fhq, %i.fhg
  %i.fhs = load <4 x float>, ptr %i.fho, align 16, !noalias !995
  %i.fht = fmul <4 x float> %i.fhs, %i.fhk
  %i.fhu = fadd <4 x float> %i.fhr, %i.fht
  %i.fhv = fmul <4 x float> %i.fem, %i.fhn
  %i.fhw = fmul <4 x float> %i.fem, %i.fhu
  br label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit121

_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit121: ; preds = %_ZNK6embree13InstanceArray5validEm.exit148, %_ZNK6embree13InstanceArray5validEm.exit151, %_ZNK6embree13InstanceArray9getObjectEm.exit246
  %.sroa.4484.050125021 = phi <4 x float> [ %i.fgq, %_ZNK6embree13InstanceArray9getObjectEm.exit246 ], [ %i.fgq, %_ZNK6embree13InstanceArray5validEm.exit151 ], [ undef, %_ZNK6embree13InstanceArray5validEm.exit148 ]
  %.sroa.0483.050145019 = phi <4 x float> [ %i.fgj, %_ZNK6embree13InstanceArray9getObjectEm.exit246 ], [ %i.fgj, %_ZNK6embree13InstanceArray5validEm.exit151 ], [ undef, %_ZNK6embree13InstanceArray5validEm.exit148 ]
  %.sroa.4482.0 = phi <4 x float> [ %i.fhw, %_ZNK6embree13InstanceArray9getObjectEm.exit246 ], [ splat (float +qnan), %_ZNK6embree13InstanceArray5validEm.exit151 ], [ splat (float +qnan), %_ZNK6embree13InstanceArray5validEm.exit148 ]
  %.sroa.0481.0 = phi <4 x float> [ %i.fhv, %_ZNK6embree13InstanceArray9getObjectEm.exit246 ], [ splat (float +qnan), %_ZNK6embree13InstanceArray5validEm.exit151 ], [ splat (float +qnan), %_ZNK6embree13InstanceArray5validEm.exit148 ]
  %i.fhx = fmul <4 x float> %i.fep, %.sroa.0483.050145019
  %i.fhy = fadd <4 x float> %i.fhx, %.sroa.0481.0
  %i.fhz = fmul <4 x float> %i.fep, %.sroa.4484.050125021
  %i.fia = fadd <4 x float> %i.fhz, %.sroa.4482.0
  br label %_ZNK6embree13InstanceArray6boundsEmmmf.exit

_ZNK6embree13InstanceArray6boundsEmmmf.exit:      ; preds = %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit119, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit121
  %.sink5481 = phi <4 x float> [ %i.ety, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit119 ], [ %i.fhy, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit121 ] ; 3 uses
  %.sink5477 = phi <4 x float> [ %i.eqp, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit119 ], [ %i.fex, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit121 ] ; 2 uses
  %.sink5475 = phi <4 x float> [ %i.eqy, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit119 ], [ %i.ffa, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit121 ] ; 2 uses
  %.sink5473 = phi <4 x float> [ %i.eqh, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit119 ], [ %i.feu, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit121 ] ; 2 uses
  %.sink5469 = phi <4 x float> [ %i.eqb, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit119 ], [ %i.fer, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit121 ] ; 2 uses
  %.sink5464 = phi <4 x float> [ %i.eua, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit119 ], [ %i.fia, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit121 ] ; 3 uses
  %i.fib = phi ptr [ %i.era, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit119 ], [ %i.dwi, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit121 ] ; 3 uses
  %i.fic = shufflevector <4 x float> %.sink5481, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fid = shufflevector <4 x float> %.sink5481, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fie = shufflevector <4 x float> %.sink5481, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fif = fmul <4 x float> %.sink5477, %i.fie
  %i.fig = fadd <4 x float> %.sink5475, %i.fif    ; 2 uses
  %i.fih = fmul <4 x float> %.sink5473, %i.fid    ; 2 uses
  %i.fii = fadd <4 x float> %i.fih, %i.fig        ; 2 uses
  %i.fij = fmul <4 x float> %.sink5469, %i.fic    ; 4 uses
  %i.fik = fadd <4 x float> %i.fij, %i.fii        ; 2 uses
  %i.fil = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.fik)
  %i.fim = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.fik)
  %i.fin = shufflevector <4 x float> %.sink5464, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fio = fmul <4 x float> %.sink5477, %i.fin
  %i.fip = fadd <4 x float> %.sink5475, %i.fio    ; 2 uses
  %i.fiq = fadd <4 x float> %i.fih, %i.fip        ; 2 uses
  %i.fir = fadd <4 x float> %i.fij, %i.fiq        ; 2 uses
  %i.fis = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fil, <4 x float> %i.fir)
  %i.fit = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fim, <4 x float> %i.fir)
  %i.fiu = shufflevector <4 x float> %.sink5464, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fiv = fmul <4 x float> %.sink5473, %i.fiu    ; 2 uses
  %i.fiw = fadd <4 x float> %i.fiv, %i.fig        ; 2 uses
  %i.fix = fadd <4 x float> %i.fij, %i.fiw        ; 2 uses
  %i.fiy = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fis, <4 x float> %i.fix)
  %i.fiz = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fit, <4 x float> %i.fix)
  %i.fja = fadd <4 x float> %i.fiv, %i.fip        ; 2 uses
  %i.fjb = fadd <4 x float> %i.fij, %i.fja        ; 2 uses
  %i.fjc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fiy, <4 x float> %i.fjb)
  %i.fjd = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fiz, <4 x float> %i.fjb)
  %i.fje = shufflevector <4 x float> %.sink5464, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fjf = fmul <4 x float> %.sink5469, %i.fje    ; 4 uses
  %i.fjg = fadd <4 x float> %i.fjf, %i.fii        ; 2 uses
  %i.fjh = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fjc, <4 x float> %i.fjg)
  %i.fji = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fjd, <4 x float> %i.fjg)
  %i.fjj = fadd <4 x float> %i.fjf, %i.fiq        ; 2 uses
  %i.fjk = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fjh, <4 x float> %i.fjj)
  %i.fjl = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fji, <4 x float> %i.fjj)
  %i.fjm = fadd <4 x float> %i.fjf, %i.fiw        ; 2 uses
  %i.fjn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fjk, <4 x float> %i.fjm)
  %i.fjo = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fjl, <4 x float> %i.fjm)
  %i.fjp = fadd <4 x float> %i.fjf, %i.fja        ; 2 uses
  %i.fjq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fjn, <4 x float> %i.fjp) ; 2 uses
  %i.fjr = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fjo, <4 x float> %i.fjp) ; 2 uses
  %i.fjs = add nsw i32 %i.ac, 1                   ; 3 uses
  %i.fjt = icmp slt i32 %i.fjs, %i.ag
  br i1 %i.fjt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK6embree13InstanceArray6boundsEmmmf.exit
  %i.fju = fsub float %i.q, %i.o
  %.not.i131 = icmp eq ptr %i.fib, null           ; 3 uses
  %i.fjv = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.fjw = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.fjx = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.fjy = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.fjz = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.fka = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fkb = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.cr

._crit_edge:                                      ; preds = %_ZNK6embree13InstanceArray6boundsEmm.exit, %_ZNK6embree13InstanceArray6boundsEmmmf.exit
  %.sroa.44374.0.lcssa = phi <4 x float> [ %.sroa.44374.1, %_ZNK6embree13InstanceArray6boundsEmmmf.exit ], [ %i.ghd, %_ZNK6embree13InstanceArray6boundsEmm.exit ] ; 5 uses
  %.sroa.0352.0.lcssa = phi <4 x float> [ %.sroa.0352.1, %_ZNK6embree13InstanceArray6boundsEmmmf.exit ], [ %i.ghb, %_ZNK6embree13InstanceArray6boundsEmm.exit ] ; 5 uses
  %.sroa.44.0.lcssa = phi <4 x float> [ %i.fjr, %_ZNK6embree13InstanceArray6boundsEmmmf.exit ], [ %i.ghe, %_ZNK6embree13InstanceArray6boundsEmm.exit ] ; 5 uses
  %.sroa.0309.0.lcssa = phi <4 x float> [ %i.fjq, %_ZNK6embree13InstanceArray6boundsEmmmf.exit ], [ %i.ghc, %_ZNK6embree13InstanceArray6boundsEmm.exit ] ; 5 uses
  %i.fkc = tail call noundef i32 @llvm.smax.i32(i32 %i.fjs, i32 1) ; 5 uses
  %i.fkd = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.fke = load float, ptr %i.fkd, align 8        ; 3 uses
  %i.fkf = fptosi float %i.fke to i32
  %i.fkg = tail call noundef i32 @llvm.smin.i32(i32 %i.fkf, i32 %i.ag) ; 2 uses
  %.not5070 = icmp sgt i32 %i.fkc, %i.fkg
  br i1 %.not5070, label %._crit_edge5076, label %.lr.ph5075

.lr.ph5075:                                       ; preds = %._crit_edge
  %i.fkh = fsub float %i.q, %i.o
  %i.fki = fcmp ogt float %i.chl, 0.000000e+00
  %i.fkj = fcmp ogt float %i.dwo, 0.000000e+00
  %i.fkk = select i1 %i.fkj, float %i.dwo, float 0.000000e+00
  %i.fkl = fsub float 1.000000e+00, %i.fkk        ; 2 uses
  %i.fkm = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.fkn = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.fko = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  %i.fkp = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.fkq = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  %i.fkr = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.fks = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.fkt = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fku = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.fkv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.fkw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fkx = zext nneg i32 %i.fkc to i64            ; 2 uses
  %i.fky = add nsw i64 %i.fkx, -1                 ; 2 uses
  %i.fkz = trunc nuw nsw i64 %i.fky to i32
  %i.fla = uitofp nneg i32 %i.fkc to float        ; 2 uses
  %i.flb = uitofp nneg i32 %i.fkz to float        ; 2 uses
  %i.flc = insertelement <2 x float> poison, float %i.flb, i64 0
  %i.fld = insertelement <2 x float> %i.flc, float %i.fla, i64 1
  %i.fle = insertelement <2 x float> poison, float %5, i64 0
  %i.flf = shufflevector <2 x float> %i.fle, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.flg = fdiv <2 x float> %i.fld, %i.flf
  %i.flh = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fli = fsub <2 x float> %i.flg, %i.flh
  %i.flj = insertelement <2 x float> poison, float %i.fkh, i64 0
  %i.flk = shufflevector <2 x float> %i.flj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fll = fdiv <2 x float> %i.fli, %i.flk        ; 3 uses
  %i.flm = select i1 %i.fki, float %i.chl, float 0.000000e+00
  %i.fln = icmp eq i32 %i.fkc, %i.fkg
  %i.flo = select i1 %i.fln, float %i.fkl, float 1.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.flp = load ptr, ptr %i.fkm, align 8, !noalias !1002 ; 3 uses
  %.not.i140.peel = icmp eq ptr %i.flp, null      ; 2 uses
  br i1 %.not.i140.peel, label %_ZNK6embree13InstanceArray5validEm.exit142.peel, label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124.peel

_ZNK6embree13InstanceArray5validEm.exit142.peel:  ; preds = %.lr.ph5075
  %i.flq = load ptr, ptr %i.fkn, align 16, !noalias !1002
  %i.flr = load i64, ptr %i.fko, align 16, !noalias !1002
  %i.fls = mul i64 %i.flr, %2
  %i.flt = getelementptr inbounds nuw i8, ptr %i.flq, i64 %i.fls
  %i.flu = load i32, ptr %i.flt, align 4, !noalias !1002 ; 2 uses
  %.not5047.peel = icmp eq i32 %i.flu, -1
  br i1 %.not5047.peel, label %_ZNK6embree13InstanceArray5validEm.exit145.peel.thread, label %bb.cp

bb.cp:                                            ; preds = %_ZNK6embree13InstanceArray5validEm.exit142.peel
  %i.flv = load ptr, ptr %i.fkp, align 16, !noalias !1002
  %i.flw = zext i32 %i.flu to i64
  %i.flx = getelementptr inbounds nuw [8 x i8], ptr %i.flv, i64 %i.flw
  %i.fly = load ptr, ptr %i.flx, align 8, !noalias !1002
  br label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124.peel

_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124.peel: ; preds = %bb.cp, %.lr.ph5075
  %.0.i254.peel = phi ptr [ %i.fly, %bb.cp ], [ %i.flp, %.lr.ph5075 ] ; 4 uses
  %i.flz = load float, ptr %i.fkq, align 4, !noalias !1002 ; 3 uses
  %i.fma = load float, ptr %i.fkr, align 16, !noalias !1002
  %i.fmb = fsub float %i.fma, %i.flz              ; 2 uses
  %i.fmc = fmul float %i.fmb, %i.flb
  %i.fmd = fdiv float %i.fmc, %i.fke
  %i.fme = fadd float %i.flz, %i.fmd              ; 2 uses
  %i.fmf = getelementptr inbounds nuw i8, ptr %.0.i254.peel, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  %i.fmg = getelementptr inbounds nuw i8, ptr %.0.i254.peel, i64 48
  %i.fmh = fsub float 1.000000e+00, %i.fme
  %i.fmi = insertelement <4 x float> poison, float %i.fme, i64 0
  %i.fmj = shufflevector <4 x float> %i.fmi, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fmk = load <4 x float>, ptr %i.fmg, align 16, !noalias !1008
  %i.fml = fmul <4 x float> %i.fmk, %i.fmj
  %i.fmm = insertelement <4 x float> poison, float %i.fmh, i64 0
  %i.fmn = shufflevector <4 x float> %i.fmm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fmo = load <4 x float>, ptr %i.fmf, align 16, !noalias !1017
  %i.fmp = fmul <4 x float> %i.fmo, %i.fmn
  %i.fmq = fadd <4 x float> %i.fml, %i.fmp
  %i.fmr = getelementptr inbounds nuw i8, ptr %.0.i254.peel, i64 32
  %i.fms = getelementptr inbounds nuw i8, ptr %.0.i254.peel, i64 64
  %i.fmt = load <4 x float>, ptr %i.fms, align 16, !noalias !1024
  %i.fmu = fmul <4 x float> %i.fmt, %i.fmj
  %i.fmv = load <4 x float>, ptr %i.fmr, align 16, !noalias !1031
  %i.fmw = fmul <4 x float> %i.fmv, %i.fmn
  %i.fmx = fadd <4 x float> %i.fmu, %i.fmw
  store <4 x float> %i.fmq, ptr %12, align 16, !alias.scope !1005
  store <4 x float> %i.fmx, ptr %i.fks, align 16, !alias.scope !1005
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  br i1 %.not.i140.peel, label %_ZNK6embree13InstanceArray5validEm.exit145.peel, label %_ZNK6embree13InstanceArray9getObjectEm.exit258.peel

_ZNK6embree13InstanceArray5validEm.exit145.peel.thread: ; preds = %_ZNK6embree13InstanceArray5validEm.exit142.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  br label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel

_ZNK6embree13InstanceArray5validEm.exit145.peel:  ; preds = %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124.peel
  %.pre5128.a = load ptr, ptr %i.fkn, align 16, !noalias !1038
  %.pre5129.a = load i64, ptr %i.fko, align 16, !noalias !1038
  %.pre5194 = mul i64 %.pre5129.a, %2
  %.phi.trans.insert5216 = getelementptr inbounds nuw i8, ptr %.pre5128.a, i64 %.pre5194
  %.pre5217 = load i32, ptr %.phi.trans.insert5216, align 4, !noalias !1038 ; 2 uses
  %.not5048.peel = icmp eq i32 %.pre5217, -1
  br i1 %.not5048.peel, label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel, label %bb.cq

bb.cq:                                            ; preds = %_ZNK6embree13InstanceArray5validEm.exit145.peel
  %i.fmy = load ptr, ptr %i.fkp, align 16, !noalias !1038
  %i.fmz = zext i32 %.pre5217 to i64
  %i.fna = getelementptr inbounds nuw [8 x i8], ptr %i.fmy, i64 %i.fmz
  %i.fnb = load ptr, ptr %i.fna, align 8, !noalias !1038
  %.pre5130.a = load float, ptr %i.fkq, align 4, !noalias !1038 ; 2 uses
  %.pre5131.a = load float, ptr %i.fkr, align 16, !noalias !1038
  %.pre5242 = fsub float %.pre5131.a, %.pre5130.a
  br label %_ZNK6embree13InstanceArray9getObjectEm.exit258.peel

_ZNK6embree13InstanceArray9getObjectEm.exit258.peel: ; preds = %bb.cq, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124.peel
  %.pre-phi5243 = phi float [ %.pre5242, %bb.cq ], [ %i.fmb, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124.peel ]
  %i.fnc = phi float [ %.pre5130.a, %bb.cq ], [ %i.flz, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124.peel ]
  %.0.i257.peel = phi ptr [ %i.fnb, %bb.cq ], [ %i.flp, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124.peel ] ; 4 uses
  %i.fnd = fmul float %.pre-phi5243, %i.fla
  %i.fne = fdiv float %i.fnd, %i.fke
  %i.fnf = fadd float %i.fnc, %i.fne              ; 2 uses
  %i.fng = getelementptr inbounds nuw i8, ptr %.0.i257.peel, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  %i.fnh = getelementptr inbounds nuw i8, ptr %.0.i257.peel, i64 48
  %i.fni = fsub float 1.000000e+00, %i.fnf
  %i.fnj = insertelement <4 x float> poison, float %i.fnf, i64 0
  %i.fnk = shufflevector <4 x float> %i.fnj, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fnl = load <4 x float>, ptr %i.fnh, align 16, !noalias !1044
  %i.fnm = fmul <4 x float> %i.fnl, %i.fnk
  %i.fnn = insertelement <4 x float> poison, float %i.fni, i64 0
  %i.fno = shufflevector <4 x float> %i.fnn, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fnp = load <4 x float>, ptr %i.fng, align 16, !noalias !1053
  %i.fnq = fmul <4 x float> %i.fnp, %i.fno
  %i.fnr = fadd <4 x float> %i.fnm, %i.fnq
  %i.fns = getelementptr inbounds nuw i8, ptr %.0.i257.peel, i64 32
  %i.fnt = getelementptr inbounds nuw i8, ptr %.0.i257.peel, i64 64
  %i.fnu = load <4 x float>, ptr %i.fnt, align 16, !noalias !1060
  %i.fnv = fmul <4 x float> %i.fnu, %i.fnk
  %i.fnw = load <4 x float>, ptr %i.fns, align 16, !noalias !1067
  %i.fnx = fmul <4 x float> %i.fnw, %i.fno
  %i.fny = fadd <4 x float> %i.fnv, %i.fnx
  store <4 x float> %i.fnr, ptr %13, align 16, !alias.scope !1041
  store <4 x float> %i.fny, ptr %i.fkt, align 16, !alias.scope !1041
  br label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel

_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel: ; preds = %_ZNK6embree13InstanceArray5validEm.exit145.peel.thread, %_ZNK6embree13InstanceArray9getObjectEm.exit258.peel, %_ZNK6embree13InstanceArray5validEm.exit145.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.fnz = fsub <2 x float> splat (float 1.000000e+00), %i.fll ; 2 uses
  %i.foa = shufflevector <2 x float> %i.fll, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fob = fmul <4 x float> %.sroa.0309.0.lcssa, %i.foa
  %i.foc = shufflevector <2 x float> %i.fnz, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fod = fmul <4 x float> %.sroa.0352.0.lcssa, %i.foc
  %i.foe = fadd <4 x float> %i.fob, %i.fod
  %i.fof = fmul <4 x float> %.sroa.44.0.lcssa, %i.foa
  %i.fog = fmul <4 x float> %.sroa.44374.0.lcssa, %i.foc
  %i.foh = fadd <4 x float> %i.fof, %i.fog
  store <4 x float> %i.foe, ptr %14, align 16
  store <4 x float> %i.foh, ptr %i.fku, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.foi = shufflevector <2 x float> %i.fll, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.foj = fmul <4 x float> %.sroa.0309.0.lcssa, %i.foi
  %i.fok = shufflevector <2 x float> %i.fnz, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.fol = fmul <4 x float> %.sroa.0352.0.lcssa, %i.fok
  %i.fom = fadd <4 x float> %i.foj, %i.fol
  %i.fon = fmul <4 x float> %.sroa.44.0.lcssa, %i.foi
  %i.foo = fmul <4 x float> %.sroa.44374.0.lcssa, %i.fok
  %i.fop = fadd <4 x float> %i.fon, %i.foo
  store <4 x float> %i.fom, ptr %15, align 16
  store <4 x float> %i.fop, ptr %i.fkv, align 16
  call void @_ZNK6embree13InstanceArray12boundSegmentEmmRKNS_4BBoxINS_6Vec3faEEES5_S5_S5_ff(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BBox.13") align 16 %11, ptr noundef nonnull align 16 dereferenceable(200) %1, i64 noundef %2, i64 noundef %i.fky, ptr noundef nonnull align 16 dereferenceable(32) %12, ptr noundef nonnull align 16 dereferenceable(32) %13, ptr noundef nonnull align 16 dereferenceable(32) %14, ptr noundef nonnull align 16 dereferenceable(32) %15, float noundef %i.flm, float noundef %i.flo)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.foq = load <4 x float>, ptr %11, align 16, !noalias !1074
  %i.for = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> %i.foq) ; 2 uses
  %i.fos = load <4 x float>, ptr %i.fkw, align 16, !noalias !1077
  %i.fot = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> %i.fos) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.fou = load float, ptr %i.fkd, align 8        ; 2 uses
  %i.fov = fptosi float %i.fou to i32
  %i.fow = tail call noundef i32 @llvm.smin.i32(i32 %i.fov, i32 %i.ag) ; 2 uses
  %.not.not.peel = icmp slt i32 %i.fkc, %i.fow
  br i1 %.not.not.peel, label %.peel.next, label %._crit_edge5076

bb.cr:                                            ; preds = %.lr.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit
  %.0915066 = phi i32 [ %i.fjs, %.lr.ph ], [ %18, %_ZNK6embree13InstanceArray6boundsEmm.exit ] ; 3 uses
  %.sroa.0309.05065 = phi <4 x float> [ %i.fjq, %.lr.ph ], [ %i.ghc, %_ZNK6embree13InstanceArray6boundsEmm.exit ] ; 2 uses
  %.sroa.44.05064 = phi <4 x float> [ %i.fjr, %.lr.ph ], [ %i.ghe, %_ZNK6embree13InstanceArray6boundsEmm.exit ] ; 2 uses
  %.sroa.0352.05063 = phi <4 x float> [ %.sroa.0352.1, %.lr.ph ], [ %i.ghb, %_ZNK6embree13InstanceArray6boundsEmm.exit ] ; 2 uses
  %.sroa.44374.05062 = phi <4 x float> [ %.sroa.44374.1, %.lr.ph ], [ %i.ghd, %_ZNK6embree13InstanceArray6boundsEmm.exit ] ; 2 uses
  %16 = uitofp nneg i32 %.0915066 to float        ; 2 uses
  %i.fox = fdiv float %16, %5
  %i.foy = fsub float %i.fox, %i.o
  %i.foz = fdiv float %i.foy, %i.fju              ; 2 uses
  %i.fpa = fsub float 1.000000e+00, %i.foz
  %i.fpb = insertelement <4 x float> poison, float %i.foz, i64 0
  %i.fpc = shufflevector <4 x float> %i.fpb, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fpd = fmul <4 x float> %.sroa.0309.05065, %i.fpc
  %i.fpe = insertelement <4 x float> poison, float %i.fpa, i64 0
  %i.fpf = shufflevector <4 x float> %i.fpe, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fpg = fmul <4 x float> %.sroa.0352.05063, %i.fpf
  %i.fph = fadd <4 x float> %i.fpd, %i.fpg
  %i.fpi = fmul <4 x float> %.sroa.44.05064, %i.fpc
  %i.fpj = fmul <4 x float> %.sroa.44374.05062, %i.fpf
  %i.fpk = fadd <4 x float> %i.fpi, %i.fpj
  %17 = zext nneg i32 %.0915066 to i64
  br i1 %.not.i131, label %_ZNK6embree13InstanceArray5validEm.exit133, label %_ZNK6embree13InstanceArray5validEm.exit133.thread

_ZNK6embree13InstanceArray5validEm.exit133:       ; preds = %bb.cr
  %i.fpl = load ptr, ptr %i.fjv, align 16, !noalias !1080
  %i.fpm = load i64, ptr %i.fjw, align 16, !noalias !1080
  %i.fpn = mul i64 %i.fpm, %2
  %i.fpo = getelementptr inbounds nuw i8, ptr %i.fpl, i64 %i.fpn
  %i.fpp = load i32, ptr %i.fpo, align 4, !noalias !1080
  %.not5049 = icmp eq i32 %i.fpp, -1
  br i1 %.not5049, label %_ZNK6embree13InstanceArray6boundsEmm.exit, label %_ZNK6embree13InstanceArray5validEm.exit133.thread

_ZNK6embree13InstanceArray5validEm.exit133.thread: ; preds = %bb.cr, %_ZNK6embree13InstanceArray5validEm.exit133
  %i.fpq = load i32, ptr %i.chm, align 4, !noalias !1080
  %i.fpr = and i32 %i.fpq, 65280
  %i.fps = icmp eq i32 %i.fpr, 256
  %i.fpt = load ptr, ptr %i.fjx, align 8, !noalias !1080
  %i.fpu = getelementptr inbounds nuw [56 x i8], ptr %i.fpt, i64 %17 ; 17 uses
  %i.fpv = getelementptr inbounds nuw i8, ptr %i.fpu, i64 32
  %i.fpw = load i32, ptr %i.fpv, align 8, !noalias !1080 ; 2 uses
  br i1 %i.fps, label %bb.cs, label %bb.cx, !prof !21

bb.cs:                                            ; preds = %_ZNK6embree13InstanceArray5validEm.exit133.thread
  switch i32 %i.fpw, label %_ZNK6embree13InstanceArray3l2wEmm.exit9.i [
    i32 37444, label %bb.ct
    i32 45057, label %bb.cu
    i32 37428, label %bb.cv
    i32 37172, label %bb.cw
  ]

bb.ct:                                            ; preds = %bb.cs
  %i.fpx = load ptr, ptr %i.fpu, align 8, !noalias !1083
  %i.fpy = getelementptr inbounds nuw i8, ptr %i.fpu, i64 16
  %i.fpz = load i64, ptr %i.fpy, align 8, !noalias !1083
  %i.fqa = mul i64 %i.fpz, %2
  %i.fqb = getelementptr inbounds nuw i8, ptr %i.fpx, i64 %i.fqa ; 4 uses
  %i.fqc = load <4 x float>, ptr %i.fqb, align 16, !noalias !1080
  %i.fqd = getelementptr inbounds nuw i8, ptr %i.fqb, i64 16
  %i.fqe = load <4 x float>, ptr %i.fqd, align 16, !noalias !1080
  %i.fqf = getelementptr inbounds nuw i8, ptr %i.fqb, i64 32
  %i.fqg = load <4 x float>, ptr %i.fqf, align 16, !noalias !1080
  %i.fqh = getelementptr inbounds nuw i8, ptr %i.fqb, i64 48
  %i.fqi = load <4 x float>, ptr %i.fqh, align 16, !noalias !1080
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit9.i

bb.cu:                                            ; preds = %bb.cs
  %i.fqj = load ptr, ptr %i.fpu, align 8, !noalias !1080
  %i.fqk = getelementptr inbounds nuw i8, ptr %i.fpu, i64 16
  %i.fql = load i64, ptr %i.fqk, align 8, !noalias !1080
  %i.fqm = mul i64 %i.fql, %2
  %i.fqn = getelementptr inbounds nuw i8, ptr %i.fqj, i64 %i.fqm ; 12 uses
  %i.fqo = load float, ptr %i.fqn, align 16, !noalias !1080
  %.sroa.01881.0.vec.insert = insertelement <4 x float> poison, float %i.fqo, i64 0
  %i.fqp = getelementptr inbounds nuw i8, ptr %i.fqn, i64 4
  %i.fqq = load float, ptr %i.fqp, align 4, !noalias !1080
  %i.fqr = getelementptr inbounds nuw i8, ptr %i.fqn, i64 8
  %i.fqs = load float, ptr %i.fqr, align 8, !noalias !1080
  %i.fqt = getelementptr inbounds nuw i8, ptr %i.fqn, i64 12
  %i.fqu = load float, ptr %i.fqt, align 4, !noalias !1080
  %i.fqv = insertelement <4 x float> poison, float %i.fqu, i64 0
  %.sroa.111884.16.vec.insert = insertelement <4 x float> %i.fqv, float %i.fqq, i64 1
  %i.fqw = getelementptr inbounds nuw i8, ptr %i.fqn, i64 16
  %i.fqx = load <2 x float>, ptr %i.fqw, align 16, !noalias !1080
  %i.fqy = shufflevector <2 x float> %i.fqx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.201887.36.vec.insert = insertelement <4 x float> %i.fqy, float %i.fqs, i64 2
  %i.fqz = getelementptr inbounds nuw i8, ptr %i.fqn, i64 52
  %i.fra = load <2 x float>, ptr %i.fqz, align 4, !noalias !1080
  %i.frb = shufflevector <2 x float> %i.fra, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.01881.8.vec.insert5597 = shufflevector <4 x float> %.sroa.01881.0.vec.insert, <4 x float> %i.frb, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.frc = getelementptr inbounds nuw i8, ptr %i.fqn, i64 60
  %i.frd = load float, ptr %i.frc, align 4, !noalias !1080
  %.sroa.111884.24.vec.insert = insertelement <4 x float> %.sroa.111884.16.vec.insert, float %i.frd, i64 2
  %i.fre = getelementptr inbounds nuw i8, ptr %i.fqn, i64 24
  %i.frf = getelementptr inbounds nuw i8, ptr %i.fqn, i64 36
  %i.frg = getelementptr inbounds nuw i8, ptr %i.fqn, i64 40
  %i.frh = getelementptr inbounds nuw i8, ptr %i.fqn, i64 44
  %i.fri = getelementptr inbounds nuw i8, ptr %i.fqn, i64 48
  %i.frj = load float, ptr %i.fri, align 16, !noalias !1080 ; 3 uses
  %i.frk = load float, ptr %i.frf, align 4, !noalias !1080 ; 2 uses
  %i.frl = load <4 x float>, ptr %i.fre, align 8, !noalias !1080
  %i.frm = load float, ptr %i.frh, align 4, !noalias !1080 ; 3 uses
  %i.frn = load float, ptr %i.frg, align 8, !noalias !1080 ; 3 uses
  %i.fro = fmul float %i.frn, %i.frn
  %i.frp = tail call float @llvm.fmuladd.f32(float %i.frk, float %i.frk, float %i.fro)
  %i.frq = tail call float @llvm.fmuladd.f32(float %i.frm, float %i.frm, float %i.frp)
  %i.frr = tail call float @llvm.fmuladd.f32(float %i.frj, float %i.frj, float %i.frq) ; 2 uses
  %i.frs = insertelement <4 x float> poison, float %i.frr, i64 0
  %i.frt = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.frs) ; 3 uses
  %i.fru = extractelement <4 x float> %i.frt, i64 0 ; 2 uses
  %i.frv = fmul float %i.fru, 1.500000e+00
  %i.frw = fmul float %i.frr, 5.000000e-01
  %i.frx = fmul float %i.fru, %i.frw
  %foldExtExtBinop5654.a = fmul <4 x float> %i.frt, %i.frt
  %i.fry = extractelement <4 x float> %foldExtExtBinop5654.a, i64 0
  %i.frz = fmul float %i.fry, %i.frx
  %i.fsa = fsub float %i.frv, %i.frz              ; 4 uses
  %i.fsb = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.fsa, i64 3
  %i.fsc = fmul <4 x float> %i.frl, %i.fsb
  %i.fsd = fmul float %i.frn, %i.fsa
  %i.fse = fmul float %i.frm, %i.fsa
  %i.fsf = fmul float %i.frj, %i.fsa
  %.sroa.01881.12.vec.insert = insertelement <4 x float> %.sroa.01881.8.vec.insert5597, float %i.fsd, i64 3
  %.sroa.111884.28.vec.insert = insertelement <4 x float> %.sroa.111884.24.vec.insert, float %i.fse, i64 3
  %.sroa.201887.44.vec.insert = insertelement <4 x float> %.sroa.201887.36.vec.insert, float %i.fsf, i64 3
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit9.i

bb.cv:                                            ; preds = %bb.cs
  %i.fsg = load ptr, ptr %i.fpu, align 8, !noalias !1083
  %i.fsh = getelementptr inbounds nuw i8, ptr %i.fpu, i64 16
  %i.fsi = load i64, ptr %i.fsh, align 8, !noalias !1083
  %i.fsj = mul i64 %i.fsi, %2
  %i.fsk = getelementptr inbounds nuw i8, ptr %i.fsg, i64 %i.fsj ; 8 uses
  %i.fsl = getelementptr inbounds nuw i8, ptr %i.fsk, i64 4
  %i.fsm = load <2 x float>, ptr %i.fsl, align 4, !noalias !1080
  %i.fsn = load float, ptr %i.fsk, align 4, !noalias !1080
  %i.fso = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fsn, i64 0
  %i.fsp = shufflevector <2 x float> %i.fsm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fsq = shufflevector <4 x float> %i.fso, <4 x float> %i.fsp, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.fsr = getelementptr inbounds nuw i8, ptr %i.fsk, i64 12
  %i.fss = getelementptr inbounds nuw i8, ptr %i.fsk, i64 16
  %i.fst = load <2 x float>, ptr %i.fss, align 4, !noalias !1080
  %i.fsu = load float, ptr %i.fsr, align 4, !noalias !1080
  %i.fsv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fsu, i64 0
  %i.fsw = shufflevector <2 x float> %i.fst, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fsx = shufflevector <4 x float> %i.fsv, <4 x float> %i.fsw, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.fsy = getelementptr inbounds nuw i8, ptr %i.fsk, i64 24
  %i.fsz = getelementptr inbounds nuw i8, ptr %i.fsk, i64 28
  %i.fta = load <2 x float>, ptr %i.fsz, align 4, !noalias !1080
  %i.ftb = load float, ptr %i.fsy, align 4, !noalias !1080
  %i.ftc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ftb, i64 0
  %i.ftd = shufflevector <2 x float> %i.fta, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fte = shufflevector <4 x float> %i.ftc, <4 x float> %i.ftd, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ftf = getelementptr inbounds nuw i8, ptr %i.fsk, i64 36
  %i.ftg = getelementptr inbounds nuw i8, ptr %i.fsk, i64 40
  %i.fth = load <2 x float>, ptr %i.ftg, align 4, !noalias !1080
  %i.fti = load float, ptr %i.ftf, align 4, !noalias !1080
  %i.ftj = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.fti, i64 0
  %i.ftk = shufflevector <2 x float> %i.fth, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ftl = shufflevector <4 x float> %i.ftj, <4 x float> %i.ftk, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit9.i

bb.cw:                                            ; preds = %bb.cs
  %i.ftm = load ptr, ptr %i.fpu, align 8, !noalias !1083
  %i.ftn = getelementptr inbounds nuw i8, ptr %i.fpu, i64 16
  %i.fto = load i64, ptr %i.ftn, align 8, !noalias !1083
  %i.ftp = mul i64 %i.fto, %2
  %i.ftq = getelementptr inbounds nuw i8, ptr %i.ftm, i64 %i.ftp ; 12 uses
  %i.ftr = load float, ptr %i.ftq, align 4, !noalias !1083
  %i.fts = getelementptr inbounds nuw i8, ptr %i.ftq, i64 4
  %i.ftt = load float, ptr %i.fts, align 4, !noalias !1083
  %i.ftu = getelementptr inbounds nuw i8, ptr %i.ftq, i64 8
  %i.ftv = load float, ptr %i.ftu, align 4, !noalias !1083
  %i.ftw = getelementptr inbounds nuw i8, ptr %i.ftq, i64 12
  %i.ftx = load float, ptr %i.ftw, align 4, !noalias !1083
  %i.fty = getelementptr inbounds nuw i8, ptr %i.ftq, i64 16
  %i.ftz = load float, ptr %i.fty, align 4, !noalias !1083
  %i.fua = getelementptr inbounds nuw i8, ptr %i.ftq, i64 20
  %i.fub = load float, ptr %i.fua, align 4, !noalias !1083
  %i.fuc = getelementptr inbounds nuw i8, ptr %i.ftq, i64 24
  %i.fud = load float, ptr %i.fuc, align 4, !noalias !1083
  %i.fue = getelementptr inbounds nuw i8, ptr %i.ftq, i64 28
  %i.fuf = load float, ptr %i.fue, align 4, !noalias !1083
  %i.fug = getelementptr inbounds nuw i8, ptr %i.ftq, i64 32
  %i.fuh = load float, ptr %i.fug, align 4, !noalias !1083
  %i.fui = getelementptr inbounds nuw i8, ptr %i.ftq, i64 36
  %i.fuj = load float, ptr %i.fui, align 4, !noalias !1083
  %i.fuk = getelementptr inbounds nuw i8, ptr %i.ftq, i64 40
  %i.ful = load float, ptr %i.fuk, align 4, !noalias !1083
  %i.fum = getelementptr inbounds nuw i8, ptr %i.ftq, i64 44
  %i.fun = load float, ptr %i.fum, align 4, !noalias !1083
  %i.fuo = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ftr, i64 0
  %i.fup = insertelement <4 x float> %i.fuo, float %i.ftz, i64 1
  %i.fuq = insertelement <4 x float> %i.fup, float %i.fuh, i64 2
  %i.fur = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ftt, i64 0
  %i.fus = insertelement <4 x float> %i.fur, float %i.fub, i64 1
  %i.fut = insertelement <4 x float> %i.fus, float %i.fuj, i64 2
  %i.fuu = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ftv, i64 0
  %i.fuv = insertelement <4 x float> %i.fuu, float %i.fud, i64 1
  %i.fuw = insertelement <4 x float> %i.fuv, float %i.ful, i64 2
  %i.fux = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ftx, i64 0
  %i.fuy = insertelement <4 x float> %i.fux, float %i.fuf, i64 1
  %i.fuz = insertelement <4 x float> %i.fuy, float %i.fun, i64 2
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit9.i

_ZNK6embree13InstanceArray3l2wEmm.exit9.i:        ; preds = %bb.cs, %bb.cw, %bb.cv, %bb.cu, %bb.ct
  %.sroa.01881.0 = phi <4 x float> [ %i.fqc, %bb.ct ], [ %.sroa.01881.12.vec.insert, %bb.cu ], [ %i.fsq, %bb.cv ], [ %i.fuq, %bb.cw ], [ undef, %bb.cs ] ; 5 uses
  %.sroa.111884.0 = phi <4 x float> [ %i.fqe, %bb.ct ], [ %.sroa.111884.28.vec.insert, %bb.cu ], [ %i.fsx, %bb.cv ], [ %i.fut, %bb.cw ], [ undef, %bb.cs ] ; 6 uses
  %.sroa.201887.0 = phi <4 x float> [ %i.fqg, %bb.ct ], [ %.sroa.201887.44.vec.insert, %bb.cu ], [ %i.fte, %bb.cv ], [ %i.fuw, %bb.cw ], [ undef, %bb.cs ] ; 5 uses
  %.sroa.291890.0 = phi <4 x float> [ %i.fqi, %bb.ct ], [ %i.fsc, %bb.cu ], [ %i.ftl, %bb.cv ], [ %i.fuz, %bb.cw ], [ undef, %bb.cs ] ; 5 uses
  %.sroa.291890.60.vec.extract = extractelement <4 x float> %.sroa.291890.0, i64 3 ; 7 uses
  %.sroa.01881.12.vec.extract = extractelement <4 x float> %.sroa.01881.0, i64 3 ; 7 uses
  %.sroa.111884.28.vec.extract = extractelement <4 x float> %.sroa.111884.0, i64 3 ; 7 uses
  %.sroa.201887.44.vec.extract = extractelement <4 x float> %.sroa.201887.0, i64 3 ; 6 uses
  %.sroa.172013.52.vec.insert = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %.sroa.01881.0, <4 x i32> <i32 5, i32 6, i32 poison, i32 3>
  %.sroa.172013.56.vec.insert = shufflevector <4 x float> %.sroa.172013.52.vec.insert, <4 x float> %.sroa.111884.0, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.fva = fmul float %.sroa.01881.12.vec.extract, %.sroa.01881.12.vec.extract
  %i.fvb = tail call float @llvm.fmuladd.f32(float %.sroa.291890.60.vec.extract, float %.sroa.291890.60.vec.extract, float %i.fva)
  %i.fvc = fneg float %.sroa.111884.28.vec.extract ; 3 uses
  %i.fvd = tail call float @llvm.fmuladd.f32(float %i.fvc, float %.sroa.111884.28.vec.extract, float %i.fvb)
  %i.fve = fneg float %.sroa.201887.44.vec.extract ; 3 uses
  %i.fvf = tail call float @llvm.fmuladd.f32(float %i.fve, float %.sroa.201887.44.vec.extract, float %i.fvd)
  %i.fvg = fmul float %.sroa.201887.44.vec.extract, %.sroa.291890.60.vec.extract
  %i.fvh = tail call float @llvm.fmuladd.f32(float %.sroa.01881.12.vec.extract, float %.sroa.111884.28.vec.extract, float %i.fvg)
  %i.fvi = fmul float %i.fvh, 2.000000e+00
  %i.fvj = fmul float %.sroa.291890.60.vec.extract, %i.fvc
  %i.fvk = tail call float @llvm.fmuladd.f32(float %.sroa.01881.12.vec.extract, float %.sroa.201887.44.vec.extract, float %i.fvj)
  %i.fvl = fmul float %i.fvk, 2.000000e+00
  %i.fvm = fmul float %.sroa.291890.60.vec.extract, %i.fve
  %i.fvn = tail call float @llvm.fmuladd.f32(float %.sroa.01881.12.vec.extract, float %.sroa.111884.28.vec.extract, float %i.fvm)
  %i.fvo = fmul float %i.fvn, 2.000000e+00
  %i.fvp = fneg float %.sroa.01881.12.vec.extract ; 2 uses
  %i.fvq = fmul float %.sroa.01881.12.vec.extract, %i.fvp
  %i.fvr = tail call float @llvm.fmuladd.f32(float %.sroa.291890.60.vec.extract, float %.sroa.291890.60.vec.extract, float %i.fvq) ; 2 uses
  %i.fvs = tail call float @llvm.fmuladd.f32(float %.sroa.111884.28.vec.extract, float %.sroa.111884.28.vec.extract, float %i.fvr)
  %i.fvt = shufflevector <4 x float> %.sroa.291890.0, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 3, i32 3, i32 3>
  %i.fvu = shufflevector <4 x float> %.sroa.01881.0, <4 x float> %.sroa.111884.0, <4 x i32> <i32 poison, i32 3, i32 7, i32 poison>
  %i.fvv = insertelement <4 x float> %i.fvu, float %i.fvs, i64 0
  %i.fvw = insertelement <4 x float> %i.fvv, float %i.fvp, i64 3
end_hunk_0
begin_hunk_1_@_ZNK6embree13InstanceArray15nonlinearBoundsEmRKNS_4BBoxIfEES4_f:bb.a

bb.cx:                                            ; preds = %_ZNK6embree13InstanceArray5validEm.exit133.thread
  switch i32 %i.fpw, label %_ZNK6embree13InstanceArray3l2wEmm.exit.i127 [
    i32 37444, label %bb.cy
    i32 45057, label %bb.cz
    i32 37428, label %bb.da
    i32 37172, label %bb.db
  ]

bb.cy:                                            ; preds = %bb.cx
  %i.fyv = load ptr, ptr %i.fpu, align 8, !noalias !1089
  %i.fyw = getelementptr inbounds nuw i8, ptr %i.fpu, i64 16
  %i.fyx = load i64, ptr %i.fyw, align 8, !noalias !1089
  %i.fyy = mul i64 %i.fyx, %2
  %i.fyz = getelementptr inbounds nuw i8, ptr %i.fyv, i64 %i.fyy ; 4 uses
  %i.fza = load <4 x float>, ptr %i.fyz, align 16, !noalias !1080
  %i.fzb = getelementptr inbounds nuw i8, ptr %i.fyz, i64 16
  %i.fzc = load <4 x float>, ptr %i.fzb, align 16, !noalias !1080
  %i.fzd = getelementptr inbounds nuw i8, ptr %i.fyz, i64 32
  %i.fze = load <4 x float>, ptr %i.fzd, align 16, !noalias !1080
  %i.fzf = getelementptr inbounds nuw i8, ptr %i.fyz, i64 48
  %i.fzg = load <4 x float>, ptr %i.fzf, align 16, !noalias !1080
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit.i127

bb.cz:                                            ; preds = %bb.cx
  %i.fzh = load ptr, ptr %i.fpu, align 8, !noalias !1080
  %i.fzi = getelementptr inbounds nuw i8, ptr %i.fpu, i64 16
  %i.fzj = load i64, ptr %i.fzi, align 8, !noalias !1080
  %i.fzk = mul i64 %i.fzj, %2
  %i.fzl = getelementptr inbounds nuw i8, ptr %i.fzh, i64 %i.fzk ; 12 uses
  %i.fzm = load float, ptr %i.fzl, align 16, !noalias !1080
  %.sroa.01803.0.vec.insert = insertelement <4 x float> poison, float %i.fzm, i64 0
  %i.fzn = getelementptr inbounds nuw i8, ptr %i.fzl, i64 4
  %i.fzo = load float, ptr %i.fzn, align 4, !noalias !1080
  %i.fzp = getelementptr inbounds nuw i8, ptr %i.fzl, i64 8
  %i.fzq = load float, ptr %i.fzp, align 8, !noalias !1080
  %i.fzr = getelementptr inbounds nuw i8, ptr %i.fzl, i64 12
  %i.fzs = load float, ptr %i.fzr, align 4, !noalias !1080
  %i.fzt = insertelement <4 x float> poison, float %i.fzs, i64 0
  %.sroa.101805.16.vec.insert = insertelement <4 x float> %i.fzt, float %i.fzo, i64 1
  %i.fzu = getelementptr inbounds nuw i8, ptr %i.fzl, i64 16
  %i.fzv = load <2 x float>, ptr %i.fzu, align 16, !noalias !1080
  %i.fzw = shufflevector <2 x float> %i.fzv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.181807.36.vec.insert = insertelement <4 x float> %i.fzw, float %i.fzq, i64 2
  %i.fzx = getelementptr inbounds nuw i8, ptr %i.fzl, i64 52
  %i.fzy = load <2 x float>, ptr %i.fzx, align 4, !noalias !1080
  %i.fzz = shufflevector <2 x float> %i.fzy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.01803.8.vec.insert5598 = shufflevector <4 x float> %.sroa.01803.0.vec.insert, <4 x float> %i.fzz, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.gaa = getelementptr inbounds nuw i8, ptr %i.fzl, i64 60
  %i.gab = load float, ptr %i.gaa, align 4, !noalias !1080
  %.sroa.101805.24.vec.insert = insertelement <4 x float> %.sroa.101805.16.vec.insert, float %i.gab, i64 2
  %i.gac = getelementptr inbounds nuw i8, ptr %i.fzl, i64 24
  %i.gad = getelementptr inbounds nuw i8, ptr %i.fzl, i64 36
  %i.gae = getelementptr inbounds nuw i8, ptr %i.fzl, i64 40
  %i.gaf = getelementptr inbounds nuw i8, ptr %i.fzl, i64 44
  %i.gag = getelementptr inbounds nuw i8, ptr %i.fzl, i64 48
  %i.gah = load float, ptr %i.gag, align 16, !noalias !1080 ; 3 uses
  %i.gai = load float, ptr %i.gad, align 4, !noalias !1080 ; 2 uses
  %i.gaj = load <4 x float>, ptr %i.gac, align 8, !noalias !1080
  %i.gak = load float, ptr %i.gaf, align 4, !noalias !1080 ; 3 uses
  %i.gal = load float, ptr %i.gae, align 8, !noalias !1080 ; 3 uses
  %i.gam = fmul float %i.gal, %i.gal
  %i.gan = tail call float @llvm.fmuladd.f32(float %i.gai, float %i.gai, float %i.gam)
  %i.gao = tail call float @llvm.fmuladd.f32(float %i.gak, float %i.gak, float %i.gan)
  %i.gap = tail call float @llvm.fmuladd.f32(float %i.gah, float %i.gah, float %i.gao) ; 2 uses
  %i.gaq = insertelement <4 x float> poison, float %i.gap, i64 0
  %i.gar = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.gaq) ; 3 uses
  %i.gas = extractelement <4 x float> %i.gar, i64 0 ; 2 uses
  %i.gat = fmul float %i.gas, 1.500000e+00
  %i.gau = fmul float %i.gap, 5.000000e-01
  %i.gav = fmul float %i.gas, %i.gau
  %foldExtExtBinop5656 = fmul <4 x float> %i.gar, %i.gar
  %i.gaw = extractelement <4 x float> %foldExtExtBinop5656, i64 0
  %i.gax = fmul float %i.gaw, %i.gav
  %i.gay = fsub float %i.gat, %i.gax              ; 4 uses
  %i.gaz = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.gay, i64 3
  %i.gba = fmul <4 x float> %i.gaj, %i.gaz
  %i.gbb = fmul float %i.gal, %i.gay
  %i.gbc = fmul float %i.gak, %i.gay
  %i.gbd = fmul float %i.gah, %i.gay
  %.sroa.01803.12.vec.insert = insertelement <4 x float> %.sroa.01803.8.vec.insert5598, float %i.gbb, i64 3
  %.sroa.101805.28.vec.insert = insertelement <4 x float> %.sroa.101805.24.vec.insert, float %i.gbc, i64 3
  %.sroa.181807.44.vec.insert = insertelement <4 x float> %.sroa.181807.36.vec.insert, float %i.gbd, i64 3
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit.i127

bb.da:                                            ; preds = %bb.cx
  %i.gbe = load ptr, ptr %i.fpu, align 8, !noalias !1089
  %i.gbf = getelementptr inbounds nuw i8, ptr %i.fpu, i64 16
  %i.gbg = load i64, ptr %i.gbf, align 8, !noalias !1089
  %i.gbh = mul i64 %i.gbg, %2
  %i.gbi = getelementptr inbounds nuw i8, ptr %i.gbe, i64 %i.gbh ; 8 uses
  %i.gbj = getelementptr inbounds nuw i8, ptr %i.gbi, i64 4
  %i.gbk = load <2 x float>, ptr %i.gbj, align 4, !noalias !1080
  %i.gbl = load float, ptr %i.gbi, align 4, !noalias !1080
  %i.gbm = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.gbl, i64 0
  %i.gbn = shufflevector <2 x float> %i.gbk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gbo = shufflevector <4 x float> %i.gbm, <4 x float> %i.gbn, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.gbp = getelementptr inbounds nuw i8, ptr %i.gbi, i64 12
  %i.gbq = getelementptr inbounds nuw i8, ptr %i.gbi, i64 16
  %i.gbr = load <2 x float>, ptr %i.gbq, align 4, !noalias !1080
  %i.gbs = load float, ptr %i.gbp, align 4, !noalias !1080
  %i.gbt = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.gbs, i64 0
  %i.gbu = shufflevector <2 x float> %i.gbr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gbv = shufflevector <4 x float> %i.gbt, <4 x float> %i.gbu, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.gbw = getelementptr inbounds nuw i8, ptr %i.gbi, i64 24
  %i.gbx = getelementptr inbounds nuw i8, ptr %i.gbi, i64 28
  %i.gby = load <2 x float>, ptr %i.gbx, align 4, !noalias !1080
  %i.gbz = load float, ptr %i.gbw, align 4, !noalias !1080
  %i.gca = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.gbz, i64 0
  %i.gcb = shufflevector <2 x float> %i.gby, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gcc = shufflevector <4 x float> %i.gca, <4 x float> %i.gcb, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.gcd = getelementptr inbounds nuw i8, ptr %i.gbi, i64 36
  %i.gce = getelementptr inbounds nuw i8, ptr %i.gbi, i64 40
  %i.gcf = load <2 x float>, ptr %i.gce, align 4, !noalias !1080
  %i.gcg = load float, ptr %i.gcd, align 4, !noalias !1080
  %i.gch = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.gcg, i64 0
  %i.gci = shufflevector <2 x float> %i.gcf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gcj = shufflevector <4 x float> %i.gch, <4 x float> %i.gci, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit.i127

bb.db:                                            ; preds = %bb.cx
  %i.gck = load ptr, ptr %i.fpu, align 8, !noalias !1089
  %i.gcl = getelementptr inbounds nuw i8, ptr %i.fpu, i64 16
  %i.gcm = load i64, ptr %i.gcl, align 8, !noalias !1089
  %i.gcn = mul i64 %i.gcm, %2
  %i.gco = getelementptr inbounds nuw i8, ptr %i.gck, i64 %i.gcn ; 12 uses
  %i.gcp = load float, ptr %i.gco, align 4, !noalias !1089
  %i.gcq = getelementptr inbounds nuw i8, ptr %i.gco, i64 4
  %i.gcr = load float, ptr %i.gcq, align 4, !noalias !1089
  %i.gcs = getelementptr inbounds nuw i8, ptr %i.gco, i64 8
  %i.gct = load float, ptr %i.gcs, align 4, !noalias !1089
  %i.gcu = getelementptr inbounds nuw i8, ptr %i.gco, i64 12
  %i.gcv = load float, ptr %i.gcu, align 4, !noalias !1089
  %i.gcw = getelementptr inbounds nuw i8, ptr %i.gco, i64 16
  %i.gcx = load float, ptr %i.gcw, align 4, !noalias !1089
  %i.gcy = getelementptr inbounds nuw i8, ptr %i.gco, i64 20
  %i.gcz = load float, ptr %i.gcy, align 4, !noalias !1089
  %i.gda = getelementptr inbounds nuw i8, ptr %i.gco, i64 24
  %i.gdb = load float, ptr %i.gda, align 4, !noalias !1089
  %i.gdc = getelementptr inbounds nuw i8, ptr %i.gco, i64 28
  %i.gdd = load float, ptr %i.gdc, align 4, !noalias !1089
  %i.gde = getelementptr inbounds nuw i8, ptr %i.gco, i64 32
  %i.gdf = load float, ptr %i.gde, align 4, !noalias !1089
  %i.gdg = getelementptr inbounds nuw i8, ptr %i.gco, i64 36
  %i.gdh = load float, ptr %i.gdg, align 4, !noalias !1089
  %i.gdi = getelementptr inbounds nuw i8, ptr %i.gco, i64 40
  %i.gdj = load float, ptr %i.gdi, align 4, !noalias !1089
  %i.gdk = getelementptr inbounds nuw i8, ptr %i.gco, i64 44
  %i.gdl = load float, ptr %i.gdk, align 4, !noalias !1089
  %i.gdm = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.gcp, i64 0
  %i.gdn = insertelement <4 x float> %i.gdm, float %i.gcx, i64 1
  %i.gdo = insertelement <4 x float> %i.gdn, float %i.gdf, i64 2
  %i.gdp = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.gcr, i64 0
  %i.gdq = insertelement <4 x float> %i.gdp, float %i.gcz, i64 1
  %i.gdr = insertelement <4 x float> %i.gdq, float %i.gdh, i64 2
  %i.gds = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.gct, i64 0
  %i.gdt = insertelement <4 x float> %i.gds, float %i.gdb, i64 1
  %i.gdu = insertelement <4 x float> %i.gdt, float %i.gdj, i64 2
  %i.gdv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.gcv, i64 0
  %i.gdw = insertelement <4 x float> %i.gdv, float %i.gdd, i64 1
  %i.gdx = insertelement <4 x float> %i.gdw, float %i.gdl, i64 2
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit.i127

_ZNK6embree13InstanceArray3l2wEmm.exit.i127:      ; preds = %bb.cx, %bb.db, %bb.da, %bb.cz, %bb.cy
  %.sroa.01803.0 = phi <4 x float> [ %i.fza, %bb.cy ], [ %.sroa.01803.12.vec.insert, %bb.cz ], [ %i.gbo, %bb.da ], [ %i.gdo, %bb.db ], [ undef, %bb.cx ] ; 3 uses
  %.sroa.101805.0 = phi <4 x float> [ %i.fzc, %bb.cy ], [ %.sroa.101805.28.vec.insert, %bb.cz ], [ %i.gbv, %bb.da ], [ %i.gdr, %bb.db ], [ undef, %bb.cx ] ; 3 uses
  %.sroa.181807.0 = phi <4 x float> [ %i.fze, %bb.cy ], [ %.sroa.181807.44.vec.insert, %bb.cz ], [ %i.gcc, %bb.da ], [ %i.gdu, %bb.db ], [ undef, %bb.cx ] ; 3 uses
  %.sroa.261809.0 = phi <4 x float> [ %i.fzg, %bb.cy ], [ %i.gba, %bb.cz ], [ %i.gcj, %bb.da ], [ %i.gdx, %bb.db ], [ undef, %bb.cx ] ; 3 uses
  br i1 %.not.i131, label %_ZNK6embree13InstanceArray5validEm.exit130, label %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split

_ZNK6embree13InstanceArray5validEm.exit130:       ; preds = %_ZNK6embree13InstanceArray3l2wEmm.exit.i127
  %i.gdy = load ptr, ptr %i.fjv, align 16, !noalias !1092
  %i.gdz = load i64, ptr %i.fjw, align 16, !noalias !1092
  %i.gea = mul i64 %i.gdz, %2
  %i.geb = getelementptr inbounds nuw i8, ptr %i.gdy, i64 %i.gea
  %i.gec = load i32, ptr %i.geb, align 4, !noalias !1092 ; 2 uses
  %.not5050 = icmp eq i32 %i.gec, -1
  br i1 %.not5050, label %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split, label %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split.sink.split

_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split.sink.split: ; preds = %_ZNK6embree13InstanceArray5validEm.exit130, %_ZNK6embree13InstanceArray5validEm.exit
  %.sink = phi i32 [ %i.fyu, %_ZNK6embree13InstanceArray5validEm.exit ], [ %i.gec, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %.sink5552.ph.ph = phi <4 x float> [ %i.fyg, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.181807.0, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %.sink5550.ph.ph = phi <4 x float> [ %i.fyp, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.261809.0, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %.sink5548.ph.ph = phi <4 x float> [ %i.fxy, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.101805.0, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %.sink5544.ph.ph = phi <4 x float> [ %i.fxs, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.01803.0, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %i.ged = load ptr, ptr %i.fjy, align 16, !noalias !1080
  %i.gee = zext i32 %.sink to i64
  %i.gef = getelementptr inbounds nuw [8 x i8], ptr %i.ged, i64 %i.gee
  %i.geg = load ptr, ptr %i.gef, align 8, !noalias !1080
  br label %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split

_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split: ; preds = %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split.sink.split, %_ZNK6embree13InstanceArray3l2wEmm.exit.i127, %_ZNK6embree13InstanceArray3l2wEmm.exit9.i
  %.0.i251.sink5575 = phi ptr [ %i.fib, %_ZNK6embree13InstanceArray3l2wEmm.exit9.i ], [ %i.fib, %_ZNK6embree13InstanceArray3l2wEmm.exit.i127 ], [ %i.geg, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split.sink.split ] ; 4 uses
  %.sink5552.ph = phi <4 x float> [ %i.fyg, %_ZNK6embree13InstanceArray3l2wEmm.exit9.i ], [ %.sroa.181807.0, %_ZNK6embree13InstanceArray3l2wEmm.exit.i127 ], [ %.sink5552.ph.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split.sink.split ]
  %.sink5550.ph = phi <4 x float> [ %i.fyp, %_ZNK6embree13InstanceArray3l2wEmm.exit9.i ], [ %.sroa.261809.0, %_ZNK6embree13InstanceArray3l2wEmm.exit.i127 ], [ %.sink5550.ph.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split.sink.split ]
  %.sink5548.ph = phi <4 x float> [ %i.fxy, %_ZNK6embree13InstanceArray3l2wEmm.exit9.i ], [ %.sroa.101805.0, %_ZNK6embree13InstanceArray3l2wEmm.exit.i127 ], [ %.sink5548.ph.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split.sink.split ]
  %.sink5544.ph = phi <4 x float> [ %i.fxs, %_ZNK6embree13InstanceArray3l2wEmm.exit9.i ], [ %.sroa.01803.0, %_ZNK6embree13InstanceArray3l2wEmm.exit.i127 ], [ %.sink5544.ph.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split.sink.split ]
  %i.geh = load float, ptr %i.fjz, align 4, !noalias !1080 ; 2 uses
  %i.gei = load float, ptr %i.fka, align 16, !noalias !1080
  %i.gej = fsub float %i.gei, %i.geh
  %i.gek = fmul float %i.gej, %16
  %i.gel = load float, ptr %i.fkb, align 8, !noalias !1080
  %i.gem = fdiv float %i.gek, %i.gel
  %i.gen = fadd float %i.geh, %i.gem              ; 2 uses
  %i.geo = getelementptr inbounds nuw i8, ptr %.0.i251.sink5575, i64 16
  %i.gep = getelementptr inbounds nuw i8, ptr %.0.i251.sink5575, i64 48
  %i.geq = fsub float 1.000000e+00, %i.gen
  %i.ger = insertelement <4 x float> poison, float %i.gen, i64 0
  %i.ges = shufflevector <4 x float> %i.ger, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.get = load <4 x float>, ptr %i.gep, align 16, !noalias !1080
  %i.geu = fmul <4 x float> %i.get, %i.ges
  %i.gev = insertelement <4 x float> poison, float %i.geq, i64 0
  %i.gew = shufflevector <4 x float> %i.gev, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gex = load <4 x float>, ptr %i.geo, align 16, !noalias !1080
  %i.gey = fmul <4 x float> %i.gex, %i.gew
  %i.gez = fadd <4 x float> %i.geu, %i.gey
  %i.gfa = getelementptr inbounds nuw i8, ptr %.0.i251.sink5575, i64 32
  %i.gfb = getelementptr inbounds nuw i8, ptr %.0.i251.sink5575, i64 64
  %i.gfc = load <4 x float>, ptr %i.gfb, align 16, !noalias !1080
  %i.gfd = fmul <4 x float> %i.gfc, %i.ges
  %i.gfe = load <4 x float>, ptr %i.gfa, align 16, !noalias !1080
  %i.gff = fmul <4 x float> %i.gfe, %i.gew
  %i.gfg = fadd <4 x float> %i.gfd, %i.gff
  br label %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split

_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split: ; preds = %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split, %_ZNK6embree13InstanceArray5validEm.exit130, %_ZNK6embree13InstanceArray5validEm.exit
  %.sroa.01843.0.sink5555 = phi <4 x float> [ undef, %_ZNK6embree13InstanceArray5validEm.exit ], [ undef, %_ZNK6embree13InstanceArray5validEm.exit130 ], [ %i.gez, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split ] ; 3 uses
  %.sink5552 = phi <4 x float> [ %i.fyg, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.181807.0, %_ZNK6embree13InstanceArray5validEm.exit130 ], [ %.sink5552.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split ] ; 2 uses
  %.sink5550 = phi <4 x float> [ %i.fyp, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.261809.0, %_ZNK6embree13InstanceArray5validEm.exit130 ], [ %.sink5550.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split ] ; 2 uses
  %.sink5548 = phi <4 x float> [ %i.fxy, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.101805.0, %_ZNK6embree13InstanceArray5validEm.exit130 ], [ %.sink5548.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split ] ; 2 uses
  %.sink5544 = phi <4 x float> [ %i.fxs, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.01803.0, %_ZNK6embree13InstanceArray5validEm.exit130 ], [ %.sink5544.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split ] ; 2 uses
  %.sroa.151862.0.sink5539 = phi <4 x float> [ undef, %_ZNK6embree13InstanceArray5validEm.exit ], [ undef, %_ZNK6embree13InstanceArray5validEm.exit130 ], [ %i.gfg, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split ] ; 3 uses
  %i.gfh = shufflevector <4 x float> %.sroa.01843.0.sink5555, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gfi = shufflevector <4 x float> %.sroa.01843.0.sink5555, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gfj = shufflevector <4 x float> %.sroa.01843.0.sink5555, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gfk = fmul <4 x float> %.sink5552, %i.gfj
  %i.gfl = fadd <4 x float> %.sink5550, %i.gfk    ; 2 uses
  %i.gfm = fmul <4 x float> %.sink5548, %i.gfi    ; 2 uses
  %i.gfn = fadd <4 x float> %i.gfm, %i.gfl        ; 2 uses
  %i.gfo = fmul <4 x float> %.sink5544, %i.gfh    ; 4 uses
  %i.gfp = fadd <4 x float> %i.gfo, %i.gfn        ; 2 uses
  %i.gfq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.gfp)
  %i.gfr = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.gfp)
  %i.gfs = shufflevector <4 x float> %.sroa.151862.0.sink5539, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gft = fmul <4 x float> %.sink5552, %i.gfs
  %i.gfu = fadd <4 x float> %.sink5550, %i.gft    ; 2 uses
  %i.gfv = fadd <4 x float> %i.gfm, %i.gfu        ; 2 uses
  %i.gfw = fadd <4 x float> %i.gfo, %i.gfv        ; 2 uses
  %i.gfx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gfq, <4 x float> %i.gfw)
  %i.gfy = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gfr, <4 x float> %i.gfw)
  %i.gfz = shufflevector <4 x float> %.sroa.151862.0.sink5539, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gga = fmul <4 x float> %.sink5548, %i.gfz    ; 2 uses
  %i.ggb = fadd <4 x float> %i.gga, %i.gfl        ; 2 uses
  %i.ggc = fadd <4 x float> %i.gfo, %i.ggb        ; 2 uses
  %i.ggd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gfx, <4 x float> %i.ggc)
  %i.gge = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gfy, <4 x float> %i.ggc)
  %i.ggf = fadd <4 x float> %i.gga, %i.gfu        ; 2 uses
  %i.ggg = fadd <4 x float> %i.gfo, %i.ggf        ; 2 uses
  %i.ggh = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ggd, <4 x float> %i.ggg)
  %i.ggi = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gge, <4 x float> %i.ggg)
  %i.ggj = shufflevector <4 x float> %.sroa.151862.0.sink5539, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ggk = fmul <4 x float> %.sink5544, %i.ggj    ; 4 uses
  %i.ggl = fadd <4 x float> %i.ggk, %i.gfn        ; 2 uses
  %i.ggm = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ggh, <4 x float> %i.ggl)
  %i.ggn = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ggi, <4 x float> %i.ggl)
  %i.ggo = fadd <4 x float> %i.ggk, %i.gfv        ; 2 uses
  %i.ggp = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ggm, <4 x float> %i.ggo)
  %i.ggq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ggn, <4 x float> %i.ggo)
  %i.ggr = fadd <4 x float> %i.ggk, %i.ggb        ; 2 uses
  %i.ggs = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ggp, <4 x float> %i.ggr)
  %i.ggt = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ggq, <4 x float> %i.ggr)
  %i.ggu = fadd <4 x float> %i.ggk, %i.ggf        ; 2 uses
  %i.ggv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ggs, <4 x float> %i.ggu)
  %i.ggw = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ggt, <4 x float> %i.ggu)
  br label %_ZNK6embree13InstanceArray6boundsEmm.exit

_ZNK6embree13InstanceArray6boundsEmm.exit:        ; preds = %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split, %_ZNK6embree13InstanceArray5validEm.exit133
  %.sroa.37.0 = phi <4 x float> [ undef, %_ZNK6embree13InstanceArray5validEm.exit133 ], [ %i.ggw, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split ]
  %.sroa.0275.0 = phi <4 x float> [ undef, %_ZNK6embree13InstanceArray5validEm.exit133 ], [ %i.ggv, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split ]
  %i.ggx = fsub <4 x float> %.sroa.0275.0, %i.fph
  %i.ggy = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ggx, <4 x float> zeroinitializer) ; 2 uses
  %i.ggz = fsub <4 x float> %.sroa.37.0, %i.fpk
  %i.gha = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ggz, <4 x float> zeroinitializer) ; 2 uses
  %i.ghb = fadd <4 x float> %.sroa.0352.05063, %i.ggy ; 2 uses
  %i.ghc = fadd <4 x float> %.sroa.0309.05065, %i.ggy ; 2 uses
  %i.ghd = fadd <4 x float> %.sroa.44374.05062, %i.gha ; 2 uses
  %i.ghe = fadd <4 x float> %.sroa.44.05064, %i.gha ; 2 uses
  %18 = add nuw nsw i32 %.0915066, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %18, %i.ag
  br i1 %exitcond.not, label %._crit_edge, label %bb.cr, !llvm.loop !1095

._crit_edge5076:                                  ; preds = %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel, %._crit_edge
  %.sroa.7.0.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge ], [ %i.fot, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ], [ %i.glb, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ] ; 2 uses
  %.sroa.0262.0.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge ], [ %i.for, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ], [ %i.gkz, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ] ; 2 uses
  %i.ghf = fadd <4 x float> %.sroa.0352.0.lcssa, %.sroa.0262.0.lcssa
  %i.ghg = fadd <4 x float> %.sroa.0309.0.lcssa, %.sroa.0262.0.lcssa
  %i.ghh = fadd <4 x float> %.sroa.44374.0.lcssa, %.sroa.7.0.lcssa
  %i.ghi = fadd <4 x float> %.sroa.44.0.lcssa, %.sroa.7.0.lcssa
  store <4 x float> %i.ghf, ptr %0, align 16
  store <4 x float> %i.ghh, ptr %i.a, align 16
  store <4 x float> %i.ghg, ptr %i.b, align 16
  store <4 x float> %i.ghi, ptr %i.c, align 16
  br label %bb.de

.peel.next:                                       ; preds = %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123
  %indvars.iv5085.in = phi i64 [ %indvars.iv5085, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ], [ %i.fkx, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ] ; 3 uses
  %i.ghj = phi i32 [ %i.gle, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ], [ %i.fow, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ]
  %i.ghk = phi float [ %i.glc, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ], [ %i.fou, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ] ; 2 uses
  %.sroa.0262.05072 = phi <4 x float> [ %i.gkz, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ], [ %i.for, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ]
  %.sroa.7.05071 = phi <4 x float> [ %i.glb, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ], [ %i.fot, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ]
  %indvars.iv5085 = add nuw nsw i64 %indvars.iv5085.in, 1 ; 4 uses
  %i.ghl = trunc nuw nsw i64 %indvars.iv5085 to i32
  %i.ghm = trunc nuw nsw i64 %indvars.iv5085.in to i32
  %i.ghn = uitofp nneg i32 %i.ghl to float        ; 2 uses
  %i.gho = uitofp nneg i32 %i.ghm to float        ; 2 uses
  %i.ghp = insertelement <2 x float> poison, float %i.gho, i64 0
  %i.ghq = insertelement <2 x float> %i.ghp, float %i.ghn, i64 1
  %i.ghr = fdiv <2 x float> %i.ghq, %i.flf
  %i.ghs = fsub <2 x float> %i.ghr, %i.flh
  %i.ght = fdiv <2 x float> %i.ghs, %i.flk        ; 3 uses
  %i.ghu = zext i32 %i.ghj to i64
  %i.ghv = icmp eq i64 %indvars.iv5085, %i.ghu
  %i.ghw = select i1 %i.ghv, float %i.fkl, float 1.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.ghx = load ptr, ptr %i.fkm, align 8, !noalias !1002 ; 3 uses
  %.not.i140 = icmp eq ptr %i.ghx, null           ; 2 uses
  br i1 %.not.i140, label %_ZNK6embree13InstanceArray5validEm.exit142, label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124

_ZNK6embree13InstanceArray5validEm.exit142:       ; preds = %.peel.next
  %i.ghy = load ptr, ptr %i.fkn, align 16, !noalias !1002
  %i.ghz = load i64, ptr %i.fko, align 16, !noalias !1002
  %i.gia = mul i64 %i.ghz, %2
  %i.gib = getelementptr inbounds nuw i8, ptr %i.ghy, i64 %i.gia
  %i.gic = load i32, ptr %i.gib, align 4, !noalias !1002 ; 2 uses
  %.not5047 = icmp eq i32 %i.gic, -1
  br i1 %.not5047, label %_ZNK6embree13InstanceArray5validEm.exit145.thread, label %bb.dc

_ZNK6embree13InstanceArray5validEm.exit145.thread: ; preds = %_ZNK6embree13InstanceArray5validEm.exit142
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  br label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123

bb.dc:                                            ; preds = %_ZNK6embree13InstanceArray5validEm.exit142
  %i.gid = load ptr, ptr %i.fkp, align 16, !noalias !1002
  %i.gie = zext i32 %i.gic to i64
  %i.gif = getelementptr inbounds nuw [8 x i8], ptr %i.gid, i64 %i.gie
  %i.gig = load ptr, ptr %i.gif, align 8, !noalias !1002
  br label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124

_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124: ; preds = %bb.dc, %.peel.next
  %.0.i254 = phi ptr [ %i.gig, %bb.dc ], [ %i.ghx, %.peel.next ] ; 4 uses
  %i.gih = load float, ptr %i.fkq, align 4, !noalias !1002 ; 3 uses
  %i.gii = load float, ptr %i.fkr, align 16, !noalias !1002
  %i.gij = fsub float %i.gii, %i.gih              ; 2 uses
  %i.gik = fmul float %i.gij, %i.gho
  %i.gil = fdiv float %i.gik, %i.ghk
  %i.gim = fadd float %i.gih, %i.gil              ; 2 uses
  %i.gin = getelementptr inbounds nuw i8, ptr %.0.i254, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  %i.gio = getelementptr inbounds nuw i8, ptr %.0.i254, i64 48
  %i.gip = fsub float 1.000000e+00, %i.gim
  %i.giq = insertelement <4 x float> poison, float %i.gim, i64 0
  %i.gir = shufflevector <4 x float> %i.giq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gis = load <4 x float>, ptr %i.gio, align 16, !noalias !1098
  %i.git = fmul <4 x float> %i.gis, %i.gir
  %i.giu = insertelement <4 x float> poison, float %i.gip, i64 0
  %i.giv = shufflevector <4 x float> %i.giu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.giw = load <4 x float>, ptr %i.gin, align 16, !noalias !1099
  %i.gix = fmul <4 x float> %i.giw, %i.giv
  %i.giy = fadd <4 x float> %i.git, %i.gix
  %i.giz = getelementptr inbounds nuw i8, ptr %.0.i254, i64 32
  %i.gja = getelementptr inbounds nuw i8, ptr %.0.i254, i64 64
  %i.gjb = load <4 x float>, ptr %i.gja, align 16, !noalias !1100
  %i.gjc = fmul <4 x float> %i.gjb, %i.gir
  %i.gjd = load <4 x float>, ptr %i.giz, align 16, !noalias !1101
  %i.gje = fmul <4 x float> %i.gjd, %i.giv
  %i.gjf = fadd <4 x float> %i.gjc, %i.gje
  store <4 x float> %i.giy, ptr %12, align 16, !alias.scope !1096
  store <4 x float> %i.gjf, ptr %i.fks, align 16, !alias.scope !1096
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  br i1 %.not.i140, label %_ZNK6embree13InstanceArray5validEm.exit145, label %_ZNK6embree13InstanceArray9getObjectEm.exit258

_ZNK6embree13InstanceArray5validEm.exit145:       ; preds = %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124
  %.pre5132.a = load ptr, ptr %i.fkn, align 16, !noalias !1038
  %.pre5133 = load i64, ptr %i.fko, align 16, !noalias !1038
  %.pre5196 = mul i64 %.pre5133, %2
  %.phi.trans.insert5218 = getelementptr inbounds nuw i8, ptr %.pre5132.a, i64 %.pre5196
  %.pre5219 = load i32, ptr %.phi.trans.insert5218, align 4, !noalias !1038 ; 2 uses
  %.not5048 = icmp eq i32 %.pre5219, -1
  br i1 %.not5048, label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123, label %bb.dd

bb.dd:                                            ; preds = %_ZNK6embree13InstanceArray5validEm.exit145
  %i.gjg = load ptr, ptr %i.fkp, align 16, !noalias !1038
  %i.gjh = zext i32 %.pre5219 to i64
  %i.gji = getelementptr inbounds nuw [8 x i8], ptr %i.gjg, i64 %i.gjh
  %i.gjj = load ptr, ptr %i.gji, align 8, !noalias !1038
  %.pre5134 = load float, ptr %i.fkq, align 4, !noalias !1038 ; 2 uses
  %.pre5135 = load float, ptr %i.fkr, align 16, !noalias !1038
  %.pre5240 = fsub float %.pre5135, %.pre5134
  br label %_ZNK6embree13InstanceArray9getObjectEm.exit258

_ZNK6embree13InstanceArray9getObjectEm.exit258:   ; preds = %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124, %bb.dd
  %.pre-phi5241 = phi float [ %i.gij, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124 ], [ %.pre5240, %bb.dd ]
  %i.gjk = phi float [ %i.gih, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124 ], [ %.pre5134, %bb.dd ]
  %.0.i257 = phi ptr [ %i.ghx, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124 ], [ %i.gjj, %bb.dd ] ; 4 uses
  %i.gjl = fmul float %.pre-phi5241, %i.ghn
  %i.gjm = fdiv float %i.gjl, %i.ghk
  %i.gjn = fadd float %i.gjk, %i.gjm              ; 2 uses
  %i.gjo = getelementptr inbounds nuw i8, ptr %.0.i257, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  %i.gjp = getelementptr inbounds nuw i8, ptr %.0.i257, i64 48
  %i.gjq = fsub float 1.000000e+00, %i.gjn
  %i.gjr = insertelement <4 x float> poison, float %i.gjn, i64 0
  %i.gjs = shufflevector <4 x float> %i.gjr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gjt = load <4 x float>, ptr %i.gjp, align 16, !noalias !1104
  %i.gju = fmul <4 x float> %i.gjt, %i.gjs
  %i.gjv = insertelement <4 x float> poison, float %i.gjq, i64 0
  %i.gjw = shufflevector <4 x float> %i.gjv, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gjx = load <4 x float>, ptr %i.gjo, align 16, !noalias !1105
  %i.gjy = fmul <4 x float> %i.gjx, %i.gjw
  %i.gjz = fadd <4 x float> %i.gju, %i.gjy
  %i.gka = getelementptr inbounds nuw i8, ptr %.0.i257, i64 32
  %i.gkb = getelementptr inbounds nuw i8, ptr %.0.i257, i64 64
  %i.gkc = load <4 x float>, ptr %i.gkb, align 16, !noalias !1106
  %i.gkd = fmul <4 x float> %i.gkc, %i.gjs
  %i.gke = load <4 x float>, ptr %i.gka, align 16, !noalias !1107
  %i.gkf = fmul <4 x float> %i.gke, %i.gjw
  %i.gkg = fadd <4 x float> %i.gkd, %i.gkf
  store <4 x float> %i.gjz, ptr %13, align 16, !alias.scope !1102
  store <4 x float> %i.gkg, ptr %i.fkt, align 16, !alias.scope !1102
  br label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123

_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123: ; preds = %_ZNK6embree13InstanceArray5validEm.exit145.thread, %_ZNK6embree13InstanceArray5validEm.exit145, %_ZNK6embree13InstanceArray9getObjectEm.exit258
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.gkh = fsub <2 x float> splat (float 1.000000e+00), %i.ght ; 2 uses
  %i.gki = shufflevector <2 x float> %i.ght, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gkj = fmul <4 x float> %.sroa.0309.0.lcssa, %i.gki
  %i.gkk = shufflevector <2 x float> %i.gkh, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gkl = fmul <4 x float> %.sroa.0352.0.lcssa, %i.gkk
  %i.gkm = fadd <4 x float> %i.gkj, %i.gkl
  %i.gkn = fmul <4 x float> %.sroa.44.0.lcssa, %i.gki
  %i.gko = fmul <4 x float> %.sroa.44374.0.lcssa, %i.gkk
  %i.gkp = fadd <4 x float> %i.gkn, %i.gko
  store <4 x float> %i.gkm, ptr %14, align 16
  store <4 x float> %i.gkp, ptr %i.fku, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.gkq = shufflevector <2 x float> %i.ght, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.gkr = fmul <4 x float> %.sroa.0309.0.lcssa, %i.gkq
  %i.gks = shufflevector <2 x float> %i.gkh, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.gkt = fmul <4 x float> %.sroa.0352.0.lcssa, %i.gks
  %i.gku = fadd <4 x float> %i.gkr, %i.gkt
  %i.gkv = fmul <4 x float> %.sroa.44.0.lcssa, %i.gkq
  %i.gkw = fmul <4 x float> %.sroa.44374.0.lcssa, %i.gks
  %i.gkx = fadd <4 x float> %i.gkv, %i.gkw
  store <4 x float> %i.gku, ptr %15, align 16
  store <4 x float> %i.gkx, ptr %i.fkv, align 16
  call void @_ZNK6embree13InstanceArray12boundSegmentEmmRKNS_4BBoxINS_6Vec3faEEES5_S5_S5_ff(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BBox.13") align 16 %11, ptr noundef nonnull align 16 dereferenceable(200) %1, i64 noundef %2, i64 noundef %indvars.iv5085.in, ptr noundef nonnull align 16 dereferenceable(32) %12, ptr noundef nonnull align 16 dereferenceable(32) %13, ptr noundef nonnull align 16 dereferenceable(32) %14, ptr noundef nonnull align 16 dereferenceable(32) %15, float noundef 0.000000e+00, float noundef %i.ghw)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.gky = load <4 x float>, ptr %11, align 16, !noalias !1074
  %i.gkz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0262.05072, <4 x float> %i.gky) ; 2 uses
  %i.gla = load <4 x float>, ptr %i.fkw, align 16, !noalias !1077
  %i.glb = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.7.05071, <4 x float> %i.gla) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.glc = load float, ptr %i.fkd, align 8        ; 2 uses
  %i.gld = fptosi float %i.glc to i32
  %i.gle = tail call noundef i32 @llvm.smin.i32(i32 %i.gld, i32 %i.ag) ; 2 uses
  %i.glf = sext i32 %i.gle to i64
  %.not.not = icmp slt i64 %indvars.iv5085, %i.glf
  br i1 %.not.not, label %.peel.next, label %._crit_edge5076, !llvm.loop !1108

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
end_hunk_1
