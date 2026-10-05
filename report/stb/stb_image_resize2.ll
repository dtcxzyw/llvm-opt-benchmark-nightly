Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image_resize2?download=true
inline.NumInlined: 166
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@stbir__calculate_coefficients_for_gather_upsample:bb.a
  %i.ah = and <4 x i32> %i.ag, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.ai = bitcast <4 x i32> %i.ah to <4 x float>
  %foldExtExtBinop = fadd <4 x float> %i.ae, %i.ai
  %i.aj = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.ak = fptosi float %i.aj to i32               ; 3 uses
  %i.al = fadd float %i.aa, -5.000000e-01
  %i.am = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.al, i64 0 ; 2 uses
  %i.an = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.am)
  %i.ao = sitofp <4 x i32> %i.an to <4 x float>   ; 2 uses
  %i.ap = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.am, <4 x float> %i.ao, i8 1)
  %i.aq = bitcast <4 x float> %i.ap to <4 x i32>
  %i.ar = and <4 x i32> %i.aq, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.as = bitcast <4 x i32> %i.ar to <4 x float>
  %foldExtExtBinop79 = fadd <4 x float> %i.ao, %i.as
  %i.at = extractelement <4 x float> %foldExtExtBinop79, i64 0
  %i.au = fptosi float %i.at to i32
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.au, i32 %i.ak) ; 2 uses
  br i1 %i.l, label %bb.c, label %stbir__calculate_in_pixel_range.exit

bb.c:                                             ; preds = %bb.b
  %spec.select32.i = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 %i.m)
  %spec.select33.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.o)
  br label %stbir__calculate_in_pixel_range.exit

stbir__calculate_in_pixel_range.exit:             ; preds = %bb.b, %bb.c
  %.126.i = phi i32 [ %i.ak, %bb.b ], [ %spec.select32.i, %bb.c ] ; 5 uses
  %.1.i = phi i32 [ %spec.select.i, %bb.b ], [ %spec.select33.i, %bb.c ] ; 2 uses
  %i.av = sub nsw i32 %.1.i, %.126.i
  %.not = icmp slt i32 %i.av, %6
  %i.aw = add i32 %i.p, %.126.i
  %.062 = select i1 %.not, i32 %.1.i, i32 %i.aw   ; 2 uses
  %.not5666 = icmp slt i32 %.062, %.126.i
  br i1 %.not5666, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %stbir__calculate_in_pixel_range.exit, %bb.g
  %.04769 = phi i32 [ %.2, %bb.g ], [ -1, %stbir__calculate_in_pixel_range.exit ] ; 2 uses
  %.04868 = phi i32 [ %.149, %bb.g ], [ 0, %stbir__calculate_in_pixel_range.exit ] ; 5 uses
  %.06367 = phi i32 [ %.164, %bb.g ], [ %.126.i, %stbir__calculate_in_pixel_range.exit ] ; 3 uses
  %i.ax = add nsw i32 %.04868, %.06367
  %i.ay = sitofp i32 %i.ax to float
  %i.az = fadd float %i.ay, 5.000000e-01
  %i.ba = fsub float %i.u, %i.az
  %i.bb = tail call float %1(float noundef %i.ba, float noundef %i.b, ptr noundef %8) #24 ; 2 uses
  %i.bc = tail call float @llvm.fabs.f32(float %i.bb)
  %or.cond = fcmp olt float %i.bc, f0x03800000
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.bd = icmp eq i32 %.04868, 0
  br i1 %i.bd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.be = add nsw i32 %.06367, 1
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph, %bb.d
  %.1 = phi i32 [ %.04769, %bb.d ], [ %.04868, %.lr.ph ]
  %.0 = phi float [ 0.000000e+00, %bb.d ], [ %i.bb, %.lr.ph ]
  %i.bf = sext i32 %.04868 to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %.05371, i64 %i.bf
  store float %.0, ptr %i.bg, align 4, !tbaa !58
  %i.bh = add nsw i32 %.04868, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.164 = phi i32 [ %i.be, %bb.e ], [ %.06367, %bb.f ] ; 3 uses
  %.149 = phi i32 [ 0, %bb.e ], [ %i.bh, %bb.f ]  ; 2 uses
  %.2 = phi i32 [ %.04769, %bb.e ], [ %.1, %bb.f ] ; 2 uses
  %i.bi = sub nsw i32 %.062, %.164
  %.not56 = icmp sgt i32 %.149, %i.bi
  br i1 %.not56, label %._crit_edge, label %.lr.ph, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.g, %stbir__calculate_in_pixel_range.exit
  %.063.lcssa = phi i32 [ %.126.i, %stbir__calculate_in_pixel_range.exit ], [ %.164, %bb.g ] ; 2 uses
  %.047.lcssa = phi i32 [ -1, %stbir__calculate_in_pixel_range.exit ], [ %.2, %bb.g ]
  %i.bj = add nsw i32 %.047.lcssa, %.063.lcssa
  store i32 %.063.lcssa, ptr %.05272, align 4, !tbaa !47
  %i.bk = getelementptr inbounds nuw i8, ptr %.05272, i64 4
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !48
  %i.bl = getelementptr inbounds nuw i8, ptr %.05272, i64 8
  %i.bm = getelementptr inbounds [4 x i8], ptr %.05371, i64 %i.q
  %i.bn = add nuw nsw i32 %.05173, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bn, %spec.select
  br i1 %exitcond.not, label %._crit_edge76, label %bb.b, !llvm.loop !7

._crit_edge76:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbir__insert_coeff(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !48   ; 6 uses
  %i.c = load i32, ptr %0, align 4, !tbaa !47     ; 9 uses
  %i.d = icmp slt i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %2, ptr %i.a, align 4, !tbaa !48
  store i32 %2, ptr %0, align 4, !tbaa !47
  store float %3, ptr %1, align 4, !tbaa !58
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.not = icmp sgt i32 %2, %i.b
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i32 %2, %i.c
  br i1 %i.e, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.f = sub nsw i32 %i.b, %2
  %.not60.not = icmp slt i32 %i.f, %4
  br i1 %.not60.not, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.g = sub nsw i32 %i.c, %2                     ; 2 uses
  %i.h = sub nsw i32 %i.b, %i.c                   ; 3 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.j = zext nneg i32 %i.h to i64                ; 5 uses
  %i.k = sext i32 %i.g to i64
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.k ; 6 uses
  %i.l = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 15
  br i1 %min.iters.check, label %.lr.ph.preheader83, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.m = sext i32 %2 to i64
  %i.n = sext i32 %i.c to i64
  %i.o = sub nsw i64 %i.m, %i.n
  %i.p = shl nsw i64 %i.o, 2
  %i.q = add nsw i64 %i.p, -1
  %diff.check = icmp ult i64 %i.q, 31
  br i1 %diff.check, label %.lr.ph.preheader83, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, 4294967288               ; 3 uses
  %i.r = sub nsw i64 %i.j, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = sub i64 %i.j, %index                     ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -12
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -28
  %wide.load = load <4 x float>, ptr %i.u, align 4, !tbaa !58
  %wide.load82 = load <4 x float>, ptr %i.v, align 4, !tbaa !58
  %i.w = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.s ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -12
  %i.y = getelementptr i8, ptr %i.w, i64 -28
  store <4 x float> %wide.load, ptr %i.x, align 4, !tbaa !58
  store <4 x float> %wide.load82, ptr %i.y, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader83

.lr.ph.preheader83:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.preheader ], [ %i.r, %middle.block ] ; 4 uses
  %i.aa = add nsw i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader83, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader83 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader83 ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !58
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  store float %i.ac, ptr %gep.prol, align 4, !tbaa !58
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !186

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader83
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader83 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ad = icmp ult i64 %indvars.iv.ph, 3
  br i1 %i.ad, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.f
  %i.ae = icmp sgt i32 %i.g, 1
  br i1 %i.ae, label %.lr.ph63.preheader, label %._crit_edge

.lr.ph63.preheader:                               ; preds = %.preheader
  %scevgep = getelementptr i8, ptr %1, i64 4
  %i.af = xor i32 %2, -1
  %i.ag = add i32 %i.c, %i.af
  %i.ah = zext i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.ai, i1 false), !tbaa !58
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !58
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.ak, ptr %gep, align 4, !tbaa !58
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.am = load float, ptr %i.al, align 4, !tbaa !58
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  store float %i.am, ptr %gep.1, align 4, !tbaa !58
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ao = load float, ptr %i.an, align 4, !tbaa !58
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  store float %i.ao, ptr %gep.2, align 4, !tbaa !58
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, -3 ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !58
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  store float %i.aq, ptr %gep.3, align 4, !tbaa !58
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4
  %.not81.3 = icmp eq i64 %indvars.iv.next.2, 0
  br i1 %.not81.3, label %.preheader, label %.lr.ph, !llvm.loop !187

._crit_edge:                                      ; preds = %.lr.ph63.preheader, %.preheader
  store float %3, ptr %1, align 4, !tbaa !58
  store i32 %2, ptr %0, align 4, !tbaa !47
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.ar = sub nsw i32 %2, %i.c
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.as ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !58
  %i.av = fadd float %3, %i.au
  store float %i.av, ptr %i.at, align 4, !tbaa !58
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.aw = sub nsw i32 %2, %i.c                    ; 3 uses
  %.not59.not = icmp slt i32 %i.aw, %4
  br i1 %.not59.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = sub nsw i32 %i.b, %i.c
  %.064 = add nuw nsw i32 %i.ax, 1                ; 2 uses
  %i.ay = icmp slt i32 %.064, %i.aw
  br i1 %i.ay, label %.lr.ph67.preheader, label %._crit_edge68

.lr.ph67.preheader:                               ; preds = %bb.i
  %i.az = sext i32 %.064 to i64
  %i.ba = shl nsw i64 %i.az, 2
  %scevgep73 = getelementptr i8, ptr %1, i64 %i.ba
  %i.bb = add i32 %2, -2
  %i.bc = sub i32 %i.bb, %i.b
  %i.bd = zext i32 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 2
  %i.bf = add nuw nsw i64 %i.be, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73, i8 0, i64 %i.bf, i1 false), !tbaa !58
  br label %._crit_edge68

