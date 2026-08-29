Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtext?download=true
inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0_@LoadFontData:bb.a
  br i1 %.not1.i.i.i.i.i.i.i, label %stbtt__hheap_cleanup.exit.i.i.i.i.i.i, label %.lr.ph.i94.i.i.i.i.i.i

.lr.ph.i94.i.i.i.i.i.i:                           ; preds = %._crit_edge35.i.i.i.i.i.i, %.lr.ph.i94.i.i.i.i.i.i
  %.02.i.i.i.i.i.i.i = phi ptr [ %i.bto, %.lr.ph.i94.i.i.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i, %._crit_edge35.i.i.i.i.i.i ] ; 2 uses
  %i.bto = load ptr, ptr %.02.i.i.i.i.i.i.i, align 8 ; 2 uses
  call void @free(ptr noundef nonnull %.02.i.i.i.i.i.i.i) #39
  %.not.i95.i.i.i.i.i.i = icmp eq ptr %i.bto, null
  br i1 %.not.i95.i.i.i.i.i.i, label %stbtt__hheap_cleanup.exit.i.i.i.i.i.i, label %.lr.ph.i94.i.i.i.i.i.i

stbtt__hheap_cleanup.exit.i.i.i.i.i.i:            ; preds = %.lr.ph.i94.i.i.i.i.i.i, %._crit_edge35.i.i.i.i.i.i, %bb.en
  %.not.i.i.i.i.i.i = icmp eq ptr %.080.i.i.i.i.i.i, %i.g
  br i1 %.not.i.i.i.i.i.i, label %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i, label %bb.mx

bb.mx:                                            ; preds = %stbtt__hheap_cleanup.exit.i.i.i.i.i.i
  call void @free(ptr noundef %.080.i.i.i.i.i.i) #39
  br label %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i

stbtt__rasterize_sorted_edges.exit.i.i.i.i.i:     ; preds = %bb.mx, %stbtt__hheap_cleanup.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @free(ptr noundef %i.agn) #39
  br label %stbtt__rasterize.exit.i.i.i.i

stbtt__rasterize.exit.i.i.i.i:                    ; preds = %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i, %._crit_edge.i27.i.i.i.i
  call void @free(ptr noundef %i.acf) #39
  call void @free(ptr noundef %i.aec) #39
  br label %stbtt_GetCodepointBitmap.exit

stbtt_GetCodepointBitmap.exit:                    ; preds = %bb.do, %bb.dp, %stbtt_FlattenCurves.exit.thread.i.i.i.i, %stbtt__rasterize.exit.i.i.i.i, %bb.dn
  %.1185 = phi i32 [ 0, %bb.dn ], [ %i.zy, %stbtt__rasterize.exit.i.i.i.i ], [ %i.zy, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ %i.zy, %bb.dp ], [ %i.zy, %bb.do ]
  %.1182 = phi i32 [ 0, %bb.dn ], [ %i.aab, %stbtt__rasterize.exit.i.i.i.i ], [ %i.aab, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ %i.aab, %bb.dp ], [ %i.aab, %bb.do ]
  %.0.i.i.i151 = phi ptr [ null, %bb.dn ], [ %i.aag, %stbtt__rasterize.exit.i.i.i.i ], [ %i.aag, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ null, %bb.dp ], [ null, %bb.do ]
  %i.btp = load ptr, ptr %i.m, align 8
  call void @free(ptr noundef %i.btp) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #39
  br label %.sink.split

bb.my:                                            ; preds = %bb.dm
  %.not141 = icmp eq i32 %i.zo, 32
  br i1 %.not141, label %bb.pf, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.btq = getelementptr inbounds nuw i8, ptr %i.zs, i64 4
  %i.btr = getelementptr inbounds nuw i8, ptr %i.zs, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  br i1 %i.yt, label %stbtt_GetCodepointSDF.exit, label %bb.na

bb.na:                                            ; preds = %bb.mz
  call fastcc void @stbtt_GetGlyphBitmapBoxSubpixel(ptr noundef nonnull readonly %9, i32 noundef %i.zp, float noundef %i.yc, float noundef %i.yc, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d)
  %i.bts = load i32, ptr %i.a, align 4            ; 4 uses
  %i.btt = load i32, ptr %i.c, align 4            ; 9 uses
  %i.btu = icmp eq i32 %i.bts, %i.btt
  br i1 %i.btu, label %stbtt_GetCodepointSDF.exit, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.btv = load i32, ptr %i.b, align 4            ; 2 uses
  %i.btw = load i32, ptr %i.d, align 4            ; 2 uses
  %i.btx = icmp eq i32 %i.btv, %i.btw
  br i1 %i.btx, label %stbtt_GetCodepointSDF.exit, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.bty = add i32 %i.bts, -4                     ; 4 uses
  %i.btz = add i32 %i.btv, -4                     ; 7 uses
  %i.bua = add i32 %i.btt, 4                      ; 6 uses
  %i.bub = add i32 %i.btw, 4                      ; 4 uses
  %i.buc = sub i32 %i.bua, %i.bty                 ; 4 uses
  %i.bud = sub nsw i32 %i.bub, %i.btz             ; 2 uses
  store i32 %i.bty, ptr %i.btq, align 4
  store i32 %i.btz, ptr %i.btr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #39
  %i.bue = call fastcc i32 @stbtt_GetGlyphShape(ptr noundef nonnull readonly %9, i32 noundef %i.zp, ptr noundef %i.e) ; 5 uses
  %i.buf = mul nsw i32 %i.bud, %i.buc
  %i.bug = sext i32 %i.buf to i64
  %i.buh = call noalias ptr @malloc(i64 noundef %i.bug) #42 ; 23 uses
  %i.bui = sext i32 %i.bue to i64
  %i.buj = shl nsw i64 %i.bui, 2
  %i.buk = call noalias ptr @malloc(i64 noundef %i.buj) #42 ; 4 uses
  %i.bul = icmp sgt i32 %i.bue, 0                 ; 2 uses
  %.pre.pre.i.i = load ptr, ptr %i.e, align 8     ; 6 uses
  br i1 %i.bul, label %.lr.ph.i.i157, label %.preheader485.i.i

