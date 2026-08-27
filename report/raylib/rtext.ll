Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtext?download=true
inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0_@LoadFontData:bb.a
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %.lr.ph22.i.i.i.i.i.i ], [ 0, %.lr.ph22.i.i.i.preheader.i.i.i ] ; 4 uses
  %.07721.i.i.i.i.i.i = phi float [ %i.bss, %.lr.ph22.i.i.i.i.i.i ], [ 0.000000e+00, %.lr.ph22.i.i.i.preheader.i.i.i ]
  %i.bsq = getelementptr inbounds nuw [4 x i8], ptr %i.aij, i64 %indvars.iv.i.i.i.i.i.i
  %i.bsr = load float, ptr %i.bsq, align 4
  %i.bss = fadd float %.07721.i.i.i.i.i.i, %i.bsr ; 2 uses
  %i.bst = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i
  %i.bsu = load float, ptr %i.bst, align 4
  %i.bsv = fadd float %i.bsu, %i.bss
  %i.bsw = call float @llvm.fabs.f32(float %i.bsv)
  %i.bsx = call float @llvm.fmuladd.f32(float %i.bsw, float 2.550000e+02, float 5.000000e-01)
  %i.bsy = fptosi float %i.bsx to i32
  %spec.store.select.i.i.i.i.i.i = call i32 @llvm.smin.i32(i32 %i.bsy, i32 255)
  %i.bsz = trunc i32 %spec.store.select.i.i.i.i.i.i to i8
  %i.bta = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i.i to i32
  %i.btb = add nsw i32 %i.bsp, %i.bta
  %i.btc = sext i32 %i.btb to i64
  %i.btd = getelementptr inbounds i8, ptr %i.aag, i64 %i.btc
  store i8 %i.bsz, ptr %i.btd, align 1
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i153 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.aii
  br i1 %exitcond.not.i.i.i153, label %.preheader.i.i.i.i.i.i, label %.lr.ph22.i.i.i.i.i.i

