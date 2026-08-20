inline.NumInlined: 398
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK6embree13InstanceArray15nonlinearBoundsEmRKNS_4BBoxIfEES4_f:bb.a
  %i.gcn = load ptr, ptr %i.fpx, align 8, !noalias !1089
  %i.gco = getelementptr inbounds nuw i8, ptr %i.fpx, i64 16
  %i.gcp = load i64, ptr %i.gco, align 8, !noalias !1089
  %i.gcq = mul i64 %i.gcp, %2
  %i.gcr = getelementptr inbounds nuw i8, ptr %i.gcn, i64 %i.gcq ; 12 uses
  %i.gcs = load float, ptr %i.gcr, align 4, !noalias !1089
  %i.gct = getelementptr inbounds nuw i8, ptr %i.gcr, i64 4
  %i.gcu = load float, ptr %i.gct, align 4, !noalias !1089
  %i.gcv = getelementptr inbounds nuw i8, ptr %i.gcr, i64 8
  %i.gcw = load float, ptr %i.gcv, align 4, !noalias !1089
  %i.gcx = getelementptr inbounds nuw i8, ptr %i.gcr, i64 12
  %i.gcy = load float, ptr %i.gcx, align 4, !noalias !1089
  %i.gcz = getelementptr inbounds nuw i8, ptr %i.gcr, i64 16
  %i.gda = load float, ptr %i.gcz, align 4, !noalias !1089
  %i.gdb = getelementptr inbounds nuw i8, ptr %i.gcr, i64 20
  %i.gdc = load float, ptr %i.gdb, align 4, !noalias !1089
  %i.gdd = getelementptr inbounds nuw i8, ptr %i.gcr, i64 24
  %i.gde = load float, ptr %i.gdd, align 4, !noalias !1089
  %i.gdf = getelementptr inbounds nuw i8, ptr %i.gcr, i64 28
  %i.gdg = load float, ptr %i.gdf, align 4, !noalias !1089
  %i.gdh = getelementptr inbounds nuw i8, ptr %i.gcr, i64 32
  %i.gdi = load float, ptr %i.gdh, align 4, !noalias !1089
  %i.gdj = getelementptr inbounds nuw i8, ptr %i.gcr, i64 36
  %i.gdk = load float, ptr %i.gdj, align 4, !noalias !1089
  %i.gdl = getelementptr inbounds nuw i8, ptr %i.gcr, i64 40
  %i.gdm = load float, ptr %i.gdl, align 4, !noalias !1089
  %i.gdn = getelementptr inbounds nuw i8, ptr %i.gcr, i64 44
  %i.gdo = load float, ptr %i.gdn, align 4, !noalias !1089
  %i.gdp = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.gcs, i64 0
  %i.gdq = insertelement <4 x float> %i.gdp, float %i.gda, i64 1
  %i.gdr = insertelement <4 x float> %i.gdq, float %i.gdi, i64 2
  %i.gds = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.gcu, i64 0
  %i.gdt = insertelement <4 x float> %i.gds, float %i.gdc, i64 1
  %i.gdu = insertelement <4 x float> %i.gdt, float %i.gdk, i64 2
  %i.gdv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.gcw, i64 0
  %i.gdw = insertelement <4 x float> %i.gdv, float %i.gde, i64 1
  %i.gdx = insertelement <4 x float> %i.gdw, float %i.gdm, i64 2
  %i.gdy = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.gcy, i64 0
  %i.gdz = insertelement <4 x float> %i.gdy, float %i.gdg, i64 1
  %i.gea = insertelement <4 x float> %i.gdz, float %i.gdo, i64 2
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit.i127

