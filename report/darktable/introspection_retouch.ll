Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_retouch?download=true
inline.NumInlined: 227
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 25
begin_hunk_0_@rt_process_stats:bb.a
  %i.v = fmul reassoc nsz arcp contract afn float %i.t, f0x40F92F69
  %i.w = fadd reassoc nsz arcp contract afn float %i.v, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit.us

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.x = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.t) #29
  br label %dt_XYZ_to_Lab.exit.us

dt_XYZ_to_Lab.exit.us:                            ; preds = %bb.c, %bb.b
  %i.y = phi reassoc nsz arcp contract afn float [ %i.x, %bb.c ], [ %i.w, %bb.b ]
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, 1.160000e+02
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, -1.600000e+01 ; 5 uses
  %i.ab = fcmp reassoc nsz arcp contract afn ogt float %.0331.us, %i.aa
  %i.ac = select reassoc nsz arcp contract afn i1 %i.ab, float %.0331.us, float %i.aa ; 2 uses
  %i.ad = fcmp reassoc nsz arcp contract afn olt float %.0322.us, %i.aa
  %i.ae = select reassoc nsz arcp contract afn i1 %i.ad, float %.0322.us, float %i.aa ; 2 uses
  %i.af = fadd reassoc nsz arcp contract afn float %i.aa, %.0313.us ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 4 ; 2 uses
  %i.ag = icmp ugt i64 %i.e, %indvars.iv.next23
  br i1 %i.ag, label %.lr.ph.split.us, label %._crit_edge.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 852
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 704
  %i.aj = load i32, ptr %i.ai, align 64, !tbaa !264
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !265
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %dt_XYZ_to_Lab.exit.us
  %i.al = add i64 %i.e, 17179869180
  %i.am = lshr exact i64 %i.al, 2
  %i.an = trunc i64 %i.am to i32
  %i.ao = add nuw i32 %i.an, 1
  br label %._crit_edge

._crit_edge.loopexit13:                           ; preds = %bb.d
  %i.ap = add i64 %i.e, 17179869180
  %i.aq = lshr exact i64 %i.ap, 2
  %i.ar = trunc i64 %i.aq to i32
  %i.as = add nuw i32 %i.ar, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit13, %._crit_edge.loopexit, %bb.a
  %.033.lcssa = phi float [ f0xFF7FFFFF, %bb.a ], [ %i.ac, %._crit_edge.loopexit ], [ %i.bd, %._crit_edge.loopexit13 ]
  %.032.lcssa = phi float [ f0x7F7FFFFF, %bb.a ], [ %i.ae, %._crit_edge.loopexit ], [ %i.bf, %._crit_edge.loopexit13 ]
  %.031.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.af, %._crit_edge.loopexit ], [ %i.bg, %._crit_edge.loopexit13 ]
  %.030.lcssa = phi i32 [ 0, %bb.a ], [ %i.ao, %._crit_edge.loopexit ], [ %i.as, %._crit_edge.loopexit13 ]
  %i.at = fmul reassoc nsz arcp contract afn float %.032.lcssa, f0x3C23D70A
  store float %i.at, ptr %3, align 4, !tbaa !12
  %i.au = fmul reassoc nsz arcp contract afn float %.033.lcssa, f0x3C23D70A
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.au, ptr %i.av, align 4, !tbaa !12
  %i.aw = uitofp nsz nneg i32 %.030.lcssa to float
  %i.ax = fmul reassoc nsz arcp contract afn float %.031.lcssa, f0x3C23D70A
  %i.ay = fdiv reassoc nsz arcp contract afn float %i.ax, %i.aw
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.ay, ptr %i.az, align 4, !tbaa !12
  ret void