.lr.ph25.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph25.i.i.i.i.i.i
  %i.bte = phi ptr [ %i.btl, %.lr.ph25.i.i.i.i.i.i ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %.224.i.i.i.i.i.i = phi ptr [ %i.btk, %.lr.ph25.i.i.i.i.i.i ], [ %i.f, %.preheader.i.i.i.i.i.i ]
  %i.btf = getelementptr inbounds nuw i8, ptr %i.bte, i64 12
  %i.btg = load float, ptr %i.btf, align 4
  %i.bth = getelementptr inbounds nuw i8, ptr %i.bte, i64 8 ; 2 uses
  %i.bti = load float, ptr %i.bth, align 8
  %i.btj = fadd float %i.btg, %i.bti
  store float %i.btj, ptr %i.bth, align 8
  %i.btk = load ptr, ptr %.224.i.i.i.i.i.i, align 8 ; 2 uses
  %i.btl = load ptr, ptr %i.btk, align 8          ; 2 uses
  %.not92.i.i.i.i.i.i = icmp eq ptr %i.btl, null
  br i1 %.not92.i.i.i.i.i.i, label %._crit_edge26.i.i.i.i.i.i, label %.lr.ph25.i.i.i.i.i.i

._crit_edge26.i.i.i.i.i.i:                        ; preds = %.lr.ph25.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %i.btm = add nsw i32 %.07531.i.i.i.i.i.i, 1
  %i.btn = add nuw nsw i32 %.07630.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond61.not.i.i.i = icmp eq i32 %i.btn, %i.aab
  br i1 %exitcond61.not.i.i.i, label %._crit_edge35.i.i.i.i.i.i, label %bb.eo

._crit_edge35.i.i.i.i.i.i:                        ; preds = %._crit_edge26.i.i.i.i.i.i
  %.not1.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.lcssa.i.i.i.i.i.i, null
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
  br i1 %.not141, label %bb.pg, label %bb.mz

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
  br label %bb.pb

.preheader485.i.i:                                ; preds = %bb.pf, %bb.nc
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
  %.0435494.i.us.i = phi i32 [ %i.cnf, %._crit_edge493.i.split.us.us.i ], [ %i.btz, %.preheader.preheader.i.i ] ; 3 uses
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

bb.nd:                                            ; preds = %bb.pa, %.preheader.i.us.i
  %indvars.iv502.i.us.us.i = phi i64 [ %i.buq, %.preheader.i.us.i ], [ %indvars.iv.next503.i.us.us.i, %bb.pa ] ; 2 uses
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
  %i.bxc = shufflevector <2 x i16> %i.bxa, <2 x i16> %i.bxb, <2 x i32> <i32 0, i32 2>
  %i.bxd = sitofp <2 x i16> %i.bxc to <2 x float> ; 3 uses
  %i.bxe = shufflevector <2 x i16> %i.bxa, <2 x i16> %i.bxb, <2 x i32> <i32 1, i32 3>
  %i.bxf = sitofp <2 x i16> %i.bxe to <2 x float> ; 3 uses
  %i.bxg = sitofp i16 %i.bwg to float             ; 4 uses
  %i.bxh = sitofp i16 %i.bwi to float             ; 4 uses
  %i.bxi = extractelement <2 x float> %i.bxd, i64 1 ; 3 uses
  %i.bxj = fcmp une float %i.bxi, %i.bxg
  %i.bxk = extractelement <2 x float> %i.bxf, i64 1 ; 3 uses
  %i.bxl = fcmp une float %i.bxk, %i.bxh
  %narrow.i.not.i.i.us.us.i = or i1 %i.bxj, %i.bxl
  br i1 %narrow.i.not.i.i.us.us.i, label %bb.nj, label %bb.nk

bb.nj:                                            ; preds = %bb.ni
  %i.bxm = extractelement <2 x float> %i.bxd, i64 0 ; 2 uses
  %i.bxn = fcmp une float %i.bxm, %i.bxg
  %i.bxo = extractelement <2 x float> %i.bxf, i64 0 ; 2 uses
  %i.bxp = fcmp une float %i.bxo, %i.bxh
  %narrow.i182.not.i.i.us.us.i = or i1 %i.bxn, %i.bxp
  br i1 %narrow.i182.not.i.i.us.us.i, label %bb.no, label %bb.nk

bb.nk:                                            ; preds = %bb.nj, %bb.ni
  %i.bxq = sext i16 %i.bwl to i32                 ; 2 uses
  %i.bxr = sext i16 %i.bwo to i32                 ; 2 uses
  %i.bxs = sext i16 %i.bwn to i32
  %i.bxt = icmp slt i16 %i.bwk, %i.bwn
  %i.bxu = call i16 @llvm.smin.i16(i16 %i.bwk, i16 %i.bwn)
  %i.bxv = sitofp i16 %i.bxu to float
  %i.bxw = fcmp ogt float %.0150.i.i.us.us.i, %i.bxv
  br i1 %i.bxw, label %bb.nl, label %.thread.i.i.us.us.i

bb.nl:                                            ; preds = %bb.nk
  %i.bxx = call i16 @llvm.smax.i16(i16 %i.bwk, i16 %i.bwn)
  %i.bxy = sitofp i16 %i.bxx to float
  %i.bxz = fcmp olt float %.0150.i.i.us.us.i, %i.bxy
  br i1 %i.bxz, label %bb.nm, label %.thread.i.i.us.us.i

bb.nm:                                            ; preds = %bb.nl
  %i.bya = call i32 @llvm.smin.i32(i32 %i.bxq, i32 %i.bxr)
  %i.byb = sitofp i32 %i.bya to float
  %i.byc = fcmp ogt float %i.bvs, %i.byb
  br i1 %i.byc, label %bb.nn, label %.thread.i.i.us.us.i

bb.nn:                                            ; preds = %bb.nm
  %i.byd = fsub float %.0150.i.i.us.us.i, %i.bxk
  %i.bye = sub nsw i32 %i.bxs, %i.bwm
  %i.byf = sitofp i32 %i.bye to float
  %i.byg = fdiv float %i.byd, %i.byf
  %i.byh = sub nsw i32 %i.bxr, %i.bxq
  %i.byi = sitofp i32 %i.byh to float
  %i.byj = call float @llvm.fmuladd.f32(float %i.byg, float %i.byi, float %i.bxi)
  %i.byk = fcmp olt float %i.byj, %i.bvs
  %i.byl = select i1 %i.bxt, i32 1, i32 -1
  %i.bym = select i1 %i.byk, i32 %i.byl, i32 0
  %.4.i.i.us.us.i = add nsw i32 %i.bym, %.0197.i.i.us.us.i
  br label %.thread.i.i.us.us.i

bb.no:                                            ; preds = %bb.nj
  %i.byn = fneg float %i.bxi
  %i.byo = call float @llvm.copysign.f32(float 0.000000e+00, float %i.byn)
  %i.byp = fadd float %i.byo, %i.bxk              ; 3 uses
  %i.byq = fneg float %i.bxg
  %i.byr = call float @llvm.copysign.f32(float 0.000000e+00, float %i.byq)
  %i.bys = fadd float %i.byr, %i.bxh              ; 2 uses
  %i.byt = fneg float %i.bxm
  %i.byu = call float @llvm.copysign.f32(float 0.000000e+00, float %i.byt)
  %i.byv = fadd float %i.byu, %i.bxo
  %i.byw = call float @llvm.fmuladd.f32(float %i.bys, float -2.000000e+00, float %i.byp)
  %i.byx = fadd float %i.byw, %i.byv              ; 5 uses
  %i.byy = fsub float %i.bys, %i.byp              ; 7 uses
  %i.byz = fadd float %i.bvz, %i.byp              ; 2 uses
  %i.bza = fcmp une float %i.byx, 0.000000e+00
  br i1 %i.bza, label %bb.nq, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.bzb = fmul float %i.byy, -2.000000e+00
  %i.bzc = fdiv float %i.byz, %i.bzb              ; 3 uses
  %i.bzd = fcmp ult float %i.bzc, 0.000000e+00
  %i.bze = fcmp ugt float %i.bzc, 1.000000e+00
  %or.cond119.i.i.i.us.us.i = or i1 %i.bzd, %i.bze
  br i1 %or.cond119.i.i.i.us.us.i, label %stbtt__ray_intersect_bezier.exit.i.i.us.us.i, label %.thread21.i.i.i.us.us.i

bb.nq:                                            ; preds = %bb.no
  %i.bzf = fneg float %i.byz
  %i.bzg = fmul float %i.byx, %i.bzf
  %i.bzh = call float @llvm.fmuladd.f32(float %i.byy, float %i.byy, float %i.bzg) ; 2 uses
  %i.bzi = fcmp ogt float %i.bzh, 0.000000e+00
  br i1 %i.bzi, label %bb.nr, label %stbtt__ray_intersect_bezier.exit.i.i.us.us.i

bb.nr:                                            ; preds = %bb.nq
  %i.bzj = fdiv float -1.000000e+00, %i.byx       ; 2 uses
  %sqrtf.i.i.i.us.us.i = call float @sqrtf(float noundef %i.bzh) #39 ; 3 uses
  %i.bzk = fadd float %i.byy, %sqrtf.i.i.i.us.us.i
  %i.bzl = fmul float %i.bzj, %i.bzk              ; 4 uses
  %i.bzm = fsub float %i.byy, %sqrtf.i.i.i.us.us.i
  %i.bzn = fmul float %i.bzj, %i.bzm              ; 5 uses
  %i.bzo = fcmp oge float %i.bzl, 0.000000e+00
  %i.bzp = fcmp ole float %i.bzl, 1.000000e+00
  %or.cond.not.not.not.i.i.i.us.us.i = and i1 %i.bzo, %i.bzp ; 3 uses
  %i.bzq = fcmp ule float %sqrtf.i.i.i.us.us.i, 0.000000e+00
  %i.bzr = fcmp ult float %i.bzn, 0.000000e+00
  %i.bzs = fcmp ugt float %i.bzn, 1.000000e+00
  %i.bzt = or i1 %i.bzr, %i.bzs
  %or.cond118.i.i.i.us.us.i = select i1 %i.bzq, i1 true, i1 %i.bzt
  br i1 %or.cond118.i.i.i.us.us.i, label %bb.nt, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %.0107.i.i.i.us.us.i = select i1 %or.cond.not.not.not.i.i.i.us.us.i, float %i.bzl, float %i.bzn
  br label %.thread21.i.i.i.us.us.i

bb.nt:                                            ; preds = %bb.nr
  br i1 %or.cond.not.not.not.i.i.i.us.us.i, label %.thread21.i.i.i.us.us.i, label %stbtt__ray_intersect_bezier.exit.i.i.us.us.i

.thread21.i.i.i.us.us.i:                          ; preds = %bb.nt, %bb.ns, %bb.np
  %.327.i.i.i.us.us.i = phi i1 [ false, %bb.nt ], [ %or.cond.not.not.not.i.i.i.us.us.i, %bb.ns ], [ false, %bb.np ]
  %.110626.i.i.i.us.us.i = phi float [ %i.bzn, %bb.nt ], [ %i.bzn, %bb.ns ], [ 0.000000e+00, %bb.np ] ; 5 uses
  %.311025.i.i.i.us.us.i = phi float [ %i.bzl, %bb.nt ], [ %.0107.i.i.i.us.us.i, %bb.ns ], [ %i.bzc, %bb.np ] ; 5 uses
  %i.bzu = call <2 x float> @llvm.copysign.v2f32(<2 x float> zeroinitializer, <2 x float> %i.bxf)
  %i.bzv = call float @llvm.copysign.f32(float 0.000000e+00, float %i.bxh)
  %i.bzw = fadd float %i.bzv, %i.bxg
  %i.bzx = fadd <2 x float> %i.bzu, %i.bxd        ; 2 uses
  %i.bzy = extractelement <2 x float> %i.bzx, i64 1 ; 3 uses
  %i.bzz = fsub float %i.bzw, %i.bzy              ; 2 uses
  %i.caa = extractelement <2 x float> %i.bzx, i64 0
  %i.cab = fsub float %i.caa, %i.bzy              ; 2 uses
  %i.cac = fsub float %i.bzy, %i.bvy              ; 2 uses
  %i.cad = call float @llvm.fmuladd.f32(float %.311025.i.i.i.us.us.i, float -2.000000e+00, float 2.000000e+00)
  %i.cae = fmul float %.311025.i.i.i.us.us.i, %i.cad
  %i.caf = call float @llvm.fmuladd.f32(float %i.cae, float %i.bzz, float %i.cac)
end_hunk_0
begin_hunk_1_@GenImageFontAtlas:bb.a
  store ptr null, ptr %2, align 8
  %i.b = icmp sgt i32 %3, 0
  %i.c = select i1 %i.b, i32 %3, i32 95           ; 10 uses
  %i.d = zext nneg i32 %i.c to i64                ; 9 uses
  %i.e = shl nuw nsw i64 %i.d, 4                  ; 2 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #42 ; 3 uses
  %i.g = shl nsw i32 %5, 1                        ; 6 uses
  %min.iters.check = icmp samesign ult i32 %i.c, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %n.vec = and i64 %i.d, 2147483640               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi365 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %index
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %index
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %index
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %index
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %index
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %index
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %index
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %index
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 264
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 304
  %i.x = load i32, ptr %i.p, align 8
  %i.y = load i32, ptr %i.q, align 8
  %i.z = load i32, ptr %i.r, align 8
  %i.aa = load i32, ptr %i.s, align 8
  %i.ab = insertelement <4 x i32> poison, i32 %i.x, i64 0
  %i.ac = insertelement <4 x i32> %i.ab, i32 %i.y, i64 1
  %i.ad = insertelement <4 x i32> %i.ac, i32 %i.z, i64 2
  %i.ae = insertelement <4 x i32> %i.ad, i32 %i.aa, i64 3
  %i.af = load i32, ptr %i.t, align 8
  %i.ag = load i32, ptr %i.u, align 8
  %i.ah = load i32, ptr %i.v, align 8
  %i.ai = load i32, ptr %i.w, align 8
  %i.aj = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ag, i64 1
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 2
  %i.am = insertelement <4 x i32> %i.al, i32 %i.ai, i64 3
  %i.an = add <4 x i32> %vec.phi, %broadcast.splat
  %i.ao = add <4 x i32> %vec.phi365, %broadcast.splat
  %i.ap = add <4 x i32> %i.an, %i.ae              ; 2 uses
  %i.aq = add <4 x i32> %i.ao, %i.am              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aq, %i.ap
  %i.as = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %.loopexit388, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.c, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb.c ], [ %n.vec, %middle.block ]
  %.0209252.ph = phi i32 [ 0, %bb.c ], [ %i.as, %middle.block ]
  br label %scalar.ph

