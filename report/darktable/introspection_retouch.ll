Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_retouch?download=true
inline.NumInlined: 227
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 25
begin_hunk_0_@rt_process_forms:bb.a
  %i.ia = icmp sgt i32 %i.hz, -1
  %.not78.i = icmp slt i32 %i.hz, %i.gj
  %or.cond79.i = select i1 %i.ia, i1 %.not78.i, i1 false
  br i1 %or.cond79.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i.new
  %i.ib = zext nneg i32 %i.hz to i64
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.ib
  %i.id = load float, ptr %i.ic, align 4, !tbaa !12
  store float %i.id, ptr %.06981.i, align 4, !tbaa !12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i.new
  %i.ie = add nsw i32 %.082.i, 1
  %i.if = sitofp reassoc nsz arcp contract afn i32 %i.ie to float
  %i.ig = load float, ptr %i.be, align 8, !tbaa !245
  %i.ih = fdiv reassoc nsz arcp contract afn float %i.if, %i.ig
  %i.ii = fptosi float %i.ih to i32
  %i.ij = sub nsw i32 %i.ii, %i.gk                ; 3 uses
  %i.ik = icmp sgt i32 %i.ij, -1
  %.not78.i.1 = icmp slt i32 %i.ij, %i.gj
  %or.cond79.i.1 = select i1 %i.ik, i1 %.not78.i.1, i1 false
  br i1 %or.cond79.i.1, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.il = getelementptr inbounds nuw i8, ptr %.06981.i, i64 4
  %i.im = zext nneg i32 %i.ij to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.im
  %i.io = load float, ptr %i.in, align 4, !tbaa !12
  store float %i.io, ptr %i.il, align 4, !tbaa !12
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ip = add nsw i32 %.082.i, 2                  ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.06981.i, i64 8
  %exitcond.not.i.1 = icmp eq i32 %i.ip, %i.gt
  br i1 %exitcond.not.i.1, label %.loopexit.i, label %.lr.ph.i.new

.loopexit.i:                                      ; preds = %.prol.loopexit, %bb.ai, %bb.ad
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ir = trunc nsw i64 %indvars.iv.next to i32
  %exitcond87.not.i = icmp eq i32 %i.gr, %i.ir
  br i1 %exitcond87.not.i, label %rt_build_scaled_mask.exit, label %bb.ad

rt_build_scaled_mask.exit:                        ; preds = %.loopexit.i, %bb.aa, %bb.ac
  %.071.i = phi ptr [ null, %bb.aa ], [ null, %bb.ac ], [ %i.gg, %.loopexit.i ] ; 7 uses
  %i.is = load ptr, ptr %i.e, align 8, !tbaa !267 ; 2 uses
  %.not149 = icmp eq ptr %i.is, null
  br i1 %.not149, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %rt_build_scaled_mask.exit
  call void @free(ptr noundef nonnull %i.is) #27
  store ptr null, ptr %i.e, align 8, !tbaa !267
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %rt_build_scaled_mask.exit
  %i.it = icmp eq ptr %.071.i, null
  br i1 %i.it, label %bb.ay, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.iu = add i32 %i.dq, -3
  %i.iv = icmp ult i32 %i.iu, 2
  %or.cond9 = or i1 %i.iv, %or.cond5
  %i.iw = icmp sgt <2 x i32> %i.fv, splat (i32 2) ; 2 uses
  %i.ix = extractelement <2 x i1> %i.iw, i64 0
  %or.cond12 = and i1 %or.cond9, %i.ix
  %i.iy = extractelement <2 x i1> %i.iw, i64 1
  %or.cond15 = select i1 %or.cond12, i1 %i.iy, i1 false
  br i1 %or.cond15, label %bb.am, label %bb.ax

bb.am:                                            ; preds = %bb.al
  switch i32 %i.dq, label %bb.au [
    i32 1, label %bb.an
    i32 2, label %bb.ao
    i32 3, label %bb.ap
    i32 4, label %bb.aq
  ]

bb.an:                                            ; preds = %bb.am
  %i.iz = extractelement <2 x i32> %i.ej, i64 0
  call fastcc void @_retouch_clone(ptr noundef %0, ptr noundef nonnull %i.ad, ptr noundef %.071.i, ptr noundef %4, i32 noundef %i.iz, i32 noundef %i.ek, float noundef %i.bv)
  br label %bb.av

bb.ao:                                            ; preds = %bb.am
  %i.ja = load i32, ptr %i.bp, align 4, !tbaa !340
  %i.jb = extractelement <2 x i32> %i.ej, i64 0
  call fastcc void @_retouch_heal(ptr noundef %0, ptr noundef nonnull %i.ad, ptr noundef %.071.i, ptr noundef %4, i32 noundef %i.jb, i32 noundef %i.ek, float noundef %i.bv, i32 noundef %i.ja)
  br label %bb.av

bb.ap:                                            ; preds = %bb.am
  %i.jc = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !134
  %i.je = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.jf = load float, ptr %i.je, align 4, !tbaa !15
  call fastcc void @_retouch_blur(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.ad, ptr noundef %.071.i, ptr noundef %4, float noundef %i.bv, i32 noundef %i.jd, float noundef %i.jf, ptr noundef nonnull %i.m)
  br label %bb.av

bb.aq:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  %i.jg = getelementptr inbounds nuw i8, ptr %i.bx, i64 20
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !17
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jj = getelementptr inbounds nuw i8, ptr %i.bx, i64 36
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !138 ; 3 uses
  store float %i.jk, ptr %i.bn, align 8, !tbaa !12
  store float %i.jk, ptr %i.bm, align 4, !tbaa !12
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.jl = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !12
  %i.jn = getelementptr inbounds nuw i8, ptr %i.bx, i64 36
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !138 ; 2 uses
  %i.jp = fadd reassoc nsz arcp contract afn float %i.jo, %i.jm
  %i.jq = getelementptr inbounds nuw i8, ptr %i.bx, i64 28
  %i.jr = load <2 x float>, ptr %i.jq, align 4, !tbaa !12
  %i.js = insertelement <2 x float> poison, float %i.jo, i64 0
  %i.jt = shufflevector <2 x float> %i.js, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ju = fadd reassoc nsz arcp contract afn <2 x float> %i.jr, %i.jt
  store <2 x float> %i.ju, ptr %i.bm, align 4, !tbaa !12
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sink = phi float [ %i.jk, %bb.ar ], [ %i.jp, %bb.as ]
  store float %.sink, ptr %i.h, align 16, !tbaa !12
  store float 0.000000e+00, ptr %i.bo, align 4, !tbaa !12
  call fastcc void @_retouch_fill(ptr noundef %0, ptr noundef nonnull %i.ad, ptr noundef nonnull %.071.i, ptr noundef %4, float noundef %i.bv, ptr noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  br label %bb.av

bb.au:                                            ; preds = %bb.am
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.147, i32 noundef %i.dq) #27
  br label %bb.av