bb.d:                                             ; preds = %.lr.ph.split, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.0313 = phi float [ 0.000000e+00, %.lr.ph.split ], [ %i.bg, %bb.d ]
  %.0322 = phi float [ f0x7F7FFFFF, %.lr.ph.split ], [ %i.bf, %bb.d ] ; 2 uses
  %.0331 = phi float [ f0xFF7FFFFF, %.lr.ph.split ], [ %i.bd, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  call fastcc void @dt_ioppr_rgb_matrix_to_lab(ptr noundef %i.ba, ptr noundef %i.a, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, i32 noundef %i.aj, i32 noundef %i.ak)
  %i.bb = load float, ptr %i.a, align 16, !tbaa !12 ; 5 uses
  %i.bc = fcmp reassoc nsz arcp contract afn ogt float %.0331, %i.bb
  %i.bd = select reassoc nsz arcp contract afn i1 %i.bc, float %.0331, float %i.bb ; 2 uses
  %i.be = fcmp reassoc nsz arcp contract afn olt float %.0322, %i.bb
  %i.bf = select reassoc nsz arcp contract afn i1 %i.be, float %.0322, float %i.bb ; 2 uses
  %i.bg = fadd reassoc nsz arcp contract afn float %i.bb, %.0313 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.bh = icmp ugt i64 %i.e, %indvars.iv.next
  br i1 %i.bh, label %bb.d, label %._crit_edge.loopexit13
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
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %rt_copy_in_to_out.exit

.lr.ph.i:                                         ; preds = %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %7 = load i32, ptr %6, align 4, !tbaa !246
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %9 = load i32, ptr %8, align 4, !tbaa !246
  %10 = load i32, ptr %5, align 4, !tbaa !248
  %11 = load i32, ptr %4, align 4, !tbaa !248
  %12 = sub i32 %10, %11
  %13 = sub i32 %9, %7
  %14 = sext i32 %12 to i64
  %i.m = sext i32 %13 to i64                      ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.k to i64  ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %14 ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.n = icmp ult i32 %i.k, 4
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.b ]
  %i.o = add nsw i64 %indvars.iv.i, %i.m
  %i.p = load i32, ptr %i.c, align 4, !tbaa !249
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.o, %i.q
  %i.s = load i32, ptr %i.a, align 4, !tbaa !249
  %i.t = sext i32 %i.s to i64
  %i.u = mul i64 %indvars.iv.i, %i.t
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.r
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.v, ptr readonly align 4 %gep, i64 %i.f, i1 false)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.w = add nsw i64 %indvars.iv.next.i, %i.m
  %i.x = load i32, ptr %i.c, align 4, !tbaa !249
  %i.y = sext i32 %i.x to i64
  %i.z = mul nsw i64 %i.w, %i.y
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !249
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul i64 %indvars.iv.next.i, %i.ab
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.z
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ad, ptr readonly align 4 %gep.1, i64 %i.f, i1 false)
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.ae = add nsw i64 %indvars.iv.next.i.1, %i.m
  %i.af = load i32, ptr %i.c, align 4, !tbaa !249
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %i.ae, %i.ag
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !249
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul i64 %indvars.iv.next.i.1, %i.aj
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ah
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ak
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.al, ptr readonly align 4 %gep.2, i64 %i.f, i1 false)
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.am = add nsw i64 %indvars.iv.next.i.2, %i.m
  %i.an = load i32, ptr %i.c, align 4, !tbaa !249
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %i.am, %i.ao
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !249
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul i64 %indvars.iv.next.i.2, %i.ar
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ap
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.at, ptr readonly align 4 %gep.3, i64 %i.f, i1 false)
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %rt_copy_in_to_out.exit.loopexit.unr-lcssa, label %bb.b

rt_copy_in_to_out.exit.loopexit.unr-lcssa:        ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %rt_copy_in_to_out.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %rt_copy_in_to_out.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %rt_copy_in_to_out.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod4)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.au = add nsw i64 %indvars.iv.i.epil, %i.m
  %i.av = load i32, ptr %i.c, align 4, !tbaa !249
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul nsw i64 %i.au, %i.aw
  %i.ay = load i32, ptr %i.a, align 4, !tbaa !249
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul i64 %indvars.iv.i.epil, %i.az
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ax
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bb, ptr readonly align 4 %gep.epil, i64 %i.f, i1 false)
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %rt_copy_in_to_out.exit, label %bb.c, !llvm.loop !342

rt_copy_in_to_out.exit:                           ; preds = %rt_copy_in_to_out.exit.loopexit.unr-lcssa, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #18 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !345
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 672), align 16, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 760), align 8, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 848), align 16, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 936), align 8, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1024), align 16, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1112), align 8, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1200), align 16, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1288), align 8, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1376), align 16, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1464), align 8, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1552), align 16, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1640), align 8, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1728), align 16, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1816), align 8, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1904), align 16, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1992), align 8, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2080), align 16, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2168), align 8, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2256), align 16, !tbaa !200
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2344), align 8, !tbaa !200
  store ptr @introspection_init.f2, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 248), align 8, !tbaa !200
  store ptr @introspection_init.f3, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 336), align 16, !tbaa !200
  store ptr @introspection_init.f5, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 512), align 16, !tbaa !200
  store ptr @introspection_init.f10, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 952), align 8, !tbaa !200
  store ptr @introspection_init.f2, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1128), align 8, !tbaa !200
  store ptr @introspection_init.f3, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1656), align 8, !tbaa !200
  store ptr @introspection_init.f5, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1832), align 8, !tbaa !200
  store ptr @introspection_init.f25, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 2272), align 16, !tbaa !200
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #19 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(19) @.str.109) #30
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str.110) #30
  %.not52 = icmp eq i32 %i.b, 0
  br i1 %.not52, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.au

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(22) @.str.111) #30
  %.not53 = icmp eq i32 %i.d, 0
  br i1 %.not53, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.au

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(22) @.str.112) #30
  %.not54 = icmp eq i32 %i.f, 0
  br i1 %.not54, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.au

bb.h:                                             ; preds = %bb.f
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(24) @.str.113) #30
  %.not55 = icmp eq i32 %i.h, 0
  br i1 %.not55, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.au

bb.j:                                             ; preds = %bb.h
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(22) @.str.114) #30
end_hunk_0