_ZNK6embree13InstanceArray3l2wEmm.exit.i127:      ; preds = %bb.cx, %bb.db, %bb.da, %bb.cz, %bb.cy
  %.sroa.01803.0 = phi <4 x float> [ %i.fzd, %bb.cy ], [ %.sroa.01803.12.vec.insert, %bb.cz ], [ %i.gbr, %bb.da ], [ %i.gdr, %bb.db ], [ undef, %bb.cx ] ; 3 uses
  %.sroa.101805.0 = phi <4 x float> [ %i.fzf, %bb.cy ], [ %.sroa.101805.28.vec.insert, %bb.cz ], [ %i.gby, %bb.da ], [ %i.gdu, %bb.db ], [ undef, %bb.cx ] ; 3 uses
  %.sroa.181807.0 = phi <4 x float> [ %i.fzh, %bb.cy ], [ %.sroa.181807.44.vec.insert, %bb.cz ], [ %i.gcf, %bb.da ], [ %i.gdx, %bb.db ], [ undef, %bb.cx ] ; 3 uses
  %.sroa.261809.0 = phi <4 x float> [ %i.fzj, %bb.cy ], [ %i.gbd, %bb.cz ], [ %i.gcm, %bb.da ], [ %i.gea, %bb.db ], [ undef, %bb.cx ] ; 3 uses
  br i1 %.not.i131, label %_ZNK6embree13InstanceArray5validEm.exit130, label %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split

_ZNK6embree13InstanceArray5validEm.exit130:       ; preds = %_ZNK6embree13InstanceArray3l2wEmm.exit.i127
  %i.geb = load ptr, ptr %i.fjv, align 16, !noalias !1092
  %i.gec = load i64, ptr %i.fjw, align 16, !noalias !1092
  %i.ged = mul i64 %i.gec, %2
  %i.gee = getelementptr inbounds nuw i8, ptr %i.geb, i64 %i.ged
  %i.gef = load i32, ptr %i.gee, align 4, !noalias !1092 ; 2 uses
  %.not5050 = icmp eq i32 %i.gef, -1
  br i1 %.not5050, label %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split, label %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split.sink.split