bb.av:                                            ; preds = %bb.ao, %bb.at, %bb.au, %bb.ap, %bb.an
  br i1 %i.aj, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.jv = load i32, ptr %i.bq, align 8, !tbaa !341
  call fastcc void @rt_copy_mask_to_alpha(ptr noundef %0, ptr noundef nonnull %i.ad, i32 noundef %i.jv, ptr noundef nonnull %.071.i, ptr noundef %4, float noundef %i.bv)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw, %bb.al
  %i.jw = load ptr, ptr %i.e, align 8, !tbaa !267
  call void @free(ptr noundef %i.jw) #27
  call void @free(ptr noundef nonnull %.071.i) #27
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ak, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %rt_masks_get_delta_to_destination.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %dt_masks_get_mask.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %bb.bb

bb.bb:                                            ; preds = %rt_masks_form_is_in_roi.exit.thread, %bb.o, %bb.s, %bb.ba, %rt_masks_form_is_in_roi.exit, %bb.q, %bb.p, %bb.m
  %i.jx = getelementptr inbounds nuw i8, ptr %.0167, i64 8
  %.0 = load ptr, ptr %i.jx, align 8, !tbaa !124  ; 2 uses
  %.not145 = icmp eq ptr %.0, null
  br i1 %.not145, label %.loopexit, label %bb.l

.loopexit:                                        ; preds = %bb.bb, %.preheader, %bb.i, %bb.k, %bb.j, %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rt_process_stats(ptr %.8.val, ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = sext i32 %1 to i64
  %i.c = sext i32 %2 to i64
  %i.d = shl nsw i64 %i.b, 2
  %i.e = mul i64 %i.d, %i.c                       ; 5 uses
  %i.f = tail call ptr @dt_ioppr_get_pipe_work_profile_info(ptr noundef %.8.val) #27 ; 6 uses
  %.not12 = icmp eq i64 %i.e, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 896
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 712
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 768
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %dt_XYZ_to_Lab.exit.us
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %dt_XYZ_to_Lab.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  %.0313.us = phi float [ %i.z, %dt_XYZ_to_Lab.exit.us ], [ 0.000000e+00, %.lr.ph ]
  %.0322.us = phi float [ %i.y, %dt_XYZ_to_Lab.exit.us ], [ f0x7F7FFFFF, %.lr.ph ] ; 2 uses
  %.0331.us = phi float [ %i.w, %dt_XYZ_to_Lab.exit.us ], [ f0xFF7FFFFF, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv22 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load float, ptr %i.j, align 4, !tbaa !12
  %4 = fmul reassoc nsz arcp contract afn float %i.l, f0x3E63D838
  %5 = load <2 x float>, ptr %i.k, align 4, !tbaa !12
  %6 = fmul reassoc nsz arcp contract afn <2 x float> %5, <float f0x3F37855B, float 6.061690e-02> ; 2 uses
  %7 = extractelement <2 x float> %6, i64 0
  %i.m = fadd reassoc nsz arcp contract afn float %7, %4
  %8 = extractelement <2 x float> %6, i64 1
  %i.n = fadd reassoc nsz arcp contract afn float %i.m, %8 ; 3 uses
  %i.o = fcmp reassoc nsz arcp contract afn ogt float %i.n, f0x3C111AA7
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.p = fmul reassoc nsz arcp contract afn float %i.n, f0x40F92F69
  %i.q = fadd reassoc nsz arcp contract afn float %i.p, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit.us

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.r = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.n) #29
  br label %dt_XYZ_to_Lab.exit.us

dt_XYZ_to_Lab.exit.us:                            ; preds = %bb.c, %bb.b
  %i.s = phi reassoc nsz arcp contract afn float [ %i.r, %bb.c ], [ %i.q, %bb.b ]
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, 1.160000e+02
  %i.u = fadd reassoc nsz arcp contract afn float %i.t, -1.600000e+01 ; 5 uses
  %i.v = fcmp reassoc nsz arcp contract afn ogt float %.0331.us, %i.u
  %i.w = select reassoc nsz arcp contract afn i1 %i.v, float %.0331.us, float %i.u ; 2 uses
  %i.x = fcmp reassoc nsz arcp contract afn olt float %.0322.us, %i.u
  %i.y = select reassoc nsz arcp contract afn i1 %i.x, float %.0322.us, float %i.u ; 2 uses
  %i.z = fadd reassoc nsz arcp contract afn float %i.u, %.0313.us ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 4 ; 2 uses
  %i.aa = icmp ugt i64 %i.e, %indvars.iv.next23
  br i1 %i.aa, label %.lr.ph.split.us, label %._crit_edge.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 852
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 704
  %i.ad = load i32, ptr %i.ac, align 64, !tbaa !264
  %i.ae = load i32, ptr %i.ab, align 4, !tbaa !265
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %dt_XYZ_to_Lab.exit.us
  %i.af = add i64 %i.e, 17179869180
  %i.ag = lshr exact i64 %i.af, 2
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = add nuw i32 %i.ah, 1
  br label %._crit_edge

._crit_edge.loopexit13:                           ; preds = %bb.d
  %i.aj = add i64 %i.e, 17179869180
  %i.ak = lshr exact i64 %i.aj, 2
  %i.al = trunc i64 %i.ak to i32
  %i.am = add nuw i32 %i.al, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit13, %._crit_edge.loopexit, %bb.a
  %.033.lcssa = phi float [ f0xFF7FFFFF, %bb.a ], [ %i.w, %._crit_edge.loopexit ], [ %i.ax, %._crit_edge.loopexit13 ]
  %.032.lcssa = phi float [ f0x7F7FFFFF, %bb.a ], [ %i.y, %._crit_edge.loopexit ], [ %i.az, %._crit_edge.loopexit13 ]
  %.031.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.z, %._crit_edge.loopexit ], [ %i.ba, %._crit_edge.loopexit13 ]
  %.030.lcssa = phi i32 [ 0, %bb.a ], [ %i.ai, %._crit_edge.loopexit ], [ %i.am, %._crit_edge.loopexit13 ]
  %i.an = fmul reassoc nsz arcp contract afn float %.032.lcssa, f0x3C23D70A
  store float %i.an, ptr %3, align 4, !tbaa !12
  %i.ao = fmul reassoc nsz arcp contract afn float %.033.lcssa, f0x3C23D70A
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.ao, ptr %i.ap, align 4, !tbaa !12
  %i.aq = uitofp nsz nneg i32 %.030.lcssa to float
  %i.ar = fmul reassoc nsz arcp contract afn float %.031.lcssa, f0x3C23D70A
  %i.as = fdiv reassoc nsz arcp contract afn float %i.ar, %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.as, ptr %i.at, align 4, !tbaa !12
  ret void