._crit_edge68:                                    ; preds = %.lr.ph67.preheader, %bb.i
  %i.bg = sext i32 %i.aw to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bg
  store float %3, ptr %i.bh, align 4, !tbaa !58
  store i32 %2, ptr %i.a, align 4, !tbaa !48
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %._crit_edge, %bb.g, %._crit_edge68, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stbir__calculate_out_pixel_range(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, i32 noundef %6) local_unnamed_addr #5 {
bb.a:
  %i.a = fsub float %2, %3
  %i.b = fadd float %2, %3
  %i.c = fmul float %i.a, %4
  %i.d = fsub float %i.c, %5
  %i.e = fmul float %i.b, %4
  %i.f = fsub float %i.e, %5
  %i.g = fadd float %i.d, 5.000000e-01
  %i.h = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.g, i64 0 ; 2 uses
  %i.i = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.h)
  %i.j = sitofp <4 x i32> %i.i to <4 x float>     ; 2 uses
  %i.k = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.h, <4 x float> %i.j, i8 1)
  %i.l = bitcast <4 x float> %i.k to <4 x i32>
  %i.m = and <4 x i32> %i.l, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.n = bitcast <4 x i32> %i.m to <4 x float>
  %foldExtExtBinop = fadd <4 x float> %i.j, %i.n
  %i.o = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.p = fadd float %i.f, -5.000000e-01
  %i.q = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.p, i64 0 ; 2 uses
  %i.r = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.q)
  %i.s = sitofp <4 x i32> %i.r to <4 x float>     ; 2 uses
  %i.t = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.q, <4 x float> %i.s, i8 1)
  %i.u = bitcast <4 x float> %i.t to <4 x i32>
  %i.v = and <4 x i32> %i.u, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.w = bitcast <4 x i32> %i.v to <4 x float>
  %foldExtExtBinop22 = fadd <4 x float> %i.s, %i.w
  %i.x = extractelement <4 x float> %foldExtExtBinop22, i64 0
  %i.y = fptosi float %i.x to i32
  %i.z = add nsw i32 %6, -1
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %i.z)
  %i.aa = fptosi float %i.o to i32
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 0)
  store i32 %spec.store.select, ptr %0, align 4, !tbaa !32
  store i32 %spec.select, ptr %1, align 4, !tbaa !32
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__calculate_coefficients_for_gather_downsample(i32 noundef %0, i32 noundef %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef captures(none) %7, ptr nofree noundef captures(none) %8, ptr noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !61 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !54 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !62   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.h = load i32, ptr %i.g, align 4, !tbaa !55   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !56
  %i.k = icmp ne i32 %i.j, 0
  %i.l = icmp slt i32 %i.h, %i.f
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  %i.n = icmp slt i32 %0, %1
  br i1 %i.n, label %.lr.ph82, label %._crit_edge

.lr.ph82:                                         ; preds = %bb.a
  %i.o = add nsw i32 %i.f, -1
  %i.p = add nsw i32 %i.h, -1
  %i.q = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph82, %.loopexit
  %.06181 = phi i32 [ -1, %.lr.ph82 ], [ %.3.ph, %.loopexit ] ; 3 uses
  %.06380 = phi i32 [ %0, %.lr.ph82 ], [ %i.bv, %.loopexit ] ; 8 uses
  %i.r = sitofp i32 %.06380 to float
  %i.s = fadd float %i.r, 5.000000e-01            ; 3 uses
  %i.t = fmul float %i.b, %i.s
  %i.u = fsub float %i.s, %2
  %i.v = fadd float %2, %i.s
  %i.w = fmul float %i.b, %i.u
  %i.x = fsub float %i.w, %i.d
  %i.y = fmul float %i.b, %i.v
  %i.z = fsub float %i.y, %i.d
  %i.aa = fadd float %i.x, 5.000000e-01
  %i.ab = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.aa, i64 0 ; 2 uses
  %i.ac = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ab)
  %i.ad = sitofp <4 x i32> %i.ac to <4 x float>   ; 2 uses
  %i.ae = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.ab, <4 x float> %i.ad, i8 1)
  %i.af = bitcast <4 x float> %i.ae to <4 x i32>
  %i.ag = and <4 x i32> %i.af, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.ah = bitcast <4 x i32> %i.ag to <4 x float>
  %foldExtExtBinop = fadd <4 x float> %i.ad, %i.ah
  %i.ai = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.aj = fadd float %i.z, -5.000000e-01
  %i.ak = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.aj, i64 0 ; 2 uses
  %i.al = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ak)
  %i.am = sitofp <4 x i32> %i.al to <4 x float>   ; 2 uses
  %i.an = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.ak, <4 x float> %i.am, i8 1)
  %i.ao = bitcast <4 x float> %i.an to <4 x i32>
  %i.ap = and <4 x i32> %i.ao, <i32 -1082130432, i32 poison, i32 poison, i32 poison>
  %i.aq = bitcast <4 x i32> %i.ap to <4 x float>
  %foldExtExtBinop91 = fadd <4 x float> %i.am, %i.aq
  %i.ar = extractelement <4 x float> %foldExtExtBinop91, i64 0
  %i.as = fptosi float %i.ar to i32
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %i.o) ; 3 uses
  %i.at = fptosi float %i.ai to i32
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.at, i32 0) ; 5 uses
  %i.au = icmp sgt i32 %spec.store.select.i, %spec.select.i
  br i1 %i.au, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.av = icmp eq i32 %spec.store.select.i, %i.h
  br i1 %i.av, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.p)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.073 = phi i32 [ %spec.select, %bb.e ], [ %spec.select.i, %bb.c ] ; 2 uses
  %.not6877 = icmp slt i32 %.073, %spec.store.select.i
  br i1 %.not6877, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.aw = fsub float %i.d, %i.t
  %i.ax = zext nneg i32 %spec.store.select.i to i64
  %i.ay = add nuw nsw i32 %.073, 1
  %i.az = sub nsw i32 %i.ay, %spec.store.select.i
  %wide.trip.count = zext nneg i32 %i.az to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.179 = phi i32 [ %.06181, %.lr.ph ], [ %.2, %bb.l ] ; 2 uses
  %i.ba = add nuw nsw i64 %indvars.iv, %i.ax      ; 4 uses
  %i.bb = trunc nuw nsw i64 %i.ba to i32          ; 2 uses
  %i.bc = uitofp nneg i32 %i.bb to float
  %i.bd = fadd float %i.bc, 5.000000e-01
  %i.be = fadd float %i.aw, %i.bd
  %i.bf = tail call float %3(float noundef %i.be, float noundef %i.b, ptr noundef %9) #24
  %i.bg = fmul float %i.b, %i.bf                  ; 2 uses
  %i.bh = tail call float @llvm.fabs.f32(float %i.bg)
  %or.cond = fcmp olt float %i.bh, f0x03800000
  %spec.store.select = select i1 %or.cond, float 0.000000e+00, float %i.bg ; 2 uses
  %i.bi = mul nsw i64 %i.ba, %i.q
  %i.bj = getelementptr inbounds [4 x i8], ptr %8, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.ba ; 5 uses
  %i.bl = sext i32 %.179 to i64
  %i.bm = icmp sgt i64 %i.ba, %i.bl
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %.06380, ptr %i.bk, align 4, !tbaa !47
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 %.06380, ptr %i.bn, align 4, !tbaa !48
  store float %spec.store.select, ptr %i.bj, align 4, !tbaa !58
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.bo = load float, ptr %i.bj, align 4, !tbaa !58
  %i.bp = fcmp oeq float %i.bo, 0.000000e+00
  br i1 %i.bp, label %bb.j, label %._crit_edge86