.loopexit388:                                     ; preds = %scalar.ph, %middle.block
  %.lcssa364 = phi i32 [ %i.as, %middle.block ], [ %i.bk, %scalar.ph ]
  %i.at = add nsw i32 %i.g, %4                    ; 2 uses
  %i.au = mul nsw i32 %.lcssa364, %i.at
  %i.av = sitofp i32 %i.au to float
  %i.aw = fmul nnan float %i.av, 1.200000e+00     ; 2 uses
  %i.ax = tail call float @sqrtf(float noundef %i.aw) #39
  %i.ay = tail call float @logf(float noundef %i.ax) #39
  %i.az = fdiv float %i.ay, f0x3F317218
  %i.ba = tail call float @llvm.ceil.f32(float %i.az)
  %exp2f = tail call float @exp2f(float %i.ba) #39
  %i.bb = fptosi float %exp2f to i32              ; 21 uses
  %i.bc = mul nsw i32 %i.bb, %i.bb                ; 2 uses
  %i.bd = lshr i32 %i.bc, 1
  %i.be = uitofp nneg i32 %i.bd to float
  %i.bf = fcmp olt float %i.aw, %i.be
  br i1 %i.bf, label %bb.d, label %bb.e

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.0209252 = phi i32 [ %i.bk, %scalar.ph ], [ %.0209252.ph, %scalar.ph.preheader ]
  %i.bg = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = add i32 %.0209252, %i.g
  %i.bk = add i32 %i.bj, %i.bi                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %.loopexit388, label %scalar.ph, !llvm.loop !48

bb.d:                                             ; preds = %.loopexit388
  %i.bl = sdiv i32 %i.bb, 2                       ; 2 uses
  %.pre335 = mul nsw i32 %i.bl, %i.bb
  br label %bb.e

bb.e:                                             ; preds = %.loopexit388, %bb.d
  %.pre-phi = phi i32 [ %.pre335, %bb.d ], [ %i.bc, %.loopexit388 ] ; 2 uses
  %.promoted = phi i32 [ %i.bl, %bb.d ], [ %i.bb, %.loopexit388 ] ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bb, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 %.promoted, ptr %i.bn, align 4
  %i.bo = sext i32 %.pre-phi to i64
  %i.bp = tail call noalias ptr @calloc(i64 noundef %i.bo, i64 noundef 1) #40 ; 7 uses
  store ptr %i.bp, ptr %0, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store i32 1, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.br, align 8
  switch i32 %6, label %bb.v [
    i32 0, label %.preheader245
    i32 1, label %bb.l
  ]

.preheader245:                                    ; preds = %bb.e
  %i.bs = add i32 %5, %4
  %i.bt = sext i32 %i.bb to i64
  br label %bb.f

bb.f:                                             ; preds = %.preheader245, %._crit_edge267
  %indvars.iv315 = phi i64 [ 0, %.preheader245 ], [ %indvars.iv.next316, %._crit_edge267 ] ; 3 uses
  %.0211273 = phi i32 [ %5, %.preheader245 ], [ %.1, %._crit_edge267 ] ; 2 uses
  %.0212272 = phi i32 [ %5, %.preheader245 ], [ %i.dj, %._crit_edge267 ] ; 2 uses
  %.0214271 = phi i32 [ %.pre-phi, %.preheader245 ], [ %.1215, %._crit_edge267 ] ; 3 uses
  %i.bu = phi i32 [ %.promoted, %.preheader245 ], [ %.fr284, %._crit_edge267 ] ; 4 uses
  %i.bv = phi ptr [ %i.bp, %.preheader245 ], [ %i.ck, %._crit_edge267 ] ; 4 uses
  %i.bw = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv315 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 8            ; 3 uses
  %i.ca = add i32 %i.g, %i.bz
  %i.cb = sub i32 %i.bb, %i.ca
  %.not235 = icmp slt i32 %.0212272, %i.cb
  br i1 %.not235, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = add nsw i32 %.0211273, %i.at            ; 3 uses
  %i.cd = sub i32 %i.bu, %i.bs
  %i.ce = icmp sgt i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.10) #39
  %i.cf = shl nsw i32 %i.bu, 1                    ; 2 uses
  %i.cg = mul nsw i32 %i.cf, %i.bb                ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = tail call noalias ptr @calloc(i64 noundef %i.ch, i64 noundef 1) #40 ; 2 uses
  %i.cj = sext i32 %.0214271 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr align 1 %i.bv, i64 %i.cj, i1 false)
  tail call void @free(ptr noundef %i.bv) #39
  %.pre331.pre = load i32, ptr %i.by, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.pre331 = phi i32 [ %.pre331.pre, %bb.h ], [ %i.bz, %bb.g ], [ %i.bz, %bb.f ] ; 4 uses
  %i.ck = phi ptr [ %i.ci, %bb.h ], [ %i.bv, %bb.g ], [ %i.bv, %bb.f ] ; 4 uses
  %i.cl = phi i32 [ %i.cf, %bb.h ], [ %i.bu, %bb.g ], [ %i.bu, %bb.f ]
  %.1215 = phi i32 [ %i.cg, %bb.h ], [ %.0214271, %bb.g ], [ %.0214271, %bb.f ]
  %.1213 = phi i32 [ %5, %bb.h ], [ %5, %bb.g ], [ %.0212272, %bb.f ] ; 3 uses
  %.1 = phi i32 [ %i.cc, %bb.h ], [ %i.cc, %bb.g ], [ %.0211273, %bb.f ] ; 3 uses
  %.fr284 = freeze i32 %i.cl                      ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 28 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4            ; 3 uses
  %i.co = icmp sgt i32 %i.cn, 0
  %i.cp = icmp sgt i32 %.pre331, 0
  %or.cond358 = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %or.cond358, label %.preheader.preheader, label %._crit_edge267

