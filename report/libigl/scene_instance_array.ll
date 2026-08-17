inline.NumInlined: 398
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK6embree13InstanceArray15nonlinearBoundsEmRKNS_4BBoxIfEES4_f:bb.a
  %i.gfm = load float, ptr %i.gfl, align 4, !noalias !1121
  %i.gfn = getelementptr inbounds nuw i8, ptr %i.gfb, i64 24
  %i.gfo = load float, ptr %i.gfn, align 4, !noalias !1121
  %i.gfp = getelementptr inbounds nuw i8, ptr %i.gfb, i64 28
  %i.gfq = load float, ptr %i.gfp, align 4, !noalias !1121
  %i.gfr = getelementptr inbounds nuw i8, ptr %i.gfb, i64 32
  %i.gfs = load float, ptr %i.gfr, align 4, !noalias !1121
  %i.gft = getelementptr inbounds nuw i8, ptr %i.gfb, i64 36
  %i.gfu = load float, ptr %i.gft, align 4, !noalias !1121
  %i.gfv = getelementptr inbounds nuw i8, ptr %i.gfb, i64 40
  %i.gfw = load float, ptr %i.gfv, align 4, !noalias !1121
  %i.gfx = getelementptr inbounds nuw i8, ptr %i.gfb, i64 44
  %i.gfy = load float, ptr %i.gfx, align 4, !noalias !1121
  %i.gfz = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.gfc, i64 0
  %i.gga = insertelement <4 x float> %i.gfz, float %i.gfk, i64 1
  %i.ggb = insertelement <4 x float> %i.gga, float %i.gfs, i64 2
  %i.ggc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.gfe, i64 0
  %i.ggd = insertelement <4 x float> %i.ggc, float %i.gfm, i64 1
  %i.gge = insertelement <4 x float> %i.ggd, float %i.gfu, i64 2
  %i.ggf = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.gfg, i64 0
  %i.ggg = insertelement <4 x float> %i.ggf, float %i.gfo, i64 1
  %i.ggh = insertelement <4 x float> %i.ggg, float %i.gfw, i64 2
  %i.ggi = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.gfi, i64 0
  %i.ggj = insertelement <4 x float> %i.ggi, float %i.gfq, i64 1
  %i.ggk = insertelement <4 x float> %i.ggj, float %i.gfy, i64 2
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit.i127

_ZNK6embree13InstanceArray3l2wEmm.exit.i127:      ; preds = %bb.cy, %bb.dc, %bb.db, %bb.da, %bb.cz
  %.sroa.01803.1 = phi <4 x float> [ %i.gbn, %bb.cz ], [ %.sroa.01803.12.vec.insert, %bb.da ], [ %i.geb, %bb.db ], [ %i.ggb, %bb.dc ], [ %.sroa.01803.05070, %bb.cy ] ; 4 uses
  %.sroa.101805.1 = phi <4 x float> [ %i.gbp, %bb.cz ], [ %.sroa.101805.28.vec.insert, %bb.da ], [ %i.gei, %bb.db ], [ %i.gge, %bb.dc ], [ %.sroa.101805.05071, %bb.cy ] ; 4 uses
  %.sroa.181807.1 = phi <4 x float> [ %i.gbr, %bb.cz ], [ %.sroa.181807.44.vec.insert, %bb.da ], [ %i.gep, %bb.db ], [ %i.ggh, %bb.dc ], [ %.sroa.181807.05072, %bb.cy ] ; 4 uses
  %.sroa.261809.1 = phi <4 x float> [ %i.gbt, %bb.cz ], [ %i.gdn, %bb.da ], [ %i.gew, %bb.db ], [ %i.ggk, %bb.dc ], [ %.sroa.261809.05073, %bb.cy ] ; 4 uses
  br i1 %.not.i131, label %_ZNK6embree13InstanceArray5validEm.exit130, label %_ZNK6embree13InstanceArray9getObjectEm.exit252

_ZNK6embree13InstanceArray5validEm.exit130:       ; preds = %_ZNK6embree13InstanceArray3l2wEmm.exit.i127
  %i.ggl = load ptr, ptr %i.flb, align 16, !noalias !1124
  %i.ggm = load i64, ptr %i.flc, align 16, !noalias !1124
  %i.ggn = mul i64 %i.ggm, %2
  %i.ggo = getelementptr inbounds nuw i8, ptr %i.ggl, i64 %i.ggn
  %i.ggp = load i32, ptr %i.ggo, align 4, !noalias !1124 ; 2 uses
  %.not5050 = icmp eq i32 %i.ggp, -1
  br i1 %.not5050, label %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split, label %bb.dd