.lr.ph.i.i157:                                    ; preds = %bb.nc
  %i.bum = add nsw i32 %i.bue, -1
  %wide.trip.count.i.i158 = zext nneg i32 %i.bue to i64
  %i.bun = zext nneg i32 %i.bum to i64
  br label %bb.pa

.preheader485.i.i:                                ; preds = %bb.pe, %bb.nc
  %i.buo = icmp slt i32 %i.btz, %i.bub
  br i1 %i.buo, label %.preheader.lr.ph.i.i, label %._crit_edge495.split.i.i

.preheader.lr.ph.i.i:                             ; preds = %.preheader485.i.i
  %i.bup = icmp slt i32 %i.bty, %i.bua
  %wide.trip.count.i.i.i156 = zext i32 %i.bue to i64 ; 2 uses
  br i1 %i.bup, label %.preheader.preheader.i.i, label %._crit_edge495.split.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.i.i
  %i.buq = zext i32 %i.bty to i64                 ; 10 uses
  %reass.sub.i.i = sub i32 4, %i.bts              ; 2 uses
  br i1 %i.bul, label %.preheader.i.us.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.preheader.preheader.i.i
  %i.bur = add i32 %i.btt, 7
  %i.bus = sub i32 %i.bur, %i.bts                 ; 8 uses
  %i.but = zext i32 %i.bus to i64
  %i.buu = add nuw nsw i64 %i.but, 1              ; 15 uses
  %i.buv = add i32 %i.btt, 3
  %i.buw = add i32 %i.btt, 3
  %i.bux = add i32 %i.btt, 3
  %min.iters.check672 = icmp ult i32 %i.bus, 7
  %min.iters.check700 = icmp ult i32 %i.bus, 31
  %i.buy = and i64 %i.buu, 24
  %n.vec702 = and i64 %i.buu, 8589934560          ; 4 uses
  %i.buz = add nuw nsw i64 %n.vec702, %i.buq
  %cmp.n707 = icmp eq i64 %i.buu, %n.vec702
  %min.epilog.iters.check713 = icmp eq i64 %i.buy, 0
  %n.vec715 = and i64 %i.buu, 8589934584          ; 3 uses
  %i.bva = add nuw nsw i64 %n.vec715, %i.buq
  %cmp.n720 = icmp eq i64 %i.buu, %n.vec715
  %min.iters.check674 = icmp ult i32 %i.bus, 31
  %i.bvb = and i64 %i.buu, 24
  %n.vec676 = and i64 %i.buu, 8589934560          ; 4 uses
  %i.bvc = add nuw nsw i64 %n.vec676, %i.buq
  %cmp.n681 = icmp eq i64 %i.buu, %n.vec676
  %min.epilog.iters.check687 = icmp eq i64 %i.bvb, 0
  %n.vec689 = and i64 %i.buu, 8589934584          ; 3 uses
  %i.bvd = add nuw nsw i64 %n.vec689, %i.buq
  %cmp.n694 = icmp eq i64 %i.buu, %n.vec689
  %min.iters.check646 = icmp ult i32 %i.bus, 7
  %min.iters.check648 = icmp ult i32 %i.bus, 31
  %i.bve = and i64 %i.buu, 24
  %n.vec650 = and i64 %i.buu, 8589934560          ; 4 uses
  %i.bvf = add nuw nsw i64 %n.vec650, %i.buq
  %cmp.n655 = icmp eq i64 %i.buu, %n.vec650
  %min.epilog.iters.check661 = icmp eq i64 %i.bve, 0
  %n.vec663 = and i64 %i.buu, 8589934584          ; 3 uses
  %i.bvg = add nuw nsw i64 %n.vec663, %i.buq
  %cmp.n668 = icmp eq i64 %i.buu, %n.vec663
  br label %.preheader.i.i

.preheader.i.us.i:                                ; preds = %.preheader.preheader.i.i, %._crit_edge493.i.split.us.us.i
  %.0435494.i.us.i = phi i32 [ %i.cms, %._crit_edge493.i.split.us.us.i ], [ %i.btz, %.preheader.preheader.i.i ] ; 3 uses
  %i.bvh = sitofp i32 %.0435494.i.us.i to float
  %i.bvi = fadd float %i.bvh, 5.000000e-01        ; 8 uses
  %i.bvj = fdiv float %i.bvi, %i.yu               ; 4 uses
  %i.bvk = fpext float %i.bvj to double
  %i.bvl = fadd float %i.bvj, f0xBC23D70A
  %i.bvm = fadd float %i.bvj, f0x3C23D70A
  %i.bvn = sub nsw i32 %.0435494.i.us.i, %i.btz
  %i.bvo = mul nsw i32 %i.bvn, %i.buc
  %.reass.i.us.i = add i32 %i.bvo, %reass.sub.i.i
  br label %bb.nd