.preheader.preheader:                             ; preds = %bb.i
  %i.cq = sext i32 %.1213 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge260
  %i.cr = phi i32 [ %i.dk, %._crit_edge260 ], [ %i.cn, %.preheader.preheader ] ; 2 uses
  %i.cs = phi i32 [ %i.dl, %._crit_edge260 ], [ %.pre331, %.preheader.preheader ] ; 3 uses
  %i.ct = phi i32 [ %i.dm, %._crit_edge260 ], [ %.pre331, %.preheader.preheader ] ; 4 uses
  %.0208265 = phi i32 [ %i.dn, %._crit_edge260 ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %.lr.ph, label %._crit_edge260

.lr.ph:                                           ; preds = %.preheader
  %i.cv = add nsw i32 %.0208265, %.1
  %.fr283 = freeze i32 %i.cv                      ; 3 uses
  %i.cw = icmp sgt i32 %.fr283, -1
  %i.cx = icmp slt i32 %.fr283, %.fr284
  %i.cy = and i1 %i.cx, %i.cw
  br i1 %i.cy, label %.lr.ph.split261.preheader, label %._crit_edge260

.lr.ph.split261.preheader:                        ; preds = %.lr.ph
  %i.cz = mul nsw i32 %.fr283, %i.bb
  %i.da = sext i32 %i.cz to i64
  %invariant.gep = getelementptr i8, ptr %i.ck, i64 %i.da
  br label %.lr.ph.split261

._crit_edge267:                                   ; preds = %._crit_edge260, %bb.i
  %i.db = phi i32 [ %.pre331, %bb.i ], [ %i.dl, %._crit_edge260 ] ; 2 uses
  %.lcssa = phi i32 [ %i.cn, %bb.i ], [ %i.dk, %._crit_edge260 ]
  %i.dc = insertelement <4 x i32> poison, i32 %.1213, i64 0
  %i.dd = insertelement <4 x i32> %i.dc, i32 %.1, i64 1
  %i.de = insertelement <4 x i32> %i.dd, i32 %i.db, i64 2
  %i.df = insertelement <4 x i32> %i.de, i32 %.lcssa, i64 3
  %i.dg = sitofp <4 x i32> %i.df to <4 x float>
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv315
  store <4 x float> %i.dg, ptr %i.dh, align 4
  %i.di = add i32 %.1213, %i.g
  %i.dj = add i32 %i.di, %i.db
  %indvars.iv.next316 = add nuw nsw i64 %indvars.iv315, 1 ; 2 uses
  %exitcond319.not = icmp eq i64 %indvars.iv.next316, %i.d
  br i1 %exitcond319.not, label %.loopexit246, label %bb.f

._crit_edge260.loopexit:                          ; preds = %bb.k
  %.pre330 = load i32, ptr %i.cm, align 4
  br label %._crit_edge260

._crit_edge260:                                   ; preds = %.lr.ph, %._crit_edge260.loopexit, %.preheader
  %i.dk = phi i32 [ %i.cr, %.preheader ], [ %.pre330, %._crit_edge260.loopexit ], [ %i.cr, %.lr.ph ] ; 3 uses
  %i.dl = phi i32 [ %i.cs, %.preheader ], [ %i.eb, %._crit_edge260.loopexit ], [ %i.cs, %.lr.ph ] ; 2 uses
  %i.dm = phi i32 [ %i.ct, %.preheader ], [ %i.eb, %._crit_edge260.loopexit ], [ %i.ct, %.lr.ph ]
  %i.dn = add nuw nsw i32 %.0208265, 1            ; 2 uses
  %i.do = icmp slt i32 %i.dn, %i.dk
  br i1 %i.do, label %.preheader, label %._crit_edge267, !llvm.loop !49

.lr.ph.split261:                                  ; preds = %.lr.ph.split261.preheader, %bb.k
  %i.dp = phi i32 [ %i.cs, %.lr.ph.split261.preheader ], [ %i.eb, %bb.k ]
  %indvars.iv312 = phi i64 [ 0, %.lr.ph.split261.preheader ], [ %indvars.iv.next313, %bb.k ] ; 3 uses
  %i.dq = phi i32 [ %i.ct, %.lr.ph.split261.preheader ], [ %i.eb, %bb.k ]
  %i.dr = add nsw i64 %indvars.iv312, %i.cq       ; 3 uses
  %i.ds = icmp sgt i64 %i.dr, -1
  %i.dt = icmp slt i64 %i.dr, %i.bt
  %or.cond = and i1 %i.ds, %i.dt
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split261
  %i.du = load ptr, ptr %i.bx, align 8
  %i.dv = mul nsw i32 %i.dq, %.0208265
  %i.dw = trunc nuw nsw i64 %indvars.iv312 to i32
  %i.dx = add nsw i32 %i.dv, %i.dw
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds i8, ptr %i.du, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.dr
  store i8 %i.ea, ptr %gep, align 1
  %.pre = load i32, ptr %i.by, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.split261
  %i.eb = phi i32 [ %.pre, %bb.j ], [ %i.dp, %.lr.ph.split261 ] ; 5 uses
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = icmp slt i64 %indvars.iv.next313, %i.ec
  br i1 %i.ed, label %.lr.ph.split261, label %._crit_edge260.loopexit

bb.l:                                             ; preds = %bb.e
  %i.ee = tail call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #42 ; 16 uses
  %i.ef = tail call noalias ptr @malloc(i64 noundef %i.e) #42 ; 13 uses
  %i.eg = add nsw i32 %i.c, -1                    ; 2 uses
  %i.eh = icmp samesign ugt i32 %i.c, 1
  br i1 %i.eh, label %.lr.ph.preheader.i, label %stbrp_init_target.exit

.lr.ph.preheader.i:                               ; preds = %bb.l
  %wide.trip.count.i = zext nneg i32 %i.eg to i64 ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.ei = add nsw i32 %i.c, -2
  %i.ej = icmp ult i32 %i.ei, 3
  br i1 %i.ej, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.next.i
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %i.ek, ptr %i.em, align 8
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.next.i.1
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.next.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr %i.en, ptr %i.ep, align 8
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.next.i.2
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.next.i.1
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr %i.eq, ptr %i.es, align 8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 3 uses
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.next.i.3
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.next.i.2
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr %i.et, ptr %i.ev, align 8
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %stbrp_init_target.exit.loopexit.unr-lcssa, label %.lr.ph.i

stbrp_init_target.exit.loopexit.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %stbrp_init_target.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %stbrp_init_target.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %stbrp_init_target.exit.loopexit.unr-lcssa ]
  %lcmp.mod396 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod396)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.next.i.epil
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.i.epil
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr %i.ew, ptr %i.ey, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %stbrp_init_target.exit, label %.lr.ph.i.epil, !llvm.loop !51

stbrp_init_target.exit:                           ; preds = %stbrp_init_target.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.l
  %.0.lcssa.i = phi i64 [ 0, %bb.l ], [ %wide.trip.count.i, %.lr.ph.i.epil ], [ %wide.trip.count.i, %stbrp_init_target.exit.loopexit.unr-lcssa ]
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %.0.lcssa.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store ptr null, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i32 1, ptr %i.fb, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i32 0, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  store ptr %i.ef, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ee, i64 40 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store ptr %i.fe, ptr %i.ff, align 8
  store i32 %i.bb, ptr %i.ee, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store i32 %.promoted, ptr %i.fg, align 4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ee, i64 20
  store i32 %i.c, ptr %i.fh, align 4
  %i.fi = add i32 %i.eg, %i.bb
  %i.fj = sdiv i32 %i.fi, %i.c
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i32 %i.fj, ptr %i.fk, align 8
  store i32 0, ptr %i.fe, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ee, i64 44
  store i32 0, ptr %i.fl, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ee, i64 56 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  store ptr %i.fm, ptr %i.fn, align 8
  store i32 %i.bb, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ee, i64 60
  store i32 1073741824, ptr %i.fo, align 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  store ptr null, ptr %i.fp, align 8
  %i.fq = mul nuw nsw i64 %i.d, 24
  %i.fr = tail call noalias ptr @malloc(i64 noundef %i.fq) #42 ; 6 uses
  %i.fs = insertelement <2 x i32> poison, i32 %i.g, i64 0
  %i.ft = shufflevector <2 x i32> %i.fs, <2 x i32> poison, <2 x i32> zeroinitializer ; 3 uses
  %xtraiter397 = and i64 %i.d, 1
  %i.fu = icmp eq i32 %i.c, 1
  br i1 %i.fu, label %.epil.preheader, label %stbrp_init_target.exit.new

stbrp_init_target.exit.new:                       ; preds = %stbrp_init_target.exit
  %unroll_iter401 = and i64 %i.d, 2147483646
  br label %bb.n