_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split.sink.split: ; preds = %_ZNK6embree13InstanceArray5validEm.exit130, %_ZNK6embree13InstanceArray5validEm.exit
  %.sink = phi i32 [ %i.fyx, %_ZNK6embree13InstanceArray5validEm.exit ], [ %i.gef, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %.sink5552.ph.ph = phi <4 x float> [ %i.fyj, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.181807.0, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %.sink5550.ph.ph = phi <4 x float> [ %i.fys, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.261809.0, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %.sink5548.ph.ph = phi <4 x float> [ %i.fyb, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.101805.0, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %.sink5544.ph.ph = phi <4 x float> [ %i.fxv, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.01803.0, %_ZNK6embree13InstanceArray5validEm.exit130 ]
  %i.geg = load ptr, ptr %i.fjy, align 16, !noalias !1080
  %i.geh = zext i32 %.sink to i64
  %i.gei = getelementptr inbounds nuw [8 x i8], ptr %i.geg, i64 %i.geh
  %i.gej = load ptr, ptr %i.gei, align 8, !noalias !1080
  br label %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split

_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split: ; preds = %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split.sink.split, %_ZNK6embree13InstanceArray3l2wEmm.exit.i127, %_ZNK6embree13InstanceArray3l2wEmm.exit9.i
  %.0.i251.sink5575 = phi ptr [ %i.fib, %_ZNK6embree13InstanceArray3l2wEmm.exit9.i ], [ %i.fib, %_ZNK6embree13InstanceArray3l2wEmm.exit.i127 ], [ %i.gej, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split.sink.split ] ; 4 uses
  %.sink5552.ph = phi <4 x float> [ %i.fyj, %_ZNK6embree13InstanceArray3l2wEmm.exit9.i ], [ %.sroa.181807.0, %_ZNK6embree13InstanceArray3l2wEmm.exit.i127 ], [ %.sink5552.ph.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split.sink.split ]
  %.sink5550.ph = phi <4 x float> [ %i.fys, %_ZNK6embree13InstanceArray3l2wEmm.exit9.i ], [ %.sroa.261809.0, %_ZNK6embree13InstanceArray3l2wEmm.exit.i127 ], [ %.sink5550.ph.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split.sink.split ]
  %.sink5548.ph = phi <4 x float> [ %i.fyb, %_ZNK6embree13InstanceArray3l2wEmm.exit9.i ], [ %.sroa.101805.0, %_ZNK6embree13InstanceArray3l2wEmm.exit.i127 ], [ %.sink5548.ph.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split.sink.split ]
  %.sink5544.ph = phi <4 x float> [ %i.fxv, %_ZNK6embree13InstanceArray3l2wEmm.exit9.i ], [ %.sroa.01803.0, %_ZNK6embree13InstanceArray3l2wEmm.exit.i127 ], [ %.sink5544.ph.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split.sink.split ]
  %i.gek = load float, ptr %i.fjz, align 4, !noalias !1080 ; 2 uses
  %i.gel = load float, ptr %i.fka, align 16, !noalias !1080
  %i.gem = fsub float %i.gel, %i.gek
  %i.gen = fmul float %i.gem, %i.foz
  %i.geo = load float, ptr %i.fkb, align 8, !noalias !1080
  %i.gep = fdiv float %i.gen, %i.geo
  %i.geq = fadd float %i.gek, %i.gep              ; 2 uses
  %i.ger = getelementptr inbounds nuw i8, ptr %.0.i251.sink5575, i64 16
  %i.ges = getelementptr inbounds nuw i8, ptr %.0.i251.sink5575, i64 48
  %i.get = fsub float 1.000000e+00, %i.geq
  %i.geu = insertelement <4 x float> poison, float %i.geq, i64 0
  %i.gev = shufflevector <4 x float> %i.geu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gew = load <4 x float>, ptr %i.ges, align 16, !noalias !1080
  %i.gex = fmul <4 x float> %i.gew, %i.gev
  %i.gey = insertelement <4 x float> poison, float %i.get, i64 0
  %i.gez = shufflevector <4 x float> %i.gey, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gfa = load <4 x float>, ptr %i.ger, align 16, !noalias !1080
  %i.gfb = fmul <4 x float> %i.gfa, %i.gez
  %i.gfc = fadd <4 x float> %i.gex, %i.gfb
  %i.gfd = getelementptr inbounds nuw i8, ptr %.0.i251.sink5575, i64 32
  %i.gfe = getelementptr inbounds nuw i8, ptr %.0.i251.sink5575, i64 64
  %i.gff = load <4 x float>, ptr %i.gfe, align 16, !noalias !1080
  %i.gfg = fmul <4 x float> %i.gff, %i.gev
  %i.gfh = load <4 x float>, ptr %i.gfd, align 16, !noalias !1080
  %i.gfi = fmul <4 x float> %i.gfh, %i.gez
  %i.gfj = fadd <4 x float> %i.gfg, %i.gfi
  br label %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split

_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split: ; preds = %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split, %_ZNK6embree13InstanceArray5validEm.exit130, %_ZNK6embree13InstanceArray5validEm.exit
  %.sroa.01843.0.sink5555 = phi <4 x float> [ undef, %_ZNK6embree13InstanceArray5validEm.exit ], [ undef, %_ZNK6embree13InstanceArray5validEm.exit130 ], [ %i.gfc, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split ] ; 3 uses
  %.sink5552 = phi <4 x float> [ %i.fyj, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.181807.0, %_ZNK6embree13InstanceArray5validEm.exit130 ], [ %.sink5552.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split ] ; 2 uses
  %.sink5550 = phi <4 x float> [ %i.fys, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.261809.0, %_ZNK6embree13InstanceArray5validEm.exit130 ], [ %.sink5550.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split ] ; 2 uses
  %.sink5548 = phi <4 x float> [ %i.fyb, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.101805.0, %_ZNK6embree13InstanceArray5validEm.exit130 ], [ %.sink5548.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split ] ; 2 uses
  %.sink5544 = phi <4 x float> [ %i.fxv, %_ZNK6embree13InstanceArray5validEm.exit ], [ %.sroa.01803.0, %_ZNK6embree13InstanceArray5validEm.exit130 ], [ %.sink5544.ph, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split ] ; 2 uses
  %.sroa.151862.0.sink5539 = phi <4 x float> [ undef, %_ZNK6embree13InstanceArray5validEm.exit ], [ undef, %_ZNK6embree13InstanceArray5validEm.exit130 ], [ %i.gfj, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split.sink.split ] ; 3 uses
  %i.gfk = shufflevector <4 x float> %.sroa.01843.0.sink5555, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gfl = shufflevector <4 x float> %.sroa.01843.0.sink5555, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gfm = shufflevector <4 x float> %.sroa.01843.0.sink5555, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gfn = fmul <4 x float> %.sink5552, %i.gfm
  %i.gfo = fadd <4 x float> %.sink5550, %i.gfn    ; 2 uses
  %i.gfp = fmul <4 x float> %.sink5548, %i.gfl    ; 2 uses
  %i.gfq = fadd <4 x float> %i.gfp, %i.gfo        ; 2 uses
  %i.gfr = fmul <4 x float> %.sink5544, %i.gfk    ; 4 uses
  %i.gfs = fadd <4 x float> %i.gfr, %i.gfq        ; 2 uses
  %i.gft = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.gfs)
  %i.gfu = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.gfs)
  %i.gfv = shufflevector <4 x float> %.sroa.151862.0.sink5539, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gfw = fmul <4 x float> %.sink5552, %i.gfv
  %i.gfx = fadd <4 x float> %.sink5550, %i.gfw    ; 2 uses
  %i.gfy = fadd <4 x float> %i.gfp, %i.gfx        ; 2 uses
  %i.gfz = fadd <4 x float> %i.gfr, %i.gfy        ; 2 uses
  %i.gga = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gft, <4 x float> %i.gfz)
  %i.ggb = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gfu, <4 x float> %i.gfz)
  %i.ggc = shufflevector <4 x float> %.sroa.151862.0.sink5539, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ggd = fmul <4 x float> %.sink5548, %i.ggc    ; 2 uses
  %i.gge = fadd <4 x float> %i.ggd, %i.gfo        ; 2 uses
  %i.ggf = fadd <4 x float> %i.gfr, %i.gge        ; 2 uses
  %i.ggg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gga, <4 x float> %i.ggf)
  %i.ggh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ggb, <4 x float> %i.ggf)
  %i.ggi = fadd <4 x float> %i.ggd, %i.gfx        ; 2 uses
  %i.ggj = fadd <4 x float> %i.gfr, %i.ggi        ; 2 uses
  %i.ggk = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ggg, <4 x float> %i.ggj)
  %i.ggl = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ggh, <4 x float> %i.ggj)
  %i.ggm = shufflevector <4 x float> %.sroa.151862.0.sink5539, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ggn = fmul <4 x float> %.sink5544, %i.ggm    ; 4 uses
  %i.ggo = fadd <4 x float> %i.ggn, %i.gfq        ; 2 uses
  %i.ggp = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ggk, <4 x float> %i.ggo)
  %i.ggq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ggl, <4 x float> %i.ggo)
  %i.ggr = fadd <4 x float> %i.ggn, %i.gfy        ; 2 uses
  %i.ggs = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ggp, <4 x float> %i.ggr)
  %i.ggt = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ggq, <4 x float> %i.ggr)
  %i.ggu = fadd <4 x float> %i.ggn, %i.gge        ; 2 uses
  %i.ggv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ggs, <4 x float> %i.ggu)
  %i.ggw = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ggt, <4 x float> %i.ggu)
  %i.ggx = fadd <4 x float> %i.ggn, %i.ggi        ; 2 uses
  %i.ggy = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ggv, <4 x float> %i.ggx)
  %i.ggz = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ggw, <4 x float> %i.ggx)
  br label %_ZNK6embree13InstanceArray6boundsEmm.exit