bb.nd:                                            ; preds = %bb.oz, %.preheader.i.us.i
  %indvars.iv502.i.us.us.i = phi i64 [ %i.buq, %.preheader.i.us.i ], [ %indvars.iv.next503.i.us.us.i, %bb.oz ] ; 2 uses
  %i.bvp = trunc i64 %indvars.iv502.i.us.us.i to i32 ; 2 uses
  %i.bvq = sitofp i32 %i.bvp to float
  %i.bvr = fadd float %i.bvq, 5.000000e-01        ; 8 uses
  %i.bvs = fdiv float %i.bvr, %i.yc               ; 7 uses
  %i.bvt = call double @fmod(double noundef %i.bvk, double noundef 1.000000e+00) #39 ; 2 uses
  %i.bvu = fcmp olt double %i.bvt, f0x3F847AE130000000
  br i1 %i.bvu, label %.lr.ph.i.i.us.us.i, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.bvv = fcmp ogt double %i.bvt, f0x3FEFAE1490000000
  br i1 %i.bvv, label %bb.nf, label %.lr.ph.i.i.us.us.i

bb.nf:                                            ; preds = %bb.ne
  br label %.lr.ph.i.i.us.us.i

.lr.ph.i.i.us.us.i:                               ; preds = %bb.nf, %bb.ne, %bb.nd
  %.0150.i.i.us.us.i = phi float [ %i.bvj, %bb.ne ], [ %i.bvl, %bb.nf ], [ %i.bvm, %bb.nd ] ; 10 uses
  %i.bvw = fmul float %i.bvs, 0.000000e+00
  %i.bvx = fmul float %.0150.i.i.us.us.i, 0.000000e+00
  %i.bvy = fadd float %i.bvs, %i.bvx
  %i.bvz = fsub float %i.bvw, %.0150.i.i.us.us.i
  br label %bb.ng

bb.ng:                                            ; preds = %.thread.i.i.us.us.i, %.lr.ph.i.i.us.us.i
  %indvars.iv.i.i.us.us.i = phi i64 [ 0, %.lr.ph.i.i.us.us.i ], [ %indvars.iv.next.i.i.us.us.i, %.thread.i.i.us.us.i ] ; 2 uses
  %.0197.i.i.us.us.i = phi i32 [ 0, %.lr.ph.i.i.us.us.i ], [ %.9.i.fr.i.us.us.i, %.thread.i.i.us.us.i ] ; 11 uses
  %i.bwa = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre.i.i, i64 %indvars.iv.i.i.us.us.i ; 11 uses
  %i.bwb = getelementptr inbounds nuw i8, ptr %i.bwa, i64 12
  %i.bwc = load i8, ptr %i.bwb, align 2
  switch i8 %i.bwc, label %.thread.i.i.us.us.i [
    i8 2, label %bb.nv
    i8 3, label %bb.nh
  ]

bb.nh:                                            ; preds = %bb.ng
  %i.bwd = getelementptr i8, ptr %i.bwa, i64 -14  ; 2 uses
  %i.bwe = getelementptr i8, ptr %i.bwa, i64 -12
  %i.bwf = getelementptr inbounds nuw i8, ptr %i.bwa, i64 4
  %i.bwg = load i16, ptr %i.bwf, align 2          ; 2 uses
  %i.bwh = getelementptr inbounds nuw i8, ptr %i.bwa, i64 6
  %i.bwi = load i16, ptr %i.bwh, align 2          ; 3 uses
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bwa, i64 2
  %i.bwk = load i16, ptr %i.bwe, align 2          ; 6 uses
  %i.bwl = load i16, ptr %i.bwd, align 2          ; 2 uses
  %i.bwm = sext i16 %i.bwk to i32
  %i.bwn = load i16, ptr %i.bwj, align 2          ; 6 uses
  %i.bwo = load i16, ptr %i.bwa, align 2          ; 2 uses
  %i.bwp = call i16 @llvm.smin.i16(i16 %i.bwg, i16 %i.bwo)
  %..i.i.us.us.i = call i16 @llvm.smin.i16(i16 %i.bwp, i16 %i.bwl)
  %i.bwq = call i16 @llvm.smin.i16(i16 %i.bwi, i16 %i.bwn)
  %i.bwr = call i16 @llvm.smin.i16(i16 %i.bwk, i16 %i.bwq)
  %i.bws = call i16 @llvm.smax.i16(i16 %i.bwi, i16 %i.bwn)
  %i.bwt = call i16 @llvm.smax.i16(i16 %i.bwk, i16 %i.bws)
  %i.bwu = sitofp i16 %i.bwr to float
  %i.bwv = fcmp ogt float %.0150.i.i.us.us.i, %i.bwu
  %i.bww = sitofp i16 %i.bwt to float
  %i.bwx = fcmp olt float %.0150.i.i.us.us.i, %i.bww
  %or.cond162.i.i.us.us.i = and i1 %i.bwv, %i.bwx
  %i.bwy = sitofp i16 %..i.i.us.us.i to float
  %i.bwz = fcmp ogt float %i.bvs, %i.bwy
  %or.cond164.i.i.us.us.i = select i1 %or.cond162.i.i.us.us.i, i1 %i.bwz, i1 false
  br i1 %or.cond164.i.i.us.us.i, label %bb.ni, label %.thread.i.i.us.us.i