.unr-lcssa:                                       ; preds = %bb.n
  %lcmp.mod399.not = icmp eq i64 %xtraiter397, 0
  br i1 %lcmp.mod399.not, label %bb.m, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %stbrp_init_target.exit
  %indvars.iv292.epil.init = phi i64 [ 0, %stbrp_init_target.exit ], [ %indvars.iv.next293.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod400 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod400)
  %i.fv = getelementptr inbounds nuw [24 x i8], ptr %i.fr, i64 %indvars.iv292.epil.init ; 2 uses
  %i.fw = trunc nuw nsw i64 %indvars.iv292.epil.init to i32
  store i32 %i.fw, ptr %i.fv, align 4
  %i.fx = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv292.epil.init
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.ga = load <2 x i32>, ptr %i.fy, align 8
  %i.gb = add nsw <2 x i32> %i.ga, %i.ft
  store <2 x i32> %i.gb, ptr %i.fz, align 4
  br label %bb.m

bb.m:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.gc = tail call i32 @stbrp_pack_rects(ptr noundef nonnull %i.ee, ptr noundef nonnull %i.fr, i32 noundef %i.c) ; 0 uses
  %i.gd = sitofp i32 %5 to float
  %i.ge = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.gf = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.p

bb.n:                                             ; preds = %bb.n, %stbrp_init_target.exit.new
  %indvars.iv292 = phi i64 [ 0, %stbrp_init_target.exit.new ], [ %indvars.iv.next293.1, %bb.n ] ; 5 uses
  %niter402 = phi i64 [ 0, %stbrp_init_target.exit.new ], [ %niter402.next.1, %bb.n ]
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %i.fr, i64 %indvars.iv292 ; 2 uses
  %i.gh = trunc nuw nsw i64 %indvars.iv292 to i32
  store i32 %i.gh, ptr %i.gg, align 4
  %i.gi = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv292
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gl = load <2 x i32>, ptr %i.gj, align 8
  %i.gm = add nsw <2 x i32> %i.gl, %i.ft
  store <2 x i32> %i.gm, ptr %i.gk, align 4
  %indvars.iv.next293 = or disjoint i64 %indvars.iv292, 1 ; 3 uses
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %i.fr, i64 %indvars.iv.next293 ; 2 uses
  %i.go = trunc nuw nsw i64 %indvars.iv.next293 to i32
  store i32 %i.go, ptr %i.gn, align 4
  %i.gp = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv.next293
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.gs = load <2 x i32>, ptr %i.gq, align 8
  %i.gt = add nsw <2 x i32> %i.gs, %i.ft
  store <2 x i32> %i.gt, ptr %i.gr, align 4
  %indvars.iv.next293.1 = add nuw nsw i64 %indvars.iv292, 2 ; 2 uses
  %niter402.next.1 = add i64 %niter402, 2         ; 2 uses
  %niter402.ncmp.1 = icmp eq i64 %niter402.next.1, %unroll_iter401
  br i1 %niter402.ncmp.1, label %.unr-lcssa, label %bb.n

bb.o:                                             ; preds = %.loopexit249
  tail call void @free(ptr noundef %i.fr) #39
  tail call void @free(ptr noundef %i.ef) #39
  tail call void @free(ptr noundef %i.ee) #39
  br label %bb.v

bb.p:                                             ; preds = %bb.m, %.loopexit249
  %indvars.iv307 = phi i64 [ 0, %bb.m ], [ %indvars.iv.next308, %.loopexit249 ] ; 4 uses
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.fr, i64 %indvars.iv307 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv307 ; 2 uses
  %i.gx = load <2 x i32>, ptr %i.gv, align 4      ; 3 uses
  %i.gy = sitofp <2 x i32> %i.gx to <2 x float>
  %i.gz = fadd <2 x float> %i.gf, %i.gy
  store <2 x float> %i.gz, ptr %i.gw, align 4
  %i.ha = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv307 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.he = load <2 x i32>, ptr %i.hc, align 8      ; 3 uses
  %i.hf = sitofp <2 x i32> %i.he to <2 x float>
  store <2 x float> %i.hf, ptr %i.hd, align 4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gu, i64 20
  %i.hh = load i32, ptr %i.hg, align 4
  %.not = icmp eq i32 %i.hh, 0
  br i1 %.not, label %bb.u, label %.preheader248

.preheader248:                                    ; preds = %bb.p
  %i.hi = extractelement <2 x i32> %i.he, i64 1   ; 2 uses
  %i.hj = icmp sgt i32 %i.hi, 0
  %i.hk = extractelement <2 x i32> %i.he, i64 0   ; 4 uses
  %i.hl = icmp sgt i32 %i.hk, 0
  %or.cond359 = select i1 %i.hj, i1 %i.hl, i1 false
  br i1 %or.cond359, label %.preheader247.lr.ph.split, label %.loopexit249

.preheader247.lr.ph.split:                        ; preds = %.preheader248
  %i.hm = extractelement <2 x i32> %i.gx, i64 0
  %invariant.op = add i32 %5, %i.hm               ; 3 uses
  %i.hn = extractelement <2 x i32> %i.gx, i64 1
  %invariant.op256 = add i32 %5, %i.hn
  %i.ho = zext nneg i32 %i.hk to i64              ; 3 uses
  %wide.trip.count305 = zext nneg i32 %i.hi to i64
  %xtraiter403 = and i64 %i.ho, 1
  %i.hp = icmp eq i32 %i.hk, 1
  %unroll_iter407 = and i64 %i.ho, 2147483646
  %lcmp.mod405.not = icmp eq i64 %xtraiter403, 0
  %lcmp.mod406 = trunc i32 %i.hk to i1
  br label %.preheader247

.preheader247:                                    ; preds = %.preheader247.lr.ph.split, %._crit_edge
  %indvars.iv302 = phi i64 [ 0, %.preheader247.lr.ph.split ], [ %indvars.iv.next303, %._crit_edge ] ; 3 uses
  %i.hq = trunc nuw nsw i64 %indvars.iv302 to i32
  %.reass257 = add i32 %invariant.op256, %i.hq    ; 3 uses
  %i.hr = icmp sgt i32 %.reass257, -1
  %i.hs = icmp slt i32 %.reass257, %.promoted
  %i.ht = and i1 %i.hr, %i.hs
  %i.hu = mul nuw nsw i64 %indvars.iv302, %i.ho   ; 3 uses
  %i.hv = mul nsw i32 %.reass257, %i.bb           ; 3 uses
  %.fr = freeze i1 %i.ht
  br i1 %.fr, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %.preheader247
  br i1 %i.hp, label %.lr.ph.split.epil.preheader, label %.lr.ph.split

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.t
  br i1 %lcmp.mod405.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv297.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next298.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod406)
  %i.hw = trunc nuw nsw i64 %indvars.iv297.epil.init to i32
  %.reass.epil = add i32 %invariant.op, %i.hw     ; 3 uses
  %i.hx = icmp sgt i32 %.reass.epil, -1
  %i.hy = icmp slt i32 %.reass.epil, %i.bb
  %or.cond282.epil = and i1 %i.hx, %i.hy
  br i1 %or.cond282.epil, label %bb.q, label %._crit_edge

bb.q:                                             ; preds = %.lr.ph.split.epil.preheader
  %i.hz = load ptr, ptr %i.hb, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hu
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %indvars.iv297.epil.init
  %i.ic = load i8, ptr %i.ib, align 1
  %i.id = add nuw nsw i32 %i.hv, %.reass.epil
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.ie
  store i8 %i.ic, ptr %i.if, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.q, %.lr.ph.split.epil.preheader, %.preheader247
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303, %wide.trip.count305
  br i1 %exitcond306.not, label %.loopexit249, label %.preheader247

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.t
  %indvars.iv297 = phi i64 [ %indvars.iv.next298.1, %bb.t ], [ 0, %.lr.ph.split.preheader ] ; 4 uses
  %niter408 = phi i64 [ %niter408.next.1, %bb.t ], [ 0, %.lr.ph.split.preheader ]
  %i.ig = trunc nuw nsw i64 %indvars.iv297 to i32
  %.reass = add i32 %invariant.op, %i.ig          ; 3 uses
  %i.ih = icmp sgt i32 %.reass, -1
  %i.ii = icmp slt i32 %.reass, %i.bb
  %or.cond282 = and i1 %i.ih, %i.ii
  br i1 %or.cond282, label %bb.r, label %.lr.ph.split.1