bb.d:                                             ; preds = %.lr.ph.split, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.0313 = phi float [ 0.000000e+00, %.lr.ph.split ], [ %i.ba, %bb.d ]
  %.0322 = phi float [ f0x7F7FFFFF, %.lr.ph.split ], [ %i.az, %bb.d ] ; 2 uses
  %.0331 = phi float [ f0xFF7FFFFF, %.lr.ph.split ], [ %i.ax, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  call fastcc void @dt_ioppr_rgb_matrix_to_lab(ptr noundef %i.au, ptr noundef %i.a, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, i32 noundef %i.ad, i32 noundef %i.ae)
  %i.av = load float, ptr %i.a, align 16, !tbaa !12 ; 5 uses
  %i.aw = fcmp reassoc nsz arcp contract afn ogt float %.0331, %i.av
  %i.ax = select reassoc nsz arcp contract afn i1 %i.aw, float %.0331, float %i.av ; 2 uses
  %i.ay = fcmp reassoc nsz arcp contract afn olt float %.0322, %i.av
  %i.az = select reassoc nsz arcp contract afn i1 %i.ay, float %.0322, float %i.av ; 2 uses
  %i.ba = fadd reassoc nsz arcp contract afn float %i.av, %.0313 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.bb = icmp ugt i64 %i.e, %indvars.iv.next
  br i1 %i.bb, label %bb.d, label %._crit_edge.loopexit13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @rt_clamp_minmax(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #16 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !12   ; 4 uses
  %i.b = load float, ptr %1, align 4, !tbaa !12   ; 6 uses
  %i.c = fcmp reassoc nsz arcp contract afn une float %i.a, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !12
  %i.h = fcmp reassoc nsz arcp contract afn une float %i.e, %i.g
  br i1 %i.h, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !12
  %i.m = fcmp reassoc nsz arcp contract afn oeq float %i.j, %i.l
  br i1 %i.m, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !12 ; 2 uses
  %i.p = fcmp reassoc nsz arcp contract afn une float %i.o, %i.a
  br i1 %i.p, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %bb.d
  %i.q = fcmp reassoc nsz arcp contract afn ogt float %i.b, -3.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %i.q, float %i.b, float -3.000000e+00 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !12 ; 2 uses
  %i.t = fcmp reassoc nsz arcp contract afn olt float %i.s, 3.000000e+00
  %i.u = select reassoc nsz arcp contract afn i1 %i.t, float %i.s, float 3.000000e+00 ; 2 uses
  %i.v = fsub reassoc nsz arcp contract afn float %i.j, %i.a
  %i.w = fsub reassoc nsz arcp contract afn float %i.o, %i.a
  %i.x = fsub reassoc nnan nsz arcp contract afn float %i.u, %spec.select
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.v
  %i.z = fdiv reassoc nsz arcp contract afn float %i.y, %i.w
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, %spec.select
  store float %i.aa, ptr %i.k, align 4, !tbaa !12
  store float %i.u, ptr %i.r, align 4, !tbaa !12
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.e
  %i.ab = phi float [ %spec.select, %bb.e ], [ %i.b, %bb.b ], [ %i.b, %bb.c ], [ %i.b, %bb.d ] ; 4 uses
  %i.ac = fcmp reassoc nsz arcp contract afn oeq float %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.f, label %bb.i

bb.f:                                             ; preds = %thread-pre-split
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !12
  %i.af = fcmp reassoc nsz arcp contract afn oeq float %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !12
  %i.ai = fcmp reassoc nsz arcp contract afn oeq float %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store <2 x float> <float 0.000000e+00, float 1.500000e+00>, ptr %i.ad, align 4, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %thread-pre-split
  %i.aj = phi float [ -1.500000e+00, %bb.h ], [ %i.ab, %bb.g ], [ %i.ab, %bb.f ], [ %i.ab, %thread-pre-split ] ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12 ; 2 uses
  %i.am = fadd reassoc nsz arcp contract afn float %i.aj, 1.000000e-01 ; 2 uses
  %i.an = fcmp reassoc nsz arcp contract afn olt float %i.al, %i.am
  %spec.select76 = select i1 %i.an, float %i.am, float %i.al ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !12 ; 2 uses
  %i.aq = fadd reassoc nsz arcp contract afn float %i.aj, 5.000000e-02 ; 2 uses
  %i.ar = fcmp reassoc nsz arcp contract afn olt float %i.ap, %i.aq
  %i.as = select i1 %i.ar, float %i.aq, float %i.ap ; 2 uses
  %i.at = fadd reassoc nsz arcp contract afn float %spec.select76, -5.000000e-02 ; 2 uses
  %i.au = fcmp reassoc nsz arcp contract afn ogt float %i.as, %i.at
  %i.av = select i1 %i.au, float %i.at, float %i.as
  %i.aw = fcmp reassoc nsz arcp contract afn ogt float %i.aj, -3.000000e+00
  %spec.select66 = select reassoc nsz arcp contract afn i1 %i.aw, float %i.aj, float -3.000000e+00 ; 3 uses
  %i.ax = fcmp reassoc nsz arcp contract afn olt float %spec.select76, 3.000000e+00
  %i.ay = select reassoc nsz arcp contract afn i1 %i.ax, float %spec.select76, float 3.000000e+00 ; 2 uses
  %i.az = fsub reassoc nsz arcp contract afn float %i.av, %i.aj
  %i.ba = fsub reassoc nsz arcp contract afn float %spec.select76, %i.aj
  %i.bb = fsub reassoc nnan nsz arcp contract afn float %i.ay, %spec.select66
  %i.bc = fmul reassoc nsz arcp contract afn float %i.az, %i.bb
  %i.bd = fdiv reassoc nsz arcp contract afn float %i.bc, %i.ba
  %i.be = fadd reassoc nsz arcp contract afn float %i.bd, %spec.select66
  store float %i.be, ptr %i.ao, align 4, !tbaa !12
  store float %spec.select66, ptr %1, align 4, !tbaa !12
  store float %i.ay, ptr %i.ak, align 4, !tbaa !12
  ret void
}

declare void @dt_dwt_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @distort_mask(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !249
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !249
  %..i = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.d)
  %i.e = sext i32 %..i to i64
  %i.f = shl nsw i64 %i.e, 2                      ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !247
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !247
  %i.k = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.j) ; 3 uses