._crit_edge86:                                    ; preds = %bb.i
  %.pre = load i32, ptr %i.bk, align 4, !tbaa !47
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %.06380, ptr %i.bk, align 4, !tbaa !47
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge86, %bb.j
  %i.bq = phi i32 [ %.pre, %._crit_edge86 ], [ %.06380, %bb.j ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 %.06380, ptr %i.br, align 4, !tbaa !48
  %i.bs = sub nsw i32 %.06380, %i.bq
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bt
  store float %spec.store.select, ptr %i.bu, align 4, !tbaa !58
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.2 = phi i32 [ %i.bb, %bb.h ], [ %.179, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !8

.loopexit:                                        ; preds = %bb.l, %bb.f, %bb.b
  %.3.ph = phi i32 [ %.06181, %bb.b ], [ %.06181, %bb.f ], [ %.2, %bb.l ]
  %i.bv = add i32 %.06380, 1                      ; 2 uses
  %exitcond85.not = icmp eq i32 %i.bv, %1
end_hunk_0
begin_hunk_1_@stbir__cleanup_gathered_coefficients:bb.a
  %.1193327 = phi ptr [ %5, %.lr.ph331 ], [ %i.pn, %.loopexit ] ; 60 uses
  %.0194326 = phi i32 [ -1, %.lr.ph331 ], [ %.2196, %.loopexit ] ; 4 uses
  %.0197325 = phi i32 [ -2147483647, %.lr.ph331 ], [ %.3200, %.loopexit ] ; 4 uses
  %.0201324 = phi i32 [ 2147483647, %.lr.ph331 ], [ %.3204, %.loopexit ] ; 4 uses
  %.2208323 = phi i32 [ 0, %.lr.ph331 ], [ %i.po, %.loopexit ]
  br i1 %i.eq, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.1191330, i64 4 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !48 ; 2 uses
  %.not227 = icmp slt i32 %i.ew, %i.a
  br i1 %.not227, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.b, ptr %i.ev, align 4, !tbaa !48
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ex = phi i32 [ %i.b, %bb.k ], [ %i.ew, %bb.j ] ; 7 uses
  %i.ey = load i32, ptr %.1191330, align 4, !tbaa !47 ; 3 uses
  %i.ez = icmp slt i32 %i.ey, 0
  br i1 %i.ez, label %bb.m, label %stbir__insert_coeff.exit274

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %.1191330, align 4, !tbaa !47
  %i.fa = icmp sgt i32 %i.ex, -1
  br i1 %i.fa, label %.preheader.preheader, label %stbir__insert_coeff.exit274

.preheader.preheader:                             ; preds = %bb.m
  %i.fb = sext i32 %i.ey to i64                   ; 2 uses
  %i.fc = add nuw i32 %i.ex, 1
  %wide.trip.count362 = zext i32 %i.fc to i64     ; 3 uses
  %min.iters.check464 = icmp ult i32 %i.ex, 7
  br i1 %min.iters.check464, label %.preheader.preheader531, label %vector.ph465

vector.ph465:                                     ; preds = %.preheader.preheader
  %n.vec466 = and i64 %wide.trip.count362, 4294967288 ; 3 uses
  br label %vector.body467

vector.body467:                                   ; preds = %vector.body467, %vector.ph465
  %index468 = phi i64 [ 0, %vector.ph465 ], [ %index.next471, %vector.body467 ] ; 3 uses
  %i.fd = sub nsw i64 %index468, %i.fb
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %wide.load469 = load <4 x float>, ptr %i.fe, align 4, !tbaa !58
  %wide.load470 = load <4 x float>, ptr %i.ff, align 4, !tbaa !58
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %index468 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <4 x float> %wide.load469, ptr %i.fg, align 4, !tbaa !58
  store <4 x float> %wide.load470, ptr %i.fh, align 4, !tbaa !58
  %index.next471 = add nuw i64 %index468, 8       ; 2 uses
  %i.fi = icmp eq i64 %index.next471, %n.vec466
  br i1 %i.fi, label %middle.block472, label %vector.body467, !llvm.loop !196

middle.block472:                                  ; preds = %vector.body467
  %cmp.n473 = icmp eq i64 %n.vec466, %wide.trip.count362
  br i1 %cmp.n473, label %stbir__insert_coeff.exit274, label %.preheader.preheader531

.preheader.preheader531:                          ; preds = %.preheader.preheader, %middle.block472
  %indvars.iv359.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec466, %middle.block472 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader531, %.preheader
  %indvars.iv359 = phi i64 [ %indvars.iv.next360, %.preheader ], [ %indvars.iv359.ph, %.preheader.preheader531 ] ; 3 uses
  %i.fj = sub nsw i64 %indvars.iv359, %i.fb
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %i.fj
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !58
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv359
  store float %i.fl, ptr %i.fm, align 4, !tbaa !58
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next360, %wide.trip.count362
  br i1 %exitcond363.not, label %stbir__insert_coeff.exit274, label %.preheader, !llvm.loop !197

bb.n:                                             ; preds = %bb.i
  %.pre371 = load i32, ptr %.1191330, align 4, !tbaa !47 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.1191330, i64 4 ; 11 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !48 ; 4 uses
  br i1 %or.cond5, label %bb.o, label %stbir__insert_coeff.exit274

bb.o:                                             ; preds = %bb.n
  %.not = icmp slt i32 %i.fo, %i.a
  br i1 %.not, label %.loopexit279, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.b, ptr %i.fn, align 4, !tbaa !48
  %scevgep.i = getelementptr i8, ptr %.1193327, i64 4
  %i.fp = sext i32 %.pre371 to i64
  %i.fq = add i32 %i.fo, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %stbir__insert_coeff.exit
  %indvars.iv350 = phi i64 [ %i.eu, %bb.p ], [ %indvars.iv.next351, %stbir__insert_coeff.exit ] ; 3 uses
  %i.fr = load ptr, ptr %i.es, align 8, !tbaa !52
  %i.fs = trunc nsw i64 %indvars.iv350 to i32
  %i.ft = tail call i32 %i.fr(i32 noundef %i.fs, i32 noundef %i.a) #24 ; 17 uses
  %i.fu = sub nsw i64 %indvars.iv350, %i.fp
  %i.fv = getelementptr inbounds [4 x i8], ptr %.1193327, i64 %i.fu
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !58 ; 4 uses
  %i.fx = load i32, ptr %i.fn, align 4, !tbaa !48 ; 10 uses
  %i.fy = load i32, ptr %.1191330, align 4, !tbaa !47 ; 13 uses
  %i.fz = icmp slt i32 %i.fx, %i.fy
  br i1 %i.fz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %i.ft, ptr %i.fn, align 4, !tbaa !48
  store i32 %i.ft, ptr %.1191330, align 4, !tbaa !47
  store float %i.fw, ptr %.1193327, align 4, !tbaa !58
  br label %stbir__insert_coeff.exit

bb.s:                                             ; preds = %bb.q
  %.not.i236 = icmp sgt i32 %i.ft, %i.fx
  br i1 %.not.i236, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ga = icmp slt i32 %i.ft, %i.fy
  br i1 %i.ga, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gb = sub nsw i32 %i.fx, %i.ft
  %.not60.not.i = icmp slt i32 %i.gb, %6
  br i1 %.not60.not.i, label %.lr.ph.preheader.i, label %stbir__insert_coeff.exit

.lr.ph.preheader.i:                               ; preds = %bb.u
  %i.gc = sub nsw i32 %i.fy, %i.ft                ; 2 uses
  %i.gd = sub i32 %i.fx, %i.fy                    ; 2 uses
  %i.ge = zext i32 %i.gd to i64                   ; 5 uses
  %i.gf = sext i32 %i.gc to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %.1193327, i64 %i.gf ; 6 uses
  %i.gg = add nuw nsw i64 %i.ge, 1                ; 2 uses
  %min.iters.check519 = icmp ult i32 %i.gd, 7
  br i1 %min.iters.check519, label %.lr.ph.i.preheader, label %vector.memcheck516

vector.memcheck516:                               ; preds = %.lr.ph.preheader.i
  %i.gh = sext i32 %i.ft to i64
  %i.gi = sext i32 %i.fy to i64
  %i.gj = sub nsw i64 %i.gh, %i.gi
  %i.gk = shl nsw i64 %i.gj, 2
  %i.gl = add nsw i64 %i.gk, -1
  %diff.check517 = icmp ult i64 %i.gl, 31
  br i1 %diff.check517, label %.lr.ph.i.preheader, label %vector.ph520

vector.ph520:                                     ; preds = %vector.memcheck516
  %n.vec521 = and i64 %i.gg, 8589934584           ; 3 uses
  %i.gm = sub nsw i64 %i.ge, %n.vec521
  br label %vector.body522

vector.body522:                                   ; preds = %vector.body522, %vector.ph520
  %index523 = phi i64 [ 0, %vector.ph520 ], [ %index.next526, %vector.body522 ] ; 2 uses
  %i.gn = sub i64 %i.ge, %index523                ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %i.gn ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -12
  %i.gq = getelementptr inbounds i8, ptr %i.go, i64 -28
  %wide.load524 = load <4 x float>, ptr %i.gp, align 4, !tbaa !58
  %wide.load525 = load <4 x float>, ptr %i.gq, align 4, !tbaa !58
  %i.gr = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.gn ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 -12
  %i.gt = getelementptr i8, ptr %i.gr, i64 -28
  store <4 x float> %wide.load524, ptr %i.gs, align 4, !tbaa !58
  store <4 x float> %wide.load525, ptr %i.gt, align 4, !tbaa !58
  %index.next526 = add nuw i64 %index523, 8       ; 2 uses
  %i.gu = icmp eq i64 %index.next526, %n.vec521
  br i1 %i.gu, label %middle.block527, label %vector.body522, !llvm.loop !198

middle.block527:                                  ; preds = %vector.body522
  %cmp.n528 = icmp eq i64 %i.gg, %n.vec521
  br i1 %cmp.n528, label %.preheader.i.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck516, %.lr.ph.preheader.i, %middle.block527
  %indvars.iv.i.ph = phi i64 [ %i.ge, %vector.memcheck516 ], [ %i.ge, %.lr.ph.preheader.i ], [ %i.gm, %middle.block527 ] ; 4 uses
  %i.gv = add nsw i64 %indvars.iv.i.ph, 1
  %xtraiter547 = and i64 %i.gv, 3                 ; 2 uses
  %lcmp.mod548.not = icmp eq i64 %xtraiter547, 0
  br i1 %lcmp.mod548.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter549 = phi i64 [ %prol.iter549.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.i.prol
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !58
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.prol
  store float %i.gx, ptr %gep.i.prol, align 4, !tbaa !58
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 2 uses
  %prol.iter549.next = add i64 %prol.iter549, 1   ; 2 uses
  %prol.iter549.cmp.not = icmp eq i64 %prol.iter549.next, %xtraiter547
  br i1 %prol.iter549.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !199

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.gy = icmp ult i64 %indvars.iv.i.ph, 3
  br i1 %i.gy, label %.preheader.i.loopexit, label %.lr.ph.i

.preheader.i.loopexit:                            ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block527
  %i.gz = icmp sgt i32 %i.gc, 1
  br i1 %i.gz, label %.lr.ph63.preheader.i, label %._crit_edge.i

.lr.ph63.preheader.i:                             ; preds = %.preheader.i.loopexit
  %i.ha = xor i32 %i.ft, -1
  %i.hb = add i32 %i.fy, %i.ha
  %i.hc = zext i32 %i.hb to i64
  %i.hd = shl nuw nsw i64 %i.hc, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.hd, i1 false), !tbaa !58
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.i
  %i.hf = load float, ptr %i.he, align 4, !tbaa !58
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store float %i.hf, ptr %gep.i, align 4, !tbaa !58
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.next.i
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !58
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  store float %i.hh, ptr %gep.i.1, align 4, !tbaa !58
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.next.i.1
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !58
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  store float %i.hj, ptr %gep.i.2, align 4, !tbaa !58
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 3 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.next.i.2
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !58
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  store float %i.hl, ptr %gep.i.3, align 4, !tbaa !58
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4
  %.not81.i.3 = icmp eq i64 %indvars.iv.next.i.2, 0
  br i1 %.not81.i.3, label %.preheader.i.loopexit, label %.lr.ph.i, !llvm.loop !200

._crit_edge.i:                                    ; preds = %.lr.ph63.preheader.i, %.preheader.i.loopexit
  store float %i.fw, ptr %.1193327, align 4, !tbaa !58
  store i32 %i.ft, ptr %.1191330, align 4, !tbaa !47
  br label %stbir__insert_coeff.exit

bb.v:                                             ; preds = %bb.t
  %i.hm = sub nsw i32 %i.ft, %i.fy
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %i.hn ; 2 uses
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !58
  %i.hq = fadd float %i.fw, %i.hp
  store float %i.hq, ptr %i.ho, align 4, !tbaa !58
  br label %stbir__insert_coeff.exit

bb.w:                                             ; preds = %bb.s
  %i.hr = sub nsw i32 %i.ft, %i.fy                ; 3 uses
  %.not59.not.i = icmp slt i32 %i.hr, %6
  br i1 %.not59.not.i, label %bb.x, label %stbir__insert_coeff.exit

bb.x:                                             ; preds = %bb.w
  %i.hs = sub nsw i32 %i.fx, %i.fy
  %.064.i = add nuw nsw i32 %i.hs, 1              ; 2 uses
  %i.ht = icmp slt i32 %.064.i, %i.hr
  br i1 %i.ht, label %.lr.ph67.preheader.i, label %._crit_edge68.i

.lr.ph67.preheader.i:                             ; preds = %bb.x
  %i.hu = sext i32 %.064.i to i64
  %i.hv = shl nuw nsw i64 %i.hu, 2
  %scevgep73.i = getelementptr i8, ptr %.1193327, i64 %i.hv
  %i.hw = add i32 %i.ft, -2
  %i.hx = sub i32 %i.hw, %i.fx
  %i.hy = zext i32 %i.hx to i64
  %i.hz = shl nuw nsw i64 %i.hy, 2
  %i.ia = add nuw nsw i64 %i.hz, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i, i8 0, i64 %i.ia, i1 false), !tbaa !58
  br label %._crit_edge68.i

._crit_edge68.i:                                  ; preds = %.lr.ph67.preheader.i, %bb.x
  %i.ib = sext i32 %i.hr to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %.1193327, i64 %i.ib
  store float %i.fw, ptr %i.ic, align 4, !tbaa !58
  store i32 %i.ft, ptr %i.fn, align 4, !tbaa !48
  br label %stbir__insert_coeff.exit

stbir__insert_coeff.exit:                         ; preds = %bb.r, %bb.u, %._crit_edge.i, %bb.v, %bb.w, %._crit_edge68.i
  %i.id = phi i32 [ %i.ft, %bb.r ], [ %i.fx, %bb.u ], [ %i.fx, %._crit_edge.i ], [ %i.fx, %bb.v ], [ %i.fx, %bb.w ], [ %i.ft, %._crit_edge68.i ]
  %i.ie = phi i32 [ %i.ft, %bb.r ], [ %i.fy, %bb.u ], [ %i.ft, %._crit_edge.i ], [ %i.fy, %bb.v ], [ %i.fy, %bb.w ], [ %i.fy, %._crit_edge68.i ]
  %indvars.iv.next351 = add nsw i64 %indvars.iv350, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next351 to i32
  %exitcond353.not = icmp eq i32 %i.fq, %lftr.wideiv
  br i1 %exitcond353.not, label %.loopexit279, label %bb.q, !llvm.loop !201

.loopexit279:                                     ; preds = %stbir__insert_coeff.exit, %bb.o
  %i.if = phi i32 [ %i.fo, %bb.o ], [ %i.id, %stbir__insert_coeff.exit ] ; 2 uses
  %i.ig = phi i32 [ %.pre371, %bb.o ], [ %i.ie, %stbir__insert_coeff.exit ] ; 4 uses
  %i.ih = icmp slt i32 %i.ig, 0
  br i1 %i.ih, label %bb.y, label %stbir__insert_coeff.exit274

bb.y:                                             ; preds = %.loopexit279
  %narrow = xor i32 %i.ig, -1
  %i.ii = zext nneg i32 %narrow to i64
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %i.ii ; 2 uses
  %.not408 = icmp eq i32 %i.ig, -1
  br i1 %.not408, label %._crit_edge306, label %.lr.ph305

.lr.ph305:                                        ; preds = %bb.y
  %scevgep.i242 = getelementptr i8, ptr %.1193327, i64 4
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph305, %stbir__insert_coeff.exit255
  %.0182303 = phi ptr [ %i.ij, %.lr.ph305 ], [ %i.im, %stbir__insert_coeff.exit255 ] ; 2 uses
  %.1302 = phi i32 [ -1, %.lr.ph305 ], [ %i.kw, %stbir__insert_coeff.exit255 ] ; 2 uses
  %i.ik = load ptr, ptr %i.es, align 8, !tbaa !52
  %i.il = tail call i32 %i.ik(i32 noundef %.1302, i32 noundef %i.a) #24 ; 17 uses
  %i.im = getelementptr inbounds i8, ptr %.0182303, i64 -4 ; 2 uses
  %i.in = load float, ptr %.0182303, align 4, !tbaa !58 ; 4 uses
  %i.io = load i32, ptr %i.fn, align 4, !tbaa !48 ; 10 uses
  %i.ip = load i32, ptr %.1191330, align 4, !tbaa !47 ; 13 uses
  %i.iq = icmp slt i32 %i.io, %i.ip
  br i1 %i.iq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 %i.il, ptr %i.fn, align 4, !tbaa !48
  store i32 %i.il, ptr %.1191330, align 4, !tbaa !47
  store float %i.in, ptr %.1193327, align 4, !tbaa !58
  br label %stbir__insert_coeff.exit255

bb.ab:                                            ; preds = %bb.z
  %.not.i237 = icmp sgt i32 %i.il, %i.io
  br i1 %.not.i237, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ir = icmp slt i32 %i.il, %i.ip
  br i1 %i.ir, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.is = sub nsw i32 %i.io, %i.il
  %.not60.not.i238 = icmp slt i32 %i.is, %6
  br i1 %.not60.not.i238, label %.lr.ph.preheader.i243, label %stbir__insert_coeff.exit255

.lr.ph.preheader.i243:                            ; preds = %bb.ad
  %i.it = sub nsw i32 %i.ip, %i.il                ; 2 uses
  %i.iu = sub i32 %i.io, %i.ip                    ; 2 uses
  %i.iv = zext i32 %i.iu to i64                   ; 5 uses
  %i.iw = sext i32 %i.it to i64
  %invariant.gep.i244 = getelementptr [4 x i8], ptr %.1193327, i64 %i.iw ; 6 uses
  %i.ix = add nuw nsw i64 %i.iv, 1                ; 2 uses
  %min.iters.check505 = icmp ult i32 %i.iu, 7
  br i1 %min.iters.check505, label %.lr.ph.i245.preheader, label %vector.memcheck502

vector.memcheck502:                               ; preds = %.lr.ph.preheader.i243
  %i.iy = sext i32 %i.il to i64
  %i.iz = sext i32 %i.ip to i64
  %i.ja = sub nsw i64 %i.iy, %i.iz
  %i.jb = shl nsw i64 %i.ja, 2
  %i.jc = add nsw i64 %i.jb, -1
  %diff.check503 = icmp ult i64 %i.jc, 31
  br i1 %diff.check503, label %.lr.ph.i245.preheader, label %vector.ph506

vector.ph506:                                     ; preds = %vector.memcheck502
  %n.vec507 = and i64 %i.ix, 8589934584           ; 3 uses
  %i.jd = sub nsw i64 %i.iv, %n.vec507
  br label %vector.body508

vector.body508:                                   ; preds = %vector.body508, %vector.ph506
  %index509 = phi i64 [ 0, %vector.ph506 ], [ %index.next512, %vector.body508 ] ; 2 uses
  %i.je = sub i64 %i.iv, %index509                ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %i.je ; 2 uses
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 -12
  %i.jh = getelementptr inbounds i8, ptr %i.jf, i64 -28
  %wide.load510 = load <4 x float>, ptr %i.jg, align 4, !tbaa !58
  %wide.load511 = load <4 x float>, ptr %i.jh, align 4, !tbaa !58
  %i.ji = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %i.je ; 2 uses
  %i.jj = getelementptr i8, ptr %i.ji, i64 -12
  %i.jk = getelementptr i8, ptr %i.ji, i64 -28
  store <4 x float> %wide.load510, ptr %i.jj, align 4, !tbaa !58
  store <4 x float> %wide.load511, ptr %i.jk, align 4, !tbaa !58
  %index.next512 = add nuw i64 %index509, 8       ; 2 uses
  %i.jl = icmp eq i64 %index.next512, %n.vec507
  br i1 %i.jl, label %middle.block513, label %vector.body508, !llvm.loop !202

middle.block513:                                  ; preds = %vector.body508
  %cmp.n514 = icmp eq i64 %i.ix, %n.vec507
  br i1 %cmp.n514, label %.preheader.i239.loopexit, label %.lr.ph.i245.preheader

.lr.ph.i245.preheader:                            ; preds = %vector.memcheck502, %.lr.ph.preheader.i243, %middle.block513
  %indvars.iv.i246.ph = phi i64 [ %i.iv, %vector.memcheck502 ], [ %i.iv, %.lr.ph.preheader.i243 ], [ %i.jd, %middle.block513 ] ; 4 uses
  %i.jm = add nsw i64 %indvars.iv.i246.ph, 1
  %xtraiter550 = and i64 %i.jm, 3                 ; 2 uses
  %lcmp.mod551.not = icmp eq i64 %xtraiter550, 0
  br i1 %lcmp.mod551.not, label %.lr.ph.i245.prol.loopexit, label %.lr.ph.i245.prol

.lr.ph.i245.prol:                                 ; preds = %.lr.ph.i245.preheader, %.lr.ph.i245.prol
  %indvars.iv.i246.prol = phi i64 [ %indvars.iv.next.i248.prol, %.lr.ph.i245.prol ], [ %indvars.iv.i246.ph, %.lr.ph.i245.preheader ] ; 3 uses
  %prol.iter552 = phi i64 [ %prol.iter552.next, %.lr.ph.i245.prol ], [ 0, %.lr.ph.i245.preheader ]
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.i246.prol
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !58
  %gep.i247.prol = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %indvars.iv.i246.prol
  store float %i.jo, ptr %gep.i247.prol, align 4, !tbaa !58
  %indvars.iv.next.i248.prol = add nsw i64 %indvars.iv.i246.prol, -1 ; 2 uses
  %prol.iter552.next = add i64 %prol.iter552, 1   ; 2 uses
  %prol.iter552.cmp.not = icmp eq i64 %prol.iter552.next, %xtraiter550
  br i1 %prol.iter552.cmp.not, label %.lr.ph.i245.prol.loopexit, label %.lr.ph.i245.prol, !llvm.loop !203

.lr.ph.i245.prol.loopexit:                        ; preds = %.lr.ph.i245.prol, %.lr.ph.i245.preheader
  %indvars.iv.i246.unr = phi i64 [ %indvars.iv.i246.ph, %.lr.ph.i245.preheader ], [ %indvars.iv.next.i248.prol, %.lr.ph.i245.prol ]
  %i.jp = icmp ult i64 %indvars.iv.i246.ph, 3
  br i1 %i.jp, label %.preheader.i239.loopexit, label %.lr.ph.i245

.preheader.i239.loopexit:                         ; preds = %.lr.ph.i245.prol.loopexit, %.lr.ph.i245, %middle.block513
  %i.jq = icmp sgt i32 %i.it, 1
  br i1 %i.jq, label %.lr.ph63.preheader.i241, label %._crit_edge.i240

.lr.ph63.preheader.i241:                          ; preds = %.preheader.i239.loopexit
  %i.jr = xor i32 %i.il, -1
  %i.js = add i32 %i.ip, %i.jr
  %i.jt = zext i32 %i.js to i64
  %i.ju = shl nuw nsw i64 %i.jt, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i242, i8 0, i64 %i.ju, i1 false), !tbaa !58
  br label %._crit_edge.i240