_ZNK6embree13InstanceArray6boundsEmm.exit:        ; preds = %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split, %_ZNK6embree13InstanceArray5validEm.exit133
  %.sroa.37.0 = phi <4 x float> [ undef, %_ZNK6embree13InstanceArray5validEm.exit133 ], [ %i.ggz, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split ]
  %.sroa.0275.0 = phi <4 x float> [ undef, %_ZNK6embree13InstanceArray5validEm.exit133 ], [ %i.ggy, %_ZNK6embree13InstanceArray6boundsEmm.exit.sink.split ]
  %i.gha = fsub <4 x float> %.sroa.0275.0, %i.fpk
  %i.ghb = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gha, <4 x float> zeroinitializer) ; 2 uses
  %i.ghc = fsub <4 x float> %.sroa.37.0, %i.fpn
  %i.ghd = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ghc, <4 x float> zeroinitializer) ; 2 uses
  %i.ghe = fadd <4 x float> %.sroa.0352.05063, %i.ghb ; 2 uses
  %i.ghf = fadd <4 x float> %.sroa.0309.05065, %i.ghb ; 2 uses
  %i.ghg = fadd <4 x float> %.sroa.44374.05062, %i.ghd ; 2 uses
  %i.ghh = fadd <4 x float> %.sroa.44.05064, %i.ghd ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ag, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.cr, !llvm.loop !1095