end_hunk_0
begin_hunk_1_@rt_copy_mask_to_alpha:bb.a
._crit_edge38.split:                              ; preds = %._crit_edge, %.lr.ph37, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.q = mul nuw nsw i64 %indvars.iv, %i.m
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  %.reass = add i32 %i.o, %i.r
  %i.s = mul nsw i32 %.reass, %i.g
  %.reass40 = add i32 %i.s, %i.n
  %i.t = mul nsw i32 %.reass40, %2
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.q ; 2 uses
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.new

._crit_edge.unr-lcssa:                            ; preds = %bb.l
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.02733.epil.init = phi ptr [ %i.w, %.lr.ph ], [ %i.bf, %._crit_edge.unr-lcssa ]
  %.02832.epil.init = phi ptr [ %i.v, %.lr.ph ], [ %i.be, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.epil.preheader
  %.02733.epil = phi ptr [ %.02733.epil.init, %.epil.preheader ], [ %i.ad, %bb.d ] ; 2 uses
  %.02832.epil = phi ptr [ %.02832.epil.init, %.epil.preheader ], [ %i.ac, %bb.d ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.x = load float, ptr %.02733.epil, align 4, !tbaa !12
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %5 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02832.epil, i64 12 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !12
  %i.ab = fcmp reassoc nsz arcp contract afn ogt float %i.y, %i.aa
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store float %i.y, ptr %i.z, align 4, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ac = getelementptr inbounds [4 x i8], ptr %.02832.epil, i64 %i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.02733.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !389

._crit_edge:                                      ; preds = %bb.d, %._crit_edge.unr-lcssa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond42.not, label %._crit_edge38.split, label %.lr.ph

.lr.ph.new:                                       ; preds = %.lr.ph, %bb.l
  %.02733 = phi ptr [ %i.bf, %bb.l ], [ %i.w, %.lr.ph ] ; 5 uses
  %.02832 = phi ptr [ %i.be, %bb.l ], [ %i.v, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ %niter.next.3, %bb.l ], [ 0, %.lr.ph ]
  %i.ae = load float, ptr %.02733, align 4, !tbaa !12
  %i.af = fmul reassoc nsz arcp contract afn float %i.ae, %5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.02832, i64 12 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !12
  %i.ai = fcmp reassoc nsz arcp contract afn ogt float %i.af, %i.ah
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.new
  store float %i.af, ptr %i.ag, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.new
  %i.aj = getelementptr inbounds [4 x i8], ptr %.02832, i64 %i.i ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.02733, i64 4
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, %5 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12 ; 2 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !12
  %i.ap = fcmp reassoc nsz arcp contract afn ogt float %i.am, %i.ao
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store float %i.am, ptr %i.an, align 4, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.i ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02733, i64 8
  %i.as = load float, ptr %i.ar, align 4, !tbaa !12
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, %5 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 12 ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !12
  %i.aw = fcmp reassoc nsz arcp contract afn ogt float %i.at, %i.av
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store float %i.at, ptr %i.au, align 4, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.i ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02733, i64 12
  %i.az = load float, ptr %i.ay, align 4, !tbaa !12
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, %5 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 12 ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !12
  %i.bd = fcmp reassoc nsz arcp contract afn ogt float %i.ba, %i.bc
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store float %i.ba, ptr %i.bb, align 4, !tbaa !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.be = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.i ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.02733, i64 16 ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph.new
}

declare void @dt_iop_image_fill(ptr noundef, float noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @dt_heal(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_gaussian_init(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gaussian_blur_4c(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_gaussian_free(ptr noundef) local_unnamed_addr #3

declare ptr @dt_bilateral_init(i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #3

declare ptr @dt_ioppr_get_pipe_work_profile_info(ptr noundef) local_unnamed_addr #3

declare void @dt_ioppr_transform_image_colorspace(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @image_rgb2lab(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = sext i32 %2 to i64
  %i.c = mul nsw i64 %i.b, %i.a                   ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %dt_XYZ_to_Lab.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %dt_XYZ_to_Lab.exit
  %.08 = phi i64 [ %i.bb, %dt_XYZ_to_Lab.exit ], [ 0, %bb.a ] ; 2 uses
  %.idx = shl i64 %.08, 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !12 ; 4 uses
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, f0x3E1283AB
  %i.i = fmul reassoc nsz arcp contract afn float %i.g, 6.061690e-02
  %i.j = fmul reassoc nsz arcp contract afn float %i.g, f0x3F36D410
  %i.k = load float, ptr %i.d, align 4, !tbaa !12
  %i.l = load float, ptr %i.e, align 4, !tbaa !12
  %i.m = insertelement <4 x float> poison, float %i.k, i64 0
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> zeroinitializer
  %i.o = fmul reassoc nsz arcp contract afn <4 x float> %i.n, <float f0x3EDF452F, float f0x3E63D838, float 1.393220e-02, float 1.000000e+00>
  %i.p = insertelement <4 x float> poison, float %i.l, i64 0
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> zeroinitializer
  %i.r = fmul reassoc nsz arcp contract afn <4 x float> %i.q, <float f0x3EC5273A, float f0x3F37855B, float f0x3DC6DEB9, float 1.000000e+00>
  %i.s = fadd reassoc nsz arcp contract afn <4 x float> %i.r, %i.o ; 4 uses
  %i.t = extractelement <4 x float> %i.s, i64 0
  %i.u = fadd reassoc nsz arcp contract afn float %i.t, %i.h ; 2 uses
  %i.v = extractelement <4 x float> %i.s, i64 1
  %i.w = fadd reassoc nsz arcp contract afn float %i.v, %i.i ; 3 uses
  %i.x = extractelement <4 x float> %i.s, i64 2
  %i.y = fadd reassoc nsz arcp contract afn float %i.x, %i.j ; 2 uses
  %i.z = extractelement <4 x float> %i.s, i64 3
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, %i.g
  %i.ab = fmul reassoc nsz arcp contract afn float %i.u, f0x3F84C0A6 ; 2 uses
  %i.ac = fcmp reassoc nsz arcp contract afn ogt float %i.ab, f0x3C111AA7
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ad = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ab) #29
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.ae = fmul reassoc nsz arcp contract afn float %i.u, f0x410137F7
  %i.af = fadd reassoc nsz arcp contract afn float %i.ae, f0x3E0D3DCB
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ag = phi reassoc nsz arcp contract afn float [ %i.ad, %bb.b ], [ %i.af, %bb.c ]
  %i.ah = fcmp reassoc nsz arcp contract afn ogt float %i.w, f0x3C111AA7
  br i1 %i.ah, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = fmul reassoc nsz arcp contract afn float %i.w, f0x40F92F69
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ai, f0x3E0D3DCB
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ak = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.w) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.al = phi reassoc nsz arcp contract afn float [ %i.ak, %bb.f ], [ %i.aj, %bb.e ] ; 2 uses
  %i.am = fmul reassoc nsz arcp contract afn float %i.y, f0x3F9B2B9B ; 2 uses
  %i.an = fcmp reassoc nsz arcp contract afn ogt float %i.am, f0x3C111AA7
  br i1 %i.an, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = fmul reassoc nsz arcp contract afn float %i.y, f0x41170A26
  %i.ap = fadd reassoc nsz arcp contract afn float %i.ao, f0x3E0D3DCB
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aq = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.am) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ar = phi reassoc nsz arcp contract afn float [ %i.aq, %bb.i ], [ %i.ap, %bb.h ]
  %i.as = fmul reassoc nsz arcp contract afn float %i.aa, 0.000000e+00 ; 3 uses
  %i.at = fcmp reassoc nsz arcp contract afn ogt float %i.as, f0x3C111AA7
  br i1 %i.at, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = fadd reassoc nsz arcp contract afn float %i.as, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit

bb.l:                                             ; preds = %bb.j
  %i.av = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.as) #29
  br label %dt_XYZ_to_Lab.exit

dt_XYZ_to_Lab.exit:                               ; preds = %bb.k, %bb.l
  %i.aw = phi reassoc nsz arcp contract afn float [ %i.av, %bb.l ], [ %i.au, %bb.k ]
  %i.ax = fmul reassoc nsz arcp contract afn float %i.al, 1.160000e+02
  %3 = insertelement <4 x float> poison, float %i.ax, i64 0
  %4 = insertelement <4 x float> %3, float %i.ag, i64 1
  %5 = insertelement <4 x float> %4, float %i.ar, i64 2
  %i.ay = insertelement <4 x float> %5, float %i.aw, i64 3
  %i.az = insertelement <4 x float> <float 1.600000e+01, float poison, float poison, float 0.000000e+00>, float %i.al, i64 1
  %6 = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %7 = fsub reassoc nsz arcp contract afn <4 x float> %i.ay, %6
  %i.ba = fmul reassoc nsz arcp contract afn <4 x float> %7, <float 1.000000e+00, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  store <4 x float> %i.ba, ptr %i.d, align 4, !tbaa !12
  %i.bb = add nuw i64 %.08, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

declare void @dt_bilateral_splat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bilateral_blur(ptr noundef) local_unnamed_addr #3

declare void @dt_bilateral_slice(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @dt_bilateral_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @image_lab2rgb(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = sext i32 %2 to i64
  %i.c = mul nsw i64 %i.b, %i.a                   ; 5 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.c, 9
  br i1 %min.iters.check, label %.lr.ph.preheader20, label %vector.ph

.lr.ph.preheader20:                               ; preds = %vector.body, %.lr.ph.preheader
  %.017.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.d = and i64 %i.c, 7                          ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.e, i64 8, i64 %i.d
  %n.vec = sub i64 %i.c, %i.f                     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = shl i64 %index, 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 2 uses
  %wide.vec = load <32 x float>, ptr %i.h, align 4, !tbaa !12 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec18 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec19 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.i = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec18, splat (float 2.000000e-03)
  %i.j = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float 8.620690e-03)
  %i.k = fadd reassoc nsz arcp contract afn <8 x float> %i.j, splat (float f0x3E0D3DCB) ; 7 uses
  %i.l = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec19, splat (float 5.000000e-03)
  %i.m = fadd reassoc nsz arcp contract afn <8 x float> %i.k, %i.i ; 5 uses
  %i.n = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.m, splat (float f0x3E53DCB1)
  %i.o = fmul reassoc nsz arcp contract afn <8 x float> %i.m, %i.m
  %i.p = fmul reassoc nsz arcp contract afn <8 x float> %i.o, %i.m
  %i.q = fmul reassoc nsz arcp contract afn <8 x float> %i.m, splat (float f0x3E038026)
  %i.r = fadd reassoc nsz arcp contract afn <8 x float> %i.q, splat (float f0xBC911AA6)
  %i.s = select reassoc nsz arcp contract afn <8 x i1> %i.n, <8 x float> %i.p, <8 x float> %i.r ; 3 uses
  %i.t = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.k, splat (float f0x3E53DCB1)
  %i.u = fmul reassoc nsz arcp contract afn <8 x float> %i.k, %i.k
  %i.v = fmul reassoc nsz arcp contract afn <8 x float> %i.u, %i.k
  %i.w = fmul reassoc nsz arcp contract afn <8 x float> %i.k, splat (float f0x3E038026)
  %i.x = fadd reassoc nsz arcp contract afn <8 x float> %i.w, splat (float f0xBC911AA6)
  %i.y = select reassoc nsz arcp contract afn <8 x i1> %i.t, <8 x float> %i.v, <8 x float> %i.x ; 3 uses
  %i.z = fsub reassoc nsz arcp contract afn <8 x float> %i.k, %i.l ; 5 uses
  %i.aa = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.z, splat (float f0x3E53DCB1)
  %i.ab = fmul reassoc nsz arcp contract afn <8 x float> %i.z, %i.z
  %i.ac = fmul reassoc nsz arcp contract afn <8 x float> %i.ab, %i.z
  %i.ad = fmul reassoc nsz arcp contract afn <8 x float> %i.z, splat (float f0x3E038026)
  %i.ae = fadd reassoc nsz arcp contract afn <8 x float> %i.ad, splat (float f0xBC911AA6)
  %i.af = select reassoc nsz arcp contract afn <8 x i1> %i.aa, <8 x float> %i.ac, <8 x float> %i.ae ; 3 uses
  %i.ag = fmul reassoc nsz arcp contract afn <8 x float> %i.s, splat (float 9.642000e-01)
  %i.ah = fmul reassoc nsz arcp contract afn <8 x float> %i.af, splat (float f0x3F532CA5)
  %i.ai = fmul reassoc nsz arcp contract afn <8 x float> %i.s, splat (float f0x3D8E11AE)
  %i.aj = fmul reassoc nsz arcp contract afn <8 x float> %i.y, splat (float f0xBE6A7CB9)
  %i.ak = fadd reassoc nsz arcp contract afn <8 x float> %i.ai, %i.aj
  %i.al = fmul reassoc nsz arcp contract afn <8 x float> %i.af, splat (float f0x3F94602A)
  %i.am = fadd reassoc nsz arcp contract afn <8 x float> %i.ak, %i.al
  %i.an = fadd reassoc nsz arcp contract afn <8 x float> %i.y, %i.ag
  %i.ao = fadd reassoc nsz arcp contract afn <8 x float> %i.an, %i.ah
  %i.ap = fmul reassoc nsz arcp contract afn <8 x float> %i.ao, zeroinitializer
  %i.aq = shufflevector <8 x float> %i.s, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ar = fmul reassoc nsz arcp contract afn <16 x float> %i.aq, <float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831>
  %i.as = shufflevector <8 x float> %i.y, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.at = fmul reassoc nsz arcp contract afn <16 x float> %i.as, <float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420>
  %i.au = fadd reassoc nsz arcp contract afn <16 x float> %i.ar, %i.at
  %i.av = shufflevector <8 x float> %i.af, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aw = fmul reassoc nsz arcp contract afn <16 x float> %i.av, <float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F>
  %i.ax = fadd reassoc nsz arcp contract afn <16 x float> %i.au, %i.aw
  %i.ay = shufflevector <8 x float> %i.am, <8 x float> %i.ap, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ax, <16 x float> %i.ay, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.h, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %.lr.ph.preheader20, label %vector.body, !llvm.loop !390

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader20, %.lr.ph
  %.017 = phi i64 [ %i.cs, %.lr.ph ], [ %.017.ph, %.lr.ph.preheader20 ] ; 2 uses
  %.idx = shl i64 %.017, 4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !12
  %i.bd = load float, ptr %i.ba, align 4, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !12
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bc, 2.000000e-03
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bd, 8.620690e-03
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bh, f0x3E0D3DCB ; 4 uses
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bf, 5.000000e-03
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bi, %i.bg ; 2 uses
  %i.bl = fsub reassoc nsz arcp contract afn float %i.bi, %i.bj
  %i.bm = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bi, i64 1 ; 5 uses
  %i.bo = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bn, splat (float f0x3E53DCB1)
  %i.bp = fmul reassoc nsz arcp contract afn <2 x float> %i.bn, %i.bn
  %i.bq = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %i.bk, i64 1
  %i.bs = insertelement <4 x float> %i.br, float %i.bl, i64 3 ; 4 uses
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3> ; 2 uses
  %i.bu = fmul reassoc nsz arcp contract afn <4 x float> %i.bs, %i.bs
  %i.bv = fmul reassoc nsz arcp contract afn <2 x float> %i.bp, %i.bn
  %i.bw = fmul reassoc nsz arcp contract afn <2 x float> %i.bn, splat (float f0x3E038026)
  %i.bx = fmul reassoc nsz arcp contract afn <4 x float> %i.bt, splat (float f0x3E038026)
  %i.by = fadd reassoc nsz arcp contract afn <2 x float> %i.bw, splat (float f0xBC911AA6)
  %i.bz = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.bt, splat (float f0x3E53DCB1)
  %i.ca = fmul reassoc nsz arcp contract afn <4 x float> %i.bu, %i.bs
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.cc = fadd reassoc nsz arcp contract afn <4 x float> %i.bx, splat (float f0xBC911AA6)
  %i.cd = select <2 x i1> %i.bo, <2 x float> %i.bv, <2 x float> %i.by
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.cf = select <4 x i1> %i.bz, <4 x float> %i.cb, <4 x float> %i.cc ; 2 uses
  %i.cg = shufflevector <4 x float> <float f0x404162F2, float f0x3FF54420, float f0x3D8E11AE, float poison>, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ch = fmul reassoc nsz arcp contract afn <4 x float> %i.cg, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 9.642000e-01> ; 2 uses
  %i.ci = fmul reassoc nsz arcp contract afn <4 x float> %i.cf, <float f0xBFCEF57D, float f0xBF719831, float f0xBE6A7CB9, float f0x3F532CA5>
  %i.cj = shufflevector <4 x float> %i.cf, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.ck = fmul reassoc nsz arcp contract afn <4 x float> %i.cj, <float f0xBECF35E2, float f0x3CE2116F, float f0x3F94602A, float 0.000000e+00> ; 2 uses
  %i.cl = fmul reassoc nsz arcp contract afn <4 x float> %i.ce, %i.ch
  %i.cm = fadd reassoc nsz arcp contract afn <4 x float> %i.ce, %i.ch
  %i.cn = shufflevector <4 x float> %i.cl, <4 x float> %i.cm, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.co = fadd reassoc nsz arcp contract afn <4 x float> %i.cn, %i.ci ; 2 uses
  %i.cp = fadd reassoc nsz arcp contract afn <4 x float> %i.co, %i.ck
  %i.cq = fmul reassoc nsz arcp contract afn <4 x float> %i.co, %i.ck
  %i.cr = shufflevector <4 x float> %i.cp, <4 x float> %i.cq, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.cr, ptr %i.ba, align 4, !tbaa !12
  %i.cs = add nuw i64 %.017, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !391
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @cbrtf(float noundef) local_unnamed_addr #22

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @dt_ioppr_rgb_matrix_to_lab(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #23 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %.not.i = icmp eq i32 %6, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call fastcc void @dt_ioppr_apply_trc(ptr noundef nonnull readonly %0, ptr noundef %i.a, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %4, i32 noundef %5)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load <4 x float>, ptr %i.a, align 16
  %i.g = load float, ptr %i.c, align 4, !tbaa !12
  %i.h = load float, ptr %i.e, align 8, !tbaa !12
  %i.i = load <4 x float>, ptr %2, align 4, !tbaa !12
  %i.j = shufflevector <4 x float> %i.f, <4 x float> poison, <4 x i32> zeroinitializer
  %i.k = fmul reassoc nsz arcp contract afn <4 x float> %i.i, %i.j
  %i.l = load <4 x float>, ptr %i.b, align 4, !tbaa !12
  %i.m = insertelement <4 x float> poison, float %i.g, i64 0
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> zeroinitializer
  %i.o = fmul reassoc nsz arcp contract afn <4 x float> %i.l, %i.n
  %i.p = fadd reassoc nsz arcp contract afn <4 x float> %i.o, %i.k
  %i.q = load <4 x float>, ptr %i.d, align 4, !tbaa !12
  %i.r = insertelement <4 x float> poison, float %i.h, i64 0
  %i.s = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> zeroinitializer
  %i.t = fmul reassoc nsz arcp contract afn <4 x float> %i.q, %i.s
  %i.u = fadd reassoc nsz arcp contract afn <4 x float> %i.p, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %dt_ioppr_rgb_matrix_to_xyz.exit

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load float, ptr %0, align 4, !tbaa !12
  %i.aa = load float, ptr %i.w, align 4, !tbaa !12
  %i.ab = load float, ptr %i.y, align 4, !tbaa !12
  %i.ac = load <4 x float>, ptr %2, align 4, !tbaa !12
  %i.ad = insertelement <4 x float> poison, float %i.z, i64 0
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> zeroinitializer
  %i.af = fmul reassoc nsz arcp contract afn <4 x float> %i.ac, %i.ae
  %i.ag = load <4 x float>, ptr %i.v, align 4, !tbaa !12
  %i.ah = insertelement <4 x float> poison, float %i.aa, i64 0
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aj = fmul reassoc nsz arcp contract afn <4 x float> %i.ag, %i.ai
  %i.ak = fadd reassoc nsz arcp contract afn <4 x float> %i.aj, %i.af
  %i.al = load <4 x float>, ptr %i.x, align 4, !tbaa !12
  %i.am = insertelement <4 x float> poison, float %i.ab, i64 0
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ao = fmul reassoc nsz arcp contract afn <4 x float> %i.al, %i.an
  %i.ap = fadd reassoc nsz arcp contract afn <4 x float> %i.ak, %i.ao
  br label %dt_ioppr_rgb_matrix_to_xyz.exit

dt_ioppr_rgb_matrix_to_xyz.exit:                  ; preds = %bb.b, %bb.c
  %i.aq = phi <4 x float> [ %i.ap, %bb.c ], [ %i.u, %bb.b ] ; 4 uses
  %i.ar = extractelement <4 x float> %i.aq, i64 0 ; 2 uses
  %i.as = fmul reassoc nsz arcp contract afn float %i.ar, f0x3F84C0A6 ; 2 uses
  %i.at = fcmp reassoc nsz arcp contract afn ogt float %i.as, f0x3C111AA7
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %dt_ioppr_rgb_matrix_to_xyz.exit
  %i.au = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.as) #29
  br label %bb.f

bb.e:                                             ; preds = %dt_ioppr_rgb_matrix_to_xyz.exit
  %i.av = fmul reassoc nsz arcp contract afn float %i.ar, f0x410137F7
  %i.aw = fadd reassoc nsz arcp contract afn float %i.av, f0x3E0D3DCB
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ax = phi reassoc nsz arcp contract afn float [ %i.au, %bb.d ], [ %i.aw, %bb.e ]
  %i.ay = extractelement <4 x float> %i.aq, i64 1 ; 3 uses
  %i.az = fcmp reassoc nsz arcp contract afn ogt float %i.ay, f0x3C111AA7
  br i1 %i.az, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = fmul reassoc nsz arcp contract afn float %i.ay, f0x40F92F69
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ba, f0x3E0D3DCB
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bc = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ay) #29
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bd = phi reassoc nsz arcp contract afn float [ %i.bc, %bb.h ], [ %i.bb, %bb.g ] ; 2 uses
  %i.be = extractelement <4 x float> %i.aq, i64 2 ; 2 uses
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, f0x3F9B2B9B ; 2 uses
  %i.bg = fcmp reassoc nsz arcp contract afn ogt float %i.bf, f0x3C111AA7
  br i1 %i.bg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = fmul reassoc nsz arcp contract afn float %i.be, f0x41170A26
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bh, f0x3E0D3DCB
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bj = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.bf) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bk = phi reassoc nsz arcp contract afn float [ %i.bj, %bb.k ], [ %i.bi, %bb.j ]
  %i.bl = extractelement <4 x float> %i.aq, i64 3
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bl, 0.000000e+00 ; 3 uses
  %i.bn = fcmp reassoc nsz arcp contract afn ogt float %i.bm, f0x3C111AA7
  br i1 %i.bn, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = fadd reassoc nsz arcp contract afn float %i.bm, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit

bb.n:                                             ; preds = %bb.l
  %i.bp = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.bm) #29
  br label %dt_XYZ_to_Lab.exit

dt_XYZ_to_Lab.exit:                               ; preds = %bb.m, %bb.n
  %i.bq = phi reassoc nsz arcp contract afn float [ %i.bp, %bb.n ], [ %i.bo, %bb.m ]
  %i.br = fmul reassoc nsz arcp contract afn float %i.bd, 1.160000e+02
  %7 = insertelement <4 x float> poison, float %i.br, i64 0
  %8 = insertelement <4 x float> %7, float %i.ax, i64 1
  %9 = insertelement <4 x float> %8, float %i.bk, i64 2
  %i.bs = insertelement <4 x float> %9, float %i.bq, i64 3
  %i.bt = insertelement <4 x float> <float 1.600000e+01, float poison, float poison, float 0.000000e+00>, float %i.bd, i64 1
  %10 = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %11 = fsub reassoc nsz arcp contract afn <4 x float> %i.bs, %10
  %i.bu = fmul reassoc nsz arcp contract afn <4 x float> %11, <float 1.000000e+00, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  store <4 x float> %i.bu, ptr %1, align 4, !tbaa !12
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @dt_ioppr_apply_trc(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 12)) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef %4) unnamed_addr #23 {
bb.a:
  %i.a = add nsw i32 %4, -1
  %i.b = sitofp reassoc nsz arcp contract afn i32 %i.a to float ; 9 uses
  %i.c = add nsw i32 %4, -2
  %i.d = sitofp reassoc nsz arcp contract afn i32 %i.c to float ; 6 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !267    ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !12
  %i.g = fcmp reassoc nsz arcp contract afn ult float %i.f, 0.000000e+00
  %i.h = load float, ptr %0, align 4, !tbaa !12   ; 4 uses
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = fcmp reassoc nsz arcp contract afn olt float %i.h, 1.000000e+00
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = fmul reassoc nsz arcp contract afn float %i.h, %i.b ; 3 uses
  %i.k = fcmp reassoc nsz arcp contract afn ogt float %i.j, 0.000000e+00
  %i.l = fcmp reassoc nsz arcp contract afn olt float %i.j, %i.b
  %..i = select reassoc nsz arcp contract afn i1 %i.l, float %i.j, float %i.b
  %i.m = select reassoc nsz arcp contract afn i1 %i.k, float %..i, float 0.000000e+00 ; 3 uses
  %i.n = fcmp reassoc nsz arcp contract afn olt float %i.m, %i.d
  %i.o = select reassoc nsz arcp contract afn i1 %i.n, float %i.m, float %i.d
  %i.p = fptosi float %i.o to i32                 ; 2 uses
  %i.q = sitofp reassoc nsz arcp contract afn i32 %i.p to float
  %i.r = fsub reassoc nnan nsz arcp contract afn float %i.m, %i.q
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.s ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !12 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !12
  %i.x = fsub reassoc nsz arcp contract afn float %i.w, %i.u
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.r
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, %i.u
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !12
  %i.ac = load float, ptr %3, align 4, !tbaa !12
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.h
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !12
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ad, float %i.af)
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %i.ai = phi reassoc nsz arcp contract afn float [ %i.ah, %bb.d ], [ %i.z, %bb.c ], [ %i.h, %bb.a ]
  store float %i.ai, ptr %1, align 4, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !267 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12
  %i.am = fcmp reassoc nsz arcp contract afn ult float %i.al, 0.000000e+00
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !12 ; 4 uses
  br i1 %i.am, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = fcmp reassoc nsz arcp contract afn olt float %i.ao, 1.000000e+00
  br i1 %i.ap, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !12
  %i.at = load float, ptr %i.aq, align 4, !tbaa !12
  %i.au = fmul reassoc nsz arcp contract afn float %i.at, %i.ao
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.aw = load float, ptr %i.av, align 4, !tbaa !12
  %i.ax = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.au, float %i.aw)
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, %i.as
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.az = fmul reassoc nsz arcp contract afn float %i.ao, %i.b ; 3 uses
  %i.ba = fcmp reassoc nsz arcp contract afn ogt float %i.az, 0.000000e+00
  %i.bb = fcmp reassoc nsz arcp contract afn olt float %i.az, %i.b
  %..i.1 = select reassoc nsz arcp contract afn i1 %i.bb, float %i.az, float %i.b
  %i.bc = select reassoc nsz arcp contract afn i1 %i.ba, float %..i.1, float 0.000000e+00 ; 3 uses
  %i.bd = fcmp reassoc nsz arcp contract afn olt float %i.bc, %i.d
  %i.be = select reassoc nsz arcp contract afn i1 %i.bd, float %i.bc, float %i.d
  %i.bf = fptosi float %i.be to i32               ; 2 uses
  %i.bg = sitofp reassoc nsz arcp contract afn i32 %i.bf to float
  %i.bh = fsub reassoc nnan nsz arcp contract afn float %i.bc, %i.bg
  %i.bi = sext i32 %i.bf to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.bi ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !12 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bj, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !12
  %i.bn = fsub reassoc nsz arcp contract afn float %i.bm, %i.bk
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %i.bh
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %i.bk
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g
  %i.bq = phi reassoc nsz arcp contract afn float [ %i.ay, %bb.g ], [ %i.bp, %bb.h ], [ %i.ao, %bb.e ]
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.bq, ptr %i.br, align 4, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !267 ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !12
  %i.bv = fcmp reassoc nsz arcp contract afn ult float %i.bu, 0.000000e+00
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !12 ; 4 uses
  br i1 %i.bv, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = fcmp reassoc nsz arcp contract afn olt float %i.bx, 1.000000e+00
  br i1 %i.by, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !12
  %i.cc = load float, ptr %i.bz, align 4, !tbaa !12
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cc, %i.bx
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !12
  %i.cg = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cd, float %i.cf)
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, %i.cb
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ci = fmul reassoc nsz arcp contract afn float %i.bx, %i.b ; 3 uses
  %i.cj = fcmp reassoc nsz arcp contract afn ogt float %i.ci, 0.000000e+00
  %i.ck = fcmp reassoc nsz arcp contract afn olt float %i.ci, %i.b
  %..i.2 = select reassoc nsz arcp contract afn i1 %i.ck, float %i.ci, float %i.b
  %i.cl = select reassoc nsz arcp contract afn i1 %i.cj, float %..i.2, float 0.000000e+00 ; 3 uses
  %i.cm = fcmp reassoc nsz arcp contract afn olt float %i.cl, %i.d
  %i.cn = select reassoc nsz arcp contract afn i1 %i.cm, float %i.cl, float %i.d
  %i.co = fptosi float %i.cn to i32               ; 2 uses
  %i.cp = sitofp reassoc nsz arcp contract afn i32 %i.co to float
  %i.cq = fsub reassoc nnan nsz arcp contract afn float %i.cl, %i.cp
  %i.cr = sext i32 %i.co to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cr ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !12 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cs, i64 4
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !12
  %i.cw = fsub reassoc nsz arcp contract afn float %i.cv, %i.ct
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cw, %i.cq
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cx, %i.ct
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.k
  %i.cz = phi reassoc nsz arcp contract afn float [ %i.ch, %bb.k ], [ %i.cy, %bb.l ], [ %i.bx, %bb.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.cz, ptr %i.da, align 4, !tbaa !12
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x ptr> @llvm.masked.load.v4p0.p0(ptr captures(none), <4 x i1>, <4 x ptr>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8i32.v8p0(<8 x i32>, <8 x ptr>, <8 x i1>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #26

end_hunk_1
