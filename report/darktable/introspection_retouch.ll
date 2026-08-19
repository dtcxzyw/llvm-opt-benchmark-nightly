inline.NumInlined: 227
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 25
begin_hunk_0_@rt_process_forms:bb.a
  %.not149 = icmp eq ptr %i.is, null
  br i1 %.not149, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %rt_build_scaled_mask.exit
  call void @free(ptr noundef nonnull %i.is) #27
  store ptr null, ptr %i.e, align 8, !tbaa !335
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
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !143
  %i.je = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.jf = load float, ptr %i.je, align 4, !tbaa !22
  call fastcc void @_retouch_blur(ptr noundef %i.k, ptr noundef %0, ptr noundef nonnull %i.ad, ptr noundef %.071.i, ptr noundef %4, float noundef %i.bv, i32 noundef %i.jd, float noundef %i.jf, ptr noundef nonnull %i.m)
  br label %bb.av

bb.aq:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  %i.jg = getelementptr inbounds nuw i8, ptr %i.bx, i64 20
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !25
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jj = getelementptr inbounds nuw i8, ptr %i.bx, i64 36
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !147 ; 3 uses
  store float %i.jk, ptr %i.bn, align 8, !tbaa !18
  store float %i.jk, ptr %i.bm, align 4, !tbaa !18
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.jl = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !18
  %i.jn = getelementptr inbounds nuw i8, ptr %i.bx, i64 36
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !147 ; 2 uses
  %i.jp = fadd reassoc nsz arcp contract afn float %i.jo, %i.jm
  %i.jq = getelementptr inbounds nuw i8, ptr %i.bx, i64 28
  %i.jr = load <2 x float>, ptr %i.jq, align 4, !tbaa !18
  %i.js = insertelement <2 x float> poison, float %i.jo, i64 0
  %i.jt = shufflevector <2 x float> %i.js, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ju = fadd reassoc nsz arcp contract afn <2 x float> %i.jr, %i.jt
  store <2 x float> %i.ju, ptr %i.bm, align 4, !tbaa !18
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sink = phi float [ %i.jk, %bb.ar ], [ %i.jp, %bb.as ]
  store float %.sink, ptr %i.h, align 16, !tbaa !18
  store float 0.000000e+00, ptr %i.bo, align 4, !tbaa !18
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
  %i.jw = load ptr, ptr %i.e, align 8, !tbaa !335
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
  %.0 = load ptr, ptr %i.jx, align 8, !tbaa !133  ; 2 uses
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
  %.0313.us = phi float [ %i.ae, %dt_XYZ_to_Lab.exit.us ], [ 0.000000e+00, %.lr.ph ]
  %.0322.us = phi float [ %i.ad, %dt_XYZ_to_Lab.exit.us ], [ f0x7F7FFFFF, %.lr.ph ] ; 2 uses
  %.0331.us = phi float [ %i.ab, %dt_XYZ_to_Lab.exit.us ], [ f0xFF7FFFFF, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv22 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load float, ptr %i.j, align 4, !tbaa !18
  %i.m = fmul reassoc nsz arcp contract afn float %i.l, f0x3E63D838
  %i.n = load <2 x float>, ptr %i.k, align 4, !tbaa !18
  %i.o = fmul reassoc nsz arcp contract afn <2 x float> %i.n, <float f0x3F37855B, float 6.061690e-02> ; 2 uses
  %i.p = extractelement <2 x float> %i.o, i64 0
  %i.q = fadd reassoc nsz arcp contract afn float %i.p, %i.m
  %i.r = extractelement <2 x float> %i.o, i64 1
  %i.s = fadd reassoc nsz arcp contract afn float %i.q, %i.r ; 3 uses
  %i.t = fcmp reassoc nsz arcp contract afn ogt float %i.s, f0x3C111AA7
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.u = fmul reassoc nsz arcp contract afn float %i.s, f0x40F92F69
  %i.v = fadd reassoc nsz arcp contract afn float %i.u, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit.us

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.w = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.s) #29
  br label %dt_XYZ_to_Lab.exit.us

dt_XYZ_to_Lab.exit.us:                            ; preds = %bb.c, %bb.b
  %i.x = phi reassoc nsz arcp contract afn float [ %i.w, %bb.c ], [ %i.v, %bb.b ]
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, 1.160000e+02
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, -1.600000e+01 ; 5 uses
  %i.aa = fcmp reassoc nsz arcp contract afn ogt float %.0331.us, %i.z
  %i.ab = select reassoc nsz arcp contract afn i1 %i.aa, float %.0331.us, float %i.z ; 2 uses
  %i.ac = fcmp reassoc nsz arcp contract afn olt float %.0322.us, %i.z
  %i.ad = select reassoc nsz arcp contract afn i1 %i.ac, float %.0322.us, float %i.z ; 2 uses
  %i.ae = fadd reassoc nsz arcp contract afn float %i.z, %.0313.us ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 4 ; 2 uses
  %i.af = icmp ugt i64 %i.e, %indvars.iv.next23
  br i1 %i.af, label %.lr.ph.split.us, label %._crit_edge.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 852
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 704
  %i.ai = load i32, ptr %i.ah, align 64, !tbaa !321
  %i.aj = load i32, ptr %i.ag, align 4, !tbaa !323
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %dt_XYZ_to_Lab.exit.us
  %i.ak = add i64 %i.e, 17179869180
  %i.al = lshr exact i64 %i.ak, 2
  %i.am = trunc i64 %i.al to i32
  %i.an = add i32 %i.am, 1
  br label %._crit_edge