._crit_edge5076:                                  ; preds = %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel, %._crit_edge
  %.sroa.7.0.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge ], [ %i.fou, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ], [ %i.gle, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ] ; 2 uses
  %.sroa.0262.0.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge ], [ %i.fos, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ], [ %i.glc, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ] ; 2 uses
  %i.ghi = fadd <4 x float> %.sroa.0352.0.lcssa, %.sroa.0262.0.lcssa
  %i.ghj = fadd <4 x float> %.sroa.0309.0.lcssa, %.sroa.0262.0.lcssa
  %i.ghk = fadd <4 x float> %.sroa.44374.0.lcssa, %.sroa.7.0.lcssa
  %i.ghl = fadd <4 x float> %.sroa.44.0.lcssa, %.sroa.7.0.lcssa
  store <4 x float> %i.ghi, ptr %0, align 16
  store <4 x float> %i.ghk, ptr %i.a, align 16
  store <4 x float> %i.ghj, ptr %i.b, align 16
  store <4 x float> %i.ghl, ptr %i.c, align 16
  br label %bb.de

.peel.next:                                       ; preds = %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123
  %indvars.iv5085.in = phi i64 [ %indvars.iv5085, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ], [ %i.fky, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ] ; 3 uses
  %i.ghm = phi i32 [ %i.glh, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ], [ %i.fox, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ]
  %i.ghn = phi float [ %i.glf, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ], [ %i.fov, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ] ; 2 uses
  %.sroa.0262.05072 = phi <4 x float> [ %i.glc, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ], [ %i.fos, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ]
  %.sroa.7.05071 = phi <4 x float> [ %i.gle, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123 ], [ %i.fou, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123.peel ]
  %indvars.iv5085 = add nuw nsw i64 %indvars.iv5085.in, 1 ; 4 uses
  %i.gho = trunc nuw nsw i64 %indvars.iv5085 to i32
  %i.ghp = trunc nuw nsw i64 %indvars.iv5085.in to i32
  %i.ghq = uitofp nneg i32 %i.gho to float        ; 2 uses
  %i.ghr = uitofp nneg i32 %i.ghp to float        ; 2 uses
  %i.ghs = insertelement <2 x float> poison, float %i.ghr, i64 0
  %i.ght = insertelement <2 x float> %i.ghs, float %i.ghq, i64 1
  %i.ghu = fdiv <2 x float> %i.ght, %i.flg
  %i.ghv = fsub <2 x float> %i.ghu, %i.fli
  %i.ghw = fdiv <2 x float> %i.ghv, %i.fll        ; 3 uses
  %16 = tail call noundef i32 @llvm.smax.i32(i32 %i.ghm, i32 1)
  %i.ghx = zext nneg i32 %16 to i64
  %i.ghy = icmp eq i64 %indvars.iv5085, %i.ghx
  %i.ghz = select i1 %i.ghy, float %i.fkm, float 1.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.gia = load ptr, ptr %i.fkn, align 8, !noalias !1002 ; 3 uses
  %.not.i140 = icmp eq ptr %i.gia, null           ; 2 uses
  br i1 %.not.i140, label %_ZNK6embree13InstanceArray5validEm.exit142, label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124