bb.dd:                                            ; preds = %_ZNK6embree13InstanceArray5validEm.exit130
  %i.ggq = load ptr, ptr %i.fle, align 16, !noalias !1124
  %i.ggr = zext i32 %i.ggp to i64
  %i.ggs = getelementptr inbounds nuw [8 x i8], ptr %i.ggq, i64 %i.ggr
  %i.ggt = load ptr, ptr %i.ggs, align 8, !noalias !1124
  br label %_ZNK6embree13InstanceArray9getObjectEm.exit252

_ZNK6embree13InstanceArray9getObjectEm.exit252:   ; preds = %_ZNK6embree13InstanceArray3l2wEmm.exit.i127, %bb.dd
  %.0.i251 = phi ptr [ %i.ggt, %bb.dd ], [ %i.fjh, %_ZNK6embree13InstanceArray3l2wEmm.exit.i127 ] ; 4 uses
  %i.ggu = load float, ptr %i.flf, align 4, !noalias !1124 ; 2 uses
  %i.ggv = load float, ptr %i.flg, align 16, !noalias !1124
  %i.ggw = fsub float %i.ggv, %i.ggu
  %i.ggx = fmul float %i.ggw, %i.fqf
  %i.ggy = load float, ptr %i.flh, align 8, !noalias !1124
  %i.ggz = fdiv float %i.ggx, %i.ggy
  %i.gha = fadd float %i.ggu, %i.ggz              ; 2 uses
  %i.ghb = getelementptr inbounds nuw i8, ptr %.0.i251, i64 16
  %i.ghc = getelementptr inbounds nuw i8, ptr %.0.i251, i64 48
  %i.ghd = fsub float 1.000000e+00, %i.gha
  %i.ghe = insertelement <4 x float> poison, float %i.gha, i64 0
  %i.ghf = shufflevector <4 x float> %i.ghe, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ghg = load <4 x float>, ptr %i.ghc, align 16, !noalias !1127
  %i.ghh = fmul <4 x float> %i.ghg, %i.ghf
  %i.ghi = insertelement <4 x float> poison, float %i.ghd, i64 0
  %i.ghj = shufflevector <4 x float> %i.ghi, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ghk = load <4 x float>, ptr %i.ghb, align 16, !noalias !1138
  %i.ghl = fmul <4 x float> %i.ghk, %i.ghj
  %i.ghm = fadd <4 x float> %i.ghh, %i.ghl        ; 2 uses
  %i.ghn = getelementptr inbounds nuw i8, ptr %.0.i251, i64 32
  %i.gho = getelementptr inbounds nuw i8, ptr %.0.i251, i64 64
  %i.ghp = load <4 x float>, ptr %i.gho, align 16, !noalias !1145
  %i.ghq = fmul <4 x float> %i.ghp, %i.ghf
  %i.ghr = load <4 x float>, ptr %i.ghn, align 16, !noalias !1152
  %i.ghs = fmul <4 x float> %i.ghr, %i.ghj
  %i.ght = fadd <4 x float> %i.ghq, %i.ghs        ; 2 uses
  br label %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split