._crit_edge.loopexit13:                           ; preds = %bb.d
  %i.ao = add i64 %i.e, 17179869180
  %i.ap = lshr exact i64 %i.ao, 2
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = add i32 %i.aq, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit13, %._crit_edge.loopexit, %bb.a
  %.033.lcssa = phi float [ f0xFF7FFFFF, %bb.a ], [ %i.ab, %._crit_edge.loopexit ], [ %i.bc, %._crit_edge.loopexit13 ]
  %.032.lcssa = phi float [ f0x7F7FFFFF, %bb.a ], [ %i.ad, %._crit_edge.loopexit ], [ %i.be, %._crit_edge.loopexit13 ]
  %.031.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ae, %._crit_edge.loopexit ], [ %i.bf, %._crit_edge.loopexit13 ]
  %.030.lcssa = phi i32 [ 0, %bb.a ], [ %i.an, %._crit_edge.loopexit ], [ %i.ar, %._crit_edge.loopexit13 ]
  %i.as = fmul reassoc nsz arcp contract afn float %.032.lcssa, f0x3C23D70A
  store float %i.as, ptr %3, align 4, !tbaa !18
  %i.at = fmul reassoc nsz arcp contract afn float %.033.lcssa, f0x3C23D70A
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.at, ptr %i.au, align 4, !tbaa !18
  %i.av = uitofp nneg i32 %.030.lcssa to float
  %i.aw = fmul reassoc nsz arcp contract afn float %.031.lcssa, f0x3C23D70A
  %i.ax = fdiv reassoc nsz arcp contract afn float %i.aw, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.ax, ptr %i.ay, align 4, !tbaa !18
  ret void