.lr.ph.i245:                                      ; preds = %.lr.ph.i245.prol.loopexit, %.lr.ph.i245
  %indvars.iv.i246 = phi i64 [ %indvars.iv.next.i248.3, %.lr.ph.i245 ], [ %indvars.iv.i246.unr, %.lr.ph.i245.prol.loopexit ] ; 6 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.i246
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !58
  %gep.i247 = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %indvars.iv.i246
  store float %i.jw, ptr %gep.i247, align 4, !tbaa !58
  %indvars.iv.next.i248 = add nsw i64 %indvars.iv.i246, -1 ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.next.i248
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !58
  %gep.i247.1 = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %indvars.iv.next.i248
  store float %i.jy, ptr %gep.i247.1, align 4, !tbaa !58
  %indvars.iv.next.i248.1 = add nsw i64 %indvars.iv.i246, -2 ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.next.i248.1
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !58
  %gep.i247.2 = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %indvars.iv.next.i248.1
  store float %i.ka, ptr %gep.i247.2, align 4, !tbaa !58
  %indvars.iv.next.i248.2 = add nsw i64 %indvars.iv.i246, -3 ; 3 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.next.i248.2
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !58
  %gep.i247.3 = getelementptr [4 x i8], ptr %invariant.gep.i244, i64 %indvars.iv.next.i248.2
  store float %i.kc, ptr %gep.i247.3, align 4, !tbaa !58
  %indvars.iv.next.i248.3 = add nsw i64 %indvars.iv.i246, -4
  %.not81.i249.3 = icmp eq i64 %indvars.iv.next.i248.2, 0
  br i1 %.not81.i249.3, label %.preheader.i239.loopexit, label %.lr.ph.i245, !llvm.loop !204

._crit_edge.i240:                                 ; preds = %.lr.ph63.preheader.i241, %.preheader.i239.loopexit
  store float %i.in, ptr %.1193327, align 4, !tbaa !58
  store i32 %i.il, ptr %.1191330, align 4, !tbaa !47
  br label %stbir__insert_coeff.exit255

bb.ae:                                            ; preds = %bb.ac
  %i.kd = sub nsw i32 %i.il, %i.ip
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %i.ke ; 2 uses
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !58
  %i.kh = fadd float %i.in, %i.kg
  store float %i.kh, ptr %i.kf, align 4, !tbaa !58
  br label %stbir__insert_coeff.exit255

bb.af:                                            ; preds = %bb.ab
  %i.ki = sub nsw i32 %i.il, %i.ip                ; 3 uses
  %.not59.not.i250 = icmp slt i32 %i.ki, %6
  br i1 %.not59.not.i250, label %bb.ag, label %stbir__insert_coeff.exit255

bb.ag:                                            ; preds = %bb.af
  %i.kj = sub nsw i32 %i.io, %i.ip
  %.064.i251 = add nuw nsw i32 %i.kj, 1           ; 2 uses
  %i.kk = icmp slt i32 %.064.i251, %i.ki
  br i1 %i.kk, label %.lr.ph67.preheader.i253, label %._crit_edge68.i252

.lr.ph67.preheader.i253:                          ; preds = %bb.ag
  %i.kl = sext i32 %.064.i251 to i64
  %i.km = shl nuw nsw i64 %i.kl, 2
  %scevgep73.i254 = getelementptr i8, ptr %.1193327, i64 %i.km
  %i.kn = add i32 %i.il, -2
  %i.ko = sub i32 %i.kn, %i.io
  %i.kp = zext i32 %i.ko to i64
  %i.kq = shl nuw nsw i64 %i.kp, 2
  %i.kr = add nuw nsw i64 %i.kq, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i254, i8 0, i64 %i.kr, i1 false), !tbaa !58
  br label %._crit_edge68.i252

._crit_edge68.i252:                               ; preds = %.lr.ph67.preheader.i253, %bb.ag
  %i.ks = sext i32 %i.ki to i64
  %i.kt = getelementptr inbounds [4 x i8], ptr %.1193327, i64 %i.ks
  store float %i.in, ptr %i.kt, align 4, !tbaa !58
  store i32 %i.il, ptr %i.fn, align 4, !tbaa !48
  br label %stbir__insert_coeff.exit255

stbir__insert_coeff.exit255:                      ; preds = %bb.aa, %bb.ad, %._crit_edge.i240, %bb.ae, %bb.af, %._crit_edge68.i252
  %i.ku = phi i32 [ %i.il, %bb.aa ], [ %i.io, %bb.ad ], [ %i.io, %._crit_edge.i240 ], [ %i.io, %bb.ae ], [ %i.io, %bb.af ], [ %i.il, %._crit_edge68.i252 ]
  %i.kv = phi i32 [ %i.il, %bb.aa ], [ %i.ip, %bb.ad ], [ %i.il, %._crit_edge.i240 ], [ %i.ip, %bb.ae ], [ %i.ip, %bb.af ], [ %i.ip, %._crit_edge68.i252 ] ; 2 uses
  %i.kw = add nsw i32 %.1302, -1                  ; 2 uses
  %i.kx = icmp sgt i32 %i.kw, %i.kv
  br i1 %i.kx, label %bb.z, label %._crit_edge306, !llvm.loop !205

._crit_edge306:                                   ; preds = %stbir__insert_coeff.exit255, %bb.y
  %i.ky = phi i32 [ %i.if, %bb.y ], [ %i.ku, %stbir__insert_coeff.exit255 ] ; 4 uses
  %.0182.lcssa = phi ptr [ %i.ij, %bb.y ], [ %i.im, %stbir__insert_coeff.exit255 ]
  %.lcssa = phi i32 [ -1, %bb.y ], [ %i.kv, %stbir__insert_coeff.exit255 ] ; 2 uses
  %i.kz = load float, ptr %.0182.lcssa, align 4, !tbaa !58 ; 4 uses
  store i32 0, ptr %.1191330, align 4, !tbaa !47
  %.not226309 = icmp slt i32 %i.ky, 0
  br i1 %.not226309, label %._crit_edge313, label %.lr.ph312.preheader

.lr.ph312.preheader:                              ; preds = %._crit_edge306
  %i.la = sext i32 %.lcssa to i64                 ; 7 uses
  %i.lb = add nuw i32 %i.ky, 1
  %wide.trip.count357 = zext i32 %i.lb to i64     ; 4 uses
  %min.iters.check491 = icmp ult i32 %i.ky, 7
  br i1 %min.iters.check491, label %.lr.ph312.preheader532, label %vector.memcheck488

vector.memcheck488:                               ; preds = %.lr.ph312.preheader
  %i.lc = shl nsw i64 %i.la, 2
  %i.ld = add nsw i64 %i.lc, -1
  %diff.check489 = icmp ult i64 %i.ld, 31
  br i1 %diff.check489, label %.lr.ph312.preheader532, label %vector.ph492

vector.ph492:                                     ; preds = %vector.memcheck488
  %n.vec493 = and i64 %wide.trip.count357, 4294967288 ; 3 uses
  br label %vector.body494

vector.body494:                                   ; preds = %vector.body494, %vector.ph492
  %index495 = phi i64 [ 0, %vector.ph492 ], [ %index.next498, %vector.body494 ] ; 3 uses
  %i.le = sub nsw i64 %index495, %i.la
  %i.lf = getelementptr inbounds [4 x i8], ptr %.1193327, i64 %i.le ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %wide.load496 = load <4 x float>, ptr %i.lf, align 4, !tbaa !58
  %wide.load497 = load <4 x float>, ptr %i.lg, align 4, !tbaa !58
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %index495 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  store <4 x float> %wide.load496, ptr %i.lh, align 4, !tbaa !58
  store <4 x float> %wide.load497, ptr %i.li, align 4, !tbaa !58
  %index.next498 = add nuw i64 %index495, 8       ; 2 uses
  %i.lj = icmp eq i64 %index.next498, %n.vec493
  br i1 %i.lj, label %middle.block499, label %vector.body494, !llvm.loop !206

middle.block499:                                  ; preds = %vector.body494
  %cmp.n500 = icmp eq i64 %n.vec493, %wide.trip.count357
  br i1 %cmp.n500, label %._crit_edge313, label %.lr.ph312.preheader532

.lr.ph312.preheader532:                           ; preds = %vector.memcheck488, %.lr.ph312.preheader, %middle.block499
  %indvars.iv354.ph = phi i64 [ 0, %vector.memcheck488 ], [ 0, %.lr.ph312.preheader ], [ %n.vec493, %middle.block499 ] ; 3 uses
  %i.lk = zext nneg i32 %i.ky to i64
  %i.ll = sub nsw i64 %i.lk, %indvars.iv354.ph
  %xtraiter553 = and i64 %wide.trip.count357, 3   ; 2 uses
  %lcmp.mod554.not = icmp eq i64 %xtraiter553, 0
  br i1 %lcmp.mod554.not, label %.lr.ph312.prol.loopexit, label %.lr.ph312.prol

.lr.ph312.prol:                                   ; preds = %.lr.ph312.preheader532, %.lr.ph312.prol
  %indvars.iv354.prol = phi i64 [ %indvars.iv.next355.prol, %.lr.ph312.prol ], [ %indvars.iv354.ph, %.lr.ph312.preheader532 ] ; 3 uses
  %prol.iter555 = phi i64 [ %prol.iter555.next, %.lr.ph312.prol ], [ 0, %.lr.ph312.preheader532 ]
  %i.lm = sub nsw i64 %indvars.iv354.prol, %i.la
  %i.ln = getelementptr inbounds [4 x i8], ptr %.1193327, i64 %i.lm
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !58
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv354.prol
  store float %i.lo, ptr %i.lp, align 4, !tbaa !58
  %indvars.iv.next355.prol = add nuw nsw i64 %indvars.iv354.prol, 1 ; 2 uses
  %prol.iter555.next = add i64 %prol.iter555, 1   ; 2 uses
  %prol.iter555.cmp.not = icmp eq i64 %prol.iter555.next, %xtraiter553
  br i1 %prol.iter555.cmp.not, label %.lr.ph312.prol.loopexit, label %.lr.ph312.prol, !llvm.loop !207

.lr.ph312.prol.loopexit:                          ; preds = %.lr.ph312.prol, %.lr.ph312.preheader532
  %indvars.iv354.unr = phi i64 [ %indvars.iv354.ph, %.lr.ph312.preheader532 ], [ %indvars.iv.next355.prol, %.lr.ph312.prol ]
  %i.lq = icmp ult i64 %i.ll, 3
  br i1 %i.lq, label %._crit_edge313, label %.lr.ph312

.lr.ph312:                                        ; preds = %.lr.ph312.prol.loopexit, %.lr.ph312
  %indvars.iv354 = phi i64 [ %indvars.iv.next355.3, %.lr.ph312 ], [ %indvars.iv354.unr, %.lr.ph312.prol.loopexit ] ; 6 uses
  %i.lr = sub nsw i64 %indvars.iv354, %i.la
  %i.ls = getelementptr inbounds [4 x i8], ptr %.1193327, i64 %i.lr
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !58
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv354
  store float %i.lt, ptr %i.lu, align 4, !tbaa !58
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1 ; 2 uses
  %i.lv = sub nsw i64 %indvars.iv.next355, %i.la
  %i.lw = getelementptr inbounds [4 x i8], ptr %.1193327, i64 %i.lv
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !58
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.next355
  store float %i.lx, ptr %i.ly, align 4, !tbaa !58
  %indvars.iv.next355.1 = add nuw nsw i64 %indvars.iv354, 2 ; 2 uses
  %i.lz = sub nsw i64 %indvars.iv.next355.1, %i.la
  %i.ma = getelementptr inbounds [4 x i8], ptr %.1193327, i64 %i.lz
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !58
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.next355.1
  store float %i.mb, ptr %i.mc, align 4, !tbaa !58
  %indvars.iv.next355.2 = add nuw nsw i64 %indvars.iv354, 3 ; 2 uses
  %i.md = sub nsw i64 %indvars.iv.next355.2, %i.la
  %i.me = getelementptr inbounds [4 x i8], ptr %.1193327, i64 %i.md
  %i.mf = load float, ptr %i.me, align 4, !tbaa !58
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.next355.2
  store float %i.mf, ptr %i.mg, align 4, !tbaa !58
  %indvars.iv.next355.3 = add nuw nsw i64 %indvars.iv354, 4 ; 2 uses
  %exitcond358.not.3 = icmp eq i64 %indvars.iv.next355.3, %wide.trip.count357
  br i1 %exitcond358.not.3, label %._crit_edge313, label %.lr.ph312, !llvm.loop !208

._crit_edge313:                                   ; preds = %.lr.ph312.prol.loopexit, %.lr.ph312, %middle.block499, %._crit_edge306
  %i.mh = load ptr, ptr %i.es, align 8, !tbaa !52
  %i.mi = tail call i32 %i.mh(i32 noundef %.lcssa, i32 noundef %i.a) #24 ; 17 uses
  %i.mj = load i32, ptr %i.fn, align 4, !tbaa !48 ; 10 uses
  %i.mk = load i32, ptr %.1191330, align 4, !tbaa !47 ; 13 uses
  %i.ml = icmp slt i32 %i.mj, %i.mk
  br i1 %i.ml, label %stbir__insert_coeff.exit274.thread, label %bb.ah