_ZNK6embree13InstanceArray5validEm.exit142:       ; preds = %.peel.next
  %i.gib = load ptr, ptr %i.fko, align 16, !noalias !1002
  %i.gic = load i64, ptr %i.fkp, align 16, !noalias !1002
  %i.gid = mul i64 %i.gic, %2
  %i.gie = getelementptr inbounds nuw i8, ptr %i.gib, i64 %i.gid
  %i.gif = load i32, ptr %i.gie, align 4, !noalias !1002 ; 2 uses
  %.not5047 = icmp eq i32 %i.gif, -1
  br i1 %.not5047, label %_ZNK6embree13InstanceArray5validEm.exit145.thread, label %bb.dc

_ZNK6embree13InstanceArray5validEm.exit145.thread: ; preds = %_ZNK6embree13InstanceArray5validEm.exit142
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  br label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123

bb.dc:                                            ; preds = %_ZNK6embree13InstanceArray5validEm.exit142
  %i.gig = load ptr, ptr %i.fkq, align 16, !noalias !1002
  %i.gih = zext i32 %i.gif to i64
  %i.gii = getelementptr inbounds nuw [8 x i8], ptr %i.gig, i64 %i.gih
  %i.gij = load ptr, ptr %i.gii, align 8, !noalias !1002
  br label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124

_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124: ; preds = %bb.dc, %.peel.next
  %.0.i254 = phi ptr [ %i.gij, %bb.dc ], [ %i.gia, %.peel.next ] ; 4 uses
  %i.gik = load float, ptr %i.fkr, align 4, !noalias !1002 ; 3 uses
  %i.gil = load float, ptr %i.fks, align 16, !noalias !1002
  %i.gim = fsub float %i.gil, %i.gik              ; 2 uses
  %i.gin = fmul float %i.gim, %i.ghr
  %i.gio = fdiv float %i.gin, %i.ghn
  %i.gip = fadd float %i.gik, %i.gio              ; 2 uses
  %i.giq = getelementptr inbounds nuw i8, ptr %.0.i254, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  %i.gir = getelementptr inbounds nuw i8, ptr %.0.i254, i64 48
  %i.gis = fsub float 1.000000e+00, %i.gip
  %i.git = insertelement <4 x float> poison, float %i.gip, i64 0
  %i.giu = shufflevector <4 x float> %i.git, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.giv = load <4 x float>, ptr %i.gir, align 16, !noalias !1098
  %i.giw = fmul <4 x float> %i.giv, %i.giu
  %i.gix = insertelement <4 x float> poison, float %i.gis, i64 0
  %i.giy = shufflevector <4 x float> %i.gix, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.giz = load <4 x float>, ptr %i.giq, align 16, !noalias !1099
  %i.gja = fmul <4 x float> %i.giz, %i.giy
  %i.gjb = fadd <4 x float> %i.giw, %i.gja
  %i.gjc = getelementptr inbounds nuw i8, ptr %.0.i254, i64 32
  %i.gjd = getelementptr inbounds nuw i8, ptr %.0.i254, i64 64
  %i.gje = load <4 x float>, ptr %i.gjd, align 16, !noalias !1100
  %i.gjf = fmul <4 x float> %i.gje, %i.giu
  %i.gjg = load <4 x float>, ptr %i.gjc, align 16, !noalias !1101
  %i.gjh = fmul <4 x float> %i.gjg, %i.giy
  %i.gji = fadd <4 x float> %i.gjf, %i.gjh
  store <4 x float> %i.gjb, ptr %12, align 16, !alias.scope !1096
  store <4 x float> %i.gji, ptr %i.fkt, align 16, !alias.scope !1096
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  br i1 %.not.i140, label %_ZNK6embree13InstanceArray5validEm.exit145, label %_ZNK6embree13InstanceArray9getObjectEm.exit258