_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split: ; preds = %_ZNK6embree13InstanceArray9getObjectEm.exit252, %_ZNK6embree13InstanceArray5validEm.exit130, %_ZNK6embree13InstanceArray9getObjectEm.exit249, %_ZNK6embree13InstanceArray5validEm.exit
  %.sroa.01843.1.sink5569 = phi <4 x float> [ %.sroa.01843.05074, %_ZNK6embree13InstanceArray5validEm.exit ], [ %i.gba, %_ZNK6embree13InstanceArray9getObjectEm.exit249 ], [ %i.ghm, %_ZNK6embree13InstanceArray9getObjectEm.exit252 ], [ %.sroa.01765.05066, %_ZNK6embree13InstanceArray5validEm.exit130 ] ; 3 uses
  %.sink5566 = phi <4 x float> [ %i.fzp, %_ZNK6embree13InstanceArray5validEm.exit ], [ %i.fzp, %_ZNK6embree13InstanceArray9getObjectEm.exit249 ], [ %.sroa.181807.1, %_ZNK6embree13InstanceArray9getObjectEm.exit252 ], [ %.sroa.181807.1, %_ZNK6embree13InstanceArray5validEm.exit130 ] ; 2 uses
  %.sink5564 = phi <4 x float> [ %i.fzy, %_ZNK6embree13InstanceArray5validEm.exit ], [ %i.fzy, %_ZNK6embree13InstanceArray9getObjectEm.exit249 ], [ %.sroa.261809.1, %_ZNK6embree13InstanceArray9getObjectEm.exit252 ], [ %.sroa.261809.1, %_ZNK6embree13InstanceArray5validEm.exit130 ] ; 2 uses
  %.sink5562 = phi <4 x float> [ %i.fzh, %_ZNK6embree13InstanceArray5validEm.exit ], [ %i.fzh, %_ZNK6embree13InstanceArray9getObjectEm.exit249 ], [ %.sroa.101805.1, %_ZNK6embree13InstanceArray9getObjectEm.exit252 ], [ %.sroa.101805.1, %_ZNK6embree13InstanceArray5validEm.exit130 ] ; 2 uses
  %.sink5558 = phi <4 x float> [ %i.fzb, %_ZNK6embree13InstanceArray5validEm.exit ], [ %i.fzb, %_ZNK6embree13InstanceArray9getObjectEm.exit249 ], [ %.sroa.01803.1, %_ZNK6embree13InstanceArray9getObjectEm.exit252 ], [ %.sroa.01803.1, %_ZNK6embree13InstanceArray5validEm.exit130 ] ; 2 uses
  %.sroa.151862.1.sink5553 = phi <4 x float> [ %.sroa.151862.05075, %_ZNK6embree13InstanceArray5validEm.exit ], [ %i.gbh, %_ZNK6embree13InstanceArray9getObjectEm.exit249 ], [ %i.ght, %_ZNK6embree13InstanceArray9getObjectEm.exit252 ], [ %.sroa.151784.05067, %_ZNK6embree13InstanceArray5validEm.exit130 ] ; 3 uses
  %.sroa.01765.2.ph = phi <4 x float> [ %.sroa.01765.05066, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.01765.05066, %_ZNK6embree13InstanceArray9getObjectEm.exit249 ], [ %i.ghm, %_ZNK6embree13InstanceArray9getObjectEm.exit252 ], [ %.sroa.01765.05066, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %.sroa.151784.2.ph = phi <4 x float> [ %.sroa.151784.05067, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.151784.05067, %_ZNK6embree13InstanceArray9getObjectEm.exit249 ], [ %i.ght, %_ZNK6embree13InstanceArray9getObjectEm.exit252 ], [ %.sroa.151784.05067, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %.sroa.01803.2.ph = phi <4 x float> [ %.sroa.01803.05070, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.01803.05070, %_ZNK6embree13InstanceArray9getObjectEm.exit249 ], [ %.sroa.01803.1, %_ZNK6embree13InstanceArray9getObjectEm.exit252 ], [ %.sroa.01803.1, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %.sroa.101805.2.ph = phi <4 x float> [ %.sroa.101805.05071, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.101805.05071, %_ZNK6embree13InstanceArray9getObjectEm.exit249 ], [ %.sroa.101805.1, %_ZNK6embree13InstanceArray9getObjectEm.exit252 ], [ %.sroa.101805.1, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %.sroa.181807.2.ph = phi <4 x float> [ %.sroa.181807.05072, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.181807.05072, %_ZNK6embree13InstanceArray9getObjectEm.exit249 ], [ %.sroa.181807.1, %_ZNK6embree13InstanceArray9getObjectEm.exit252 ], [ %.sroa.181807.1, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %.sroa.261809.2.ph = phi <4 x float> [ %.sroa.261809.05073, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.261809.05073, %_ZNK6embree13InstanceArray9getObjectEm.exit249 ], [ %.sroa.261809.1, %_ZNK6embree13InstanceArray9getObjectEm.exit252 ], [ %.sroa.261809.1, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %.sroa.01843.2.ph = phi <4 x float> [ %.sroa.01843.05074, %_ZNK6embree13InstanceArray5validEm.exit ], [ %i.gba, %_ZNK6embree13InstanceArray9getObjectEm.exit249 ], [ %.sroa.01843.05074, %_ZNK6embree13InstanceArray9getObjectEm.exit252 ], [ %.sroa.01843.05074, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %.sroa.151862.2.ph = phi <4 x float> [ %.sroa.151862.05075, %_ZNK6embree13InstanceArray5validEm.exit ], [ %i.gbh, %_ZNK6embree13InstanceArray9getObjectEm.exit249 ], [ %.sroa.151862.05075, %_ZNK6embree13InstanceArray9getObjectEm.exit252 ], [ %.sroa.151862.05075, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %.sroa.01881.2.ph = phi <4 x float> [ %.sroa.01881.1, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.01881.1, %_ZNK6embree13InstanceArray9getObjectEm.exit249 ], [ %.sroa.01881.05076, %_ZNK6embree13InstanceArray9getObjectEm.exit252 ], [ %.sroa.01881.05076, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %.sroa.111884.2.ph = phi <4 x float> [ %.sroa.111884.1, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.111884.1, %_ZNK6embree13InstanceArray9getObjectEm.exit249 ], [ %.sroa.111884.05077, %_ZNK6embree13InstanceArray9getObjectEm.exit252 ], [ %.sroa.111884.05077, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %.sroa.201887.2.ph = phi <4 x float> [ %.sroa.201887.1, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.201887.1, %_ZNK6embree13InstanceArray9getObjectEm.exit249 ], [ %.sroa.201887.05078, %_ZNK6embree13InstanceArray9getObjectEm.exit252 ], [ %.sroa.201887.05078, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %.sroa.291890.2.ph = phi <4 x float> [ %.sroa.291890.1, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.291890.1, %_ZNK6embree13InstanceArray9getObjectEm.exit249 ], [ %.sroa.291890.05079, %_ZNK6embree13InstanceArray9getObjectEm.exit252 ], [ %.sroa.291890.05079, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %i.ghu = shufflevector <4 x float> %.sroa.01843.1.sink5569, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ghv = shufflevector <4 x float> %.sroa.01843.1.sink5569, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ghw = shufflevector <4 x float> %.sroa.01843.1.sink5569, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ghx = fmul <4 x float> %.sink5566, %i.ghw
  %i.ghy = fadd <4 x float> %.sink5564, %i.ghx    ; 2 uses
  %i.ghz = fmul <4 x float> %.sink5562, %i.ghv    ; 2 uses
  %i.gia = fadd <4 x float> %i.ghz, %i.ghy        ; 2 uses
  %i.gib = fmul <4 x float> %.sink5558, %i.ghu    ; 4 uses
  %i.gic = fadd <4 x float> %i.gib, %i.gia        ; 2 uses
  %i.gid = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.gic)
  %i.gie = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.gic)
  %i.gif = shufflevector <4 x float> %.sroa.151862.1.sink5553, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gig = fmul <4 x float> %.sink5566, %i.gif
  %i.gih = fadd <4 x float> %.sink5564, %i.gig    ; 2 uses
  %i.gii = fadd <4 x float> %i.ghz, %i.gih        ; 2 uses
  %i.gij = fadd <4 x float> %i.gib, %i.gii        ; 2 uses
  %i.gik = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gid, <4 x float> %i.gij)
  %i.gil = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gie, <4 x float> %i.gij)
  %i.gim = shufflevector <4 x float> %.sroa.151862.1.sink5553, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gin = fmul <4 x float> %.sink5562, %i.gim    ; 2 uses
  %i.gio = fadd <4 x float> %i.gin, %i.ghy        ; 2 uses
  %i.gip = fadd <4 x float> %i.gib, %i.gio        ; 2 uses
  %i.giq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gik, <4 x float> %i.gip)
  %i.gir = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gil, <4 x float> %i.gip)
  %i.gis = fadd <4 x float> %i.gin, %i.gih        ; 2 uses
  %i.git = fadd <4 x float> %i.gib, %i.gis        ; 2 uses
  %i.giu = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.giq, <4 x float> %i.git)
  %i.giv = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gir, <4 x float> %i.git)
  %i.giw = shufflevector <4 x float> %.sroa.151862.1.sink5553, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gix = fmul <4 x float> %.sink5558, %i.giw    ; 4 uses
  %i.giy = fadd <4 x float> %i.gix, %i.gia        ; 2 uses
  %i.giz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.giu, <4 x float> %i.giy)
  %i.gja = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.giv, <4 x float> %i.giy)
  %i.gjb = fadd <4 x float> %i.gix, %i.gii        ; 2 uses
  %i.gjc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.giz, <4 x float> %i.gjb)
  %i.gjd = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gja, <4 x float> %i.gjb)
  %i.gje = fadd <4 x float> %i.gix, %i.gio        ; 2 uses
  %i.gjf = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gjc, <4 x float> %i.gje)
  %i.gjg = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gjd, <4 x float> %i.gje)
  %i.gjh = fadd <4 x float> %i.gix, %i.gis        ; 2 uses
  %i.gji = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gjf, <4 x float> %i.gjh)
  %i.gjj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gjg, <4 x float> %i.gjh)
  br label %_ZNK6embree13InstanceArray6boundsEmm.exit