stbir__insert_coeff.exit274.thread:               ; preds = %._crit_edge313
  store i32 %i.mi, ptr %i.fn, align 4, !tbaa !48
  store i32 %i.mi, ptr %.1191330, align 4, !tbaa !47
  store float %i.kz, ptr %.1193327, align 4, !tbaa !58
  br label %bb.an

bb.ah:                                            ; preds = %._crit_edge313
  %.not.i256 = icmp sgt i32 %i.mi, %i.mj
  br i1 %.not.i256, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mm = icmp slt i32 %i.mi, %i.mk
  br i1 %i.mm, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.mn = sub nsw i32 %i.mj, %i.mi
  %.not60.not.i257 = icmp slt i32 %i.mn, %6
  br i1 %.not60.not.i257, label %.lr.ph.preheader.i262, label %stbir__insert_coeff.exit274

.lr.ph.preheader.i262:                            ; preds = %bb.aj
  %i.mo = sub nsw i32 %i.mk, %i.mi                ; 2 uses
  %i.mp = sub i32 %i.mj, %i.mk                    ; 2 uses
  %i.mq = zext i32 %i.mp to i64                   ; 5 uses
  %i.mr = sext i32 %i.mo to i64
  %invariant.gep.i263 = getelementptr [4 x i8], ptr %.1193327, i64 %i.mr ; 6 uses
  %i.ms = add nuw nsw i64 %i.mq, 1                ; 2 uses
  %min.iters.check477 = icmp ult i32 %i.mp, 7
  br i1 %min.iters.check477, label %.lr.ph.i264.preheader, label %vector.memcheck475

vector.memcheck475:                               ; preds = %.lr.ph.preheader.i262
  %i.mt = sext i32 %i.mi to i64
  %i.mu = sext i32 %i.mk to i64
  %i.mv = sub nsw i64 %i.mt, %i.mu
  %i.mw = shl nsw i64 %i.mv, 2
  %i.mx = add nsw i64 %i.mw, -1
  %diff.check = icmp ult i64 %i.mx, 31
  br i1 %diff.check, label %.lr.ph.i264.preheader, label %vector.ph478

vector.ph478:                                     ; preds = %vector.memcheck475
  %n.vec479 = and i64 %i.ms, 8589934584           ; 3 uses
  %i.my = sub nsw i64 %i.mq, %n.vec479
  br label %vector.body480

vector.body480:                                   ; preds = %vector.body480, %vector.ph478
  %index481 = phi i64 [ 0, %vector.ph478 ], [ %index.next484, %vector.body480 ] ; 2 uses
  %i.mz = sub i64 %i.mq, %index481                ; 2 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %i.mz ; 2 uses
  %i.nb = getelementptr inbounds i8, ptr %i.na, i64 -12
  %i.nc = getelementptr inbounds i8, ptr %i.na, i64 -28
  %wide.load482 = load <4 x float>, ptr %i.nb, align 4, !tbaa !58
  %wide.load483 = load <4 x float>, ptr %i.nc, align 4, !tbaa !58
  %i.nd = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %i.mz ; 2 uses
  %i.ne = getelementptr i8, ptr %i.nd, i64 -12
  %i.nf = getelementptr i8, ptr %i.nd, i64 -28
  store <4 x float> %wide.load482, ptr %i.ne, align 4, !tbaa !58
  store <4 x float> %wide.load483, ptr %i.nf, align 4, !tbaa !58
  %index.next484 = add nuw i64 %index481, 8       ; 2 uses
  %i.ng = icmp eq i64 %index.next484, %n.vec479
  br i1 %i.ng, label %middle.block485, label %vector.body480, !llvm.loop !209

middle.block485:                                  ; preds = %vector.body480
  %cmp.n486 = icmp eq i64 %i.ms, %n.vec479
  br i1 %cmp.n486, label %.preheader.i258.loopexit, label %.lr.ph.i264.preheader

.lr.ph.i264.preheader:                            ; preds = %vector.memcheck475, %.lr.ph.preheader.i262, %middle.block485
  %indvars.iv.i265.ph = phi i64 [ %i.mq, %vector.memcheck475 ], [ %i.mq, %.lr.ph.preheader.i262 ], [ %i.my, %middle.block485 ] ; 4 uses
  %i.nh = add nsw i64 %indvars.iv.i265.ph, 1
  %xtraiter556 = and i64 %i.nh, 3                 ; 2 uses
  %lcmp.mod557.not = icmp eq i64 %xtraiter556, 0
  br i1 %lcmp.mod557.not, label %.lr.ph.i264.prol.loopexit, label %.lr.ph.i264.prol

.lr.ph.i264.prol:                                 ; preds = %.lr.ph.i264.preheader, %.lr.ph.i264.prol
  %indvars.iv.i265.prol = phi i64 [ %indvars.iv.next.i267.prol, %.lr.ph.i264.prol ], [ %indvars.iv.i265.ph, %.lr.ph.i264.preheader ] ; 3 uses
  %prol.iter558 = phi i64 [ %prol.iter558.next, %.lr.ph.i264.prol ], [ 0, %.lr.ph.i264.preheader ]
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.i265.prol
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !58
  %gep.i266.prol = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.i265.prol
  store float %i.nj, ptr %gep.i266.prol, align 4, !tbaa !58
  %indvars.iv.next.i267.prol = add nsw i64 %indvars.iv.i265.prol, -1 ; 2 uses
  %prol.iter558.next = add i64 %prol.iter558, 1   ; 2 uses
  %prol.iter558.cmp.not = icmp eq i64 %prol.iter558.next, %xtraiter556
  br i1 %prol.iter558.cmp.not, label %.lr.ph.i264.prol.loopexit, label %.lr.ph.i264.prol, !llvm.loop !210

.lr.ph.i264.prol.loopexit:                        ; preds = %.lr.ph.i264.prol, %.lr.ph.i264.preheader
  %indvars.iv.i265.unr = phi i64 [ %indvars.iv.i265.ph, %.lr.ph.i264.preheader ], [ %indvars.iv.next.i267.prol, %.lr.ph.i264.prol ]
  %i.nk = icmp ult i64 %indvars.iv.i265.ph, 3
  br i1 %i.nk, label %.preheader.i258.loopexit, label %.lr.ph.i264

.preheader.i258.loopexit:                         ; preds = %.lr.ph.i264.prol.loopexit, %.lr.ph.i264, %middle.block485
  %i.nl = icmp sgt i32 %i.mo, 1
  br i1 %i.nl, label %.lr.ph63.preheader.i260, label %._crit_edge.i259

.lr.ph63.preheader.i260:                          ; preds = %.preheader.i258.loopexit
  %scevgep.i261 = getelementptr i8, ptr %.1193327, i64 4
  %i.nm = xor i32 %i.mi, -1
  %i.nn = add i32 %i.mk, %i.nm
  %i.no = zext i32 %i.nn to i64
  %i.np = shl nuw nsw i64 %i.no, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i261, i8 0, i64 %i.np, i1 false), !tbaa !58
  br label %._crit_edge.i259

.lr.ph.i264:                                      ; preds = %.lr.ph.i264.prol.loopexit, %.lr.ph.i264
  %indvars.iv.i265 = phi i64 [ %indvars.iv.next.i267.3, %.lr.ph.i264 ], [ %indvars.iv.i265.unr, %.lr.ph.i264.prol.loopexit ] ; 6 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.i265
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !58
  %gep.i266 = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.i265
  store float %i.nr, ptr %gep.i266, align 4, !tbaa !58
  %indvars.iv.next.i267 = add nsw i64 %indvars.iv.i265, -1 ; 2 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.next.i267
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !58
  %gep.i266.1 = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.next.i267
  store float %i.nt, ptr %gep.i266.1, align 4, !tbaa !58
  %indvars.iv.next.i267.1 = add nsw i64 %indvars.iv.i265, -2 ; 2 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.next.i267.1
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !58
  %gep.i266.2 = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.next.i267.1
  store float %i.nv, ptr %gep.i266.2, align 4, !tbaa !58
  %indvars.iv.next.i267.2 = add nsw i64 %indvars.iv.i265, -3 ; 3 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %indvars.iv.next.i267.2
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !58
  %gep.i266.3 = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.next.i267.2
  store float %i.nx, ptr %gep.i266.3, align 4, !tbaa !58
  %indvars.iv.next.i267.3 = add nsw i64 %indvars.iv.i265, -4
  %.not81.i268.3 = icmp eq i64 %indvars.iv.next.i267.2, 0
  br i1 %.not81.i268.3, label %.preheader.i258.loopexit, label %.lr.ph.i264, !llvm.loop !211

._crit_edge.i259:                                 ; preds = %.lr.ph63.preheader.i260, %.preheader.i258.loopexit
  store float %i.kz, ptr %.1193327, align 4, !tbaa !58
  store i32 %i.mi, ptr %.1191330, align 4, !tbaa !47
  br label %stbir__insert_coeff.exit274

bb.ak:                                            ; preds = %bb.ai
  %i.ny = sub nsw i32 %i.mi, %i.mk
  %i.nz = zext nneg i32 %i.ny to i64
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %.1193327, i64 %i.nz ; 2 uses
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !58
  %i.oc = fadd float %i.kz, %i.ob
  store float %i.oc, ptr %i.oa, align 4, !tbaa !58
  br label %stbir__insert_coeff.exit274

bb.al:                                            ; preds = %bb.ah
  %i.od = sub nsw i32 %i.mi, %i.mk                ; 3 uses
  %.not59.not.i269 = icmp slt i32 %i.od, %6
  br i1 %.not59.not.i269, label %bb.am, label %stbir__insert_coeff.exit274

bb.am:                                            ; preds = %bb.al
  %i.oe = sub nsw i32 %i.mj, %i.mk
  %.064.i270 = add nuw nsw i32 %i.oe, 1           ; 2 uses
  %i.of = icmp slt i32 %.064.i270, %i.od
  br i1 %i.of, label %.lr.ph67.preheader.i272, label %._crit_edge68.i271

.lr.ph67.preheader.i272:                          ; preds = %bb.am
  %i.og = sext i32 %.064.i270 to i64
  %i.oh = shl nuw nsw i64 %i.og, 2
  %scevgep73.i273 = getelementptr i8, ptr %.1193327, i64 %i.oh
  %i.oi = add i32 %i.mi, -2
  %i.oj = sub i32 %i.oi, %i.mj
  %i.ok = zext i32 %i.oj to i64
  %i.ol = shl nuw nsw i64 %i.ok, 2
  %i.om = add nuw nsw i64 %i.ol, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i273, i8 0, i64 %i.om, i1 false), !tbaa !58
  br label %._crit_edge68.i271

._crit_edge68.i271:                               ; preds = %.lr.ph67.preheader.i272, %bb.am
  %i.on = sext i32 %i.od to i64
  %i.oo = getelementptr inbounds [4 x i8], ptr %.1193327, i64 %i.on
  store float %i.kz, ptr %i.oo, align 4, !tbaa !58
  store i32 %i.mi, ptr %i.fn, align 4, !tbaa !48
  br label %stbir__insert_coeff.exit274

stbir__insert_coeff.exit274:                      ; preds = %.preheader, %middle.block472, %bb.n, %._crit_edge68.i271, %bb.al, %bb.ak, %._crit_edge.i259, %bb.aj, %bb.m, %.loopexit279, %bb.l
  %i.op = phi i32 [ %i.ex, %bb.l ], [ %i.mi, %._crit_edge68.i271 ], [ %i.mj, %bb.al ], [ %i.mj, %bb.ak ], [ %i.mj, %._crit_edge.i259 ], [ %i.mj, %bb.aj ], [ %i.if, %.loopexit279 ], [ %i.ex, %bb.m ], [ %i.fo, %bb.n ], [ %i.ex, %middle.block472 ], [ %i.ex, %.preheader ] ; 2 uses
  %i.oq = phi i32 [ %i.ey, %bb.l ], [ %i.mk, %._crit_edge68.i271 ], [ %i.mk, %bb.al ], [ %i.mk, %bb.ak ], [ %i.mi, %._crit_edge.i259 ], [ %i.mk, %bb.aj ], [ %i.ig, %.loopexit279 ], [ 0, %bb.m ], [ %.pre371, %bb.n ], [ 0, %middle.block472 ], [ 0, %.preheader ] ; 2 uses
  %.not229 = icmp sgt i32 %i.oq, %i.op
  br i1 %.not229, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %stbir__insert_coeff.exit274.thread, %stbir__insert_coeff.exit274
  %i.or = phi i32 [ %i.mi, %stbir__insert_coeff.exit274.thread ], [ %i.oq, %stbir__insert_coeff.exit274 ] ; 4 uses
  %i.os = phi i32 [ %i.mi, %stbir__insert_coeff.exit274.thread ], [ %i.op, %stbir__insert_coeff.exit274 ]
  %i.ot = getelementptr inbounds nuw i8, ptr %.1191330, i64 4 ; 2 uses
  %reass.sub = sub i32 %i.os, %i.or
  %i.ou = add i32 %reass.sub, 1                   ; 2 uses
  %.not230315 = icmp eq i32 %i.ou, 0
  br i1 %.not230315, label %.critedge.thread, label %.lr.ph318.preheader

.lr.ph318.preheader:                              ; preds = %bb.an
  %i.ov = sext i32 %i.ou to i64
  br label %.lr.ph318

.critedge.thread:                                 ; preds = %bb.ao, %bb.an
  %i.ow = add nsw i32 %i.or, -1
  store i32 %i.ow, ptr %i.ot, align 4, !tbaa !48
  br label %bb.aq