_ZNK6embree13InstanceArray5validEm.exit145:       ; preds = %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124
  %.pre5132 = load ptr, ptr %i.fko, align 16, !noalias !1038
  %.pre5133 = load i64, ptr %i.fkp, align 16, !noalias !1038
  %.pre5196 = mul i64 %.pre5133, %2
  %.phi.trans.insert5218 = getelementptr inbounds nuw i8, ptr %.pre5132, i64 %.pre5196
  %.pre5219 = load i32, ptr %.phi.trans.insert5218, align 4, !noalias !1038 ; 2 uses
  %.not5048 = icmp eq i32 %.pre5219, -1
  br i1 %.not5048, label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123, label %bb.dd

bb.dd:                                            ; preds = %_ZNK6embree13InstanceArray5validEm.exit145
  %i.gjj = load ptr, ptr %i.fkq, align 16, !noalias !1038
  %i.gjk = zext i32 %.pre5219 to i64
  %i.gjl = getelementptr inbounds nuw [8 x i8], ptr %i.gjj, i64 %i.gjk
  %i.gjm = load ptr, ptr %i.gjl, align 8, !noalias !1038
  %.pre5134 = load float, ptr %i.fkr, align 4, !noalias !1038 ; 2 uses
  %.pre5135 = load float, ptr %i.fks, align 16, !noalias !1038
  %.pre5240 = fsub float %.pre5135, %.pre5134
  br label %_ZNK6embree13InstanceArray9getObjectEm.exit258

_ZNK6embree13InstanceArray9getObjectEm.exit258:   ; preds = %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124, %bb.dd
  %.pre-phi5241 = phi float [ %i.gim, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124 ], [ %.pre5240, %bb.dd ]
  %i.gjn = phi float [ %i.gik, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124 ], [ %.pre5134, %bb.dd ]
  %.0.i257 = phi ptr [ %i.gia, %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit124 ], [ %i.gjm, %bb.dd ] ; 4 uses
  %i.gjo = fmul float %.pre-phi5241, %i.ghq
  %i.gjp = fdiv float %i.gjo, %i.ghn
  %i.gjq = fadd float %i.gjn, %i.gjp              ; 2 uses
  %i.gjr = getelementptr inbounds nuw i8, ptr %.0.i257, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  %i.gjs = getelementptr inbounds nuw i8, ptr %.0.i257, i64 48
  %i.gjt = fsub float 1.000000e+00, %i.gjq
  %i.gju = insertelement <4 x float> poison, float %i.gjq, i64 0
  %i.gjv = shufflevector <4 x float> %i.gju, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gjw = load <4 x float>, ptr %i.gjs, align 16, !noalias !1104
  %i.gjx = fmul <4 x float> %i.gjw, %i.gjv
  %i.gjy = insertelement <4 x float> poison, float %i.gjt, i64 0
  %i.gjz = shufflevector <4 x float> %i.gjy, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gka = load <4 x float>, ptr %i.gjr, align 16, !noalias !1105
  %i.gkb = fmul <4 x float> %i.gka, %i.gjz
  %i.gkc = fadd <4 x float> %i.gjx, %i.gkb
  %i.gkd = getelementptr inbounds nuw i8, ptr %.0.i257, i64 32
  %i.gke = getelementptr inbounds nuw i8, ptr %.0.i257, i64 64
  %i.gkf = load <4 x float>, ptr %i.gke, align 16, !noalias !1106
  %i.gkg = fmul <4 x float> %i.gkf, %i.gjv
  %i.gkh = load <4 x float>, ptr %i.gkd, align 16, !noalias !1107
  %i.gki = fmul <4 x float> %i.gkh, %i.gjz
  %i.gkj = fadd <4 x float> %i.gkg, %i.gki
  store <4 x float> %i.gkc, ptr %13, align 16, !alias.scope !1102
  store <4 x float> %i.gkj, ptr %i.fku, align 16, !alias.scope !1102
  br label %_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123