bb.d:                                             ; preds = %.lr.ph.split, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.0313 = phi float [ 0.000000e+00, %.lr.ph.split ], [ %i.bf, %bb.d ]
  %.0322 = phi float [ f0x7F7FFFFF, %.lr.ph.split ], [ %i.be, %bb.d ] ; 2 uses
  %.0331 = phi float [ f0xFF7FFFFF, %.lr.ph.split ], [ %i.bc, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  call fastcc void @dt_ioppr_rgb_matrix_to_lab(ptr noundef %i.az, ptr noundef %i.a, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, i32 noundef %i.ai, i32 noundef %i.aj)
  %i.ba = load float, ptr %i.a, align 16, !tbaa !18 ; 5 uses
  %i.bb = fcmp reassoc nsz arcp contract afn ogt float %.0331, %i.ba
  %i.bc = select reassoc nsz arcp contract afn i1 %i.bb, float %.0331, float %i.ba ; 2 uses
  %i.bd = fcmp reassoc nsz arcp contract afn olt float %.0322, %i.ba
  %i.be = select reassoc nsz arcp contract afn i1 %i.bd, float %.0322, float %i.ba ; 2 uses
  %i.bf = fadd reassoc nsz arcp contract afn float %i.ba, %.0313 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.bg = icmp ugt i64 %i.e, %indvars.iv.next
  br i1 %i.bg, label %bb.d, label %._crit_edge.loopexit13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @rt_clamp_minmax(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #16 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !18   ; 4 uses
  %i.b = load float, ptr %1, align 4, !tbaa !18   ; 6 uses
  %i.c = fcmp reassoc nsz arcp contract afn une float %i.a, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !18
  %i.h = fcmp reassoc nsz arcp contract afn une float %i.e, %i.g
  br i1 %i.h, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !18 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !18
  %i.m = fcmp reassoc nsz arcp contract afn oeq float %i.j, %i.l
  br i1 %i.m, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !18 ; 2 uses
  %i.p = fcmp reassoc nsz arcp contract afn une float %i.o, %i.a
  br i1 %i.p, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %bb.d
  %i.q = fcmp reassoc nsz arcp contract afn ogt float %i.b, -3.000000e+00
  %i.r = select reassoc nsz arcp contract afn i1 %i.q, float %i.b, float -3.000000e+00 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !18 ; 2 uses
  %i.u = fcmp reassoc nsz arcp contract afn olt float %i.t, 3.000000e+00
  %i.v = select reassoc nsz arcp contract afn i1 %i.u, float %i.t, float 3.000000e+00 ; 2 uses
  %i.w = fsub reassoc nsz arcp contract afn float %i.j, %i.a
  %i.x = fsub reassoc nsz arcp contract afn float %i.o, %i.a
  %i.y = fsub reassoc nnan nsz arcp contract afn float %i.v, %i.r
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, %i.w
  %i.aa = fdiv reassoc nsz arcp contract afn float %i.z, %i.x
  %i.ab = fadd reassoc nsz arcp contract afn float %i.aa, %i.r
  store float %i.ab, ptr %i.k, align 4, !tbaa !18
  store float %i.v, ptr %i.s, align 4, !tbaa !18
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.e
  %i.ac = phi float [ %i.r, %bb.e ], [ %i.b, %bb.b ], [ %i.b, %bb.c ], [ %i.b, %bb.d ] ; 4 uses
  %i.ad = fcmp reassoc nsz arcp contract afn oeq float %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.f, label %bb.i

bb.f:                                             ; preds = %thread-pre-split
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !18
  %i.ag = fcmp reassoc nsz arcp contract afn oeq float %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !18
  %i.aj = fcmp reassoc nsz arcp contract afn oeq float %i.ai, 0.000000e+00
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store <2 x float> <float 0.000000e+00, float 1.500000e+00>, ptr %i.ae, align 4, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %thread-pre-split
  %i.ak = phi float [ -1.500000e+00, %bb.h ], [ %i.ac, %bb.g ], [ %i.ac, %bb.f ], [ %i.ac, %thread-pre-split ] ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !18 ; 2 uses
  %i.an = fadd reassoc nsz arcp contract afn float %i.ak, 1.000000e-01 ; 2 uses
  %i.ao = fcmp reassoc nsz arcp contract afn olt float %i.am, %i.an
  %i.ap = select i1 %i.ao, float %i.an, float %i.am ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !18 ; 2 uses
  %i.as = fadd reassoc nsz arcp contract afn float %i.ak, 5.000000e-02 ; 2 uses
  %i.at = fcmp reassoc nsz arcp contract afn olt float %i.ar, %i.as
  %i.au = select i1 %i.at, float %i.as, float %i.ar ; 2 uses
  %i.av = fadd reassoc nsz arcp contract afn float %i.ap, -5.000000e-02 ; 2 uses
  %i.aw = fcmp reassoc nsz arcp contract afn ogt float %i.au, %i.av
  %i.ax = select i1 %i.aw, float %i.av, float %i.au
  %i.ay = fcmp reassoc nsz arcp contract afn ogt float %i.ak, -3.000000e+00
  %i.az = select reassoc nsz arcp contract afn i1 %i.ay, float %i.ak, float -3.000000e+00 ; 3 uses
  %i.ba = fcmp reassoc nsz arcp contract afn olt float %i.ap, 3.000000e+00
  %i.bb = select reassoc nsz arcp contract afn i1 %i.ba, float %i.ap, float 3.000000e+00 ; 2 uses
  %i.bc = fsub reassoc nsz arcp contract afn float %i.ax, %i.ak
  %i.bd = fsub reassoc nsz arcp contract afn float %i.ap, %i.ak
  %i.be = fsub reassoc nnan nsz arcp contract afn float %i.bb, %i.az
  %i.bf = fmul reassoc nsz arcp contract afn float %i.bc, %i.be
  %i.bg = fdiv reassoc nsz arcp contract afn float %i.bf, %i.bd
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bg, %i.az
  store float %i.bh, ptr %i.aq, align 4, !tbaa !18
  store float %i.az, ptr %1, align 4, !tbaa !18
  store float %i.bb, ptr %i.al, align 4, !tbaa !18
  ret void
}

declare void @dt_dwt_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @distort_mask(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !299
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !299
  %..i = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.d)
  %i.e = sext i32 %..i to i64
  %i.f = shl nsw i64 %i.e, 2                      ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !297
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !297
  %i.k = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.j) ; 3 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %rt_copy_in_to_out.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.m = load <2 x i32>, ptr %5, align 4, !tbaa !21
  %i.n = load <2 x i32>, ptr %4, align 4, !tbaa !21
  %i.o = sub <2 x i32> %i.m, %i.n                 ; 2 uses
  %i.p = extractelement <2 x i32> %i.o, i64 0
  %i.q = sext i32 %i.p to i64
  %i.r = extractelement <2 x i32> %i.o, i64 1
  %i.s = sext i32 %i.r to i64                     ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.k to i64  ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.q ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.t = icmp ult i32 %i.k, 4
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.b ]
  %i.u = add nsw i64 %indvars.iv.i, %i.s
  %i.v = load i32, ptr %i.c, align 4, !tbaa !299
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.u, %i.w
  %i.y = load i32, ptr %i.a, align 4, !tbaa !299
  %i.z = sext i32 %i.y to i64
  %i.aa = mul i64 %indvars.iv.i, %i.z
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.x
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ab, ptr readonly align 4 %gep, i64 %i.f, i1 false)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ac = add nsw i64 %indvars.iv.next.i, %i.s
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !299
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul nsw i64 %i.ac, %i.ae
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !299
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul i64 %indvars.iv.next.i, %i.ah
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.af
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aj, ptr readonly align 4 %gep.1, i64 %i.f, i1 false)
end_hunk_0