.lr.ph318:                                        ; preds = %.lr.ph318.preheader, %bb.ao
  %indvars.iv364 = phi i64 [ %i.ov, %.lr.ph318.preheader ], [ %indvars.iv.next365, %bb.ao ] ; 4 uses
  %i.ox = getelementptr [4 x i8], ptr %.1193327, i64 %indvars.iv364
  %i.oy = getelementptr i8, ptr %i.ox, i64 -4
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !58
  %i.pa = fcmp oeq float %i.oz, 0.000000e+00
  br i1 %i.pa, label %bb.ao, label %.critedge

bb.ao:                                            ; preds = %.lr.ph318
  %indvars.iv.next365 = add nsw i64 %indvars.iv364, -1 ; 2 uses
  %.not230 = icmp eq i64 %indvars.iv.next365, 0
  br i1 %.not230, label %.critedge.thread, label %.lr.ph318, !llvm.loop !212

.critedge:                                        ; preds = %.lr.ph318
  %i.pb = trunc nsw i64 %indvars.iv364 to i32     ; 4 uses
  %i.pc = add i32 %i.or, -1
  %i.pd = add i32 %i.pc, %i.pb                    ; 2 uses
  store i32 %i.pd, ptr %i.ot, align 4, !tbaa !48
  %.not231.not = icmp sgt i64 %indvars.iv364, 0
  br i1 %.not231.not, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.critedge
  %spec.select234 = tail call i32 @llvm.smin.i32(i32 %i.or, i32 %.0201324)
  %.1198 = tail call i32 @llvm.smax.i32(i32 %i.pd, i32 %.0197325)
  %spec.select235 = tail call i32 @llvm.smax.i32(i32 %i.pb, i32 %.0194326)
  br label %bb.aq

bb.aq:                                            ; preds = %.critedge.thread, %bb.ap, %.critedge
  %.0282 = phi i32 [ %i.pb, %.critedge ], [ %i.pb, %bb.ap ], [ 0, %.critedge.thread ] ; 3 uses
  %.2203 = phi i32 [ %.0201324, %.critedge ], [ %spec.select234, %bb.ap ], [ %.0201324, %.critedge.thread ] ; 2 uses
  %.2199 = phi i32 [ %.0197325, %.critedge ], [ %.1198, %bb.ap ], [ %.0197325, %.critedge.thread ] ; 2 uses
  %.1195 = phi i32 [ %.0194326, %.critedge ], [ %spec.select235, %bb.ap ], [ %.0194326, %.critedge.thread ] ; 2 uses
  %i.pe = icmp slt i32 %.0282, %6
  br i1 %i.pe, label %.lr.ph322.preheader, label %.loopexit

.lr.ph322.preheader:                              ; preds = %bb.aq
  %i.pf = sext i32 %.0282 to i64
  %i.pg = shl nsw i64 %i.pf, 2
  %scevgep = getelementptr i8, ptr %.1193327, i64 %i.pg
  %i.ph = xor i32 %.0282, -1
  %i.pi = add i32 %6, %i.ph
  %i.pj = zext i32 %i.pi to i64
  %i.pk = shl nuw nsw i64 %i.pj, 2
  %i.pl = add nuw nsw i64 %i.pk, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.pl, i1 false), !tbaa !58
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph322.preheader, %bb.aq, %stbir__insert_coeff.exit274
  %.3204 = phi i32 [ %.0201324, %stbir__insert_coeff.exit274 ], [ %.2203, %bb.aq ], [ %.2203, %.lr.ph322.preheader ] ; 2 uses
  %.3200 = phi i32 [ %.0197325, %stbir__insert_coeff.exit274 ], [ %.2199, %bb.aq ], [ %.2199, %.lr.ph322.preheader ] ; 2 uses
  %.2196 = phi i32 [ %.0194326, %stbir__insert_coeff.exit274 ], [ %.1195, %bb.aq ], [ %.1195, %.lr.ph322.preheader ] ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.1191330, i64 8
  %i.pn = getelementptr [4 x i8], ptr %.1193327, i64 %i.et
  %i.po = add nuw nsw i32 %.2208323, 1            ; 2 uses
  %exitcond370.not = icmp eq i32 %i.po, %3
  br i1 %exitcond370.not, label %._crit_edge332, label %bb.i, !llvm.loop !213

._crit_edge332:                                   ; preds = %.loopexit, %stbir_overlapping_memcpy.exit
  %.0201.lcssa = phi i32 [ 2147483647, %stbir_overlapping_memcpy.exit ], [ %.3204, %.loopexit ]
  %.0197.lcssa = phi i32 [ -2147483647, %stbir_overlapping_memcpy.exit ], [ %.3200, %.loopexit ]
  %.0194.lcssa = phi i32 [ -1, %stbir_overlapping_memcpy.exit ], [ %.2196, %.loopexit ]
  store i32 %.0201.lcssa, ptr %1, align 4, !tbaa !49
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.0197.lcssa, ptr %i.pp, align 4, !tbaa !50
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.0194.lcssa, ptr %i.pq, align 4, !tbaa !51
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @stbir__pack_coefficients(i32 noundef %0, ptr nofree noundef captures(address) %1, ptr noundef %2, i32 noundef %3, i32 noundef returned %4, i32 %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %6, 1                            ; 3 uses
  %.not = icmp eq i32 %3, %4
  %.pre354 = mul nsw i32 %4, %0
  %.pre356 = sext i32 %.pre354 to i64             ; 2 uses
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds [4 x i8], ptr %2, i64 %.pre356 ; 13 uses
  %i.c = sext i32 %3 to i64                       ; 13 uses
  switch i32 %4, label %.preheader290 [
    i32 1, label %.preheader291
    i32 2, label %.preheader293
    i32 3, label %.preheader295
    i32 4, label %.preheader297
    i32 5, label %.preheader299
    i32 6, label %.preheader301
    i32 7, label %.preheader303
    i32 8, label %.preheader305
    i32 9, label %.preheader307
    i32 10, label %.preheader309
    i32 11, label %.preheader311
    i32 12, label %.preheader313
  ]

.preheader290:                                    ; preds = %bb.b
  %i.d = sext i32 %4 to i64
  br label %bb.c

.preheader291:                                    ; preds = %bb.b, %.preheader291
  %.0259 = phi ptr [ %i.g, %.preheader291 ], [ %2, %bb.b ] ; 2 uses
  %.0257 = phi ptr [ %i.f, %.preheader291 ], [ %2, %bb.b ] ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0257) #24, !srcloc !235
  %i.e = load i32, ptr %.0259, align 4, !tbaa !32
  store i32 %i.e, ptr %.0257, align 4, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %.0257, i64 4 ; 2 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %.0259, i64 %i.c
  %i.h = icmp ult ptr %i.f, %i.b
  br i1 %i.h, label %.preheader291, label %.loopexit, !llvm.loop !215

.preheader293:                                    ; preds = %bb.b, %.preheader293
  %.1260 = phi ptr [ %i.k, %.preheader293 ], [ %2, %bb.b ] ; 2 uses
  %.1258 = phi ptr [ %i.j, %.preheader293 ], [ %2, %bb.b ] ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.1258) #24, !srcloc !236
  %i.i = load i64, ptr %.1260, align 8, !tbaa !237
  store i64 %i.i, ptr %.1258, align 8, !tbaa !237
  %i.j = getelementptr inbounds nuw i8, ptr %.1258, i64 8 ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %.1260, i64 %i.c
  %i.l = icmp ult ptr %i.j, %i.b
  br i1 %i.l, label %.preheader293, label %.loopexit, !llvm.loop !216

.preheader295:                                    ; preds = %bb.b, %.preheader295
  %.2261 = phi ptr [ %i.r, %.preheader295 ], [ %2, %bb.b ] ; 3 uses
  %.2 = phi ptr [ %i.q, %.preheader295 ], [ %2, %bb.b ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.2) #24, !srcloc !238
  %i.m = load i64, ptr %.2261, align 8, !tbaa !237
  store i64 %i.m, ptr %.2, align 8, !tbaa !237
  %i.n = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.n) #24, !srcloc !239
  %i.o = getelementptr inbounds nuw i8, ptr %.2261, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !32
  store i32 %i.p, ptr %i.n, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %.2, i64 12 ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %.2261, i64 %i.c
  %i.s = icmp ult ptr %i.q, %i.b
  br i1 %i.s, label %.preheader295, label %.loopexit, !llvm.loop !217

.preheader297:                                    ; preds = %bb.b, %.preheader297
  %.3262 = phi ptr [ %i.v, %.preheader297 ], [ %2, %bb.b ] ; 2 uses
  %.3 = phi ptr [ %i.u, %.preheader297 ], [ %2, %bb.b ] ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.3) #24, !srcloc !240
  %i.t = load <4 x float>, ptr %.3262, align 1, !tbaa !24
  store <4 x float> %i.t, ptr %.3, align 1, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %.3, i64 16 ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %.3262, i64 %i.c
  %i.w = icmp ult ptr %i.u, %i.b
  br i1 %i.w, label %.preheader297, label %.loopexit, !llvm.loop !218

.preheader299:                                    ; preds = %bb.b, %.preheader299
  %.4263 = phi ptr [ %i.ac, %.preheader299 ], [ %2, %bb.b ] ; 3 uses
  %.4 = phi ptr [ %i.ab, %.preheader299 ], [ %2, %bb.b ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.4) #24, !srcloc !241
  %i.x = load <4 x float>, ptr %.4263, align 1, !tbaa !24
  store <4 x float> %i.x, ptr %.4, align 1, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %.4, i64 16 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.y) #24, !srcloc !242
  %i.z = getelementptr inbounds nuw i8, ptr %.4263, i64 16
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !32
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %.4, i64 20 ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %.4263, i64 %i.c
  %i.ad = icmp ult ptr %i.ab, %i.b
  br i1 %i.ad, label %.preheader299, label %.loopexit, !llvm.loop !219

.preheader301:                                    ; preds = %bb.b, %.preheader301
  %.5264 = phi ptr [ %i.aj, %.preheader301 ], [ %2, %bb.b ] ; 3 uses
  %.5 = phi ptr [ %i.ai, %.preheader301 ], [ %2, %bb.b ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.5) #24, !srcloc !243
  %i.ae = load <4 x float>, ptr %.5264, align 1, !tbaa !24
  store <4 x float> %i.ae, ptr %.5, align 1, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %.5, i64 16 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.af) #24, !srcloc !244
  %i.ag = getelementptr inbounds nuw i8, ptr %.5264, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !237
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !237
  %i.ai = getelementptr inbounds nuw i8, ptr %.5, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %.5264, i64 %i.c
  %i.ak = icmp ult ptr %i.ai, %i.b
  br i1 %i.ak, label %.preheader301, label %.loopexit, !llvm.loop !220

.preheader303:                                    ; preds = %bb.b, %.preheader303
  %.6265 = phi ptr [ %i.at, %.preheader303 ], [ %2, %bb.b ] ; 4 uses
  %.6 = phi ptr [ %i.as, %.preheader303 ], [ %2, %bb.b ] ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.6) #24, !srcloc !245
  %i.al = load <4 x float>, ptr %.6265, align 1, !tbaa !24
  store <4 x float> %i.al, ptr %.6, align 1, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %.6, i64 16 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.am) #24, !srcloc !246
  %i.an = getelementptr inbounds nuw i8, ptr %.6265, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !237
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !237
  %i.ap = getelementptr inbounds nuw i8, ptr %.6, i64 24 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.ap) #24, !srcloc !247
  %i.aq = getelementptr inbounds nuw i8, ptr %.6265, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !32
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %.6, i64 28 ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %.6265, i64 %i.c
  %i.au = icmp ult ptr %i.as, %i.b
  br i1 %i.au, label %.preheader303, label %.loopexit, !llvm.loop !221

.preheader305:                                    ; preds = %bb.b, %.preheader305
  %.7266 = phi ptr [ %i.ba, %.preheader305 ], [ %2, %bb.b ] ; 3 uses
  %.7 = phi ptr [ %i.az, %.preheader305 ], [ %2, %bb.b ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.7) #24, !srcloc !248
  %i.av = load <4 x float>, ptr %.7266, align 1, !tbaa !24
  store <4 x float> %i.av, ptr %.7, align 1, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %.7, i64 16 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.aw) #24, !srcloc !249
  %i.ax = getelementptr inbounds nuw i8, ptr %.7266, i64 16
  %i.ay = load <4 x float>, ptr %i.ax, align 1, !tbaa !24
  store <4 x float> %i.ay, ptr %i.aw, align 1, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %.7, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %.7266, i64 %i.c
  %i.bb = icmp ult ptr %i.az, %i.b
  br i1 %i.bb, label %.preheader305, label %.loopexit, !llvm.loop !222

.preheader307:                                    ; preds = %bb.b, %.preheader307
  %.8267 = phi ptr [ %i.bk, %.preheader307 ], [ %2, %bb.b ] ; 4 uses
  %.8 = phi ptr [ %i.bj, %.preheader307 ], [ %2, %bb.b ] ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.8) #24, !srcloc !250
  %i.bc = load <4 x float>, ptr %.8267, align 1, !tbaa !24
  store <4 x float> %i.bc, ptr %.8, align 1, !tbaa !24
  %i.bd = getelementptr inbounds nuw i8, ptr %.8, i64 16 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.bd) #24, !srcloc !251
  %i.be = getelementptr inbounds nuw i8, ptr %.8267, i64 16
  %i.bf = load <4 x float>, ptr %i.be, align 1, !tbaa !24
  store <4 x float> %i.bf, ptr %i.bd, align 1, !tbaa !24
  %i.bg = getelementptr inbounds nuw i8, ptr %.8, i64 32 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.bg) #24, !srcloc !252
  %i.bh = getelementptr inbounds nuw i8, ptr %.8267, i64 32
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !32
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !32
  %i.bj = getelementptr inbounds nuw i8, ptr %.8, i64 36 ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %.8267, i64 %i.c
  %i.bl = icmp ult ptr %i.bj, %i.b
  br i1 %i.bl, label %.preheader307, label %.loopexit, !llvm.loop !223