_ZNK6embree13InstanceArray15getObjectBoundsEmm.exit123: ; preds = %_ZNK6embree13InstanceArray5validEm.exit145.thread, %_ZNK6embree13InstanceArray5validEm.exit145, %_ZNK6embree13InstanceArray9getObjectEm.exit258
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.gkk = fsub <2 x float> splat (float 1.000000e+00), %i.ghw ; 2 uses
  %i.gkl = shufflevector <2 x float> %i.ghw, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gkm = fmul <4 x float> %.sroa.0309.0.lcssa, %i.gkl
  %i.gkn = shufflevector <2 x float> %i.gkk, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gko = fmul <4 x float> %.sroa.0352.0.lcssa, %i.gkn
  %i.gkp = fadd <4 x float> %i.gkm, %i.gko
  %i.gkq = fmul <4 x float> %.sroa.44.0.lcssa, %i.gkl
  %i.gkr = fmul <4 x float> %.sroa.44374.0.lcssa, %i.gkn
  %i.gks = fadd <4 x float> %i.gkq, %i.gkr
  store <4 x float> %i.gkp, ptr %14, align 16
  store <4 x float> %i.gks, ptr %i.fkv, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.gkt = shufflevector <2 x float> %i.ghw, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.gku = fmul <4 x float> %.sroa.0309.0.lcssa, %i.gkt
  %i.gkv = shufflevector <2 x float> %i.gkk, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.gkw = fmul <4 x float> %.sroa.0352.0.lcssa, %i.gkv
  %i.gkx = fadd <4 x float> %i.gku, %i.gkw
  %i.gky = fmul <4 x float> %.sroa.44.0.lcssa, %i.gkt
  %i.gkz = fmul <4 x float> %.sroa.44374.0.lcssa, %i.gkv
  %i.gla = fadd <4 x float> %i.gky, %i.gkz
  store <4 x float> %i.gkx, ptr %15, align 16
  store <4 x float> %i.gla, ptr %i.fkw, align 16
  call void @_ZNK6embree13InstanceArray12boundSegmentEmmRKNS_4BBoxINS_6Vec3faEEES5_S5_S5_ff(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BBox.13") align 16 %11, ptr noundef nonnull align 16 dereferenceable(200) %1, i64 noundef %2, i64 noundef %indvars.iv5085.in, ptr noundef nonnull align 16 dereferenceable(32) %12, ptr noundef nonnull align 16 dereferenceable(32) %13, ptr noundef nonnull align 16 dereferenceable(32) %14, ptr noundef nonnull align 16 dereferenceable(32) %15, float noundef 0.000000e+00, float noundef %i.ghz)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.glb = load <4 x float>, ptr %11, align 16, !noalias !1074
  %i.glc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0262.05072, <4 x float> %i.glb) ; 2 uses
  %i.gld = load <4 x float>, ptr %i.fkx, align 16, !noalias !1077
  %i.gle = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.7.05071, <4 x float> %i.gld) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.glf = load float, ptr %i.fke, align 8        ; 2 uses
  %i.glg = fptosi float %i.glf to i32
  %i.glh = tail call noundef i32 @llvm.smin.i32(i32 %i.glg, i32 %i.ag) ; 2 uses
  %i.gli = sext i32 %i.glh to i64
  %.not.not = icmp slt i64 %indvars.iv5085, %i.gli
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