_ZNK6embree13InstanceArray6boundsEmm.exit:        ; preds = %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split, %_ZNK6embree13InstanceArray5validEm.exit133
  %.sroa.01765.2 = phi <4 x float> [ %.sroa.01765.05066, %_ZNK6embree13InstanceArray5validEm.exit133 ], [ %.sroa.01765.2.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split ]
  %.sroa.151784.2 = phi <4 x float> [ %.sroa.151784.05067, %_ZNK6embree13InstanceArray5validEm.exit133 ], [ %.sroa.151784.2.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split ]
  %.sroa.37.1 = phi <4 x float> [ %.sroa.37.05068, %_ZNK6embree13InstanceArray5validEm.exit133 ], [ %i.gjj, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split ] ; 2 uses
  %.sroa.0275.1 = phi <4 x float> [ %.sroa.0275.05069, %_ZNK6embree13InstanceArray5validEm.exit133 ], [ %i.gji, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split ] ; 2 uses
  %.sroa.01803.2 = phi <4 x float> [ %.sroa.01803.05070, %_ZNK6embree13InstanceArray5validEm.exit133 ], [ %.sroa.01803.2.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split ]
  %.sroa.101805.2 = phi <4 x float> [ %.sroa.101805.05071, %_ZNK6embree13InstanceArray5validEm.exit133 ], [ %.sroa.101805.2.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split ]
  %.sroa.181807.2 = phi <4 x float> [ %.sroa.181807.05072, %_ZNK6embree13InstanceArray5validEm.exit133 ], [ %.sroa.181807.2.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split ]
  %.sroa.261809.2 = phi <4 x float> [ %.sroa.261809.05073, %_ZNK6embree13InstanceArray5validEm.exit133 ], [ %.sroa.261809.2.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split ]
  %.sroa.01843.2 = phi <4 x float> [ %.sroa.01843.05074, %_ZNK6embree13InstanceArray5validEm.exit133 ], [ %.sroa.01843.2.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split ]
  %.sroa.151862.2 = phi <4 x float> [ %.sroa.151862.05075, %_ZNK6embree13InstanceArray5validEm.exit133 ], [ %.sroa.151862.2.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split ]
  %.sroa.01881.2 = phi <4 x float> [ %.sroa.01881.05076, %_ZNK6embree13InstanceArray5validEm.exit133 ], [ %.sroa.01881.2.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split ]
  %.sroa.111884.2 = phi <4 x float> [ %.sroa.111884.05077, %_ZNK6embree13InstanceArray5validEm.exit133 ], [ %.sroa.111884.2.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split ]
  %.sroa.201887.2 = phi <4 x float> [ %.sroa.201887.05078, %_ZNK6embree13InstanceArray5validEm.exit133 ], [ %.sroa.201887.2.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split ]
  %.sroa.291890.2 = phi <4 x float> [ %.sroa.291890.05079, %_ZNK6embree13InstanceArray5validEm.exit133 ], [ %.sroa.291890.2.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split ]
  %i.gjk = fsub <4 x float> %.sroa.0275.1, %i.fqq
  %i.gjl = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gjk, <4 x float> zeroinitializer) ; 2 uses
  %i.gjm = fsub <4 x float> %.sroa.37.1, %i.fqt
  %i.gjn = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gjm, <4 x float> zeroinitializer) ; 2 uses
  %i.gjo = fadd <4 x float> %.sroa.0352.05063, %i.gjl ; 2 uses
  %i.gjp = fadd <4 x float> %.sroa.0309.05065, %i.gjl ; 2 uses
  %i.gjq = fadd <4 x float> %.sroa.44374.05062, %i.gjn ; 2 uses
  %i.gjr = fadd <4 x float> %.sroa.44.05064, %i.gjn ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ag, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.cr, !llvm.loop !1159