.preheader309:                                    ; preds = %bb.b, %.preheader309
  %.9268 = phi ptr [ %i.bu, %.preheader309 ], [ %2, %bb.b ] ; 4 uses
  %.9 = phi ptr [ %i.bt, %.preheader309 ], [ %2, %bb.b ] ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.9) #24, !srcloc !253
  %i.bm = load <4 x float>, ptr %.9268, align 1, !tbaa !24
  store <4 x float> %i.bm, ptr %.9, align 1, !tbaa !24
end_hunk_1
begin_hunk_2_@stbir__calculate_filters:bb.a
  %i.go = load ptr, ptr %i.m, align 8, !tbaa !67
  %i.gp = sext i32 %i.gn to i64
  %i.gq = sext i32 %.1141 to i64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph184, %._crit_edge178
  %.0137182 = phi i32 [ %i.gl, %.lr.ph184 ], [ %.1.lcssa, %._crit_edge178 ] ; 2 uses
  %.0139181 = phi i32 [ 0, %.lr.ph184 ], [ %i.kg, %._crit_edge178 ] ; 13 uses
  %.2144180 = phi ptr [ %.1143, %.lr.ph184 ], [ %i.kf, %._crit_edge178 ] ; 2 uses
  %.2147179 = phi ptr [ %.1146, %.lr.ph184 ], [ %i.ke, %._crit_edge178 ] ; 3 uses
  %i.gr = load i32, ptr %.2147179, align 4, !tbaa !47 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.2147179, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !48 ; 2 uses
  %.not153170 = icmp sgt i32 %i.gr, %i.gt
  br i1 %.not153170, label %._crit_edge178, label %.lr.ph177

.lr.ph177:                                        ; preds = %bb.z
  %i.gu = add i32 %i.gr, %i.co                    ; 2 uses
  %i.gv = sext i32 %i.gu to i64                   ; 2 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.gv
  %i.gx = mul nsw i32 %i.gn, %i.gu
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.gy
  %i.ha = xor i32 %.0139181, -1
  %i.hb = add nsw i32 %.0139181, -2
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph177, %stbir__insert_coeff.exit
  %indvar = phi i64 [ 0, %.lr.ph177 ], [ %indvar.next, %stbir__insert_coeff.exit ] ; 2 uses
  %.0134175 = phi ptr [ %.2144180, %.lr.ph177 ], [ %i.hf, %stbir__insert_coeff.exit ] ; 2 uses
  %.0135174 = phi ptr [ %i.gz, %.lr.ph177 ], [ %i.kc, %stbir__insert_coeff.exit ] ; 14 uses
  %.0136173 = phi i32 [ %i.gr, %.lr.ph177 ], [ %i.kd, %stbir__insert_coeff.exit ] ; 4 uses
  %.1172 = phi i32 [ %.0137182, %.lr.ph177 ], [ %.2, %stbir__insert_coeff.exit ] ; 8 uses
  %.0138171 = phi ptr [ %i.gw, %.lr.ph177 ], [ %i.kb, %stbir__insert_coeff.exit ] ; 8 uses
  %i.hc = add i64 %indvar, %i.gv
  %i.hd = shl i64 %i.hc, 3
  %i.he = add i64 %i.hd, -16
  %i.hf = getelementptr inbounds nuw i8, ptr %.0134175, i64 4
  %i.hg = load float, ptr %.0134175, align 4, !tbaa !58 ; 5 uses
  %i.hh = tail call float @llvm.fabs.f32(float %i.hg)
  %or.cond = fcmp ult float %i.hh, f0x03800000
  br i1 %or.cond, label %stbir__insert_coeff.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hi = icmp sgt i32 %.0136173, %.1172
  br i1 %i.hi, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hj = load i32, ptr %.0138171, align 4, !tbaa !47 ; 8 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.0138171, i64 4 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !48 ; 6 uses
  %i.hm = icmp sgt i32 %i.hj, %i.hl
  br i1 %i.hm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hn = add nsw i32 %.1172, %i.co
  %i.ho = sext i32 %i.hn to i64                   ; 2 uses
  %i.hp = getelementptr [8 x i8], ptr %.pre, i64 %i.ho ; 3 uses
  %.0133167 = getelementptr i8, ptr %i.hp, i64 8  ; 5 uses
  %i.hq = icmp ult ptr %.0133167, %.0138171
  br i1 %i.hq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.ad
  %i.hr = shl nsw i64 %i.ho, 3
  %i.hs = sub i64 %i.he, %i.hr                    ; 2 uses
  %i.ht = lshr exact i64 %i.hs, 3
  %i.hu = add nuw nsw i64 %i.ht, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hs, 24
  br i1 %min.iters.check, label %.lr.ph.preheader244, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.hu, 4611686018427387900     ; 3 uses
  %i.hv = shl i64 %n.vec, 3                       ; 2 uses
  %i.hw = getelementptr i8, ptr %.0133167, i64 %i.hv
  %i.hx = getelementptr i8, ptr %i.hp, i64 %i.hv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hy = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0133167, i64 %i.hy
  %i.hz = getelementptr i8, ptr %.0133167, i64 %i.hy
  %next.gep209 = getelementptr i8, ptr %i.hz, i64 16
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %next.gep, align 4, !tbaa !32
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %next.gep209, align 4, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ia = icmp eq i64 %index.next, %n.vec
  br i1 %i.ia, label %middle.block, label %vector.body, !llvm.loop !266

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hu, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader244

.lr.ph.preheader244:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0133169.ph = phi ptr [ %.0133167, %.lr.ph.preheader ], [ %i.hw, %middle.block ]
  %.pn154168.ph = phi ptr [ %i.hp, %.lr.ph.preheader ], [ %i.hx, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader244, %.lr.ph
  %.0133169 = phi ptr [ %.0133, %.lr.ph ], [ %.0133169.ph, %.lr.ph.preheader244 ] ; 3 uses
  %.pn154168 = phi ptr [ %.0133169, %.lr.ph ], [ %.pn154168.ph, %.lr.ph.preheader244 ]
  store i32 0, ptr %.0133169, align 4, !tbaa !47
  %i.ib = getelementptr i8, ptr %.pn154168, i64 12
  store i32 -1, ptr %i.ib, align 4, !tbaa !48
  %.0133 = getelementptr i8, ptr %.0133169, i64 8 ; 2 uses
  %i.ic = icmp ult ptr %.0133, %.0138171
  br i1 %i.ic, label %.lr.ph, label %._crit_edge, !llvm.loop !267

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.ad
  store i32 %.0139181, ptr %.0138171, align 4, !tbaa !47
  %i.id = getelementptr inbounds nuw i8, ptr %.0138171, i64 4
  store i32 %.0139181, ptr %i.id, align 4, !tbaa !48
  store float %i.hg, ptr %.0135174, align 4, !tbaa !58
  br label %stbir__insert_coeff.exit

bb.ae:                                            ; preds = %bb.ac
  %.not.i162 = icmp sgt i32 %.0139181, %i.hl
  br i1 %.not.i162, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ie = icmp slt i32 %.0139181, %i.hj
  br i1 %i.ie, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.if = sub nuw nsw i32 %i.hl, %.0139181
  %.not60.not.i = icmp slt i32 %i.if, %i.gn
  br i1 %.not60.not.i, label %.lr.ph.preheader.i, label %stbir__insert_coeff.exit

.lr.ph.preheader.i:                               ; preds = %bb.ag
  %i.ig = sub nuw nsw i32 %i.hj, %.0139181        ; 2 uses
  %i.ih = sub i32 %i.hl, %i.hj                    ; 2 uses
  %i.ii = zext i32 %i.ih to i64                   ; 4 uses
  %i.ij = sext i32 %i.ig to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %.0135174, i64 %i.ij ; 6 uses
  %i.ik = add nuw nsw i64 %i.ii, 1                ; 2 uses
  %min.iters.check212 = icmp ult i32 %i.ih, 7
  %i.il = shl nsw i64 %i.ij, 2
  %diff.check = icmp ugt i64 %i.il, -32
  %or.cond235 = select i1 %min.iters.check212, i1 true, i1 %diff.check
  br i1 %or.cond235, label %.lr.ph.i164.preheader, label %vector.ph213

vector.ph213:                                     ; preds = %.lr.ph.preheader.i
  %n.vec214 = and i64 %i.ik, 8589934584           ; 3 uses
  %i.im = sub nsw i64 %i.ii, %n.vec214
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next218, %vector.body215 ] ; 2 uses
  %i.in = sub i64 %i.ii, %index216                ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %i.in ; 2 uses
  %i.ip = getelementptr inbounds i8, ptr %i.io, i64 -12
  %i.iq = getelementptr inbounds i8, ptr %i.io, i64 -28
  %wide.load = load <4 x float>, ptr %i.ip, align 4, !tbaa !58
  %wide.load217 = load <4 x float>, ptr %i.iq, align 4, !tbaa !58
  %i.ir = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.in ; 2 uses
  %i.is = getelementptr i8, ptr %i.ir, i64 -12
  %i.it = getelementptr i8, ptr %i.ir, i64 -28
  store <4 x float> %wide.load, ptr %i.is, align 4, !tbaa !58
  store <4 x float> %wide.load217, ptr %i.it, align 4, !tbaa !58
  %index.next218 = add nuw i64 %index216, 8       ; 2 uses
  %i.iu = icmp eq i64 %index.next218, %n.vec214
  br i1 %i.iu, label %middle.block219, label %vector.body215, !llvm.loop !268

middle.block219:                                  ; preds = %vector.body215
  %cmp.n220 = icmp eq i64 %i.ik, %n.vec214
  br i1 %cmp.n220, label %.preheader.i.loopexit, label %.lr.ph.i164.preheader

.lr.ph.i164.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block219
  %indvars.iv.i165.ph = phi i64 [ %i.ii, %.lr.ph.preheader.i ], [ %i.im, %middle.block219 ] ; 4 uses
  %i.iv = add nsw i64 %indvars.iv.i165.ph, 1
  %xtraiter = and i64 %i.iv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol

.lr.ph.i164.prol:                                 ; preds = %.lr.ph.i164.preheader, %.lr.ph.i164.prol
  %indvars.iv.i165.prol = phi i64 [ %indvars.iv.next.i166.prol, %.lr.ph.i164.prol ], [ %indvars.iv.i165.ph, %.lr.ph.i164.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i164.prol ], [ 0, %.lr.ph.i164.preheader ]
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.i165.prol
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !58
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i165.prol
  store float %i.ix, ptr %gep.i.prol, align 4, !tbaa !58
  %indvars.iv.next.i166.prol = add nsw i64 %indvars.iv.i165.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol, !llvm.loop !269

.lr.ph.i164.prol.loopexit:                        ; preds = %.lr.ph.i164.prol, %.lr.ph.i164.preheader
  %indvars.iv.i165.unr = phi i64 [ %indvars.iv.i165.ph, %.lr.ph.i164.preheader ], [ %indvars.iv.next.i166.prol, %.lr.ph.i164.prol ]
  %i.iy = icmp ult i64 %indvars.iv.i165.ph, 3
  br i1 %i.iy, label %.preheader.i.loopexit, label %.lr.ph.i164

.preheader.i.loopexit:                            ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164, %middle.block219
  %i.iz = icmp sgt i32 %i.ig, 1
  br i1 %i.iz, label %.lr.ph63.preheader.i, label %._crit_edge.i163

.lr.ph63.preheader.i:                             ; preds = %.preheader.i.loopexit
  %scevgep.i = getelementptr i8, ptr %.0135174, i64 4
  %i.ja = add i32 %i.hj, %i.ha
  %i.jb = zext i32 %i.ja to i64
  %i.jc = shl nuw nsw i64 %i.jb, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.jc, i1 false), !tbaa !58
  br label %._crit_edge.i163

.lr.ph.i164:                                      ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164
  %indvars.iv.i165 = phi i64 [ %indvars.iv.next.i166.3, %.lr.ph.i164 ], [ %indvars.iv.i165.unr, %.lr.ph.i164.prol.loopexit ] ; 6 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.i165
  %i.je = load float, ptr %i.jd, align 4, !tbaa !58
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i165
  store float %i.je, ptr %gep.i, align 4, !tbaa !58
  %indvars.iv.next.i166 = add nsw i64 %indvars.iv.i165, -1 ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !58
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166
  store float %i.jg, ptr %gep.i.1, align 4, !tbaa !58
  %indvars.iv.next.i166.1 = add nsw i64 %indvars.iv.i165, -2 ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166.1
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !58
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166.1
  store float %i.ji, ptr %gep.i.2, align 4, !tbaa !58
  %indvars.iv.next.i166.2 = add nsw i64 %indvars.iv.i165, -3 ; 3 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %indvars.iv.next.i166.2
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !58
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i166.2
  store float %i.jk, ptr %gep.i.3, align 4, !tbaa !58
  %indvars.iv.next.i166.3 = add nsw i64 %indvars.iv.i165, -4
  %.not81.i.3 = icmp eq i64 %indvars.iv.next.i166.2, 0
  br i1 %.not81.i.3, label %.preheader.i.loopexit, label %.lr.ph.i164, !llvm.loop !270

._crit_edge.i163:                                 ; preds = %.lr.ph63.preheader.i, %.preheader.i.loopexit
  store float %i.hg, ptr %.0135174, align 4, !tbaa !58
  store i32 %.0139181, ptr %.0138171, align 4, !tbaa !47
  br label %stbir__insert_coeff.exit