bb.ni:                                            ; preds = %bb.nh
  %i.bxa = load <2 x i16>, ptr %i.bwa, align 2    ; 2 uses
  %i.bxb = load <2 x i16>, ptr %i.bwd, align 2    ; 2 uses
  %10 = shufflevector <2 x i16> %i.bxa, <2 x i16> %i.bxb, <2 x i32> <i32 0, i32 2>
  %11 = sitofp <2 x i16> %10 to <2 x float>       ; 3 uses
  %12 = shufflevector <2 x i16> %i.bxa, <2 x i16> %i.bxb, <2 x i32> <i32 1, i32 3>
  %i.bxc = sitofp <2 x i16> %12 to <2 x float>    ; 3 uses
  %13 = sitofp i16 %i.bwg to float                ; 4 uses
  %14 = sitofp i16 %i.bwi to float                ; 4 uses
  %15 = extractelement <2 x float> %11, i64 1     ; 3 uses
  %16 = fcmp une float %15, %13
  %17 = extractelement <2 x float> %i.bxc, i64 1  ; 3 uses
  %18 = fcmp une float %17, %14
  %narrow.i.not.i.i.us.us.i = or i1 %16, %18
  br i1 %narrow.i.not.i.i.us.us.i, label %bb.nj, label %bb.nk

bb.nj:                                            ; preds = %bb.ni
  %19 = extractelement <2 x float> %11, i64 0     ; 2 uses
  %20 = fcmp une float %19, %13
  %21 = extractelement <2 x float> %i.bxc, i64 0  ; 2 uses
  %22 = fcmp une float %21, %14
  %narrow.i182.not.i.i.us.us.i = or i1 %20, %22
  br i1 %narrow.i182.not.i.i.us.us.i, label %bb.no, label %bb.nk

bb.nk:                                            ; preds = %bb.nj, %bb.ni
  %i.bxd = sext i16 %i.bwl to i32                 ; 2 uses
  %i.bxe = sext i16 %i.bwo to i32                 ; 2 uses
  %i.bxf = sext i16 %i.bwn to i32
  %i.bxg = icmp slt i16 %i.bwk, %i.bwn
  %i.bxh = call i16 @llvm.smin.i16(i16 %i.bwk, i16 %i.bwn)
  %i.bxi = sitofp i16 %i.bxh to float
  %i.bxj = fcmp ogt float %.0150.i.i.us.us.i, %i.bxi
  br i1 %i.bxj, label %bb.nl, label %.thread.i.i.us.us.i

bb.nl:                                            ; preds = %bb.nk
  %i.bxk = call i16 @llvm.smax.i16(i16 %i.bwk, i16 %i.bwn)
  %i.bxl = sitofp i16 %i.bxk to float
  %i.bxm = fcmp olt float %.0150.i.i.us.us.i, %i.bxl
  br i1 %i.bxm, label %bb.nm, label %.thread.i.i.us.us.i

bb.nm:                                            ; preds = %bb.nl
  %i.bxn = call i32 @llvm.smin.i32(i32 %i.bxd, i32 %i.bxe)
  %i.bxo = sitofp i32 %i.bxn to float
  %i.bxp = fcmp ogt float %i.bvs, %i.bxo
  br i1 %i.bxp, label %bb.nn, label %.thread.i.i.us.us.i

bb.nn:                                            ; preds = %bb.nm
  %i.bxq = fsub float %.0150.i.i.us.us.i, %17
  %i.bxr = sub nsw i32 %i.bxf, %i.bwm
  %i.bxs = sitofp i32 %i.bxr to float
  %i.bxt = fdiv float %i.bxq, %i.bxs
  %i.bxu = sub nsw i32 %i.bxe, %i.bxd
  %i.bxv = sitofp i32 %i.bxu to float
  %i.bxw = call float @llvm.fmuladd.f32(float %i.bxt, float %i.bxv, float %15)
  %i.bxx = fcmp olt float %i.bxw, %i.bvs
  %i.bxy = select i1 %i.bxg, i32 1, i32 -1
  %i.bxz = select i1 %i.bxx, i32 %i.bxy, i32 0
  %.4.i.i.us.us.i = add nsw i32 %i.bxz, %.0197.i.i.us.us.i
  br label %.thread.i.i.us.us.i

bb.no:                                            ; preds = %bb.nj
  %i.bya = fneg float %15
  %i.byb = call float @llvm.copysign.f32(float 0.000000e+00, float %i.bya)
  %i.byc = fadd float %i.byb, %17                 ; 3 uses
  %i.byd = fneg float %13
  %i.bye = call float @llvm.copysign.f32(float 0.000000e+00, float %i.byd)
  %i.byf = fadd float %i.bye, %14                 ; 2 uses
  %i.byg = fneg float %19
  %i.byh = call float @llvm.copysign.f32(float 0.000000e+00, float %i.byg)
  %i.byi = fadd float %i.byh, %21
  %i.byj = call float @llvm.fmuladd.f32(float %i.byf, float -2.000000e+00, float %i.byc)
  %i.byk = fadd float %i.byj, %i.byi              ; 5 uses
  %i.byl = fsub float %i.byf, %i.byc              ; 7 uses
  %i.bym = fadd float %i.bvz, %i.byc              ; 2 uses
  %i.byn = fcmp une float %i.byk, 0.000000e+00
  br i1 %i.byn, label %bb.nq, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.byo = fmul float %i.byl, -2.000000e+00
  %i.byp = fdiv float %i.bym, %i.byo              ; 3 uses
  %i.byq = fcmp ult float %i.byp, 0.000000e+00
  %i.byr = fcmp ugt float %i.byp, 1.000000e+00
  %or.cond119.i.i.i.us.us.i = or i1 %i.byq, %i.byr
  br i1 %or.cond119.i.i.i.us.us.i, label %stbtt__ray_intersect_bezier.exit.i.i.us.us.i, label %.thread21.i.i.i.us.us.i