._crit_edge5090:                                  ; preds = %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel, %._crit_edge
  %.sroa.7.0.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge ], [ %i.fqa, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ], [ %i.gno, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ] ; 2 uses
  %.sroa.0262.0.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge ], [ %i.fpy, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ], [ %i.gnm, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ] ; 2 uses
  %i.gjs = fadd <4 x float> %.sroa.0352.0.lcssa, %.sroa.0262.0.lcssa
  %i.gjt = fadd <4 x float> %.sroa.0309.0.lcssa, %.sroa.0262.0.lcssa
  %i.gju = fadd <4 x float> %.sroa.44374.0.lcssa, %.sroa.7.0.lcssa
  %i.gjv = fadd <4 x float> %.sroa.44.0.lcssa, %.sroa.7.0.lcssa
  store <4 x float> %i.gjs, ptr %0, align 16
  store <4 x float> %i.gju, ptr %i.a, align 16
  store <4 x float> %i.gjt, ptr %i.b, align 16
  store <4 x float> %i.gjv, ptr %i.c, align 16
  br label %bb.dg

.peel.next:                                       ; preds = %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123
  %indvars.iv5099.in = phi i64 [ %indvars.iv5099, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ], [ %i.fme, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ] ; 3 uses
  %i.gjw = phi i32 [ %i.gnr, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ], [ %i.fqd, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ]
  %i.gjx = phi float [ %i.gnp, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ], [ %i.fqb, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ] ; 2 uses
  %.sroa.0262.05086 = phi <4 x float> [ %i.gnm, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ], [ %i.fpy, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ]
  %.sroa.7.05085 = phi <4 x float> [ %i.gno, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ], [ %i.fqa, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ]
  %indvars.iv5099 = add nuw nsw i64 %indvars.iv5099.in, 1 ; 4 uses
  %i.gjy = trunc nuw nsw i64 %indvars.iv5099 to i32
  %i.gjz = trunc nuw nsw i64 %indvars.iv5099.in to i32
  %i.gka = uitofp nneg i32 %i.gjy to float        ; 2 uses
  %i.gkb = uitofp nneg i32 %i.gjz to float        ; 2 uses
  %i.gkc = insertelement <2 x float> poison, float %i.gkb, i64 0
  %i.gkd = insertelement <2 x float> %i.gkc, float %i.gka, i64 1
  %i.gke = fdiv <2 x float> %i.gkd, %i.fmm
  %i.gkf = fsub <2 x float> %i.gke, %i.fmo
  %i.gkg = fdiv <2 x float> %i.gkf, %i.fmr        ; 3 uses
  %16 = tail call noundef i32 @llvm.smax.i32(i32 %i.gjw, i32 1)
  %i.gkh = zext nneg i32 %16 to i64
  %i.gki = icmp eq i64 %indvars.iv5099, %i.gkh
  %i.gkj = select i1 %i.gki, float %i.fls, float 1.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.gkk = load ptr, ptr %i.flt, align 8, !noalias !1002 ; 3 uses
  %.not.i140 = icmp eq ptr %i.gkk, null           ; 2 uses
  br i1 %.not.i140, label %_ZNK6embree13InstanceArray5validEm.exit142, label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124