bb.r:                                             ; preds = %.lr.ph.split
  %i.ij = load ptr, ptr %i.hb, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.hu
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %indvars.iv297
  %i.im = load i8, ptr %i.il, align 1
  %i.in = add nuw nsw i32 %i.hv, %.reass
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.io
  store i8 %i.im, ptr %i.ip, align 1
  br label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %bb.r, %.lr.ph.split
  %indvars.iv.next298 = or disjoint i64 %indvars.iv297, 1 ; 2 uses
  %i.iq = trunc nuw nsw i64 %indvars.iv.next298 to i32
  %.reass.1 = add i32 %invariant.op, %i.iq        ; 3 uses
  %i.ir = icmp sgt i32 %.reass.1, -1
  %i.is = icmp slt i32 %.reass.1, %i.bb
  %or.cond282.1 = and i1 %i.ir, %i.is
  br i1 %or.cond282.1, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.split.1
  %i.it = load ptr, ptr %i.hb, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.hu
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 %indvars.iv.next298
  %i.iw = load i8, ptr %i.iv, align 1
  %i.ix = add nuw nsw i32 %i.hv, %.reass.1
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.iy
  store i8 %i.iw, ptr %i.iz, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.split.1
  %indvars.iv.next298.1 = add nuw nsw i64 %indvars.iv297, 2 ; 2 uses
  %niter408.next.1 = add i64 %niter408, 2         ; 2 uses
  %niter408.ncmp.1 = icmp eq i64 %niter408.next.1, %unroll_iter407
  br i1 %niter408.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split

bb.u:                                             ; preds = %bb.p
  %i.ja = load i32, ptr %i.ha, align 8
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef %i.ja) #39
  br label %.loopexit249

.loopexit249:                                     ; preds = %._crit_edge, %.preheader248, %bb.u
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1 ; 2 uses
  %exitcond311.not = icmp eq i64 %indvars.iv.next308, %i.d
  br i1 %exitcond311.not, label %bb.o, label %bb.p

.loopexit246:                                     ; preds = %._crit_edge267
  store i32 %.fr284, ptr %i.bn, align 4
  store ptr %i.ck, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %.loopexit246, %bb.e, %bb.o
  %i.jb = phi ptr [ %i.ck, %.loopexit246 ], [ %i.bp, %bb.e ], [ %i.bp, %bb.o ] ; 4 uses
  %i.jc = phi i32 [ %.fr284, %.loopexit246 ], [ %.promoted, %bb.e ], [ %.promoted, %bb.o ] ; 2 uses
  %i.jd = icmp sgt i32 %i.bb, 2
  %i.je = icmp sgt i32 %i.jc, 2
  %or.cond6 = and i1 %i.jd, %i.je
  %i.jf = mul i32 %i.jc, %i.bb                    ; 6 uses
  br i1 %or.cond6, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.v
  %i.jg = add nsw i32 %i.jf, -1                   ; 2 uses
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.jh ; 3 uses
  store i8 -1, ptr %i.ji, align 1
  %i.jj = getelementptr i8, ptr %i.ji, i64 -1
  store i8 -1, ptr %i.jj, align 1
  %i.jk = getelementptr i8, ptr %i.ji, i64 -2
  store i8 -1, ptr %i.jk, align 1
  %i.jl = sub nsw i32 %i.jg, %i.bb                ; 2 uses
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds i8, ptr %i.jb, i64 %i.jm ; 3 uses
  store i8 -1, ptr %i.jn, align 1
  %i.jo = getelementptr i8, ptr %i.jn, i64 -1
  store i8 -1, ptr %i.jo, align 1
  %i.jp = getelementptr i8, ptr %i.jn, i64 -2
  store i8 -1, ptr %i.jp, align 1
  %i.jq = sub nsw i32 %i.jl, %i.bb
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds i8, ptr %i.jb, i64 %i.jr ; 3 uses
  store i8 -1, ptr %i.js, align 1
  %i.jt = getelementptr i8, ptr %i.js, i64 -1
  store i8 -1, ptr %i.jt, align 1
  %i.ju = getelementptr i8, ptr %i.js, i64 -2
  store i8 -1, ptr %i.ju, align 1
  %.pre332.pre = load ptr, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.v, %.loopexit.loopexit
  %.pre332 = phi ptr [ %.pre332.pre, %.loopexit.loopexit ], [ %i.jb, %bb.v ] ; 10 uses
  %i.jv = sext i32 %i.jf to i64
  %i.jw = shl nsw i64 %i.jv, 1
  %i.jx = tail call noalias ptr @malloc(i64 noundef %i.jw) #42 ; 11 uses
  %i.jy = icmp sgt i32 %i.jf, 0
  br i1 %i.jy, label %iter.check, label %._crit_edge281

iter.check:                                       ; preds = %.loopexit
  %wide.trip.count328 = zext nneg i32 %i.jf to i64 ; 10 uses
  %min.iters.check368 = icmp ult i32 %i.jf, 4
  br i1 %min.iters.check368, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.jz = shl nuw nsw i64 %wide.trip.count328, 1
  %scevgep = getelementptr i8, ptr %i.jx, i64 %i.jz
  %scevgep366 = getelementptr i8, ptr %.pre332, i64 %wide.trip.count328
  %bound0 = icmp ult ptr %i.jx, %scevgep366
  %bound1 = icmp ult ptr %.pre332, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check369 = icmp ult i32 %i.jf, 16
  br i1 %min.iters.check369, label %vec.epilog.ph, label %vector.ph370

vector.ph370:                                     ; preds = %vector.main.loop.iter.check
  %i.ka = and i64 %wide.trip.count328, 12
  %n.vec371 = and i64 %wide.trip.count328, 2147483632 ; 5 uses
  %i.kb = shl nuw nsw i64 %n.vec371, 1
  br label %vector.body372

vector.body372:                                   ; preds = %vector.body372, %vector.ph370
  %index373 = phi i64 [ 0, %vector.ph370 ], [ %index.next376, %vector.body372 ] ; 3 uses
  %i.kc = shl nuw i64 %index373, 1                ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.kc
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kg = getelementptr inbounds nuw i8, ptr %.pre332, i64 %index373 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %wide.load = load <8 x i8>, ptr %i.kg, align 1, !alias.scope !52
  %wide.load374 = load <8 x i8>, ptr %i.kh, align 1, !alias.scope !52
  %interleaved.vec = shufflevector <8 x i8> splat (i8 -1), <8 x i8> %wide.load, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.kd, align 1, !alias.scope !55, !noalias !52
  %interleaved.vec375 = shufflevector <8 x i8> splat (i8 -1), <8 x i8> %wide.load374, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec375, ptr %i.kf, align 1, !alias.scope !55, !noalias !52
  %index.next376 = add nuw i64 %index373, 16      ; 2 uses
  %i.ki = icmp eq i64 %index.next376, %n.vec371
  br i1 %i.ki, label %middle.block377, label %vector.body372, !llvm.loop !57

middle.block377:                                  ; preds = %vector.body372
  %cmp.n378 = icmp eq i64 %n.vec371, %wide.trip.count328
  br i1 %cmp.n378, label %._crit_edge281, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block377
  %min.epilog.iters.check = icmp eq i64 %i.ka, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec371, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec380 = and i64 %wide.trip.count328, 2147483644 ; 4 uses
  %i.kj = shl nuw nsw i64 %n.vec380, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index381 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next384, %vec.epilog.vector.body ] ; 3 uses