bb.nq:                                            ; preds = %bb.no
  %i.bys = fneg float %i.bym
  %i.byt = fmul float %i.byk, %i.bys
  %i.byu = call float @llvm.fmuladd.f32(float %i.byl, float %i.byl, float %i.byt) ; 2 uses
  %i.byv = fcmp ogt float %i.byu, 0.000000e+00
  br i1 %i.byv, label %bb.nr, label %stbtt__ray_intersect_bezier.exit.i.i.us.us.i

bb.nr:                                            ; preds = %bb.nq
  %i.byw = fdiv float -1.000000e+00, %i.byk       ; 2 uses
  %sqrtf.i.i.i.us.us.i = call float @sqrtf(float noundef %i.byu) #39 ; 3 uses
  %i.byx = fadd float %i.byl, %sqrtf.i.i.i.us.us.i
  %i.byy = fmul float %i.byw, %i.byx              ; 4 uses
  %i.byz = fsub float %i.byl, %sqrtf.i.i.i.us.us.i
  %i.bza = fmul float %i.byw, %i.byz              ; 5 uses
  %i.bzb = fcmp oge float %i.byy, 0.000000e+00
  %i.bzc = fcmp ole float %i.byy, 1.000000e+00
  %or.cond.not.not.not.i.i.i.us.us.i = and i1 %i.bzb, %i.bzc ; 3 uses
  %i.bzd = fcmp ule float %sqrtf.i.i.i.us.us.i, 0.000000e+00
  %i.bze = fcmp ult float %i.bza, 0.000000e+00
  %i.bzf = fcmp ugt float %i.bza, 1.000000e+00
  %i.bzg = or i1 %i.bze, %i.bzf
  %or.cond118.i.i.i.us.us.i = select i1 %i.bzd, i1 true, i1 %i.bzg
  br i1 %or.cond118.i.i.i.us.us.i, label %bb.nt, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %.0107.i.i.i.us.us.i = select i1 %or.cond.not.not.not.i.i.i.us.us.i, float %i.byy, float %i.bza
  br label %.thread21.i.i.i.us.us.i

bb.nt:                                            ; preds = %bb.nr
  br i1 %or.cond.not.not.not.i.i.i.us.us.i, label %.thread21.i.i.i.us.us.i, label %stbtt__ray_intersect_bezier.exit.i.i.us.us.i

.thread21.i.i.i.us.us.i:                          ; preds = %bb.nt, %bb.ns, %bb.np
  %.327.i.i.i.us.us.i = phi i1 [ false, %bb.nt ], [ %or.cond.not.not.not.i.i.i.us.us.i, %bb.ns ], [ false, %bb.np ]
  %.110626.i.i.i.us.us.i = phi float [ %i.bza, %bb.nt ], [ %i.bza, %bb.ns ], [ 0.000000e+00, %bb.np ] ; 5 uses
  %.311025.i.i.i.us.us.i = phi float [ %i.byy, %bb.nt ], [ %.0107.i.i.i.us.us.i, %bb.ns ], [ %i.byp, %bb.np ] ; 5 uses
  %i.bzh = call <2 x float> @llvm.copysign.v2f32(<2 x float> zeroinitializer, <2 x float> %i.bxc)
  %i.bzi = call float @llvm.copysign.f32(float 0.000000e+00, float %14)
  %i.bzj = fadd float %i.bzi, %13
  %i.bzk = fadd <2 x float> %i.bzh, %11           ; 2 uses
  %i.bzl = extractelement <2 x float> %i.bzk, i64 1 ; 3 uses
  %i.bzm = fsub float %i.bzj, %i.bzl              ; 2 uses
  %i.bzn = extractelement <2 x float> %i.bzk, i64 0
  %i.bzo = fsub float %i.bzn, %i.bzl              ; 2 uses
  %i.bzp = fsub float %i.bzl, %i.bvy              ; 2 uses
  %i.bzq = call float @llvm.fmuladd.f32(float %.311025.i.i.i.us.us.i, float -2.000000e+00, float 2.000000e+00)
  %i.bzr = fmul float %.311025.i.i.i.us.us.i, %i.bzq
  %i.bzs = call float @llvm.fmuladd.f32(float %i.bzr, float %i.bzm, float %i.bzp)
  %i.bzt = fmul float %.311025.i.i.i.us.us.i, %.311025.i.i.i.us.us.i
  %i.bzu = call float @llvm.fmuladd.f32(float %i.bzt, float %i.bzo, float %i.bzs) ; 2 uses
  %i.bzv = call float @llvm.fmuladd.f32(float %i.byk, float %.311025.i.i.i.us.us.i, float %i.byl) ; 2 uses
  br i1 %.327.i.i.i.us.us.i, label %bb.nu, label %stbtt__ray_intersect_bezier.exit.i.i.us.us.i