_ZNK6embree13InstanceArray5validEm.exit142:       ; preds = %.peel.next
  %i.gkl = load ptr, ptr %i.flu, align 16, !noalias !1002
  %i.gkm = load i64, ptr %i.flv, align 16, !noalias !1002
  %i.gkn = mul i64 %i.gkm, %2
  %i.gko = getelementptr inbounds nuw i8, ptr %i.gkl, i64 %i.gkn
  %i.gkp = load i32, ptr %i.gko, align 4, !noalias !1002 ; 2 uses
  %.not5047 = icmp eq i32 %i.gkp, -1
  br i1 %.not5047, label %_ZNK6embree13InstanceArray5validEm.exit145.thread, label %bb.de

_ZNK6embree13InstanceArray5validEm.exit145.thread: ; preds = %_ZNK6embree13InstanceArray5validEm.exit142
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  br label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123

bb.de:                                            ; preds = %_ZNK6embree13InstanceArray5validEm.exit142
  %i.gkq = load ptr, ptr %i.flw, align 16, !noalias !1002
  %i.gkr = zext i32 %i.gkp to i64
  %i.gks = getelementptr inbounds nuw [8 x i8], ptr %i.gkq, i64 %i.gkr
  %i.gkt = load ptr, ptr %i.gks, align 8, !noalias !1002
  br label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124