bb.ah:                                            ; preds = %bb.af
  %i.jl = sub nsw i32 %.0139181, %i.hj
  %i.jm = zext nneg i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.0135174, i64 %i.jm ; 2 uses
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !58
  %i.jp = fadd float %i.hg, %i.jo
  store float %i.jp, ptr %i.jn, align 4, !tbaa !58
  br label %stbir__insert_coeff.exit

bb.ai:                                            ; preds = %bb.ae
  %i.jq = sub nsw i32 %.0139181, %i.hj            ; 3 uses
  %.not59.not.i = icmp slt i32 %i.jq, %i.gn
  br i1 %.not59.not.i, label %bb.aj, label %stbir__insert_coeff.exit

bb.aj:                                            ; preds = %bb.ai
  %i.jr = sub nsw i32 %i.hl, %i.hj
  %.064.i = add nuw nsw i32 %i.jr, 1              ; 2 uses
  %i.js = icmp slt i32 %.064.i, %i.jq
  br i1 %i.js, label %.lr.ph67.preheader.i, label %._crit_edge68.i

.lr.ph67.preheader.i:                             ; preds = %bb.aj
  %i.jt = sext i32 %.064.i to i64
  %i.ju = shl nuw nsw i64 %i.jt, 2
  %scevgep73.i = getelementptr i8, ptr %.0135174, i64 %i.ju
  %i.jv = sub i32 %i.hb, %i.hl
  %i.jw = zext i32 %i.jv to i64
  %i.jx = shl nuw nsw i64 %i.jw, 2
  %i.jy = add nuw nsw i64 %i.jx, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep73.i, i8 0, i64 %i.jy, i1 false), !tbaa !58
  br label %._crit_edge68.i

._crit_edge68.i:                                  ; preds = %.lr.ph67.preheader.i, %bb.aj
  %i.jz = sext i32 %i.jq to i64
  %i.ka = getelementptr inbounds [4 x i8], ptr %.0135174, i64 %i.jz
  store float %i.hg, ptr %i.ka, align 4, !tbaa !58
  store i32 %.0139181, ptr %i.hk, align 4, !tbaa !48
  br label %stbir__insert_coeff.exit

stbir__insert_coeff.exit:                         ; preds = %._crit_edge68.i, %bb.ai, %bb.ah, %._crit_edge.i163, %bb.ag, %._crit_edge, %bb.aa
  %.2 = phi i32 [ %.0136173, %._crit_edge ], [ %.1172, %bb.aa ], [ %.1172, %bb.ag ], [ %.1172, %._crit_edge.i163 ], [ %.1172, %bb.ah ], [ %.1172, %bb.ai ], [ %.1172, %._crit_edge68.i ] ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.0138171, i64 8
  %i.kc = getelementptr inbounds [4 x i8], ptr %.0135174, i64 %i.gp
  %i.kd = add i32 %.0136173, 1
  %exitcond.not = icmp eq i32 %.0136173, %i.gt
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %._crit_edge178, label %bb.aa, !llvm.loop !271

._crit_edge178:                                   ; preds = %stbir__insert_coeff.exit, %bb.z
  %.1.lcssa = phi i32 [ %.0137182, %bb.z ], [ %.2, %stbir__insert_coeff.exit ] ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.2147179, i64 8
  %i.kf = getelementptr inbounds [4 x i8], ptr %.2144180, i64 %i.gq
  %i.kg = add nuw nsw i32 %.0139181, 1            ; 2 uses
  %exitcond192.not = icmp eq i32 %i.kg, %.1149
  br i1 %exitcond192.not, label %._crit_edge185, label %bb.z, !llvm.loop !272

._crit_edge185:                                   ; preds = %._crit_edge178, %bb.y
  %.0137.lcssa = phi i32 [ %i.gl, %bb.y ], [ %.1.lcssa, %._crit_edge178 ]
  %i.kh = add nsw i32 %.0137.lcssa, %i.co
  %i.ki = sext i32 %i.kh to i64                   ; 2 uses
  %i.kj = getelementptr [8 x i8], ptr %.pre, i64 %i.ki ; 3 uses
  %i.kk = load i32, ptr %i.j, align 8, !tbaa !66
  %i.kl = sext i32 %i.kk to i64                   ; 2 uses
  %i.km = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.kl ; 2 uses
  %.0187 = getelementptr i8, ptr %i.kj, i64 8     ; 5 uses
  %i.kn = icmp ult ptr %.0187, %i.km
  br i1 %i.kn, label %.lr.ph191.preheader, label %.loopexit

.lr.ph191.preheader:                              ; preds = %._crit_edge185
  %i.ko = shl nsw i64 %i.kl, 3
  %i.kp = shl nsw i64 %i.ki, 3
  %i.kq = add nsw i64 %i.ko, -16
  %i.kr = sub nsw i64 %i.kq, %i.kp                ; 2 uses
  %i.ks = lshr exact i64 %i.kr, 3
  %i.kt = add nuw nsw i64 %i.ks, 1                ; 2 uses
  %min.iters.check223 = icmp ult i64 %i.kr, 24
  br i1 %min.iters.check223, label %.lr.ph191.preheader243, label %vector.ph224

vector.ph224:                                     ; preds = %.lr.ph191.preheader
  %n.vec225 = and i64 %i.kt, 4611686018427387900  ; 3 uses
  %i.ku = shl i64 %n.vec225, 3                    ; 2 uses
  %i.kv = getelementptr i8, ptr %.0187, i64 %i.ku
  %i.kw = getelementptr i8, ptr %i.kj, i64 %i.ku
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph224
  %index227 = phi i64 [ 0, %vector.ph224 ], [ %index.next230, %vector.body226 ] ; 2 uses
  %i.kx = shl i64 %index227, 3                    ; 2 uses
  %next.gep228 = getelementptr i8, ptr %.0187, i64 %i.kx
  %i.ky = getelementptr i8, ptr %.0187, i64 %i.kx
  %next.gep229 = getelementptr i8, ptr %i.ky, i64 16
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %next.gep228, align 4, !tbaa !32
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %next.gep229, align 4, !tbaa !32
  %index.next230 = add nuw i64 %index227, 4       ; 2 uses
  %i.kz = icmp eq i64 %index.next230, %n.vec225
  br i1 %i.kz, label %middle.block231, label %vector.body226, !llvm.loop !273

middle.block231:                                  ; preds = %vector.body226
  %cmp.n232 = icmp eq i64 %i.kt, %n.vec225
  br i1 %cmp.n232, label %.loopexit, label %.lr.ph191.preheader243

.lr.ph191.preheader243:                           ; preds = %.lr.ph191.preheader, %middle.block231
  %.0189.ph = phi ptr [ %.0187, %.lr.ph191.preheader ], [ %i.kv, %middle.block231 ]
  %.pn188.ph = phi ptr [ %i.kj, %.lr.ph191.preheader ], [ %i.kw, %middle.block231 ]
  br label %.lr.ph191

.lr.ph191:                                        ; preds = %.lr.ph191.preheader243, %.lr.ph191
  %.0189 = phi ptr [ %.0, %.lr.ph191 ], [ %.0189.ph, %.lr.ph191.preheader243 ] ; 3 uses
  %.pn188 = phi ptr [ %.0189, %.lr.ph191 ], [ %.pn188.ph, %.lr.ph191.preheader243 ]
  store i32 0, ptr %.0189, align 4, !tbaa !47
  %i.la = getelementptr i8, ptr %.pn188, i64 12
  store i32 -1, ptr %i.la, align 4, !tbaa !48
  %.0 = getelementptr i8, ptr %.0189, i64 8       ; 2 uses
  %i.lb = icmp ult ptr %.0, %i.km
  br i1 %i.lb, label %.lr.ph191, label %.loopexit, !llvm.loop !274

.loopexit:                                        ; preds = %.lr.ph191, %middle.block231, %._crit_edge185, %stbir__calculate_coefficients_for_gather_downsample.exit, %stbir__calculate_coefficients_for_gather_upsample.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @stbir__decode_uint8_linear_scaled(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %.idx = shl nsw i64 %i.a, 2
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx ; 6 uses
  %i.c = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.e = icmp sgt i32 %1, 15
  br i1 %i.e, label %bb.b, label %.preheader85

.preheader85:                                     ; preds = %bb.a
  %.not87 = icmp slt i32 %1, 4
  br i1 %.not87, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader85
  %.27586 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -64 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.073 = phi ptr [ %0, %bb.b ], [ %.174, %bb.c ] ; 6 uses
  %.072 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.073) #24, !srcloc !279
  %i.g = load <16 x i8>, ptr %.072, align 1, !tbaa !24 ; 2 uses
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.i = shufflevector <16 x i8> %i.g, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.j = bitcast <16 x i8> %i.h to <8 x i16>      ; 2 uses
  %i.k = shufflevector <8 x i16> %i.j, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.l = shufflevector <8 x i16> %i.j, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.m = bitcast <16 x i8> %i.i to <8 x i16>      ; 2 uses
  %i.n = shufflevector <8 x i16> %i.m, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.o = shufflevector <8 x i16> %i.m, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.p = bitcast <8 x i16> %i.k to <4 x i32>
  %i.q = uitofp nneg <4 x i32> %i.p to <4 x float>
  %i.r = bitcast <8 x i16> %i.l to <4 x i32>
  %i.s = uitofp nneg <4 x i32> %i.r to <4 x float>
  %i.t = bitcast <8 x i16> %i.n to <4 x i32>
  %i.u = uitofp nneg <4 x i32> %i.t to <4 x float>
  %i.v = bitcast <8 x i16> %i.o to <4 x i32>
  %i.w = uitofp nneg <4 x i32> %i.v to <4 x float>
  %i.x = fmul nnan <4 x float> %i.q, splat (float f0x3B808081)
  %i.y = fmul nnan <4 x float> %i.s, splat (float f0x3B808081)
  %i.z = fmul nnan <4 x float> %i.u, splat (float f0x3B808081)
  %i.aa = fmul nnan <4 x float> %i.w, splat (float f0x3B808081)
  store <4 x float> %i.x, ptr %.073, align 1, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %.073, i64 16
  store <4 x float> %i.y, ptr %i.ab, align 1, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %.073, i64 32
  store <4 x float> %i.z, ptr %i.ac, align 1, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %.073, i64 48
  store <4 x float> %i.aa, ptr %i.ad, align 1, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %.073, i64 64 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.072, i64 16
  %.not81 = icmp ugt ptr %i.ae, %i.f
  %i.ag = icmp ne ptr %i.ae, %i.b                 ; 2 uses
  %i.ah = and i1 %.not81, %i.ag                   ; 2 uses
  %.174 = select i1 %i.ah, ptr %i.f, ptr %i.ae
  %.1 = select i1 %i.ah, ptr %i.d, ptr %i.af
  br i1 %i.ag, label %bb.c, label %.loopexit

.preheader:                                       ; preds = %.lr.ph.rtcont, %.preheader85
  %.pn.lcssa = phi ptr [ %0, %.preheader85 ], [ %.27590, %.lr.ph.rtcont ] ; 2 uses
  %.2.lcssa = phi ptr [ %2, %.preheader85 ], [ %.rtmerge, %.lr.ph.rtcont ]
  %i.ai = icmp ult ptr %.pn.lcssa, %i.b
  br i1 %i.ai, label %.lr.ph94, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.rtcont
  %.27590 = phi ptr [ %.275.rtmerge, %.lr.ph.rtcont ], [ %.27586, %.lr.ph.preheader ] ; 5 uses
  %.289 = phi ptr [ %.rtmerge, %.lr.ph.rtcont ], [ %2, %.lr.ph.preheader ] ; 7 uses
  %.pn88 = phi ptr [ %.27590, %.lr.ph.rtcont ], [ %0, %.lr.ph.preheader ] ; 6 uses
  %.28999 = ptrtoaddr ptr %.289 to i64            ; 2 uses
  %i.aj = add i64 %.28999, 4
  %.pn88100 = ptrtoaddr ptr %.pn88 to i64         ; 2 uses
  %i.ak = add i64 %.pn88100, 16
  %rt.bound0 = icmp ugt i64 %i.aj, %.pn88100
  %rt.bound1 = icmp ugt i64 %i.ak, %.28999
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.lr.ph.rtscalar, label %.lr.ph.rtvec, !prof !75

.lr.ph94:                                         ; preds = %.preheader, %.lr.ph94
  %.393 = phi ptr [ %i.ap, %.lr.ph94 ], [ %.2.lcssa, %.preheader ] ; 2 uses
  %.37692 = phi ptr [ %i.ao, %.lr.ph94 ], [ %.pn.lcssa, %.preheader ] ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.37692) #24, !srcloc !280
  %i.al = load i8, ptr %.393, align 1, !tbaa !24
  %i.am = uitofp i8 %i.al to float
  %i.an = fmul nnan float %i.am, f0x3B808081
  store float %i.an, ptr %.37692, align 4, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %.37692, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.393, i64 1
  %i.aq = icmp ult ptr %i.ao, %i.b
  br i1 %i.aq, label %.lr.ph94, label %.loopexit, !llvm.loop !277

.loopexit:                                        ; preds = %.lr.ph94, %bb.c, %.preheader
  ret ptr %i.b

.lr.ph.rtvec:                                     ; preds = %.lr.ph
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.27590) #24, !srcloc !281
  %i.ar = load <4 x i8>, ptr %.289, align 1, !tbaa !24
  %i.as = uitofp <4 x i8> %i.ar to <4 x float>
  %i.at = fmul nnan <4 x float> %i.as, splat (float f0x3B808081)
  store <4 x float> %i.at, ptr %.pn88, align 4, !tbaa !58
  br label %.lr.ph.rtcont

.lr.ph.rtscalar:                                  ; preds = %.lr.ph
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.27590) #24, !srcloc !281
end_hunk_2