bb.nu:                                            ; preds = %.thread21.i.i.i.us.us.i
  %i.bzw = call float @llvm.fmuladd.f32(float %.110626.i.i.i.us.us.i, float -2.000000e+00, float 2.000000e+00)
  %i.bzx = fmul float %.110626.i.i.i.us.us.i, %i.bzw
  %i.bzy = call float @llvm.fmuladd.f32(float %i.bzx, float %i.bzm, float %i.bzp)
  %i.bzz = fmul float %.110626.i.i.i.us.us.i, %.110626.i.i.i.us.us.i
  %i.caa = call float @llvm.fmuladd.f32(float %i.bzz, float %i.bzo, float %i.bzy)
  %i.cab = call float @llvm.fmuladd.f32(float %i.byk, float %.110626.i.i.i.us.us.i, float %i.byl)
  %i.cac = fcmp olt float %i.caa, 0.000000e+00
  %i.cad = fcmp olt float %i.cab, 0.000000e+00
  %i.cae = select i1 %i.cad, i32 -1, i32 1
  %i.caf = select i1 %i.cac, i32 %i.cae, i32 0
  br label %stbtt__ray_intersect_bezier.exit.i.i.us.us.i

stbtt__ray_intersect_bezier.exit.i.i.us.us.i:     ; preds = %bb.nu, %.thread21.i.i.i.us.us.i, %bb.nt, %bb.nq, %bb.np
  %.sroa.4.0.i.i.us.us.i = phi float [ %i.bzv, %bb.nu ], [ %i.bzv, %.thread21.i.i.i.us.us.i ], [ undef, %bb.nt ], [ undef, %bb.nq ], [ undef, %bb.np ]
  %.sroa.0.0.i.i.us.us.i = phi float [ %i.bzu, %bb.nu ], [ %i.bzu, %.thread21.i.i.i.us.us.i ], [ undef, %bb.nt ], [ undef, %bb.nq ], [ undef, %bb.np ]
  %i.cag = phi i1 [ true, %bb.nu ], [ true, %.thread21.i.i.i.us.us.i ], [ false, %bb.nt ], [ false, %bb.nq ], [ false, %bb.np ]
  %or.cond7.i.i.us.us.i = phi i32 [ %i.caf, %bb.nu ], [ 0, %.thread21.i.i.i.us.us.i ], [ 0, %bb.nt ], [ 0, %bb.nq ], [ 0, %bb.np ]
  %i.cah = fcmp olt float %.sroa.0.0.i.i.us.us.i, 0.000000e+00
  %or.cond.i.i.us.us.i = select i1 %i.cag, i1 %i.cah, i1 false
  %i.cai = fcmp olt float %.sroa.4.0.i.i.us.us.i, 0.000000e+00
  %i.caj = select i1 %i.cai, i32 -1, i32 1
  %i.cak = select i1 %or.cond.i.i.us.us.i, i32 %i.caj, i32 0
  %.5.i.i.us.us.i = add i32 %or.cond7.i.i.us.us.i, %.0197.i.i.us.us.i
  %.6.i.i.us.us.i = add i32 %.5.i.i.us.us.i, %i.cak
  br label %.thread.i.i.us.us.i

bb.nv:                                            ; preds = %bb.ng
  %i.cal = getelementptr i8, ptr %i.bwa, i64 -14
  %i.cam = load <2 x i16>, ptr %i.cal, align 2    ; 3 uses
  %i.can = extractelement <2 x i16> %i.cam, i64 1 ; 4 uses
  %i.cao = extractelement <2 x i16> %i.cam, i64 0
  %i.cap = sext i16 %i.cao to i32                 ; 2 uses
  %i.caq = sext i16 %i.can to i32
  %i.car = load i16, ptr %i.bwa, align 2
  %i.cas = sext i16 %i.car to i32                 ; 2 uses
  %i.cat = getelementptr inbounds nuw i8, ptr %i.bwa, i64 2
  %i.cau = load i16, ptr %i.cat, align 2          ; 4 uses
  %i.cav = sext i16 %i.cau to i32
  %i.caw = icmp slt i16 %i.can, %i.cau
  %i.cax = call i16 @llvm.smin.i16(i16 %i.can, i16 %i.cau)
  %i.cay = sitofp i16 %i.cax to float
  %i.caz = fcmp ogt float %.0150.i.i.us.us.i, %i.cay
  br i1 %i.caz, label %bb.nw, label %.thread.i.i.us.us.i

bb.nw:                                            ; preds = %bb.nv
  %i.cba = call i16 @llvm.smax.i16(i16 %i.can, i16 %i.cau)
  %i.cbb = sitofp i16 %i.cba to float
  %i.cbc = fcmp olt float %.0150.i.i.us.us.i, %i.cbb
  br i1 %i.cbc, label %bb.nx, label %.thread.i.i.us.us.i

bb.nx:                                            ; preds = %bb.nw
  %i.cbd = call i32 @llvm.smin.i32(i32 %i.cap, i32 %i.cas)
  %i.cbe = sitofp i32 %i.cbd to float
  %i.cbf = fcmp ogt float %i.bvs, %i.cbe
  br i1 %i.cbf, label %bb.ny, label %.thread.i.i.us.us.i

bb.ny:                                            ; preds = %bb.nx
  %i.cbg = sitofp <2 x i16> %i.cam to <2 x float> ; 2 uses
  %i.cbh = extractelement <2 x float> %i.cbg, i64 1
  %i.cbi = fsub float %.0150.i.i.us.us.i, %i.cbh
  %i.cbj = sub nsw i32 %i.cav, %i.caq
  %i.cbk = sitofp i32 %i.cbj to float
  %i.cbl = fdiv float %i.cbi, %i.cbk
  %i.cbm = sub nsw i32 %i.cas, %i.cap
  %i.cbn = sitofp i32 %i.cbm to float
  %i.cbo = extractelement <2 x float> %i.cbg, i64 0
  %i.cbp = call float @llvm.fmuladd.f32(float %i.cbl, float %i.cbn, float %i.cbo)
  %i.cbq = fcmp olt float %i.cbp, %i.bvs
  %i.cbr = select i1 %i.caw, i32 1, i32 -1
  %i.cbs = select i1 %i.cbq, i32 %i.cbr, i32 0
  %.1.i.i.us.us.i = add nsw i32 %i.cbs, %.0197.i.i.us.us.i
  br label %.thread.i.i.us.us.i