end_hunk_1
begin_hunk_2_@stbtt_FindGlyphIndex:bb.a
  %.val164 = load i8, ptr %i.at, align 1
  %i.au = zext i8 %.val163 to i32
  %i.av = shl nuw nsw i32 %i.au, 8
  %i.aw = zext i8 %.val164 to i32
  %i.ax = or disjoint i32 %i.av, %i.aw            ; 2 uses
  %i.ay = lshr i32 %i.ax, 1                       ; 2 uses
  %i.az = icmp sgt i32 %0, 65535
  br i1 %i.az, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = add i32 %.56.val, 14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.val157 = load i8, ptr %i.bb, align 1
  %i.bc = zext i8 %.val157 to i16
  %i.bd = shl nuw i16 %i.bc, 8
  %i.be = getelementptr i8, ptr %i.b, i64 13
  %.val158 = load i8, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %.val159 = load i8, ptr %i.bf, align 1
  %i.bg = zext i8 %.val159 to i16
  %i.bh = shl nuw i16 %i.bg, 8                    ; 2 uses
  %i.bi = getelementptr i8, ptr %i.b, i64 11
  %.val160 = load i8, ptr %i.bi, align 1
  %i.bj = zext i8 %.val160 to i16                 ; 3 uses
  %i.bk = or disjoint i16 %i.bh, %i.bj            ; 3 uses
  %i.bl = and i8 %.val158, -2
  %.masked = zext i8 %i.bl to i16
  %i.bm = or disjoint i16 %i.bd, %.masked         ; 2 uses
  %i.bn = zext i32 %i.ba to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.bn ; 2 uses
  %i.bp = zext i16 %i.bm to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp ; 2 uses
  %.val155 = load i8, ptr %i.bq, align 1
  %i.br = getelementptr i8, ptr %i.bq, i64 1
  %.val156 = load i8, ptr %i.br, align 1
  %i.bs = zext i8 %.val155 to i32
  %i.bt = shl nuw nsw i32 %i.bs, 8
  %i.bu = zext i8 %.val156 to i32
  %i.bv = or disjoint i32 %i.bt, %i.bu
  %.not = icmp slt i32 %0, %i.bv
  %i.bw = zext i16 %i.bm to i32
  %i.bx = select i1 %.not, i32 0, i32 %i.bw
  %.0123 = add i32 %.56.val, 12
  %i.by = add i32 %.0123, %i.bx                   ; 4 uses
  %.not1427 = icmp eq i16 %i.bk, 0
  br i1 %.not1427, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val161 = load i8, ptr %i.bz, align 1
  %i.ca = zext i8 %.val161 to i16
  %i.cb = shl nuw i16 %i.ca, 8
  %i.cc = getelementptr i8, ptr %i.b, i64 9
  %.val162 = load i8, ptr %i.cc, align 1
  %i.cd = zext i8 %.val162 to i16
  %i.ce = or disjoint i16 %i.cb, %i.cd            ; 2 uses
  %i.cf = or disjoint i16 %i.bh, %i.bj
  %xtraiter = and i16 %i.bj, 1
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %.0127.prol = lshr i16 %i.ce, 1                 ; 2 uses
  %i.cg = zext i32 %i.by to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.cg
  %i.ci = and i16 %.0127.prol, 32766              ; 2 uses
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cj ; 2 uses
  %.val153.prol = load i8, ptr %i.ck, align 1
  %i.cl = getelementptr i8, ptr %i.ck, i64 1
  %.val154.prol = load i8, ptr %i.cl, align 1
  %i.cm = zext i8 %.val153.prol to i32
  %i.cn = shl nuw nsw i32 %i.cm, 8
  %i.co = zext i8 %.val154.prol to i32
  %i.cp = or disjoint i32 %i.cn, %i.co
  %i.cq = icmp sgt i32 %0, %i.cp
  %i.cr = zext nneg i16 %i.ci to i32
  %i.cs = select i1 %i.cq, i32 %i.cr, i32 0
  %.2125.prol = add i32 %i.cs, %i.by              ; 2 uses
  %i.ct = add nsw i16 %i.bk, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.2125.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.2125.prol, %.lr.ph.prol ]
  %.112410.unr = phi i32 [ %i.by, %.lr.ph.preheader ], [ %.2125.prol, %.lr.ph.prol ]
  %.01269.unr = phi i16 [ %i.bk, %.lr.ph.preheader ], [ %i.ct, %.lr.ph.prol ]
  %.0127.in8.unr = phi i16 [ %i.ce, %.lr.ph.preheader ], [ %.0127.prol, %.lr.ph.prol ]
  %i.cu = icmp eq i16 %i.cf, 1
  br i1 %i.cu, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.112410 = phi i32 [ %.2125.1, %.lr.ph ], [ %.112410.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.01269 = phi i16 [ %i.dv, %.lr.ph ], [ %.01269.unr, %.lr.ph.prol.loopexit ]
  %.0127.in8 = phi i16 [ %.0127.1, %.lr.ph ], [ %.0127.in8.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.0127 = lshr i16 %.0127.in8, 1
  %i.cv = zext i32 %.112410 to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.cv
  %i.cx = and i16 %.0127, 32766                   ; 2 uses
  %i.cy = zext nneg i16 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cy ; 2 uses
  %.val153 = load i8, ptr %i.cz, align 1
  %i.da = getelementptr i8, ptr %i.cz, i64 1
  %.val154 = load i8, ptr %i.da, align 1
  %i.db = zext i8 %.val153 to i32
  %i.dc = shl nuw nsw i32 %i.db, 8
  %i.dd = zext i8 %.val154 to i32
  %i.de = or disjoint i32 %i.dc, %i.dd
  %i.df = icmp sgt i32 %0, %i.de
  %i.dg = zext nneg i16 %i.cx to i32
  %i.dh = select i1 %i.df, i32 %i.dg, i32 0
  %.2125 = add i32 %i.dh, %.112410                ; 2 uses
  %.0127.1 = lshr i16 %.0127.in8, 2               ; 2 uses
  %i.di = zext i32 %.2125 to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.di
  %i.dk = and i16 %.0127.1, 16382                 ; 2 uses
  %i.dl = zext nneg i16 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dl ; 2 uses
  %.val153.1 = load i8, ptr %i.dm, align 1
  %i.dn = getelementptr i8, ptr %i.dm, i64 1
  %.val154.1 = load i8, ptr %i.dn, align 1
  %i.do = zext i8 %.val153.1 to i32
  %i.dp = shl nuw nsw i32 %i.do, 8
  %i.dq = zext i8 %.val154.1 to i32
  %i.dr = or disjoint i32 %i.dp, %i.dq
  %i.ds = icmp sgt i32 %0, %i.dr
  %i.dt = zext nneg i16 %i.dk to i32
  %i.du = select i1 %i.ds, i32 %i.dt, i32 0
  %.2125.1 = add i32 %i.du, %.2125                ; 2 uses
  %i.dv = add i16 %.01269, -2                     ; 2 uses
  %.not142.1 = icmp eq i16 %i.dv, 0
  br i1 %.not142.1, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.h
  %.1124.lcssa = phi i32 [ %i.by, %bb.h ], [ %.2125.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.2125.1, %.lr.ph ]
  %reass.sub = sub i32 %.1124.lcssa, %.56.val
  %i.dw = add i32 %reass.sub, 131060
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 14 ; 3 uses
  %i.dy = and i32 %i.ax, 65534
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  %i.ec = and i32 %i.dw, 131070
  %i.ed = zext nneg i32 %i.ec to i64              ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ed ; 2 uses
  %.val151 = load i8, ptr %i.ee, align 1
  %i.ef = getelementptr i8, ptr %i.ee, i64 1
  %.val152 = load i8, ptr %i.ef, align 1
  %i.eg = zext i8 %.val151 to i32
  %i.eh = shl nuw nsw i32 %i.eg, 8
  %i.ei = zext i8 %.val152 to i32
  %i.ej = or disjoint i32 %i.eh, %i.ei            ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.ed ; 2 uses
  %.val149 = load i8, ptr %i.ek, align 1
  %i.el = getelementptr i8, ptr %i.ek, i64 1
  %.val150 = load i8, ptr %i.el, align 1
  %i.em = zext i8 %.val149 to i32
  %i.en = shl nuw nsw i32 %i.em, 8
  %i.eo = zext i8 %.val150 to i32
  %i.ep = or disjoint i32 %i.en, %i.eo
  %i.eq = icmp slt i32 %0, %i.ej
  %i.er = icmp sgt i32 %0, %i.ep
  %or.cond145 = select i1 %i.eq, i1 true, i1 %i.er
  br i1 %or.cond145, label %bb.l, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.es = mul nuw nsw i32 %i.ay, 6
  %i.et = zext nneg i32 %i.es to i64              ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 2
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ed ; 2 uses
  %.val147 = load i8, ptr %i.ew, align 1
  %i.ex = getelementptr i8, ptr %i.ew, i64 1
  %.val148 = load i8, ptr %i.ex, align 1
  %i.ey = zext i8 %.val147 to i16
  %i.ez = shl nuw i16 %i.ey, 8
  %i.fa = zext i8 %.val148 to i16
  %i.fb = or disjoint i16 %i.ez, %i.fa            ; 2 uses
  %i.fc = icmp eq i16 %i.fb, 0
  br i1 %i.fc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.fd = shl nuw nsw i32 %i.ay, 2
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ed ; 2 uses
  %.val175 = load i8, ptr %i.fh, align 1
  %i.fi = getelementptr i8, ptr %i.fh, i64 1
  %.val176 = load i8, ptr %i.fi, align 1
  %i.fj = zext i8 %.val175 to i32
  %i.fk = shl nuw nsw i32 %i.fj, 8
  %i.fl = zext i8 %.val176 to i32
  %i.fm = or disjoint i32 %i.fk, %i.fl
  %i.fn = add nuw nsw i32 %i.fm, %0
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.fo = zext i16 %i.fb to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %.8.val, i64 %i.fo
  %i.fq = sub nsw i32 %0, %i.ej
  %i.fr = shl nsw i32 %i.fq, 1
  %1 = sext i32 %i.fr to i64
  %i.fs = getelementptr inbounds i8, ptr %i.fp, i64 %1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.a
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.et
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.ed ; 2 uses
  %.val = load i8, ptr %i.fw, align 1
  %i.fx = getelementptr i8, ptr %i.fw, i64 1
  %.val146 = load i8, ptr %i.fx, align 1
  %i.fy = zext i8 %.val to i32
  %i.fz = shl nuw nsw i32 %i.fy, 8
  %i.ga = zext i8 %.val146 to i32
  %i.gb = or disjoint i32 %i.fz, %i.ga
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k, %bb.j
  %.2132.shrunk = phi i32 [ %i.gb, %bb.k ], [ %i.fn, %bb.j ], [ 0, %._crit_edge ]
  %.2132 = and i32 %.2132.shrunk, 65535
  br label %.loopexit

bb.m:                                             ; preds = %bb.a
  %i.gc = icmp eq i16 %i.g, 12
  %i.gd = and i16 %i.g, -2
  %or.cond = icmp eq i16 %i.gd, 12
  br i1 %or.cond, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.gf = load i32, ptr %i.ge, align 1
  %i.gg = tail call i32 @llvm.bswap.i32(i32 %i.gf) ; 2 uses
  %i.gh = icmp sgt i32 %i.gg, 0
  br i1 %i.gh, label %.lr.ph14, label %.loopexit

.lr.ph14:                                         ; preds = %bb.n
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph14, %bb.r
  %.012 = phi i32 [ %i.gg, %.lr.ph14 ], [ %.2, %bb.r ] ; 2 uses
  %.012011 = phi i32 [ 0, %.lr.ph14 ], [ %.2122, %bb.r ] ; 3 uses
  %i.gj = sub nsw i32 %.012, %.012011
  %i.gk = lshr i32 %i.gj, 1
  %i.gl = add nuw nsw i32 %i.gk, %.012011         ; 3 uses
  %i.gm = mul nsw i32 %i.gl, 12
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gn ; 3 uses
  %i.gp = load i32, ptr %i.go, align 1
  %i.gq = tail call i32 @llvm.bswap.i32(i32 %i.gp) ; 2 uses
  %i.gr = icmp ult i32 %0, %i.gq
  br i1 %i.gr, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.gt = load i32, ptr %i.gs, align 1
  %i.gu = tail call i32 @llvm.bswap.i32(i32 %i.gt)
  %i.gv = icmp ugt i32 %0, %i.gu
  br i1 %i.gv, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.gw = add nuw nsw i32 %i.gl, 1
  br label %bb.r

.thread:                                          ; preds = %bb.p
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gy = load i32, ptr %i.gx, align 1
  %i.gz = tail call i32 @llvm.bswap.i32(i32 %i.gy)
  %i.ha = sub i32 %0, %i.gq
  %i.hb = select i1 %i.gc, i32 %i.ha, i32 0
  %.5 = add i32 %i.gz, %i.hb
  br label %.loopexit

bb.r:                                             ; preds = %bb.q, %bb.o
  %.2122 = phi i32 [ %.012011, %bb.o ], [ %i.gw, %bb.q ] ; 2 uses
  %.2 = phi i32 [ %i.gl, %bb.o ], [ %.012, %bb.q ] ; 2 uses
  %i.hc = icmp slt i32 %.2122, %.2
  br i1 %i.hc, label %bb.o, label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.n, %.thread, %bb.m, %bb.l, %bb.g, %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.8 = phi i32 [ 0, %bb.m ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.g ], [ %i.t, %bb.c ], [ %i.ar, %bb.f ], [ 0, %bb.e ], [ %.2132, %bb.l ], [ %.5, %.thread ], [ 0, %bb.n ], [ 0, %bb.r ]
  ret i32 %.8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @logf(float noundef) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #18

; Function Attrs: nounwind uwtable
define void @UnloadFontData(ptr noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  tail call void @free(ptr noundef nonnull %0) #39
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %indvars.iv
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @UnloadImage(ptr noundef nonnull byval(%struct.Image) align 8 %i.c) #39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @UnloadFont(ptr nofree noundef readonly byval(%struct.Font) align 8 captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %1 = alloca %struct.Texture, align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %.sroa.3.0.copyload = load i32, ptr getelementptr inbounds nuw (i8, ptr @defaultFont, i64 12), align 4
  %.not = icmp eq i32 %i.b, %.sroa.3.0.copyload
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %UnloadFontData.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.f to i64
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  tail call void @free(ptr noundef nonnull %i.d) #39
  br label %UnloadFontData.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @UnloadImage(ptr noundef nonnull byval(%struct.Image) align 8 %i.i) #39
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

UnloadFontData.exit:                              ; preds = %bb.b, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 4 dereferenceable(20) %i.a, i64 20, i1 false)
  tail call void @UnloadTexture(ptr noundef nonnull byval(%struct.Texture) align 8 %1) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #39
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @free(ptr noundef %i.k) #39
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 2, ptr noundef nonnull @.str.12) #39
  br label %bb.c

bb.c:                                             ; preds = %UnloadFontData.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @ExportFontAsCode(ptr nofree noundef readonly byval(%struct.Font) align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 20 uses
  %2 = alloca %struct.Image, align 8              ; 8 uses
  %3 = alloca %struct.Texture, align 8            ; 4 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = tail call ptr @GetFileNameWithoutExt(ptr noundef %1) #39 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @TextToPascal.buffer, i8 0, i64 1024, i1 false)
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %TextToPascal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.d, align 1               ; 3 uses
  %i.f = add i8 %i.e, -97
  %or.cond.i = icmp ult i8 %i.f, 26
  %narrow.i = add nsw i8 %i.e, -32
  %spec.select.i = select i1 %or.cond.i, i8 %narrow.i, i8 %i.e
  store i8 %spec.select.i, ptr @TextToPascal.buffer, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %indvars.iv.i = phi i64 [ 1, %bb.b ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
end_hunk_2