_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124: ; preds = %bb.de, %.peel.next
  %.0.i254 = phi ptr [ %i.gkt, %bb.de ], [ %i.gkk, %.peel.next ] ; 4 uses
  %i.gku = load float, ptr %i.flx, align 4, !noalias !1002 ; 3 uses
  %i.gkv = load float, ptr %i.fly, align 16, !noalias !1002
  %i.gkw = fsub float %i.gkv, %i.gku              ; 2 uses
  %i.gkx = fmul float %i.gkw, %i.gkb
  %i.gky = fdiv float %i.gkx, %i.gjx
  %i.gkz = fadd float %i.gku, %i.gky              ; 2 uses
  %i.gla = getelementptr inbounds nuw i8, ptr %.0.i254, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  %i.glb = getelementptr inbounds nuw i8, ptr %.0.i254, i64 48
  %i.glc = fsub float 1.000000e+00, %i.gkz
  %i.gld = insertelement <4 x float> poison, float %i.gkz, i64 0
  %i.gle = shufflevector <4 x float> %i.gld, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.glf = load <4 x float>, ptr %i.glb, align 16, !noalias !1162
  %i.glg = fmul <4 x float> %i.glf, %i.gle
  %i.glh = insertelement <4 x float> poison, float %i.glc, i64 0
  %i.gli = shufflevector <4 x float> %i.glh, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.glj = load <4 x float>, ptr %i.gla, align 16, !noalias !1163
  %i.glk = fmul <4 x float> %i.glj, %i.gli
  %i.gll = fadd <4 x float> %i.glg, %i.glk
  %i.glm = getelementptr inbounds nuw i8, ptr %.0.i254, i64 32
  %i.gln = getelementptr inbounds nuw i8, ptr %.0.i254, i64 64
  %i.glo = load <4 x float>, ptr %i.gln, align 16, !noalias !1164
  %i.glp = fmul <4 x float> %i.glo, %i.gle
  %i.glq = load <4 x float>, ptr %i.glm, align 16, !noalias !1165
  %i.glr = fmul <4 x float> %i.glq, %i.gli
  %i.gls = fadd <4 x float> %i.glp, %i.glr
  store <4 x float> %i.gll, ptr %12, align 16, !alias.scope !1160
  store <4 x float> %i.gls, ptr %i.flz, align 16, !alias.scope !1160
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  br i1 %.not.i140, label %_ZNK6embree13InstanceArray5validEm.exit145, label %_ZNK6embree13InstanceArray9getObjectEm.exit258

_ZNK6embree13InstanceArray5validEm.exit145:       ; preds = %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124
  %.pre5146 = load ptr, ptr %i.flu, align 16, !noalias !1038
  %.pre5147 = load i64, ptr %i.flv, align 16, !noalias !1038
  %.pre5210 = mul i64 %.pre5147, %2
  %.phi.trans.insert5232 = getelementptr inbounds nuw i8, ptr %.pre5146, i64 %.pre5210
  %.pre5233 = load i32, ptr %.phi.trans.insert5232, align 4, !noalias !1038 ; 2 uses
  %.not5048 = icmp eq i32 %.pre5233, -1
  br i1 %.not5048, label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123, label %bb.df

bb.df:                                            ; preds = %_ZNK6embree13InstanceArray5validEm.exit145
  %i.glt = load ptr, ptr %i.flw, align 16, !noalias !1038
  %i.glu = zext i32 %.pre5233 to i64
  %i.glv = getelementptr inbounds nuw [8 x i8], ptr %i.glt, i64 %i.glu
  %i.glw = load ptr, ptr %i.glv, align 8, !noalias !1038
  %.pre5148 = load float, ptr %i.flx, align 4, !noalias !1038 ; 2 uses
  %.pre5149 = load float, ptr %i.fly, align 16, !noalias !1038
  %.pre5254 = fsub float %.pre5149, %.pre5148
  br label %_ZNK6embree13InstanceArray9getObjectEm.exit258

_ZNK6embree13InstanceArray9getObjectEm.exit258:   ; preds = %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124, %bb.df
  %.pre-phi5255 = phi float [ %i.gkw, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124 ], [ %.pre5254, %bb.df ]
  %i.glx = phi float [ %i.gku, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124 ], [ %.pre5148, %bb.df ]
  %.0.i257 = phi ptr [ %i.gkk, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124 ], [ %i.glw, %bb.df ] ; 4 uses
  %i.gly = fmul float %.pre-phi5255, %i.gka
  %i.glz = fdiv float %i.gly, %i.gjx
  %i.gma = fadd float %i.glx, %i.glz              ; 2 uses
  %i.gmb = getelementptr inbounds nuw i8, ptr %.0.i257, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  %i.gmc = getelementptr inbounds nuw i8, ptr %.0.i257, i64 48
  %i.gmd = fsub float 1.000000e+00, %i.gma
  %i.gme = insertelement <4 x float> poison, float %i.gma, i64 0
  %i.gmf = shufflevector <4 x float> %i.gme, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gmg = load <4 x float>, ptr %i.gmc, align 16, !noalias !1168
  %i.gmh = fmul <4 x float> %i.gmg, %i.gmf
  %i.gmi = insertelement <4 x float> poison, float %i.gmd, i64 0
  %i.gmj = shufflevector <4 x float> %i.gmi, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gmk = load <4 x float>, ptr %i.gmb, align 16, !noalias !1169
  %i.gml = fmul <4 x float> %i.gmk, %i.gmj
  %i.gmm = fadd <4 x float> %i.gmh, %i.gml
  %i.gmn = getelementptr inbounds nuw i8, ptr %.0.i257, i64 32
  %i.gmo = getelementptr inbounds nuw i8, ptr %.0.i257, i64 64
  %i.gmp = load <4 x float>, ptr %i.gmo, align 16, !noalias !1170
  %i.gmq = fmul <4 x float> %i.gmp, %i.gmf
  %i.gmr = load <4 x float>, ptr %i.gmn, align 16, !noalias !1171
  %i.gms = fmul <4 x float> %i.gmr, %i.gmj
  %i.gmt = fadd <4 x float> %i.gmq, %i.gms
  store <4 x float> %i.gmm, ptr %13, align 16, !alias.scope !1166
  store <4 x float> %i.gmt, ptr %i.fma, align 16, !alias.scope !1166
  br label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123