.thread.i.i.us.us.i:                              ; preds = %bb.ny, %bb.nx, %bb.nw, %bb.nv, %stbtt__ray_intersect_bezier.exit.i.i.us.us.i, %bb.nn, %bb.nm, %bb.nl, %bb.nk, %bb.nh, %bb.ng
  %.9.i.i.us.us.i = phi i32 [ %.0197.i.i.us.us.i, %bb.ng ], [ %.6.i.i.us.us.i, %stbtt__ray_intersect_bezier.exit.i.i.us.us.i ], [ %.0197.i.i.us.us.i, %bb.nh ], [ %.4.i.i.us.us.i, %bb.nn ], [ %.0197.i.i.us.us.i, %bb.nm ], [ %.0197.i.i.us.us.i, %bb.nl ], [ %.0197.i.i.us.us.i, %bb.nk ], [ %.0197.i.i.us.us.i, %bb.nv ], [ %.0197.i.i.us.us.i, %bb.nw ], [ %.0197.i.i.us.us.i, %bb.nx ], [ %.1.i.i.us.us.i, %bb.ny ]
  %.9.i.fr.i.us.us.i = freeze i32 %.9.i.i.us.us.i ; 2 uses
  %indvars.iv.next.i.i.us.us.i = add nuw nsw i64 %indvars.iv.i.i.us.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.us.i = icmp eq i64 %indvars.iv.next.i.i.us.us.i, %wide.trip.count.i.i.i156
  br i1 %exitcond.not.i.i.us.us.i, label %.lr.ph490.i.us.us.i, label %bb.ng

.lr.ph490.i.us.us.i:                              ; preds = %.thread.i.i.us.us.i, %.thread.i.us.us.i
  %indvars.iv497.i.us.us.i = phi i64 [ %indvars.iv.next498.i.us.us.i, %.thread.i.us.us.i ], [ 0, %.thread.i.i.us.us.i ] ; 4 uses
  %.0428489.i.us.us.i = phi float [ %.9.i.us.us.i, %.thread.i.us.us.i ], [ 9.999990e+05, %.thread.i.i.us.us.i ] ; 10 uses
  %i.cbt = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre.i.i, i64 %indvars.iv497.i.us.us.i ; 5 uses
  %i.cbu = load <2 x i16>, ptr %i.cbt, align 2
  %i.cbv = sitofp <2 x i16> %i.cbu to <2 x float>
  %i.cbw = fmul <2 x float> %i.zd, %i.cbv         ; 10 uses
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.cbt, i64 12
  %i.cby = load i8, ptr %i.cbx, align 2
  switch i8 %i.cby, label %.thread.i.us.us.i [
    i8 2, label %bb.ov
    i8 3, label %bb.nz
  ]

bb.nz:                                            ; preds = %.lr.ph490.i.us.us.i
  %i.cbz = getelementptr i8, ptr %i.cbt, i64 -14
  %i.cca = getelementptr inbounds nuw i8, ptr %i.cbt, i64 4
  %i.ccb = load <2 x i16>, ptr %i.cbz, align 2
  %i.ccc = sitofp <2 x i16> %i.ccb to <2 x float>
  %i.ccd = fmul <2 x float> %i.zd, %i.ccc         ; 4 uses
  %i.cce = shufflevector <2 x float> %i.ccd, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.ccf = load <2 x i16>, ptr %i.cca, align 2
  %i.ccg = sitofp <2 x i16> %i.ccf to <2 x float>
  %i.cch = fmul <2 x float> %i.zd, %i.ccg         ; 6 uses
  %i.cci = fcmp olt <2 x float> %i.cbw, %i.cch
  %i.ccj = shufflevector <2 x i1> %i.cci, <2 x i1> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.cck = shufflevector <2 x float> %i.cch, <2 x float> %i.cbw, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ccl = shufflevector <2 x float> %i.cbw, <2 x float> %i.cch, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ccm = select <4 x i1> %i.ccj, <4 x float> %i.cck, <4 x float> %i.ccl ; 3 uses
  %i.ccn = fcmp olt <4 x float> %i.ccm, %i.cce
  %i.cco = shufflevector <4 x float> %i.cce, <4 x float> %i.ccm, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ccp = shufflevector <2 x float> %i.ccd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ccq = shufflevector <4 x float> %i.ccm, <4 x float> %i.ccp, <4 x i32> <i32 0, i32 1, i32 5, i32 4>
  %i.ccr = select <4 x i1> %i.ccn, <4 x float> %i.cco, <4 x float> %i.ccq ; 2 uses
  %i.ccs = insertelement <4 x float> poison, float %.0428489.i.us.us.i, i64 0
  %i.cct = shufflevector <4 x float> %i.ccs, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ccu = fsub <4 x float> %i.ccr, %i.cct        ; 2 uses
  %i.ccv = fadd <4 x float> %i.ccr, %i.cct        ; 2 uses
  %i.ccw = extractelement <4 x float> %i.ccu, i64 3
  %i.ccx = fcmp ogt float %i.bvr, %i.ccw
  %i.ccy = extractelement <4 x float> %i.ccv, i64 1
  %i.ccz = fcmp olt float %i.bvr, %i.ccy
  %or.cond475.i.us.us.i = select i1 %i.ccx, i1 %i.ccz, i1 false
  %i.cda = extractelement <4 x float> %i.ccu, i64 2
  %i.cdb = fcmp ogt float %i.bvi, %i.cda
  %or.cond477.i.us.us.i = select i1 %or.cond475.i.us.us.i, i1 %i.cdb, i1 false
  %i.cdc = extractelement <4 x float> %i.ccv, i64 0
  %i.cdd = fcmp olt float %i.bvi, %i.cdc
  %or.cond479.i.us.us.i = select i1 %or.cond477.i.us.us.i, i1 %i.cdd, i1 false
  br i1 %or.cond479.i.us.us.i, label %bb.oa, label %.thread.i.us.us.i

bb.oa:                                            ; preds = %bb.nz
  %i.cde = extractelement <2 x float> %i.cbw, i64 0 ; 5 uses
  %i.cdf = extractelement <2 x float> %i.cch, i64 0 ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.cch, %i.cbw ; 2 uses
  %i.cdg = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 6 uses
  %i.cdh = extractelement <2 x float> %i.cbw, i64 1 ; 6 uses
  %i.cdi = extractelement <2 x float> %i.cch, i64 1 ; 5 uses
  %i.cdj = fsub float %i.cdi, %i.cdh              ; 7 uses
  %i.cdk = call float @llvm.fmuladd.f32(float %i.cdf, float -2.000000e+00, float %i.cde)
  %i.cdl = extractelement <2 x float> %i.ccd, i64 0 ; 4 uses
  %i.cdm = fadd float %i.cdl, %i.cdk              ; 3 uses
  %i.cdn = call float @llvm.fmuladd.f32(float %i.cdi, float -2.000000e+00, float %i.cdh)
  %i.cdo = extractelement <2 x float> %i.ccd, i64 1 ; 4 uses
  %i.cdp = fadd float %i.cdo, %i.cdn              ; 3 uses
  %i.cdq = fsub float %i.cde, %i.bvr              ; 6 uses
  %i.cdr = fsub float %i.cdh, %i.bvi              ; 6 uses
  %i.cds = getelementptr inbounds nuw [4 x i8], ptr %i.buk, i64 %indvars.iv497.i.us.us.i
  %i.cdt = load float, ptr %i.cds, align 4        ; 4 uses
  %i.cdu = fcmp oeq float %i.cdt, 0.000000e+00
  %i.cdv = fmul float %i.cdj, %i.cdp
  %i.cdw = call float @llvm.fmuladd.f32(float %i.cdg, float %i.cdm, float %i.cdv)
  %i.cdx = fmul float %i.cdw, 3.000000e+00        ; 4 uses
  br i1 %i.cdu, label %bb.oi, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %i.cdy = fmul float %i.cdx, %i.cdt              ; 5 uses
  %i.cdz = fmul float %i.cdj, %i.cdj
  %i.cea = call float @llvm.fmuladd.f32(float %i.cdg, float %i.cdg, float %i.cdz)
  %i.ceb = fmul float %i.cdr, %i.cdp
  %i.cec = call float @llvm.fmuladd.f32(float %i.cdq, float %i.cdm, float %i.ceb)
  %i.ced = call float @llvm.fmuladd.f32(float %i.cea, float 2.000000e+00, float %i.cec)
  %i.cee = fmul float %i.ced, %i.cdt              ; 2 uses
  %i.cef = fdiv float %i.cdy, -3.000000e+00       ; 4 uses
  %i.ceg = fmul float %i.cdy, %i.cdy
  %i.ceh = fdiv float %i.ceg, 3.000000e+00
  %i.cei = fsub float %i.cee, %i.ceh              ; 4 uses
  %i.cej = fmul float %i.cdy, 2.000000e+00
  %i.cek = insertelement <2 x float> poison, float %i.cdr, i64 0
  %i.cel = insertelement <2 x float> %i.cek, float %i.cee, i64 1
  %i.cem = insertelement <2 x float> <float poison, float -9.000000e+00>, float %i.cdj, i64 0
  %i.cen = fmul <2 x float> %i.cel, %i.cem
  %i.ceo = insertelement <2 x float> poison, float %i.cdq, i64 0
  %i.cep = insertelement <2 x float> %i.ceo, float %i.cej, i64 1
  %i.ceq = insertelement <2 x float> %foldExtExtBinop, float %i.cdy, i64 1 ; 2 uses
  %i.cer = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cep, <2 x float> %i.ceq, <2 x float> %i.cen)
  %i.ces = insertelement <2 x float> %i.ceq, float %i.cdt, i64 0
  %i.cet = fmul <2 x float> %i.cer, %i.ces        ; 2 uses
  %i.ceu = extractelement <2 x float> %i.cet, i64 1
  %i.cev = fdiv float %i.ceu, 2.700000e+01
  %i.cew = extractelement <2 x float> %i.cet, i64 0
  %i.cex = fadd float %i.cew, %i.cev              ; 5 uses
  %i.cey = fmul float %i.cei, %i.cei
  %i.cez = fmul float %i.cei, %i.cey              ; 2 uses
  %i.cfa = fmul float %i.cez, 4.000000e+00
  %i.cfb = fdiv float %i.cfa, 2.700000e+01
end_hunk_0