_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123: ; preds = %_ZNK6embree13InstanceArray5validEm.exit145.thread, %_ZNK6embree13InstanceArray5validEm.exit145, %_ZNK6embree13InstanceArray9getObjectEm.exit258
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.gmu = fsub <2 x float> splat (float 1.000000e+00), %i.gkg ; 2 uses
  %i.gmv = shufflevector <2 x float> %i.gkg, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gmw = fmul <4 x float> %.sroa.0309.0.lcssa, %i.gmv
  %i.gmx = shufflevector <2 x float> %i.gmu, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gmy = fmul <4 x float> %.sroa.0352.0.lcssa, %i.gmx
  %i.gmz = fadd <4 x float> %i.gmw, %i.gmy
  %i.gna = fmul <4 x float> %.sroa.44.0.lcssa, %i.gmv
  %i.gnb = fmul <4 x float> %.sroa.44374.0.lcssa, %i.gmx
  %i.gnc = fadd <4 x float> %i.gna, %i.gnb
  store <4 x float> %i.gmz, ptr %14, align 16
  store <4 x float> %i.gnc, ptr %i.fmb, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.gnd = shufflevector <2 x float> %i.gkg, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.gne = fmul <4 x float> %.sroa.0309.0.lcssa, %i.gnd
  %i.gnf = shufflevector <2 x float> %i.gmu, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.gng = fmul <4 x float> %.sroa.0352.0.lcssa, %i.gnf
  %i.gnh = fadd <4 x float> %i.gne, %i.gng
  %i.gni = fmul <4 x float> %.sroa.44.0.lcssa, %i.gnd
  %i.gnj = fmul <4 x float> %.sroa.44374.0.lcssa, %i.gnf
  %i.gnk = fadd <4 x float> %i.gni, %i.gnj
  store <4 x float> %i.gnh, ptr %15, align 16
  store <4 x float> %i.gnk, ptr %i.fmc, align 16
  call void @_ZNK6embree13InstanceArray12boundSegmentEmmRKNS_4BBoxINS_6Vec3faEEES5_S5_S5_ff(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BBox.13") align 16 %11, ptr noundef nonnull align 16 dereferenceable(200) %1, i64 noundef %2, i64 noundef %indvars.iv5099.in, ptr noundef nonnull align 16 dereferenceable(32) %12, ptr noundef nonnull align 16 dereferenceable(32) %13, ptr noundef nonnull align 16 dereferenceable(32) %14, ptr noundef nonnull align 16 dereferenceable(32) %15, float noundef 0.000000e+00, float noundef %i.gkj)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.gnl = load <4 x float>, ptr %11, align 16, !noalias !1074
  %i.gnm = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0262.05086, <4 x float> %i.gnl) ; 2 uses
  %i.gnn = load <4 x float>, ptr %i.fmd, align 16, !noalias !1077
  %i.gno = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.7.05085, <4 x float> %i.gnn) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.gnp = load float, ptr %i.flk, align 8        ; 2 uses
  %i.gnq = fptosi float %i.gnp to i32
  %i.gnr = tail call noundef i32 @llvm.smin.i32(i32 %i.gnq, i32 %i.ag) ; 2 uses
  %i.gns = sext i32 %i.gnr to i64
  %.not.not = icmp slt i64 %indvars.iv5099, %i.gns
  br i1 %.not.not, label %.peel.next, label %._crit_edge5090, !llvm.loop !1172

bb.dg:                                            ; preds = %._crit_edge5090, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit125
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

end_hunk_0
